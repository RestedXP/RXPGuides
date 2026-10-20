if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 12-16级 荒芜之地
#displayname 14-16 The Barrens << !Shaman !Hunter !Tauren
#displayname 15-16 The Barrens << Paladin
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#next 16-17 怒焰裂谷


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> 进入尘风洞穴
step << Tauren Shaman
    #loop
    .goto 1411/1,-4706.71,902.41,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>击杀 |cRXP_ENEMY_祭司|r，拾取他们掉落的 |cRXP_LOOT_试剂袋|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob 火刃祭司
step << Tauren Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加尔|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target 卡加尔·战痕
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>前往山顶
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索恩格瑞姆|r 对话
    .turnin 1502 >>交任务 索恩格瑞姆·火眼
    .accept 1503 >>接受任务 锻造好的钢锭
    .target 索恩格瑞姆·火眼
step << Tauren Warrior
    .goto 1413/1,-2955.48,-188.04
    >>打开 |cRXP_PICK_被盗的铁箱|r，拾取其中的 |cRXP_LOOT_锻造钢锭|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>前往山顶
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索恩格瑞姆|r 对话
    .turnin 1503 >>交任务 锻造好的钢锭
    .target 索恩格瑞姆·火眼
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> 死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .xp >15,1
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .subzone 380 >> 前往十字路口
    .xp <15,1
step << !Tauren
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> 前往十字路口
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
    .target 扎尔夫
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 842 >>交任务 十字路口征兵 << !Druid
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 98024 >>交任务 十字路口之旅 << Skyborne
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
    .maxlevel 15
step << Skyborne
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 98024 >>交任务 十字路口之旅
    .target 索克
    .maxlevel 15
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    >>|cRXP_WARN_不要飞往奥格瑞玛！|r
    .turnin 6365 >>交任务 送往奥格瑞玛的肉
    .accept 6384 >>接受任务 飞往奥格瑞玛
    .target 迪弗拉克
step << Undead/Skyborne
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fp >> 获得十字路口的飞行点
    .target 迪弗拉克
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .accept 848 >>接受任务菌类孢子
    .turnin 1358 >>交任务 给赫布瑞姆的样本
    .target 药剂师赫布瑞姆
    .isOnQuest 1358
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .accept 848 >>接受任务菌类孢子
    .target 药剂师赫布瑞姆
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r|cRXP_BUY_对话。|r |cRXP_BUY_从他那里购买一把|r|T135499:0|t[多层弯弓]
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target 阿瑟罗克
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_装备上|r |T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
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
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
step << !Tauren
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >> 将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc/Troll
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
    .target 扎尔夫
step
    #optional
    #completewith DisruptTheAttacks
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #optional
    #completewith DisruptTheAttacks
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step << !Tauren !Undead !Skyborne
    #completewith DemonSeed
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> 前往山顶
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> 进入恐雾洞穴
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>右键点击 |cRXP_PICK_祭坛|r
    >>|cRXP_WARN_请确保你身上带有|r |T134095:0|t[有瑕疵的能量石]|cRXP_WARN_（30 分钟时限）|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #sticky
    #label FireTar2
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>击杀 |cRXP_ENEMY_钢鬃寻水者|r 或 |cRXP_ENEMY_钢鬃织棘者|r，拾取它们掉落的 |cRXP_LOOT_火焰焦油|r
    .complete 1525,1 --Fire Tar (1)
    .mob 钢鬃寻水者
    .mob 钢鬃织棘者
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_寻水者|r, |cRXP_ENEMY_织棘者|r and |cRXP_ENEMY_猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob 钢鬃寻水者
    .complete 871,2 --Razormane Thornweaver (8)
    .mob 钢鬃织棘者
    .complete 871,3 --Razormane Hunter (3)
    .mob 钢鬃猎手
    .isOnQuest 871
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> 拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> 接受任务 老陈的空酒桶
    .isOnQuest 871
step
    #requires FireTar2 << Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,0
	.goto 1413/1,-2811.59,-42.780,50,0
	.goto 1413/1,-2875.43,-52.24,50,0
	.goto 1413/1,-2931.16,-89.40,50,0
	.goto 1413/1,-3001.08,-117.78,50,0
	.goto 1413/1,-3037.56,-164.390,50,0
	.goto 1413/1,-3034.52,-221.82,50,0
	.goto 1413/1,-2991.96,-239.39,50,0
	.goto 1413/1,-2899.75,-209.66,50,0
	.goto 1413/1,-2854.15,-151.56,50,0
	.goto 1413/1,-2799.43,-92.78,50,0
    >>击杀 |cRXP_ENEMY_寻水者|r, |cRXP_ENEMY_织棘者|r and |cRXP_ENEMY_猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob 钢鬃寻水者
    .complete 871,2 --Razormane Thornweaver (8)
    .mob 钢鬃织棘者
    .complete 871,3 --Razormane Hunter (3)
    .mob 钢鬃猎手
    .isOnQuest 871
step
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 842 >>交任务 十字路口征兵 << Tauren Shaman
    .turnin 844 >>交任务  平原陆行鸟的威胁
    .accept 845 >>接受任务 斑马的威胁
    .target 瑟格拉·黑棘
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 844 >>交任务  平原陆行鸟的威胁
    .accept 845 >>接受任务 斑马的威胁
    .target 瑟格拉·黑棘
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 871 >>交任务 野猪人的袭击
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .isQuestComplete 871
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .isQuestTurnedIn 871
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step << Orc/Troll
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    >>|cRXP_WARN_不要飞往奥格瑞玛！|r
    .turnin 6365 >>交任务 送往奥格瑞玛的肉
    .accept 6384 >>接受任务 飞往奥格瑞玛
    .target 迪弗拉克
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r|cRXP_BUY_对话。|r |cRXP_BUY_从他那里购买一把|r|T135499:0|t[多层弯弓]
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target 阿瑟罗克
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克 |r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135613:0|t[猎人火枪]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target 阿瑟罗克
step << Orc Warrior/Troll Warrior/Tauren Warrior/Skyborne Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_检查|r |cRXP_FRIENDLY_利扎雷克|r |cRXP_WARN_是否在十字路口。他出售药水和|r |T133476:0|t|T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r] |cRXP_WARN_，这是一种限量供应的物品|r
	.unitscan 里扎雷克斯
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .vendor >>准备食物和水 << !Rogue !Warrior
    .vendor >>准备食物 << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .isOnQuest 872,5041,845
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> 拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果没有刷新，请等待其重新出现|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> 接受任务 老陈的空酒桶
    .isOnQuest 872
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .isOnQuest 872
step
    #optional
    #completewith next
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>击杀 |cRXP_ENEMY_克里尼格·糟鼻|r，拾取他的 |cRXP_LOOT_獠牙|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob 克里尼格·糟鼻
    .isOnQuest 872
step
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,0
    .goto 1413/1,-3382.10,-54.27,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .isOnQuest 872
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .isOnQuest 872
step << !Tauren !Undead !Skyborne
    #optional
    #completewith next
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
    .isQuestComplete 924
step << !Tauren !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 924 >>交任务  恶魔之种
    .target 雅克塞罗斯
    .isQuestComplete 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> 前往 杜隆塔尔
    .isOnQuest 1525
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #requires ShamanDurotar
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> 沿着山路向上前往 |cRXP_FRIENDLY_泰尔夫|r
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1525 >>交任务 火焰的召唤
    .accept 1526 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_使用|r |T134732:0|t[火焰灵契]
    .use 6636
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>击杀 |cRXP_ENEMY_火焰之魂|r，拾取掉落的 |cRXP_LOOT_发光余烬|r
    .complete 1526,1 --Glowing Ember (1)
    .mob 火焰之魂
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>点击地上的 |cRXP_PICK_火盆|r
    .turnin 1526 >>交任务 火焰的召唤
    .accept 1527 >>接受任务 火焰的召唤
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith FireEnd
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith next
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 1527 >>交任务 火焰的召唤
    .target 卡纳尔·菲斯
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> 拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果没有刷新，请等待其重新出现|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> 接受任务 老陈的空酒桶
step
    #completewith RatchetEnter
    >>击杀 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞尖啸龙
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>击杀 |cRXP_ENEMY_快步斑马|r。拾取他们的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
    .isOnQuest 872
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_快步斑马|r。拾取他们的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
    .isNotOnQuest 872
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> 前往棘齿城
    .isOnQuest 845
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .accept 97253 >>接受任务 Parts and Pieces
    .target 卑鄙的维尼克斯
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .accept 887 >>接受任务 南海海盗
    .target 加兹鲁维
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fp Ratchet >> 获取棘齿城飞行路径
    .target 布拉高克
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_通缉布告|r 对话
    .accept 894 >>接受任务 什么什么平衡器
    .goto 1413/1,-3759.06,-902.18
    .accept 895 >>接受任务 通缉：嘉维伊船长
    .goto 1413/1,-3719.54,-919.07
    .target 斯布特瓦夫
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_BUY_ |r艾隆萨尔|cRXP_FRIENDLY_|r 对话，|cRXP_BUY_向他购买 |r|cRXP_BUY_|T135353:0|t[普通长剑]|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_在达到 16 级 时。|r装备|cRXP_WARN_ |T135353:0|t[尖剑]|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T135353:0|t[普通长剑]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_|T132394:0|t[芒刺斧]|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔 |r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T133046:0|t[巨型石锤] |r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤] |cRXP_WARN_等你达到 16级时|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T135343:0|t[战士阔剑] |r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_. |r从他那里购买第2把|cRXP_BUY_ |T135343:0|t[战士阔剑]作为你的副手武器|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_将第二把|r |T135343:0|t[战士阔剑] |cRXP_WARN_装备在你的副手|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 819 >>交任务 老陈的空酒桶
    .accept 821 >>接受任务 老陈的空酒桶
    .target 酿酒师德罗恩
    .isOnQuest 819
step
    #optional
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德罗恩|r 对话
    .accept 821 >>接受任务 老陈的空酒桶
    .target 酿酒师德罗恩
    .isQuestTurnedIn 819
step << Mage/Priest/Warlock/Shaman/Druid
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> 把垃圾物品卖给商人
    --.collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target 旅店老板维尔雷
    .isOnQuest 887
    .xp <15,1
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_从背包中删除|r |T133735:0|t[控制台操作手册]|cRXP_WARN_，因为已不再需要|r
step
    #optional
    #completewith BaronLongshore
    >>击杀 |cRXP_ENEMY_南海歹徒|r 和 |cRXP_ENEMY_南海炮兵|r
    .complete 887,1 --Southsea Brigand (12)
    .mob 南海歹徒
    .complete 887,2 --Southsea Cannoneer (6)
    .mob 南海炮兵
step << Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他在第一个营地生成，并沿着山坡向上巡逻|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>击杀 |cRXP_ENEMY_巴隆·朗绍尔|r，拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_他可以在其中一个营地中找到|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan 巴隆·朗绍尔
step
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>击杀 |cRXP_ENEMY_南海歹徒|r 和 |cRXP_ENEMY_南海炮兵|r
    .complete 887,1 --Southsea Brigand (12)
    .mob 南海歹徒
    .complete 887,2 --Southsea Cannoneer (6)
    .mob 南海炮兵
