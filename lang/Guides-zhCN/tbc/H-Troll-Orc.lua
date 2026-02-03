if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（联盟版）
<< Horde
#name 1-6 杜隆塔尔
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Orc/Troll
#next 6-10 杜隆塔尔

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔图克|r
    .accept 4641 >>接受任务《物归己用》 你的位置
    .target 卡尔图克
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_杂斑野猪|r. Loot them until you have 35 copper worth of vendor items (including your armor)|r << Warlock
    +|cRXP_WARN_Kill |cRXP_ENEMY_杂斑野猪|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob 杂斑野猪
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接受任务《物归己用》 邪灵劣魔
    .target 鲁赞
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r
    .turnin 4641 >>交任务《 前往熔光镇》 你的位置
    .accept 788 >>接受任务《物归己用》 小试身手
    .target 高内克
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r << Shaman
    .train 6673 >>Train |T132333:0|t[战斗怒吼] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman
    .target 弗朗恩 << Warrior
    .target 史克里克 << Shaman
step << Warlock
    #completewith Nartok
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money >0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r
    .train 348 >>Train |T135817:0|t[献祭]
    .target 纳托克
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[劣质箭]|cRXP_BUY_from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target 多克纳
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target 多克纳
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>击杀 |cRXP_ENEMY_杂斑野猪|r en route to the Burning Blade Coven
    >>|cRXP_WARN_Try to get to level 2 before getting there|r
    .complete 788,1 --Mottled Boar (10)
    .mob 杂斑野猪
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前去找 the Burning Blade Coven
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接受任务《物归己用》 萨科斯
    .target 哈纳祖
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>击杀 |cRXP_ENEMY_萨科斯|r。拾取他的 |cRXP_LOOT_萨科斯的爪子|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob 萨科斯
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>交任务《 前往熔光镇》 萨科斯
    .accept 804 >>接受任务《物归己用》 萨科斯
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
    .xp 3+850 >>击杀 to 850+/1400xp on the way back to town
    .mob 杂斑野猪
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_杂斑野猪|r. Loot them until you have 1 silver worth of vendor items|r
    .mob 杂斑野猪
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>交任务《 前往熔光镇》 邪灵劣魔
    .accept 1499 >>接受任务《物归己用》 邪灵劣魔
    .target 鲁赞
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>交任务《 前往熔光镇》 邪灵劣魔
    .accept 794 >>接受任务《物归己用》 火刃奖章
    .target 祖雷萨
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r
    .turnin 788,2 >>交任务《 前往熔光镇》 小试身手 << Shaman
    .turnin 788 >>交任务《 前往熔光镇》 小试身手 << !Shaman
    .accept 789 >>接受任务《物归己用》 工蝎的尾巴
    .accept 2383 >>接受任务《物归己用》 简易羊皮纸 << Orc Warrior
    .accept 3065 >>接受任务《物归己用》 普通石板 << Troll Warrior
    .accept 3082 >>接受任务《物归己用》 风蚀石板 << Troll Hunter
    .accept 3083 >>接受任务《物归己用》 密文石板 << Troll Rogue
    .accept 3084 >>接受任务《物归己用》 符文石板 << Troll Shaman
    .accept 3085 >>接受任务《物归己用》 神圣石板 << Troll Priest
    .accept 3086 >>接受任务《物归己用》 雕文石板 << Troll Mage
    .accept 3087 >>接受任务《物归己用》 风蚀羊皮纸 << Orc Hunter
    .accept 3088 >>接受任务《物归己用》 密文羊皮纸 << Orc Rogue
    .accept 3089 >>接受任务《物归己用》 符文羊皮纸 << Orc Shaman
    .accept 3090 >>接受任务《物归己用》 被污染的羊皮纸 << Orc Warlock
    .turnin 804,1 >>交任务《 前往熔光镇》 萨科斯 << Shaman
    .turnin 804 >>交任务《 前往熔光镇》 萨科斯 << !Shaman
    .target 高内克
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前去找 |cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务《 前往熔光镇》 密文石板 << Troll Rogue
    .turnin 3088 >>交任务《 前往熔光镇》 密文羊皮纸 << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .target 鲁瓦格
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务《 前往熔光镇》 密文石板 << Troll Rogue
    .turnin 3088 >>交任务《 前往熔光镇》 密文羊皮纸 << Orc Rogue
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务《 前往熔光镇》 被污染的羊皮纸
    .train 172 >>Train |T136118:0|t[腐蚀术]
    .target 纳托克
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接受任务《物归己用》 戈加尔的清凉果
    .target 戈加尔
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[劣质箭]|cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务《 前往熔光镇》 符文石板 << Troll
    .turnin 3089 >>交任务《 前往熔光镇》 符文羊皮纸 << Orc
    .target 史克里克
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务《 前往熔光镇》 雕文石板 << Troll
    .train 1459 >>Train |T135932:0|t[奥术智慧]
    .target 迈安
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务《 前往熔光镇》 风蚀石板 << Troll
    .turnin 3087 >>交任务《 前往熔光镇》 风蚀羊皮纸 << Orc
    .target 基沙
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务《 前往熔光镇》 简易羊皮纸 << Orc
    .turnin 3065 >>交任务《 前往熔光镇》 普通石板 << Troll
    .target 弗朗恩
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r
    .turnin 3085 >>交任务《 前往熔光镇》 神圣石板
    .target 肯杰
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>接受任务《物归己用》 邪灵劣魔
    .target 祖雷萨
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>接受任务《物归己用》 懒惰的苦工
    .target 工头塔兹利尔
step
    #completewith Sting
    >>拾取散发绿光的 |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_懒惰的苦工|r
    .complete 5441,1 --Peons Awoken (5)
    .target 懒惰的苦工
    .use 16114
step << !Warlock
    #completewith Imps
    >>击杀 |cRXP_ENEMY_蝎子|r. 拾取 |cRXP_LOOT_工蝎的尾巴|r
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
    >>击杀 |cRXP_ENEMY_蝎子|r. 拾取 |cRXP_LOOT_工蝎的尾巴|r
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
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_懒惰的苦工|r
    .complete 5441,1 --Peons Awoken (5)
    .target 懒惰的苦工
    .use 16114
