if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南（部落版）
<< Horde
#name 1-6 杜隆塔尔
#displayname 1-7级 杜隆塔尔 << Orc !Warrior !Hunter !Shaman !Warlock/Troll !Warrior !Hunter !Shaman
#displayname 1-8 Durotar << Orc Warrior/Troll Warrior
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Orc/Troll
#next 6-10 永歌森林 << !Shaman !Hunter !Warlock
#next 6-10 杜隆塔尔 << Shaman/Hunter/Warlock

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_你选择的是为兽人和巨魔准备的攻略。你应该选择与你起始区域相同的初始区域攻略|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔图克|r 对话
    .accept 4641 >>接受任务 你的位置
    .target 卡尔图克
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_击杀 |cRXP_ENEMY_杂斑野猪|r，拾取它们的掉落，直到你拥有价值35铜币的可出售物品（包括你的护甲）|r << Warlock
    +|cRXP_WARN_击杀 |cRXP_ENEMY_杂斑野猪|r，拾取它们的掉落，直到你拥有价值10铜币的可出售物品（包括你的护甲）|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob 杂斑野猪
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁赞|r 对话
    .accept 1485 >>接受任务 邪灵劣魔
    .target 鲁赞
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r 对话
    .turnin 4641 >>交任务 你的位置
    .accept 788 >>接受任务 小试身手
    .target 高内克
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话 << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 对话 << Shaman
    .train 6673 >>学习 |T132333:0|t[战斗怒吼] << Warrior
    .train 8017 >>学习 |T136086:0|t[石化武器] << Shaman
    .target 弗朗恩 << Warrior
    .target 史克里克 << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前去找 |cRXP_FRIENDLY_赫劳格|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money >0.01
step << Warlock
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前去找 |cRXP_FRIENDLY_纳托克|r
    .money <0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r 对话
    .train 348 >>学习 |T135817:0|t[献祭]
    .target 纳托克
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Hunter !Shaman
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_从她那里|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target 多克纳
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target 多克纳
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>在前往火刃集会所的路上，击杀 |cRXP_ENEMY_杂斑野猪|r
    >>|cRXP_WARN_尽量在到达那里之前升到 2 级|r
    .complete 788,1 --Mottled Boar (10)
    .mob 杂斑野猪
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前去火刃集会所
    .isOnQuest 1485
step << Warlock
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>击杀 |cRXP_ENEMY_邪灵劣魔|r. 拾取 |cRXP_LOOT_邪灵劣魔的徽记|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob 邪灵劣魔
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>击杀 |cRXP_ENEMY_杂斑野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob 杂斑野猪
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳祖|r 对话
    .accept 790 >>接受任务 萨科斯
    .target 哈纳祖
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>击杀 |cRXP_ENEMY_萨科斯|r。拾取他的 |cRXP_LOOT_萨科斯的爪子|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob 萨科斯
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳祖|r 对话
    .turnin 790 >>交任务 萨科斯
    .accept 804 >>接受任务 萨科斯
    .target 哈纳祖
step
    #loop
    .goto Durotar,41.30,65.03,0
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    >>击杀 |cRXP_ENEMY_杂斑野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob 杂斑野猪
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+850 >>在返回城镇的路上，刷怪直到获得 850+ /1400 经验值
    .mob 杂斑野猪
step << !Rogue !Mage
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+980 >> Grind to 980+/1400xp on the way back to town
    .mob 杂斑野猪
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_刷怪 |cRXP_ENEMY_杂斑野猪|r，拾取它们的掉落物，直到获得价值 1 银币的可出售物品|r
    .mob 杂斑野猪
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁赞|r 对话
    .turnin 1485 >>交任务 邪灵劣魔
    .accept 1499 >>接受任务 邪灵劣魔
    .target 鲁赞
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖雷萨|r 对话
    .turnin 1499 >>交任务 邪灵劣魔
    .accept 794 >>接受任务 火刃奖章
    .target 祖雷萨
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r 对话
    .turnin 788,2 >>交任务 小试身手 << Shaman
    .turnin 788 >>交任务 小试身手 << !Shaman
    .accept 789 >>接受任务 工蝎的尾巴
    .accept 2383 >>接受任务 简易羊皮纸 << Orc Warrior
    .accept 3065 >>接受任务 普通石板 << Troll Warrior
    .accept 3082 >>接受任务 风蚀石板 << Troll Hunter
    .accept 3083 >>接受任务 密文石板 << Troll Rogue
    .accept 3084 >>接受任务 符文石板 << Troll Shaman
    .accept 3085 >>接受任务 神圣石板 << Troll Priest
    .accept 3086 >>接受任务 雕文石板 << Troll Mage
    .accept 3087 >>接受任务 风蚀羊皮纸 << Orc Hunter
    .accept 3088 >>接受任务 密文羊皮纸 << Orc Rogue
    .accept 3089 >>接受任务 符文羊皮纸 << Orc Shaman
    .accept 3090 >>接受任务 被污染的羊皮纸 << Orc Warlock
    .turnin 804,1 >>交任务 萨科斯 << Shaman
    .turnin 804 >>交任务 萨科斯 << !Shaman
    .target 高内克
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前去找 |cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .turnin 3083 >>交任务 密文石板 << Troll Rogue
    .turnin 3088 >>交任务 密文羊皮纸 << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .target 鲁瓦格
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .turnin 3083 >>交任务 密文石板 << Troll Rogue
    .turnin 3088 >>交任务 密文羊皮纸 << Orc Rogue
    .target 鲁瓦格
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前去找 |cRXP_FRIENDLY_纳托克|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前去找 |cRXP_FRIENDLY_赫劳格|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r 对话
    .turnin 3090 >>交任务 被污染的羊皮纸
    .train 172 >>学习 |T136118:0|t[腐蚀术]
    .target 纳托克
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r 对话
    .accept 4402 >>接受任务 戈加尔的清凉果
    .target 戈加尔
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_从她那里|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 对话
    .turnin 3084 >>交任务 符文石板 << Troll
    .turnin 3089 >>交任务 符文羊皮纸 << Orc
    .target 史克里克
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .turnin 3086 >>交任务 雕文石板 << Troll
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .target 迈安
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r 对话
    .turnin 3082 >>交任务 风蚀石板 << Troll
    .turnin 3087 >>交任务 风蚀羊皮纸 << Orc
    .target 基沙
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .turnin 2383 >>交任务 简易羊皮纸 << Orc
    .turnin 3065 >>交任务 普通石板 << Troll
    .target 弗朗恩
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
    .turnin 3085 >>交任务 神圣石板
    .target 肯杰
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖雷萨|r 对话
    .accept 792 >>接受任务 邪灵劣魔
    .target 祖雷萨
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头塔兹利尔|r 对话
    .accept 5441 >>接受任务 懒惰的苦工
    .target 工头塔兹利尔
step
    #completewith Sting
    >>在仙人掌附近拾取 |cRXP_LOOT_仙人掌果|r
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_对沉睡的|r 懒惰的苦工|cRXP_WARN_ |r使用|cRXP_FRIENDLY_ |T133486:0|t[工头的短棍]|r
    .complete 5441,1 --Peons Awoken (5)
    .target 懒惰的苦工
    .use 16114
step << !Warlock
    #completewith Imps
    >>击杀 |cRXP_ENEMY_工蝎|r. 拾取 |cRXP_LOOT_工蝎的尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob 蝎子
step << !Warlock
    #label Imps
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>击杀 |cRXP_ENEMY_邪灵劣魔|r
    .complete 792,1 --Vile Familiar (12)
    .mob 邪灵劣魔