step
    #label SouthSea
    #loop
    .goto 1413/1,-3657.700,-1435.500,0
    .goto 1413/1,-3675.100,-1364.100,40,0
    .goto 1413/1,-3598.900,-1378.800,40,0
    .goto 1413/1,-3657.700,-1435.500,40,0
    .goto 1413/1,-3654.900,-1482.400,40,0
    .goto 1413/1,-3680.100,-1593.000,40,0
    .goto 1413/1,-3614.800,-1632.800,40,0
    .goto 1413/1,-3611.500,-1692.500,40,0
    >>在地上拾取 |cRXP_PICK_Handful of Complicated Parts|r
    .complete 97253,1 --|5/5 Handful of Complicated Parts
    .isOnQuest 97253
step << Orc Rogue/Troll Rogue
    #loop
    .goto 1413/1,-3895.600,-1365.000,0
    .goto 1413/1,-3677.99,-1392.00,50,0
    .goto 1413/1,-3895.600,-1365.000,50,0
    .goto 1413/1,-3826.300,-1487.300,50,0
	>>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他在第一个营地生成，并沿着山坡向上巡逻|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 887 >>交任务  南海海盗
    .turnin 895 >>交任务  通缉：嘉维伊船长
    .accept 890 >>接受任务 丢失的货物
    .target 加兹鲁维
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 97253 >>交任务 Parts and Pieces
    .target 卑鄙的维尼克斯
    .isQuestComplete 97253
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 1492 >>交任务码头管理员迪兹维格
    .turnin 890 >>交任务  丢失的货物
    .accept 892 >>接受任务 丢失的货物
    .accept 896 >>接受任务 矿工的宝贝
    .target 码头管理员迪兹维格
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 892 >>交任务  丢失的货物
    .accept 888 >>接受任务 被窃的货物
    .target 加兹鲁维
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_BUY_ |r艾隆萨尔|cRXP_FRIENDLY_|r 对话，|cRXP_BUY_向他购买 |r|cRXP_BUY_|T135353:0|t[普通长剑]|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_在达到 16 级 时。|r装备|cRXP_WARN_ |T135353:0|t[尖剑]|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135353:0|t[普通长剑]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_|T132394:0|t[芒刺斧]|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔 |r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T133046:0|t[巨型石锤] |r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤] |cRXP_WARN_等你达到 16级时|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T135343:0|t[战士阔剑] |r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_. |r从他那里购买第2把|cRXP_BUY_ |T135343:0|t[战士阔剑]作为你的副手武器|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << !Tauren
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >> 飞往十字路口
    .target 布拉高克
    .subzoneskip 380
    .isQuestComplete 845
step
    #optional
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>击杀|cRXP_ENEMY_斑马|r，拾取它们的 |cRXP_LOOT_蹄|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step << Tauren Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 782 >> 训练你的职业技能
    .target 洛甘纳尔
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <14,1
    .xp >16,1
step << Tauren Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8925 >> 训练你的职业技能
    .target 洛甘纳尔
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <16,1
step << Tauren
    #completewith FlyXroads2
    .hs >> 使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
step << Tauren Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 2645 >> 训练你的职业技能
    .target 提戈尔·逐星
    .xp <14,1
    .xp >16,1
step << Tauren Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8498 >> 训练你的职业技能
    .target 提戈尔·逐星
    .xp <16,1
step << Tauren Hunter/Tauren Warrior
    #completewith HunterTraining1 << Tauren Hunter
    #completewith WarriorTraining1 << Tauren Warrior
    .goto 1456/1,-123.26,-1394.49,60 >> 前往猎人高地
step << Tauren Hunter
    #label HunterTraining1
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 13795 >> 训练你的职业技能
    .target 乌瑞克·雷角
    .xp <16,1
step << Tauren Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24556 >> 训练你的宠物技能
    .target 赫苏瓦·雷角
step << Tauren Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 对话
    .train 1160 >>训练你的职业技能
    .target 托姆·暴怒图腾
    .xp <14,1
    .xp >16,1
step << Tauren Warrior
    #label WarriorTraining1
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 对话
    .train 285 >>训练你的职业技能
    .target 托姆·暴怒图腾
    .xp <16,1
step << Tauren
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step << Tauren
    #label FlyXroads2
    #completewith HidesTurnIn
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
step << Tauren
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .isQuestAvailable 903,850,867,901
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .turnin 872 >>交任务  前沿哨所的进攻
    .target 索克
    .isQuestTurnedIn 871
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 845 >>交任务  斑马的威胁
    .accept 903 >>接受任务 猎杀雌狮
    .target 瑟格拉·黑棘
step << Tauren
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾汉|r 对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target 加翰·鹰翼
    .isOnQuest 6364
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    >>|cRXP_BUY_从他处|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target 巴尔格
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132384:0|t[重弹丸]|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target 巴尔格
step << Troll Hunter/Orc Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r 对话
    .vendor >> 如果有出售的话，|cRXP_BUY_从他那里|r购买1把|cRXP_FRIENDLY_ |T135490:0|t[|r精良的长弓|cRXP_BUY_] 。同时补充箭矢库存|r
    >>|cRXP_WARN_如果它没有出售，请购买 |r|T135490:0|t[强化弓]|cRXP_WARN_作为代替|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target 阿瑟罗克
    .isOnQuest 903
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克 |r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135613:0|t[猎人火枪]|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target 阿瑟罗克
step
    #optional
    #completewith RegtharDeathgate1
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .isQuestTurnedIn 819
step
    #optional
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 850 >>接受任务 科卡尔首领
    .accept 855 >>接受任务 半人马护腕
    .target 雷戈萨·死门
step
    #optional
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 850 >>接受任务 科卡尔首领
    .target 雷戈萨·死门
step
    #optional
    #completewith KodobaneTurnin
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔风暴先知|r。拾取他们的 |cRXP_LOOT_半人马护腕|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #optional
    #completewith Barak
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto 1413/1,-1943.16,89.64
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_注意！|cRXP_ENEMY_ |r巴拉克·科多班恩|cRXP_ENEMY_ 的近战攻击伤害非常高，而且他还受到一名 |r科卡尔牧民|r 的保护。他们可以对你施放投网，并在远程对你进行射击
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .target 雷戈萨·死门
step
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 851 >>接受任务 狂热的维罗戈
    .target 雷戈萨·死门
    .isQuestTurnedIn 850
step
    #optional
    #completewith HarpyTalons
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>击杀 |cRXP_ENEMY_草原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob 草原徘徊者
    .isQuestTurnedIn 819
step
    #optional
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>杀死 |cRXP_ENEMY_Savannah Prowlers|r。拾取它们的 |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob 草原徘徊者
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>击杀 |cRXP_ENEMY_巫翼鹰身女妖|r 和 |cRXP_ENEMY_巫翼游荡者|r，拾取它们掉落的 |cRXP_LOOT_爪子|r
    .complete 867,1 --Witchwing Talon (8)
    .mob 巫翼鹰身人
    .mob 巫翼游荡者
step
    #optional
    #label HarpyTalons
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith Samophlange
    +|cRXP_WARN_小心区域内的 |r|cRXP_ENEMY_赤鳞镰爪龙|r|cRXP_WARN_。它们最高可达 18 级，并且会施放 |T132152:0|t[痛击]|r
    .xp >17,1
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith Samophlange
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.500,790.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .accept 95494 >>接受任务 Bruised 骄傲 and Lion Hides
    .accept 95507 >>接受任务 Vrang's 游戏
    .target 弗朗恩·凝血
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    >>|cRXP_FRIENDLY_弗朗恩|r |cRXP_WARN_出售|r |T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r]，|cRXP_WARN_该物品为限量供应|r << Tauren Warrior/Tauren Shaman/Druid
	.vendor	>> 出售垃圾物品并修理装备
    .target 弗朗恩·凝血
    .isQuestAvailable 95494,95507
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    >>在地上拾取 |cRXP_PICK_Sprung Traps|r
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>杀死 |cRXP_ENEMY_Savannah Patriarchs|r。拾取它们的 |cRXP_LOOT_Hides|r 和 |cRXP_LOOT_獠牙|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Patriarch
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>杀死 |cRXP_ENEMY_Savannah Patriarchs|r。拾取它们的 |cRXP_LOOT_Hides|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Patriarch
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>在地上拾取 |cRXP_PICK_Sprung Traps|r
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩·凝血|r 对话
    .turnin 95494 >>交任务 Bruised 骄傲 and Lion Hides
    .turnin 95507 >>交任务 Vrang's 游戏
    .accept 95495 >>接受任务 隐士坦纳
    .target 弗朗恩·凝血
    .isQuestComplete 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>沿着山路向上前进
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Walton|r 对话
    .turnin 95495 >>交任务 隐士坦纳
    .accept 95621 >>接受任务 Trouble in the Valley
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1611.500,549.000
    >>杀死 |cRXP_ENEMY_下士 Adamore|r
    >>|cRXP_WARN_小心！你可能同时激怒2-3个怪物|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1736.900,650.300,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>沿着山路向上前进
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Walton|r 对话
    .turnin 95621 >>交任务 Trouble in the Valley
    .accept 95508 >>接受任务 不速之客
    .timer 67,不速之客 RP
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1629.200,835.600
    >>在房子后面等待 RP 完成，避免同时被所有怪物激怒
    >>|cRXP_WARN_你其实不需要协助 |cRXP_FRIENDLY_Walton|r，他会在 |r弗朗恩·凝血|cRXP_FRIENDLY_ 的帮助下活下来|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Walton|r 对话
    .turnin 95508 >>交任务 不速之客
    .target Walton
    .isQuestTurnedIn 95494
step
    #completewith EcheyakeePickup
    .hs >> 炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .isQuestAvailable 901,881
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
    .isQuestComplete 869