step
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
    .xp 4 >>击杀 to level 4
    .mob 杂斑野猪
    .mob 蝎子
    .mob 邪灵劣魔
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务《 前往熔光镇》 戈加尔的清凉果
    .target 戈加尔
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[劣质箭]|cRXP_BUY_from her|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高内克|r
    .turnin 789 >>交任务《 前往熔光镇》 工蝎的尾巴
    .target 高内克
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 和 |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .target 史克里克
    .goto Durotar,42.39,69.00
    .accept 1516 >>接受任务《物归己用》 大地的召唤
    .target 坎纳甘·地鸣
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r
    .train 116 >>Train |T135846:0|t[寒冰箭]
    .target 迈安
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>学习 |T135987:0|t[真言术：韧]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.011
    .target 肯杰
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.01
    .target 肯杰
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>交任务《 前往熔光镇》 邪灵劣魔
    .accept 794 >>接受任务《物归己用》 火刃奖章
    .target 祖雷萨
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r
    .train 1978 >>Train |T132204:0|t[毒蛇钉刺]
    .target 基沙
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>Train |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 弗朗恩
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 弗朗恩
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>Train |T132337:0|t[冲锋]
    .target 弗朗恩
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>交任务《 前往熔光镇》 懒惰的苦工
    .accept 6394 >>接受任务《物归己用》 塔兹利尔的镐
    .target 工头塔兹利尔
step
    #completewith next
    .xp 4+1720 >>击杀 to 1720+/2100xp
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
    >>拾取散发绿光的 |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
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
    .xp 4+1720 >>击杀 to 1720+/2100xp
    .mob 邪灵劣魔
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
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
    .xp 5 >>击杀 to level 5
    .mob 邪灵劣魔
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入 cave
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
    >>击杀 |cRXP_ENEMY_地狱捕猎者|r. 拾取 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob 魔犬
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>拾取地上的 |cRXP_LOOT_塔兹利尔的镐|r against the wall
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
    >>击杀 |cRXP_ENEMY_地狱捕猎者|r. 拾取 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob 魔犬
step
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
    .xp 5+1635 >>击杀 to 1635+/2800xp << !Shaman
    .xp 5+645 >>击杀 to 645+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
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
    .xp 5+1255 >>击杀 to 1255+/2800xp << !Shaman
    .xp 5+265 >>击杀 to 265+/2800xp << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>Hearth to Valley of Trials
step << !Orc !Troll
    #softcore
    #completewith BurningBladeTurnin
    .deathskip >>Die at the start of the cave and respawn at the |cRXP_FRIENDLY_灵魂医者|r, or run back Valley of Trials
step << !Orc !Troll
    #hardcore
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>回到亡灵壁垒 of Trials
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>交任务《 前往熔光镇》 塔兹利尔的镐
    .target 工头塔兹利尔
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务《 前往熔光镇》 戈加尔的清凉果
    .target 戈加尔
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多克纳|r
    .vendor >>把垃圾物品卖给商人
    .target 多克纳
    .money >0.03
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>交任务《 前往熔光镇》 火刃奖章
    .accept 805 >>接受任务《物归己用》 去森金村报到
    .target 祖雷萨
step << !Shaman
    .xp 6 >>击杀 to level 6
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接受任务《物归己用》 部族的传统
	.train 591 >>影袭 |T135924:0|t[惩击]
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .target 肯杰
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r
    .train 143 >>Train |T135812:0|t[火球术]
    .train 2136 >>Train |T135807:0|t[火焰冲击]
    .target 迈安
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r 和 |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务《 前往熔光镇》 大地的召唤
    .accept 1517 >>接受任务《物归己用》 大地的召唤
    .goto Durotar,42.40,69.17
    .target 史克里克
    .target 坎纳甘·地鸣
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>交任务《 前往熔光镇》 大地的召唤
    .accept 1517 >>接受任务《物归己用》 大地的召唤
    .target 坎纳甘·地鸣
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 基沙
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基沙|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 基沙
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>Train |T132269:0|t[招架]
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .target 弗朗恩
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>Train |T132269:0|t[招架]
    .target 弗朗恩
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前去找 |cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>背刺 |T136189:0|t[影袭]
    .train 1776 >>学习 |T132155:0|t[Gouge]
    .target 鲁瓦格
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>背刺 |T136189:0|t[影袭]
    .target 鲁瓦格
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前去找 |cRXP_FRIENDLY_赫劳格|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact]|cRXP_BUY_from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>把垃圾物品卖给商人
    .target 赫劳格
    .money <0.03
step << Warlock
    #completewith Leave
    .train 20397 >> |cRXP_WARN_Use the|r |T133738:0|t[Grimoire of Blood Pact]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>前去找 the |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>交任务《 前往熔光镇》 大地的召唤
    .accept 1518 >>接受任务《物归己用》 大地的召唤
    .target 大地之魂
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务《 前往熔光镇》 大地的召唤
    .target 坎纳甘·地鸣
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史克里克|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target 史克里克
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>交任务《 前往熔光镇》 塔兹利尔的镐
    .target 工头塔兹利尔
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Exit the Valley of Trials
    .isOnQuest 805

    ]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（联盟版）
<< Horde
#name 6-10 杜隆塔尔
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Orc/Troll
#next 10-13 杜隆塔尔 << Warrior/Shaman
#next 10-12 永歌森林 << !Warrior !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接受任务《物归己用》 苦工的重担
    .target 乌克尔
step
    #completewith SenjinPickups
    .subzone 367 >>前往暴风城大教堂内，与 Sen'Jin Village
