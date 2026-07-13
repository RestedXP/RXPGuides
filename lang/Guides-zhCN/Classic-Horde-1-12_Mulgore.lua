if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
#era/som--h
<< Horde
#name 1-6 莫高雷
#version 11
#group RestedXP 部落 1-22级
#defaultfor Tauren
#next 6-12级 莫高雷；6-13级 莫高雷


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
    .train 8017 >>学习 |T136086:0|t[石化武器]
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
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+1150 >>刷怪达到1150+/1400经验
    .mob 平原陆行鸟
step
    #xprate >1.49
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵|r 对话
    .accept 3376 >>接受任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .accept 77651 >>Accept 深入荆棘
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .accept 77651 >>Accept 深入荆棘
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .accept 77649 >>接受任务 猎人的力量
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .accept 77648 >>接受任务 牛头人的圣物
    .train 8921 >>学习 |T136096:0|t[月火术]
    .target 加尔特·迷雾行者
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 3093 >>交任务 符文便笺
    .train 8042 >>学习 |T136026:0|t[大地震击]
    .target 米拉·晨行者
step << Shaman
    #season 0
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
    .xp 5+880 >>刷怪达到880+/2800经验 << !Shaman
    .xp 5 >>刷怪升至等级5 << Shaman
step
    #xprate >1.49
    #loop
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
    .xp 5 >>刷怪升至等级5 << !Shaman
    .xp 4+700 >>刷怪至 700/2100xp << Shaman
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 77652 >>交任务 力量神像
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .target 米拉·晨行者
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .target 米拉·晨行者
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交任务 猎人的力量
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交任务 猎人的力量
    .target 兰卡·远箭
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .turnin 77648 >>交任务 牛头人的圣物
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .turnin 77648 >>交任务 牛头人的圣物
    .target 加尔特·迷雾行者
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .turnin 77651 >>交任务 深入荆棘
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .turnin 77651 >>交任务 深入荆棘
    .target 哈鲁特·雷角
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 哈鲁特·雷角
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安图尔·荒野|r 对话
    .accept 1656 >>接受任务 未完的任务
    .target 安图尔·荒野
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-12级 莫高雷
#version 11
#group RestedXP 部落 1-22级
#defaultfor Tauren
#next 12-17级 贫瘠之地


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_对三个|r |cRXP_WARN_月石|r |cRXP_ENEMY_施放|r |T136096:0|t[月火术] |cRXP_WARN_。宝箱会出现在石头之间|r
    >>打开|cRXP_PICK_银月宝箱|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r] |cRXP_WARN_来训练|r |T236216:0|t[阳炎术]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>奔向血蹄村，莫高雷
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 745 >>接受任务 土地之争
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .turnin 1656 >>交任务 未完的任务
    .home >>将你的炉石绑定到血蹄村
    .target 旅店老板考乌斯
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔|r，|cRXP_FRIENDLY_扎尔曼|r，|cRXP_FRIENDLY_哈肯|r 和 |cRXP_FRIENDLY_穆尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .accept 748 >>接受任务 有毒的水
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔|r，|cRXP_FRIENDLY_扎尔曼|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
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
    >>击杀 |cRXP_ENEMY_草原狼|r 和 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>对|cRXP_ENEMY_沙沙作响的灌木丛|r施放|T132212:0|t[猎人印记]
    >>击杀 |cRXP_ENEMY_风险投资公司偷猎者|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>使用|T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>收集 |cRXP_PICK_琥珀颗粒|r。可以在树下的地面上找到它们
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
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>击杀 |cRXP_ENEMY_草原狼|r 和 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
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
    #loop
    .goto Mulgore,54.06,66.40,0
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
step << Warrior
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>在两个营地之间来回移动。击杀 |cRXP_ENEMY_白鬃制革工|r，|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r。拾取它们的 |cRXP_LOOT_被砍下的豺狼人的头|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9 级稀有)。他过于强大，建议不要尝试击杀|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan 断矛
    .train 403475,1
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>在两个营地之间来回移动。击杀 |cRXP_ENEMY_白鬃制革工|r,|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9 级稀有)。他过于强大，建议不要尝试击杀|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .unitscan 断矛
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
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
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
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
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step
    #completewith Clawsx
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith RavagedCaravan1
    >>击杀 |cRXP_ENEMY_草原捕食者|r 和 |cRXP_ENEMY_平原狮|r，并从它们身上拾取 |cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .mob +草原捕食者
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
	#completewith Clawsx
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step
    #label RavagedCaravan1
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step << Tauren
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
    #optional
    #label Clawsx
step
    #softcore
	#completewith Thunderhorn
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>前往血蹄村
    .subzoneskip 222
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
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 洛拉特|cRXP_FRIENDLY_ 对话|r
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
    #era/som
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井处使用 |r|T135139:0|t[雷角净化图腾]|cRXP_WARN_|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的 |cRXP_LOOT_神器仓库钥匙|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
    .xp <3,1
step
    .goto Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的|cRXP_LOOT_探矿者的镐|r
    .use 4702 >>|cRXP_WARN_砸碎|r |T134707:0|t[矿工锄] |cRXP_WARN_在熔炉处|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .complete 746,1 --Broken Tools (5)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的 |cRXP_LOOT_神器仓库钥匙|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>打开 |cRXP_PICK_神器仓库|r 箱子。拾取其中的 |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
    .xp <3,1
    .xp >13,1
step << Warrior
    #season 2
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r 和一个 |cRXP_LOOT_被砍下的豺狼人的头|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 风怒唤风者
    .mob 风怒鹰身人
    .train 403475,1
step
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
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
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_你可以摧毁你背包中的|r |T134712:0|t[先知之水] |cRXP_WARN_，因为它已经不需要了|r
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
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_被砍下的野猪人的头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob 刺背干涉者
    .train 403475,1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .accept 775 >>接受任务 雷霆崖之旅
    .target 先祖之魂
step << Warrior
    #season 2
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_被砍下的野猪人的头|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob 刺背干涉者
    .train 403475,1
