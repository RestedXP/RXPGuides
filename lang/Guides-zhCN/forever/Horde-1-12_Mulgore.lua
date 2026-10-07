if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 莫高雷
#version 11
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12级 莫高雷；6-13级 莫高雷

step << !Tauren
    #completewith next
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    +|cRXP_WARN_你选择的是为牛头人准备的攻略。由于缺少仅对牛头人开放的主线任务之一，这个区域并不适合你。建议你选择与你起始区域相同的初始区域攻略|r
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔·鹰风|r 对话
    .accept 747 >>接受任务 开始狩猎
    .target 格鲁尔·鹰风
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .accept 752 >>接受任务 一件琐事
    .target 鹰风酋长
step << Warrior/Shaman
    #completewith next
    .goto 1412/1,-317.90,-2852.63,30,0--c:Mulgore,46.05,75.32
    +|cRXP_WARN_击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取战利品，直到卖店物品(包括你的护甲)总价值达到 10 铜币为止|r << Warrior/Shaman
    .mob 平原陆行鸟
    .money >0.01
step << Warrior/Shaman
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼·柔风|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .money >0.01
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特·雷角|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 哈鲁特·雷角
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉·晨行者|r 对话
    .train 8017 >>影袭 |T136086:0|t[石化武器]
    .target 米拉·晨行者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肉|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto 1412/1,-522.37,-3052.65--c:Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长的母亲|r 对话
    .turnin 752 >>交任务 一件琐事
    .accept 753 >>接受任务 一件琐事
    .target 鹰风酋长的母亲
step
    .goto 1412/1,-532.14,-3059.84--c:Mulgore,50.22,81.37
    >>在 |cRXP_LOOT_鹰风酋长的母亲|r 身后的水井处拾取 |cRXP_FRIENDLY_水罐|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-385.20,-3117.38,0--c:Mulgore,47.36,83.05
    .goto 1412/1,-532.65,-2991.68,50,0--c:Mulgore,50.23,79.38
    .goto 1412/1,-573.24,-2967.71,50,0--c:Mulgore,51.02,78.68
    .goto 1412/1,-564.50,-2864.96,50,0--c:Mulgore,50.85,75.68
    .goto 1412/1,-440.17,-2916.33,50,0--c:Mulgore,48.43,77.18
    .goto 1412/1,-371.85,-2894.41,50,0--c:Mulgore,47.10,76.54
    .goto 1412/1,-303.52,-3026.27,50,0--c:Mulgore,45.77,80.39
    .goto 1412/1,-292.73,-3094.77,50,0--c:Mulgore,45.56,82.39
    .goto 1412/1,-385.20,-3117.38,50,0--c:Mulgore,47.36,83.05
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肉|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔·鹰风|r 对话
    .turnin 747,1 >>交任务 开始狩猎 << Druid
    .turnin 747 >>交任务 开始狩猎 << !Druid
    .accept 3091 >>接受任务 简易便笺 << Warrior
    .accept 3092 >>接受任务 风化便笺 << Hunter
    .accept 3093 >>接受任务 符文便笺 << Shaman
    .accept 3094 >>接受任务 绿色便笺 << Druid
    .accept 750 >>接受任务 继续狩猎
    .target 格鲁尔·鹰风
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼·柔风|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132384:0|t[轻弹丸] << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .turnin 753 >>交任务 一件琐事
    .accept 755 >>接受任务 大地母亲的仪式
    .target 鹰风酋长
step << Shaman
    .goto 1412/1,-216.18,-2926.26--c:Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_马沙克·利刃|r |cRXP_BUY_对话。|r |cRXP_BUY_从他那里购买一把|r |T135139:0|t[学徒法杖]
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
    #loop
    .goto 1412/1,-243.41,-3384.87,0--c:Mulgore,44.60,90.86
    .goto 1412/1,-172.00,-3330.07,50,0--c:Mulgore,43.21,89.26
    .goto 1412/1,-245.46,-3409.53,50,0--c:Mulgore,44.64,91.58
    .goto 1412/1,-306.09,-3373.23,50,0--c:Mulgore,45.82,90.52
    .goto 1412/1,-333.31,-3405.08,50,0--c:Mulgore,46.35,91.45
    .goto 1412/1,-420.65,-3418.09,50,0--c:Mulgore,48.05,91.83
    .goto 1412/1,-482.30,-3379.05,50,0--c:Mulgore,49.25,90.69
    .goto 1412/1,-571.18,-3368.09,50,0--c:Mulgore,50.98,90.37
    .goto 1412/1,-474.60,-3338.29,50,0--c:Mulgore,49.10,89.50
    .goto 1412/1,-369.79,-3308.84,50,0--c:Mulgore,47.06,88.64
    .goto 1412/1,-267.04,-3351.65,50,0--c:Mulgore,45.06,89.89
    .goto 1412/1,-243.41,-3384.87,50,0--c:Mulgore,44.60,90.86
    >>击杀 |cRXP_ENEMY_山狮|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob 山狮
step
    #label RitesoftheEarthmother
    .goto 1412/1,-139.63,-3430.08--c:Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灰舌先知|r 对话
    >>|cRXP_WARN_这将开启一个 10 分钟的限时任务|r
    .turnin 755 >>交任务 大地母亲的仪式
    .accept 757 >>接受任务 力量仪祭
    .accept 95805 >>接受任务 安瑟与穆莎的恩典
    .target 灰舌先知
step
    #loop
	.goto 1412/1,-292.73,-3285.20,40,0--c:Mulgore,45.56,87.95
	.goto 1412/1,-362.60,-3281.44,40,0--c:Mulgore,46.92,87.84
	.goto 1412/1,-452.50,-3246.84,40,0--c:Mulgore,48.67,86.83
	.goto 1412/1,-554.23,-3213.96,40,0--c:Mulgore,50.65,85.87
	.goto 1412/1,-572.72,-3139.98,40,0--c:Mulgore,51.01,83.71
	.goto 1412/1,-626.67,-3065.32,40,0--c:Mulgore,52.06,81.53
	.goto 1412/1,-616.90,-2998.53,40,0--c:Mulgore,51.87,79.58
	.goto 1412/1,-606.63,-2923.52,40,0--c:Mulgore,51.67,77.39
	.goto 1412/1,-621.01,-2847.15,40,0--c:Mulgore,51.95,75.16
	.goto 1412/1,-537.27,-2887.22,40,0--c:Mulgore,50.32,76.33
	.goto 1412/1,-461.75,-2869.75,40,0--c:Mulgore,48.85,75.82
	.goto 1412/1,-387.77,-2851.94,40,0--c:Mulgore,47.41,75.30
	.goto 1412/1,-356.43,-2951.61,40,0--c:Mulgore,46.80,78.21
	.goto 1412/1,-307.11,-3026.96,40,0--c:Mulgore,45.84,80.41
	.goto 1412/1,-265.50,-3086.55,40,0--c:Mulgore,45.03,82.15
	.goto 1412/1,-217.21,-3146.15,40,0--c:Mulgore,44.09,83.89
	.goto 1412/1,-207.45,-3221.16,40,0--c:Mulgore,43.90,86.08
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
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔·鹰风|r 对话
    .turnin 750 >>交任务 继续狩猎
    .accept 780 >>接受任务 斗猪
    .target 格鲁尔·鹰风
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼·柔风|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵维萨罗·风羽|r 对话
    >>|cRXP_WARN_她会在周围巡逻|r
    .accept 3376 >>接受任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特·雷角|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特·雷角|r 对话
    .turnin 3091 >>交任务 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡·远箭|r 对话
    .turnin 3092 >>交任务 风化便笺
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特·迷雾行者|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .train 8921 >>学习 |T136096:0|t[月火术]
    .target 加尔特·迷雾行者
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽先知|r 对话
    .accept 1519 >>接受任务 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉·晨行者|r 对话
    .turnin 3093 >>交任务 符文便笺
    .train 8042 >>影袭 |T136026:0|t[大地震击]
    .target 米拉·晨行者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_斗猪|r。拾取他们的 |cRXP_LOOT_肋排|r 和 |cRXP_LOOT_头|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob 斗猪