step
    #label Tails
    #loop
	.goto Durotar,43.26,58.28,0
	.goto Durotar,43.26,58.28,35,0
	.goto Durotar,42.81,58.41,35,0
	.goto Durotar,41.90,58.35,35,0
	.goto Durotar,41.97,59.20,35,0
	.goto Durotar,41.36,60.35,35,0
	.goto Durotar,40.66,61.27,35,0
	.goto Durotar,40.07,61.35,35,0
	.goto Durotar,39.42,61.29,35,0
	.goto Durotar,39.46,62.17,35,0
	.goto Durotar,39.55,63.10,35,0
	.goto Durotar,40.13,64.04,35,0
	.goto Durotar,40.84,64.06,35,0
	.goto Durotar,40.74,65.86,35,0
	.goto Durotar,39.93,66.03,35,0
	.goto Durotar,40.04,66.99,35,0
	.goto Durotar,40.09,67.66,35,0
	.goto Durotar,40.13,68.50,35,0
	.goto Durotar,40.72,68.55,35,0
	.goto Durotar,41.30,67.84,35,0
	.goto Durotar,41.37,66.72,35,0
	.goto Durotar,41.89,66.05,35,0
	.goto Durotar,41.27,65.71,35,0
	.goto Durotar,41.36,64.07,35,0
	.goto Durotar,41.33,63.12,35,0
	.goto Durotar,41.35,61.98,35,0
	.goto Durotar,41.49,61.25,35,0
	.goto Durotar,41.90,60.24,35,0
	.goto Durotar,42.51,59.34,35,0
	.goto Durotar,43.08,59.62,35,0
	.goto Durotar,43.91,59.33,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.85,60.34,35,0
	.goto Durotar,46.46,61.11,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.14,64.08,35,0
	.goto Durotar,47.58,64.04,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,46.90,61.15,35,0
	.goto Durotar,46.98,60.18,35,0
	.goto Durotar,47.07,59.34,35,0
	.goto Durotar,46.47,58.28,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,43.91,59.33,35,0
    >>击杀 |cRXP_ENEMY_工蝎|r. 拾取 |cRXP_LOOT_工蝎的尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob 蝎子
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,45.64,65.70,35,0
	.goto Durotar,47.37,65.67,35,0
	.goto Durotar,46.74,60.66,35,0
	.goto Durotar,47.09,57.90,35,0
	.goto Durotar,43.90,57.79,35,0
	.goto Durotar,42.70,57.25,35,0
	.goto Durotar,41.27,58.95,35,0
	.goto Durotar,40.91,60.41,35,0
	.goto Durotar,38.83,61.84,35,0
	.goto Durotar,44.98,69.13,35,0
    >>|cRXP_WARN_对沉睡的|r 懒惰的苦工|cRXP_WARN_ |r使用|cRXP_FRIENDLY_ |T133486:0|t[工头的短棍]|r
    .complete 5441,1 --Peons Awoken (5)
    .target 懒惰的苦工
    .use 16114
step
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
	.goto Durotar,41.30,65.03,35,0
    .xp 4 >>刷怪升级到 4 级
    .mob 杂斑野猪
    .mob 蝎子
    .mob 邪灵劣魔
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r 对话
    .turnin 4402 >>交任务 戈加尔的清凉果
    .target 戈加尔
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_从她那里|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r 对话
    .turnin 789 >>交任务 工蝎的尾巴
    .target 高内克
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 和 |cRXP_FRIENDLY_坎纳甘·地鸣|r 对话
    .train 8042 >>学习 |T136026:0|t[大地震击]
    .target 史克里克
    .goto Durotar,42.39,69.00
    .accept 1516 >>接受任务 大地的召唤
    .target 坎纳甘·地鸣
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 迈安
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
    .train 1243 >>学习 |T135987:0|t[真言术：韧]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.011
    .target 肯杰
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.01
    .target 肯杰
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖雷萨|r 对话
    .turnin 792 >>交任务 邪灵劣魔
    .accept 794 >>接受任务 火刃奖章
    .target 祖雷萨
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r 对话
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 基沙
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 弗朗恩
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 弗朗恩
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .train 100 >>学习 |T132337:0|t[冲锋]
    .target 弗朗恩
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头塔兹利尔|r 对话
    .turnin 5441 >>交任务 懒惰的苦工
    .accept 6394 >>接受任务 塔兹利尔的镐
    .target 工头塔兹利尔
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >>刷怪达到1720+/2100经验
    .mob 杂斑野猪
    .mob 蝎子
    .mob 邪灵劣魔
    .isOnQuest 4402
step
    #loop
	.goto Durotar,44.67,64.92,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>在仙人掌附近拾取 |cRXP_LOOT_仙人掌果|r
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >>刷怪达到1720+/2100经验
    .mob 邪灵劣魔
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >>刷怪升至等级5
    .mob 邪灵劣魔
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>前去找 |cRXP_LOOT_塔兹利尔的镐|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>击杀 |cRXP_ENEMY_地狱捕猎者|r. 拾取 |cRXP_LOOT_地狱捕猎者的蹄子|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob 魔犬
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>在墙边拾取 |cRXP_LOOT_萨兹利尔的镐|r
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>击杀 |cRXP_ENEMY_亚罗格·刺影|r。拾取他的 |cRXP_LOOT_火刃奖章|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob 亚罗格·刺影
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>击杀 |cRXP_ENEMY_地狱捕猎者|r. 拾取 |cRXP_LOOT_地狱捕猎者的蹄子|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob 魔犬
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1680 >>刷怪达到1680+/2800经验 << !Shaman
    .xp 5+690 >>刷怪达到 690+/2800 经验 << Shaman
    .isQuestTurnedIn 4402
step << !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >>刷怪达到1300+/2800经验
    .isOnQuest 4402
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1120 >> Grind to 1120+/2800xp
    .isQuestTurnedIn 4402
step
    #xprate >1.49
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >>刷怪达到1300+/2800经验 << !Shaman
    .xp 5+310 >>刷怪达到310+/2800经验 << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>炉石返回试炼谷
step << !Orc !Troll
    #softcore
    #completewith BurningBladeTurnin
    .deathskip >>在洞穴入口处死亡，然后在 |cRXP_FRIENDLY_灵魂医者|r 复活，或者沿试炼谷跑回去
step << !Orc !Troll
    #hardcore
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>返回试炼谷
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头塔兹利尔|r 对话
    .turnin 6394 >>交任务 塔兹利尔的镐
    .target 工头塔兹利尔
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r 对话
    .turnin 4402 >>交任务 戈加尔的清凉果
    .target 戈加尔
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖雷萨|r 对话
    .turnin 794 >>交任务 火刃奖章
    .accept 805 >>接受任务 去森金村报到
    .target 祖雷萨
step << !Shaman
    .xp 6 >>刷怪升级到6级
    #loop
    .goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
	.accept 5649 >>接受任务 部族的传统
	.train 591 >>影袭 |T135924:0|t[惩击]
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .target 肯杰
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .train 143 >>学习 |T135812:0|t[火球术]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 迈安
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 和 |cRXP_FRIENDLY_坎纳甘·地鸣|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务 大地的召唤
    .accept 1517 >>接受任务 大地的召唤
    .goto Durotar,42.40,69.17
    .target 史克里克
    .target 坎纳甘·地鸣
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎纳甘·地鸣|r 对话
    .turnin 1516 >>交任务 大地的召唤
    .accept 1517 >>接受任务 大地的召唤
    .target 坎纳甘·地鸣
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 基沙
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 基沙
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 弗朗恩
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 弗朗恩
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前去找 |cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .train 1757 >>背刺 |T136189:0|t[影袭]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .target 鲁瓦格
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .train 1757 >>背刺 |T136189:0|t[影袭]
    .target 鲁瓦格
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r and |cRXP_FRIENDLY_Hraug|r
    .money <0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r 对话
    .train 695 >>学习 |T136197:0|t[暗影箭]
    .target 纳托克
    .money <0.01
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[魔典:血契]|cRXP_BUY_从他那里|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money <0.01
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>前往 |cRXP_PICK_萨满祭坛|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_使用|r |T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地之魂|r 对话
    .turnin 1517 >>交任务 大地的召唤
    .accept 1518 >>接受任务 大地的召唤
    .target 大地之魂
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎纳甘·地鸣|r 对话
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务 大地的召唤
    .target 坎纳甘·地鸣
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 对话
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头塔兹利尔|r 对话
    .turnin 6394 >>交任务 塔兹利尔的镐
    .target 工头塔兹利尔
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>离开试炼谷
    .isOnQuest 805