step
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
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
	.goto Mulgore,51.00,18.40,0
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
	.goto Mulgore,59.52,23.36,60,0
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
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3020 >>刷怪达到3020+/6500经验
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3720 >>刷怪达到3720+/6500经验
    .isQuestComplete 761
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3700 >>刷怪达到3700+/6500经验
    .isQuestComplete 766
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+4400 >>刷怪达到4400+/6500经验
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+1280 >>刷怪至 1280+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2330 >>刷怪至 2330+/6500xp
    .isQuestComplete 761
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2300 >>刷怪至 2300+/6500xp
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3350 >>刷怪至 3350+/6500xp
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
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 旅店老板考乌斯
    .isQuestAvailable 870
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Warrior
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与血蹄村的 |cRXP_FRIENDLY_瓦泰亚|r 对话
    >>交还你收集的 |cRXP_LOOT_被砍下的巨魔的头|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
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
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_卢尔|r 对话
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
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_你可以从背包中摧毁|r |T134707:0|t[勘察员的锄头] |cRXP_WARN_，因为它们已经不需要了|r
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target 旅店老板格罗斯克
    .money <0.05
    .target 加纳·麦风
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
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
step
    #completewith AlphaTeeth
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
step << Hunter
    #completewith next
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将使你能够学习|r |T132140:0|t[爪击（等级 2）]
    .mob 草原狼前锋
step << Tauren
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
step << Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step << Tauren
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>前往血蹄村
    .subzoneskip 222
step << Tauren
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 759 >>交任务 蛮鬃图腾
    .accept 760 >>接受任务 净化蛮鬃之井
    .target 穆尔·雷角
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往贫瘠之地
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
	.target 欧姆萨·雷角
    .isQuestAvailable 848
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .isQuestAvailable 848
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
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>前往长者高地
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
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5930 >>交任务  巨熊之灵
    .accept 5932 >>接受任务 返回雷霆崖
    .target 德迪利特·星焰
step << Druid
    #completewith DruidBearForm
    .hs >>使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
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
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔格·锐角|r 对话
    .accept 854 >>接受任务 十字路口之旅
    .target 基尔格·锐角
step
    #completewith next
    .subzone 380 >>向北前往十字路口
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
    .accept 848 >>接受任务菌类孢子
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fp The Crossroads >>获得十字路口的飞行点
    .target 迪弗拉克
    .isQuestAvailable 848
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .accept 6361 >>接受任务 一捆兽皮
    .target 加翰·鹰翼
step
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在采集蘑菇时尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    >>|cRXP_WARN_此任务的后续奖励是强力的 |cRXP_FRIENDLY_锅炉搅拌器|r|cRXP_WARN_。如果你暂时不打算使用它，可以先跳过此任务|r
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
    >>|cRXP_WARN_此任务的后续奖励是强力的 |cRXP_FRIENDLY_锅炉搅拌器|r|cRXP_WARN_。如果你暂时不打算使用它，可以先跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>返回十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .isQuestComplete 870
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .isQuestTurnedIn 877
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .isQuestAvailable 853
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .turnin 848 >>交任务菌类孢子
    .timer 7,菌类孢子 剧情
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestTurnedIn 848
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6361 >>交任务 一捆兽皮
    .accept 6362 >>接受任务 飞往雷霆崖
    .target 迪弗拉克
step
    #completewith RideToTB
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_你正在进行一个限时任务，不要离开键盘。该任务会在接取后约 5–10 分钟内交付完成|r
    .isOnQuest 853
step
    #label RideToTB
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestComplete 861
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
	.turnin 6089 >>交任务 训练野兽
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Hunter
    #completewith CauldronStirrer
    +|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .target 安塞瓦
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .accept 76156 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .target 药剂师扎玛
    .isOnQuest 853
step
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_装备|r |T135145:0|t[锅炉搅拌器]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 和 |cRXP_FRIENDLY_穆阿特|r 在灵魂高地对话
    +当 |cRXP_FRIENDLY_穆阿特|r 变为敌对时杀死他
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 对话
    >>从她那里获得|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .accept 776 >>接受任务 大地母亲的仪式
    .target 凯恩·血蹄
step << Druid
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>前往长者高地
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 6002 >>交任务 身心之力
    .target 图拉克·符文图腾
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫兰塔|r 对话
    >>|cRXP_WARN_这会解锁一个简单任务。如果你已经有2个专业，请跳过此步|r
    .train 8613 >>训练 |T134366:0|t[剥皮]
    .target Mooranta
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .accept 768 >>接受任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买12个|r |T134252:0|t[轻皮] |cRXP_BUY_|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .turnin 768 >>交任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加|r 对话
    >>|cRXP_BUY_从她那里购买|r |T133972:0|t[硬肉干] |cRXP_BUY_来喂食你的宠物|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #loop
    #completewith VentureCoKills
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_停留在洞穴的上层，如果可能的话|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
	#era/som
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
step << Shaman
    #season 2
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step << Shaman
    #season 2
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>杀死 |cRXP_ENEMY_菲兹普罗克主管|r。拾取他的 |cRXP_LOOT_笔记本|r
    >>|cRXP_WARN_跑进矿洞，贴着右侧/东侧走来找到他|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step << Shaman
    #season 2
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_尽可能停留在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>前往雷霆崖
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76156 >>交任务 大地母亲与匿同在
    .accept 76160 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #sticky
    #completewith ThunderBluff
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    >>|cRXP_WARN_如果你无法找到他，请跳过此步骤|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step << Druid
    #season 2
    #completewith ProwlerClaws
    >>杀死|cRXP_ENEMY_平原徘徊者|r 和 |cRXP_ENEMY_草原狼前锋|r。拾取它们的 |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼前锋
    .train 410025,1
