if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group 选择生存向指南 (H)
<< Horde
#name 14-16 The Barrens
#version 7
#subgroup 选择生存向指南 1-30
#next 16-18 Ghostlands

step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
step << BloodElf/Undead
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fp Orgrimmar >>获取塞尔萨玛的飞行路径
    .target 多拉斯
step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Durotar >>离开奥格瑞玛
step << BloodElf/Undead
    #completewith next
    .subzone 362 >>前往暴风城大教堂内，与 Razor Hill
step << BloodElf/Undead
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>接受任务《物归己用》 部落的新兵
    .target 塔克林·寻路者
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_This is a low level quest that rewards 10x|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_(10 second instant root on enemy). This is extremely valuable when in dangerous situations, it could save your life!|r
    >>|cRXP_WARN_Skip this step if you do not wish to get it|r
    .accept 818 >>接受任务《物归己用》 沃纳尔大师
    .target 沃纳尔大师
step << BloodElf/Undead
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
    .isOnQuest 818
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_This is a low level quest that rewards 10x|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_(10 second instant root on enemy). This is extremely valuable dangerous situations!|r
    >>|cRXP_WARN_Skip this step if you do not wish to get it|r
    .accept 818 >>接受任务《物归己用》 沃纳尔大师
    .target 沃纳尔大师
    .isQuestComplete 818
step << BloodElf/Undead
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往暴风城大教堂内，与 Far Watch Post
    .zoneskip The Barrens
step << BloodElf/Undead
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务《 前往熔光镇》 部落的新兵
    .accept 842 >>接受任务《物归己用》 十字路口征兵
    .target 卡加尔·战痕
step << BloodElf/Undead
    #completewith CrossRoads1
    .subzone 380 >>前往暴风城大教堂内，与 the Crossroads
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接受任务《物归己用》 追踪窃贼
    .target 加兹罗格
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>接受任务《物归己用》 码头主管迪兹维格
    .accept 848 >>接受任务《物归己用》 菌类孢子
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r
    .accept 871 >>接受任务《物归己用》 保卫前沿哨所
    .accept 5041 >>接受任务《物归己用》 十字路口的补给品
    .target 索克
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接受任务《物归己用》 遗忘之池
    .target 图加·符文图腾
step << Undead/BloodElf
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>交任务《 前往熔光镇》 十字路口征兵
    .accept 844 >>接受任务《物归己用》 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step
    #label CrossRoads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接受任务《物归己用》 追踪窃贼
    .target 加兹罗格
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务基特斯的美餐 Crossroads
    .target 扎尔夫
step
    #completewith DisruptTheAttacks
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob 钢鬃寻水者
    .complete 871,2 --Razormane Thornweaver (8)
    .mob 钢鬃织棘者
    .complete 871,3 --Razormane Hunter (3)
    .mob 钢鬃猎手
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r from the ground 和 start the quest
    >>|cRXP_WARN_If it's not up you'll get it later|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务《物归己用》 老陈的空酒桶
step << Shaman
    #sticky
    #label FireTar2
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>击杀 a |cRXP_ENEMY_Razormane Water Seeker|ror |cRXP_ENEMY_钢鬃织棘者|r.拾取地上的 them for a |cRXP_LOOT_Fire Tar|r
    .complete 1525,1 --Fire Tar (1)
    .mob 钢鬃寻水者
    .mob 钢鬃织棘者
step
    #label DisruptTheAttacks
	.goto The Barrens,53.63,24.50,25,0
	.goto The Barrens,54.26,24.64,25,0
	.goto The Barrens,54.81,25.19,25,0
	.goto The Barrens,55.50,25.61,25,0
	.goto The Barrens,55.86,26.30,25,0
	.goto The Barrens,55.83,27.15,25,0
	.goto The Barrens,55.41,27.41,25,0
	.goto The Barrens,54.50,26.97,25,0
	.goto The Barrens,54.05,26.11,25,0
	.goto The Barrens,53.51,25.24,25,0
	.goto The Barrens,53.63,24.50,25,0
    >>击杀 |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob 钢鬃寻水者
    .complete 871,2 --Razormane Thornweaver (8)
    .mob 钢鬃织棘者
    .complete 871,3 --Razormane Hunter (3)
    .mob 钢鬃猎手
