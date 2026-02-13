if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group 选择生存向指南 (H)
<< Horde
#name 1-6 Mulgore
#version 7
#subgroup 选择生存向指南 1-30
#defaultfor Tauren
#next 6-12 Mulgore


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grull|r
    .accept 747 >>接受任务《物归己用》 开始狩猎
    .target 格鲁尔·鹰风
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 >>接受任务《物归己用》 一件琐事
    .target 鹰风酋长
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_平原陆行鸟|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .mob 平原陆行鸟
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kawnie|r
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Train |T132333:0|t[战斗怒吼]
    .target 哈鲁特·雷角
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Meela|r
    .train 8017 >>影袭 |T136086:0|t[石化武器]
    .target 米拉·晨行者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_经典怀旧服 NPC|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长的母亲|r
    .turnin 752 >>交任务《 前往熔光镇》 一件琐事
    .accept 753 >>接受任务《物归己用》 一件琐事
    .target 鹰风酋长的母亲
step
    .goto Mulgore,50.22,81.37
    >>拾取散发绿光的 |cRXP_LOOT_Water Pitcher|r on the well behind |cRXP_FRIENDLY_Hawkwind|r
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
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_经典怀旧服 NPC|r 和 |cRXP_LOOT_乱羽|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob 平原陆行鸟
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>交任务《 前往熔光镇》 开始狩猎 << Druid
    .turnin 747 >>交任务《 前往熔光镇》 开始狩猎 << !Druid
    .accept 3091 >>接受任务《物归己用》 简易便笺 << Warrior
    .accept 3092 >>接受任务《物归己用》 风化便笺 << Hunter
    .accept 3093 >>接受任务《物归己用》 符文便笺 << Shaman
    .accept 3094 >>接受任务《物归己用》 绿色便笺 << Druid
    .accept 750 >>接受任务《物归己用》 继续狩猎
    .target 格鲁尔·鹰风
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[轻弹丸]|cRXP_BUY_from her|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .isQuestAvailable 750
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 >>交任务《 前往熔光镇》 一件琐事
    .accept 755 >>接受任务《物归己用》 大地母亲的仪式
    .target 鹰风酋长
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Buy a|r |T135139:0|t[学徒法杖] |cRXP_BUY_from him|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target 马沙克·利刃
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Equip the|r |T135139:0|t[学徒法杖]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>击杀 |cRXP_ENEMY_山狮|r。拾取他们的 |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob 山狮
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灰舌先知|r
    >>|cRXP_WARN_Grind mobs on the way|r
    .turnin 755 >>交任务《 前往熔光镇》 大地母亲的仪式
    .accept 757 >>接受任务《物归己用》 力量仪祭
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
    >>击杀 |cRXP_ENEMY_山狮|r。拾取他们的 |cRXP_LOOT_Pelts|r
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
    .xp 3+1150 >>击杀 to 1150+/1400xp
    .mob 平原陆行鸟
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Grind |cRXP_ENEMY_平原陆行鸟|r. Loot them until you have 2 silver worth of vendor items|r
    .mob 平原陆行鸟
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Grind |cRXP_ENEMY_平原陆行鸟|r. Loot them until you have 1 silver worth of vendor items|r
    .mob 平原陆行鸟
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>交任务《 前往熔光镇》 继续狩猎
    .accept 780 >>接受任务《物归己用》 斗猪
    .target 格鲁尔·鹰风
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kawnie|r
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
    .isQuestAvailable 3376
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>接受任务《物归己用》 刺鬃酋长
    .target 卫兵维萨罗·风羽
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>交任务《 前往熔光镇》 简易便笺
    .train 100 >>Train |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>交任务《 前往熔光镇》 简易便笺
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 哈鲁特·雷角
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>交任务《 前往熔光镇》 风化便笺
    .train 1978 >>Train |T132204:0|t[毒蛇钉刺]
    .target 兰卡·远箭
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务《 前往熔光镇》 绿色便笺
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target 加尔特·迷雾行者
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>接受任务《物归己用》 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>交任务《 前往熔光镇》 符文便笺
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
    >>击杀 |cRXP_ENEMY_斗猪|r。拾取他们的 |cRXP_LOOT_Flanks|r 和 |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob 斗猪
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>Travel through the cave
step
    #completewith DirtyMap
    >>击杀 |cRXP_ENEMY_Bristleback Quilboars|r。拾取他们的 |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob 刺背野猪人
step << Shaman
    #completewith DirtyMap
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob 刺背萨满祭司
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Kill |cRXP_ENEMY_Chief Sharptusk Thornmantle|r inside the big hut. Loot him for his |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob 锋牙·刺鬃酋长
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>进入 Cave
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Loot the |T134269:0|t[|cRXP_LOOT_Dirt-stained Map|r] on the ground. Use it to start the quest
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>接受任务《物归己用》 纳拉其营地的危机
    .use 4851
step << Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_Salves|r
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
    >>击杀 |cRXP_ENEMY_Bristleback Quilboars|r。拾取他们的 |cRXP_LOOT_Belts|r
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
    >>击杀 |cRXP_ENEMY_刺背萨满祭司|r。拾取他们的 |cRXP_LOOT_Salves|r
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
    .xp 5+870 >>击杀 to 880+/2800xp << !Shaman
    .xp 5 >>击杀 to level 5 << Shaman
    --1930
step
    #completewith next
    .hs >>使用炉石返回陶拉祖营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r 和 |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r 和 |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>交任务《 前往熔光镇》 斗猪
    .target 格鲁尔·鹰风
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>交任务《 前往熔光镇》 刺鬃酋长
    .target 卫兵维萨罗·风羽
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>交任务《 前往熔光镇》 大地的召唤 << Shaman
    .accept 1520 >>接受任务《物归己用》 大地的召唤 << Shaman
    .target 鸦羽先知 << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>交任务《 前往熔光镇》 纳拉其营地的危机
    .turnin 757 >>交任务《 前往熔光镇》 力量仪祭
    .accept 763 >>接受任务《物归己用》 大地母亲的仪式
    .target 鹰风酋长
    .goto Mulgore,44.18,76.07
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kawnie|r
    .vendor >>把垃圾物品卖给商人
    .target 卡文尼·柔风
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>前去找 the rock
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use the|r |T133970:0|t[大地灵契]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>交任务《 前往熔光镇》 大地的召唤
    .accept 1521 >>接受任务《物归己用》 大地的召唤
    .target 大地之魂
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>交任务《 前往熔光镇》 大地的召唤
    .target 鸦羽先知
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Meela|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target 史克里克
    .money <0.01
    .target 米拉·晨行者
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.02
step << Hunter
    #optional
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target 兰卡·远箭
    .money <0.01
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.02
step << Druid
    #optional
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Train |T136006:0|t[愤怒]
    .target 加尔特·迷雾行者
    .money <0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[招架]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target 哈鲁特·雷角
    .money <0.02
step << Warrior
    #optional
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[招架]
    .target 哈鲁特·雷角
    .money <0.01
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 >>接受任务《物归己用》 未完的任务
    .target 安图尔·荒野

]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group 选择生存向指南 (H)
<< Horde
#name 6-12 Mulgore
#version 7
#subgroup 选择生存向指南 1-30
#defaultfor Tauren
#next 12-14 Ghostlands

step
	#completewith BloodhoofHome
    .subzone 222 >>Run to 血蹄村，莫高雷
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r
    .accept 11129 >>接受任务《物归己用》 凯雷失踪了！
    .target 阿哈布·麦蹄
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_Ruul|r
    .turnin 763 >>交任务《 前往熔光镇》 大地母亲的仪式
    .accept 745 >>接受任务《物归己用》 土地之争
    .accept 767 >>接受任务《物归己用》 幻象仪祭
    .accept 746 >>接受任务《物归己用》 矮人的挖掘场
    .target 贝恩·血蹄
    .accept 743 >>接受任务《物归己用》 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.36,62.01
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务《 前往熔光镇》 未完的任务
    .home >>将你的炉石设置为暮色森林 Village
    .target 旅店老板考乌斯
    .isQuestAvailable 771
    .bindlocation 222
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[木槌棒] (7s 1c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[木槌棒] |cRXP_BUY_from him|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kennah|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[精制短枪] (4s 14c). You'll come back later if you don't have enough yet
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[精制短枪] |cRXP_BUY_from him|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[轻弹丸]|cRXP_BUY_from him|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target 肯纳·鹰眼
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
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
    +|cRXP_WARN_Equip the|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r 和 |cRXP_FRIENDLY_Mull|r
    .accept 766 >>接受任务《物归己用》 马兹拉纳其
    .target 茂尔·祈雨
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务《 前往熔光镇》 幻象仪祭
    .accept 771 >>接受任务《物归己用》 幻象仪祭
    .target 扎尔曼·双月
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务《物归己用》 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .accept 748 >>接受任务《物归己用》 有毒的水
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r 和 |cRXP_FRIENDLY_Harken|r
    .accept 766 >>接受任务《物归己用》 马兹拉纳其
    .target 茂尔·祈雨
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务《 前往熔光镇》 幻象仪祭
    .accept 771 >>接受任务《物归己用》 幻象仪祭
    .target 扎尔曼·双月
    .goto Mulgore,47.76,57.53
    .accept 761 >>接受任务《物归己用》 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>击杀 |cRXP_ENEMY_草原狼|r 和 . 拾取 their |cRXP_LOOT_Paws|r
    >>击杀 |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob 草原狼
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob 成年平原陆行鸟
step << !Tauren
    #completewith Ambercorns
    >>击杀 |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
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
    >>收集地上的 the |cRXP_PICK_Ambercorns|r
    >>|cRXP_WARN_They can be found under the trees on the ground|r
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>击杀 |cRXP_ENEMY_飞飞|r throughout Mulgore. 拾取 their |cRXP_LOOT_Quills|r
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
    >>击杀 |cRXP_ENEMY_草原狼|r 和 . 拾取 their |cRXP_LOOT_Paws|r
    >>Loot |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] and |cRXP_LOOT_Talons|r
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
    >>击杀 |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob 成年平原陆行鸟