step
    #completewith Arrachea
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
step << Shaman
    #season 2
    #completewith next
    >>击杀 |cRXP_ENEMY_风怒女巫|r。拾取他们的 |cRXP_LOOT_碧蓝色的羽毛|r
    >>击杀 |cRXP_ENEMY_风怒女族长|r。拾取他们的 |cRXP_LOOT_古铜色的羽毛|r
    .complete 744,1 --Azure Feather (6)
    .mob 风怒女巫
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女族长
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>拾取地上的|cRXP_LOOT_风怒锥|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step
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
step << Tauren
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_在水井旁使用|r |T135139:0|t[净化图腾]|cRXP_WARN_|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step << Warrior/Hunter
    #season 2
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>击杀 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多兽）。击杀并拾取他的 |cRXP_LOOT_角|r << !Warrior !Hunter
    >>杀死 |cRXP_ENEMY_阿兰其亚|r（大黑科多）。拾取他的 |cRXP_LOOT_角|r 和 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r] << Warrior
    >>杀死 |cRXP_ENEMY_阿兰其亚|r（大黑科多）。拾取他的 |cRXP_LOOT_角|r 和 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r] << Hunter
    >>|cRXP_WARN_他在莫高雷北部顺时针巡逻|r
    .complete 776,1 --Horn of Arra'chea (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .unitscan 阿兰其亚
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
    --VV .line
step << Warrior
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>使用 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r]
    .use 206169
    .itemcount 206169,1
step
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>击杀 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多兽）。击杀并拾取他的 |cRXP_LOOT_角|r
    >>|cRXP_WARN_他在莫高雷北部顺时针巡逻|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan 阿兰其亚
    --VV .line
step
    #label ProwlerClaws
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
step << Druid
    #season 2
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>杀死|cRXP_ENEMY_平原徘徊者|r 和 |cRXP_ENEMY_草原狼前锋|r。拾取它们的 |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼前锋
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .use 206954
    .train 410025,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_保持50点以上的怒气至少60秒，以学习|r |T132135:0|t[割碎]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r] |cRXP_WARN_来学习|r |T132135:0|t[割碎]
    .use 206954
    .itemcount 206954,1
step
    #completewith next
    .zone Thunder Bluff >>返回雷霆崖
step
    #label RFCPickups1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 776 >>交任务 大地母亲的仪式
    .target 凯恩·血蹄
    .isQuestComplete 776
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .turnin 744 >>交任务 准备典礼
    .target 伊恩·鹰爪
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76160 >>交任务 大地母亲与匿同在
    .accept 76240 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买1条|r |T133894:0|t[新鲜的美味小鱼] |cRXP_BUY_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>前往 |cRXP_FRIENDLY_苏瓦·迷雾行者|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·迷雾行者|r 对话
    .train 7734 >>训练 |T136245:0|t[钓鱼]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏瓦·迷雾行者|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132932:0|t[鱼竿] |cRXP_BUY_和|r |T134335:0|t[闪光的小珠]
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[鱼竿]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪光的小珠] |cRXP_WARN_装在你的|r |T132932:0|t[鱼竿]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼，直到获得一条|T133894:0|t[|cRXP_LOOT_新鲜的美味小鱼|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>使用|T132147:0|t[一套匕首]制作|T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76240 >>交任务 大地母亲与匿同在
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
step
    #completewith WildManeTurnIn
    .subzone 222 >>前往血蹄村
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 760 >>交任务 净化蛮鬃之井
    .target 穆尔·雷角
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 547 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8936 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 7384 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 14281 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>杀死 |cRXP_ENEMY_菲兹普罗克主管|r。拾取他的 |cRXP_LOOT_笔记本|r
    >>|cRXP_WARN_跑进矿洞，贴着右侧/东侧走来找到他|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
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
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >>刷怪达到7150+/8700经验
step
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >>刷怪达到6375+/8700经验
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
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 547 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8936 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 5242 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 14281 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <12,1
step
    #completewith HidesTurnIn
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >>前往陶拉祖营地
    .cooldown item,6948,<0,1
step
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Crossroads >>飞往十字路口
    .target 欧姆萨·雷角
    .cooldown item,6948,<0,1
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 保卫前沿哨所
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 860 >>交任务 瑟格拉·黑棘
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
step << Shaman
    #completewith next
    >>查找位于 |cRXP_PICK_卡纳尔|r 旁边的 |cRXP_FRIENDLY_老陈的空酒桶|r。拾取它并开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
    .use 4926
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
    .goto Durotar,39.34,28.25,40,0
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


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP 部落 1-22级
#name 1-7级 莫高雷
#next 7-13级 莫高雷
#defaultfor Tauren


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
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>卖掉你的|cRXP_BUY_ |T135005:0|t[衬衣] |r和其中一个|cRXP_BUY_ |T133964:0|t[大块面包] |r（可以通过按住 Shift 点击来拆分）|cRXP_WARN_ ，并向他购买|r |T134419:0|t[|cRXP_BUY_狂暴突袭符文|cRXP_FRIENDLY_] |r和|cRXP_FRIENDLY_ |T134419:0|t[|r乘胜追击符文|r] << Warrior
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t[衬衣] |cRXP_BUY_和其中一个|r |T134534:0|t[蘑菇菌盖] |cRXP_WARN_（可以通过按住 Shift 点击来拆分）|r ，并向他购买|cRXP_BUY_ |T134920:0|t[|cRXP_FRIENDLY_卡亚圣像|r] |cRXP_BUY_和|r |T134918:0|t[|cRXP_FRIENDLY_二价圣像|r] |cRXP_BUY_|r << Shaman
    >>|cRXP_BUY_出售你的|r |T135005:0|t[衬衣] |cRXP_BUY_和|r |T132794:0|t[水] |cRXP_BUY_并购买以下符文：|r  << Hunter
    >>|cRXP_BUY_出售你的|r |T133975:0|t[苹果] |cRXP_BUY_并购买以下符文：|r << Druid
    >>|cRXP_BUY_向商人出售垃圾物品并购买以下所有符文:|r << Shaman
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    >>你很快就能获得你的其余符文
    .target Rune Broker
    .skipgossip
step
    #season 2
    #sticky
    #optional
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 209852 << Hunter --Rune of Kill Command
    .use 206168 << Hunter --Rune of the Chimera
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 206387 << Shaman --Kajaric Icon
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .equip 18 >>装备 |T134920:0|t[|cRXP_FRIENDLY_卡亚圣像|r]，你可以在30秒后使用它来训练 |T237582:0|t[熔岩爆裂] << Shaman
    .equip 18 >>装备 |T134903:0|t[|cRXP_FRIENDLY_月光神像|r]，你可以在30秒后使用它来训练 |T237472:0|t[玛法里奥之怒] << Druid
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] << Warrior
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]来学习|T132342:0|t[乘胜追击]，你很快就会铭刻它 << Warrior
    .train 410111 >>使用 |T134419:0|t[|cRXP_FRIENDLY_杀戮命令符文|r] 来训练 |T236174:0|t[夺命射击] << Hunter
    .train 410121 >>使用 |T134419:0|t[|cRXP_FRIENDLY_奇美拉符文|r] 来学习 |T236176:0|t[奇美拉射击] << Hunter
    .train 409580 >>使用 |T133739:0|t[|cRXP_FRIENDLY_论述：雄狮之心|r] 来学习 |T132185:0|t[雄狮之心] << Hunter
    .train 415423 >>使用 |T133739:0|t[论述：蝰蛇守护|cRXP_FRIENDLY_] 来学习 |T132160:0|t[蝰蛇守护]|r] << Hunter
    .train 424718 >>使用 |T134419:0|t[|cRXP_FRIENDLY_星辰符文|r] 来训练 |T135730:0|t[星涌术] << Druid
    .train 416044 >>使用 |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r] 来训练 |T236216:0|t[阳炎术] << Druid
    .train 439770 >>使用 |T134419:0|t[|cRXP_FRIENDLY_坠落星辰符文|r] 来训练 |T236168:0|t[星辰坠落] << Druid
    .engrave 7 >>在你的裤子上铭刻 |T236174:0|t[夺命射击] << Hunter
    .engrave 7 >>在你的裤子上铭刻 |T236317:0|t[狂乱攻击] << Warrior
    .engrave 7 >>在你的裤子上铭刻 |T135730:0|t[星涌术] << Druid