step
    #optional
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
    .isQuestTurnedIn 869
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >> 交任务  菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    .turnin 867 >>交任务  鹰身强盗
    --.accept 875 >>Accept Harpy Lieutenants
    .target 达索克·快刀
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
    .target 曼科里克
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务  遗忘之池
    .accept 877 >>接受任务 死水绿洲
    .target 图加·符文图腾
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 903 >>交任务  猎杀雌狮
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith SamophlangeComplete
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    >>|cRXP_WARN_如果使用|cRXP_ENEMY_ |T134227:0|t[埃其亚基的号角]|r 后, |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_如果使用 |cRXP_ENEMY_|T134227:0|t[埃其亚基的号角]|r 后 |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请放弃 埃其亚基 任务，然后返回城镇重新接取|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>点击 |cRXP_PICK_控制台|r
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_小心！关闭阀门后会刷新两个怪物|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2675.80,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_关闭阀门后会刷新一个怪物|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2679.86,830.80
    >>点击 |cRXP_PICK_阀门|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2731.54,909.850
    >>在建筑内击杀 |cRXP_ENEMY_工匠斯尼格斯|r，拾取他的 |cRXP_LOOT_控制台钥匙|r
    .complete 901,1 --Console Key (1)
    .mob 工匠斯尼格斯
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>击杀 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>在这里升级到16级很重要，因为接下来的3个任务都相当困难
	.xp 16
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于淤泥沼泽的 |r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    .accept 858 >>接受任务 点火
    .target 维兹克兰克的伐木机
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_工头葛瑞尔斯|r 或|cRXP_WARN_ |r淤泥兽|cRXP_ENEMY_ |r刷新了，|cRXP_WARN_i请小心。它们是强力的 19 级稀有怪|r
    .unitscan 工头葛瑞尔斯
    .unitscan 淤泥畸体
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>击杀 |cRXP_ENEMY_鲁格维兹主管|r，拾取他的 |cRXP_LOOT_钥匙|r
    >>|cRXP_WARN_他会在平台上来回巡逻|r
    .complete 858,1 --Ignition Key (1)
    .mob 鲁格维兹主管
    .isOnQuest 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .turnin 858 >>交任务  点火
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestComplete 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestTurnedIn 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_当伐木机移动到高处时，会刷新两个|r |cRXP_ENEMY_风险投资公司雇佣兵|r |cRXP_WARN_。击杀他们后，等待他在终点的剧情事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob 风险投资公司雇佣兵
    .mob 风险投资公司苦工
    .mob 监工格里比
    .isOnQuest 863
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>击杀 |cRXP_ENEMY_风险投资公司执行者|r 和 |cRXP_ENEMY_风险投资公司监督|r，拾取掉落的 |cRXP_LOOT_猫眼翡翠|r
    >>|cRXP_WARN_如果击杀 25 个以上怪物仍未掉落，可以放心跳过这个任务|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob 风险投资公司执行者
    .mob 风险投资公司监督
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ssf
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>击杀|cRXP_ENEMY_风险投资公司监工|r，从他们身上拾取|T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ah
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>击杀|cRXP_ENEMY_风险投资公司监工|r，从他们身上拾取|T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    >>|cRXP_WARN_你也可以从拍卖行购买这些物品|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_跳跃到木质梁上，通过登出再登入执行返回角色选择跳过。如果你没有成功就跑回奥格瑞玛|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Orgrimmar

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 16-17 怒焰裂谷
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#next 17-18 洛丹伦废墟

step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> 现在你应该找个队伍去怒焰裂谷了
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_如果可能，让队伍成员分享以下任务|r
    >>|cRXP_WARN_如果需要，请在幽暗城里找人分享|r
    .accept 5725 >> 接受任务《物归己用》 毁灭之力
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_如果可能，让队友共享以下任务|r
    >>|cRXP_WARN_如果需要，请在雷霆崖里找人分享|r
    .accept 5722 >> 接受任务 寻找背包
    .accept 5723 >> 接受任务 试探敌人
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith EnterRFC
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>从西侧入口进入奥格瑞玛
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_制作|r |T133685:0|t[亚麻绷带]|cRXP_WARN_直到你的急救技能达到 40 或更高|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到40，请跳过此步骤|r
    .train 3276 >> 学习 |T133688:0|t[厚亚麻绷带]
    .target 阿诺克
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到50或更高|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到50，请跳过此步骤|r
    .train 3274 >> 学习 中级急救
    .target 阿诺克
    .skill firstaid,<40,1
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    +|cRXP_WARN_确保不要卖掉你的|r |T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8102 >> 训练你的职业技能
    .target 乌尔库
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >> 训练你的职业技能
    .target 乌尔库
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2120 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
step << Orc/Troll
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .turnin 6384 >>交任务 飞往奥格瑞玛
    .accept 6385 >>接受任务 双足飞龙驭手多拉斯
    .target 旅店老板格雷什卡
    .isOnQuest 6384
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >> 交任务 双足飞龙驭手多拉斯
    .accept 6386 >> 接受任务 返回十字路口
    .target 多拉斯
    .isOnQuest 6385
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .accept 6386 >> 接受任务 返回十字路口
    .target 多拉斯
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    >>|cRXP_WARN_不要乘坐飞行路线前往任何地方！|r
    .fp Orgrimmar >> 获取奥格瑞玛飞行点
    .target 多拉斯
    .isQuestAvailable 4921
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 285 >> 训练你的职业技能
    .target 格雷兹·怒拳
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 8198 >> 训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 13795 >> 训练你的职业技能
    .target 奥玛克
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 2643 >> 训练你的职业技能
    .target 奥玛克
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24557 >> 训练你的宠物技能
    .target 肖祖
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 227 >>学习法杖
    .target 哈纳什
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 264 >>学习 弩
    .target 哈纳什
step << Warrior !Skyborne
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .train 227 >>学习法杖
    .target 哈纳什
    .money <0.020
step << Warrior/Paladin/Shaman !Skyborne
    #optional
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .target 哈纳什
    .money <0.010
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T135490:0|t[强化弓] |r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target 森度吉安
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_装备|r |T135490:0|t[强化弓]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_对话.|r从他那里 购买1把|cRXP_BUY_ |T135423:0|t[大型战斧] |r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target 森度吉安
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_在达到 20级时|r装备|cRXP_WARN_ |T135423:0|t[大型战斧]|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_装备|r |T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8019 >> 训练你的职业技能
    .target 卡德里斯
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 913 >> 训练你的职业技能
    .target 卡德里斯
    .xp <18,1
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Durotar >>离开奥格瑞玛
step
    .goto Durotar,53.08,9.19,0
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r 小怪，直到掉落|cRXP_LOOT_军官的徽章|r
    .complete 5726,1 --Lieutenant's Insignia (1)
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> 进入奥格瑞玛
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >> 交任务 隐藏的敌人
    .accept 5727 >> 接受任务 隐藏的敌人
    .target 萨尔
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .train 1804 >> 学习 |T136058:0|t[开锁]
    .train 921 >> 学习 |T133644:0|t[偷窃技能]
    .accept 2379 >> 接受任务 赞杜沙
    .target 申苏尔
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1963 >> 交任务 碎手氏族
    .accept 1858 >> 接受任务 碎手氏族
    .target Therzok
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞杜沙|r 对话
    .turnin 2379 >>交任务  赞杜沙
    .accept 2382 >>接受任务 棘齿城的维尼克斯
    .target 赞杜沙
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_对话。从他那里|r |cRXP_BUY_购买一个|r|T134065:0|t[潜行者工具]
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target 雷库尔
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_使用|r |T136058:0|t|T133626:0|t[开锁] |cRXP_WARN_打开|r |T133626:0|t|T133626:0|t[塔赞的背包]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1858 >>交任务 碎手氏族
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_在旅馆对|r |cRXP_WARN_加摩尔|r |cRXP_ENEMY_使用|r |T133644:0|t[搜索]|cRXP_WARN_，使用他的钥匙打开|r |T133626:0|t[塔赞的背包]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1858 >>交任务 碎手氏族
    .target Therzok
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1455 >> 训练你的职业技能
    .target 米尔科特
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1014 >> 训练你的职业技能
    .target 米尔科特
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r 对话，购买 |T133738:0|t[牺牲魔典]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target 库古尔
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 库古尔|cRXP_FRIENDLY_ 对话，并购买 |T133738:0|t[火焰箭典籍(等级 3)]|r
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target 库古尔
    .xp <18,1
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
step
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >> 交任务 隐藏的敌人
    .accept 5728 >> 接受任务 隐藏的敌人
    .target 萨尔
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_销毁|r |T134417:0|t[军官的徽章] |cRXP_WARN_因为你不再需要它|r
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> 进入 RFC Instance portal. Zone in
step
    #optional
    #completewith next
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 5722 >> 交任务 寻找背包
    .accept 5724 >> 接受任务 归还背包
    .target Maur Grimtotem
    .isOnQuest 5722
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 5724 >> 接受任务 归还背包
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
step
    #label TroggsShamans
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
step
    >>击杀|cRXP_ENEMY_饥饿者塔拉加曼|r，拾取|cRXP_LOOT_心|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
step
    #label BazzalanandJergosh
    >>击杀|cRXP_ENEMY_巴扎兰|r和|cRXP_ENEMY_召唤者耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
step
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5728 >> 交任务 隐藏的敌人
    .accept 5729 >> 接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5729 >> 接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5729 >> 交任务 隐藏的敌人
    .accept 5730 >> 接受任务 隐藏的敌人
    .target 尼尔鲁·火刃
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5730 >> 交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 17-18 洛丹伦废墟
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#next 18-21 The Barrens

step
    #sticky
    #completewith EnterRoL
    .subzone 16611 >> 现在你应该找一个小队前往洛丹伦废墟
step
    #completewith next
    .zone Durotar >> 离开 奥格瑞玛
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1411/1,-4648.55,1321.88,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    >>|cRXP_WARN_在等待时做水|r << Mage
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Deathguard Kristof::251001|r 对话
    .accept 92422 >>接受任务 The 愤怒 of Rath'mael
    .target Deathguard Kristof::251001
step
    #completewith UCPickups
    >>|cRXP_WARN_如果可能，让你的小队成员分享以下任务|r
    .accept 92401 >>接受任务 惊恐的请求
step
    #completewith UCPickups
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>前往幽暗城
step
    #completewith UCPickups
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>乘电梯下去到幽暗城
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Michael Garrett::4551|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target Michael Garrett::4551
step
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Theodore Griffs::11835|r 对话
    .accept 95216 >>接受任务 新的药剂
    .target Theodore Griffs::11835
step
    .goto 1458/0,415.400,1389.900,50,0
    .goto 1458/0,373.500,1362.200,50,0
    .goto 1458/0,341.400,1434.800,50,0
    .goto 1458/0,369.400,1467.800,50,0
    .goto 1458/0,427.900,1413.700,50,0
    .goto 1458/0,438.100,1352.900,50,0
    .goto 1458/0,396.100,1308.800,50,0
    .goto 1458/0,316.000,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morbin Lightbane::266484|r 对话
    .accept 92421 >>接受任务 圣光的正义
    .target Morbin Lightbane::266484
step
    #label UCPickups
    .isQuestComplete 5725
    .goto 1458/0,334.02,1262.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯::2425|r 对话
    .turnin 5725 >>交任务《 前往熔光镇》 毁灭之力
    .target Varimathras::2425
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Undercity,1
    .zoneskip Silverpine Forest
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>从幽暗城下水道离开
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42,50,0
    .goto 1421/0,1204.68,1290.07
    .zone Silverpine Forest >>前往银松森林
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1421/0,1204.68,1290.07,50,0
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39
    .subzone 228 >>前往墓地
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Michael Garrett::4551|r 对话
    .fly Sepulcher >>飞往 Sepulcher
    .target Michael Garrett::4551
step
    #label AFrightenedRequest
    .goto 1421/0,1579.600,461.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r 对话
    .accept 92401 >>接受任务 惊恐的请求
    .target Tabitha Heartweaver::250686
step
    #completewith next
    .zoneskip Silverpine Forest,1
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛斯·拉佐克::2226|r 对话
    .fly Undercity >>飞往幽暗城
    .target Karos Razok::2226