step << Tauren
    #completewith next
    .use 33009>>找到 |cRXP_FRIENDLY_Kyle|r. Use the |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] to feed him
    >>|cRXP_WARN_He runs clockwise in circles around Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>交任务《 前往熔光镇》 有毒的水
    .accept 754 >>接受任务《物归己用》 净化冰蹄之井
    .target 穆尔·雷角
    --TODO: RP timer 748 turnin
step << Tauren
    #completewith next
    >>收集地上的 the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_Use the|r |T135139:0|t[Winterhoof Cleansing Totem]|cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>收集地上的 the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
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
    >>Go back 和 forth between the two camps. 击杀 |cRXP_ENEMY_白鬃制革工|r,|cRXP_ENEMY_白鬃剥皮工|r 和 |cRXP_ENEMY_白鬃偷猎者|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_断矛|r |cRXP_WARN_(Level 9 rare). He's too difficult to kill.|r
    .unitscan 断矛
    .complete 745,1 --Palemane Tanner (10)
    .mob 白鬃制革工
    .complete 745,2 --Palemane Skinner (8)
    .mob 白鬃剥皮工
    .complete 745,3 --Palemane Poacher (5)
    .mob 白鬃偷猎者
step
    #completewith KyleFed
    .use 33009>>找到 |cRXP_FRIENDLY_Kyle|r. Use the |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] to feed him
    >>|cRXP_WARN_He runs clockwise in circles around Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_from her|r << Warrior
    .vendor >>把垃圾物品卖给商人
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target 加纳·麦风
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mull|r 和 |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>交任务《 前往熔光镇》 净化冰蹄之井
    .accept 756 >>接受任务《物归己用》 雷角图腾
    .target 穆尔·雷角
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务《 前往熔光镇》 土地之争
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mull|r 和 |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>交任务《 前往熔光镇》 土地之争
    .target 贝恩·血蹄
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vira|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .money <0.01
    .target 维尔拉·幼蹄
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[木槌棒] (7s 1c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[木槌棒] |cRXP_BUY_from him|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kennah|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[精制短枪] (4s 14c). You'll come back later if you don't have enough yet
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[精制短枪] |cRXP_BUY_from him|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Do not follow the wolf that spawns|r
    .turnin 771 >>交任务《 前往熔光镇》 幻象仪祭
    .accept 772 >>接受任务《物归己用》 幻象仪祭
    .target 扎尔曼·双月
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Krang|r
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Narm|r
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
    .use 33009>>找到 |cRXP_FRIENDLY_Kyle|r. Use the |T134028:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r] to feed him
    >>|cRXP_WARN_He runs clockwise in circles around Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄 <老牛仔>|r
    .turnin 11129 >>交任务《 前往熔光镇》 凯雷失踪了！
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>接受任务《物归己用》 被破坏的货车
	.unitscan 摩林·云行者
step
    #completewith Clawsx
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>击杀 |cRXP_ENEMY_飞飞|r throughout Mulgore. 拾取 their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #completewith next
    >>击杀 |cRXP_ENEMY_恶魔猎犬|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob 草原狼
    .mob 草原狼前锋
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    .goto Mulgore,53.74,48.17
    >>点击地上的 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务《 前往熔光镇》 被破坏的货车
    .accept 751 >>接受任务《物归己用》 被破坏的货车
step << Tauren
	#label Clawsx
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>击杀 |cRXP_ENEMY_恶魔猎犬|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob 草原狼
    .mob 草原狼前锋
    .complete 756,2 --Cougar Claws (6)
    .mob 平原狮