step << Hunter
    #season 2
    #optional
    #sticky
    .aura 409583 >>记住激活你的 |T132185:0|t[雄狮之心]
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >>从你的角色面板中使用 |T134920:0|t[|cRXP_FRIENDLY_卡亚圣像|r] 来训练 |T237582:0|t[熔岩爆裂]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >>从你的角色面板使用 |T134903:0|t[|cRXP_FRIENDLY_月光神像|r] 来训练 |T237472:0|t[玛法里奥之怒]
    .engrave 5 >>在你的胸甲上铭刻 |T237472:0|t[玛法里奥之怒]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >>装备 |T134918:0|t[|cRXP_FRIENDLY_二价圣像|r]
    .train 410094 >>30秒后使用它来训练 |T136050:0|t[过载]
    .use 206381
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .accept 752 >>接受任务 一件琐事
    .target 鹰风酋长
step << Warrior/Shaman
    #season 0
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取战利品，直到卖店物品(包括你的护甲)总价值达到 10 铜币为止|r << Warrior/Shaman
    .mob 平原陆行鸟
    .money >0.01
step
    #season 2
    .goto Mulgore,46.05,75.32
    .xp 2 >>|cRXP_WARN_杀死4个 |cRXP_ENEMY_平原陆行鸟|r 升到2级。拾取它们直到你有10铜币价值的商人物品|r << !Shaman !Druid
    .xp 2 >>|cRXP_WARN_杀死4个 |cRXP_ENEMY_平原陆行鸟|r 升到2级。拾取它们直到你有42铜币价值的商人物品|r << Shaman
    .xp 2 >>|cRXP_WARN_杀死4个 |cRXP_ENEMY_平原陆行鸟|r 升到2级。拾取它们直到你有20铜币价值的商人物品|r << Druid
    .mob 平原陆行鸟
step << Shaman/Druid
    #season 2
    .goto Mulgore,46.36,75.89,50,0
    #completewith next
    +|cRXP_WARN_继续击杀 |cRXP_ENEMY_平原陆行鸟s|r 直到你有42铜币价值的商人物品|r << Shaman
    +|cRXP_WARN_继续击杀 |cRXP_ENEMY_平原陆行鸟s|r 直到你有20铜币价值的商人物品|r << Druid
    .money >0.0042 << Shaman
    .money >0.002 << Druid
step << Druid
    #season 2
    .goto Mulgore,45.08,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .accept 77648 >>接受任务 牛头人的圣物
    .turnin 77648 >>交任务 牛头人的圣物
    .target 加尔特·迷雾行者
step << Warrior/Shaman
    #season 0
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .money >0.01
step << Warrior/Shaman
    #season 2
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .money >0.01
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 哈鲁特·雷角
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .accept 77651 >>接受任务 深入荆棘
    .turnin 77651 >>交任务 深入荆棘
    .target 哈鲁特·雷角
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 8017 >>学习 |T136086:0|t[石化武器]
    .target 米拉·晨行者
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 8017 >>学习 |T136086:0|t[石化武器]
    .accept 77652 >>接受任务 力量神像
    .turnin 77652 >>交任务 力量神像
    .target 米拉·晨行者
step << Shaman/Druid
    #season 2
    .goto Mulgore,44.15,77.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦利亚|r 对话
    >>|cRXP_BUY_垃圾卖店|r |cRXP_WARN_千万不要把能穿的装备卖给商人|r << Druid
    >>|cRXP_BUY_购买一对|r |T132952:0|t[肮脏的皮手套] |cRXP_BUY_来铭刻符文|r
    .collect 714,1 -- Dirty Leather Gloves
    .target Varia Hardhide
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .accept 77649 >>接受任务 猎人的力量
    .turnin 77649 >>交任务 猎人的力量
    .target 兰卡·远箭