step
    #label EnterRoL
    .goto 1458/0,188.400,1804.500
    .subzone 16611 >>返回洛丹伦废墟
step
    #completewith RuinsRathma
    .isOnQuest 92421
    >>杀死 |cRXP_ENEMY_亡灵|r。从他们身上拾取 |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    #completewith RuinsLimbs
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>拾取并使用 |T4504543:0|t[|cRXP_LOOT_Crest of 洛丹伦|r] 来激发任务
    >>|cRXP_WARN_它有5个可能的刷新位置|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>接受任务 Crest of 洛丹伦
    .use 275521
step
    .isOnQuest 95216
    >>杀死 |cRXP_ENEMY_Witherfang::250483|r。从它身上拾取 |T132108:0|t[|cRXP_LOOT_Highly Toxic Strain|r]
    .complete 95216,1 --Highly Toxic Strain (1)
    .mob Witherfang::250483
step
    .isQuestAvailable 97288
    .isNotOnQuest 97288
    >>击杀 |cRXP_ENEMY_The 男爵::250660|r。拾取战利品并使用他的 |T2492254:0|t[|cRXP_LOOT_Abominable 头部|r] 来开始任务
    .collect 280438,1,97288 --Abominable Head (1)
    .accept 97288 >>接受任务 Unending Torment
    .use 280438
    .mob The Baron::250660
step
    #label RuinsRathma
    .isOnQuest 92422
    >>击杀 |cRXP_ENEMY_Rath'mael::250657|r
    .complete 92422,1 --Rath'mael Slain (1)
    .mob Rath'mael::250657
    .target Edward Heartweaver::250842
step
    .isOnQuest 92401
    >>靠近位于 |cRXP_FRIENDLY_Rath'mael::250657|r 附近的 |cRXP_ENEMY_Edward Heartweaver::250842|r 的尸体
    .complete 92401,1
    .target Edward Heartweaver::250842
step
    #label RuinsLimbs
    .isOnQuest 92421
    >>杀死 |cRXP_ENEMY_亡灵|r。从他们身上拾取 |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>拾取并使用 |T4504543:0|t[|cRXP_LOOT_Crest of 洛丹伦|r] 来激发任务
    >>|cRXP_WARN_它有5个可能的刷新位置|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>接受任务 Crest of 洛丹伦
    .use 275521
step
    .goto 1458/0,188.400,1804.500
    .zone Undercity >>退出洛丹伦废墟
step
    .isQuestComplete 92422
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Deathguard Kristof::251001|r 对话
    .turnin 92422 >>交任务 The 愤怒 of Rath'mael
    .target Deathguard Kristof::251001
step
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>返回幽暗城
step
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>乘电梯下去到幽暗城
step
    .isQuestComplete 95216
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Theodore Griffs::11835|r 对话
    .turnin 95216 >>交任务 新的药剂
    .target Theodore Griffs::11835
step
    .isOnQuest 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .turnin 97288 >>交任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .accept 97289 >>接受任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Unfinished 憎恶::271613|r 对话
    .turnin 97289 >>交任务 Unending Torment
    .target Unfinished Abomination::271613
step
    .isQuestTurnedIn 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Unfinished 憎恶::271613|r 对话
    .accept 97290 >>接受任务 Unending Torment
    .target Unfinished Abomination::271613
step
    .isOnQuest 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .turnin 97290 >>交任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .accept 97291 >>接受任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isQuestComplete 92421
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,371.600,1465.600,50,0
    .goto 1458/0,437.100,1399.300,50,0
    .goto 1458/0,430.600,1342.100,50,0
    .goto 1458/0,397.500,1311.400,50,0
    .goto 1458/0,315.800,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Morbin Lightbane::266484|r 对话
    .turnin 92421 >>交任务 圣光的正义
    *选择 |T133483:0|t[|cRXP_LOOT_The Stitcher|r] 作为主手升级。如果需要，训练 Maces << Rogue
    .target Morbin Lightbane::266484
step
    .isOnQuest 97291
    .goto 1458/0,356.700,1563.500
    >>|cRXP_WARN_从|r |cRXP_LOOT_Katrina Alliestar::4615|r |cRXP_WARN_后面的罐子里拾取|r |T134181:0|t[|cRXP_FRIENDLY_Blisterweed|r]
    .complete 97291,2 --Blisterweed (1)
step
    .isOnQuest 97291
    .goto 1458/0,151.500,1550.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ezekiel 恶灵魔像::4585|r 对话
    >>|cRXP_BUY_购买一个|r |T134799:0|t[|cRXP_LOOT_Essence of Agony|r]
    .complete 97291,3 --Essence of Agony (1)
    .target Ezekiel Graves::4585
step
    .isOnQuest 95204
    .goto 1458/0,172.100,1667.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰·斯内克威瑟::7825|r 对话
    .turnin 95204 >>交任务 Crest of 洛丹伦
    .target Oran Snakewrithe::7825
step
    .isOnQuest 97291
    .goto 1458/0,241.700,1633.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tawny Grisette::4554|r 对话
    >>|cRXP_BUY_购买一个|r |T134522:0|t[|cRXP_LOOT_Toxic 斯库尔卡|r]
    .complete 97291,1 --Toxic Skullcap (1)
    .target Tawny Grisette::4554
step
    .isOnQuest 97291
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .turnin 97291 >>交任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97291
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .accept 97292 >>接受任务 Unending Torment
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97292
    .goto 1458/0,442.700,1419.600,50,0
    .goto 1458/0,458.900,1438.600,50,0
    .goto 1458/0,438.800,1468.700
    .use 281327 >>|cRXP_WARN_在楼上的虫子附近使用|r |T134837:0|t[|cRXP_LOOT_嘶嘶血清|r]
    .complete 97292,1
step
    .isQuestComplete 97292
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Master Apothecary 大药剂师法拉尼尔::2055|r 对话
    .turnin 97292 >>交任务 Unending Torment
    .target Master Apothecary Faranell::2055
step << Rogue
    #completewith RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .zoneskip Undercity,1
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Michael Garrett::4551|r 对话
    .fly Sepulcher >>如果你有飞行路径，飞往 Sepulcher
    .target Michael Garrett::4551
step << Rogue
    #label RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .goto 1421/0,1579.600,461.700
    >>|cRXP_WARN_现在只能交任务来获得副手升级|r
    >>如果你不能飞行，走下水道并跟随道路前往 Sepulcher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r 对话
    .turnin 92401 >>交任务 A Frightened Request
    .target Tabitha Heartweaver::250686

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 18-21 The Barrens
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1
#next 21-22 哀嚎洞穴

step
    #completewith FoodandWater2
    .hs >> 炉石返回十字路口，北贫瘠之地
    .use 6948
    .bindlocation 380,1
    .zoneskip The Barrens
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .isQuestAvailable 3281,865,905
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith Ignition
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    >>|cRXP_WARN_如果使用|cRXP_ENEMY_ |T134227:0|t[埃其亚基的号角]|r 后, |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_如果使用 |cRXP_ENEMY_|T134227:0|t[埃其亚基的号角]|r 后 |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请放弃 埃其亚基 任务，然后返回城镇重新接取|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>点击 |cRXP_PICK_控制台|r
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_小心！关闭阀门后会刷新两个怪物|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2675.80,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_关闭阀门后会刷新一个怪物|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2679.86,830.80
    >>点击 |cRXP_PICK_阀门|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2731.54,909.850
    >>在建筑内击杀 |cRXP_ENEMY_工匠斯尼格斯|r，拾取他的 |cRXP_LOOT_控制台钥匙|r
    .complete 901,1 --Console Key (1)
    .mob 工匠斯尼格斯
step << !Tauren !Hunter !Shaman/Skyborne
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step << !Tauren !Hunter !Shaman/Skyborne
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于淤泥沼泽的 |r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    .accept 858 >>接受任务 点火
    .target 维兹克兰克的伐木机
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_工头葛瑞尔斯|r 或|cRXP_WARN_ |r淤泥兽|cRXP_ENEMY_ |r刷新了，|cRXP_WARN_i请小心。它们是强力的 19 级稀有怪|r
    .unitscan 工头葛瑞尔斯
    .unitscan 淤泥畸体
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>击杀 |cRXP_ENEMY_鲁格维兹主管|r，拾取他的 |cRXP_LOOT_钥匙|r
    >>|cRXP_WARN_他会在平台上来回巡逻|r
    .complete 858,1 --Ignition Key (1)
    .mob 鲁格维兹主管
    .isOnQuest 858
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .turnin 858 >>交任务  点火
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestComplete 858
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestTurnedIn 858
step << !Tauren !Hunter !Shaman/Skyborne
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_当伐木机移动到高处时，会刷新两个|r |cRXP_ENEMY_风险投资公司雇佣兵|r |cRXP_WARN_。击杀他们后，等待他在终点的剧情事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob 风险投资公司雇佣兵
    .mob 风险投资公司苦工
    .mob 监工格里比
    .isOnQuest 863
step << !Tauren !Hunter !Shaman/Skyborne
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>击杀 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith
    .subzone 380 >>前往十字路口
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 881 >>交任务  埃其亚基
    .accept 905 >>接受任务 在迅猛龙的巢穴里
    .target 瑟格拉·黑棘
step
    #optional
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_摧毁 |r|T134227:0|t[埃其亚基的号角]|cRXP_WARN_，因为你已经不再需要它|r
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    >>|cRXP_BUY_从他处|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target 巴尔格
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 迪弗拉克
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2382 >>交任务  棘齿城的维尼克斯
    .accept 2381 >>接受任务 抢劫海盗
    .target 卑鄙的维尼克斯
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_雷尼克斯的基莫特隆装置|r交谈
    >>|cRXP_WARN_获取一个|r |T134059:0|t|T134065:0|t[E.C.A.C.] |cRXP_WARN_和一个|r |T134065:0|t|T134065:0|t[潜行者工具]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .turnin 863 >> 交任务 梅贝尔的隐形水
    .accept 1483 >> 接受任务菲兹克斯
    .target 斯布特瓦夫
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> 交任务  矿工的宝贝
    .target 码头管理员迪兹维格
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .accept 1483 >> 接受任务菲兹克斯
    .target 斯布特瓦夫
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> 交任务  矿工的宝贝
    .target 码头管理员迪兹维格
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 863 >> 交任务 梅贝尔的隐形水
    .accept 1483 >> 接受任务菲兹克斯
    .target 斯布特瓦夫
    .isQuestComplete 863
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .accept 1483 >> 接受任务菲兹克斯
    .target 斯布特瓦夫
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .accept 865 >>接受任务 一定是因为角
    .accept 1069 >>接受任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step << skip
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> 把垃圾物品卖给商人
    --.collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target 旅店老板维尔雷
step << Rogue
	#completewith next
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_跳上船只，下到第2层，并将你的开锁技能提升到至少 70|r
step << Rogue
    .goto 1413/1,-3958.68,-1457.54
    >>当你的开锁技能达到 70 后，前往船只的底层并打开 |cRXP_PICK_南海宝珠|r
    >>|cRXP_WARN_在 |r波利|cRXP_WARN_ 身上使用|r |T134059:0|t[大饼干]|cRXP_ENEMY_|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob 波利
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>拾取地上的 |cRXP_PICK_箱子|r
    .complete 888,2 --Telescopic Lens (1)