step
    #optional
    #completewith next
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #label PlainstriderBeaks
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>交任务《 前往熔光镇》 平原陆行鸟的威胁
    .accept 845 >>接受任务《物归己用》 斑马的威胁
    .target 瑟格拉·黑棘
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r
    .turnin 871 >>交任务《 前往熔光镇》 保卫前沿哨所
    .accept 872 >>接受任务《物归己用》 前沿哨所的进攻
    .target 索克
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r from the ground 和 start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务《物归己用》 老陈的空酒桶
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
step
    #optional
    #completewith next
    >>拾取散发绿光的 |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob 克里尼格·糟鼻
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
step
    #loop
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58,30,0
    .goto The Barrens,58.38,27.01,0
    .goto The Barrens,59.46,24.58,0
    >>拾取散发绿光的 |cRXP_PICK_Crossroads' Supply Crates|r
    >>|cRXP_WARN_It has multiple spawn locations|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,58.90,25.37,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>击杀 any |cRXP_ENEMY_Zhevra|r you see. 拾取地上的 them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务《 前往熔光镇》 部落的新兵
    .accept 842 >>接受任务《物归己用》 十字路口征兵
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >>前去找 Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
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
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1526 >>接受任务《物归己用》 火焰的召唤
    .target 泰尔夫·祖拉姆
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use the|r |T134732:0|t[火焰灵契]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>击杀 the |cRXP_ENEMY_火焰之魂|r. Loot him for a |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob 火焰之魂
step << Shaman
    .goto Durotar,38.96,58.22
    >>点击地上的 |cRXP_PICK_Brazier|r on the ground
    .turnin 1526 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 1527 >>接受任务《物归己用》 火焰的召唤
step << Shaman
    #optional
    #completewith FireEnd
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << Shaman
    #optional
    #completewith next
    >>击杀 any |cRXP_ENEMY_Zhevra|r you see. 拾取地上的 them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>交任务《 前往熔光镇》 火焰的召唤
    .target 卡纳尔·菲斯
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r from the ground 和 start the quest
    >>|cRXP_WARN_Wait for the respawn if it's not up|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务《物归己用》 老陈的空酒桶
step
    #optional
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>击杀 |cRXP_ENEMY_快步斑马|r。拾取他们的 |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step << Tauren
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务《 前往熔光镇》 部落的新兵
    .accept 842 >>接受任务《物归己用》 十字路口征兵
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r
    .accept 887 >>接受任务《物归己用》 南海海盗
    .target 加兹鲁维
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .target 布拉高克
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 与 |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>接受任务《物归己用》 什么什么平衡器
    .goto The Barrens,62.98,37.22
    .accept 895 >>接受任务《物归己用》 通缉：嘉维伊船长
    .goto The Barrens,62.59,37.47
    .target 斯布特瓦夫
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[普通长剑] |cRXP_BUY_from him|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip th|re |T135353:0|t[普通长剑] |cRXP_WARN_when you are level 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135353:0|t[普通长剑]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[法师之杖] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[芒刺斧] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[巨型石锤] |cRXP_BUY_from him|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133046:0|t[巨型石锤] |cRXP_WARN_when you are level 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[法师之杖] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[战士阔剑] |cRXP_BUY_from him|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[战士阔剑] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the second|r |T135343:0|t[战士阔剑] |cRXP_WARN_in your off-hand|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>交任务《 前往熔光镇》 老陈的空酒桶
    .accept 821 >>接受任务《物归己用》 老陈的空酒桶
    .target 酿酒师德罗恩
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[果汁] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .home >>将你的炉石设置为夜色镇 << !BloodElf !Undead
    .vendor >>把垃圾物品卖给商人
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target 旅店老板维尔雷
    .bindlocation 392 << !BloodElf !Undead
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_Delete the|r |T133735:0|t[Control Console Operating Manual]|cRXP_WARN_from your bags, as it's no longer needed|r
step
    #optional
    #completewith BaronLongshore
    >>击杀 |cRXP_ENEMY_南海歹徒|r 和 |cRXP_ENEMY_南海炮兵|r
    .complete 887,1 --Southsea Brigand (12)
    .mob 南海歹徒
    .complete 887,2 --Southsea Cannoneer (6)
    .mob 南海炮兵