step << Warrior/Shaman/Druid
    #season 2
    .equip 10 >>装备 |T132938:0|t[无光泽的链甲手套] << Warrior
    .equip 10 >>装备 |T132952:0|t[肮脏的皮手套] << Shaman/Druid
    .engrave 10 >>在你的手套上铭刻 |T132342:0|t[乘胜追击] << Warrior
    .equip 5 >>装备 |T135010:0|t[破损的皮外衣] << Shaman
    .engrave 5 >>在你的胸部铭刻 |T136050:0|t[过载] << Shaman
    .engrave 10 >>在你的手套上铭刻 |T237582:0|t[熔岩爆裂] << Shaman
    .engrave 10 >>在你的手套上铭刻 |T236216:0|t[阳炎术] << Druid
    .use 2127 << Shaman/Druid --Cracked Leather Vest
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 714 << Shaman --Dirty Leather Gloves
step << Hunter
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人出售垃圾物品并购买以下所有符文:|r << Hunter
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    >>|cRXP_WARN_你将在稍后获得剩余的符文|r
    .target Rune Broker
    .skipgossip
step << Hunter
    #season 2
    .train 410122 >>使用 |T134419:0|t[|cRXP_FRIENDLY_独来独往符文|r] 来学习 |T132266:0|t[独来独往] << Hunter
    .train 416086 >>使用 |T134419:0|t[|cRXP_FRIENDLY_短兵相接符文|r] 来学习 |T132394:0|t[近战专家] << Hunter
    .train 440563 >>使用 |T134419:0|t[|cRXP_FRIENDLY_游击符文|r] 来学习 |T132171:0|t[一击脱离] << Hunter
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
step << Hunter
    .equip 10 >>装备 |T132952:0|t[破损的皮手套]
    .engrave 10 >>在你的手套上铭刻 |T236176:0|t[奇美拉射击]
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #sticky
    #optional
    >>|cRXP_WARN_留意是否有任何|r胸甲/腰带/披风|cRXP_WARN_掉落|r|cRXP_WARN_。装备它们并铭刻相应的符文|r
    .engrave 5 >>在你的 |T132266:0|t[胸甲] 上铭刻 |T132724:0|t[独来独往]
    .engrave 6 >>在你的 |T132394:0|t[腰带] 上铭刻 |T132513:0|t[近战专家]
    .engrave 15 >>在你的 |T132171:0|t[披风] 上铭刻 |T133771:0|t[一击脱离]
step << Druid
    #sticky
    #optional
    >>|cRXP_WARN_留意任何掉落的|r 披风 |cRXP_WARN_。装备它并在它上面铭刻|r |T236168:0|t[星辰坠落] |cRXP_WARN_|r |cRXP_WARN_|r
    .engrave 15 >>在你的 |T236168:0|t[披风] 上铭刻 |T133771:0|t[星辰坠落]
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
    -->>|cRXP_WARN_Grind mobs on the way|r
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
    #optional
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+850 >>刷怪至850+/1400xp
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵|r 对话
    .accept 3376 >>接受任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .train 8921 >>学习 |T136096:0|t[月火术]
    .target 加尔特·迷雾行者
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 3093 >>交任务 符文便笺
    .train 8042 >>学习 |T136026:0|t[大地震击]
    .target 米拉·晨行者
step << Shaman
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 77652 >>交任务 力量神像
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .target 米拉·晨行者
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .target 米拉·晨行者
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 哈鲁特·雷角
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 哈鲁特·雷角
step
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人贩卖垃圾物品并购买你需要的所有 |T134419:0|t|cRXP_WARN_[符文]|r|r
    .target Rune Broker
    .skipgossip
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安图尔·荒野|r 对话
    .accept 1656 >>接受任务 未完的任务
    .target 安图尔·荒野
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP 部落 1-22级
#name 7-13级 莫高雷
#next 13-20级 贫瘠之地
#defaultfor Tauren


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_对三个|r |cRXP_WARN_月石|r |cRXP_ENEMY_施放|r |T136096:0|t[月火术] |cRXP_WARN_。宝箱会出现在石头之间|r
    >>打开|cRXP_PICK_银月宝箱|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r] |cRXP_WARN_来训练|r |T236216:0|t[阳炎术]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>奔向血蹄村，莫高雷
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 745 >>接受任务 土地之争
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .turnin 1656 >>交任务 未完的任务
    .home >>将你的炉石绑定到血蹄村
    .target 旅店老板考乌斯
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔|r，|cRXP_FRIENDLY_扎尔曼|r，|cRXP_FRIENDLY_哈肯|r 和 |cRXP_FRIENDLY_穆尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .accept 748 >>接受任务 有毒的水
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔|r，|cRXP_FRIENDLY_扎尔曼|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
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
    >>击杀 |cRXP_ENEMY_草原狼|r 和 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>对|cRXP_ENEMY_沙沙作响的灌木丛|r施放|T132212:0|t[猎人印记]
    >>击杀 |cRXP_ENEMY_风险投资公司偷猎者|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>使用|T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>收集 |cRXP_PICK_琥珀颗粒|r。可以在树下的地面上找到它们
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
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>击杀 |cRXP_ENEMY_草原狼|r 和 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
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
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>在水井周围收集 |cRXP_PICK_井边石|r
    .complete 771,1 --Well Stone (2)
step
    #xprate <2.1
    #completewith Gnolls
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>在两个营地之间来回移动。击杀 |cRXP_ENEMY_白鬃制革工|r，|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r。拾取它们的 |cRXP_LOOT_被砍下的豺狼人的头|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9 级稀有)。他过于强大，建议不要尝试击杀|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan 断矛
    .train 403475,1
step
    #xprate <2.1
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>在两个营地之间来回移动。击杀 |cRXP_ENEMY_白鬃制革工|r,|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9 级稀有)。他过于强大，建议不要尝试击杀|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .unitscan 断矛
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .accept 756 >>接受任务 雷角图腾
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务 土地之争
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step << !Tauren
    #xprate <2.1
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_贝恩|r 对话
    .turnin 745 >>交任务 土地之争
    .target 贝恩·血蹄