step
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>接受任务《物归己用》 科卡尔半人马的进攻
    .target 拉尔·猎齿
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r 和 |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>接受任务《物归己用》 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
    .accept 818 >>接受任务《物归己用》 沃纳尔大师
    .goto Durotar,55.94,74.40
    .target 沃纳尔大师
    .turnin 805 >>交任务《 前往熔光镇》 去森金村报到
    .accept 808 >>接受任务《物归己用》 明希纳的徽记
    .accept 826 >>接受任务《物归己用》 扎拉赞恩
    .accept 823 >>接受任务《物归己用》 向奥戈尼尔报告
    .goto Durotar,55.94,74.72
    .target 加德林大师
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>进入磨坊 hut
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Buy |r |T135421:0|t[增重飞斧] |cRXP_BUY_from her|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target 克瓦埃
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target 克瓦埃
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target 克瓦埃
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target 特莱耶克
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[卷刃的剑] (4s 01c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[卷刃的剑] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target 特莱耶克
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[双刃战斧] (4s 84c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[双刃战斧] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target 特莱耶克
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[小手斧] (5s 40c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[小手斧] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target 特莱耶克
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[角木弯弓] (2s 83c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[角木弯弓] |cRXP_BUY_from him|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target 特莱耶克
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安苏瓦|r
    .train 143 >>Train |T135812:0|t[火球术]
    .train 2136 >>Train |T135807:0|t[火焰冲击]
    .target 安苏瓦
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_海蟹|r and |cRXP_ENEMY_龙虾人|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    .goto Durotar,52.20,83.00,75 >> Reach the end of the beach
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,30 >>进入 Kolkar base
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan 科卡尼斯
step
    .goto Durotar,49.81,81.29
    >>Burn the |cRXP_PICK_Attack Plan|r 对话，NPC在里面 the tent on the ground
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    #completewith TurninKolkar
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>Die at the Bonfire 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .isQuestComplete 786
step
    #hardcore
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>Leave the Kolkar base
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target 特莱耶克
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[卷刃的剑] (4s 01c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[卷刃的剑] |cRXP_BUY_from him|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target 特莱耶克
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[双刃战斧] (4s 84c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[双刃战斧] |cRXP_BUY_from him|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target 特莱耶克
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[小手斧] (5s 40c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[小手斧] |cRXP_BUY_from him|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target 特莱耶克
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[角木弯弓] (2s 83c). You'll come back later if you don't have enough yet
    .target 特莱耶克
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[角木弯弓] |cRXP_BUY_from him|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target 特莱耶克
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equip the|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>交任务《 前往熔光镇》 沃纳尔大师
    .target 沃纳尔大师
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_Buy|r |T133974:0|t[肉排]|cRXP_BUY_from him|r
    .vendor >>把垃圾物品卖给商人
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target 海赞
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target 克瓦埃
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target 克瓦埃
    .money <0.0050
step
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786 >>交任务《 前往熔光镇》 科卡尔半人马的进攻
    .target 拉尔·猎齿
step
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>前往暴风城大教堂内，与 Razor Hill
step
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>前往 Halfhill the waypoint arrow (or further south of it), then die and respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>交任务《 前往熔光镇》 向奥戈尼尔报告
    .accept 806 >>接受任务《物归己用》 黑暗风暴
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .accept 784 >>接受任务《物归己用》 背信弃义的人类
    .accept 837 >>接受任务《物归己用》 野猪人的进犯
    .target 加索克
    .goto Durotar,51.95,43.50
    .accept 815 >>接受任务《物归己用》 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.09,42.49
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>交任务《 前往熔光镇》 向奥戈尼尔报告
    --.accept 806 >>Accept Dark Storms
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .accept 784 >>接受任务《物归己用》 背信弃义的人类
    .accept 837 >>接受任务《物归己用》 野猪人的进犯
    .target 加索克
    .goto Durotar,51.95,43.50
    .accept 815 >>接受任务《物归己用》 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前去找 the tower
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接受任务《物归己用》 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>Train |T136248:0|t[采矿]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target 克鲁恩
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[矿工锄]|cRXP_BUY_from|r|cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r
    .train 2018 >>Train |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target 尤加尔
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[卷刃的剑] (4s 01c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[卷刃的剑] |cRXP_BUY_from him|r
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target 尤加尔
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[双刃战斧] (4s 84c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[双刃战斧] |cRXP_BUY_from him|r
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target 尤加尔
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[小手斧] (5s 40c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[小手斧] |cRXP_BUY_from him|r
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target 尤加尔
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳特|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[角木弯弓] (2s 83c). You'll come back later if you don't have enough yet
    .target 格劳特
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Buy a|r |T135499:0|t[角木弯弓] |cRXP_BUY_from him|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target 格劳特
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equip the|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[劣质箭] |cRXP_BUY_from him|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target 格劳特
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Buy|r |T133974:0|t[肉排]|cRXP_BUY_from him|r << Rogue/Warrior
    >>|cRXP_WARN_Save 4 silver for your class spells!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Save 2 silver for your class spells!|r << Priest
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石设置为暮色森林 Hill
    .turnin 2161 >>交任务《 前往熔光镇》 苦工的重担
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Buy|r |T133974:0|t[肉排]|cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石设置为暮色森林 Hill
    .turnin 2161 >>交任务《 前往熔光镇》 苦工的重担
    .target 旅店老板格罗斯克
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133974:0|t[肉排]|cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    .home >>将你的炉石设置为暮色森林 Hill
    .turnin 2161 >>交任务《 前往熔光镇》 苦工的重担
    .target 旅店老板格罗斯克
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>训练你的职业技能
    .target 斯瓦特
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <8,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_基萨|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
    .xp <8,1
step << Warlock
    #completewith Tools
    .train 20270 >> |cRXP_WARN_Use the|r |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
    .xp <8,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .train 5116 >>训练你的职业技能
    .target 索塔尔
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>训练你的职业技能
    .target 卡普拉克
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>交任务《 前往熔光镇》 部族的传统
    .accept 5648 >>接受任务《物归己用》 灵魂之衣
    .target 泰金
step << Priest
    .goto Durotar,53.10,46.46
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target 步兵科雅
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>交任务《 前往熔光镇》 灵魂之衣
    .trainer >>训练你的职业技能
    .target 泰金
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]|cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_from them|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>前往塔纳利斯 Keep
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_科提斯中士|r |cRXP_WARN_is up, as he is a level 9 rare. You may have to use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have one|r
    .unitscan 科提斯中士
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Move toward the 秒 floor of the keep
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
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
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
    >>|cRXP_WARN_Go upstairs in the keep|r
    >>打开 |cRXP_PICK_Benedict's Chest|r. 拾取地上的 it for the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>Use the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] to start the quest
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接受任务《物归己用》 将军的命令
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
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >>击杀 to 2610+/4500xp
step
    #softcore
    #completewith next
    .goto Durotar,57.3,53.5,120,0
    .deathskip >>Die at the waypoint arrow (or further south of it), then die and respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往暴风城大教堂内，与 Razor Hill
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    .turnin 784 >>交任务《 前往熔光镇》 背信弃义的人类
    .turnin 830 >>交任务《 前往熔光镇》 将军的命令
    .accept 825 >>接受任务《物归己用》 海底沉船
    .accept 831 >>接受任务《物归己用》 将军的命令 << Warrior/Shaman/Hunter/Warlock
    .accept 837 >>接受任务《物归己用》 野猪人的进犯
    .target 加索克
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前去找 the tower
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>交任务《 前往熔光镇》 新的背包
    .target 弗恩·凝眉
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>Train |T136248:0|t[采矿]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target 克鲁恩
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[矿工锄]|cRXP_BUY_from|r|cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target 沃克
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r
    .train 2018 >>Train |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target 尤加尔
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[卷刃的剑] (4s 01c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[卷刃的剑] |cRXP_BUY_from him|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target 尤加尔
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[双刃战斧] (4s 84c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[双刃战斧] |cRXP_BUY_from him|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target 尤加尔
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤加尔|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[小手斧] (5s 40c). You'll come back later if you don't have enough yet
    .target 尤加尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[小手斧] |cRXP_BUY_from him|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target 尤加尔
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳特|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[角木弯弓] (2s 83c). You'll come back later if you don't have enough yet
    .target 格劳特
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Buy a|r |T135499:0|t[角木弯弓] |cRXP_BUY_from him|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target 格劳特
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +|cRXP_WARN_Equip the|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[劣质箭] |cRXP_BUY_from him|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target 格劳特
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >>训练你的职业技能
    .target 塔绍尔·锯痕
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>训练你的职业技能
    .target 斯瓦特
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_基萨|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> |cRXP_WARN_Use the|r |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .train 5116 >>训练你的职业技能
    .target 索塔尔
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>训练你的职业技能
    .target 卡普拉克
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r
    .train 139 >>训练你的职业技能
    .target 泰金
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 拉乌克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_Buy|r |T133974:0|t[肉排]|cRXP_BUY_from him|r << Rogue/Warrior
    .target 旅店老板格罗斯克
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]|cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_from them|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
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
    >>拾取散发绿光的 |cRXP_PICK_Gnomish Toolboxes|r 对话，NPC在里面 和 around the boats
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Swim to the Island
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step
    #completewith next
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
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
    >>拾取散发绿光的 |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_血爪鞭尾龙|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step
    #completewith next
    >>击杀 |cRXP_ENEMY_海蟹|r 和 |cRXP_ENEMY_龙虾人|r。拾取他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    .goto Durotar,66.94,84.41,150 >>Swim to the main island
    .isOnQuest 826
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[大地震击] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的 one of the |cRXP_LOOT_骷髅|ron the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[大地震击] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #completewith next
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
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
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
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
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
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
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
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
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r,or run back
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往暴风城大教堂内，与 Sen'Jin Village
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    >>|cRXP_WARN_Jump into the hut|r
    .vendor >>Vendor trash 和 repair
    .target 特莱耶克
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安苏瓦|r
    .train 118 >>训练你的职业技能
    .target 安苏瓦
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r 和 |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>交任务《 前往熔光镇》 明希纳的徽记
    .turnin 826 >>交任务《 前往熔光镇》 扎拉赞恩
    .goto Durotar,55.95,74.73
    .target 加德林大师
    .turnin 818 >>交任务《 前往熔光镇》 沃纳尔大师
    .goto Durotar,55.95,74.39
    .target 沃纳尔大师
    .turnin 817 >>交任务《 前往熔光镇》 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
step
    #hardcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>前往暴风城大教堂内，与 Razor Hill
    .cooldown item,6948,<0
step
    #softcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .goto Durotar,54.53,58.69
    .deathskip >>前往 Halfhill the waypoint arrow (or further south of it), then die and respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .cooldown item,6948,<0
step
    #completewith RazorHill3
    .hs >>Hearth to 剃刀岭，杜隆塔尔
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>2,1
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_Torka|r
    .turnin 825 >>交任务《 前往熔光镇》 海底沉船
    .target 加索克
    .goto Durotar,51.95,43.50
    .turnin 815 >>交任务《 前往熔光镇》 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.12,42.46
step
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
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>击杀 to 5870+/6500xp
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_加索克|r
    .turnin 837 >>交任务《 前往熔光镇》 野猪人的进犯
    .target 加索克
step
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>击杀 to 10
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业技能
    .accept 2983 >>接受任务《物归己用》 火焰的召唤
    .target 斯瓦特
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>接受任务《物归己用》 老兵犹塞克
    .trainer >>训练你的职业技能
    .target 塔绍尔·锯痕
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>接受任务《物归己用》 甘鲁尔的召唤
    .train 1120 >>训练你的职业技能
    .target 杜格鲁·血怒
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_基萨|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target 基萨
    .money <0.01
step << Warlock
    .train 20270 >> |cRXP_WARN_Use the|r |T133738:0|t[Grimoire of Firebolt Rank 2]
    .use 16302
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r
    .train 8092 >>训练你的职业技能
    .target 泰金
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>训练你的职业技能
    .target 卡普拉克
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .accept 6062 >>接受任务《物归己用》 驯服野兽
    .trainer >>训练你的职业技能
    .target 索塔尔
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[锋利的箭] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target 格劳特
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[锋利的箭] |cRXP_BUY_from him|r
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
    .use 15917 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_可怕的杂斑野猪|r |cRXP_WARN_at max range|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob 可怕的杂斑野猪
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6062 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6083 >>接受任务《物归己用》 驯服野兽
    .target 索塔尔
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .accept 6083 >>接受任务《物归己用》 驯服野兽
    .target 索塔尔
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_可怕的杂斑野猪|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame a|r |cRXP_ENEMY_海浪蟹|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>|cRXP_WARN_Don't kill the|r |cRXP_ENEMY_硬甲蝎|r |cRXP_WARN_you see. You'll need them later|r
    .use 15919 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_成熟海浪蟹|r |cRXP_WARN_at max range|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob 成熟海浪蟹
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6083 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6082 >>接受任务《物归己用》 驯服野兽
    .target 索塔尔
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_海浪蟹|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_硬甲蝎|r
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
    .use 15920 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_硬甲蝎|r |cRXP_WARN_at max range|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob 硬甲蝎
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r 对话，NPC在里面
    .turnin 6082 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6081 >>接受任务《物归己用》 训练野兽
    .target 索塔尔
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Put|r |T132164:0|t[Tame Beast]|cRXP_WARN_，|r |T136095:0|t[Dismiss Pet]|cRXP_WARN_, and|r |T132161:0|t[Call Pet] |cRXP_WARN_onto your Action Bars|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞姆塔克|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[硬肉干]|cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .vendor >>把垃圾物品卖给商人
    .collect 117,5,828,1 --Tough Jerky (5)
    .target 格瑞姆塔克
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞姆塔克|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target 格瑞姆塔克
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受任务《物归己用》 沙漠之风
    .target 雷兹拉克
step << Warlock/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
    .isOnQuest 6081 << Hunter
    .isOnQuest 1506 << Warlock
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往暴风城大教堂内，与 the Valley of Honor
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>交任务《 前往熔光镇》 训练野兽
    .target 奥玛克
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r
    .train 24547 >>训练你的宠物技能
    .target 肖祖
step << Hunter
    #completewith next
    +|cRXP_WARN_Put|r |T132162:0|t[野兽训练]|cRXP_WARN_(under the General tab),|r |T132163:0|t[Revive Pet]|cRXP_WARN_, and|r |T132165:0|t[Feed Pet] |cRXP_WARN_onto your Action Bars|r
    >>|cRXP_WARN_Remember to train your pet whenever they get Training Points for|r |T132162:0|t[野兽训练]
step << Warlock/Hunter
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金|r
    .turnin 831 >>交任务《 前往熔光镇》 将军的命令
    .target 沃金
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接受任务《物归己用》 隐藏的敌人
    .target 萨尔
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1506 >>交任务《 前往熔光镇》 甘鲁尔的召唤
    .accept 1501 >>接受任务《物归己用》 虚空中的生物
    .target 甘鲁尔·血眼
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Enter Ragefire Chasm
step << Warlock
    #softcore
    #completewith SkullRockWarlock
    .goto Durotar,47.05,17.58
    .deathskip >>Die 和 Respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>前往暴风城大教堂内，与 Skull Rock
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>击杀 |cRXP_ENEMY_Gazz'uz|r if he is up. Loot him for |T134085:0|t[|cRXP_LOOT_燃影之眼|r]. Use it to start the quest
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务《物归己用》 燃影之眼
    .unitscan 加祖兹
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_Burning Blade Orcs|r. 拾取地上的 them for a |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Skip this if you're unlucky with the drop|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>拾取散发绿光的 |cRXP_PICK_Burning Blade Stash|r in the back of the cave for |cRXP_LOOT_Tablet of Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >>Die 和 Respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务《 前往熔光镇》 隐藏的敌人
    .accept 5727 >>接受任务《物归己用》 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .accept 5727 >>接受任务《物归己用》 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1501 >>交任务《 前往熔光镇》 虚空中的生物
    .accept 1504 >>接受任务《物归己用》 誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 832 >>接受任务《物归己用》 燃影之眼
    .turnin 832 >>交任务《 前往熔光镇》 燃影之眼
    .target 尼尔鲁·火刃
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use the|r |T134416:0|t[Glyphs of Summoning] |cRXP_WARN_at the Summoning Circle|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_虚空行者|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob 虚空行者
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1504 >>交任务《 前往熔光镇》 誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务《 前往熔光镇》 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5726
step << Warlock
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,36.0,37.7 
    .deathskip >>|cRXP_WARN_Remove your|r |T136185:0|t[Demon Skin] |cRXP_WARN_buff. Run on top of the brazier, and use|r |T136126:0|t[Life Tap] |cRXP_WARN_to deathskip out of Orgrimmar|r
step << Warlock
    #hardcore
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step << Hunter
    #completewith SupplySacks
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step << Hunter
    #completewith SupplySacks
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Tame a |cRXP_ENEMY_毒尾蝎|r
    >>|cRXP_WARN_This will allow you to train|r |T132140:0|t[Claw Rank 2]
    .mob 毒尾蝎
    .train 16828,1 --Claw rank 2
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受任务《物归己用》 沙漠之风
    .target 雷兹拉克
step << !Shaman !Warrior !Warlock
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
    >>拾取散发绿光的 |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务《 前往熔光镇》 沙漠之风
    .accept 835 >>接受任务《物归己用》 保卫商路
    .target 雷兹拉克
step << !Shaman !Warrior !Warlock
    #completewith next
    .goto Durotar,51.9,27.4,20 >>Go through the cave
step << !Shaman !Warrior !Warlock
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
    #softcore
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|ror run back
step << !Shaman !Warrior !Warlock
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>Travel through the cave toward |cRXP_FRIENDLY_雷兹拉克|r
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务《 前往熔光镇》 保卫商路
    .target 雷兹拉克
step << !Shaman !Warrior
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here
step << !Shaman !Warrior
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>使用炮台来击沉从东方驶来的小艇 the |cRXP_PICK_传送宝珠|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r or |cRXP_FRIENDLY_欧塞兰|r
    .trainer >>训练你的职业技能
	.target 伊瑟里斯
	.target 欧塞兰
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（联盟版）
<< Horde
#name 10-13 杜隆塔尔
#displayname 6-13 杜隆塔尔 << Undead Warrior
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor Warrior !Tauren/Shaman !Tauren
#next 13-18 The Barrens

step << Undead Warrior
    #completewith next
    .subzone 362 >>前往暴风城大教堂内，与 Razor Hill
step << Undead Warrior
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .home >>将你的炉石设置为暮色森林 Hill
    .target 旅店老板格罗斯克
    .isQuestAvailable 784
    .bindlocation 362
step << Undead Warrior
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_加索克|r
    .accept 784 >>接受任务《物归己用》 背信弃义的人类
    .target 加索克
step << Undead Warrior
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Torka|r
    .accept 815 >>接受任务《物归己用》 恐龙蛋大餐
    .target 厨师托尔卡
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>接受任务《物归己用》 部落的新兵
    .target 塔克林·寻路者
step << Undead Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前去找 the tower
step << Undead Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上前往 Furl
step << Undead Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接受任务《物归己用》 新的背包
    .target 弗恩·凝眉
step << Undead Warrior
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>Train |T136248:0|t[采矿]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target 克鲁恩
step << Undead Warrior
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[矿工锄]|cRXP_BUY_from|r|cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target 沃克
step << Undead Warrior
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜克|r
    .train 2018 >>Train |T136241:0|t[锻造]
    .target 杜克
    .skill blacksmithing,1,1
step << Undead Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>接受任务《物归己用》 老兵犹塞克
    .trainer >>训练你的职业技能
    .target 塔绍尔·锯痕
step << Undead Warrior
    #completewith TiragardeArrive
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]|cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones]|cRXP_WARN_from them|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Undead Warrior
    #label TiragardeArrive
    .subzone 372 >>前往塔纳利斯 Keep
    .isOnQuest 784
step << Undead Warrior
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Move toward the 秒 floor of the keep
step << Undead Warrior
    #completewith AgedEnvelope
    >>击杀 |cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |cRXP_LOOT_帆布脚料|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --Kul Tiras Marine (8)
    .mob 库尔提拉斯水兵
    .complete 791,1 --Canvas Scraps (8)
step << Undead Warrior
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob 本尼迪克上尉
step << Undead Warrior
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Go upstairs in the keep|r
    >>打开 |cRXP_PICK_Benedict's Chest|r. 拾取地上的 it for the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>Use the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] to start the quest
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接受任务《物归己用》 将军的命令
    .use 4881
step << Undead Warrior
    #loop
    .goto Durotar,57.36,56.59,0
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
step << Undead Warrior
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
step << Undead Warrior
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
step << Undead Warrior
    #completewith SenjinPickups
    .subzone 367 >>前往暴风城大教堂内，与 Sen'Jin Village
step << Undead Warrior
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vel'rin|r 和 |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>接受任务《物归己用》 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
    .turnin 805 >>交任务《 前往熔光镇》 去森金村报到
    .accept 808 >>接受任务《物归己用》 明希纳的徽记
    .accept 826 >>接受任务《物归己用》 扎拉赞恩
    .accept 823 >>接受任务《物归己用》 向奥戈尼尔报告
    .goto Durotar,55.94,74.72
    .target 加德林大师
step << Undead Warrior
    #completewith MainIsland
    >>拾取散发绿光的 |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_血爪鞭尾龙|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step << Undead Warrior
    #completewith MainIsland
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step << Undead Warrior
    #label MainIsland
    .goto Durotar,66.94,84.41,350 >>Swim to the main island
    .isOnQuest 826
step << Undead Warrior
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step << Undead Warrior
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step << Undead Warrior
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的 one of the |cRXP_LOOT_骷髅|ron the ground
    .complete 808,1 --Minshina's Skull (1)
step << Undead Warrior
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step << Undead Warrior
    #completewith IslandTrolls
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step << Undead Warrior
    #completewith Fur
    >>拾取散发绿光的 |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_血爪鞭尾龙|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step << Undead Warrior
    #label IslandTrolls
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
step << Undead Warrior
    #label Fur
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
    >>击杀 |cRXP_ENEMY_杜隆塔尔猛虎|r。拾取他们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob 杜隆塔尔猛虎
step << Undead Warrior
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
    >>拾取散发绿光的 |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_血爪鞭尾龙|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step << Undead Warrior
    #softcore
    #completewith Zalazaneturnin2
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r,or run back
step << Undead Warrior
    #hardcore
    #completewith Zalazaneturnin2
    .goto Durotar,56.06,74.72,150 >>前往暴风城大教堂内，与 Sen'Jin Village
step << Undead Warrior
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    >>|cRXP_WARN_Jump into the hut|r
    .vendor >>Vendor trash 和 repair
    .target 特莱耶克
    .isOnQuest 808
step << Undead Warrior
    #label Zalazaneturnin2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gadrin|r 和 |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>交任务《 前往熔光镇》 明希纳的徽记
    .turnin 826 >>交任务《 前往熔光镇》 扎拉赞恩
    .goto Durotar,55.95,74.73
    .target 加德林大师
    .turnin 817 >>交任务《 前往熔光镇》 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target 维尔林·长牙
step << Undead Warrior
    #completewith RazorHill2UD
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull]|cRXP_WARN_. Save it for later|r
step << Undead Warrior
    #completewith RazorHill2UD
    .goto Durotar,52.38,43.77,120 >>前往暴风城大教堂内，与 Razor Hill
step << Undead Warrior
    #label RazorHill2UD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_加索克|r 和 |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>交任务《 前往熔光镇》 向奥戈尼尔报告
    .accept 806 >>接受任务《物归己用》 黑暗风暴
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务《 前往熔光镇》 背信弃义的人类
    .turnin 830 >>交任务《 前往熔光镇》 将军的命令
    .accept 831 >>接受任务《物归己用》 将军的命令
    .target 加索克
    .goto Durotar,51.95,43.50
    .turnin 815 >>交任务《 前往熔光镇》 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往暴风城大教堂内，与 Far Watch Post
    .zoneskip The Barrens
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务《 前往熔光镇》 部落的新兵
    .accept 842 >>接受任务《物归己用》 十字路口征兵
    .target 卡加尔·战痕
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务《 前往熔光镇》 老兵犹塞克
    .accept 1498 >>接受任务《物归己用》 防御之道
    .target 犹塞克
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1524 >>接受任务《物归己用》 火焰的召唤
    .target 卡纳尔·菲斯
step << !Tauren
    #softcore
    #completewith Xroads1
    .goto The Barrens,50.72,32.61
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .subzoneskip 380
step << !Tauren
    #hardcore
    #completewith Xroads1
    .goto The Barrens,52.34,29.27,150 >>前往暴风城大教堂内，与 The Crossroads
step << !Tauren
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接受任务《物归己用》 遗忘之池
    .target 图加·符文图腾
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>交任务《 前往熔光镇》 十字路口征兵
    .accept 844 >>接受任务《物归己用》 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接受任务《物归己用》 送往奥格瑞玛的肉
    .target 扎尔夫
step << !Tauren
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接受任务《物归己用》 追踪窃贼
    .target 加兹罗格
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r
    .accept 871 >>接受任务《物归己用》 保卫前沿哨所
    .accept 5041 >>接受任务《物归己用》 十字路口的补给品
    .target 索克
step << !Tauren
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    >>|cRXP_WARN_Do NOT fly to Orgrimmar!|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .target 迪弗拉克
    .subzoneskip 380,1
step << Orc/Troll
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    >>|cRXP_WARN_Do NOT fly to Orgrimmar!|r
    .turnin 6365 >>交任务《 前往熔光镇》 送往奥格瑞玛的肉
    .accept 6384 >>接受任务《物归己用》 飞往奥格瑞玛
    .target 迪弗拉克
    .zoneskip Orgrimmar
step << !Tauren
    #label Xroads1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>接受任务《物归己用》 菌类孢子
    .accept 1492 >>接受任务《物归己用》 码头主管迪兹维格
    .target 药剂师赫布瑞姆
step << !Tauren
    #completewith next
    >>收集地上的 |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_as you loot the mushrooms. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_锅炉搅拌器|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    .goto The Barrens,45.06,22.54
    >>Dive 对话 to the |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>收集地上的 |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_in the area. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_锅炉搅拌器|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #hardcore
    #completewith PoolsTurnin
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>前往暴风城大教堂内，与 The Crossroads
step << !Tauren
    #softcore
    #completewith PoolsTurnin
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << !Tauren
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .turnin 848 >>交任务《 前往熔光镇》 菌类孢子
    .timer 7,Fungal Spores RP
    .accept 853 >>接受任务《物归己用》 [DEPRECATED] 药剂师扎玛
    .target 药剂师赫布瑞姆
step << !Tauren
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔格|r
    >>|cRXP_BUY_Buy one or more|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << !Tauren
    #label PoolsTurnin
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务《 前往熔光镇》 遗忘之池
    .accept 877 >>接受任务《物归己用》 死水绿洲
    .target 图加·符文图腾
step << Warrior/Shaman
    #softcore
    #completewith next
    .goto The Barrens,49.75,49.54
    .subzone 378 >>Travel south down the road toward Camp Taurajo
    >>|cRXP_WARN_Once you are at the waypoint arrow (or further south of it), die and respawn at the|r |cRXP_FRIENDLY_灵魂医者|r
step << Warrior/Shaman
    #hardcore
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Travel south down the road toward Camp Taurajo
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .target 欧姆萨·雷角
step << Warrior/Shaman
    #completewith next
    .zone Mulgore >>前往暴风城大教堂内，与 Mulgore
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>接受任务《物归己用》 被破坏的货车
	.unitscan 摩林·云行者
step << !Tauren
    #completewith next
    .subzone 222 >>前往暴风城大教堂内，与 Bloodhoof Village
step << !Tauren
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r
    .accept 11129 >>接受任务《物归己用》 凯雷失踪了！
    .target 阿哈布·麦蹄
step << !Tauren
    #completewith RavagedCaravanTI
    >>击杀 a |cRXP_ENEMY_Plainstrider|r. Loot it for |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
    .mob 老平原陆行鸟
step << !Tauren
    .goto Mulgore,53.74,48.17
    >>点击地上的 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务《 前往熔光镇》 被破坏的货车
    .accept 751 >>接受任务《物归己用》 被破坏的货车
step << !Tauren
    #label RavagedCaravanTI
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >>交任务《 前往熔光镇》 被破坏的货车
	.unitscan 摩林·云行者
step << !Tauren
    #loop
    .goto Mulgore,52.42,64.24,0
    .goto Mulgore,52.42,64.24,70,0
    .goto Mulgore,49.18,67.09,70,0
    .goto Mulgore,44.47,70.52,70,0
    .goto Mulgore,42.32,66.98,70,0
    .goto Mulgore,38.78,66.30,70,0
    >>击杀 a |cRXP_ENEMY_Plainstrider|r. Loot it for |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
    .mob 老平原陆行鸟
step << !Tauren
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>>找到 |cRXP_FRIENDLY_Kyle|r. Use the |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] to feed him
    >>|cRXP_WARN_He runs clockwise in circles around Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
    --TODO: Test beta, bugged on pserver
step << !Tauren
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r
    .turnin 11129 >>交任务《 前往熔光镇》 凯雷失踪了！
    .target 阿哈布·麦蹄
step << !Tauren
    #completewith TBFP
    .goto Thunder Bluff,31.86,66.67,30,0
    .goto Thunder Bluff,36.17,62.76,20 >>乘电梯进入雷霆崖
step << !Tauren !Paladin !Shaman
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>学习锤类武器
    .target 安塞瓦
step << Paladin/Shaman
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>学习双手锤
    .target 安塞瓦
    .money <0.1
step << !Tauren
    #completewith next
    .goto Thunder Bluff,45.6,52.0,15 >>Go up the tower
step << !Tauren
    #label TBFP
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>Get the Thunder Bluff Flight Path
	.target 塔尔
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往暴风城大教堂内，与 the Spirit Rise 和 enter the pools of vision
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>交任务《 前往熔光镇》 [DEPRECATED] 药剂师扎玛
    .target 药剂师扎玛
step << !Tauren
    #completewith next
    .hs >>Hearth to 剃刀岭，杜隆塔尔
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莎|r
    .accept 816 >>接受任务《物归己用》 刻骨铭心的伤痛
    .target 米莎·托克伦 
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受任务《物归己用》 沙漠之风
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
    >>拾取散发绿光的 |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务《 前往熔光镇》 沙漠之风
    .accept 835 >>接受任务《物归己用》 保卫商路
    .target 雷兹拉克
step
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接受任务《物归己用》 救命如救火
    .target 林纳格
step
    #completewith FindingAntidote
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>交任务《 前往熔光镇》 飞往奥格瑞玛
    .accept 6385 >>接受任务《物归己用》 双足飞龙驭手多拉斯
    .target 旅店老板格雷什卡
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >>交任务《 前往熔光镇》 双足飞龙驭手多拉斯
    .accept 6386 >>接受任务基特斯的美餐 Crossroads
    .target 多拉斯
step << Orc/Troll
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金|r
    .turnin 831 >>交任务《 前往熔光镇》 将军的命令
    .target 沃金
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接受任务《物归己用》 隐藏的敌人
    .target 萨尔
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r
    .trainer >>训练你的职业技能
    .target 派雷亚诺
step
    #label FindingAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_考格汉|r in the Cleft of Shadow
    .accept 813 >>接受任务《物归己用》 寻找解毒剂
    .target 考格汉
step
    #completewith FizzleKill
    >>|cRXP_WARN_Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it|r
    .abandon 812 >>Abandon Need for a Cure
step
    #completewith FizzleKill
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Jump into Thunder Ridge
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[小鬼]|cRXP_WARN_or|r |T136221:0|t[虚空行者]|cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .cast 2641 |cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
step
    #label FizzleKill
    .goto Durotar,42.13,26.67
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_火刃狂热者|r |cRXP_WARN_before you pull him|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[大地震击] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph]|cRXP_WARN_on|r|cRXP_ENEMY_Fizzle|r|cRXP_WARN_and kill the|r|cRXP_ENEMY_小鬼|r|cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob 小鬼爪牙
    .mob 火刃狂热者
    .mob 闪电蜥蜴
step << Warrior
    #completewith next
    .goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
step << Warrior
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>击杀 |cRXP_ENEMY_闪电蜥蜴|r。拾取他们的 |cRXP_ENEMY_大鳞|r
    .complete 1498,1 --Singed Scale (5)
    .mob 闪电蜥蜴
step << !Warrior
    .goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge
    .isQuestComplete 806
step
    #loop
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30,50,0
    >>|cRXP_WARN_Travel south alongside the river toward Far Watch Post|r
    >>击杀 |cRXP_ENEMY_巨齿鳄鱼|r on the way. Loot them for |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Skip this quest for now if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob 巨齿鳄鱼
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
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1525 >>接受任务《物归己用》 火焰的召唤
    .target 泰尔夫·祖拉姆
step
    #softcore
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r,or run to Razor Hill
step
    #hardcore
    #completewith next
    .subzone 362 >>前往暴风城大教堂内，与 Razor Hill
    .subzoneskip 362
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>交任务《 前往熔光镇》 黑暗风暴
    .accept 828 >>接受任务《物归己用》 玛高兹
    .target 奥戈尼尔·魂痕
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r
    .train 547 >>训练你的职业技能
    .target 斯瓦特
    .xp <12,1
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <12,1
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>前往 Halfhill |cRXP_FRIENDLY_玛高兹|r
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛高兹|r
    .turnin 828 >>交任务《 前往熔光镇》 玛高兹
    .accept 827 >>接受任务《物归己用》 骷髅石
    .target 玛高兹
step
    #completewith next
    >>击杀 |cRXP_ENEMY_毒尾蝎|r。拾取他们的 |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
step
    #label EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,55.09,9.91,20 >>进入 cave
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
    >>击杀 |cRXP_ENEMY_Burning Blade Orcs|r. 拾取地上的 them for their |cRXP_LOOT_Collars|r 和 for a |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step
    #requires EnterGazzuzCave
    #softcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Kill |cRXP_ENEMY_Gazz'uz|r. Loot him for his |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Use the |T134085:0|t[|cRXP_LOOT_燃影之眼|r] to start the quest|r
    >>|cRXP_WARN_You can run to bodies of water found within the cave to evade the|r |cRXP_ENEMY_虚空行者|r |cRXP_WARN_after killing|r |cRXP_ENEMY_加祖兹|r
    >>|cRXP_WARN_Be careful as he is  difficult. You can skip this quest if you need|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务《物归己用》 燃影之眼
    .use 4903
	.unitscan 加祖兹
step
    #requires EnterGazzuzCave
    #hardcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Kill |cRXP_ENEMY_Gazz'uz|r. Loot him for his |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Use the |T134085:0|t[|cRXP_LOOT_燃影之眼|r] to start the quest|r
    >>|cRXP_WARN_You can run to bodies of water found within the cave to evade the|r |cRXP_ENEMY_虚空行者|r |cRXP_WARN_after killing|r |cRXP_ENEMY_加祖兹|r
    >>|cRXP_WARN_This quest is VERY difficult to solo. Skip it if you can't find a group|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>接受任务《物归己用》 燃影之眼
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
    >>击杀 |cRXP_ENEMY_Burning Blade Orcs|r. 拾取地上的 them for their |cRXP_LOOT_Collars|r 和 for a |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Skip the|r |cRXP_LOOT_Lieutenant's Insignia|r |cRXP_WARN_if you're unlucky with the drop|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob 火刃狂热者
    .mob 火刃学徒
step
    #completewith next
    >>击杀 |cRXP_ENEMY_毒尾蝎|r。拾取他们的 |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛高兹|r
    .turnin 827 >>交任务《 前往熔光镇》 骷髅石
    .accept 829 >>接受任务《物归己用》 尼尔鲁·火刃
    .target 玛高兹
step << Shaman
    #completewith next
    .subzone 371 >>前去找 Dustwind Cave
step << Shaman
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>击杀 |cRXP_ENEMY_火刃祭司|r. 拾取并获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob 火刃祭司
step << !Shaman
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Travel through the cave
step << Shaman
    #completewith next
    .goto Durotar,53.94,27.85,30 >>Jump down into Drygulch Ravine
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
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>Travel through the cave toward |cRXP_FRIENDLY_雷兹拉克|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务《 前往熔光镇》 保卫商路
    .target 雷兹拉克
step
    #loop
    .goto Durotar,42.09,20.91,0
    .goto Durotar,42.09,20.91,50,0
    .goto Durotar,39.38,18.69,50,0
    .goto Durotar,41.22,16.82,50,0
    .goto Durotar,44.14,17.17,50,0
    .goto Durotar,36.75,25.47,50,0
    >>击杀 |cRXP_ENEMY_毒尾蝎|r。拾取他们的 |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob 毒尾蝎
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith NeeruFireblade
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务《 前往熔光镇》 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5726
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_考格汉|r
    .turnin 813 >>交任务《 前往熔光镇》 寻找解毒剂
    .target 考格汉
    .itemcount 4904,<1 --Venomtail Antidote
step
    #optional
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>交任务《 前往熔光镇》 尼尔鲁·火刃
    .turnin 832 >>交任务《 前往熔光镇》 燃影之眼
    .accept 809 >>接受任务《物归己用》 雅克塞罗斯
    .target 尼尔鲁·火刃
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>交任务《 前往熔光镇》 尼尔鲁·火刃
    .accept 809 >>接受任务《物归己用》 雅克塞罗斯
    .target 尼尔鲁·火刃
step
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
step
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Enter Ragefire Chasm
step
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >>Die 和 Respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接受任务《物归己用》 救命如救火
    .turnin 812 >>交任务《 前往熔光镇》 救命如救火
    .target 林纳格
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莎|r
    .turnin 816 >>交任务《 前往熔光镇》 刻骨铭心的伤痛
    .target 米莎·托克伦
    .isQuestComplete 816
step
    #completewith next
    .goto The Barrens,62.26,19.38 
    .subzone 379 >>前往暴风城大教堂内，与 Far Watch Post
    .zoneskip The Barrens
step
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务《 前往熔光镇》 雅克塞罗斯
    .accept 924 >>接受任务《物归己用》 恶魔之种
    .target 雅克塞罗斯
step
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Loot the|r |T134095:0|t[有瑕疵的能量石] |cRXP_WARN_next to|r |cRXP_FRIENDLY_雅克塞罗斯|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>交任务《 前往熔光镇》 有瑕疵的能量石
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务《 前往熔光镇》 防御之道
    .accept 1502 >>接受任务《物归己用》 索恩格瑞姆·火眼
    .target 犹塞克
]])