step
    .goto 1412/1,-1005.500,-3372.700
    >>点击 |cRXP_PICK_神龛|r
    >>|cRXP_WARN_确保时间没有用完|r
    .turnin 95805 >>交任务 安瑟与穆莎的恩典
step
    #loop
    .goto 1412/1,-828.57,-3199.92,0--c:Mulgore,55.99,85.46
    .goto 1412/1,-659.55,-2989.63,50,0--c:Mulgore,52.70,79.32
    .goto 1412/1,-736.09,-3007.09,50,0--c:Mulgore,54.19,79.83
    .goto 1412/1,-815.21,-3022.51,50,0--c:Mulgore,55.73,80.28
    .goto 1412/1,-853.74,-3070.11,50,0--c:Mulgore,56.48,81.67
    .goto 1412/1,-810.07,-3145.12,50,0--c:Mulgore,55.63,83.86
    .goto 1412/1,-830.62,-3202.32,50,0--c:Mulgore,56.03,85.53
    .goto 1412/1,-818.81,-3276.98,50,0--c:Mulgore,55.80,87.71
    .goto 1412/1,-866.07,-3330.41,50,0--c:Mulgore,56.72,89.27
    .goto 1412/1,-927.72,-3330.41,50,0--c:Mulgore,57.92,89.27
    .goto 1412/1,-915.91,-3244.79,50,0--c:Mulgore,57.69,86.77
    .goto 1412/1,-896.38,-3197.52,50,0--c:Mulgore,57.31,85.39
    .goto 1412/1,-828.57,-3199.92,50,0--c:Mulgore,55.99,85.46
    >>击杀 |cRXP_ENEMY_斗猪|r。拾取他们的 |cRXP_LOOT_肋排|r 和 |cRXP_LOOT_头|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob 斗猪
step
    #completewith BristlebackBelts
    .goto 1412/1,-1017.63,-3126.97,30 >>穿过洞穴前进--c:Mulgore,59.67,83.33
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
    .goto 1412/1,-1062.33,-3048.54,35,0--c:Mulgore,60.54,81.04
    .goto 1412/1,-1155.31,-3056.41,35,0--c:Mulgore,62.35,81.27
    .goto 1412/1,-1162.51,-2971.13,35,0--c:Mulgore,62.49,78.78
    .goto 1412/1,-1276.56,-2933.11--c:Mulgore,64.71,77.67
    >>在大帐篷内击杀 |cRXP_ENEMY_刺鬃酋长|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob 锋牙·刺鬃酋长
step
    #completewith next
    .goto 1412/1,-1201.04,-3105.39,40 >>进入洞穴--c:Mulgore,63.24,82.70
step
    #label DirtyMap
    .goto 1412/1,-1201.04,-3105.39--c:Mulgore,63.24,82.70
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
    .goto 1412/1,-1236.49,-2956.06,0--c:Mulgore,63.93,78.34
    .goto 1412/1,-1230.32,-2898.18,40,0--c:Mulgore,63.81,76.65
    .goto 1412/1,-1184.60,-2907.08,40,0--c:Mulgore,62.92,76.91
    .goto 1412/1,-1101.88,-2917.70,40,0--c:Mulgore,61.31,77.22
    .goto 1412/1,-1115.76,-2974.90,40,0--c:Mulgore,61.58,78.89
    .goto 1412/1,-1164.56,-2996.48,40,0--c:Mulgore,62.53,79.52
    .goto 1412/1,-1250.36,-2979.01,40,0--c:Mulgore,64.20,79.01
    .goto 1412/1,-1333.59,-2948.87,40,0--c:Mulgore,65.82,78.13
    .goto 1412/1,-1236.49,-2956.06,40,0--c:Mulgore,63.93,78.34
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取他们的 |cRXP_LOOT_腰带|r
    .complete 757,1 --Bristleback Belt (12)
    .mob 刺背野猪人
step << Shaman
    #loop
    .goto 1412/1,-1232.89,-3017.71,0--c:Mulgore,63.86,80.14
    .goto 1412/1,-1226.73,-3053.33,40,0--c:Mulgore,63.74,81.18
    .goto 1412/1,-1232.89,-3011.89,40,0--c:Mulgore,63.86,79.97
    .goto 1412/1,-1291.46,-2964.97,40,0--c:Mulgore,65.00,78.60
    .goto 1412/1,-1345.40,-2938.59,40,0--c:Mulgore,66.05,77.83
    .goto 1412/1,-1339.24,-2913.59,40,0--c:Mulgore,65.93,77.10
    .goto 1412/1,-1217.99,-2884.48,40,0--c:Mulgore,63.57,76.25
    .goto 1412/1,-1232.89,-3017.71,40,0--c:Mulgore,63.86,80.14
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob 刺背萨满祭司
step
    #loop
    .goto 1412/1,-1239.06,-3015.66,40,0--c:Mulgore,63.98,80.08
    .goto 1412/1,-1256.01,-2954.35,40,0--c:Mulgore,64.31,78.29
    .goto 1412/1,-1223.13,-2882.08,40,0--c:Mulgore,63.67,76.18
    .goto 1412/1,-1171.75,-2879.34,40,0--c:Mulgore,62.67,76.10
    .goto 1412/1,-1103.43,-2914.62,40,0--c:Mulgore,61.34,77.13
    .goto 1412/1,-1122.95,-2977.98,40,0--c:Mulgore,61.72,78.98
    .goto 1412/1,-1152.23,-3065.32,40,0--c:Mulgore,62.29,81.53
    .goto 1412/1,-1076.71,-3040.66,40,0--c:Mulgore,60.82,80.81
    .goto 1412/1,-1038.69,-3079.02,40,0--c:Mulgore,60.08,81.93
    .goto 1412/1,-1087.50,-3092.38,40,0--c:Mulgore,61.03,82.32
    .goto 1412/1,-1151.20,-3082.44,40,0--c:Mulgore,62.27,82.03
    .xp 5+880 >>刷怪达到880+/2800经验 << !Shaman
    .xp 5 >>刷怪升至等级5 << Shaman