step << Tauren
    #xprate >2.09
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .target 穆尔·雷角
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
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
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
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step << Druid
    #xprate <2.1
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    #xprate <2.1
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Shaman
    #xprate <2.1
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step
    #xprate <2.1
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
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step
    #xprate <2.1
    #completewith Clawsx
    >>|cRXP_WARN_在该区域做任务的过程中收集 马兹拉纳其 所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
	#completewith Clawsx
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #xprate <2.1
    #completewith next
    >>击杀 |cRXP_ENEMY_草原捕食者|r 和 |cRXP_ENEMY_平原狮|r，并从它们身上拾取 |cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .mob +草原捕食者
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    #xprate <2.1
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step << Tauren
    #xprate <2.1
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
    #xprate <2.1
    #softcore
	#completewith Thunderhorn
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #xprate <2.1
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>前往血蹄村
    .subzoneskip 222
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #xprate <2.1
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 洛拉特|cRXP_FRIENDLY_ 对话|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target 姆拉特·远行
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <2.1
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈兰特|r 对话
    .vendor >>出售垃圾物品并修理装备
    .target 哈兰特·铁枝
step
    #xprate <2.1
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step << Tauren
    #xprate <2.1
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
    .xp >10,1
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .accept 2984 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
    .xp <10,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
    .xp >10,1
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .trainer >>训练你的职业技能
    .accept 5928 >>接受任务 响应召唤
    .target 根妮亚·符文图腾
    .isQuestAvailable 5928
    .xp <10,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .trainer >>训练你的职业技能
    .accept 1505 >>接受任务 老兵犹塞克
    .target 克朗·石蹄
    .xp <10,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
    .xp >10,1
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .accept 6061 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <10,1
step << Hunter
    #optional
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对|r|cRXP_ENEMY_成年平原陆行鸟|r|cRXP_WARN_ 进行驯服|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob 成年平原陆行鸟
    .isOnQuest 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6061 >>交任务 驯服野兽
    .accept 6087 >>接受任务 驯服野兽
    .target 雅文·刺鬃
    .isQuestComplete 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .accept 6087 >>接受任务 驯服野兽
    .target 雅文·刺鬃
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_草原捕食者|r|cRXP_WARN_ 进行驯服|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob 草原捕食者
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6087 >>交任务 驯服野兽
    .accept 6088 >>接受任务 驯服野兽
    .target 雅文·刺鬃
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_在最大射程内使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_猛鹫|r |cRXP_WARN_进行驯服，如果它将你击倒，立即重新施放|r
    >>|cRXP_WARN_如果你失败并用完了驯兽棒的充能次数，放弃任务后重新接取，再回来尝试|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob 猛鹫
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6088 >>交任务 驯服野兽
    .accept 6089 >>接受任务 训练野兽
    .target 雅文·刺鬃
    .isQuestTurnedIn 6061
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
    #xprate <2.1
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井处使用 |r|T135139:0|t[雷角净化图腾]|cRXP_WARN_|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的 |cRXP_LOOT_神器仓库钥匙|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
step
    .goto Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的|cRXP_LOOT_探矿者的镐|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .use 4702 >>在熔炉处砸碎 |T134707:0|t[锄头]
    .complete 746,1 --Broken Tools (5)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r 和 |cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的 |cRXP_LOOT_神器仓库钥匙|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>打开 |cRXP_PICK_神器仓库|r 箱子。拾取其中的 |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_击杀敌人时，确保至少对其使用过一次|r |T136026:0|t[大地震击] |cRXP_WARN_并造成伤害。重复此操作10次以获得|r |T136116:0|t[灵感迸发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
    .train 425344,1
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r 和一个 |cRXP_LOOT_被砍下的豺狼人的头|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 风怒唤风者
    .mob 风怒鹰身人
    .train 403475,1
step
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 743,1 --Windfury Talon (8)
    .mob 风怒唤风者
    .mob 风怒鹰身人
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入风怒鹰身人北边的洞穴
step
    #xprate <2.1
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知奥萨迪|r 对话
    .turnin 772 >>交任务 幻象仪祭
    .accept 773 >>接受任务 智慧仪祭
    .target 先知奥萨迪·智慧行者
step
    #xprate >2.09
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知奥萨迪|r 对话
    .turnin 772 >>交任务 幻象仪祭
    .target 先知奥萨迪·智慧行者
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫息圣像]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 熔火爆裂]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_你可以摧毁你背包中的|r |T134712:0|t[先知之水] |cRXP_WARN_，因为它已经不需要了|r
step << Druid/Hunter/Shaman
    #completewith next
    .goto Thunder Bluff,32.00,66.69
    .zone Thunder Bluff >>前往雷霆崖
    .isOnQuest 6089 << Hunter
    .xp <10,1 << Druid
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .accept 76156 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 5932
    .xp <10,1
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔·符文图腾|r 对话
    .accept 886 >>接受任务 贫瘠之地的绿洲
    .target 大德鲁伊哈缪尔·符文图腾
    .xp <10,1
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
    .xp <10,1
step << Druid
    #completewith GreatBearS
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5922 >>交任务 月光林地
    .accept 5930 >>接受任务 巨熊之灵
    .target 德迪利特·星焰
    .isOnQuest 5922
step << Druid
    #label GreatBearS
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .accept 5930 >>接受任务 巨熊之灵
    .target 德迪利特·星焰
    .isQuestTurnedIn 5922
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target 巨熊之灵
    .skipgossip
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5930 >>交任务  巨熊之灵
    .accept 5932 >>接受任务 返回雷霆崖
    .target 德迪利特·星焰
    .isQuestTurnedIn 5922
step << Druid
    #completewith DruidBearForm
    .hs >>使用炉石返回雷霆崖
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 5932 >>交任务 返回雷霆崖
    .accept 6002 >>接受任务 身心之力
    .target 图拉克·符文图腾
    .isQuestTurnedIn 5922
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
	.turnin 6089 >>交任务 训练野兽
    .target Holt Thunderhorn
    .isOnQuest 6089
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
    .isQuestTurnedIn 6089