step
    .goto 1413/1,-3723.59,-1741.30
    >>拾取地上的 |cRXP_PICK_箱子|r
    .complete 888,1 --Shipment of Boots (1)
step
    #optional
    #completewith TestSeeds
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
    .isQuestTurnedIn 819
step
    #optional
    #completewith TestSeeds
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_龙角|r 和 |cRXP_LOOT_乱羽|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob 赤鳞镰爪龙
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>拾取地上的|cRXP_PICK_被偷走的银币|r
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #completewith TestSeeds
    >>击杀 绿洲周围的|cRXP_ENEMY_科卡尔|r。拾取它们掉落的 |cRXP_LOOT_护腕|r
    .complete 855,1 --Centaur Bracers (15)
    .mob 科卡尔战士
    .mob 科卡尔驯犬者
    .mob 科卡尔掠夺者
    .isOnQuest 851
step
    #optional
    #completewith Verog
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>在水下点击 |cRXP_PICK_气泡裂隙|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #optional
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>击杀 绿洲周围的|cRXP_ENEMY_科卡尔|r。拾取它们掉落的 |cRXP_LOOT_护腕|r
    .complete 855,1 --Centaur Bracers (15)
    .mob 科卡尔战士
    .mob 科卡尔驯犬者
    .mob 科卡尔掠夺者
    .isOnQuest 851
step
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>击杀 |cRXP_ENEMY_维罗戈|r，拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_每次击杀一个 |cRXP_ENEMY_科卡尔|r 都有几率刷新他|r
    >>|cRXP_WARN_在高人口服务器或新服开启时，最好的做法是在他的刷新点蹲守|r
    .complete 851,1 --Verog's Head (1)
    .unitscan 狂热的维罗戈
    .isOnQuest 851
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #completewith LakotaMani1
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
    .isQuestTurnedIn 819
step
    .goto 1413/1,-2707.22,-1502.130
    >>点击 |cRXP_PICK_蓝色迅猛龙巢|r。如果你没有 |T132914:0|t[太阳鳞羽毛]，请继续击杀 |cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob 赤鳞镰爪龙
step
    .goto 1413/1,-2692.02,-1533.89
    >>点击 |cRXP_PICK_红色迅猛龙巢|r。如果你没有 |T132914:0|t[太阳鳞羽毛]，请继续击杀 |cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob 赤鳞镰爪龙
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>点击 |cRXP_PICK_黄色迅猛龙巢|r。如果你没有 |T132914:0|t[太阳鳞羽毛]，请继续击杀 |cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob 赤鳞镰爪龙
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_完整的迅猛龙角|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血肉模糊的尸体|r 对话
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target 血肉模糊的尸体
    .skipgossip
step
    #optional
    #completewith CampTArrive
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_雷霆蜥蜴的角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
    .isQuestTurnedIn 819
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>击杀|cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果你找不到他或无法击杀他，跳过这一步。你可以稍后再来处理。|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务 拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
    .xp <18,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> 前往陶拉祖营地
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
    .home >>将你的炉石设置到陶拉祖营地
    .target 比鲁拉
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 883 >>交任务  拉克塔曼尼
    .target 乔恩·星眼
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
    .target 碎牙
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >> 获得陶拉祖营地的飞行点 << !Tauren
    .fly Crossroads >>飞往十字路口
    .target 欧姆萨·雷角
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >> 交任务  菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_图加|r, |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 4921 >>交任务在战斗中失踪
    .accept 95774 >>接受任务 Her 名称 Is Olgra
    .target 曼科里克
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>交任务  死水绿洲
    .accept 880 >>接受任务变异的生物
    .target 图加·符文图腾
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>交任务  在迅猛龙的巢穴里
    .accept 3261 >>接受任务 乔恩·星眼
    .target 瑟格拉·黑棘
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>交任务  被偷走的银币
    .target 加兹罗格
    .goto 1413/1,-2639.32,-436.00
step
    #optional
    #completewith Hezrul
    .destroy 5165 >>|cRXP_WARN_删除你仍然留着的任何|r |T132914:0|t[赤鳞迅猛龙的羽毛] |cRXP_WARN_|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r|cRXP_BUY_对话. |r从他那里购买 1 个 |cRXP_BUY_|T134410:0|t[中型箭袋]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target 阿瑟罗克
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1430 >> 训练你的职业技能
    .target 洛甘纳尔
    .xp <18,1
    .xp >20,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 768 >> 训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .hs >> 使用炉石返回陶拉祖营地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Camp Taurajo >> 飞往陶拉祖营地
    .subzoneskip 378
    .target 迪弗拉克
    .cooldown item,6948,<0
step
    .goto 1413/1,-1995.86,-2375.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 比鲁拉
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 3261 >>交任务  乔恩·星眼
    .accept 882 >>接受任务 伊沙姆哈尔
    .target 乔恩·星眼
step
    #completewith LakotaMani2
    >>杀死 |cRXP_ENEMY_Razormane Raiders|r。拾取他们的战利品 |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
	#completewith Adornments
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
    .isQuestTurnedIn 819
step
    #completewith Adornments
    >>击杀|cRXP_ENEMY_刺背野猪人|r。拾取它们的|cRXP_LOOT_獠牙|r。保留你获得的|T134128:0|t[|cRXP_LOOT_血石碎片|r]
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob 刺背寻水者
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob 刺背织棘者
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob 刺背地卜师
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>击杀|cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果找不到他，请跳过此步骤|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务 拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
step
    #label Adornments
    #loop
    .goto 1413/1,-2241.200,-1988.500,0
    .goto 1413/1,-2241.200,-1988.500,50,0
    .goto 1413/1,-2346.200,-1788.600,50,0
    .goto 1413/1,-2458.300,-1824.400,50,0
    .goto 1413/1,-2381.000,-2061.000,50,0
    >>杀死 |cRXP_ENEMY_Razormane Raiders|r。拾取他们的战利品 |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>击杀|cRXP_ENEMY_刺背野猪人|r。拾取它们的|cRXP_LOOT_獠牙|r。保留你获得的|T134128:0|t[|cRXP_LOOT_血石碎片|r]
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob 刺背寻水者
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob 刺背织棘者
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob 刺背地卜师
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step << Warlock
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19+9500 >> 刷怪至 9500+/21300 xp
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
    .isQuestTurnedIn 819
step
    #completewith next
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_完整的迅猛龙角|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>杀掉 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_龙角|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #completewith next
    >>击杀任意 |cRXP_ENEMY_斑马|r.拾取他们的|cRXP_LOOT_新鲜的斑马肉|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob 冲锋斑马
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>在湖中及其周围击杀 |cRXP_ENEMY_绿洲钳嘴龟|r，并拾取它们的 |cRXP_LOOT_壳|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob 绿洲钳嘴龟
step
    #completewith next
    >>击杀任意 |cRXP_ENEMY_斑马|r.拾取他们的|cRXP_LOOT_新鲜的斑马肉|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob 冲锋斑马
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>在死亡的树处使用 |T134368:0|t[|cRXP_LOOT_新鲜的斑马肉|r] 来召唤 |cRXP_ENEMY_伊沙姆哈尔|r。击杀并从拾取 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_这具尸体只有30分钟的持续时间!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob 伊沙姆哈尔
step
    #completewith BootyTurnin
    .subzone 392 >> 前往棘齿城
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2381 >>交任务  抢劫海盗 << Rogue
    .target 卑鄙的维尼克斯
step << Rogue
    #optional
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2381 >>交任务  抢劫海盗
    .target 卑鄙的维尼克斯
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 888 >>交任务  被窃的货物
    .target 加兹鲁维
step
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 1094 >>交任务新的指示
    .accept 1095 >>接受任务 新的指示
    .target 斯布特瓦夫
step
    .goto 1413/1,-3720.300,-920.000
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 92706 >>接受任务 WANTED: 布鲁兹
    .group << Rogue/Warrior
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务  深苔蜘蛛的卵
    .accept 1491 >>接受任务 智慧饮料
    .target 麦伯克·米希瑞克斯
step
    #optional
    #completewith XroadsHS2
    .destroy 5570 >>|cRXP_WARN_删除任何|r |T132834:0|t[深苔蜘蛛的卵] |cRXP_WARN_你剩余的|r
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 821 >>交任务 老陈的空酒桶
    .target 酿酒师德罗恩
    .isQuestComplete 821
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉利克斯|r 对话
    .vendor >>如果他有出售的话，从他那里购买 |T134583:0|t[|cRXP_FRIENDLY_强力锁甲护腿|r]
    .target 格拉利克斯
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克斯宾德|r 对话
    .vendor >> 如果他有出售的话，从他那里购买 |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .target 维克斯宾德
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .isQuestTurnedIn 865
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备 |T134583:0|t[|r强化锁甲短裤|cRXP_FRIENDLY_]|r
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    #loop
    .goto 1413/1,-3911.900,-1049.200
    .goto 1413/1,-3951.600,-1093.500
    .goto 1413/1,-4012.800,-1081.800
    .goto 1413/1,-3973.000,-1028.700
    >>在棘齿城附近的海里杀死 |cRXP_PICK_布鲁兹|r (20级精英)
    >>|cRXP_WARN_这很难!如果可能的话,请组队|r << !Rogue !Warrior
    >>|cRXP_WARN_尝试把他引到 棘齿城 的守卫那里，他们会帮助你，但确保你造成至少50%的伤害！|r
    .complete 92706,1 --Kill Bruuz
    .mob Bruuz
    .isOnQuest 92706
    .group << Rogue/Warrior
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 92706 >>交任务 WANTED: 布鲁兹
    .target 加兹鲁维
    .group << Rogue/Warrior
    .isQuestComplete 92706
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .accept 959 >>接受任务 港口的麻烦
    .target 起重机操作员比戈弗兹
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step << Hunter
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .accept 6541 >>接受任务 向卡德拉克报到
    .target 索克
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_图加|r 对话
    .turnin 899 >>交任务  复仇的怒火
    .turnin 95774 >>交任务 Her 名称 Is Olgra
    .target 曼科里克
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>交任务  变异的生物
    .accept 1489 >>接受任务哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
    .target 图加·符文图腾
    .goto 1413/1,-2672.76,-544.77
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_删除你可能仍然留着的任何|r |T133721:0|t[刺背野猪人的獠牙] |cRXP_WARN_|r
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r 对话
    .accept 868 >> 接受任务 蝎卵
    .target 科兰
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .trainer >> 训练你的职业技能
    .accept 1507 >>接受任务 噬魂者
    .target 甘鲁尔·血眼
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 库古尔|cRXP_FRIENDLY_ 对话，并购买 |T133738:0|t[折磨典籍(等级 2)]|r
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target 库古尔
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡祖尔|r 对话
    .turnin 1507 >>交任务 噬魂者
    .accept 1508 >>接受任务 盲眼卡祖尔
    .target 卡祖尔
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞卡沙|r 对话
    .turnin 1508 >>交任务盲眼卡祖尔
    .accept 1509 >>接受任务多格兰的消息
    .target 赞卡沙