step << skip --Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan 塔赞
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Kill |cRXP_ENEMY_Baron Longshore|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He can be found in one of the camps|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan 巴隆·朗绍尔
step
    #label SouthSea
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>击杀 |cRXP_ENEMY_南海歹徒|r 和 |cRXP_ENEMY_南海炮兵|r
    .complete 887,1 --Southsea Brigand (12)
    .mob 南海歹徒
    .complete 887,2 --Southsea Cannoneer (6)
    .mob 南海炮兵
step << skip --Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r
    >>|cRXP_WARN_He patrols up and down the hill|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan 塔赞
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 887 >>交任务《 前往熔光镇》 南海海盗
    .turnin 895 >>交任务《 前往熔光镇》 通缉：嘉维伊船长
    .accept 890 >>接受任务《物归己用》 [DEPRECATED] 丢失的货物
    .target 加兹鲁维
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>交任务《 前往熔光镇》 码头主管迪兹维格
    .turnin 890 >>交任务《 前往熔光镇》 [DEPRECATED] 丢失的货物
    .accept 892 >>接受任务《物归己用》 [DEPRECATED] 丢失的货物
    .target 码头管理员迪兹维格
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 892 >>交任务《 前往熔光镇》 [DEPRECATED] 丢失的货物
    --.accept 888 >>Accept Stolen Booty
    .target 加兹鲁维
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135353:0|t[普通长剑] |cRXP_BUY_from him|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[普通长剑] |cRXP_WARN_when you are level 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[普通长剑]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[法师之杖] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[芒刺斧] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[巨型石锤] |cRXP_BUY_from him|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T133046:0|t[巨型石锤] |cRXP_WARN_when you are level 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[法师之杖] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equip the|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[战士阔剑] |cRXP_BUY_from him|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[战士阔剑] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞往十字路口，北贫瘠之地
    .target 布拉高克
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>杀掉 |cRXP_ENEMY_Zhevras|r。拾取他们的 |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 和 |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>交任务《 前往熔光镇》 十字路口的补给品
    .turnin 872 >>交任务《 前往熔光镇》 前沿哨所的进攻
    .target 索克
    .goto The Barrens,51.50,30.87
    .turnin 845 >>交任务《 前往熔光镇》 斑马的威胁
    .turnin 842 >>交任务《 前往熔光镇》 十字路口征兵 << Tauren
    .accept 903 >>接受任务《物归己用》 猎杀雌狮
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_巴尔格|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[锋利的箭]|cRXP_BUY_or|r |T132384:0|t[重弹丸]|cRXP_BUY_from him|r
    .target 巴尔格
step
    #completewith RegtharDeathgate1
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .maxlevel 16
step
    #completewith next
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>接受任务《物归己用》 科卡尔首领
    .target 雷戈萨·死门
step
    #completewith Barak
    >>收集地上的 |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Dive 对话 to the |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_巴拉克·科多班恩|r's melee hits deal a LOT of damage and he is protected by a |cRXP_ENEMY_科卡尔牧民|r. They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    #completewith next
    >>击杀 every |cRXP_ENEMY_Raptor|ryou see.拾取地上的 them for their |cRXP_LOOT_头部|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>击杀 |cRXP_ENEMY_草原徘徊者|r。拾取他们的 |cRXP_LOOT_Claws|r 和 |cRXP_LOOT_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob 草原徘徊者
step
    #loop
    .goto The Barrens,44.55,23.53,0
    .goto The Barrens,44.55,23.53,40,0
    .goto The Barrens,45.09,22.04,40,0
    .goto The Barrens,45.43,22.93,40,0
    .goto The Barrens,44.97,24.03,40,0
    >>收集地上的 |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>交任务《 前往熔光镇》 科卡尔首领
    .accept 851 >>接受任务《物归己用》 狂热的维罗戈
    .target 雷戈萨·死门
step
    #completewith CrossRoads3
    .subzone 380 >>前往暴风城大教堂内，与 The Crossroads
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>交任务《 前往熔光镇》 菌类孢子
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>交任务《 前往熔光镇》 猎杀雌狮
    .accept 881 >>接受任务《物归己用》 埃其亚基
    .target 瑟格拉·黑棘
step
    #label CrossRoads3
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务《 前往熔光镇》 遗忘之池
    .accept 877 >>接受任务《物归己用》 死水绿洲
    .target 图加·符文图腾
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务《 前往熔光镇》 追踪窃贼
    .accept 3281 >>接受任务《物归己用》 [DEPRECATED] 被偷走的银币
    .target 加兹罗格
    .isQuestComplete 869