step << Hunter
    #completewith SacredBurial
    +|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r
    .isQuestTurnedIn 6089
step << Druid/Hunter/Shaman
    #xprate <2.1
    .goto Thunder Bluff,53.81,27.82,30,0
    .goto Mulgore,59.85,25.62
    .zone Mulgore >>乘坐北侧升降梯离开雷霆崖
    .zoneskip Thunder Bluff,1
    .isQuestTurnedIn 6089 << Hunter
    .isQuestTurnedIn 5932 << Druid
step << Hunter
    #xprate <2.1
    #completewith SacredBurial
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将使你能够学习|r |T132140:0|t[爪击（等级 2）]
    .mob 草原狼前锋
step
    #xprate <2.1
    #completewith SacredBurial
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #completewith SacredBurial
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 鬼嚎|r ，由于其为 12 级，战斗难度较高|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
    #xprate <2.1
	#completewith next
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .accept 833 >>接受任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #optional
    #label SacredBurial
step << Warrior
    #xprate <2.1
    #season 2
    #completewith RiteofWisdom
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_被砍下的野猪人的头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob 刺背干涉者
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    #xprate <2.1
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .accept 775 >>接受任务 雷霆崖之旅
    .target 先祖之魂
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_被砍下的野猪人的头|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob 刺背干涉者
    .train 403475,1
step
    #xprate <2.1
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .turnin 833 >>交任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #xprate <2.1
    #completewith next
    >>|cRXP_WARN_完成收集马兹拉纳其所需的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #loop
	.goto Mulgore,51.00,18.40,0
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
	.goto Mulgore,59.52,23.36,60,0
	>>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #xprate <2.1
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
step << skip --Cannon removed from game
    #season 2
    #softcore
    #completewith Bloodhoofturnins1
    .goto Thunder Bluff,41.17,67.66
    +点击 |cRXP_PICK_超级大炮|r 将自己轰回到血蹄村
    >>|cRXP_WARN_你到达时会死亡，但可以立即复活|r
    >>当|cRXP_WARN_ |T135992:0|t[魔法之翼s] |rbuff还剩2秒时将其点掉，并尽量落在河中以避免死亡|cRXP_WARN_
    .zoneskip Thunder Bluff,1
step
    #completewith Bloodhoofturnins1
    .zone Mulgore >>离开雷霆崖
    .zoneskip Thunder Bluff,1
step
    #softcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,48.22,38.85
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    >>|cRXP_WARN_确保你在路点箭头处或者它的南边死去|r
    .zoneskip Thunder Bluff
step
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>前往血蹄村
    .subzoneskip 222
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Warrior
    #xprate <2.1
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与血蹄村的 |cRXP_FRIENDLY_瓦泰亚|r 对话
    >>交还你收集的 |cRXP_LOOT_被砍下的巨魔的头|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    #xprate <2.1
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
step << !Tauren
    #xprate <2.1
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
step << Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_卢尔|r 对话
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
step << !Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_卢尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
step
    #xprate >2.09
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
step
    #xprate >2.09
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_卢尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
step
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_你可以从背包中摧毁|r |T134707:0|t[勘察员的锄头] |cRXP_WARN_，因为它们已经不需要了|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 2687 >>训练你的职业技能
    .accept 1505 >>接受任务 老兵犹塞克
    .target 克朗·石蹄
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 7384 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <12,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8050 >>训练你的职业技能
    .accept 2984 >>接受任务 火焰的召唤
    .target 纳姆·逐星
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 547 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .accept 6061 >>接受任务 驯服野兽
    .train 13165 >>训练你的职业技能
    .target 雅文·刺鬃
    .isQuestAvailable 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 14281 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8924 >>训练你的职业技能
    .accept 5928 >>接受任务 响应召唤
    .target 根妮亚·符文图腾
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8936 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <12,1
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target 旅店老板格罗斯克
    .money <0.05
    .target 加纳·麦风
step << skip
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
step
    #xprate >2.09
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
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step << Hunter
    #xprate >2.09
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
    >>|cRXP_WARN_这将使你能够学习|r |T132140:0|t[爪击（等级 2）]
    .mob 草原狼前锋
step
    #xprate >2.09
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
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
step
    #season 2
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>前往风险投资公司矿井
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_如果可能的话，尽量待在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>杀死 |cRXP_ENEMY_菲兹普罗克主管|r。拾取他的 |cRXP_LOOT_笔记本|r
    >>|cRXP_WARN_跑进矿洞，贴着右侧/东侧走来找到他|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_如果可能的话，尽量待在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
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
step << Druid
    #season 2
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
    >>杀死|cRXP_ENEMY_平原徘徊者|r 和 |cRXP_ENEMY_草原狼前锋|r。拾取它们的 |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼前锋
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .use 206954
    .train 410025,1
    .itemcount 206954,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_保持50点以上的怒气至少60秒，以学习|r |T132135:0|t[割碎]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r] |cRXP_WARN_来学习|r |T132135:0|t[割碎]
    .use 206954
    .itemcount 206954,1
step << skip
    #label AlphaTeeth
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>击杀 |cRXP_ENEMY_草原狼前锋|r 并拾取它们的 |cRXP_LOOT_牙齿|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼前锋
step << skip
    #softcore
	#completewith Thunderhorn2
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step << skip
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>前往血蹄村
step << skip
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 759 >>交任务 蛮鬃图腾
    .accept 760 >>接受任务 净化蛮鬃之井
    .target 穆尔·雷角
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往贫瘠之地
    .isQuestAvailable 5922
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔·符文图腾|r 对话
    .accept 886 >>接受任务 贫瘠之地的绿洲
    .target 大德鲁伊哈缪尔·符文图腾
    .isQuestAvailable 5922
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
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
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
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5930 >>交任务  巨熊之灵
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
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
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
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip Thunder Bluff,1
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>跑到月夜枭兽之石并使用 |T132857:0|t[赛纳里奥银尘]。杀死 |cRXP_ENEMY_月爪枭兽|r
    >>|cRXP_WARN_避开该区域内的|r |cRXP_ENEMY_电角蜥蜴|r |cRXP_WARN_|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob 月爪枭兽