step
    #completewith Thunderhorn
    .subzone 222 >>前往血蹄村
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务《 前往熔光镇》 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[学徒短杖] (5s 04c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[学徒短杖] |cRXP_BUY_from him|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target 玛诺特·深痕
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahnott|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[木槌棒] (7s 1c). You'll come back later if you don't have enough yet
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[木槌棒] |cRXP_BUY_from him|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target 玛诺特·深痕
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kennah|r
    .vendor >>Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[精制短枪] (4s 14c). You'll come back later if you don't have enough yet
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[精制短枪] |cRXP_BUY_from him|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Loorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target 姆拉特·远行
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
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
    +|cRXP_WARN_Equip the|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harant|r
    .vendor >>Vendor trash 和 repair
    .target 哈兰特·铁枝
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>交任务《 前往熔光镇》 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>交任务《 前往熔光镇》 雷角图腾
    .accept 758 >>接受任务《物归己用》 净化雷角之井
    .target 穆尔·雷角
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业技能
    .target 纳姆·逐星
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Krang|r
    .train 284 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_from him|r << Warrior
    .vendor >>把垃圾物品卖给商人 << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target 旅店老板考乌斯
    .money <0.025
    .isQuestAvailable 746
step
    #completewith Burial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>击杀 |cRXP_ENEMY_飞飞|r throughout Mulgore. 拾取 their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Use the|r |T135139:0|t[Thunderhorn Cleansing Totem]|cRXP_WARN_at the Well|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>击杀 |cRXP_ENEMY_巴尔丹掘地工|r and |cRXP_ENEMY_巴尔丹鉴定官|r. Loot them for their |T134707:0|t[|cRXP_LOOT_Prospector's Picks|r]
    .use 4702 >> |cRXP_WARN_Smash the|r |T134707:0|t[|cRXP_LOOT_Prospector's Picks|r] |cRXP_WARN_at the|r |cRXP_PICK_Forge|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_巴尔丹鉴定官|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
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
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_泰爪|r
    .complete 743,1 --Windfury Talon (8)
    .mob 风怒唤风者
    .mob 风怒鹰身人
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入 cave just north of the Windfury Harpies
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>交任务《 前往熔光镇》 幻象仪祭
    .accept 773 >>接受任务《物归己用》 智慧仪祭
    .target 先知奥萨迪·智慧行者
step
    #optional
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_删除|r |T134712:0|t[Water of the Seers] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]. Use it to start the quest
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_鬼嚎|r is difficult due to being 等级 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>接受任务《物归己用》 恶魔之伤
    .use 4854
    .unitscan 鬼嚎
step
	#completewith next
	>>击杀 |cRXP_ENEMY_飞飞|r throughout Mulgore. 拾取 their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>接受任务《物归己用》 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_Severed Quilboar Head|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务《 前往熔光镇》 智慧仪祭
    .accept 775 >>接受任务《物归己用》 雷霆崖之旅
    .target 先祖之魂
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>交任务《 前往熔光镇》 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #completewith next
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
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
	>>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 消瘦的猛鹫
    .mob 猛鹫
    .mob 长爪猛鹫
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
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
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
    .xp 9+3020 >>击杀 to 3020+/6500xp
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
    .xp 9+3720 >>击杀 to 3720+/6500xp
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
    .xp 9+3700 >>击杀 to 3700+/6500xp
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
    .xp 9+4400 >>击杀 to 4400+/6500xp
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>Hearth to 血蹄村，莫高雷
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>前往血蹄村
    .subzoneskip 222
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r
    .vendor >>把垃圾物品卖给商人
    .target 旅店老板考乌斯
    .isQuestAvailable 765
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r
    .turnin 770 >>交任务《 前往熔光镇》 恶魔之伤
    .target 斯考恩·白云
    .isOnQuest 770
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r 和 |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>交任务《 前往熔光镇》 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务《 前往熔光镇》 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务《 前往熔光镇》 净化雷角之井
    --.accept 759 >>Accept Wildmane Totem
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务《 前往熔光镇》 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
    --TODO: Add RP timer 758
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, and |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>交任务《 前往熔光镇》 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务《 前往熔光镇》 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务《 前往熔光镇》 净化雷角之井
    --.accept 759 >>Accept Wildmane Totem
    .target 穆尔·雷角
    .goto Mulgore,48.54,60.38
    --TODO: Add RP timer 758
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r 和 |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>交任务《 前往熔光镇》 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务《 前往熔光镇》 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
    .turnin 761 >>交任务《 前往熔光镇》 猎捕猛鹫
    .target 哈肯·风之图腾
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Baine|r 和 |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>交任务《 前往熔光镇》 矮人的挖掘场
    .target 贝恩·血蹄
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务《 前往熔光镇》 风怒鹰身人
    .target 卢尔·鹰爪
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_Delete the|r |T134707:0|t[Prospector's Picks] |cRXP_WARN_from your bags, as they're no longer needed|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[重弹丸]|cRXP_BUY_from him|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target 肯纳·鹰眼
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务《 前往熔光镇》 马兹拉纳其
    .target 茂尔·祈雨
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Krang|r
    .trainer >>训练你的职业技能
    .accept 1505 >>接受任务《物归己用》 老兵犹塞克
    .target 克朗·石蹄
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>接受任务《物归己用》 火焰的召唤
    .trainer >>训练你的职业技能
    .target 纳姆·逐星
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>接受任务《物归己用》 驯服野兽
    .trainer >>训练你的职业技能
    .target 雅文·刺鬃
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gennia|r
    .trainer >>训练你的职业技能
    .accept 5928 >>接受任务《物归己用》 响应召唤
    .target 根妮亚·符文图腾
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>训练你的职业技能
    .target 根妮亚·符文图腾
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_成年平原陆行鸟|r |cRXP_WARN_at max range|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob 成年平原陆行鸟
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6087 >>接受任务《物归己用》 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_草原捕食者|r |cRXP_WARN_at max range|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob 草原捕食者
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6088 >>接受任务《物归己用》 驯服野兽
    .target 雅文·刺鬃
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_飞飞|r |cRXP_WARN_at max range and re-cast it immediately if they knock you down|r
    >>|cRXP_WARN_If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob 猛鹫
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>交任务《 前往熔光镇》 驯服野兽
    .accept 6089 >>接受任务《物归己用》 训练野兽
    .target 雅文·刺鬃
step << !Hunter
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_from her|r << Warrior
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >>交任务《 前往熔光镇》 被破坏的货车
    .accept 764 >> The Venture Co
    .accept 765 >>菲兹普罗克主管
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >>交任务《 前往熔光镇》 被破坏的货车
	.unitscan 摩林·云行者
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>前往暴风城大教堂内，与 The Venture Co. Mine
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
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for his |cRXP_LOOT_Clipboard|r
    >>|cRXP_WARN_Run into the mine and hug the right/east side to each him|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 764 >>交任务《 前往熔光镇》 风险投资公司
    .turnin 765 >>交任务《 前往熔光镇》 菲兹普罗克主管
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
    .cast 1515 >>Tame a |cRXP_ENEMY_草原狼前锋|r
    >>|cRXP_WARN_This will allow you to train|r |T132140:0|t[Claw Rank 2]
    .mob 草原狼前锋
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Run into The Barrens
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .target 欧姆萨·雷角
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 >>接受任务《物归己用》 十字路口之旅
    .target 基尔格·锐角
step
    #completewith next
    .subzone 380 >>Travel north toward The Crossroads
    >>|cRXP_WARN_Make sure you stay on the road. Otherwise you may agro high level mobs|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_加兹罗格|r|cRXP_FRIENDLY_索克|r 和 |cRXP_FRIENDLY_贾汉|r
    .accept 870 >>接受任务《物归己用》 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
    .accept 844 >>接受任务《物归己用》 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.24,31.00
    .accept 869 >>接受任务《物归己用》 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 854 >>交任务《 前往熔光镇》 十字路口之旅 << Tauren
    .accept 871 >>接受任务《物归己用》 保卫前沿哨所
    .accept 5041 >>接受任务《物归己用》 十字路口的补给品
    .target 索克
    .goto The Barrens,51.50,30.87
    .accept 6361 >>接受任务《物归己用》 一捆兽皮
    .target 加翰·鹰翼
    .goto The Barrens,51.21,29.05
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务《 前往熔光镇》 一捆兽皮
    .accept 6362 >>接受任务《物归己用》 飞往雷霆崖
    .target 迪弗拉克
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>飞往雷霆崖，莫高雷
    .target 迪弗拉克
    .zoneskip Thunder Bluff
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务《 前往熔光镇》 飞往雷霆崖
    .accept 6363 >>接受任务《物归己用》 双足飞龙驭手塔尔
    .target 安哈努
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将你的炉石设置为暮色森林 Bluff
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 5932
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>交任务《 前往熔光镇》 雷霆崖之旅
    .target 凯恩·血蹄
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >>交任务《 前往熔光镇》 训练野兽
    .target 浩特·雷角
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_Drag|r |T132162:0|t[野兽训练] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务《 前往熔光镇》 响应召唤
    .accept 5922 >>接受任务《物归己用》 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>接受任务《物归己用》 月光林地
    .target 大德鲁伊哈缪尔·符文图腾
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>交任务《 前往熔光镇》 月光林地
    .accept 5930 >>接受任务《物归己用》 巨熊之灵
    .target 德迪利特·星焰
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target 巨熊之灵
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>交任务《 前往熔光镇》 巨熊之灵
    .accept 5932 >>接受任务《物归己用》 返回雷霆崖
    .target 德迪利特·星焰
step << Druid
    #completewith DruidBearForm
    .hs >>Hearth to 雷霆崖，莫高雷
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>飞往雷霆崖，莫高雷
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>交任务《 前往熔光镇》 返回雷霆崖
    .accept 6002 >>接受任务《物归己用》 身心之力
    .target 图拉克·符文图腾
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务《 前往熔光镇》 双足飞龙驭手塔尔
    .accept 6364 >>接受任务《物归己用》 向瓦尔格复命
    .target 塔尔
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫兰塔|r
    >>|cRXP_WARN_This will unlock an easy quest. If you already have 2 professions, skip this step|r
    .train 8613 >>Train |T134366:0|t[剥皮]
    .target 莫兰塔
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veren|r
    .accept 768 >>接受任务《物归己用》 收集皮革
    .target 维尔伦·陆行者
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师斯塔比|r
    .collect 2318,12,768,1 >>|cRXP_BUY_Buy Twelve|r |T134252:0|t[轻皮] |cRXP_BUY_from the Auction House|r
    .target 拍卖师斯塔比
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veren|r
    .turnin 768 >>交任务《 前往熔光镇》 收集皮革
    .target 维尔伦·陆行者
    .skill skinning,1,1
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 塔尔
    .zoneskip The Barrens
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉祖营地，贫瘠之地
    .target 塔尔
    .zoneskip The Barrens
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_使用|r |T132857:0|t[Cenarion Lunardust] |cRXP_WARN_at the|r |cRXP_PICK_Moonkin Stone|r
    >>击杀 |cRXP_ENEMY_月爪枭兽|r as he spawns. 与 |cRXP_FRIENDLY_月爪枭兽的灵魂|r 对话
    >>|cRXP_WARN_Be careful! |cRXP_ENEMY_Lunaclaw|r casts|r |T132152:0|t[痛击] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    >>|cRXP_WARN_Steer clear of the|r |cRXP_ENEMY_电角蜥蜴|r |cRXP_WARN_in the area|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob 月爪枭兽
    .target 月爪枭兽的灵魂
    .skipgossip
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>飞往雷霆崖，莫高雷
    .target 欧姆萨·雷角
    .zoneskip Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>交任务《 前往熔光镇》 身心之力
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 塔尔
    .zoneskip The barrens
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.2,29.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r
    .turnin 6364 >>交任务《 前往熔光镇》 向瓦尔格复命
    .target 加翰·鹰翼
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>将你的炉石设置为暮色森林
    .target 旅店老板伯兰德·草风
    .bindlocation 380
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T135154:0|t[短杖] |cRXP_BUY_from him|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target 纳加尔·死眼
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith MulgoreEnd
    +|cRXP_WARN_Equip the|r |T135154:0|t[短杖] |cRXP_WARN_when you are level 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Buy a|r |T133477:0|t[巨棒] |cRXP_BUY_from him|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target 纳加尔·死眼
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #optional
    #completewith MulgoreEnd
    +|cRXP_WARN_Equip the|r |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_阿瑟罗克|r
    >>|cRXP_BUY_Buy a lot of|r |T132384:0|t[重弹丸]|cRXP_BUY_from him|r
    >>|cRXP_WARN_You won't be able to buy more for a while!|r
    .collect 2519,1600,6061,1 --Heavy Shot (1600)
    .vendor >>把垃圾物品卖给商人
    .target 阿瑟罗克
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1524 >>接受任务《物归己用》 火焰的召唤
    .target 卡纳尔·菲斯
step << Shaman
    #completewith CallofFire2
    .zone Durotar >>前往暴风城大教堂内，与 Durotar
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
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain to |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1525 >>接受任务《物归己用》 火焰的召唤
    .target 泰尔夫·祖拉姆
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Travel the path back down the mountain
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务《 前往熔光镇》 老兵犹塞克
    .accept 1498 >>接受任务《物归己用》 防御之道
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
    >>击杀 |cRXP_ENEMY_闪电蜥蜴|r。拾取他们的 |cRXP_ENEMY_大鳞|r
    .complete 1498,1 --Singed Scale (5)
    .mob 闪电蜥蜴
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务《 前往熔光镇》 防御之道
    .accept 1502 >>接受任务《物归己用》 索恩格瑞姆·火眼
    .target 犹塞克
step
    #completewith FurlScornbrow
    .zone Durotar >>前往暴风城大教堂内，与 Durotar
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
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接受任务《物归己用》 新的背包
    .target 弗恩·凝眉
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Torka|r
    .accept 815 >>接受任务《物归己用》 恐龙蛋大餐
    .target 厨师托尔卡
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r
    .accept 784 >>接受任务《物归己用》 背信弃义的人类
    .accept 837 >>接受任务《物归己用》 野猪人的进犯
    .target 加索克
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >>前往塔纳利斯 Keep
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Move toward the 秒 floor of the keep
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
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
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
    .goto Durotar,52.06,68.30,50 >>前去找 Sen'jin Village
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接受任务《物归己用》 苦工的重担
    .target 乌克尔
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r 和 |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>接受任务《物归己用》 生活所需的虎皮
    .target 维尔林·长牙
    .goto Durotar,55.95,73.93
    .accept 818 >>接受任务《物归己用》 沃纳尔大师
    .target 沃纳尔大师
    .goto Durotar,55.94,74.40
    .accept 808 >>接受任务《物归己用》 明希纳的徽记
    .accept 826 >>接受任务《物归己用》 扎拉赞恩
    .accept 823 >>接受任务《物归己用》 向奥戈尼尔报告
    .target 加德林大师
    .goto Durotar,55.94,74.72
step
    #completewith TaillasherEggs
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Shellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Tigers|r. Loot them for their |cRXP_LOOT_Fur|r. This does not have to be finished now
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
    >>拾取散发绿光的 |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_血爪鞭尾龙|r
    .complete 815,1 --Taillasher Egg (3)
    .mob 血爪鞭尾龙
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>Swim to the main island
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Shellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith MinshinasSkull
    >>击杀 |cRXP_ENEMY_妖术巨魔|r 和 |cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Voodoo Trolls|r |cRXP_WARN_can cast|r |T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .mob 妖术巨魔
    .complete 826,2 --Voodoo Troll (8)
    .mob 巫毒巨魔
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[大地震击] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_Be careful. He can cast|r |T136052:0|t[治疗波]|cRXP_WARN_. Use your|r |T134829:0|t[药水] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的 one of the |cRXP_LOOT_骷髅|ron the ground
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[大地震击] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_Be careful. He can cast|r |T136052:0|t[治疗波]|cRXP_WARN_. Use your|r |T134829:0|t[药水] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob 扎拉赞恩
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Tigers|r。拾取他们的 |cRXP_LOOT_Fur|r
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
    >>击杀 |cRXP_ENEMY_小海浪蟹|r 和 |cRXP_ENEMY_海浪蟹|r。拾取他们的 |cRXP_LOOT_Mucus|r
    >>击杀 |cRXP_ENEMY_Makrura Shellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
    >>|cRXP_WARN_Go to the southern islands if you're not almost done with this quest at this point. Many|r |cRXP_ENEMY_海蟹|r |cRXP_WARN_and|r |cRXP_ENEMY_龙虾人|r |cRXP_WARN_can be found there|r
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
    >>击杀 |cRXP_ENEMY_Tigers|r。拾取他们的 |cRXP_LOOT_Fur|r
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
    >>击杀 |cRXP_ENEMY_Makrura Shellhides|r 和 |cRXP_ENEMY_巨钳龙虾人|r。拾取他们的 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob 海浪蟹
    .mob 成熟海浪蟹
    .complete 818,1 --Intact Makrura Eye (4)
    .mob 厚壳龙虾人
    .mob 巨钳龙虾人
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往暴风城大教堂内，与 Sen'Jin Village
    .subzoneskip 367
step
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特莱耶克|r
    >>|cRXP_WARN_You can talk to him from outside the hut|r
    .vendor >>Vendor trash 和 repair
    .target 特莱耶克
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r 和 |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>交任务《 前往熔光镇》 明希纳的徽记
    .turnin 826,2 >>交任务《 前往熔光镇》 扎拉赞恩 << Shaman
    .turnin 826 >>交任务《 前往熔光镇》 扎拉赞恩 << !Shaman
    .target 加德林大师
    .goto Durotar,55.95,74.73
    .turnin 818 >>交任务《 前往熔光镇》 沃纳尔大师
    .target 沃纳尔大师
    .goto Durotar,55.95,74.39
    .turnin 817 >>交任务《 前往熔光镇》 生活所需的虎皮
    .target 维尔林·长牙
    .goto Durotar,55.95,73.93
step
    #completewith Encroachment
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
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
    .goto Durotar,49.60,40.04,8 >>沿着塔楼向上前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>交任务《 前往熔光镇》 新的背包
    .target 弗恩·凝眉
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>接受任务《物归己用》 部落的新兵
    .target 塔克林·寻路者
    .xp <10,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r 和 |cRXP_FRIENDLY_加索克|r
    .turnin 815 >>交任务《 前往熔光镇》 恐龙蛋大餐
    .target 厨师托尔卡
    .goto Durotar,51.12,42.46
    .turnin 823 >>交任务《 前往熔光镇》 向奥戈尼尔报告
    .target 奥戈尼尔·魂痕
    .goto Durotar,52.25,43.18
    .turnin 784 >>交任务《 前往熔光镇》 背信弃义的人类
    .turnin 837 >>交任务《 前往熔光镇》 野猪人的进犯
    .turnin 830 >>交任务《 前往熔光镇》 将军的命令
    .accept 831 >>接受任务《物归己用》 将军的命令
    .target 加索克
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索塔尔|r
    .train 14281 >>训练你的职业技能
    .target 索塔尔
    .xp <12,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .turnin 2161 >>交任务《 前往熔光镇》 苦工的重担
    .target 旅店老板格罗斯克
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_Buy one or more|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,835,1 --Small Brown Pouch (1)
    .target 加尔克
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯瓦特|r
    .train 1535 >>训练你的职业技能
    .target 斯瓦特
    .xp <12,1
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
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受任务《物归己用》 沙漠之风
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
    >>拾取散发绿光的 |cRXP_PICK_Stolen Supply Sacks|r from the ground
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
    .xp 11+7270 >>击杀 to 7270/8700
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务《 前往熔光镇》 沙漠之风
    .target 雷兹拉克
    .isQuestComplete 834
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    >>|cRXP_WARN_Don't fly anywhere!|r
    .fp Orgrimmar >>获取塞尔萨玛的飞行路径
    .target 多拉斯
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务《 前往熔光镇》 将军的命令
    .target 纳兹格雷尔
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 1535 >>训练你的职业技能
    .target 卡德里斯
    .xp <12,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 7384 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 14281 >>训练你的职业技能
    .target 奥玛克
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r
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
    .goto Undercity,52.94,89.60,10 >>进入磨坊 Quarter
    .dungeon RFC
step
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r
    .accept 5725 >>接受任务《物归己用》 毁灭之力
    .target 瓦里玛萨斯
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Take the elevator back to the upper level and the go up the stairs toward the |cRXP_PICK_传送宝珠|r
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here
step
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>使用炮台来击沉从东方驶来的小艇 the |cRXP_PICK_传送宝珠|r
step << Tauren Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>前去找 |cRXP_FRIENDLY_伊蕾达|r
step << Tauren Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊蕾达|r
    .train 202 >>Train 2h Swords
    .target 伊蕾达
    .money <0.1000
step
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
step
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >>获取暴风城的飞行路径
    .target 葛拉米
step
    #completewith next
    .subzone 3462 >>前往暴风城大教堂内，与 Fairbreeze Village
step
    .goto Eversong Woods,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Landra|r
    .accept 9144 >>接受任务《物归己用》 迷失在幽魂之地
    .target 魔导师兰德拉·晨行者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dawnstrider|r 和 |cRXP_FRIENDLY_Thedra|r
    .turnin 9144 >>交任务《 前往熔光镇》 迷失在幽魂之地
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >>接受任务《物归己用》 倒下的信使
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
    >>击杀 |cRXP_ENEMY_饥饿的鬼爪山猫|r 和 |cRXP_ENEMY_迷雾蝠|r。拾取他们的 |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob 饥饿的鬼爪山猫
    .mob 迷雾蝠
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thedra|r 和 |cRXP_FRIENDLY_Dawnstrider|r
    .turnin 9147 >>交任务《 前往熔光镇》 倒下的信使
    .target 药剂师瑟德拉
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >>接受任务《物归己用》 送往塔奎林的信件
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
step
    #completewith next
    .subzone 3488 >>前往暴风城大教堂内，与 Tranquillien
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vandril|r
    .turnin 9148 >>交任务《 前往熔光镇》 送往塔奎林的信件
    .accept 9327 >>接受任务《物归己用》 被遗忘者 << BloodElf
    .accept 9329 >>接受任务《物归己用》 被遗忘者 << !BloodElf
    .target 奥术师范迪瑞尔
step
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sunwing|r
    .fp Tranquillien >>获取铁炉堡的飞行路径
    .target 飞行管理员加尼斯·日翼
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mavren|r
    .turnin 9327 >>交任务《 前往熔光镇》 被遗忘者 << BloodElf
    .turnin 9329 >>交任务《 前往熔光镇》 被遗忘者 << !BloodElf
    .accept 9758 >>接受任务《物归己用》 返回奥术师范迪瑞尔身边
    .target 高级执行官玛尔伦
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vandril|r
    .turnin 9758 >>交任务《 前往熔光镇》 返回奥术师范迪瑞尔身边
    .accept 9138 >>接受任务《物归己用》 日冕村
    .target 奥术师范迪瑞尔
step
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathi|r
    .accept 9152 >>接受任务《物归己用》 托博尔的补给品
    .target 拉提斯·托博尔

]])