step << !Shaman !Hunter !Warlock
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌克尔|r 对话
    .accept 2161 >>接受任务 苦工的重担
    .target 乌克尔
step << !Shaman !Hunter !Warlock
    #completewith next
    .subzone 367 >>前往森金村
step << !Shaman !Hunter !Warlock
    .goto Durotar,55.94,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加德林大师|r 对话
    .turnin 805 >>交任务 去森金村报到
    .accept 823 >>接受任务 向奥戈尼尔报告
    .target 加德林大师
step << Rogue/Warrior
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>进入大帐篷
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r |cRXP_BUY_对话并|r|cRXP_BUY_从她那里购买一把|r |T132414:0|t[增重飞斧]
    .collect 29007,1,791,1 --Weighted Throwing Axe (200)
    .target 克瓦埃
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (20)
    .collect 159,20,791,1
    .target 克瓦埃
    .money <0.010
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (10)
    .collect 159,10,791,1
    .target 克瓦埃
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,791,1 --Collect Stiletto (1)
    .target 特莱耶克
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,791,1 --Collect Large Axe (1)
    .target 特莱耶克
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,791,1 --Collect Tomahawk (1)
    .target 特莱耶克
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安苏瓦|r 对话
    .train 143 >>学习 |T135812:0|t[火球术]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 安苏瓦
step << !Shaman !Hunter !Warlock
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>前往剃刀岭
step << !Shaman !Hunter !Warlock
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 托尔卡|r、|cRXP_FRIENDLY_奥戈尼尔|r 和 |cRXP_FRIENDLY_加索克|r 对话
    .turnin 823 >>交任务 向奥戈尼尔报告
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .accept 784 >>接受任务 背信弃义的人类
    .target 加索克
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter !Warlock
    #xprate >1.49 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_奥戈尼尔·魂痕|r 对话
    .turnin 823 >>交任务 向奥戈尼尔报告
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>朝着塔楼方向前进
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上走，前往弗尔
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .accept 791 >>接受任务 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target 克鲁恩
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r 对话
    >>从|cRXP_BUY_|r沃克|cRXP_BUY_购买1把|r |T134708:0|t[矿工锄]|cRXP_FRIENDLY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << !Shaman !Hunter !Warlock
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    --.home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>交任务 苦工的重担
    .target 旅店老板格罗斯克
    --.bindlocation 362
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .turnin 5649 >>交任务 部族的传统
    .accept 5648 >>接受任务 灵魂之衣
    .train 2052 >>学习 |T135929:0|t[次级治疗术 等级 2 ]
    .target 泰金