step
    #completewith EnterDM
    .subzone 1581 >> 现在你应该开始寻找前往死亡矿井的小队
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8052 >> 训练你的职业技能
    .target 卡德里斯
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 2645 >> 训练你的职业技能
    .target 卡德里斯
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
	.train 14318 >>训练你的职业技能
    .target 奥玛克
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
	.train 14290 >>训练你的职业技能
    .target 奥玛克
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
	.train 5118 >>训练你的宠物技能
	.target 肖祖
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
	.train 8198 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 845 >> 训练你的职业技能
    .target 格雷兹·怒拳
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1943 >> 训练你的职业技能
    .target 奥莫克
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 1014 >> 训练你的职业技能
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 706 >> 训练你的职业技能
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 1953 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >> 训练你的职业技能
    .target 乌尔库
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 14914 >> 训练你的职业技能
    .target 乌尔库
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨苏恩|r 对话
    >>|cRXP_BUY_购买|r |T132794:0|t[灯油] |cRXP_BUY_如果可能的话，从拍卖行购买|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target 拍卖师萨苏恩
    .dungeon DM
step
    #completewith next
    .zone Durotar >> 离开 奥格瑞玛
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>登上飞艇塔
    .zone Stranglethorn Vale >>乘坐飞艇前往荆棘谷
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> 从格罗姆高营地向西直接游向劣尸维尔暗礁，然后向北游向西部荒野
    >>|cRXP_WARN_避开岛屿。为了安全，请跟随路径点!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> 前往西部荒野灯塔
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 103 >> 接受任务 长明的灯塔
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 103 >> 交任务 长明的灯塔
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >> 接受任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r|cRXP_WARN_在长滩上来回巡逻。如果你在长滩上看不到他，就等他刷新在最南边的|cRXP_ENEMY_鱼人|r营地|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 104 >> 交任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> 放弃任务 长明的灯塔
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11797.13,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> 进入死亡矿井副本的传送门。进入副本
    .dungeon DM
step
    .hs >> 完成死亡矿井后，炉石回到贫瘠之地
    .zone The Barrens >> 抵达贫瘠之地
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
	.fly Crossroads >> 飞往十字路口
    .zoneskip Orgrimmar,1
    .target 多拉斯
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 1509 >>交任务  多格兰的消息
    .accept 1510 >>接受任务多格兰的消息
    .target 加兹罗格
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_FRIENDLY_赫布瑞姆|r |cRXP_WARN_会开启一个 45 分钟的限时任务|r
    .accept 853 >> 接受任务 药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_这是一个限时任务，请不要离开键盘。接取后 20–30 分钟就会失效|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Camp Taurajo >> 飞往陶拉祖营地
    .target 迪弗拉克
step
    .goto 1413/1,-2515.7,-2076.41
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。并拾取它们的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务  野猪人的内战
    .accept 5052 >>接受任务 阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务  阿迦玛甘的血岩碎片
    .target 碎牙
step
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    +|cRXP_WARN_使用你的|r |T134128:0|t|T134128:0|t[|cRXP_LOOT_血碎片|r] |cRXP_WARN_来获取增益效果。至少保留4个以备后用|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_使用你的|r |T134128:0|t|T134128:0|t[|cRXP_LOOT_血碎片|r] |cRXP_WARN_来获取增益效果。至少保留4个以备后用|r << !Tauren !Shaman !Warrior/Undead
    +|cRXP_WARN_务必关闭 Questie 或 Leatrix Plus 等插件的自动完成任务功能！|r
    .target 碎牙
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .turnin 883 >>交任务  拉克塔曼尼
    .target 乔恩·星眼
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .target 乔恩·星眼
step
    #completewith SleepingBag1
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r，拾取它们掉落的 |cRXP_LOOT_血液|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob 电角蜥蜴
    .mob 雷角蜥蜴
step
    #completewith LizardBlood
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    >>击杀 |cRXP_ENEMY_奥瓦坦卡|r. 拾取以获得 |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r] 来激发任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务 奥瓦坦卡
    .use 5102
    .unitscan 奥瓦坦卡
step
    #label SleepingBag1
    .goto The Barrens,46.361,73.904
    >>点击地面上的|cRXP_PICK_焦焚残骸|r
    .accept 79007 >> 接受任务……你所找到的纸条
step
    #label LizardBlood
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r，拾取它们掉落的 |cRXP_LOOT_血液|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob 电角蜥蜴
    .mob 雷角蜥蜴
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩|r 对话
    .turnin 884 >>交任务  奥瓦坦卡
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
    .accept 913 >>接受任务 雷鹰的嘶鸣
    .target 乔恩·星眼
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
    .accept 913 >>接受任务 雷鹰的嘶鸣
    .target 乔恩·星眼
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>击杀 |cRXP_ENEMY_奥瓦坦卡|r. 拾取以获得 |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]
    >>|cRXP_WARN_使用|T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r] 来激发任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务 奥瓦坦卡
    .use 5102
    .unitscan 奥瓦坦卡
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>击杀|cRXP_ENEMY_雷鹰雏鸟|r或者|cRXP_ENEMY_雷鹰破云者|r.拾取他们的|cRXP_LOOT_雷鹰的翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob 雷鹰雏鸟
    .mob 雷鹰破云者
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 884 >>交任务  奥瓦坦卡
    .turnin 913 >>交任务  雷鹰的嘶鸣
    .accept 874 >>接受任务 玛伦·星眼
    .accept 6382 >>接受任务灰谷狩猎 << Hunter
    .target 乔恩·星眼
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 913 >>交任务  雷鹰的嘶鸣
    .accept 874 >>接受任务 玛伦·星眼
    .accept 6382 >>接受任务灰谷狩猎 << Hunter
    .target 乔恩·星眼
step
    #optional
    .xp 20 >>刷怪升级到 20 级
step << !Tauren !Skyborne
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .aura 16618 >>|cRXP_WARN_如果你剩余 10 个|r |T134128:0|t[|cRXP_LOOT_血岩碎片|r]|cRXP_WARN_，可用它们从|r 撕牙鱼人|cRXP_WARN_ |r处兑换|cRXP_FRIENDLY_ |T136022:0|t[风之精灵]|r
    >>|cRXP_WARN_如果你已经拥有雷霆崖的飞行点，请跳过此步骤|r
    .itemcount 5075,10
    .target 碎牙
    .train 2645,1 << Shaman --skip if ghost wolf trained
    .train 5118,1 << Hunter --skip if cheetah trained
step << !Tauren !Skyborne
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>前往莫高雷
step << !Tauren !Skyborne
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>乘电梯进入雷霆崖
    >>|cRXP_WARN_如果你已经解锁雷霆崖的飞行点，可以直接飞过去|r
step << Tauren/Skyborne
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior/Troll Shaman/Orc Shaman
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .train 227 >>学习法杖
    .target 安塞瓦
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
step << Rogue !Skyborne
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 198 >>学习锤类武器
    .target 安塞瓦
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库鲁克|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,1,6562,1 --Deadly Throwing Axe (200)
    .target 库鲁克
step << Rogue
    #optional
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .train 6761 >>训练你的职业技能
    .target Boarton Shadetotem
    .xp <16,1
    .xp >20,1
step << Rogue
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_巴通·阴影图腾|r 对话
    >>|cRXP_WARN_他处于|r |T132320:0|t[潜行] 状态
    .train 1943 >>训练你的职业技能
    .target Boarton Shadetotem
    .xp <20,1
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5075 >> 存入你的 |T134128:0|t[血岩碎片]
    .bankdeposit 5059 >> 存放你的 |T132938:0|t[掘地铲]
    .target 彻斯姆
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5075 >> 存入你的 |T134128:0|t[血岩碎片]
    .target 彻斯姆
    .isNotOnQuest 868
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> 前往灵魂高地，然后进入幻象之池
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    .accept 264 >> 接受任务 至死方休
    .target 克拉莉斯·弗斯特
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >> 交任务药剂师扎玛
    .accept 962 >> 接受任务 毒蛇花
    .target 药剂师扎玛
    .isOnQuest 853
step
    #label ZamahTurnin
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .accept 962 >> 接受任务 毒蛇花
    .target 药剂师扎玛
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .accept 5644 >> 接受任务 噬灵瘟疫 << Undead Priest
    .accept 5642 >> 接受任务 暗影守卫 << Troll Priest
    .trainer >> 训练你的职业技能
    .target 麦尔斯·威尔什
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 12051 >> 训练你的职业技能
    .target 大法师山姆
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 2138 >> 训练你的职业技能
    .target 大法师山姆
    .xp <22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alodan|r 对话
    .train 1866 >>训练你的职业技能
    .target Alodan the Hopeful
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alodan|r 对话
    .train 1026 >>训练你的职业技能
    .target Alodan the Hopeful
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r 对话 |cRXP_WARN_（在外面）|r
    .train 2645 >> 训练你的职业技能
    .target 提戈尔·逐星
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r 对话 |cRXP_WARN_（在外面）|r
    .train 8498 >> 训练你的职业技能
    .target 提戈尔·逐星
    .xp <22,1
step << Shaman
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尼斯|r 对话
    .accept 1529 >>接受任务水之召唤
    .target 萨尼斯·织火
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到80或更高|r
    .skill firstaid,<1,1
step
    .goto 1456/1,206.88,-997.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到 80，请跳过此步骤|r
    .train 3277 >> 学习 |T133684:0|t[绒线绷带]
    .train 7934 >> 学习 |T134437:0|t[抗毒药剂] << Rogue
    .target 潘德·缚石
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_制造|r |T134437:0|t[解毒剂] |cRXP_WARN_如果你找到了任何|r |T134339:0|t[小毒囊]
    >>|cRXP_WARN_留着以后再用|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith NaraWild
    .goto 1456/1,-212.71,-1065.010,80 >> 前往长者高地
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >> 交任务 归还背包
    .turnin 5723 >> 交任务 试探敌人
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >> 交任务 归还背包
    .target Rahauro
    .isOnQuest 5724
step
    #optional
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5723 >> 交任务 试探敌人
    .target Rahauro
    .isQuestComplete 5723
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 1489 >> 交任务  哈缪尔·符文图腾
    .accept 1490 >> 接受任务 纳拉·蛮鬃
    .target 大德鲁伊哈缪尔·符文图腾
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >> 交任务  纳拉·蛮鬃
    .accept 914 >> 接受任务 尖牙德鲁伊
    .target 纳拉·蛮鬃