step
    #completewith next
    .hs >>使用炉石返回纳拉其营地
    .use 6948
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔·鹰风|r 对话
    .turnin 780 >>交任务 斗猪
    .target 格鲁尔·鹰风
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵维萨罗·风羽|r 对话
    >>|cRXP_WARN_她会在周围巡逻|r
    .turnin 3376 >>交任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡文尼·柔风|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵维萨罗·风羽|r 对话
    >>|cRXP_WARN_她会在周围巡逻|r
    .turnin 3376 >>交任务 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽先知|r 对话
    .turnin 1519 >>交任务 大地的召唤
    .accept 1520 >>接受任务 大地的召唤
    .target 鸦羽先知
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .turnin 781 >>交任务 纳拉其营地的危机
    .turnin 757 >>交任务 力量仪祭
    .accept 763 >>接受任务 大地母亲的仪式
    .accept 96659 >>接受任务 冒险者
    .target 鹰风酋长
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto 1412/1,-712.98,-3018.05,30 >>朝岩石方向前进--c:Mulgore,53.74,80.15
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_使用|r |T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    .goto 1412/1,-712.98,-3018.05--c:Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地之魂|r 对话
    .turnin 1520 >>交任务 大地的召唤
    .accept 1521 >>接受任务 大地的召唤
    .target 大地之魂
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽先知|r 对话
    .turnin 1521 >>交任务 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉·晨行者|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 米拉·晨行者
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡·远箭|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡·远箭|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特·迷雾行者|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特·迷雾行者|r 对话
    .train 5177 >>学习 |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特·雷角|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特·雷角|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 哈鲁特·雷角
step
    .goto 1412/1,69.47,-3065.66--c:Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安图尔·荒野|r 对话
    .accept 1656 >>接受任务 未完的任务
    .target 安图尔·荒野

]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12级 莫高雷
#version 11
#group RestedXP魔兽世界无限指南（部落）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17级 贫瘠之地


step
	#softcore
	#completewith BloodhoofHome
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >>前往血蹄村
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加·狂野之蹄|r 对话
    .turnin 96659 >>交任务 冒险者
    .accept 96605 >>接受任务 壮丽自然
    .target Kaga Wildhoof
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_在营火旁边输入/坐下并等待1分钟，直到你获得“露营增益”buff|r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>坐下
    .timer 59, RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加·狂野之蹄|r 对话
    .turnin 96605 >>交任务 壮丽自然
    .accept 96661 >>接受任务 露营基础：烹饪
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文·刺鬃|r 对话 
    .accept 96130 >>接受任务 查库亚克
    .target 雅文·刺鬃
step
    #softcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r 对话 
    .accept 99411 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    #softcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    #hardcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
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
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .turnin 1656 >>交任务 未完的任务
    .target 旅店老板考乌斯
step
    #label BloodhoofHome
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .turnin 1656 >>交任务 未完的任务
    .home >>将你的炉石绑定到血蹄村
    .target 旅店老板考乌斯
    .bindlocation 222
step
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 763 >>交任务 大地母亲的仪式
    .accept 745 >>接受任务 土地之争
    .accept 767 >>接受任务 幻象仪祭
    .accept 746 >>接受任务 矮人的挖掘场
    .target 贝恩·血蹄
step
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    .turnin 767 >>交任务 幻象仪祭
    .accept 771 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step
    #hardcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 766 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step
    #hardcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文·刺鬃|r 对话 
    .accept 96130 >>接受任务 查库亚克
    .target 雅文·刺鬃
step
    #hardcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿哈布·麦蹄|r对话 
    .accept 99411 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
step
    .goto 1412/1,-496.200,-2347.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗·石蹄|r 对话 
    .accept 99108 >>接受任务 Sparring Match
    .target 克朗·石蹄
step
    .goto 1412/1,-521.600,-2345.400
    >>与一个 |cRXP_FRIENDLY_新手战士|r 对话，然后在战斗中击败它
    .complete 99108,1 --|3/3 Player Duels won or Novice Warriors defeated
    .target Novice Warrior
    .skipgossip
step
    .goto 1412/1,-496.100,-2348.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗·石蹄|r 对话
    .turnin 99108 >>交任务 Sparring Match
    .target 克朗·石蹄
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .accept 748 >>接受任务 有毒的水
    .target 穆尔·雷角
step
    .goto 1412/1,-426.800,-2373.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵萨拉莫尼·野蹄|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .accept 99079 >>接受任务 Longwalker Malah
    .target Brave Wildrunner
step
    #softcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加·狂野之蹄|r 对话
    .turnin 96659 >>交任务 冒险者
    .accept 96605 >>接受任务 壮丽自然
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_在营火旁边输入/坐下并等待1分钟，直到你获得“露营增益”buff|r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>坐下
    .timer 59, RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加·狂野之蹄|r 对话
    .turnin 96605 >>交任务 壮丽自然
    .accept 96661 >>接受任务 露营基础：烹饪
    .target Kaga Wildhoof
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
    >>击杀 |cRXP_ENEMY_草原狼|r。拾取它们的 |cRXP_LOOT_草原狼的爪子|r
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] 和 |cRXP_LOOT_陆行鸟的爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step << !Tauren
    #completewith Ambercorns
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step
    #label Ambercorns
    #loop
    .goto 1412/1,-539.33,-2550.20,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-454.56,-2479.99,15,0--c:Mulgore,48.71,64.44
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-619.47,-2459.78,15,0--c:Mulgore,51.92,63.85
    .goto 1412/1,-578.89,-2706.72,15,0--c:Mulgore,51.13,71.06
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
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
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>击杀 |cRXP_ENEMY_草原狼|r。拾取它们的 |cRXP_LOOT_草原狼的爪子|r
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] 和 |cRXP_LOOT_陆行鸟的爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step << !Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>击杀 |cRXP_ENEMY_成年平原陆行鸟|r。拾取它们掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step << Tauren
    #completewith next
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
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
    .goto 1412/1,-709.89,-2543.01--c:Mulgore,53.68,66.28
    >>|cRXP_WARN_在水井旁使用|r |T135139:0|t[净化图腾]|cRXP_WARN_|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto 1412/1,-729.42,-2547.12,0--c:Mulgore,54.06,66.40
    .goto 1412/1,-692.94,-2525.88,10,0--c:Mulgore,53.35,65.78
    .goto 1412/1,-710.92,-2519.37,10,0--c:Mulgore,53.70,65.59
    .goto 1412/1,-725.31,-2531.36,10,0--c:Mulgore,53.98,65.94
    .goto 1412/1,-729.42,-2547.12,10,0--c:Mulgore,54.06,66.40
    >>在水井周围收集 |cRXP_PICK_井边石|r
    .complete 771,1 --Well Stone (2)