step
    #completewith Samophlange
    >>击杀 |cRXP_ENEMY_Raptors|r。拾取他们的 |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[埃其亚基的号角] to summon |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_埃其亚基|r doesn't spawn after using the|r |T134227:0|t[埃其亚基的号角]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_埃其亚基|r didn't spawn after using the|r |T134227:0|t[埃其亚基的号角]|cRXP_WARN_or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>接受任务《物归己用》 埃其亚基
    .target 瑟格拉·黑棘
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[埃其亚基的号角] to summon |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>点击 the |cRXP_PICK_控制台|r
    .turnin 894 >>交任务《 前往熔光镇》 什么什么平衡器
    .accept 900 >>接受任务《物归己用》 什么什么平衡器
step
    .goto The Barrens,52.33,11.57
    >>点击地上的 |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Be careful! Two mobs will spawn after you shut off the Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>点击地上的 |cRXP_PICK_Valve|r
    >>|cRXP_WARN_One mob will spawn after you shut off the Valve|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>点击地上的 |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>点击地上的 |cRXP_PICK_控制台|r
    .turnin 900 >>交任务《 前往熔光镇》 什么什么平衡器
    .accept 901 >>接受任务《物归己用》 什么什么平衡器
step
    .goto The Barrens,52.84,10.40
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r in the building. Loot him for his |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob 工匠斯尼格斯
step
    .goto The Barrens,52.40,11.65
    >>点击地上的 |cRXP_PICK_控制台|r
    .turnin 901 >>交任务《 前往熔光镇》 什么什么平衡器
    .accept 902 >>接受任务《物归己用》 什么什么平衡器
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 平原陆行鸟的肾脏
step
    #loop
    .goto The Barrens,54.3,12.3,0
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    >>击杀 |cRXP_ENEMY_Raptors|r。拾取他们的 |cRXP_LOOT_头部|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step << Druid
	#completewith DruidTrainB1
	.cast 18960 >>传送到月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业技能 << wotlk
    .train 8925 >>训练你的职业技能 << TBC
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8938 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrainB1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 6756 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <20,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .hs >>Hearth to 棘齿城，贫瘠之地
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 392,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet
    .cooldown item,6948,<0
step << !Undead !BloodElf
    #label SamuTurnin1
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 >>交任务《 前往熔光镇》 什么什么平衡器
    .accept 1483 >>接受任务《物归己用》 [DEPRECATED] 菲兹克斯
    .target 斯布特瓦夫
step << !Undead !BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target 起重机操作员比戈弗兹
step << !Undead !BloodElf
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>接受任务《物归己用》 一定是因为角
    .accept 1069 >>接受任务《物归己用》 [DEPRECATED] 深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step << !Undead !BloodElf
    #completewith EcheyakeeTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>飞往十字路口，贫瘠之地
    .target 布拉高克
    .subzoneskip 380
step << Undead/BloodElf
    #completewith EcheyakeeTurnin
    .subzone 380 >>前往暴风城大教堂内，与 the Crossroads
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务《 前往熔光镇》 追踪窃贼
    .accept 3281 >>接受任务《物归己用》 [DEPRECATED] 被偷走的银币
    .target 加兹罗格
step
    #label EcheyakeeTurnin
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>交任务《 前往熔光镇》 埃其亚基
    .accept 905 >>接受任务《物归己用》 在迅猛龙的巢穴里
    .target 瑟格拉·黑棘
step
    #completewith BarrensEnd
    .destroy 10327 >>|cRXP_WARN_Destroy|r |T134227:0|t[埃其亚基的号角] |cRXP_WARN_as you no longer need it|r
step << Undead/BloodElf
    #completewith SamuTurnin2
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>飞往棘齿城
    .target 迪弗拉克
    .subzoneskip 392