step << Priest
    .goto Durotar,53.10,46.46
    >>对 |cRXP_FRIENDLY_科雅|r 施放 |T135929:0|t[次级治疗术] 和 |T135987:0|t[真言术：韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target 步兵科雅
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .turnin 5648 >>交任务 灵魂之衣
    .trainer >>训练你的职业技能
    .target 泰金
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step << Warrior/Rogue/Paladin
    #xprate <1.5 << !Warrior
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]|cRXP_WARN_，并开采你发现的任何|r 铜矿脉|cRXP_LOOT_以获取|r |T135232:0|t|cRXP_WARN_[劣质的石头]|r。用它们制作|cRXP_WARN_ |T135248:0|t[磨刀石]|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>前往提拉加德堡
    .isOnQuest 784
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_如果|r |cRXP_ENEMY_科提斯中士|r |cRXP_WARN_在场，小心，他是 9 级稀有怪。如果你有的话，可能需要使用|r |T134829:0|t[小型治疗药水]|cRXP_WARN_|r
    .unitscan 科提斯中士
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>前往堡垒的二楼
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith AgedEnvelope
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |cRXP_LOOT_帆布脚料|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --Kul Tiras Marine (8)
    .mob 库尔提拉斯水兵
    .complete 791,1 --Canvas Scraps (8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label Benedict
    .goto Durotar,59.75,58.27
    >>击杀 |cRXP_ENEMY_本尼迪克上尉|r。拾取他的 |cRXP_LOOT_钥匙|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob 本尼迪克上尉
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
    .mob 库尔提拉斯水兵
    .mob 库尔提拉斯水手
    .itemcount 4870,<8 --Canvas Scraps (<8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #softcore
    #completewith next
    .goto Durotar,57.90,57.57
    .deathskip >> Die at the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃刀岭
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r 对话
    >>|cRXP_WARN_你可以在外面或在碉堡顶部与他对话|r
    .turnin 784 >>交任务 背信弃义的人类
    .turnin 830 >>交任务 将军的命令
    .target 加索克
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>朝着塔楼方向前进
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上走，前往弗尔
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .turnin 791 >>交任务 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target 克鲁恩
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r 对话
    >>从|cRXP_BUY_|r沃克|cRXP_BUY_购买1把|r |T134708:0|t[矿工锄]|cRXP_FRIENDLY_|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target 尤加尔
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target 尤加尔
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target 尤加尔
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue/Warrior
    #xprate <1.5
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step << !Shaman !Hunter !Warlock
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r 对话
    >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_BUY_向|r |cRXP_BUY_他|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label WindsinDes
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .accept 834 >>接受任务 沙漠之风
    .target 雷兹拉克
    .maxlevel 7
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 834 >>交任务 沙漠之风
    .target 雷兹拉克
    .isQuestComplete 834
step << !Shaman !Hunter !Warlock
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    .home >>将炉石设置在布瑞尔
    .target 旅店老板瑞尼
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆二楼的 |cRXP_FRIENDLY_格雷彻|r 对话
    .accept 375 >>Accept in The Chill of Death
    .target 格莉丝·戴玛
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .accept 367 >>接受任务 新的瘟疫
    .target 药剂师乔汉
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    #optional
    #completewith next
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Warrior
    #loop
    .goto Tirisfal Glades,42.16,46.76,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>击杀 |cRXP_ENEMY_黑暗猎犬|r。拾取|cRXP_LOOT_鲜血|r
    .complete 367,1 --Darkhound Blood (5)
    .mob 衰老的黑暗犬
    .mob Cursed Darkhound`
    .isOnQuest 367
step << Warrior
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >8,1
    .isOnQuest 375
step << Warrior
    #optional
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Skip this step if you were unlucky with drops so far|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp <8,1
    .isOnQuest 375
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+3260 >>Grind to 3260/4500 xp
step << Warrior
    #xprate >1.49
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+2640>>Grind to 2640/4500 xp
step << Warrior
    #softcore
    #completewith FillerTurnins
    .deathskip >>Die and respawn and the |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior
    #hardcore
    #completewith FillerTurnins
    .subzone 159 >>前往布瑞尔
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .turnin 367 >>交任务 新的瘟疫
    .target 药剂师乔汉
    .isQuestComplete 367
step << Warrior
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿比盖恩|r 对话
    >>|cRXP_BUY_从她那里购买1个|r |T132891:0|t[粗线] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Warrior
    #label FillerTurnins
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆二楼的 |cRXP_FRIENDLY_格雷彻|r 对话
    .turnin 375 >>交任务 死亡之寒
    .target 格莉丝·戴玛
    .isQuestComplete 375
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 284 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.11,26.81,20,0
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,67.74,37.96,20 >>Take the elevator down into the Undercity
step << skip -- Warlock
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺曼|r 对话
    .home >>将你的炉石设置到幽暗城
    .target Innkeeper Norman
    .bindlocation 1497
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,66.11,26.81,20 >>Take the elevator back up
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>从这里上楼梯
step << !Shaman !Hunter !Warlock
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
step << !Shaman !Hunter !Warlock
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>离开 银月城
step << !Shaman !Hunter !Warlock
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .fp Silvermoon >>获取银月城的飞行路径
    .target 葛拉米
    .isQuestAvailable 8463
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠杰拉|r 对话
    .accept 8475 >>接受任务 死亡之痕
    .target 游侠杰拉
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,46.68,49.10,40 >>前往鹰翼广场，永歌森林
    .isQuestAvailable 8463

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 6-10 杜隆塔尔
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Orc Hunter/Orc Shaman/Troll Hunter/Troll Shaman/Orc Warlock
#next 10-13 杜隆塔尔 << Shaman
#next 10-12 永歌森林 << !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌克尔|r 对话
    .accept 2161 >>接受任务 苦工的重担
    .target 乌克尔
step
    #completewith SenjinPickups
    .subzone 367 >>前往森金村
step
    #xprate <1.5
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_He patrols a little|r
    .accept 786 >>接受任务 科卡尔半人马的进攻
    .target 拉尔·猎齿
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔林|r, |cRXP_FRIENDLY_沃纳尔|r 和 |cRXP_FRIENDLY_加德林|r 对话
    .accept 817 >>接受任务 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
    .accept 818 >>接受任务 沃纳尔大师
    .goto Durotar,55.94,74.40
    .target 沃纳尔大师
    .turnin 805 >>交任务 去森金村报到
    .accept 808 >>接受任务 明希纳的徽记
    .accept 826 >>接受任务 扎拉赞恩
    .accept 823 >>接受任务 向奥戈尼尔报告
    .goto Durotar,55.94,74.72
    .target 加德林大师
step
    #xprate <1.5
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>进入大帐篷
step << Rogue
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r |cRXP_BUY_对话并|r|cRXP_BUY_从她那里购买一把|r |T132414:0|t[增重飞斧]
    .collect 29007,1,786,1 --Weighted Throwing Axe (200)
    .target 克瓦埃
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target 克瓦埃
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target 克瓦埃
    .money <0.0050
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target 特莱耶克
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target 特莱耶克
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target 特莱耶克
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target 特莱耶克
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135499:0|t[角木弯弓] 的钱(2 银 83 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135499:0|t[角木弯弓]
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target 特莱耶克
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安苏瓦|r 对话
    .train 143 >>学习 |T135812:0|t[火球术]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 安苏瓦
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    >>|cRXP_WARN_You do not have to finish this step here|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >>到达海滩尽头
    .isOnQuest 818
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>进入科卡尔营地
    .isOnQuest 786
step
    #xprate <1.5
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_如果|r |cRXP_ENEMY_科卡尼斯|r |cRXP_WARN_在场要小心，他是 9 级稀有怪。必要时如果你有的话，可能需要使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_|r
    .unitscan 科卡尼斯
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>将帐篷内地上的 |cRXP_PICK_攻击计划|r 焚毁
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>烧毁地上的 |cRXP_PICK_攻击计划|r
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>烧毁地上的 |cRXP_PICK_攻击计划|r
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #xprate <1.5
    #softcore
    #completewith TurninKolkar
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>在篝火处死亡，然后在 |cRXP_FRIENDLY_灵魂医者|r 复活
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>离开科卡尔营地
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target 特莱耶克
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target 特莱耶克
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target 特莱耶克
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target 特莱耶克
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135499:0|t[角木弯弓] 的钱(2 银 83 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 特莱耶克
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135499:0|t[角木弯弓]
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target 特莱耶克
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃纳尔|r 对话
    .turnin 818 >>交任务 沃纳尔大师
    .target 沃纳尔大师
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海赞|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r
    .vendor >>把垃圾物品卖给商人
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target 海赞
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target 克瓦埃
    .money <0.010
step << skip --Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_克瓦埃|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target 克瓦埃
    .money <0.0050
step
    #xprate <1.5
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔|r 对话。他会稍微巡逻
    .turnin 786 >>交任务 科卡尔半人马的进攻
    .target 拉尔·猎齿
step
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>前往剃刀岭
step
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_厨师托尔卡|r 对话
    .turnin 823 >>交任务 向奥戈尼尔报告
    .accept 806 >>接受任务 黑暗风暴
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .accept 784 >>接受任务 背信弃义的人类
    .accept 837 >>接受任务 野猪人的进犯
    .target 加索克
    .goto Durotar,51.95,43.50
    .accept 815 >>接受任务 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.09,42.49
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_厨师托尔卡|r 对话
    .turnin 823 >>交任务 向奥戈尼尔报告
    --.accept 806 >>Accept Dark Storms
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .accept 784 >>接受任务 背信弃义的人类
    .accept 837 >>接受任务 野猪人的进犯
    .target 加索克
    .goto Durotar,51.95,43.50
    .accept 815 >>接受任务 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>朝着塔楼方向前进
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
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .accept 791 >>接受任务 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target 克鲁恩
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r 对话
    >>从|cRXP_BUY_|r沃克|cRXP_BUY_购买1把|r |T134708:0|t[矿工锄]|cRXP_FRIENDLY_|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target 尤加尔
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target 尤加尔
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target 尤加尔
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target 尤加尔
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳特|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135499:0|t[角木弯弓] 的钱(2 银 83 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 格劳特
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_格劳特|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135499:0|t[角木弯弓]
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target 格劳特
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|cRXP_FRIENDLY_ 格劳特|r对话并|r|cRXP_BUY_从他那里购买|r |T132382:0|t[劣质箭]
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target 格劳特
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r << Rogue/Warrior
    >>|cRXP_WARN_为你的职业法术预留 4 银币！|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_为你的职业法术预留 2 银币！|r << Priest
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石绑定到剃刀岭
    .turnin 2161 >>交任务 苦工的重担
    .target 旅店老板格罗斯克
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
    .xp <8,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石绑定到剃刀岭
    .turnin 2161 >>交任务 苦工的重担
    .target 旅店老板格罗斯克
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石绑定到剃刀岭
    .turnin 2161 >>交任务 苦工的重担
    .target 旅店老板格罗斯克
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 284 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 8044 >>训练你的职业技能
    .target 斯瓦特
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <8,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基萨|r 对话并购买 |T133738:0|t[火焰箭（等级 2）]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
    .xp <8,1
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .train 5116 >>训练你的职业技能
    .target 索塔尔
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 6760 >>训练你的职业技能
    .target 卡普拉克
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .turnin 5649 >>交任务 部族的传统
    .accept 5648 >>接受任务 灵魂之衣
    .train 2052 >>学习 |T135929:0|t[次级治疗术 等级 2 ]
    .target 泰金
step << Priest
    .goto Durotar,53.10,46.46
    >>对 |cRXP_FRIENDLY_科雅|r 施放 |T135929:0|t[次级治疗术] 和 |T135987:0|t[真言术：韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target 步兵科雅
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .turnin 5648 >>交任务 灵魂之衣
    .trainer >>训练你的职业技能
    .target 泰金
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r 对话
    >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_BUY_向|r |cRXP_BUY_他|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]|cRXP_WARN_，并开采你发现的任何|r 铜矿脉|cRXP_LOOT_以获取|r |T135232:0|t|cRXP_WARN_[劣质的石头]|r。用它们制作|cRXP_WARN_ |T135248:0|t[磨刀石]|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>前往提拉加德堡
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_如果|r |cRXP_ENEMY_科提斯中士|r |cRXP_WARN_在场，小心，他是 9 级稀有怪。如果你有的话，可能需要使用|r |T134829:0|t[小型治疗药水]|cRXP_WARN_|r
    .unitscan 科提斯中士
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>前往堡垒的二楼
step
    #completewith AgedEnvelope
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |cRXP_LOOT_帆布脚料|r
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
    .collect 4882,1,830 --Collect Benedict's Key (1)
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
    .mob 库尔提拉斯水兵
    .mob 库尔提拉斯水手
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
    #optional
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
step << !Mage
    #xprate <1.5
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >>刷怪达到 2610+/4500 经验
step << !Mage
    #xprate >1.49
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1665 >> Grind to 1665+/4500xp
step
    #softcore
    #completewith next
    .goto Durotar,57.93,57.67
    .deathskip >> Die at the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃刀岭
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r 对话
    >>|cRXP_WARN_你可以在外面或在碉堡顶部与他对话|r
    .turnin 784 >>交任务 背信弃义的人类
    .turnin 830 >>交任务 将军的命令
    .accept 825 >>接受任务 海底沉船
    .accept 831 >>接受任务 将军的命令
    .accept 837 >>接受任务 野猪人的进犯
    .target 加索克
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>朝着塔楼方向前进
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
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗恩·凝眉|r 对话
    .turnin 791 >>交任务 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target 克鲁恩
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r 对话
    >>从|cRXP_BUY_|r沃克|cRXP_BUY_购买1把|r |T134708:0|t[矿工锄]|cRXP_FRIENDLY_|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135145:0|t[学徒短杖](5银04铜)，就一并出售并购买。若钱还不够，稍后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一根|r |T135145:0|t[学徒短杖]
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target 尤加尔
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (4银01铜). 如果钱还不够，稍后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target 尤加尔
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果你的武器卖掉后能凑够购买 |T132401:0|t[双刃战斧] 的钱(4银84铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T132401:0|t[双刃战斧]
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target 尤加尔
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135421:0|t[小手斧（Hatchet）] 的钱(5 银 40 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target 尤加尔
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T132414:0|t[增重飞斧]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳特|r 对话
    .vendor >>清理垃圾物品出售。如果卖掉你的武器能凑够购买 |T135499:0|t[角木弯弓] 的钱(2 银 83 铜)，就卖掉；如果暂时不够，以后再回来购买
    .target 格劳特
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_格劳特|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135499:0|t[角木弯弓]
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target 格劳特
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|cRXP_FRIENDLY_ 格劳特|r对话并|r|cRXP_BUY_从他那里购买|r |T132382:0|t[劣质箭]
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target 格劳特
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 284 >>训练你的职业技能
    .target 塔绍尔·锯痕
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 8044 >>训练你的职业技能
    .target 斯瓦特
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基萨|r 对话并购买 |T133738:0|t[火焰箭（等级 2）]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .train 5116 >>训练你的职业技能
    .target 索塔尔
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 6760 >>训练你的职业技能
    .target 卡普拉克
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .train 139 >>训练你的职业技能
    .target 泰金
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r 对话
    >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_BUY_向|r |cRXP_BUY_他|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_从他那里购买|r |T133974:0|t[肉排]|cRXP_BUY_|r << Rogue/Warrior
    .target 旅店老板格罗斯克
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]|cRXP_WARN_，并开采你发现的任何|r 铜矿脉|cRXP_LOOT_以获取|r |T135232:0|t|cRXP_WARN_[劣质的石头]|r。用它们制作|cRXP_WARN_ |T135248:0|t[磨刀石]|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #label Tools
    #loop
    .goto Durotar,62.25,56.34,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    >>拾取船只内外的 |cRXP_PICK_侏儒工具箱|r
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >>游到岛上
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #completewith next
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_粘液|r
    >>击杀 |cRXP_ENEMY_厚壳龙虾人|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取它们的 |cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    .goto Durotar,67.74,69.86,40,0
    >>拾取地上的 |cRXP_PICK_T鞭尾龙的蛋|r
    >>|cRXP_WARN_它们通常由一只|r 血爪鞭尾龙|cRXP_ENEMY_ 守护|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step
    #completewith next
    >>击杀 |cRXP_ENEMY_海蟹|r 和 |cRXP_ENEMY_龙虾人|r。拾取他们的 |cRXP_LOOT_粘液|r 和 |cRXP_LOOT_眼睛|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    .goto Durotar,66.94,84.41,150 >>游到主岛上
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step
    #completewith next
    >>击杀 |cRXP_ENEMY_扎拉赞恩|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_保留你的|r |T136026:0|t[大地震击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Shaman
    >>|cRXP_WARN_保留你的|r |T132155:0|t[凿击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的一个 |cRXP_LOOT_头骨|r
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>击杀 |cRXP_ENEMY_扎拉赞恩|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_保留你的|r |T136026:0|t[大地震击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Shaman
    >>|cRXP_WARN_保留你的|r |T132155:0|t[凿击]|cRXP_WARN_，在他施放 |T136052:0|t[治疗波] 时使用|r << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #completewith next
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #label Fur
    #loop
	.goto Durotar,67.23,88.00,0
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
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #loop
    .goto Durotar,65.27,87.86,0
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
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_毛皮|r
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
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #softcore
    #completewith Zalazaneturnin
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生，或者跑回来
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森金村
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r 对话
    >>|cRXP_WARN_跳进小屋里|r
    .vendor >>出售垃圾物品并修理装备
    .target 特莱耶克
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安苏瓦|r 对话
    .train 118 >>训练你的职业技能
    .target 安苏瓦
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加德林|r, |cRXP_FRIENDLY_沃纳尔|r 和 |cRXP_FRIENDLY_维尔林|r 对话
    .turnin 808 >>交任务 明希纳的徽记
    .turnin 826 >>交任务 扎拉赞恩
    .goto Durotar,55.95,74.73
    .target 加德林大师
    .turnin 818 >>交任务 沃纳尔大师
    .goto Durotar,55.95,74.39
    .target 沃纳尔大师
    .turnin 817 >>交任务 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
step
    #xprate >1.49
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+4400 >>刷怪达到4400+/6500经验
step
    #hardcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>前往剃刀岭
step
    #softcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_厨师托尔卡|r 对话
    .turnin 825 >>交任务 海底沉船
    .target 加索克
    .goto Durotar,51.95,43.50
    .turnin 815 >>交任务 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.12,42.46
step
    #xprate <1.5
    #loop
    .goto Durotar,50.21,50.78,0
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
    #xprate <1.5
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>击杀 |cRXP_ENEMY_钢鬃传令兵|r 和 |cRXP_ENEMY_钢鬃卫兵|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob 钢鬃传令兵
    .complete 837,4 --Razormane Battleguard (4)
    .mob 钢鬃卫兵
step
    #xprate <1.5
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>刷怪达到5870+/6500经验
step
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 362 >>前往剃刀岭
step
    #xprate <1.5
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_加索克|r 对话
    .turnin 837 >>交任务 野猪人的进犯
    .target 加索克
step
    #xprate <1.5
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>刷怪到10级
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 8050 >>训练你的职业技能
    .accept 2983 >>接受任务 火焰的召唤
    .target 斯瓦特
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .trainer >>训练你的职业技能
    .target 塔绍尔·锯痕
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .accept 1506 >>接受任务 甘鲁尔的召唤
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基萨|r 对话并购买 |T133738:0|t[火焰箭（等级 2）]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
    .train 7799,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
    .train 8092 >>训练你的职业技能
    .target 泰金
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 674 >>训练你的职业技能
    .target 卡普拉克
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .accept 6062 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
    .target 索塔尔
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 |cRXP_FRIENDLY_格劳特|r 对话并从他那里|r|cRXP_BUY_购买|r |T132382:0|t[锋利的箭] |cRXP_BUY_和一个|r |T134410:0|t[中型箭袋]
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target 格劳特
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|cRXP_FRIENDLY_ 格劳特|r对话并|r|cRXP_BUY_从他那里购买|r |T132382:0|t[锋利的箭]
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target 格劳特
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51,40,0
    .use 15917 >>|cRXP_WARN_在最大射程下，对一只|r |cRXP_WARN_可怕的杂斑野猪|r |cRXP_ENEMY_使用你的|r |T132164:0|t[驯服棒]|cRXP_WARN_|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob 可怕的杂斑野猪
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6062 >>交任务 驯服野兽
    .accept 6083 >>接受任务 驯服野兽
    .target 索塔尔
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .accept 6083 >>接受任务 驯服野兽
    .target 索塔尔
step << Hunter
    #completewith next
    +|cRXP_WARN_右键点击你的|cRXP_ENEMY_可怕的杂斑野猪|r 的单位框架并选择解散，否则你将无法驯服|r|cRXP_ENEMY_海浪蟹|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>|cRXP_WARN_不要杀掉你看到的|r |cRXP_ENEMY_硬甲蝎|r |cRXP_WARN_，你之后还会用到它们|r
    .use 15919 >>|cRXP_WARN_在最大射程下，对一只|r |cRXP_WARN_成熟海浪蟹|r |cRXP_ENEMY_使用你的|r |T132164:0|t[驯服棒]|cRXP_WARN_|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob 成熟海浪蟹
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6083 >>交任务 驯服野兽
    .accept 6082 >>接受任务 驯服野兽
    .target 索塔尔
step << Hunter
    #completewith next
    +|cRXP_WARN_右键点击你的 |cRXP_ENEMY_海浪蟹|r 的单位框架并选择解散，否则你将无法驯服 |r|cRXP_ENEMY_硬甲蝎|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >>|cRXP_WARN_在最大射程下，对一只|r |cRXP_WARN_硬甲蝎|r |cRXP_ENEMY_使用你的|r |T132164:0|t[驯服棒]|cRXP_WARN_|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob 硬甲蝎
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入碉堡内部
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6082 >>交任务 驯服野兽
    .accept 6081 >>接受任务 训练野兽
    .target 索塔尔
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_将|r |T132164:0|t[驯服野兽]|cRXP_WARN_、|r |T136095:0|t[解散宠物]|cRXP_WARN_ 和 |r|T132161:0|t[召唤宠物]|cRXP_WARN_ 放到你的动作条上|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞姆塔克|r 对话
    >>|cRXP_BUY_购买|r |T133972:0|t[硬肉干]|cRXP_BUY_从他那里|r。|cRXP_BUY_你之后会用它来喂你的宠物|r
    .vendor >>把垃圾物品卖给商人
    .collect 117,5,828,1 --Tough Jerky (5)
    .target 格瑞姆塔克
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞姆塔克|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 格瑞姆塔克
step << Hunter
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .accept 834 >>接受任务 沙漠之风
    .target 雷兹拉克
step << Warlock/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
    .isOnQuest 6081 << Hunter
    .isOnQuest 1506 << Warlock
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣耀谷
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .turnin 6081 >>交任务 训练野兽
    .target 奥玛克
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24547 >>训练你的宠物技能
    .target 肖祖
step << Hunter
    #completewith next
    +|cRXP_WARN_将|r |T132162:0|t[野兽训练]|cRXP_WARN_(在通用标签下)、|r |T132163:0|t[复活宠物]|cRXP_WARN_ 和 |r|T132165:0|t[喂养宠物]|cRXP_WARN_ 放到你的动作条上|r
    >>记得每当你的宠物获得训练点时，为其进行|cRXP_WARN_ |T132162:0|t[野兽训练]|r
step << Warlock/Hunter
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金|r 对话
    .turnin 831 >>交任务 将军的命令
    .target 沃金
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_甘鲁尔·血眼|r 对话
    .turnin 1506 >>交任务 甘鲁尔的召唤
    .accept 1501 >>接受任务 虚空中的生物
    .target 甘鲁尔·血眼
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
step << Warlock
    #softcore
    #completewith SkullRockWarlock
    .goto Durotar,47.05,17.58
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>前往骷髅石
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>如果 |cRXP_ENEMY_加兹乌兹|r 出现，击杀他并拾取 |T134085:0|t[|cRXP_LOOT_燃影之眼|r]。使用它来接取任务
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务 燃影之眼
    .unitscan 加祖兹
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_火刃兽人|r，拾取他们掉落的 |cRXP_LOOT_军官的徽章|r
    >>|cRXP_WARN_如果掉落运气不好，可以跳过这一步|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>在洞穴深处拾取 |cRXP_PICK_火刃营地|r，获取 |cRXP_LOOT_维尔加石板|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_甘鲁尔·血眼|r 对话
    .turnin 1501 >>交任务 虚空中的生物
    .accept 1504 >>接受任务 誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 832 >>接受任务 燃影之眼
    .turnin 832 >>交任务 燃影之眼
    .target 尼尔鲁·火刃
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_在召唤法阵处使用|r |T134416:0|t[召唤符文] |cRXP_WARN_|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob 虚空行者
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_甘鲁尔·血眼|r 对话
    .turnin 1504 >>交任务 誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5726
step << Warlock
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,36.0,37.7
    .deathskip >>|cRXP_WARN_移除你的|r |T136185:0|t[恶魔皮肤] |cRXP_WARN_增益效果。跑到火盆上方，并使用|r |T136126:0|t[生命分流] |cRXP_WARN_通过死亡跳出奥格瑞玛|r
step << Warlock
    #hardcore
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step << Hunter
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step << Hunter
    #completewith ZeptoUC1
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>驯服一只|cRXP_ENEMY_毒尾蝎|r
    >>|cRXP_WARN_这将使你能够学习|r |T132140:0|t[爪击（等级 2）]
    .mob 毒尾蝎
    .train 16828,1 --Claw rank 2
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .accept 834 >>接受任务 沙漠之风
    .target 雷兹拉克
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #label SupplySacks
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
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 834 >>交任务 沙漠之风
    .accept 835 >>接受任务 保卫商路
    .target 雷兹拉克
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #completewith next
    .goto Durotar,51.9,27.4,20 >>穿过洞穴
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>击杀 |cRXP_ENEMY_尘风暴徒|r 和 |cRXP_ENEMY_尘风雷巫|r
    .complete 835,1 --Dustwind Savage (12)
    .mob 尘风暴徒
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob 尘风雷巫
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生，或者跑回来
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>穿过洞穴前往 |cRXP_FRIENDLY_雷兹拉克|r
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 835 >>交任务 保卫商路
    .target 雷兹拉克
step << !Shaman !Warrior
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>从这里上楼梯
step << !Shaman !Warrior
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
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 10-13 杜隆塔尔
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Shaman !Tauren
#next 13-18 贫瘠之地


step << Warrior/Shaman
    #optional
    .xp 10 >>刷怪练级到 10 级
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .accept 1505 >>接受任务 老兵犹塞克
    .trainer >>训练你的职业技能
    .target 塔绍尔·锯痕
    .train 355,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step
    #xprate >1.49
    #loop
    .goto Durotar,50.21,50.78,0
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
    .isOnQuest 837
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>击杀 |cRXP_ENEMY_钢鬃传令兵|r 和 |cRXP_ENEMY_钢鬃卫兵|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob 钢鬃传令兵
    .complete 837,4 --Razormane Battleguard (4)
    .mob 钢鬃卫兵
    .isOnQuest 837
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往远望哨
    .zoneskip The Barrens
step
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
    .train 355,1
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 2983 >>交任务 火焰的召唤
    .accept 1524 >>接受任务 火焰的召唤
    .target 卡纳尔·菲斯
step << !Tauren
    #softcore
    #completewith Xroads1
    .goto The Barrens,50.72,32.61
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .subzoneskip 380
step << !Tauren
    #hardcore
    #completewith Xroads1
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step << !Tauren
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 842 >>交任务 十字路口征兵
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
    .target 扎尔夫
step << !Tauren
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    >>|cRXP_WARN_不要飞往奥格瑞玛！|r
    .fp The Crossroads >>获得十字路口的飞行点
    .target 迪弗拉克
    .subzoneskip 380,1
step << Orc/Troll
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    >>|cRXP_WARN_不要飞往奥格瑞玛！|r
    .turnin 6365 >>交任务 送往奥格瑞玛的肉
    .accept 6384 >>接受任务 飞往奥格瑞玛
    .target 迪弗拉克
step << !Tauren
    #label Xroads1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务 菌类孢子
    .accept 1492 >>接受任务 码头主管迪兹维格
    .target 药剂师赫布瑞姆
step << !Tauren
    #xprate <1.5
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_在采集蘑菇时尽量与|cRXP_ENEMY_ 科卡尔|r |cRXP_WARN_保持最大距离。他们的等级为 12-14 级|r
    >>|cRXP_WARN_此任务的后续奖励是强力的 |cRXP_FRIENDLY_锅炉搅拌器|r|cRXP_WARN_。如果你暂时不打算使用它，可以先跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #hardcore
    #completewith PoolsTurnin
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>前往十字路口
step << !Tauren
    #xprate <1.5
    #softcore
    #completewith PoolsTurnin
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step << !Tauren
    #xprate <1.5
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    >>|cRXP_WARN_这将开启一个 45 分钟的限时任务|r
    .turnin 848 >>交任务 菌类孢子
    .timer 7,菌类孢子 剧情
    .accept 853 >>接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
step
    #xprate <1.5
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_这是一个限时任务，请不要离开键盘。接取后 20–30 分钟就会失效|r
    .isOnQuest 853
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔格|r 对话
    >>|cRXP_BUY_购买一个或多个|r |T133634:0|t[棕色小包] |cRXP_BUY_向|r |cRXP_BUY_他|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << !Tauren
    #xprate <1.5
    #label PoolsTurnin
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务 遗忘之池
    .accept 877 >>接受任务 死水绿洲
    .target 图加·符文图腾
step << Warrior/Shaman
    #xprate <1.5
    #softcore
    #completewith next
    .goto The Barrens,49.75,49.54
    .subzone 378 >>沿着道路向南前往陶拉霍营地
    >>|cRXP_WARN_Once you are at the waypoint arrow (or further north of it), die and respawn at the|r |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior/Shaman
    #xprate <1.5
    #hardcore
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>沿着道路向南前往陶拉霍营地
step << Warrior/Shaman
    #xprate <1.5
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .target 欧姆萨·雷角
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    .zone Mulgore >>前往莫高雷
step << Warrior/Shaman
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
    .accept 749 >>接受任务 被破坏的货车
	.unitscan 摩林·云行者
step << !Tauren
    #xprate <1.5
    #completewith next
    .subzone 222 >>前往血蹄村
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .accept 11129 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step << !Tauren
    #xprate <1.5
    #completewith RavagedCaravanTI
    >>击杀一只 |cRXP_ENEMY_陆行鸟|r，拾取它掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
    .mob 老平原陆行鸟
step << !Tauren
    #xprate <1.5
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step << !Tauren
    #xprate <1.5
    #label RavagedCaravanTI
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
step << !Tauren
    #xprate <1.5
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r 和 |cRXP_ENEMY_风险投资公司主管|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob 风险投资公司工人
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob 风险投资公司主管
step << !Tauren
    #xprate <1.5
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>杀死 |cRXP_ENEMY_菲兹普罗克主管|r。拾取他的 |cRXP_LOOT_笔记本|r
    >>|cRXP_WARN_跑进矿洞，贴着右侧/东侧走来找到他|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #completewith next
    >>击杀一只 |cRXP_ENEMY_陆行鸟|r，拾取它掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
    .mob 老平原陆行鸟
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,52.42,64.24,0
    .goto Mulgore,52.42,64.24,70,0
    .goto Mulgore,49.18,67.09,70,0
    .goto Mulgore,44.47,70.52,70,0
    .goto Mulgore,42.32,66.98,70,0
    .goto Mulgore,38.78,66.30,70,0
    >>击杀一只 |cRXP_ENEMY_陆行鸟|r，拾取它掉落的 |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
    .mob 老平原陆行鸟
step << !Tauren
    #xprate <1.5
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
    --TODO: Test beta, bugged on pserver
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .turnin 11129 >>交任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step << !Tauren
    #xprate <1.5
    #completewith TBFP
    .goto Thunder Bluff,31.86,66.67,30,0
    .goto Thunder Bluff,36.17,62.76,20 >>乘电梯进入雷霆崖
step << !Tauren !Paladin !Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
step << Paladin/Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>学习双手锤
    .target 安塞瓦
    .money <0.1
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,45.6,52.0,15 >>上塔
step << !Tauren
    #xprate <1.5
    #label TBFP
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fp Thunder Bluff >>开启雷霆崖飞行点
	.target 塔尔
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step << !Tauren
    #xprate <1.5
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务 药剂师扎玛
    .target 药剂师扎玛
step << !Tauren
    #xprate <1.5
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step << !Tauren
    #completewith LostPickup
    .hs >>炉石返回剃刀岭，杜隆塔尔
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0
step << !Tauren
    #xprate <1.5
    #completewith LostPickup
    .hs >>Grind outside Thunder Bluff until your hearthstone is back up, then hearthstone to Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,<0
step << !Tauren
    #xprate >1.49
    #completewith LostPickup
    .subzone 362 >>前往剃刀岭
    .bindlocation 362,1
    .cooldown item,6948,<0
step
    #xprate >1.49
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_加索克|r 对话
    .turnin 837 >>交任务 野猪人的进犯
    .target 加索克
    .isQuestComplete 837
step
    #label LostPickup
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莎|r 对话
    .accept 816 >>接受任务 刻骨铭心的伤痛
    .target 米莎·托克伦
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .accept 834 >>接受任务 沙漠之风
    .target 雷兹拉克
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
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 834 >>交任务 沙漠之风
    .accept 835 >>接受任务 保卫商路
    .target 雷兹拉克
step
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林纳格|r 对话
    .accept 812 >>接受任务 救命如救火
    .target 林纳格
step
    #completewith FindingAntidote
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .turnin 6384 >>交任务 飞往奥格瑞玛
    .accept 6385 >>接受任务 双足飞龙驭手多拉斯
    .target 旅店老板格雷什卡
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >>交任务 双足飞龙驭手多拉斯
    .accept 6386 >>接受任务 返回十字路口
    .target 多拉斯
step << Orc/Troll
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金|r 对话
    .turnin 831 >>交任务 将军的命令
    .target 沃金
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .trainer >>训练你的职业技能
    .target 派雷亚诺
step
    #label FindingAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暗影裂口与 |cRXP_FRIENDLY_考格汉|r 对话
    .accept 813 >>接受任务 寻找解毒剂
    .target 考格汉
step
    #completewith FizzleKill
    >>|cRXP_WARN_放弃 救命如救火。这将移除该任务的计时限制，但你仍然可以完成它|r
    .abandon 812 >>放弃任务 救命如救火
step
    #softcore
    #completewith FizzleKill
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
    .zoneskip Durotar
step
    #softcore
    #completewith FizzleKill
    .goto Durotar,47.05,17.58
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #hardcore
    #completewith FizzleKill
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>跳入雷霆山脊
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_右键点击你的|r |T136218:0|t[小鬼]|cRXP_WARN_或|r |T136221:0|t[虚空行者]|cRXP_WARN_的单位框架并选择解散|r << Warlock
    |cRXP_WARN_施放|r |T136095:0|t[解散宠物] |cRXP_WARN_然后跳入雷霆山脊|r << Hunter
step
    #label FizzleKill
    .goto Durotar,42.13,26.67
    >>击杀 |cRXP_ENEMY_费索·暗雷|r，并拾取他的 |cRXP_LOOT_爪子|r
    >>|cRXP_WARN_小心。在拉怪之前，先击杀巡逻的 |r|cRXP_ENEMY_火刃狂热者|r|cRXP_WARN_|r
    >>|cRXP_WARN_先击杀小鬼。在他施放|r |T132155:0|t[灵魂汲取] |cRXP_WARN_时使用|r |T136169:0|t[凿击] << Rogue
    >>|cRXP_WARN_先击杀小鬼。在他施放 |T136026:0|t[吸取灵魂] 时使用|r |T136169:0|t[大地震击]|cRXP_WARN_|r << Shaman
    >>|cRXP_WARN_你可以对 |r|cRXP_WARN_费索|r |cRXP_ENEMY_施放 |r|T136071:0|t[变形术]|cRXP_WARN_，然后先击杀 |r|cRXP_ENEMY_小鬼|r|cRXP_WARN_|r << Mage
    >>|cRXP_WARN_先击杀小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_如果你有的话，使用一个|r |T134829:0|t[初级治疗药水] |cRXP_WARN_，并在需要时使用你的|r |T133728:0|t[微光颅骨] |cRXP_WARN_|r << !Warlock
    >>|cRXP_WARN_如果你有的话，使用一个|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_，并在需要时使用你的|r |T133728:0|t[微光颅骨] |cRXP_WARN_|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob 费索·暗雷
    .mob 小鬼爪牙
    .mob 火刃狂热者
    .mob 闪电蜥蜴
step << Warrior
    #completewith next
    .goto Durotar,39.2,32.3,30 >>离开雷霆山脊
step << Warrior
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>击杀 |cRXP_ENEMY_闪电蜥蜴|r。拾取他们的 |cRXP_ENEMY_鳞片|r
    .complete 1498,1 --Singed Scale (5)
    .mob 闪电蜥蜴
    .train 355,1
step << !Warrior
    .goto Durotar,39.2,32.3,30 >>离开雷霆山脊
    .isQuestComplete 806
step << !Troll Shaman !Orc Shaman
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>|cRXP_WARN_沿着河流向南前往远望岗哨|r
    >>在路上击杀 |cRXP_ENEMY_巨齿鳄鱼|r，拾取它们掉落的 |cRXP_LOOT_克罗恩的护符|r
    >>|cRXP_WARN_如果任务物品没有掉落，暂时跳过这个任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob 巨齿鳄鱼
step << Troll Shaman/Orc Shaman
    #completewith next
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30,50,0
    >>|cRXP_WARN_Travel south alongside the river|r
    >>在路上击杀 |cRXP_ENEMY_巨齿鳄鱼|r，拾取它们掉落的 |cRXP_LOOT_克罗恩的护符|r
    >>|cRXP_WARN_如果任务物品没有掉落，暂时跳过这个任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob 巨齿鳄鱼
step << Troll Shaman/Orc Shaman
    .goto Durotar,35.53,56.89,100 >>Arrive at the southern point of the river
    .isOnQuest 1524
step << Troll Shaman/Orc Shaman
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
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1524 >>交任务 火焰的召唤
    .accept 1525 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
step
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处复活，或者跑回剃刀岭
step
    #hardcore
    #completewith next
    .subzone 362 >>前往剃刀岭
    .subzoneskip 362
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_奥戈尼尔·魂痕|r 对话
    .turnin 806 >>交任务 黑暗风暴
    .accept 828 >>接受任务 玛高兹
    .target 奥戈尼尔·魂痕
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r 对话
    .train 547 >>训练你的职业技能
    .target 斯瓦特
    .xp <12,1
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 7384 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <12,1
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>前往 Halfhill |cRXP_FRIENDLY_玛高兹|r
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛高兹|r 对话
    .turnin 828 >>交任务 玛高兹
    .accept 827 >>接受任务 骷髅石
    .target 玛高兹
step
    #completewith next
    >>击杀 |cRXP_ENEMY_毒尾蝎|r，拾取它们掉落的 |cRXP_LOOT_毒囊|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
step
    #label EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,55.09,9.91,20 >>进入洞穴
step
    #requires EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>击杀 |cRXP_ENEMY_火刃兽人|r，拾取他们掉落的|cRXP_LOOT_项圈|r和 |cRXP_LOOT_军官的徽章|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step
    #requires EnterGazzuzCave
    #softcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>击杀 |cRXP_ENEMY_加祖兹|r。拾取他的 |T134085:0|t[|cRXP_LOOT_燃影之眼|r]
    >>|cRXP_WARN_使用 |T134085:0|t[|cRXP_LOOT_燃影之眼|r] 以开启任务|r
    >>|cRXP_WARN_在击杀 |r加祖兹|cRXP_ENEMY_ 后，你可以跑到洞穴内的水体中以躲避 |r|cRXP_WARN_虚空行者|r|cRXP_ENEMY_|r
    >>|cRXP_WARN_Be careful as he is difficult. You can skip this quest if you need|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务 燃影之眼
    .use 4903
	.unitscan 加祖兹
step
    #requires EnterGazzuzCave
    #hardcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>击杀 |cRXP_ENEMY_加祖兹|r。拾取他的 |T134085:0|t[|cRXP_LOOT_燃影之眼|r]
    >>|cRXP_WARN_使用 |T134085:0|t[|cRXP_LOOT_燃影之眼|r] 以开启任务|r
    >>|cRXP_WARN_在击杀 |r加祖兹|cRXP_ENEMY_ 后，你可以跑到洞穴内的水体中以躲避 |r|cRXP_WARN_虚空行者|r|cRXP_ENEMY_|r
    >>|cRXP_WARN_这个任务单人完成非常困难，如果找不到队伍就跳过|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务 燃影之眼
    .use 4903
	.unitscan 加祖兹
    .group 2
step
    #requires EnterGazzuzCave
    #loop
    .goto Durotar,53.77,8.87,0
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>击杀 |cRXP_ENEMY_火刃兽人|r，拾取他们掉落的|cRXP_LOOT_项圈|r和 |cRXP_LOOT_军官的徽章|r
    >>|cRXP_WARN_如果掉落运气不好，可以跳过|r |cRXP_LOOT_军官的徽章|r |cRXP_WARN_|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step
    #completewith next
    >>击杀 |cRXP_ENEMY_毒尾蝎|r，拾取它们掉落的 |cRXP_LOOT_毒囊|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛高兹|r 对话
    .turnin 827 >>交任务 骷髅石
    .accept 829 >>接受任务 尼尔鲁·火刃
    .target 玛高兹
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
step << !Shaman
    #completewith next
    .goto Durotar,53.41,27.81,15 >>穿过洞穴前进
step << Shaman
    #completewith next
    .goto Durotar,53.94,27.85,30 >>跳下进入枯水谷
step
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>击杀 |cRXP_ENEMY_尘风暴徒|r 和 |cRXP_ENEMY_尘风雷巫|r
    .complete 835,1 --Dustwind Savage (12)
    .mob 尘风暴徒
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob 尘风雷巫
step
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .isQuestComplete 813 --don't want ress sickness if more Scorpids need to get killed before entering ORG
step
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>穿过洞穴前往 |cRXP_FRIENDLY_雷兹拉克|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r 对话
    .turnin 835 >>交任务 保卫商路
    .target 雷兹拉克
step
    #loop
    .goto Durotar,42.09,20.91,0
    .goto Durotar,42.09,20.91,50,0
    .goto Durotar,39.38,18.69,50,0
    .goto Durotar,41.22,16.82,50,0
    .goto Durotar,44.14,17.17,50,0
    .goto Durotar,36.75,25.47,50,0
    >>击杀 |cRXP_ENEMY_毒尾蝎|r，拾取它们掉落的 |cRXP_LOOT_毒囊|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
    .isOnQuest 813
step
    #completewith NeeruFireblade
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5726
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_考格汉|r 对话
    .turnin 813 >>交任务 寻找解毒剂
    .target 考格汉
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁|r 对话
    .turnin 829 >>交任务 尼尔鲁·火刃
    .turnin 832 >>交任务 燃影之眼
    .accept 809 >>接受任务 雅克塞罗斯
    .target 尼尔鲁·火刃
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁|r 对话
    .turnin 829 >>交任务 尼尔鲁·火刃
    .accept 809 >>接受任务 雅克塞罗斯
    .target 尼尔鲁·火刃
step
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >>离开 奥格瑞玛
step
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
    .zoneskip Durotar
step
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林纳格|r 对话
    .accept 812 >>接受任务 救命如救火
    .turnin 812 >>交任务 救命如救火
    .target 林纳格
step
    #label AmuletFound
    #completewith FarWatchP
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,01
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way to Far Watch Post. Loot them for |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Skip this quest if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob 巨齿鳄鱼
    .isOnQuest 816
step
    #requires AmuletFound
    #completewith FarWatchP
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莎|r 对话
    .turnin 816 >>交任务 刻骨铭心的伤痛
    .target 米莎·托克伦
step
    #label FarWatchP
    .goto The Barrens,62.26,19.38
    .subzone 379 >>前往远望哨
    .zoneskip The Barrens
step
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 809 >>交任务 雅克塞罗斯
    .accept 924 >>接受任务 恶魔之种
    .target 雅克塞罗斯
step
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_拾取位于 |r|cRXP_WARN_雅克塞罗斯|r |cRXP_FRIENDLY_旁的 |r|T134095:0|t[有瑕疵的能量石]|cRXP_WARN_。该物品有 30 分钟的计时器，所以要尽快操作|r
    .turnin 926 >>交任务 有瑕疵的能量石
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r 对话
    .turnin 1498 >>交任务 防御之道
    .accept 1502 >>接受任务 索恩格瑞姆·火眼
    .target 犹塞克
    .train 355,1
step
    #optional
    .abandon 816 >>放弃任务 刻骨铭心的伤痛
step
    #optional
    .abandon 5726 >>放弃任务 隐藏的敌人
]])