step
    #completewith KyleFed
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 754 >>交任务 净化冰蹄之井
    .accept 756 >>接受任务 雷角图腾
    .target 穆尔·雷角
step << Warrior
    .goto 1412/1,-356.43,-2357.03--c:Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔拉|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 维尔拉·幼蹄
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith EnterCave
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith EnterCave
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith EnterCave
    +|cRXP_WARN_装备|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    .goto 1412/1,-285.000,-2263.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派尔|r 对话
    .train 2550 >>学习烹饪
    .turnin 96661 >>交任务 露营基础：烹饪
    .target Pyall Silentstride
step
    #label Vision
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    >>|cRXP_WARN_不要跟随刷新的那只狼|r
    .turnin 771 >>交任务 幻象仪祭
    .accept 772 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿哈布·麦蹄|r对话 
    .turnin 99411 >>交任务 凯雷失踪了！
    .target 阿哈布·麦蹄
    .isQuestComplete 99411
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step
    .goto 1412/1,-1066.400,-2325.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Malah Longwind|r 对话
    .turnin 99079 >>交任务 Longwalker Malah
    .accept 99081 >>接受任务 Grim Tidings
    .target Malah Longwind
step
    #completewith EnterCave
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
	#completewith EnterCave
	>>在莫高雷各处击杀 |cRXP_ENEMY_猛鹫|r，并从它们身上拾取 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step
    #label RavagedCaravan1
    .goto 1412/1,-712.98,-1922.74--c:Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step << Tauren
    #loop
    .goto 1412/1,-936.97,-1937.47,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-936.97,-1937.47,60,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-752.02,-1646.34,60,0--c:Mulgore,54.5,40.1
    .goto 1412/1,-335.88,-2009.39,60,0--c:Mulgore,46.4,50.7
    >>击杀 |cRXP_ENEMY_草原捕食者|r 和 |cRXP_ENEMY_平原狮|r，并从它们身上拾取 |cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .mob +草原捕食者
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    .goto 1412/1,54.800,-2442.200
    >>击杀|cRXP_ENEMY_查库亚克|r。拾取他的 |cRXP_LOOT_查库亚克的皮|r
    .complete 96130,1 --|1/1 Chakuyak's Pelt
    .mob Chakuyak
step
    #label EnterCave
    #completewith LongWalkers
    .goto 1412/1,297.800,-2398.500,30 >>进入洞穴
step
    #completewith Escort1
    >>击杀 |cRXP_ENEMY_白鬃制革工|r、|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .unitscan 断矛
step
    #label LongWalkers
    .goto 1412/1,297.800,-2398.500,20,0
    .goto 1412/1,395.800,-2339.300,20,0
    .goto 1412/1,442.300,-2439.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佩里斯·雷蹄|r 对话
    >>|cRXP_WARN_这将开启一个护送任务|r
    .accept 98430 >>接受任务 The Longwalkers
    .target Perith Stormhoof
step
    #label Escort1
    .goto 1412/1,192.500,-2394.000
    >>护送 |cRXP_FRIENDLY_佩里斯·雷蹄|r 离开洞穴
    .complete 98430,1 --escort (manually entered cords where its completed)
    .target Perith Stormhoof
step
    #label Gnolls
    #loop
    .goto 1412/1,229.100,-2403.900,0
    .goto 1412/1,229.100,-2403.900,40,0
    .goto 1412/1,367.900,-2364.200,30,0
    .goto 1412/1,442.300,-2340.600,30,0
    .goto 1412/1,450.000,-2407.900,30,0
    .goto 1412/1,460.000,-2341.200,30,0
    .goto 1412/1,479.700,-2345.900,30,0
    >>击杀 |cRXP_ENEMY_白鬃制革工|r、|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
    .unitscan 断矛