step << Undead/BloodElf
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 >>交任务《 前往熔光镇》 什么什么平衡器
    .accept 1483 >>接受任务《物归己用》 [DEPRECATED] 菲兹克斯
    .target 斯布特瓦夫
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target 起重机操作员比戈弗兹
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target 起重机操作员比戈弗兹
step << Undead/BloodElf
    #label SamuTurnin2
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>接受任务《物归己用》 一定是因为角
    .accept 1069 >>接受任务《物归己用》 [DEPRECATED] 深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step << !BloodElf/Undead
    #completewith BarrensEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛，杜隆塔尔
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Undead/BloodElf
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>飞往奥格瑞玛，杜隆塔尔
    .target 布拉高克
    .zoneskip Orgrimmar
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_制造|r |T133685:0|t[Linen Bandages] |cRXP_WARN_until your skill is 40 or higher|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_阿诺克|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[亚麻布]|cRXP_WARN_to reach 40 skill|r
    .train 3276 >> Train |T133688:0|t[Heavy Linen Bandage]
    .target 阿诺克
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_制造|r |T133688:0|t[Heavy Linen Bandages]|cRXP_WARN_until your skill is 50 or higher|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_阿诺克|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[亚麻布]|cRXP_WARN_to reach 50 skill|r
    .train 3274 >> Train Journeyman First Aid
    .target 阿诺克
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8102 >>训练你的职业技能
    .target 乌尔库
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >>训练你的职业技能
    .target 乌尔库
    .xp <18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 8019 >>训练你的职业技能
    .target 卡德里斯
    .xp <16,1
    .xp >18,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 913 >>训练你的职业技能
    .target 卡德里斯
    .xp <18,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .train 6761 >>训练你的职业技能
    .target 申苏尔
step << skip --Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .train 6761 >>训练你的职业技能
    .accept 2379 >>接受任务《物归己用》 赞杜沙
    .target 申苏尔
step << skip --Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞杜沙|r
    .turnin 2379 >>交任务《 前往熔光镇》 赞杜沙
    .accept 2382 >>接受任务《物归己用》 棘齿城的维尼克斯
    .target 赞杜沙
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 1455 >>训练你的职业技能
    .target 米尔科特
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 1014 >>训练你的职业技能
    .target 米尔科特
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_库古尔|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target 库古尔
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_库古尔|r and buy |T133738:0|t[Grimoire of Firebolt (Rank 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target 库古尔
    .xp <18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 285 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <16,1
    .xp >18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 8198 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 13795 >>训练你的职业技能
    .target 奥玛克
    .xp <16,1
    .xp >18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 2643 >>训练你的职业技能
    .target 奥玛克
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r
    .train 24557 >>训练你的宠物技能
    .target 肖祖
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>学习锤类武器
    .target 哈纳什
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r
    .train 264 >>Train Bows
    .target 哈纳什
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r
    .train 172 >>Train Two-Handed Axes
    .train 227 >>学习锤类武器
    .target 哈纳什
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135490:0|t[强化弓] |cRXP_BUY_from him|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target 森度吉安
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equip the|r |T135490:0|t[强化弓]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入 RFC Instance portal. Zone in
    .dungeon RFC
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step
    >>Kill |cRXP_ENEMY_Taragaman the Hungerer|r. Loot him for his |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
    .dungeon RFC
step
    #optional
    #label BarrensEnd
step << Undead !Rogue/BloodElf !Rogue
    .hs >>Hearth to 塔奎林，幽魂之地
    .bindlocation 3488,1
    .subzoneskip 3488
step << BloodElf Rogue/Undead Rogue
    .hs >>Hearth to 银月城
    .bindlocation 3487,1
    .subzoneskip 3487
step << !Undead !BloodElf
    #completewith ZeptoUC2
    .goto Durotar,45.54,12.14
    .zone Durotar >>离开奥格瑞玛
step << !Undead !BloodElf
    #label ZeptoUC2
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
step << !Undead !BloodElf
    #completewith PorttoSilvermoon2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step << !Undead !BloodElf
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here
step << !Undead !BloodElf
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>使用炮台来击沉从东方驶来的小艇 the |cRXP_PICK_传送宝珠|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_Make sure you've trained|r |T136058:0|t[开锁]|cRXP_WARN_for a quest later|r
    .accept 10372 >>接受任务《物归己用》 谨慎的询问
    .train 6761 >>训练你的职业技能
    .target 瑟兰尼斯
step << !BloodElf !Undead
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
    .zoneskip Silvermoon City,1
step << !BloodElf !Undead
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >>飞往塔奎林，幽魂之地
    .target 葛拉米
    .zoneskip Ghostlands
step << BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
    .zoneskip Silvermoon City,1
step << BloodElf Rogue/Undead Rogue
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >>飞往塔奎林，幽魂之地
    .target 葛拉米
    .zoneskip Ghostlands

]])