step << !Druid
    .goto The Barrens,44.45,59.15
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
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 886 >>交任务 贫瘠之地的绿洲 << Druid
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380,1
    .subzoneskip 380
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 854 >>交任务 十字路口之旅
    .target 索克
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .accept 6361 >>接受任务 一捆兽皮
    .target 加翰·鹰翼
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务菌类孢子
    .accept 1492 >>接受任务码头管理员迪兹维格
    .target 药剂师赫布瑞姆
step
    #xprate <2.1
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在采集蘑菇时尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    >>|cRXP_WARN_此任务的后续奖励是强力的 |cRXP_FRIENDLY_锅炉搅拌器|r|cRXP_WARN_。如果你暂时不打算使用它，可以先跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <2.1
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在该区域内尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    >>|cRXP_WARN_此任务的后续奖励是强力的 |cRXP_FRIENDLY_锅炉搅拌器|r|cRXP_WARN_。如果你暂时不打算使用它，可以先跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    #softcore
	#completewith ZamahPickup
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #xprate <2.1
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>返回十字路口
step
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .isQuestComplete 870
step
    #xprate <2.1
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .isQuestTurnedIn 877
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .turnin 848 >>交任务菌类孢子
    .timer 7,菌类孢子 剧情
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #xprate <2.1
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestTurnedIn 848
step
    #xprate <2.1
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
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestComplete 861
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
	.turnin 6089 >>交任务 训练野兽
    .target Holt Thunderhorn
step << Hunter
    #optional
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
    .train 14281 >>训练你的职业技能
    .target Holt Thunderhorn
    .xp <12,1
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    >>|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔|r 对话
    .train 7384 >>训练你的职业技能
    .target 科尔·暴怒图腾
    .xp <12,1
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .target 安塞瓦
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76156 >>交任务 大地母亲与匿同在
    .accept 76160 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
step
    #xprate <2.1
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
    #xprate <2.1
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .target 药剂师扎玛
    .isOnQuest 853
step
    #xprate <2.1
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_装备|r |T135145:0|t[锅炉搅拌器]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 547 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <12,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 和 |cRXP_FRIENDLY_穆阿特|r 在灵魂高地对话
    +当 |cRXP_FRIENDLY_穆阿特|r 变为敌对时杀死他
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 对话
    >>从她那里获得|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step
    #xprate <2.1
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    --.accept 776 >>Accept Rites of the Earthmother
    .target 凯恩·血蹄
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 6002 >>交任务 身心之力
    .target 图拉克·符文图腾
step << Druid
    #optional
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .train 8936 >>训练你的职业技能
    .target 图拉克·符文图腾
    .xp <12,1
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫兰塔|r 对话
    >>|cRXP_WARN_这会解锁一个简单任务。如果你已经有2个专业，请跳过此步|r
    .train 8613 >>训练 |T134366:0|t[剥皮]
    .target Mooranta
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .accept 768 >>接受任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买12个|r |T134252:0|t[轻皮] |cRXP_BUY_|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .turnin 768 >>交任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加|r 对话
    >>|cRXP_BUY_从她那里购买|r |T133972:0|t[硬肉干] |cRXP_BUY_来喂食你的宠物|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #completewith next
    >>击杀 |cRXP_ENEMY_风怒女巫|r。拾取他们的 |cRXP_LOOT_碧蓝色的羽毛|r
    >>击杀 |cRXP_ENEMY_风怒女族长|r。拾取他们的 |cRXP_LOOT_古铜色的羽毛|r
    .complete 744,1 --Azure Feather (6)
    .mob 风怒女巫
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女族长
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>拾取地上的|cRXP_LOOT_风怒锥|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step << Shaman
    #season 2
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
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>返回雷霆崖
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .turnin 744 >>交任务 准备典礼
    .target 伊恩·鹰爪
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76160 >>交任务 大地母亲与匿同在
    .accept 76240 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
    .train 410104,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买1条|r |T133894:0|t[新鲜的美味小鱼] |cRXP_BUY_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>前往 |cRXP_FRIENDLY_苏瓦·迷雾行者|r
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·迷雾行者|r 对话
    .train 7734 >>训练 |T136245:0|t[钓鱼]
    .target Kah Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏瓦·迷雾行者|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132932:0|t[鱼竿] |cRXP_BUY_和|r |T134335:0|t[闪光的小珠] |cRXP_BUY_|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[鱼竿]
    .use 6256
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪光的小珠] |cRXP_WARN_装在你的|r |T132932:0|t[鱼竿]
    .use 6529
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼，直到获得一条|T133894:0|t[|cRXP_LOOT_新鲜的美味小鱼|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
step << Shaman
    #season 2
    >>使用|T132147:0|t[一套匕首]制作|T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76240 >>交任务 大地母亲与匿同在
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
step
    #completewith HidesTurnIn
    .hs >>炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
    .cooldown item,6948,<0
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 保卫前沿哨所
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step
    #optional
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
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克 |r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135613:0|t[猎人火枪]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target 阿瑟罗克
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_装备|r |T135613:0|t[猎人火枪]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Shaman
    #completewith next
    >>查找位于 |cRXP_PICK_卡纳尔|r 旁边的 |cRXP_FRIENDLY_老陈的空酒桶|r。拾取它并开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
    .use 4926
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
step << Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step << Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >>进入尘风洞穴
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>击杀 |cRXP_ENEMY_祭司|r，拾取他们掉落的 |cRXP_LOOT_试剂袋|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob 火刃祭司
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加尔|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target 卡加尔·战痕
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
    .goto Durotar,39.34,28.25,40,0
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
    #optional
    .abandon 761 >>放弃任务 猎捕猛鹫
step
    #optional
    .abandon 766 >>放弃任务 马兹拉纳其
]])