step
    #softcore
	#completewith Thunderhorn
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >>前往血蹄村
step
    #completewith KyleFed2
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto 1412/1,-408.700,-2180.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文·刺鬃|r 对话
    .turnin 96130 >>交任务 查库亚克
    .target 雅文·刺鬃
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #label Mazzturnin
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T133053:0|t[木槌棒]（7 银 1 铜），就一并出售。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_玛诺特|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](4银14铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_肯纳|r|cRXP_BUY_对话. 从他那里购买1把|r |T135611:0|t[精制短枪] |cRXP_BUY_|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-308.14,-2248.11--c:Mulgore,45.86,57.67
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
    .goto 1412/1,-310.20,-2284.42--c:Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈兰特|r 对话
    .vendor >>出售垃圾物品并修理装备
    .target 哈兰特·铁枝
step
    .goto 1412/1,-392.500,-2318.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵萨拉莫尼·野蹄|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 99081 >>交任务 Grim Tidings
    .accept 99101 >>接受任务 Our Ancient 敌方
    .target Brave Wildrunner
step
    .goto 1412/1,-392.900,-2333.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_贝恩·血蹄|r 对话
    .turnin 745 >>交任务 土地之争
    .turnin 99101 >>交任务 Our Ancient 敌方
    .accept 99080 >>接受任务 Drive Them 休息
    .target 贝恩·血蹄
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 756 >>交任务 雷角图腾
    .timer 8,雷角图腾 剧情演出
    .accept 758 >>接受任务 净化雷角之井
    .target 穆尔·雷角
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #label KyleFed2
    .goto 1412/1,-347.70,-2364.91--c:Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从他那里r|r << Warrior
    .vendor >>把垃圾物品卖给商人 << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 旅店老板考乌斯
    .money <0.025
step
    #loop
    .goto 1412/1,-422.300,-2250.300,0
    .goto 1412/1,-422.300,-2250.300,30,0
    .goto 1412/1,-374.900,-2263.800,30,0
    .goto 1412/1,-361.900,-2328.100,30,0
    .goto 1412/1,-438.600,-2387.500,30,0
    .goto 1412/1,-491.400,-2326.900,30,0
    .goto 1412/1,-469.300,-2256.000,30,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134028:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 喂他
    >>|cRXP_WARN_他会沿顺时针方向绕着血蹄村巡逻|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r 对话 
    .turnin 99411 >>交任务 凯雷失踪了！
    .target 阿哈布·麦蹄
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
    .goto 1412/1,-237.76,-1826.50--c:Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井处使用 |r|T135139:0|t[雷角净化图腾]|cRXP_WARN_|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto 1412/1,441.42,-1980.96--c:Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r和|cRXP_ENEMY_巴尔丹鉴定官|r。拾取它们的|cRXP_LOOT_探矿者的镐|r
    .use 4702 >>|cRXP_WARN_砸碎|r |T134707:0|t[矿工锄] |cRXP_WARN_在熔炉处|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_ 巴尔丹鉴定官|r 会施放|r |T135929:0|t[次级治疗术] |cRXP_WARN_(远程施法:当自身或附近生命值低于 50% 的单位时，为其恢复约 75 点生命值)|r
    .complete 746,1 --Broken Tools (5)
    .mob 巴尔丹掘地工
    .mob 巴尔丹鉴定官
step
    #loop
	.goto 1412/1,417.27,-1653.53,0--c:Mulgore,31.74,40.31
	.goto 1412/1,297.06,-1769.98,50,0--c:Mulgore,34.08,43.71
	.goto 1412/1,353.57,-1744.30,50,0--c:Mulgore,32.98,42.96
	.goto 1412/1,418.30,-1748.41,50,0--c:Mulgore,31.72,43.08
	.goto 1412/1,451.18,-1714.50,50,0--c:Mulgore,31.08,42.09
	.goto 1412/1,449.13,-1672.71,50,0--c:Mulgore,31.12,40.87
	.goto 1412/1,417.27,-1653.53,50,0--c:Mulgore,31.74,40.31
	.goto 1412/1,381.31,-1682.99,50,0--c:Mulgore,32.44,41.17
	.goto 1412/1,323.26,-1687.44,50,0--c:Mulgore,33.57,41.30
	.goto 1412/1,310.41,-1651.82,50,0--c:Mulgore,33.82,40.26
	.goto 1412/1,276.51,-1684.36,50,0--c:Mulgore,34.48,41.21
	.goto 1412/1,275.48,-1721.35,50,0--c:Mulgore,34.50,42.29
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 743,1 --Windfury Talon (8)
    .mob 风怒唤风者
    .mob 风怒鹰身人
step
    #completewith next
    .goto 1412/1,333.53,-1523.73,50 >>进入风怒鹰身人北边的洞穴--c:Mulgore,33.37,36.52
step
	#label Burial
    .goto 1412/1,366.93,-1509.00--c:Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知奥萨迪|r 对话
    .turnin 772 >>交任务 幻象仪祭
    .accept 773 >>接受任务 智慧仪祭
    .target 先知奥萨迪·智慧行者
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_你可以摧毁你背包中的|r |T134712:0|t[先知之水] |cRXP_WARN_，因为它已经不需要了|r
step
    #completewith TBHome
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30 >>乘电梯进入雷霆崖
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾| 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态 
    .accept 76156 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
step
    #label TBHome
    .goto 1456/1,38.32,-1300.48--c:Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
step
    #completewith SacredBurial
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>离开雷霆崖
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
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴雨图腾|r 对话
    .accept 833 >>接受任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    #label RiteofWisdom
    .goto 1412/1,-1109.08,-992.51--c:Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .accept 775 >>接受任务 雷霆崖之旅
    .target 先祖之魂
step
    #loop
	.goto 1412/1,-1026.88,-1150.40,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1026.88,-1150.40,25,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1093.15,-1058.27,25,0--c:Mulgore,61.14,22.93
	.goto 1412/1,-1125.52,-1043.20,25,0--c:Mulgore,61.77,22.49
	.goto 1412/1,-1146.58,-1028.13,25,0--c:Mulgore,62.18,22.05
	.goto 1412/1,-1153.77,-988.40,25,0--c:Mulgore,62.32,20.89
	.goto 1412/1,-1117.81,-940.79,25,0--c:Mulgore,61.62,19.50
	.goto 1412/1,-1057.19,-940.79,25,0--c:Mulgore,60.44,19.50
	.goto 1412/1,-1042.80,-994.22,25,0--c:Mulgore,60.16,21.06
	.goto 1412/1,-1055.65,-1025.05,25,0--c:Mulgore,60.41,21.96
	.goto 1412/1,-1092.12,-1056.56,25,0--c:Mulgore,61.12,22.88
    >>击杀 |cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob 刺背干涉者
step
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
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
	.goto 1412/1,-572.21,-903.12,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	>>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #loop
    .goto 1412/1,-780.79,-1385.36,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-780.79,-1385.36,60,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-718.11,-1670.32,60,0--c:Mulgore,53.84,40.80
    .goto 1412/1,-684.72,-1819.65,60,0--c:Mulgore,53.19,45.16
    .goto 1412/1,-903.58,-1946.37,60,0--c:Mulgore,57.45,48.86
    .goto 1412/1,-985.26,-2080.97,60,0--c:Mulgore,59.04,52.79
    .goto 1412/1,-989.37,-2262.50,60,0--c:Mulgore,59.12,58.09
    .goto 1412/1,-452.50,-1808.69,60,0--c:Mulgore,48.67,44.84
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
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3020 >>刷怪达到3020+/6500经验
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3720 >>刷怪达到3720+/6500经验
    .isQuestComplete 761
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3700 >>刷怪达到3700+/6500经验
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+4400 >>刷怪达到4400+/6500经验
step
    #sofcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-598.900,-1603.700
    .deathskip >>在位点箭头位置（或者更南边一点）死掉，然后在 |cRXP_FRIENDLY_灵魂医者|r 那里复活
step
    #hardcore
    #completewith Bloodhoofturnins1
    .subzone 222 >>前往血蹄村
step
    .goto 1412/1,-347.19,-2364.91--c:Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 旅店老板考乌斯
    .isQuestAvailable 870
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step
    #optional
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
    .xp <10,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, |cRXP_FRIENDLY_穆尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾
    .target 穆尔·雷角
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r, and |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>交任务 净化雷角之井
    .timer 8,净化雷角之井 剧情演出
    .accept 759 >>接受任务 蛮鬃图腾
    .target 穆尔·雷角
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r, |cRXP_FRIENDLY_卢尔|r 和 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r 和 |cRXP_FRIENDLY_卢尔|r对话
    .turnin 746 >>交任务 矮人的挖掘场
    .target 贝恩·血蹄
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >>|cRXP_WARN_你可以从背包中摧毁|r |T134707:0|t[勘察员的锄头] |cRXP_WARN_，因为它们已经不需要了|r
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 肯纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
step
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 766 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .trainer >>训练你的职业技能
    .accept 1505 >>接受任务 老兵犹塞克
    .target 克朗·石蹄
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .accept 2984 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .accept 6061 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
    .target 雅文·刺鬃
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .trainer >>训练你的职业技能
    .accept 5928 >>接受任务 响应召唤 << Tauren
    .target 根妮亚·符文图腾
    .isQuestAvailable 5928
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8924 >>训练你的职业技能
    .target 根妮亚·符文图腾
step << Hunter
    #loop
    .goto 1412/1,24.77,-2239.89,0--c:Mulgore,39.38,57.43
    .goto 1412/1,-154.53,-2152.56,50,0--c:Mulgore,42.87,54.88
    .goto 1412/1,-44.59,-2177.22,50,0--c:Mulgore,40.73,55.60
    .goto 1412/1,24.77,-2239.89,50,0--c:Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对|r|cRXP_ENEMY_成年平原陆行鸟|r|cRXP_WARN_ 进行驯服|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob 成年平原陆行鸟
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6061 >>交任务 驯服野兽
    .accept 6087 >>接受任务 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto 1412/1,-494.63,-1720.66,0--c:Mulgore,49.49,42.27
    .goto 1412/1,-375.96,-1990.55,50,0--c:Mulgore,47.18,50.15
    .goto 1412/1,-348.73,-1890.20,50,0--c:Mulgore,46.65,47.22
    .goto 1412/1,-427.33,-1823.41,50,0--c:Mulgore,48.18,45.27
    .goto 1412/1,-494.63,-1720.66,50,0--c:Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_在最大射程内，使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_草原捕食者|r|cRXP_WARN_ 进行驯服|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob 草原捕食者
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6087 >>交任务 驯服野兽
    .accept 6088 >>接受任务 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto 1412/1,-379.55,-1688.47,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-379.55,-1688.47,80,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-285.02,-1652.85,80,0--c:Mulgore,45.41,40.29
    .goto 1412/1,-601.49,-1793.62,80,0--c:Mulgore,51.57,44.40
    .use 15916 >>|cRXP_WARN_在最大射程内使用你的 |r|T132164:0|t[驯服棒]|cRXP_WARN_ 对 |r|cRXP_ENEMY_猛鹫|r |cRXP_WARN_进行驯服，如果它将你击倒，立即重新施放|r
    >>|cRXP_WARN_如果你失败并用完了驯兽棒的充能次数，放弃任务后重新接取，再回来尝试|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob 猛鹫
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .turnin 6088 >>交任务 驯服野兽
    .accept 6089 >>接受任务 训练野兽
    .target 雅文·刺鬃
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加纳|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target 旅店老板格罗斯克
    .money <0.05
    .target 加纳·麦风
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
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
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    .cast 1515 >>驯服1只|cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_这将允许你学会|r |T132278:0|t[撕咬等级 2]
    .mob 草原狼前锋
step << Tauren
    #completewith Centaurs
    >>击杀 |cRXP_ENEMY_草原狼前锋|r 并拾取它们的 |cRXP_LOOT_牙齿|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼前锋
step
    #completewith next
    >>击杀 |cRXP_ENEMY_加拉克前锋|r 和 |cRXP_ENEMY_加拉克半人马|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step
    .goto 1412/1,-1246.100,-2181.700
    >>击杀 |cRXP_ENEMY_掠夺者赫拉克|r。从他身上拾取 |cRXP_LOOT_赫拉克的头颅|r
    .complete 99080,3 --|1/1 Herak's Head
    .mob Herak the Pillager
step
    #label Centaurs
    #loop
    .goto 1412/1,-1248.700,-2265.300,0
    .goto 1412/1,-1248.700,-2265.300,50,0
    .goto 1412/1,-1394.500,-2316.500,50,0
    .goto 1412/1,-1188.000,-2216.400,50,0
    >>击杀 |cRXP_ENEMY_加拉克前锋|r 和 |cRXP_ENEMY_加拉克半人马|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step << Tauren
    #label AlphaTeeth
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    >>击杀 |cRXP_ENEMY_草原狼前锋|r 并拾取它们的 |cRXP_LOOT_牙齿|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼前锋
step
    #completewith Fizsprocket
    .goto 1412/1,-1112.16,-1892.60,20 >>前往风险投资公司矿井--c:Mulgore,61.51,47.29
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step
    #completewith VentureCos
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_如果可能的话，尽量待在洞穴的上层|r
    .complete 76156,1 --|5/5 Seaforium Mining Charge
step
    .goto 1412/1,-1288.89,-1756.97--c:Mulgore,64.95,43.33
    >>击杀 |cRXP_ENEMY_菲兹普罗克主管|r。从他身上拾取 |cRXP_LOOT_笔记板|r 和 |T134332:0|t[|cRXP_LOOT_莫高雷扩张计划|r]
    >>|cRXP_WARN_使用|r |T134332:0|t[|cRXP_LOOT_莫高雷扩张计划|r] |cRXP_WARN_来开始任务|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .collect 281031,1,98424 --Mulgore Expansion Plans (x1)
    .accept 98424 >>接受任务 菲兹普罗克的笔记板
    .mob 菲兹普罗克主管
step
    .goto 1412/1,-1128.700,-1674.600
    >>拾取地上的 |cRXP_PICK_文件|r
    .complete 98424,1 --|1/1 Shredder Operation Instructions
step
    .goto 1412/1,-1315.800,-1672.100
    >>拾取地上的 |cRXP_PICK_文件|r
    .complete 98424,2 --|1/1 Barrens Operations Best Practices
step
    #label Fizsprocket
    .goto 1412/1,-1153.900,-1637.800
    >>拾取地上的 |cRXP_PICK_文件|r
    .complete 98424,3 --|1/1 One "Gerenzo", of Stonetalon
step
    #label VentureCos
    #loop
	.goto 1412/1,-1103.94,-1901.50,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1103.94,-1901.50,25,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1039.72,-1911.44,25,0--c:Mulgore,60.10,47.84
	.goto 1412/1,-1008.90,-1924.11,25,0--c:Mulgore,59.50,48.21
	.goto 1412/1,-1018.14,-1946.03,25,0--c:Mulgore,59.68,48.85
	.goto 1412/1,-1041.78,-1955.96,25,0--c:Mulgore,60.14,49.14
	.goto 1412/1,-1137.85,-1942.26,25,0--c:Mulgore,62.01,48.74
	.goto 1412/1,-1131.68,-1911.44,25,0--c:Mulgore,61.89,47.84
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step
    #loop
    .goto Mulgore,63.77,43.97,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>在矿洞内部及外侧打开 |cRXP_PICK_冲击补给品|r。拾取它们的|cRXP_LOOT_爆盐采矿炸弹|r
    >>|cRXP_WARN_如果可能的话，尽量待在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    >>|cRXP_WARN_他沿着东侧道路巡逻|r
    .turnin 764 >>交任务 风险投资公司
    .turnin 765 >>交任务 菲兹普罗克主管
    .turnin 98424 >>交任务 菲兹普罗克的笔记板
	.unitscan 摩林·云行者
step << skip -- Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << Tauren
    --#hardcore
    #completewith Thunderhorn2
    .subzone 222 >>前往血蹄村
step
    .goto 1412/1,-393.100,-2333.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_贝恩·血蹄|r 对话
    .turnin 99080 >>交任务 Drive Them 休息
    .accept 99082 >>接受任务 大酋长
    .target 贝恩·血蹄
step << Tauren
    #label Thunderhorn2
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 759 >>交任务 蛮鬃图腾
    .accept 760 >>接受任务 净化蛮鬃之井
    .target 穆尔·雷角
step << !Druid
    #completewith ExitTB2
    .hs >>使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith ExitTB2
    .zone Thunder Bluff >>前往雷霆崖
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态 
    .turnin 76156 >>交任务 大地母亲与匿同在
    .accept 76160 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r 对话
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestComplete 861
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r 对话
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
    .isQuestTurnedIn 861
step << Hunter
	.goto 1456/1,-82.45,-1472.07--c:Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_浩特|r 对话
	.turnin 6089 >>交任务 训练野兽
    .target Holt Thunderhorn
step << Hunter
    .goto 1456/1,-47.79,-1435.06--c:Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r
step << Shaman/Druid
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .target 安塞瓦
    .money <0.100
step << Hunter
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
    .money <0.100
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step
    #optional
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .accept 776 >>接受任务 大地母亲的仪式
    .turnin 99082 >>交任务 大酋长
    .turnin 98430 >>交任务 The Longwalkers
    .target 凯恩·血蹄
    .isQuestComplete 99082
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 775 >>交任务 雷霆崖之旅
    .accept 776 >>接受任务 大地母亲的仪式
    .turnin 98430 >>交任务 The Longwalkers
    .target 凯恩·血蹄
step << Tauren Druid
    .goto 1456/1,-298.50,-1049.01--c:Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔·符文图腾|r 对话
    .accept 886 >>接受任务 贫瘠之地的绿洲
    .target 大德鲁伊哈缪尔·符文图腾
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>前往长者高地--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务 响应召唤
    .accept 5922 >>接受任务 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
    .isOnQuest 5928
step << Tauren Druid
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .accept 5922 >>接受任务 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
step << Tauren Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5922 >>交任务 月光林地
    .accept 5930 >>接受任务 巨熊之灵
    .target 德迪利特·星焰
step << Tauren Druid
    .goto 1450/1,-2286.12,8068.28--c:Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target 巨熊之灵
    .skipgossip
step << Tauren Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 5930 >>交任务 巨熊之灵
    .accept 5932 >>接受任务 返回雷霆崖
    .target 德迪利特·星焰
step << Tauren Druid
    #completewith DruidBearForm
    .hs >>使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46--c:Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Tauren Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 5932 >>交任务 返回雷霆崖
    .accept 6002 >>接受任务 身心之力
    .target 图拉克·符文图腾
step
    #ah
    .goto 1456/1,52.93,-1150.53--c:Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫兰塔|r 对话
    >>|cRXP_WARN_这会解锁一个简单任务。如果你已经有2个专业，请跳过此步|r
    .train 8613 >>训练 |T134366:0|t[剥皮]
    .target Mooranta
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .accept 768 >>接受任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,95.10,-1210.23--c:Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买12个|r |T134252:0|t[轻皮] |cRXP_BUY_|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔伦|r 对话
    .turnin 768 >>交任务 收集皮革
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto 1456/1,-29.42,-1182.54--c:Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加|r 对话
    >>|cRXP_BUY_从她那里购买|r |T133972:0|t[硬肉干] |cRXP_BUY_来喂食你的宠物|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step
    #label ExitTB2
    #completewith Harpies
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>离开雷霆崖
step
    #completewith ThunderBluff2
    >>留意 |cRXP_ENEMY_鬼嚎|r。拾取他掉落的 |T134358:0|t[|cRXP_LOOT_恶魔之伤|r]，并使用它以开始任务
    >>|cRXP_WARN_如果你无法找到他，请跳过此步骤|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
    #completewith Arrachea
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
step
    #completewith next
    >>在地上拾取 |cRXP_PICK_风怒球果|r
    >>|cRXP_WARN_主要在树下或树附近找到它们|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step
    #loop
    .goto 1412/1,419.33,-1238.77,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,0--c:Mulgore,30.2,19.5
    .goto 1412/1,419.33,-1238.77,40,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,40,0--c:Mulgore,30.2,19.5
    >>击杀 |cRXP_ENEMY_风怒女巫|r。拾取他们的 |cRXP_LOOT_碧蓝色的羽毛|r
    >>击杀 |cRXP_ENEMY_风怒女族长|r。拾取他们的 |cRXP_LOOT_古铜色的羽毛|r
    .complete 744,1 --Azure Feather (6)
    .mob 风怒女巫
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女族长
step
    #label Harpies
    #loop
    .goto 1412/1,460.000,-1055.700,0
    .goto 1412/1,517.800,-1163.900,40,0
    .goto 1412/1,530.000,-1074.100,40,0
    .goto 1412/1,593.200,-1003.200,40,0
    .goto 1412/1,460.000,-1055.700,40,0
    >>在地上拾取 |cRXP_PICK_风怒球果|r
    >>|cRXP_WARN_主要在树下或树附近找到它们|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step << Tauren
    .goto 1412/1,-135.52,-745.57--c:Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_在水井旁使用|r |T135139:0|t[净化图腾]|cRXP_WARN_|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #label Arrachea
    #loop
    .goto 1412/1,-654.41,-690.77,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-654.41,-690.77,90,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-448.91,-824.34,90,0--c:Mulgore,48.6,16.1
    .goto 1412/1,-613.31,-1430.57,90,0--c:Mulgore,51.8,33.8
    .goto 1412/1,-839.36,-1399.74,90,0--c:Mulgore,56.2,32.9
    >>击杀 |cRXP_ENEMY_阿兰其亚|r（大型黑色科多兽）。击杀并拾取他的 |cRXP_LOOT_角|r
    >>|cRXP_WARN_他在莫高雷北部顺时针巡逻|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan 阿兰其亚
step
    #label ProwlerClaws
    #loop
    .goto 1412/1,-201.28,-648.30,0--c:Mulgore,43.78,10.96
    .goto 1412/1,-201.28,-648.30,90,0--c:Mulgore,43.78,10.96
    .goto 1412/1,12.44,-730.15,90,0--c:Mulgore,39.62,13.35
    .goto 1412/1,140.88,-849.69,90,0--c:Mulgore,37.12,16.84
    .goto 1412/1,-241.87,-868.52,90,0--c:Mulgore,44.57,17.39
    .goto 1412/1,-454.05,-987.03,90,0--c:Mulgore,48.70,20.85
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob 平原徘徊者
step
    #label ThunderBluff2
    #completewith next
    .zone Thunder Bluff >>返回雷霆崖
step
    #label RFCPickups1
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 对话
    .turnin 776 >>交任务 大地母亲的仪式
    .target 凯恩·血蹄
    .isQuestComplete 776
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .turnin 744 >>交任务 准备典礼
    .target 伊恩·鹰爪
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76160 >>交任务 大地母亲与匿同在
    .accept 76240 >>接受任务 大地母亲与匿同在
    .target Boarton Shadetotem
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买1条|r |T133894:0|t[新鲜的美味小鱼] |cRXP_BUY_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>前往 |cRXP_FRIENDLY_苏瓦·迷雾行者|r
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡尔·迷雾行者|r 对话
    .train 7734 >>训练 |T136245:0|t[钓鱼]
    .target Kah Mistrunner
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_苏瓦·迷雾行者|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132932:0|t[鱼竿] |cRXP_BUY_和|r |T134335:0|t[闪光的小珠] |cRXP_BUY_|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[鱼竿]
    .use 6256
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪光的小珠] |cRXP_WARN_装在你的|r |T132932:0|t[鱼竿]
    .use 6529
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼，直到获得一条|T133894:0|t|T133894:0|t[|cRXP_LOOT_新鲜的美味小鱼|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
step
    >>|cRXP_WARN_使用|r |T132147:0|t[一套匕首] |cRXP_WARN_来制造|r |T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .turnin 76240 >>交任务 大地母亲与匿同在
    .target Boarton Shadetotem
step
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r 对话
    .turnin 861 >>交任务 猎人之道
    .accept 860 >>接受任务 瑟格拉·黑棘
    .target 梅洛·石蹄
step
    #completewith next
    .goto 1456/1,-141.400,-1432.700,10,0
    .goto 1456/1,-161.300,-1454.200,10,0
    .zone Mulgore >>从猎人高地跳到小山上离开雷霆崖
    >>|cRXP_WARN_严格跟随箭头路线，以免摔死。在进行第二次跳跃前先回一点血|r
step
    #completewith WildManeTurnIn
    .subzone 222 >>前往血蹄村
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 770 >>交任务 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 760 >>交任务 净化蛮鬃之井
    .target 穆尔·雷角
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳姆|r 对话
    .train 547 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8936 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 7384 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 14281 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith CampTFP
    .goto 1412/1,-1527.78,-2341.62,100,0--c:Mulgore,69.6,60.4
    .zone The Barrens >>前往贫瘠之地
step << Tauren Druid
    .goto 1413/1,-1633.08,-2499.35--c:The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_在 |r月枭石|cRXP_WARN_处使用 |r|T132857:0|t[塞纳里奥月尘]|cRXP_PICK_|r
    >>击杀刷新出现的|cRXP_ENEMY_月爪枭兽|r. 与 |cRXP_FRIENDLY_月爪枭兽的灵魂|r 对话
    >>|cRXP_WARN_小心！|cRXP_ENEMY_月爪枭兽|r 会施放 |r|T132152:0|t[痛击]|cRXP_WARN_(每 10 秒额外触发 2 次攻击)|r
    >>|cRXP_WARN_避开该区域内的|r |cRXP_ENEMY_电角蜥蜴|r |cRXP_WARN_|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob 月爪枭兽
    .target 月爪枭兽的灵魂
    .skipgossip
step << !Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
	.target 欧姆萨·雷角
    .isQuestAvailable 848
step << Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Thunder Bluff >>飞往雷霆崖 << Tauren
    .target 欧姆萨·雷角
    .isQuestAvailable 848
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>前往长者高地--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    .goto 1456/1,-281.56,-1039.41--c:Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 6002 >>交任务 身心之力
    .target 图拉克·符文图腾
step << Tauren Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip Thunder Bluff,1
step
    #optional
    #label CampTFP
step << Tauren
    .goto 1413/1,-1926.95,-2346.66--c:The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔格·锐角|r 对话
    .accept 854 >>接受任务 十字路口之旅
    .target 基尔格·锐角
step
    #completewith next
    .subzone 380 >>向北前往十字路口
step
    .goto 1413/1,-2672.76,-544.77--c:The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 886 >>交任务 贫瘠之地的绿洲 << Tauren Druid
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step
    .goto 1413/1,-2669.72,-481.94--c:The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 860 >>交任务 瑟格拉·黑棘
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step
    .goto 1413/1,-2595.75,-473.15--c:The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 854 >>交任务 十字路口之旅 << Tauren
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
step
    .goto 1413/1,-2607.91,-475.18--c:The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step
    .goto 1413/1,-2589.67,-424.51--c:The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务 菌类孢子
    .accept 1492 >>接受任务码头管理员迪兹维格
    .target 药剂师赫布瑞姆
step
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .accept 6361 >>接受任务 一捆兽皮
    .target 加翰·鹰翼
step
    .goto 1413/1,-2595.75,-437.35--c:The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    >>|cRXP_WARN_千万不要坐飞机飞去任何地方！|r
    .turnin 6361 >>交任务 一捆兽皮
    .accept 6362 >>接受任务 飞往雷霆崖
    .target 迪弗拉克
step
    .goto 1413/1,-2639.32,-436.00--c:The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
step << skip
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    --Setting HS later, gonna hearth back to TB first after Ratchet pirate section
step << Shaman
    #completewith next
    >>查找位于 |cRXP_PICK_卡纳尔|r 旁边的 |cRXP_FRIENDLY_老陈的空酒桶|r。拾取它并开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
    .use 4926
step << Shaman
    .goto 1413/1,-3037.56,264.63--c:The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 2984 >>交任务  火焰的召唤
    .accept 1524 >>接受任务 火焰的召唤
    .target 卡纳尔·菲斯
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0--c:Durotar,36.74,57.78
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3906.71,-270.71,8,0--c:Durotar,36.77,58.98
    .goto 1411/1,-3910.94,-247.45,8,0--c:Durotar,36.85,58.32
    .goto 1411/1,-3931.56,-240.75,8,0--c:Durotar,37.24,58.13
    .goto 1411/1,-3964.35,-242.51,8,0--c:Durotar,37.86,58.18
    .goto 1411/1,-3974.39,-228.76,8,0--c:Durotar,38.05,57.79
    .goto 1411/1,-4020.92,-219.95,8,0--c:Durotar,38.93,57.54
    .goto 1411/1,-4034.67,-232.64,8,0--c:Durotar,39.19,57.90
    .goto 1411/1,-4033.08,-255.91,10 >>沿着山路向上前往 |cRXP_FRIENDLY_泰尔夫|r--c:Durotar,39.16,58.56
    >>|cRXP_WARN_注意不要从山上掉下去，路径非常狭窄，跌落可能会导致死亡|r
step << Shaman
    #label CallofFire2
    .goto 1411/1,-3999.24,-268.95--c:Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1524 >>交任务  火焰的召唤
    .accept 1525 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r 对话
    .turnin 1505 >>交任务 老兵犹塞克
    .accept 1498 >>接受任务 防御之道
    .target 犹塞克
step << Warrior
    #loop
    .goto 1411/1,-4042.60,812.52,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,724.04,40,0--c:Durotar,39.11,30.76
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,875.62,40,0--c:Durotar,39.11,26.46
    .goto 1411/1,-4045.25,925.32,40,0--c:Durotar,39.39,25.05
    .goto 1411/1,-4077.50,960.22,40,0--c:Durotar,40.00,24.06
    .goto 1411/1,-4210.22,952.11,40,0--c:Durotar,42.51,24.29
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    >>击杀 |cRXP_ENEMY_闪电蜥蜴|r。拾取他们的 |cRXP_ENEMY_鳞片|r
    .complete 1498,1 --Singed Scale (5)
    .mob 闪电蜥蜴
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r 对话
    .turnin 1498 >>交任务 防御之道
    .accept 1502 >>接受任务 索恩格瑞姆·火眼
    .target 犹塞克

]])