step
    #label NaraWild
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >> 交任务  纳拉·蛮鬃
    .target 纳拉·蛮鬃
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .trainer >>训练你的职业技能
    .accept 27 >>接受任务必修的课程
    .accept 98340 >>接受任务 The ????????????
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 27 >>交任务必修的课程
    .accept 28 >>接受任务湖中试炼
    .turnin 98340 >>交任务 The ????????????
    .accept 98341 >>接受任务 The Great Windborne 猫 精神 << Skyborne
    .accept 98405 >>接受任务 The ???????????? << !Skyborne
    .target 德迪利特·星焰
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>在湖底拾取 |cRXP_PICK_小饰物容器|r，以获得 |T134125:0|t[神龛小饰物]
    >>|cRXP_WARN_在到达饰品正上方之前不要下水|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >> |cRXP_WARN_在雷姆洛斯神殿使用|r |T134125:0|t[神殿灵珠] |cRXP_WARN_|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r 对话
    .turnin 28 >> 交任务 湖中试炼
    .accept 30 >> 接受任务 海狮试炼
    .target 塔加里
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Great 猫 精神|r 对话
    .turnin 98405 >>交任务 The ????????????
    .accept 98342 >>接受任务 The ????????????
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r 对话
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>交任务 The Great Windborne 猫 精神
    .accept 98404 >>接受任务 The Great Windborne 猫 精神
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> 前往 怒风兽穴
step << Druid
    >>深入洞穴，穿过桥梁，寻找壁龛内的猫雕像，点击雕像旁边的小球
    >>拾取 |cRXP_LOOT_Relic of the Claw|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98342,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>点击猫雕像旁边的小球
    >>拾取 |cRXP_LOOT_Relic of the Silent 小影|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98342,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>点击猫雕像旁边的小球
    >>拾取 |cRXP_LOOT_Relic of the 利牙|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98342,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Great 猫 精神|r 对话
    .turnin 98342 >>交任务 The ????????????
    .accept 98739 >>接受任务 Blessings of the ????????????
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r 对话
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>交任务 The Great Windborne 猫 精神
    .accept 98738 >>接受任务 Blessings of the Great Windborne 猫 精神
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰::11802|r 对话
    .turnin 98738 >>交任务 Blessings of the Great Windborne 猫 精神 << Skyborne
    .turnin 98739 >>交任务 Blessings of the ???????????? << !Skyborne
    .accept 98362 >>接受任务 To 雷霆崖
    .target Dendrite Starblaze::11802
step << Druid
    .hs >> 使用炉石返回雷霆崖
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >> 飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .turnin 98362 >>交任务 雷霆崖
    .target 图拉克·符文图腾
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> 前往猎人高地
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >> 训练你的职业技能
    .target 乌瑞克·雷角
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >> 训练你的职业技能
    .target 乌瑞克·雷角
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24494 >> 训练你的宠物技能
    .target 赫苏瓦·雷角
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> 前往猎人高地
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 对话
    .train 845 >>训练你的职业技能
    .accept 1823 >>接受任务 和鲁迦对话
    .target 托姆·暴怒图腾
step << Rogue
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡德|r |cRXP_BUY_对话。|r从他那里购买一把|cRXP_BUY_ |T135324:0|t[长剑] |r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target 卡德·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Warrior/Shaman
    #optional
    #completewith next
    #ah
    +|cRXP_FRIENDLY_如果更便宜的话，你也可以改从拍卖行购买一把绿色武器|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|T135157:0|t|cRXP_BUY_与|r |cRXP_FRIENDLY_伊图|r|cRXP_BUY_交谈。从他那里购买一根|r |T135157:0|t|T135157:0|t[占卜法杖] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target 伊图·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|T135157:0|t|cRXP_BUY_与|r |cRXP_FRIENDLY_伊图|r|cRXP_BUY_交谈。从他那里购买一根|r |T135157:0|t|T135157:0|t[占卜法杖] |cRXP_BUY_|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target 伊图·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库纳|r|cRXP_BUY_对话.|r从她那里购买1把|cRXP_BUY_ |T135489:0|t[重型弯弓] |r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target 库纳·雷角
step << Hunter
    #completewith KayaLives
    #optional
    +|cRXP_WARN_装备|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 库纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target 库纳·雷角
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 851 >>交任务  狂热的维罗戈
    .accept 852 >>接受任务 赫兹鲁尔·血印
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 851 >>交任务  狂热的维罗戈
    .accept 852 >>接受任务 赫兹鲁尔·血印
    .target 雷戈萨·死门
step << Warlock
    #label EnterSTM2
    #completewith DogranNews
    .zone Stonetalon Mountains >> 前往石爪山脉
    .zoneskip Stonetalon Mountains
step << Warlock
    #completewith DogranNews
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> 沿着左侧的道路向上前进
step << Warlock
    #label DogranNews
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯兹格拉|r 对话
    .turnin 1510 >>交任务  多格兰的消息
    .accept 1511 >>接受任务 肯兹格拉的伤药
    .target 肯兹格拉

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 21-22 哀嚎洞穴
#next RestedXP 部落 22-30级\22-24级 希尔斯布莱德
#version 11
#group RestedXP 无限 地下城指南 (部落)
#subgroup 地下城指南 1-22级
--#groupid RXP-SRGCE-H1

step
    #sticky
    #completewith EnterWC
    .goto 1414/1,-2216.5,-742.43,30 >>现在你应该开始寻找哀嚎洞穴的小队
step << Warlock
    #completewith EnterWC
    .zone The Barrens >>返回 Barrens
step
    #completewith EnterWC
    .subzone 387 >> 前往甜水绿洲
    .isQuestTurnedIn 851
step
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>寻找并击杀 |cRXP_ENEMY_赫兹鲁尔·血印|r。拾取他的 |cRXP_LOOT_头|r
    >>|cRXP_ENEMY_赫兹鲁尔|r |cRXP_WARN_在湖泊周围巡逻|r
    .complete 852,1 --Hezrul's Head
    .unitscan 赫兹鲁尔·血印
    .isQuestTurnedIn 851
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>从哀嚎洞穴集合石处跑上山
    >>|cRXP_WARN_紧跟箭头前进以到达隐藏的洞穴|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .accept 1486 >> 接受任务 变异皮革
    .target 纳尔帕克
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> 接受任务 清除变异者
    .target 厄布鲁
    .goto 1414/1,-2039.86,-801.31
step
    #completewith EnterWC
    +|cRXP_WARN_建议只做一次时,分开接受"毒蛇花"和"变异皮革"任务|r
    >>|cRXP_WARN_没有足够的 |cRXP_PICK_毒蛇花|r 和 |cRXP_LOOT_变异皮革|r 给每个人|r
    .isOnQuest 962,1486
step
    #optional
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>击杀所有见到的|cRXP_ENEMY_虚空兽|r，并拾取它们的|cRXP_LOOT_皮|r
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99年波尔多陈酿|r
    >>|cRXP_WARN_他的刷新时间很长。如果找不到他，请跳过此步骤。|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob 疯狂的马格利什
    .isOnQuest 959
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> 进入哀嚎洞穴副本传送门，并进入副本
step
    #optional
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_LOOT_皮|r |cRXP_WARN_不够所有人分|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_蝰蛇|r, |cRXP_ENEMY_蹒跚者|r 和 |cRXP_ENEMY_恐惧之牙|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob 变异破坏者
    .complete 1487,2 --Deviate Viper (7)
    .mob 剧毒飞蛇
    .complete 1487,3 --Deviate Shambler (7)
    .mob 变异蹒跚者
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob 变异尖牙风蛇
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1487
step
    #label Gems
    >>击杀 |cRXP_ENEMY_考布莱恩 |r, |cRXP_ENEMY_安娜科德拉|r, |cRXP_ENEMY_皮萨斯|r 和 |cRXP_ENEMY_瑟芬迪斯|r。拾取他们的 |cRXP_LOOT_宝石|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob 考布莱恩
    .complete 914,2 --Gem of Anacondra (1)
    .mob 安娜科德拉
    .complete 914,3 --Gem of Pythas (1)
    .mob 皮萨斯
    .complete 914,4 --Gem of Serpentis (1)
    .mob 瑟芬迪斯
    .isOnQuest 914
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 哀嚎洞穴入口处与 |cRXP_FRIENDLY_纳拉雷克斯的信徒|r 对话，将他安全护送到 |cRXP_FRIENDLY_纳拉雷克斯|r
    .target 纳拉雷克斯的信徒
    .skipgossip
step
    #label GlowingShard
    >>一旦到达 |cRXP_FRIENDLY_纳拉雷克斯|r，你将遭遇两波敌人攻击，最终面对 |cRXP_ENEMY_吞噬者穆塔努斯|r
    >>击杀他并拾取 |T135229:0|t[|cRXP_LOOT_发光的碎片|r]，用它来开始任务
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> 接受任务 发光的碎片
    .use 10441
    .mob 吞噬者穆坦努斯
step
    #optional
    #completewith DeviateRaptors
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #optional
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #optional
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_蝰蛇|r, |cRXP_ENEMY_蹒跚者|r 和 |cRXP_ENEMY_恐惧之牙|r 。拾取它们的|cRXP_ENEMY_皮|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob 变异破坏者
    .complete 1487,2 --Deviate Viper (7)
    .mob 剧毒飞蛇
    .complete 1487,3 --Deviate Shambler (7)
    .mob 变异蹒跚者
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob 变异尖牙风蛇
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
 step
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_蝰蛇|r, |cRXP_ENEMY_蹒跚者|r 和 |cRXP_ENEMY_恐惧之牙|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob 变异破坏者
    .complete 1487,2 --Deviate Viper (7)
    .mob 剧毒飞蛇
    .complete 1487,3 --Deviate Shambler (7)
    .mob 变异蹒跚者
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob 变异尖牙风蛇
    .isOnQuest 1487
step
    #label DeviateRaptors
    >>击杀|cRXP_ENEMY_变异迅猛龙|r，并拾取它们的|cRXP_ENEMY_皮|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
step
    #label Ectoplasms
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .mob 吞噬软浆怪
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
step
    #optional
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith next
    .subzone 380 >>在WC内离开你的队伍,以便在1分钟后被传送到Crossroads墓地
    .subzoneskip 392
step
    #completewith GShard
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >> 飞往棘齿城
    .target 迪弗拉克
    .subzoneskip 392
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1491 >>交任务  智慧饮料
    .target 麦伯克·米希瑞克斯
    .isQuestComplete 1491
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .turnin 959 >> 交任务 港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target 斯布特瓦夫
    .isOnQuest 6981
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .turnin 1529 >>交任务水之召唤
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务  玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .turnin 1528 >>交任务水之召唤
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务  玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务  玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务  玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step
    #optional << Shaman
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .turnin 874 >>交任务  玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .isOnQuest 874
step
    #optional
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .isQuestTurnedIn 874
step
    #loop
    .goto 1413/1,-4031.64,-1537.94,0
    .goto 1413/1,-3937.4,-1789.27,0
    .goto 1413/1,-3821.88,-2004.8,0
    .goto 1413/1,-4041.78,-1446.73,50,0
    .goto 1413/1,-4031.64,-1537.94,50,0
    .goto 1413/1,-3937.4,-1789.27,50,0
    .goto 1413/1,-3821.88,-2004.8,50,0
    >>击杀 |cRXP_ENEMY_依沙瓦克|r，拾取他的 |cRXP_LOOT_依沙瓦克的心脏|r
    >>|cRXP_WARN_他在沿海地区有四个不同的刷新位置|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan 依沙瓦克
    .isQuestTurnedIn 874
step
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .turnin 873 >> 交任务依沙瓦克
    .target 玛伦·星眼
    .isQuestComplete 873
step
    #completewith TopofWCturnins
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >> 飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 852 >>交任务  赫兹鲁尔·血印
    .target 雷戈萨·死门
    .isQuestComplete 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_下一个任务非常困难，建议组队完成。你可以风筝 |cRXP_ENEMY_督军克罗姆扎|r 在任务给予者所在的建筑物周围|r
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 4021 >>接受任务 人马无双！
    .target 雷戈萨·死门
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto 1413/1,-1884.39,-289.38
    >>击杀 |cRXP_ENEMY_督军克罗姆扎|r当他出现后。拾取他掉落在地上的 |cRXP_PICK_旗帜|r
    >>|cRXP_WARN_小心！他是一个强力精英，并且至少有两个|r |cRXP_ENEMY_科卡尔|r |cRXP_WARN_怪物守卫|r
    >>|cRXP_WARN_他可能需要最长 3 分钟才会刷新|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan 督军克罗姆扎
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 4021 >>交任务  人马无双！
    .target 雷戈萨·死门
    .isQuestComplete 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #optional
    #completewith TopofWCturnins
    .abandon 855 >>放弃任务 半人马护腕
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> 沿着山路向上前进
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .turnin 6981 >> 交任务 发光的碎片
    .accept 3369 >> 接受任务 在噩梦中
    .target 菲拉·古风
    .isOnQuest 6981
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .accept 3369 >> 接受任务 在噩梦中
    .target 菲拉·古风
    .isQuestTurnedIn 6981
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .turnin 1486 >> 交任务 变异皮革
    .target 纳尔帕克
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> 交任务 清除变异者
    .target 厄布鲁
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
step
    #optional
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1487 >> 交任务 清除变异者
    .target 厄布鲁
    .isQuestComplete 1487
step
    #optional
    #label TopofWCturnins
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1486 >> 交任务 变异皮革
    .target 纳尔帕克
    .isQuestComplete 1486
step
    #completewith WCEnd
    .hs >> 使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 914 >>交任务  尖牙德鲁伊
    .target 纳拉·蛮鬃
    .isQuestComplete 914
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 3369 >> 交任务  在噩梦中
    .target 大德鲁伊哈缪尔·符文图腾
    .isOnQuest 3369
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> 前往灵魂高地，然后进入幻象之池
    .isQuestComplete 962
step
    #label WCEnd
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 962 >>交任务  毒蛇花
    .target 药剂师扎玛
    .isQuestComplete 962
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alodan|r 对话
    .train 1866 >>训练你的职业技能
    .target Alodan the Hopeful
    .xp <20,1
    .xp >22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alodan|r 对话
    .train 1026 >>训练你的职业技能
    .target Alodan the Hopeful
    .xp <22,1
step
    #optional
    .abandon 1486 >>放弃任务 变异皮革
step
    #optional
    .abandon 1487 >>放弃任务 清除变异者
step
    #optional
    .abandon 1491 >>放弃任务 智慧饮料
step
    #optional
    .abandon 959 >>放弃任务 港口的麻烦
step
    #optional
    .abandon 914 >>放弃任务 尖牙德鲁伊
step
    #optional
    .abandon 962 >>放弃任务 毒蛇花
step << Warlock/Shaman
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip The Barrens
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳格玛|r 对话
    .turnin 1511 >>交任务肯兹格拉的伤药
    .accept 1515 >>接受任务多格兰之囚
    .target 步兵劳格玛
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多格兰|r 对话
    .turnin 1515 >>交任务  多格兰之囚
    .accept 1512 >>接受任务爱的礼物
    .target 步兵多格兰
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> 向南前往 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 对话
    .turnin 1530 >>交任务水之召唤
    .accept 1535 >>接受任务水之召唤
    .target 布瑞恩
step << Warlock/Shaman
    #completewith next
    .subzone 378 >>回到陶拉祖营地
step << Warlock/Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 欧姆萨·雷角
    .zoneskip Orgrimmar
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Orgrimmar
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1512 >>交任务爱的礼物
    .accept 1513 >>接受任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_在召唤圆圈处|r使用|cRXP_WARN_ |T133290:0|t[多格兰的吊坠]|r
    .use 6626
step << Warlock
    .goto 1454/1,-4377.13,1804.77
    >>击杀 |cRXP_ENEMY_被召唤的魅魔|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob 魅魔
    .use 6626
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1513 >>交任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6202 >> 训练你的职业技能
    .target 米尔科特
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6223 >> 训练你的职业技能
    .target 米尔科特
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡雷斯|r |cRXP_BUY_对话。购买一把|r |T135640:0|t[双刃弯刀] |cRXP_BUY_如果你还没有匕首的话|r
    .collect 2207,1 --Collect Jambiya (1)
    .target 卡雷斯
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 8676 >>学习 |T132282:0|t[伏击]
    .train 1943 >>学习 |T132302:0|t[撕裂]
    .train 1856 >>学习 |T132331:0|t[消失]
    .train 1725 >>学习 |T132289:0|t[扰乱]
    .train 1785 >>学习 |T132320:0|t[潜行 等级2]
    .accept 2460 >>接受任务 碎手军礼
    .target 申苏尔
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>在 |cRXP_FRIENDLY_申苏尔|r 行完注目礼后，选中他并输入 /Salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target 申苏尔
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2460 >>交任务  碎手军礼
    .accept 2458 >>接受任务卧底密探
    .target 申苏尔
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r |cRXP_BUY_对话。购买|r |T134387:0|t[闪光粉] |cRXP_BUY_从他那里|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target 雷库尔
step << Priest/Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2138 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2121 >> 训练你的职业技能
    .target 皮菲瑞多
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >> 训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .turnin 5642 >> 交任务  暗影守卫
    .trainer >> 训练你的职业技能
    .target 乌尔库
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8103 >> 训练你的职业技能
    .target 乌尔库
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 3747 >> 训练你的职业技能
    .target 乌尔库
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> 从西侧出口进入贫瘠之地
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> 前往淤泥沼泽
step << Druid
    .goto 1413/1,-3119.64,1050.38
    >>拾取水中的 奇怪的锁箱|cRXP_PICK_，获取 |T133443:0|t[水性敏捷坠饰]|r
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+选中 |cRXP_FRIENDLY_工头费苏勒|r，然后使用你的 |T134536:0|t[信号枪]两次，接着输入 /Salute
    >>|cRXP_WARN_小心！在他变为友好之前不要接近，否则他会攻击你！|r
    .use 8051
    .target 工头费苏勒
step << Rogue
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r|cRXP_FRIENDLY_工头费苏勒|r 对话
    .turnin 2458 >>交任务  卧底密探
    .accept 2478 >>接受任务基本不可能的任务
    .target 工头费苏勒
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto 1413/1,-2930.15,1209.15
    >>对 |cRXP_ENEMY_工头希里克斯|r 使用 |T133644:0|t[偷窃技能]，获取他的 |cRXP_LOOT_塔钥匙|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob 工头希里克斯
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_这里的每个怪物对某些技能造成的伤害会增加|r
    >>对 |cRXP_ENEMY_变异风险投资公司工人|r 使用 |T132282:0|t[伏击]
    >>对 |cRXP_ENEMY_风险投资公司巡逻员|r 使用 |T132302:0|t[割裂]
    >>对 |cRXP_ENEMY_风险投资公司看守|r 使用一次 |T132292:0|t[刺骨]（1 连击点）
step << Rogue
    #label roguetowerq
    .goto 1413/1,-2922.04,1224.69
    >>进入盗贼塔并击杀 |cRXP_ENEMY_无人机|r、|cRXP_ENEMY_巡逻者|r 和 |cRXP_ENEMY_哨兵|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob 变异风险投资公司工人
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob 风险投资公司巡逻员
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob 风险投资公司看守
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>在塔顶你会找到 |cRXP_ENEMY_加利维克斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_使用|r |T132282:0|t[伏击] |cRXP_WARN_将他的生命值降至一半。使用|r |T132155:0|t[凿击] |cRXP_WARN_恢复能量，并使用|r |T136205:0|t[闪避]
	>>|cRXP_WARN_记得根据需要使用药水和|r |T132819:0|t[菊花茶] |cRXP_WARN_|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob 大工头普兹克·加里维克斯
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>使用你的开锁技能打开 |cRXP_PICK_加里维克斯的保险箱|r 并拾取 |cRXP_LOOT_混合物|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>前往石矿洞
step << skip --Rogue/Druid
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_跳跃到木质梁上，通过登出再登入执行返回角色选择跳过。如果你没有成功就跑回奥格瑞玛|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> 死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>从西侧入口进入奥格瑞玛
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2478 >>交任务基本不可能的任务
    .accept 2479 >>接受任务希诺特的帮助
    .target 申苏尔
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_对话。向他购买|r |T133849:0|t[腐朽之尘] |cRXP_BUY_和|r |T132793:0|t[空瓶] |cRXP_BUY_|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target 雷库尔
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8498 >> 训练你的职业技能
    .target 卡德里斯
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 905 >> 训练你的职业技能
    .target 卡德里斯
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior/Undead Paladin
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .target 哈纳什
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 6192 >> 训练你的职业技能
    .target 格雷兹·怒拳
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 5308 >> 训练你的职业技能
    .target 格雷兹·怒拳
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14323 >> 训练你的职业技能
    .target 奥玛克
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14262 >> 训练你的职业技能
    .target 奥玛克
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24558 >> 训练你的宠物技能
    .target 肖祖
    .xp <24,1
step << skip
    .goto 1454/1,-4746.58,2036.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺格|r 对话
    .accept 2841 >>接受任务设备之战
    .target 诺格
step
    .goto 1454/1,-4739.57,2036.84
    .gossipoption 95758 >>与 |cRXP_FRIENDLY_索维克|r 对话
    .isNotOnQuest 2842
    .target 索维克
step
    .goto 1454/1,-4739.57,2036.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索维克|r 对话
    -->>|cRXP_WARN_You are required to have Rig Wars in your quest log to accept this quest|r
    .accept 2842 >>接受任务主工程师斯库提
    .target 索维克
step << skip
    #optional
    .abandon 2841 >> 放弃任务 设备之战。确保你的任务日志中有 主工程师斯库提
    .dungeon !GNOMER
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特拉克根|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,1,6544,1 --Deadly Throwing Axe (200)
    .target 特拉克根
step << Rogue
    >>|cRXP_WARN_如果你身上有|r |T134437:0|t[抗毒药]|cRXP_WARN_，使用一个来解除 |T136230:0|t[赞吉尔之触]|r
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    #optional
    .destroy 8051 >> |cRXP_WARN_从你的背包中删除|r |T134536:0|t[信号枪] |cRXP_WARN_，因为已经不再需要|r
    .destroy 8066 >> |cRXP_WARN_将 |T134374:0|t[菲兹鲁的哨子]|r从背包中删除|cRXP_WARN_，因为它已经不再需要了|r
step
    #optional
    #label flytoORG
]])
