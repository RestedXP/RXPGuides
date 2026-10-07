if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 12-17级 贫瘠之地
#displayname 14-18级 贫瘠之地 << !Shaman !Hunter !Tauren
#displayname 15-18级 贫瘠之地 << Paladin
#version 11
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#next 17-22级 石爪山脉/贫瘠之地/灰谷


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >>进入尘风洞穴
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
step << skip --!Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .xp >15,1
step << !Tauren
    --#softcore
    #completewith ThievesPickup
    .subzone 380 >>前往十字路口
    .xp <15,1
step << !Tauren
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >>前往十字路口
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
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
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
    .fp >>获得十字路口的飞行点
    .target 迪弗拉克
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .accept 848 >>接受任务 菌类孢子
    .turnin 1358 >>交任务 给赫布瑞姆的样本
    .target 药剂师赫布瑞姆
    .isOnQuest 1358
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 1492 >>接受任务码头管理员迪兹维格
    .accept 848 >>接受任务 菌类孢子
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
    +|cRXP_WARN_装备|r |T135499:0|t[多层弯弓]
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
    .home >>将你的炉石设置到十字路口
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
    .goto 1413/1,-2205.62,314.62,100 >>前往山顶
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >>进入恐雾洞穴
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>右键点击 |cRXP_PICK_祭坛|r
    >>|cRXP_WARN_请确保你身上带有|r |T134095:0|t[有瑕疵的能量石]|cRXP_WARN_（30 分钟时限）|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
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
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
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
step << !Undead !Tauren !Skyborne
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找个队伍去怒焰裂谷了
    .dungeon RFC
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_索克|r 对话
    .turnin 842 >>交任务 十字路口征兵 << Tauren Shaman
    .turnin 844 >>交任务  平原陆行鸟的威胁
    .accept 845 >>接受任务 斑马的威胁
    .target 瑟格拉·黑棘
    .goto 1413/1,-2670.74,-482.61
    .turnin 871 >>交任务 野猪人的袭击
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .goto 1413/1,-2595.75,-473.15
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_索克|r 对话
    .turnin 844 >>交任务  平原陆行鸟的威胁
    .accept 845 >>接受任务 斑马的威胁
    .target 瑟格拉·黑棘
    .goto 1413/1,-2670.74,-482.61
    .turnin 871 >>交任务 野猪人的袭击
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .goto 1413/1,-2595.75,-473.15
step
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
step << !Undead !Tauren !Skyborne
    #completewith HiddenEnemiesPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果现在没有，你可以稍后再来获取|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
    .dungeon RFC
step << Tauren
    #optional
    #completewith KreenigSnarlsnout1
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto 1413/1,-3324.34,-217.09
    >>击杀 |cRXP_ENEMY_克里尼格·糟鼻|r，拾取他的 |cRXP_LOOT_獠牙|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob 克里尼格·糟鼻
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .dungeon RFC
step << Tauren
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
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
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
    .dungeon RFC
step << Tauren Shaman
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
    .goto 1411/1,-4033.08,-255.91,10 >>沿着山路向上前往 |cRXP_FRIENDLY_泰尔夫|r
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1525 >>交任务  火焰的召唤
    .accept 1526 >>接受任务 火焰的召唤
    .target 泰尔夫·祖拉姆
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_使用|r |T134732:0|t[火焰灵契]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>击杀 |cRXP_ENEMY_火焰之魂|r，拾取掉落的 |cRXP_LOOT_发光余烬|r
    .complete 1526,1 --Glowing Ember (1)
    .mob 火焰之魂
    .dungeon RFC
step << Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>点击地上的 |cRXP_PICK_火盆|r
    .turnin 1526 >>交任务  火焰的召唤
    .accept 1527 >>接受任务 火焰的召唤
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 1527 >>交任务  火焰的召唤
    .target 卡纳尔·菲斯
    .dungeon RFC
step << Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果没有刷新，请等待其重新出现|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找个队伍去怒焰裂谷了
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>前往奥格瑞玛
    .dungeon RFC
step << Tauren
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    >>|cRXP_WARN_不要乘坐飞行路线前往任何地方！|r
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1411/1,-4769.10,1484.39,0
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r 小怪，直到掉落|cRXP_LOOT_军官的徽章|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .dungeon RFC
step << !Undead !Skyborne
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >>交任务 隐藏的敌人
    .accept 5728 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << !Undead !Skyborne
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_销毁|r |T134417:0|t[军官的徽章] |cRXP_WARN_因为你不再需要它|r
    .dungeon RFC
step << !Undead !Skyborne
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >>进入 RFC Instance portal. Zone in
    .dungeon RFC
step << !Undead !Skyborne
    >>|cRXP_WARN_如果可能，让队友共享以下任务|r
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .dungeon RFC
step << !Undead !Skyborne
    #optional
    #completewith next
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead !Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 5722 >>交任务 寻找背包
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead !Skyborne
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead !Skyborne
    #label TroggsShamans
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead !Skyborne
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step << !Undead !Skyborne
    >>击杀|cRXP_ENEMY_饥饿者塔拉加曼|r，拾取|cRXP_LOOT_心|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step << !Undead !Skyborne
    #label BazzalanandJergosh
    >>击杀|cRXP_ENEMY_巴扎兰|r和|cRXP_ENEMY_召唤者耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead !Skyborne
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5728 >>交任务 隐藏的敌人
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead !Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5729 >>交任务 隐藏的敌人
    .accept 5730 >>接受任务 隐藏的敌人
    .target 尼尔鲁·火刃
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead !Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5730 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 多拉斯
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren !Undead !Skyborne
    #completewith KreenigSnarlsnout
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .zoneskip The Barrens
    .bindlocation 380,1
    .dungeon RFC

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Thunder Bluff >>向南前往陶拉祖营地，然后进入莫高雷。从那里前往雷霆崖
    >>|cRXP_WARN_如果你已经解锁雷霆崖的飞行点，可以直接飞过去|r
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点 << !Tauren
    .target 欧姆萨·雷角
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >>前往长者高地
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Tauren
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Thunder Bluff >>开启雷霆崖飞行点
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << !Undead !Skyborne
    #completewith KreenigSnarlsnout
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,>0
    .dungeon RFC
step << !Undead !Skyborne
    #completewith KreenigSnarlsnout
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .vendor >>补充食物和水 << !Rogue !Warrior
    .vendor >>补充食物 << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .isOnQuest 872,5041,845
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果没有刷新，请等待其重新出现|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
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
step
    #optional
    #completewith next
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>击杀 |cRXP_ENEMY_克里尼格·糟鼻|r，拾取他的 |cRXP_LOOT_獠牙|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob 克里尼格·糟鼻
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
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
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
    .zone Durotar >>前往 杜隆塔尔
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
    .goto 1411/1,-4033.08,-255.91,10 >>沿着山路向上前往 |cRXP_FRIENDLY_泰尔夫|r
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰尔夫|r 对话
    .turnin 1525 >>交任务  火焰的召唤
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
    .turnin 1526 >>交任务  火焰的召唤
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
    .dungeon RFC
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳尔|r 对话
    .turnin 1527 >>交任务  火焰的召唤
    .target 卡纳尔·菲斯
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果没有刷新，请等待其重新出现|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step << skip
    #completewith RatchetEnter
    >>击杀 |cRXP_ENEMY_赤鳞尖啸龙|r。拾取它们的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞尖啸龙
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>击杀 |cRXP_ENEMY_快步斑马|r。拾取他们的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >>前往棘齿城
    .isOnQuest 845
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .accept 887 >>接受任务 南海海盗
    .target 加兹鲁维
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fp Ratchet >>获取棘齿城飞行路径
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
step << Mage/Priest/Warlock/Shaman/Druid
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >>把垃圾物品卖给商人
    --.collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target 旅店老板维尔雷
    .isOnQuest 887
    .xp <15,1
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_从背包中删除|r |T133735:0|t[控制台操作手册]|cRXP_WARN_，因为已不再需要|r
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
    >>|cRXP_WARN_他会在山上来回巡逻|r
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
    #label SouthSea
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
step << Orc Rogue/Troll Rogue
    .goto 1413/1,-3832.02,-1381.87,50,0
    .goto 1413/1,-3730.68,-1364.98,50,0
    .goto 1413/1,-3677.99,-1392.00
	>>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他会在山上来回巡逻|r
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
    .fly Crossroads >>飞往十字路口
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
    .train 782 >>训练你的职业技能
    .target 洛甘纳尔
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <14,1
    .xp >16,1
step << Tauren Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8925 >>训练你的职业技能
    .target 洛甘纳尔
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <16,1
step << Tauren
    #completewith FlyXroads2
    .hs >>使用炉石返回雷霆崖
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
    .train 2645 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <14,1
    .xp >16,1
step << Tauren Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8498 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <16,1
step << Tauren Hunter/Tauren Warrior
    #completewith HunterTraining1 << Tauren Hunter
    #completewith WarriorTraining1 << Tauren Warrior
    .goto 1456/1,-123.26,-1394.49,60 >>前往猎人高地
step << Tauren Hunter
    #label HunterTraining1
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 13795 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <16,1
step << Tauren Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24556 >>训练你的宠物技能
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
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 和 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .turnin 872 >>交任务  前沿哨所的进攻
    .target 索克
    .goto 1413/1,-2595.75,-473.15
    .turnin 845 >>交任务  斑马的威胁
    .accept 903 >>接受任务 猎杀雌狮
    .target 瑟格拉·黑棘
    .goto 1413/1,-2669.72,-481.94
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
    .vendor >>如果有出售的话，|cRXP_BUY_从他那里|r购买1把|cRXP_FRIENDLY_ |T135490:0|t[|r精良的长弓|cRXP_BUY_] 。同时补充箭矢库存|r
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
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #completewith next
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
step
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
    #completewith Samophlange
    +|cRXP_WARN_小心区域内的 |r|cRXP_ENEMY_赤鳞镰爪龙|r|cRXP_WARN_。它们最高可达 18 级，并且会施放 |T132152:0|t[痛击]|r
    --.dungeon !RFC
    .xp >17,1
step
    #optional
    #completewith Samophlange
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
    --.dungeon !RFC
step
    .goto 1413/1,-1812.500,790.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .accept 95494 >>接受任务 受挫的自尊与狮皮
    .accept 95507 >>接受任务 弗朗恩的猎物
    .target 弗朗恩·凝血
step
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    >>|cRXP_FRIENDLY_弗朗恩|r |cRXP_WARN_出售|r |T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r]，|cRXP_WARN_该物品为限量供应|r << Tauren Warrior/Tauren Shaman/Druid
	.vendor	>>出售垃圾物品并修理装备
    .target 弗朗恩·凝血
    --.dungeon !RFC
step
    #completewith next
    >>拾取地上的 |cRXP_PICK_尖刺陷阱|r
    .complete 95507,1 --|8/8 Trapped Game
step
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>击杀 |cRXP_LOOT_草原狮王|r。拾取它们的 |cRXP_LOOT_皮|r 和 |cRXP_LOOT_獠牙|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Patriarch
step
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>拾取地上的 |cRXP_PICK_尖刺陷阱|r
    .complete 95507,1 --|8/8 Trapped Game
step
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩·凝血|r 对话
    .turnin 95494 >>交任务 受挫的自尊与狮皮
    .turnin 95507 >>交任务 弗朗恩的猎物
    .accept 95495 >>接受任务 隐居的制皮匠
    .target 弗朗恩·凝血
step
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>沿着山路向上前进
step
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔顿|r 对话
    .turnin 95495 >>交任务 隐居的制皮匠
    .accept 95621 >>接受任务 谷中风波
    .target Walton
step
    .goto 1413/1,-1611.500,549.000
    >>击杀 |cRXP_ENEMY_阿达摩尔下士|r
    >>|cRXP_WARN_小心!你可能同时仇恨2到3个小怪|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
step
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>沿着山路向上前进
step
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔顿|r 对话
    .turnin 95621 >>交任务 谷中风波
    .accept 95508 >>接受任务 不速之客
    .timer 67,不速之客 剧情演出
    .target Walton
step
    .goto 1413/1,-1629.200,835.600
    >>在房子后面等待剧情演出结束，以免同时引导所有小怪
    >>|cRXP_WARN_你实际上不需要协助 |cRXP_FRIENDLY_沃尔顿|r，他会在 |r弗朗恩·凝血|cRXP_FRIENDLY_ 的帮助下活下来|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
step
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔顿|r 对话
    .turnin 95508 >>交任务 不速之客
    .target Walton
step
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>点击 |cRXP_PICK_控制台|r
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step
    .goto 1413/1,-2686.95,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_小心！关闭阀门后会刷新两个怪物|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto 1413/1,-2675.80,842.290
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_关闭阀门后会刷新一个怪物|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto 1413/1,-2679.86,830.80
    >>点击 |cRXP_PICK_阀门|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step
    .goto 1413/1,-2731.54,909.850
    >>在建筑内击杀 |cRXP_ENEMY_工匠斯尼格斯|r，拾取他的 |cRXP_LOOT_控制台钥匙|r
    .complete 901,1 --Console Key (1)
    .mob 工匠斯尼格斯
step
    .goto 1413/1,-2686.95,825.40
    >>点击|cRXP_PICK_控制台|r
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step
    #optional
    #completewith Ignition
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 平原陆行鸟的肾脏
step
    #completewith next
    >>击杀 |cRXP_ENEMY_草原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob 草原徘徊者
step
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
step
    #loop
    .goto 1413/1,-2783.900,568.700,0
    .goto 1413/1,-2783.900,568.700,50,0
    .goto 1413/1,-2859.800,565.900,50,0
    .goto 1413/1,-3023.000,530.700,50,0
    .goto 1413/1,-2897.500,642.200,50,0
    >>击杀 |cRXP_ENEMY_草原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob 草原徘徊者
step
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>在这里升级到16级很重要，因为接下来的3个任务都相当困难
	.xp 16
step
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于淤泥沼泽的 |r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    .accept 858 >>接受任务 点火
    .target 维兹克兰克的伐木机
step
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_工头葛瑞尔斯|r 或|cRXP_WARN_ |r淤泥兽|cRXP_ENEMY_ |r刷新了，|cRXP_WARN_i请小心。它们是强力的 19 级稀有怪|r
    .unitscan 工头葛瑞尔斯
    .unitscan 淤泥畸体
step
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
step
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .turnin 858 >>交任务  点火
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestComplete 858
step
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_FRIENDLY_维兹克兰克的伐木机|r |cRXP_WARN_刷新时间较长。如果竞争人数较多，可以考虑跳过此任务|r
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_当伐木机移动到高处时，会刷新两个|r |cRXP_ENEMY_风险投资公司雇佣兵|r |cRXP_WARN_。击杀他们后，等待他在终点的剧情事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob 风险投资公司雇佣兵
    .mob 风险投资公司苦工
    .mob 监工格里比
    .isOnQuest 863
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
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
step
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
step
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
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>从西侧入口进入奥格瑞玛
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_制作|r |T133685:0|t[亚麻绷带]|cRXP_WARN_直到你的急救技能达到 40 或更高|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到40，请跳过此步骤|r
    .train 3276 >>学习 |T133688:0|t[厚亚麻绷带]
    .target 阿诺克
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到50或更高|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到50，请跳过此步骤|r
    .train 3274 >>学习 中级急救
    .target 阿诺克
    .skill firstaid,<40,1
step
    #completewith SpiritsPickup
    +|cRXP_WARN_确保不要卖掉你的|r |T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8102 >>训练你的职业技能
    .target 乌尔库
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >>训练你的职业技能
    .target 乌尔库
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2120 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
step << !Orc !Troll
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨托格|r 对话
    >>|cRXP_WARN_他在建筑物的楼上|r
    .accept 97246 >>接受任务 午餐诱惑
    .target Thatog
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
    .turnin 6385 >>交任务 双足飞龙驭手多拉斯
    .accept 6386 >>接受任务 返回十字路口
    .target 多拉斯
    .isOnQuest 6385
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .accept 6386 >>接受任务 返回十字路口
    .target 多拉斯
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    >>|cRXP_WARN_不要乘坐飞行路线前往任何地方！|r
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
    .isQuestAvailable 4921
step << !Orc !Troll
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博斯坦|r 对话
    .turnin 97246 >>交任务 午餐诱惑
    .accept 97249 >>接受任务 最爱的食物
    .target Borstan
step << !Orc !Troll
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考吉尔德|r 对话 
    .accept 97242 >>接受任务 耶尔玛克的混合配方
    .target Kor'geld
step << !Orc !Troll
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>前往荣耀谷
step << !Orc !Troll
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>拾取水中的 |cRXP_PICK_一把香蒲|r 和 |cRXP_PICK_矛草插条|r
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 285 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 8198 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 13795 >>训练你的职业技能
    .target 奥玛克
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 2643 >>训练你的职业技能
    .target 奥玛克
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24557 >>训练你的宠物技能
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
step << Warrior !Skyborne
    #optional
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .target 哈纳什
    .money <0.010
step << Shaman !Skyborne
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
step << !Orc !Troll
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_考吉尔德|r 对话
    .turnin 97242 >>交任务 耶尔玛克的混合配方
    .target Kor'geld
step << !Orc !Troll
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_耶尔玛克|r 对话
    >>|cRXP_WARN_你可能必须等待约10秒才能接受该任务|r
    .accept 97275 >>接受任务 伍特急什么
    .target Yelmak
step << !Orc !Troll
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伍特|r 对话
    .turnin 97275 >>交任务 伍特急什么
    .target Whuut
step << !Orc !Troll
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米吉|r 对话
    .turnin 97249 >>交任务 最爱的食物
    .target Migi
step << skip --!Orc !Troll
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯拉|r 对话 
    .accept 97326 >>接受任务 以石为座
    .target Thra
step << skip --!Orc !Troll
    .goto 1454/1,-4293.600,1949.900
    >>拾取地上的橙色 |cRXP_PICK_巨石|r
    >>|cRXP_WARN_如果做任务的人很多，就跳过这个任务！没有那么多 |cRXP_PICK_岩石|r ，而且它们不会快速刷新|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << skip --!Orc !Troll
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯拉|r 对话
    .turnin 97326 >>交任务 以石为座
    .target Thra
    .isQuestComplete 97326
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8019 >>训练你的职业技能
    .target 卡德里斯
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 913 >>训练你的职业技能
    .target 卡德里斯
    .xp <18,1
step
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佐尔 |r 对话
    .accept 1061 >>接受任务石爪之灵
    .target 佐尔·孤树
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .train 1804 >>学习 |T136058:0|t[开锁]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .accept 2379 >>接受任务 赞杜沙
    .target 申苏尔
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1963 >>交任务 碎手氏族
    .accept 1858 >>接受任务 碎手氏族
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
    .train 1455 >>训练你的职业技能
    .target 米尔科特
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1014 >>训练你的职业技能
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
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >>炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Crossroads >>飞往十字路口
    .target 多拉斯
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .isQuestAvailable 3281
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >>交任务 菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    .turnin 867 >>交任务  鹰身强盗
    .accept 875 >>接受任务 鹰身人首领
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
step << Orc/Troll
    .goto 1413/1,-2709.24,-404.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .turnin 6386 >>交任务 返回十字路口
    .target 扎尔夫
    .isOnQuest 6386
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gur'ak|r 对话
    .accept 97003 >>接受任务 Chol'aruk the Ravener
    .target Gur'ak
step
    #completewith RapHornsPickup
    .goto 1413/1,-3262.600,-99.400,0
    +|cRXP_WARN_当你继续在 The Barrens 冒险时，找一个5人小队完成"Chol'aruk the Ravener"任务|r
    >>|cRXP_WARN_完成此任务将获得4100点经验值。他所在的洞穴入口在你的地图上有标记（|cRXP_ENEMY_钢鬃|r 区域）|r
    .isOnQuest 97003
step
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    >>|cRXP_WARN_如果使用|cRXP_ENEMY_ |T134227:0|t[埃其亚基的号角]|r 后, |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_如果使用 |cRXP_ENEMY_|T134227:0|t[埃其亚基的号角]|r 后 |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请放弃 埃其亚基 任务，然后返回城镇重新接取|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto 1413/1,-3031.48,461.91
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
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
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2382 >>交任务  棘齿城的维尼克斯 << Rogue
    .accept 2381 >>接受任务 抢劫海盗 << Rogue
    .accept 97253 >>接受任务 零零碎碎
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
    .turnin 863 >>交任务 梅贝尔的隐形水
    .accept 3921 >>接受任务 维妮·布特巴克 << Hunter
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >>交任务  矿工的宝贝
    .target 码头管理员迪兹维格
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .accept 3921 >>接受任务 维妮·布特巴克 << Hunter
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >>交任务  矿工的宝贝
    .target 码头管理员迪兹维格
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 863 >>交任务 梅贝尔的隐形水
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
    .isQuestComplete 863
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .accept 865 >>接受任务 一定是因为角
    .accept 1069 >>接受任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >>把垃圾物品卖给商人
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
    #loop
    .goto 1413/1,-3657.700,-1435.500,0
    .goto 1413/1,-3675.100,-1364.100,40,0
    .goto 1413/1,-3598.900,-1378.800,40,0
    .goto 1413/1,-3657.700,-1435.500,40,0
    .goto 1413/1,-3654.900,-1482.400,40,0
    .goto 1413/1,-3680.100,-1593.000,40,0
    .goto 1413/1,-3614.800,-1632.800,40,0
    .goto 1413/1,-3611.500,-1692.500,40,0
    >>拾取地上的 |cRXP_PICK_一把错综复杂的零件|r
    .complete 97253,1 --|5/5 Handful of Complicated Parts
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
    >>拾取地上的|cRXP_PICK_[DEPRECATED] 被偷走的银币|r
    .complete 3281,1 --Stolen Silver (1)
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
    #completewith next
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_雷霆蜥蜴的角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果找不到他或无法击杀他，可以跳过此步骤。你稍后可以回来|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务 拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
    .xp <18,1
step
    #optional
    #completewith CampTArrive
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r，拾取它们掉落的 |cRXP_LOOT_角|r。此任务不用现在就完成
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >>前往陶拉祖营地
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
    .turnin 883 >>交任务拉克塔曼尼
    .target 乔恩·星眼
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
    .target 碎牙
step
    #optional
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点 << !Tauren
    .target 欧姆萨·雷角
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>前往莫高雷
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>乘电梯进入雷霆崖
    >>|cRXP_WARN_如果你已经解锁雷霆崖的飞行点，可以直接飞过去|r
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >>前往长者高地
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #label RFCTurninsTB1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_充满希望的阿洛丹|r 对话
    .train 1044 >>训练你的职业技能
    .target Alodan the Hopeful 
    .xp <18,1
    .xp >20,1
    .dungeon RFC
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_充满希望的阿洛丹|r 对话
    .train 1866 >>训练你的职业技能
    .target Alodan the Hopeful 
    .xp <20,1
    .dungeon RFC
step
    #optional
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点 << !Tauren
    .fly Crossroads >>飞往十字路口
    .target 欧姆萨·雷角
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    #optional
    .abandon 5723 >>放弃任务 试探敌人
    .dungeon RFC
step
    #optional
    .abandon 5725 >>放弃任务 毁灭之力
    .dungeon RFC
step
    #optional
    .abandon 5728 >>放弃任务 隐藏的敌人
    .dungeon RFC
step
    #optional
    .abandon 5761 >>放弃任务 饥饿者塔拉加曼
    .dungeon RFC
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >>交任务 菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_图加|r, |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 4921 >>交任务在战斗中失踪
    .accept 95774 >>接受任务 她的名字叫奥格拉
    .target 曼科里克
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>交任务  死水绿洲
    .accept 880 >>接受任务 变异的生物
    .target 图加·符文图腾
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>交任务  在迅猛龙的巢穴里
    .accept 3261 >>接受任务 [DEPRECATED in 4.x] 乔恩·星眼
    .target 瑟格拉·黑棘
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>交任务  被偷走的银币
    .target 加兹罗格
    .goto 1413/1,-2639.32,-436.00
step
    #optional
    .destroy 5165 >>|cRXP_WARN_删除你仍然留着的任何|r |T132914:0|t[赤鳞迅猛龙的羽毛] |cRXP_WARN_|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r|cRXP_BUY_对话. |r从他那里购买 1 个 |cRXP_BUY_|T134410:0|t[中型箭袋]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target 阿瑟罗克
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
step
    #completewith Hezrul
    .subzone 387 >>前往甜水绿洲
    .isQuestTurnedIn 851
step
    #optional
    #completewith Hezrul
    >>在寻找|cRXP_ENEMY_赫兹鲁尔·血印|r的过程中，击杀|cRXP_ENEMY_绿洲钳嘴龟|r。从它们身上拾取|cRXP_LOOT_黑石迫击炮弹|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob 绿洲钳嘴龟
step
    #optional
    #completewith next
    >>击杀 绿洲周围的|cRXP_ENEMY_科卡尔|r。拾取它们掉落的 |cRXP_LOOT_护腕|r
    .complete 855,1 --Centaur Bracers (15)
    .mob 科卡尔战士
    .mob 科卡尔驯犬者
    .mob 科卡尔掠夺者
    .isOnQuest 855
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
    >>击杀 绿洲周围的|cRXP_ENEMY_科卡尔|r。拾取它们掉落的 |cRXP_LOOT_护腕|r
    >>|cRXP_WARN_如果到目前为止掉落不多，可以跳过这个任务|r
    .complete 855,1 --Centaur Bracers (15)
    .mob 科卡尔战士
    .mob 科卡尔驯犬者
    .mob 科卡尔掠夺者
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step
    #optional
    #completewith CounterattackComplete
    .abandon 855 >>放弃任务 半人马护腕，因为你之前拾取的数量不足，不值得继续完成
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 852 >>交任务  赫兹鲁尔·血印
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 852
    .isQuestComplete 855
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
    #completewith CounterattackComplete
    +|cRXP_WARN_下一个任务非常困难，建议组队完成。你可以风筝 |cRXP_ENEMY_督军克罗姆扎|r 在任务给予者所在的建筑物周围|r
    >>|cRXP_WARN_如果你无法完成这个任务，就跳过它。你稍后会有另一个机会在更高等级完成它|r
    .isQuestTurnedIn 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 4021 >>接受任务 人马无双！
    .target 雷戈萨·死门
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto 1413/1,-1884.39,-289.38
    >>当|cRXP_ENEMY_督军克罗姆扎|r（20级精英怪） 出现时，击杀他。拾取他掉落在地上的 |cRXP_PICK_克罗姆扎军旗|r
    >>|cRXP_WARN_小心！他是一个强力精英，并且至少有两个|r |cRXP_ENEMY_科卡尔|r |cRXP_WARN_怪物守卫|r
    >>|cRXP_WARN_他可能需要最长 3 分钟才会刷新|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan 督军克罗姆扎
    .isOnQuest 4021
step
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
    #completewith StonetalonPickups
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
    #loop
    .goto 1413/1,-1458.79,565.96,0
    .goto 1413/1,-1458.79,565.96,40,0
    .goto 1413/1,-1379.75,620.68,40,0
    .goto 1413/1,-1376.71,717.97,40,0
    .goto 1413/1,-1323.0,747.7,40,0
    .goto 1413/1,-1245.99,763.91,40,0
    .goto 1413/1,-1223.7,699.05,40,0
    .goto 1413/1,-1290.58,670.0,40,0
    .goto 1413/1,-1245.99,624.74,40,0
    .goto 1413/1,-1241.94,559.2,40,0
    .goto 1413/1,-1155.8,553.12,40,0
    .goto 1413/1,-1150.74,513.93,40,0
    .goto 1413/1,-1194.31,508.53,40,0
    .goto 1413/1,-1263.22,458.53,40,0
    .goto 1413/1,-1311.86,415.97,40,0
    .goto 1413/1,-1366.58,449.75,40,0
    .goto 1413/1,-1417.24,486.91,40,0
    .goto 1413/1,-1445.62,532.85,40,0
    >>击杀 |cRXP_ENEMY_巫翼杀戮者|r。拾取他们的 |cRXP_LOOT_指环|r
    >>|cRXP_WARN_小心，|cRXP_ENEMY_巫翼杀戮者|r 会施放 |r|T135358:0|t[处决]|cRXP_WARN_（当你的生命值低于 20% 时会造成大量伤害），而 |cRXP_ENEMY_巫翼伏击者|r 则处于 |r|T132320:0|t[潜行] |cRXP_WARN_状态，并在周围巡逻|r
    >>|cRXP_WARN_注意 |r|cRXP_ENEMY_巫翼伏击者|r|cRXP_WARN_。它们处于潜行状态，并在区域内巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob 巫翼杀戮者
    .mob 巫翼伏击者
    .isOnQuest 875
step
    #label StonetalonPickups
    #completewith next
    .goto 1413/1,-950.10,-271.14,30 >>前往 |cRXP_FRIENDLY_希雷斯|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    #label StonetalonPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1061 >>交任务石爪之灵
    .accept 1062 >>接受任务地精侵略者
    .target 希雷斯·碎石
    .goto 1413/1,-950.10,-271.14
    .accept 6548 >>接受任务为我的村庄复仇
    .target 玛卡巴·扁蹄
    .goto 1413/1,-943.00,-265.06
    .maxlevel 20 << !Druid
step
    #optional
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto 1413/1,-950.10,-271.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 对话
    .turnin 1061 >>交任务石爪之灵
    .accept 1062 >>接受任务地精侵略者
    .target 希雷斯·碎石
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 17-22级 石爪山脉/贫瘠之地/灰谷
#displayname 18-22级 石爪山脉/贫瘠之地/灰谷 << !Shaman !Hunter !Tauren
#version 11
#group RestedXP魔兽世界无限指南（部落）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#next 22-24级 希尔斯布莱德


step
    #loop
    .goto 1442/1,-691.11,-13.63,0
    .goto 1442/1,-691.11,-13.63,40,0
    .goto 1442/1,-650.58,26.74,40,0
    .goto 1442/1,-718.94,65.49,40,0
    .goto 1442/1,-743.85,101.96,40,0
    .goto 1442/1,-771.20,113.040,40,0
    .goto 1442/1,-785.36,141.69,40,0
    .goto 1442/1,-838.59,148.20,40,0
    .goto 1442/1,-865.93,142.34,40,0
    .goto 1442/1,-846.4,103.92,40,0
    .goto 1442/1,-819.54,76.24,40,0
    .goto 1442/1,-774.61,-5.17,40,0
    .goto 1442/1,-774.61,-27.96,40,0
    .goto 1442/1,-726.27,-39.36,40,0
    >>击杀 |cRXP_ENEMY_恐怖图腾恶徒|r 和 |cRXP_ENEMY_恐怖图腾佣兵|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob 恐怖图腾恶徒
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob 恐怖图腾佣兵
    .isOnQuest 6548
step
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 6548 >>交任务为我的村庄复仇
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
    .isQuestComplete 6548
step
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto 1413/1,-943.00,-265.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛卡巴|r 对话
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto 1442/1,-460.13,67.77,30 >>沿着道路前往篝火处
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-350.74,112.06
    >>击杀 |cRXP_ENEMY_格鲁迪格·黑云|r 和 |cRXP_ENEMY_恐怖图腾蛮兵|r
    >>|cRXP_WARN_务必在开始洞内任务之前，先击杀全部6 名|r |cRXP_ENEMY_恐怖图腾蛮兵|r |cRXP_WARN_！|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob 格鲁迪格·黑云
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob 恐怖图腾蛮兵
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-342.44,129.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雅|r对话
    .accept 6523,1 >>接受任务保护卡雅
    .target 卡雅·扁蹄
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-261.38,90.57,40,0
    .goto 1442/1,-261.86,-7.12,40,0
    .goto 1442/1,-501.15,-41.64
    >>护送 |cRXP_FRIENDLY_卡雅|r，并始终保持在她身边
    >>|cRXP_WARN_小心！当你到达阿帕拉耶营地的篝火时，会刷新三名|r |cRXP_ENEMY_恐怖图腾|r |cRXP_WARN_敌人|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target 卡雅·扁蹄
    .isQuestTurnedIn 6548
step
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .accept 6461 >>接受任务盗窃的蜘蛛
    .target 辛吉拉
step << Priest/Mage/Warlock
    #completewith next
    .goto 1442/1,-103.64,40.10,100,0
    .goto 1442/1,74.11,185.32,100,0
    .goto 1442/1,244.05,262.50,100,0
    >>击杀每个你看到的 |cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,360.76,451.690
    >>点击 |cRXP_FRIENDLY_通缉布告|r
    .accept 6284 >>接受任务 贝瑟莱斯
    .group << Priest/Mage
step << Warlock/Priest/Mage
    #completewith Besseleth1
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r 和 |cRXP_ENEMY_深苔爬行者|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob 深苔毒蜘蛛
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #completewith next
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #label Besseleth1
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>击杀 |cRXP_ENEMY_贝瑟莱斯|r，并拾取她的 |cRXP_LOOT_贝瑟莱斯的牙齿|r
    >>|cRXP_WARN_清理|r |cRXP_ENEMY_贝瑟莱斯|r|cRXP_WARN_周围的区域。小心她的蛛网束缚。用持续伤害技能保持她处于恐惧状态|r << Warlock
    >>|cRXP_WARN_这个任务是可选的。如果你无法完成，跳过这个任务，你可以稍后再试|r << Warlock
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan 贝瑟莱斯
    .group 2 << Priest/Mage
step << Warlock/Priest/Mage
    .goto 1442/1,560.49,440.94
    >>击杀 |cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
    .group 0 << Priest/Mage
step << !Warlock
    .goto 1442/1,-44.56,84.05,80,0
    .goto 1442/1,245.51,255.01,80,0
    .goto 1442/1,392.01,445.17,40,0
    .goto 1442/1,560.49,440.94
    >>击杀 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step
    #completewith next
    .goto 1442/1,735.8,925.8,50,0
    .goto 1442/1,806.12,929.05
    .subzone 460 >>前往烈日石居
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板杰卡
    .isQuestAvailable 1093
step
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店二楼与 |cRXP_FRIENDLY_基达|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T134831:0|t[治疗药水]|r << !Warrior
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134413:0|t[活根草] |cRXP_BUY_如果有的话从她那里购买|r << Warrior
    .target 基达
    .isQuestAvailable 1093
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马格兰|r 对话
	.turnin 6284 >>交任务 贝瑟莱斯
    .target 马格兰
	.isQuestComplete 6284
step
    #label SRRFP
    .goto 1442/1,1041.99,967.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔姆|r 对话
    .fp Sun Rock Retreat >>开启烈日石居飞行点
    .target 萨尔姆
    .subzoneskip 460,1
step
    #completewith next
    .goto 1442/1,365.16,878.250,15 >>前去找 |cRXP_FRIENDLY_其兹|r
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1483 >>交任务菲兹克斯
    .accept 1093 >>接受任务 超级收割机6000
    .target 菲兹克斯
step
    #completewith Windshear
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto 1442/1,352.46,912.44,0
    .goto 1442/1,352.46,912.44,50,0
    .goto 1442/1,297.77,959.660,50,0
    .goto 1442/1,250.40,990.59,50,0
    .goto 1442/1,259.68,1032.93,50,0
    .goto 1442/1,246.98,1068.09,50,0
    .goto 1442/1,207.91,1010.13,50,0
    .goto 1442/1,163.47,962.27,50,0
    .goto 1442/1,86.81,961.94,50,0
    .goto 1442/1,181.05,907.89,50,0
    .goto 1442/1,193.75,867.83,50,0
    .goto 1442/1,194.73,827.78,50,0
    .goto 1442/1,225.49,765.26,50,0
    .goto 1442/1,281.16,763.63,50,0
    .goto 1442/1,268.95,832.99,50,0
    .goto 1442/1,303.63,858.39,50,0
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob 深苔毒蜘蛛
step << Troll Warrior/Orc Warrior/Tauren Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_对话，购买一个|r |T135157:0|t[占卜法杖] |cRXP_BUY_从他那里|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Undead Warrior/Skyborne Warrior
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .vendor >>|cRXP_BUY_购买|r |T135329:0|t[刽子手之剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_如果它没有出售，购买|r |T135280:0|t[微光重剑] |cRXP_WARN_作为替代|r
    .money <1.5024
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <19,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Shaman
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_对话，购买一个|r |T135157:0|t[占卜法杖] |cRXP_BUY_从他那里|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Rogue
    .goto 1442/1,402.76,1231.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r |cRXP_BUY_对话。从他那里|r|cRXP_BUY_购买一把|r |T135324:0|t[长剑]
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step
    #label Windshear
    .subzone 461 >>前往狂风峭壁
    .isOnQuest 1093
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob 风险投资公司樵夫
step
    #label BluePrints
    #loop
    .goto 1442/1,179.10,1168.06,0
    .goto 1442/1,179.10,1168.06,100,0
    .goto 1442/1,232.82,1239.70,100,0
    .goto 1442/1,-16.23,1441.59,100,0
    .goto 1442/1,-255.52,1291.80,100,0
    .goto 1442/1,-382.48,1135.50,100,0
    >>击杀 |cRXP_ENEMY_风险投资公司操作员|r。拾取他们的 |cRXP_LOOT_蓝图|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob 风险投资公司操作员
step
    #loop
    .goto 1442/1,242.58,1121.82,0
    .goto 1442/1,242.58,1121.82,50,0
    .goto 1442/1,292.39,1122.470,50,0
    .goto 1442/1,325.6,1168.39,50,0
    .goto 1442/1,338.79,1206.48,50,0
    .goto 1442/1,276.77,1248.49,50,0
    .goto 1442/1,215.24,1145.59,50,0
    .goto 1442/1,187.40,1114.33,50,0
    .goto 1442/1,138.57,1144.62,50,0
    .goto 1442/1,51.16,1153.41,50,0
    .goto 1442/1,-17.70,1128.33,50,0
    .goto 1442/1,-106.09,1157.31,50,0
    .goto 1442/1,-165.66,1173.60,50,0
    .goto 1442/1,-189.10,1079.82,50,0
    .goto 1442/1,-69.95,1061.91,50,0
    .goto 1442/1,10.63,1072.33,50,0
    .goto 1442/1,57.51,1056.05,50,0
    .goto 1442/1,107.32,1040.09,50,0
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob 风险投资公司樵夫
step
    #loop
    .goto 1442/1,246.98,1068.09,0
    .goto 1442/1,352.46,912.44,30,0
    .goto 1442/1,297.77,959.660,30,0
    .goto 1442/1,250.40,990.59,30,0
    .goto 1442/1,259.68,1032.93,30,0
    .goto 1442/1,246.98,1068.09,30,0
    .goto 1442/1,207.91,1010.13,30,0
    .goto 1442/1,163.47,962.27,30,0
    .goto 1442/1,86.81,961.94,30,0
    .goto 1442/1,181.05,907.89,30,0
    .goto 1442/1,193.75,867.83,30,0
    .goto 1442/1,194.73,827.78,30,0
    .goto 1442/1,225.49,765.26,30,0
    .goto 1442/1,281.16,763.63,30,0
    .goto 1442/1,268.95,832.99,30,0
    .goto 1442/1,303.63,858.39,30,0
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #optional
	#completewith next
	+|cRXP_WARN_如果你拥有超过 15 个 |cRXP_LOOT_深苔蛛卵|r|cRXP_WARN_，将多余的分开堆叠（Shift 点击），然后删除它们|r
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1093 >>交任务超级收割机6000
    .accept 1094 >>接受任务 新的指示
    .target 菲兹克斯
step
    #loop
    .goto 1442/1,362.71,539.28,0
    .goto 1442/1,275.30,577.38,80,0
    .goto 1442/1,362.71,539.28,80,0
    .goto 1442/1,298.25,432.80,80,0
    .goto 1442/1,244.05,262.50,80,0
    .goto 1442/1,74.11,185.32,80,0
    .goto 1442/1,-103.64,40.10,80,0
    .goto 1442/1,362.71,539.28,80,0
    >>杀掉 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1430 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 768 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >>使用炉石返回陶拉祖营地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
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
    .turnin 3261 >>交任务  [DEPRECATED in 4.x] 乔恩·星眼
    .accept 882 >>接受任务 伊沙姆哈尔
    .target 乔恩·星眼
step
	#completewith LakotaMani2
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #label LakotaMani2
    #completewith LakotaMani2
    >>击杀 |cRXP_ENEMY_钢鬃掠夺者|r。拾取他们的 |cRXP_LOOT_奥格拉的饰物|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取它们的 |cRXP_LOOT_刺背野猪人的獠牙|r。保留你获得的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r]
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
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果找不到他，请跳过此步骤|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务 拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
step
    #label LakotaMani2
    #loop
    .goto 1413/1,-2241.200,-1988.500,0
    .goto 1413/1,-2241.200,-1988.500,50,0
    .goto 1413/1,-2346.200,-1788.600,50,0
    .goto 1413/1,-2458.300,-1824.400,50,0
    .goto 1413/1,-2381.000,-2061.000,50,0
    >>击杀 |cRXP_ENEMY_钢鬃掠夺者|r。拾取他们的 |cRXP_LOOT_奥格拉的饰物|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取并获得 |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
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
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取它们的 |cRXP_LOOT_刺背野猪人的獠牙|r。保留你获得的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r]
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
step << Warlock/Shaman
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
    .xp 19+9500 >>刷怪达到9500+/21300点经验
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
    .goto 1413/1,-2932.18,-1698.06.0,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
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
    .subzone 392 >>前往棘齿城
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2381 >>交任务  抢劫海盗 << Rogue
    .turnin 97253 >>交任务 零零碎碎
    .target 卑鄙的维尼克斯
    .isQuestComplete 97253
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
    .turnin 1094 >>交任务 新的指示
    .accept 1095 >>接受任务 新的指示
    .target 斯布特瓦夫
step
    .goto 1413/1,-3720.300,-920.000
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 92706 >>接受任务 通缉：布鲁兹
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
    .accept 1491 >>接受任务 智慧饮料
    .target 麦伯克·米希瑞克斯
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 821 >>交任务 老陈的空酒桶
    .target 酿酒师德罗恩
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
    .vendor >>如果他有出售的话，从他那里购买 |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
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
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    .home >>将你的炉石设置到棘齿城
    .target 旅店老板维尔雷
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    #loop
    .goto 1413/1,-3911.900,-1049.200
    .goto 1413/1,-3951.600,-1093.500
    .goto 1413/1,-4012.800,-1081.800
    .goto 1413/1,-3973.000,-1028.700
    >>击杀棘齿城附近海中的 |cRXP_PICK_布鲁兹|r（20级精英怪）
    >>|cRXP_WARN_这个任务很难！如果可能的话请组队|r
    >>|cRXP_WARN_可以通过风筝术将其引导至棘齿城守卫处来单独完成，他们会帮助，但要确保至少造成50%伤害!|r
    .complete 92706,1 --Kill Bruuz
    .isOnQuest 92706
step
    .goto 1413/1,-3720.300,-920.000
    >>点击 |cRXP_PICK_通缉布告|r
    .turnin 92706 >>交任务 WANTED: 布鲁兹
    .isQuestComplete 92706
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .accept 959 >>接受任务 港口的麻烦
    .target 起重机操作员比戈弗兹
    .dungeon WC
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
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .turnin 875 >>交任务  鹰身人首领
    .accept 876 >>接受任务 塞瑞娜·血羽
    .target 达索克·快刀
    .isQuestComplete 875
step
    #optional
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 876 >>接受任务 塞瑞娜·血羽
    .target 达索克·快刀
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_图加|r 对话
    .turnin 899 >>交任务复仇的怒火
    .turnin 95774 >>交任务 她的名字叫奥格拉
    .target 曼科里克
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>交任务  变异的生物
    .accept 1489 >>接受任务 哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
    .target 图加·符文图腾
    .goto 1413/1,-2672.76,-544.77
step
    #optional
    .destroy 5085 >>|cRXP_WARN_删除你可能仍然留着的任何|r |T133721:0|t[刺背野猪人的獠牙] |cRXP_WARN_|r
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .dungeon !WC
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r 对话
    .accept 868 >>接受任务 蝎卵
    .target 科兰
step << Shaman
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Shaman
    .goto 1454/1,-4213.03,1920.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔恩|r 对话
	.accept 1528 >>接受任务 水之召唤
    .target 希尔恩·火结
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 2645 >>训练你的职业技能
    .target 卡德里斯
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .trainer >>训练你的职业技能
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
    .subzone 1581 >>现在你应该开始寻找前往死亡矿井的小队
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8052 >>训练你的职业技能
    .target 卡德里斯
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 2645 >>训练你的职业技能
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
    .train 845 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1943 >>训练你的职业技能
    .target 奥莫克
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 1014 >>训练你的职业技能
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto 1458/0,408.18,1587.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 706 >>训练你的职业技能
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 1953 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >>训练你的职业技能
    .target 乌尔库
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 14914 >>训练你的职业技能
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
    .zone Durotar >>离开 奥格瑞玛
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
    .goto 1434/0,1004.57,-12317.37.0,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >>从格罗姆高营地向西直接游向劣尸维尔暗礁，然后向北游向西部荒野
    >>|cRXP_WARN_避开岛屿。为了安全，请跟随路径点!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >>前往西部荒野灯塔
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 103 >>接受任务 长明的灯塔
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 103 >>交任务 长明的灯塔
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
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
    .turnin 104 >>交任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >>放弃任务 长明的灯塔
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
    .zone 291 >>进入死亡矿井副本的传送门。进入副本
    .dungeon DM
step
    .hs >>完成死亡矿井后，炉石回到贫瘠之地
    .zone The Barrens >>抵达贫瘠之地
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板维尔雷
    .subzoneskip 392,1
    .dungeon WC
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
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
	.fly Crossroads >>飞往十字路口
    .zoneskip Orgrimmar,1
    .target 多拉斯
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 1509 >>交任务  多格兰的消息
    .accept 1510 >>接受任务多格兰的消息
    .target 加兹罗格
step << Shaman
    #completewith CallofWater01
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 多拉斯
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto 1413/1,-4047.86,-1345.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 对话
    .turnin 1528 >>交任务 水之召唤
    .accept 1530 >>接受任务 水之召唤
    .target 水之先知伊斯伦
step << !Warlock !Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_FRIENDLY_赫布瑞姆|r |cRXP_WARN_会开启一个 45 分钟的限时任务|r
    .accept 853 >>接受任务药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_这是一个限时任务，请不要离开键盘。接取后 20–30 分钟就会失效|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 布拉高克
    .subzoneskip 380
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 迪弗拉克
    .subzoneskip 380,1
step
    .goto 1413/1,-2515.7,-2076.41
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。拾取它们的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务野猪人的内战
    .accept 5052 >>接受任务阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务阿迦玛甘的血岩碎片
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
    .turnin 883 >>交任务拉克塔曼尼
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
    .turnin 884 >>交任务奥瓦坦卡
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
step << Shaman
    #completewith CallofWater2
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
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>>向南前往 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    #completewith next
    >>击杀一只 |cRXP_ENEMY_雷鹰|r。拾取它的 |cRXP_LOOT_翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob 雷鹰雏鸟
    .mob 雷鹰破云者
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 对话
    .turnin 1530 >>交任务 水之召唤
    .accept 1535 >>接受任务 水之召唤
    .target 布瑞恩
step << Shaman
    .goto 1413/1,-1858.04,-3572.92
    .use 7766 >>|cRXP_WARN_在布瑞恩的小屋下方的水坑中填满你的|r |T132825:0|t[空的棕色水囊] |cRXP_WARN_|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 对话
    .turnin 1535 >>交任务 水之召唤
    .accept 1536 >>接受任务 水之召唤
    .target 布瑞恩
step << Shaman
    #completewith ThunderhawkTurnin
    .subzone 378 >>回到陶拉祖营地
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
    .turnin 884 >>交任务奥瓦坦卡
    .turnin 913 >>交任务 雷鹰的嘶鸣
    .accept 874 >>接受任务 玛伦·星眼
    .accept 6382 >>接受任务 灰谷狩猎 << Hunter
    .target 乔恩·星眼
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 913 >>交任务 雷鹰的嘶鸣
    .accept 874 >>接受任务 玛伦·星眼
    .accept 6382 >>接受任务 灰谷狩猎 << Hunter
    .target 乔恩·星眼
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
    .collect 3137,200,6562,1 --Deadly Throwing Axe (200)
    .target 库鲁克
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5075 >>存入你的 |T134128:0|t[血岩碎片]
    .bankdeposit 5059 >>存放你的 |T132938:0|t[掘地铲]
    .target 彻斯姆
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5075 >>存入你的 |T134128:0|t[血岩碎片]
    .target 彻斯姆
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
    .goto 1456/1,219.09,-1051.44,10 >>前往灵魂高地，然后进入幻象之池
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    .accept 264 >>接受任务 至死方休
    .target 克拉莉斯·弗斯特
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .accept 962 >>接受任务 毒蛇花
    .target 药剂师扎玛
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .accept 962 >>接受任务 毒蛇花
    .target 药剂师扎玛
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .target 药剂师扎玛
    .isOnQuest 853
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .accept 5644 >>接受任务 噬灵瘟疫 << Undead Priest
    .accept 5642 >>接受任务 暗影守卫 << Troll Priest
    .trainer >>训练你的职业技能
    .target 麦尔斯·威尔什
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 12051 >>训练你的职业技能
    .target 大法师山姆
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 2138 >>训练你的职业技能
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 2645 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8498 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到80或更高|r
    .skill firstaid,<1,1
step
    .goto 1456/1,206.88,-997.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到 80，请跳过此步骤|r
    .train 3277 >>学习 |T133684:0|t[绒线绷带]
    .train 7934 >>学习 |T134437:0|t[抗毒药剂] << Rogue
    .target 潘德·缚石
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_制造|r |T134437:0|t[解毒剂] |cRXP_WARN_如果你找到了任何|r |T134339:0|t[小毒囊]
    >>|cRXP_WARN_留着以后再用|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >>前往长者高地
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 1489 >>交任务  哈缪尔·符文图腾
    .accept 1490 >>接受任务纳拉·蛮鬃
    .target 大德鲁伊哈缪尔·符文图腾
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
    .accept 914 >>接受任务 尖牙德鲁伊
    .target 纳拉·蛮鬃
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
    .target 纳拉·蛮鬃
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .trainer >>训练你的职业技能
    .accept 27 >>接受任务必修的课程
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 27 >>交任务 必修的课程
    .accept 28 >>接受任务 湖中试炼
    .target 德迪利特·星焰
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>在湖底拾取 |cRXP_PICK_小饰物容器|r，以获得 |T134125:0|t[神龛小饰物]
    >>|cRXP_WARN_在到达饰品正上方之前不要下水|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >>|cRXP_WARN_在雷姆洛斯神殿使用|r |T134125:0|t[神殿灵珠] |cRXP_WARN_|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r 对话
    .turnin 28 >>交任务 湖中试炼
    .accept 30 >>接受任务 海狮试炼
    .target 塔加里
step << Druid
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >>前往猎人高地
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24494 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >>前往猎人高地
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

    --WC

step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    +现在你应该开始寻找哀嚎洞穴的小队
    >>在组哀嚎洞穴队伍的同时，刷|cRXP_ENEMY_野猪人|r|cRXP_WARN_。|r
    .dungeon WC
step
    .goto 1413/1,-2053.62,-882.58,100 >>前往哀嚎洞穴
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>从哀嚎洞穴集合石处跑上山
    >>|cRXP_WARN_紧跟箭头前进以到达隐藏的洞穴|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .accept 1486 >>接受任务 变异皮革
    .target 纳尔帕克
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >>接受任务 清除变异者
    .target 厄布鲁
    .goto 1414/1,-2039.86,-801.31
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>击杀所有见到的|cRXP_ENEMY_虚空兽|r，并拾取它们的|cRXP_LOOT_皮|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_LOOT_皮|r |cRXP_WARN_不够所有人分|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>击杀所有见到的|cRXP_ENEMY_虚空兽|r，并拾取它们的|cRXP_LOOT_皮|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
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
    .dungeon WC
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >>进入哀嚎洞穴副本传送门，并进入副本
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_LOOT_皮|r |cRXP_WARN_不够所有人分|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
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
    .dungeon WC
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
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 哀嚎洞穴入口处与 |cRXP_FRIENDLY_纳拉雷克斯的信徒|r 对话，将他安全护送到 |cRXP_FRIENDLY_纳拉雷克斯|r
    .target 纳拉雷克斯的信徒
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>一旦到达 |cRXP_FRIENDLY_纳拉雷克斯|r，你将遭遇两波敌人攻击，最终面对 |cRXP_ENEMY_吞噬者穆塔努斯|r
    >>击杀他并拾取 |T135229:0|t[|cRXP_LOOT_发光的碎片|r]，用它来开始任务
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >>接受任务 发光的碎片
    .use 10441
    .mob 吞噬者穆坦努斯
    .dungeon WC
step
    #optional
    #completewith DeviateRaptors
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
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
    .dungeon WC
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
    .dungeon WC
step
    #label DeviateRaptors
    >>击杀|cRXP_ENEMY_变异迅猛龙|r，并拾取它们的|cRXP_ENEMY_皮|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .mob 吞噬软浆怪
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >>炉石返回棘齿城
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1491 >>交任务  智慧饮料
    .target 麦伯克·米希瑞克斯
    .isQuestComplete 1491
    .dungeon WC
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .turnin 959 >>交任务 港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target 斯布特瓦夫
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >>沿着山路向上前进
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .turnin 6981 >>交任务 发光的碎片
    .accept 3369 >>接受任务 在噩梦中
    .target 菲拉·古风
    .isOnQuest 6981
    .dungeon WC
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .accept 3369 >>接受任务 在噩梦中
    .target 菲拉·古风
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .turnin 1486 >>交任务 变异皮革
    .target 纳尔帕克
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >>交任务 清除变异者
    .target 厄布鲁
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1487 >>交任务 清除变异者
    .target 厄布鲁
    .isQuestComplete 1487
    .dungeon WC
step
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1486 >>交任务 变异皮革
    .target 纳尔帕克
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
    .dungeon WC
step << skip
    #completewith next
    .subzone 378 >>向南前往陶拉祖营地
    .dungeon WC
step << skip
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .dungeon WC
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 914 >>交任务  尖牙德鲁伊
    .target 纳拉·蛮鬃
    .isQuestComplete 914
    .dungeon WC
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 3369 >>交任务  在噩梦中
    .target 大德鲁伊哈缪尔·符文图腾
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >>前往灵魂高地，然后进入幻象之池
    .isQuestComplete 962
    .dungeon WC
step
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 962 >>交任务  毒蛇花
    .target 药剂师扎玛
    .isQuestComplete 962
    .dungeon WC
step
    #label WCEnd
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
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
step
    #completewith Serena
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .subzoneskip 380
    .isQuestTurnedIn 852 << !Hunter
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
    #optional
    #completewith Serena
    .abandon 855 >>放弃任务 半人马护腕
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
    #label Serena
    .goto 1413/1,-1345.3,790.94
    >>击杀 |cRXP_ENEMY_塞瑞娜·血羽|r，拾取她的 |cRXP_LOOT_头颅|r
    .complete 876,1 --Serena's Head (1)
    .mob 塞瑞娜·血羽
    .isQuestTurnedIn 875
step << Hunter
    .goto 1413/1,-2347.48,857.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维妮|r 对话
    .turnin 3921 >>交任务 维妮·布特巴克
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    .goto 1413/1,-2253.24,1246.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托雷克|r 对话
    .turnin 6541 >>交任务 向卡德拉克报到
    .target Kadrak
step << Hunter
    .goto 1440/1,-2240.94,1778.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷克|r 对话以开始护送任务
    >>|cRXP_FRIENDLY_托雷克|r |cRXP_WARN_重生时间为 5 分钟|r
    .accept 6544 >>接受任务 托雷克的突袭
    .target 托雷克
step << Hunter
    .goto 1440/1,-2110.61,1809.320,60,0
    .goto 1440/1,-2052.37,1776.27,20,0
    .goto 1440/1,-2006.81,1777.42,10,0
    .goto 1440/1,-2037.38,1777.04
    >>跟随 |cRXP_FRIENDLY_托雷克|r
    >>让 |cRXP_FRIENDLY_托雷克（|r 和他的 |cRXP_FRIENDLY_碎木袭击者|r 抗住 |cRXP_ENEMY_银翼战士|r 和 |cRXP_ENEMY_银翼哨兵|r
    >>|cRXP_WARN_清理完建筑物后，跑向阳台。当 |cRXP_ENEMY_杜瑞尔·月火|r 出现时，先让 |cRXP_FRIENDLY_托雷克|r 和他的 |cRXP_FRIENDLY_碎木袭击者|r 承受仇恨，再对其造成伤害|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob 银翼战士
    .mob 银翼哨兵
    .unitscan 杜瑞尔·月火
step << Hunter
    .goto 1440/1,-2511.97,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔托格|r 对话
    .turnin 6544 >>交任务 托雷克的突袭
    .target 埃尔托格·怒齿
    .isQuestComplete 6544
step << Hunter
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .turnin 6382 >>交任务灰谷狩猎
    .turnin 6383 >>交任务灰谷狩猎
    .target 塞娜尼·雷心
step << Hunter
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fp Splintertree Post >>获得碎木岗哨的飞行点
    .target 乌尔格拉
step << Hunter
    #completewith EnterSTM2
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Crossroads >>飞往十字路口
    .target 乌尔格拉
    .zoneskip The Barrens
step << !Hunter
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << !Hunter
    #hardcore
    #completewith next
    .subzone 380 >>前往十字路口
step
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    .turnin 876 >>交任务 塞瑞娜·血羽
    .accept 1060 >>接受任务 写给金吉尔的信
    .target 达索克·快刀
    .isQuestComplete 876
step
    #optional
    .goto 1413/1,-2607.91,-474.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    .accept 1060 >>接受任务 写给金吉尔的信
    .target 达索克·快刀
    .isQuestTurnedIn 876
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r 对话
    .accept 868 >>接受任务 蝎卵
    .target 科兰
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >>前往石爪山脉
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .turnin 6523 >>交任务保护卡雅
    .accept 6401 >>接受任务卡雅还活着
    .target 玛卡巴·扁蹄
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto 1413/1,-950.10,-271.14
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto 1413/1,-950.10,-271.14
    .turnin 6523 >>交任务保护卡雅
    .accept 6401 >>接受任务卡雅还活着
    .target 玛卡巴·扁蹄
    .goto 1413/1,-943.00,-265.06
    .isQuestComplete 6523
step
    #label STMturnins1
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .goto 1413/1,-950.10,-271.14
    .target 希雷斯·碎石
step
    #completewith BloodFeedersTI
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >>沿着左侧的道路向上前进
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金吉尔|r 对话
    .turnin 1060 >>交任务  写给金吉尔的信
    .accept 1058 >>接受任务 金吉尔的森林魔法
    .target 巫医金吉尔
    .isQuestTurnedIn 876
step
    .goto 1442/1,-394.20,-272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金吉尔|r 对话
    .accept 1058 >>接受任务 金吉尔的森林魔法
    .target 巫医金吉尔
step << Warlock
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯兹格拉|r 对话
    .turnin 1510 >>交任务  多格兰的消息
    .accept 1511 >>接受任务肯兹格拉的伤药
    .target 肯兹格拉
step
    #label BloodFeedersTI
    .goto 1442/1,-233.54,-177.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .turnin 6461 >>交任务盗窃的蜘蛛
    .target 辛吉拉
step << skip
    .goto 1442/1,-401.53,-277.710
    .goto 1456/1,-74.62,-981.93,30 >>|cRXP_WARN_跳跃到笼子上，通过登出并重新登入来执行返回角色选择跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_点击此处查看示例|r
step << skip
    #completewith ElderCroneTurnin
    .goto 1456/1,-48.84,-1037.94,20,0
    .goto 1456/1,-13.04,-1107.95,40 >>乘电梯进入雷霆崖
step << Hunter
    .goto 1442/1,360.76,451.690
    >>点击 |cRXP_FRIENDLY_通缉布告|r
    .accept 6284 >>接受任务 贝瑟莱斯
step << Hunter
    #loop
    .goto 1442/1,569.77,573.79,0
    .goto 1442/1,711.87,513.23,50,0
    .goto 1442/1,684.04,582.91,50,0
    .goto 1442/1,569.77,573.79,50,0
    >>击杀 |cRXP_ENEMY_贝瑟莱斯|r，并拾取她的 |cRXP_LOOT_贝瑟莱斯的牙齿|r
    >>|cRXP_WARN_清除|r |cRXP_ENEMY_贝瑟莱斯|r|cRXP_WARN_周围的区域，小心她会给你缠丝|r
    >>|cRXP_WARN_这个任务是可选的，如果你做不了，跳过这个任务|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan 贝瑟莱斯
step
    #completewith Tsunaman1
    .subzone 460 >>前往烈日石居
step
    #completewith next
    .goto 1442/1,834.44,908.21,30,0
    .goto 1442/1,856.91,874.67,30,0
    .goto 1442/1,896.46,836.57,30,0
    .goto 1442/1,940.41,831.04,30 >>沿右侧小路向上跑
step
    #label Tsunaman1
    .goto 1442/1,933.09,824.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏纳曼|r 对话
    .accept 6562 >>接受任务 帮助耶努萨克雷
    .accept 6393 >>接受任务 元素战争
    .target 苏纳曼
step
    .goto 1442/1,940.9,925.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马格兰|r 对话
	.turnin 6284 >>交任务 贝瑟莱斯
    .target 马格兰
    .isQuestComplete 6284
step
    .goto 1442/1,927.72,893.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r 对话
    >>|cRXP_WARN_不要设置你的|r |T134414:0|t[炉石]
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .vendor >>把垃圾物品卖给商人
    .target 旅店老板杰卡
    .isOnQuest 1095
step
    .goto 1442/1,925.27,885.42,5,0
    .goto 1442/1,920.88,911.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店二楼与 |cRXP_FRIENDLY_基达|r 对话
    .vendor 4083 >>如果有出售的话，|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T134831:0|t[治疗药水]|r << !Warrior
    .vendor 4083 >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134413:0|t[活根草] |cRXP_BUY_如果有的话从她那里购买|r << Warrior
    .target 基达
    .isOnQuest 1095
step
    #label KayaLives
    .goto 1442/1,928.20,1015.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔姆拉|r 对话
    .turnin 6401 >>交任务 卡雅还活着
    .accept 6301 >>接受任务 生生不息
    .target 塔姆拉·荒原
    .isQuestTurnedIn 6523
step
    .goto 1442/1,365.16,878.250
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1095 >>交任务 新的指示
    .accept 1096 >>接受任务 格雷苏
    .target 菲兹克斯
step
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto 1442/1,265.54,1213.0,80,0
    .goto 1442/1,299.72,1233.84,80,0
    .goto 1442/1,332.44,1218.86,80,0
    .goto 1442/1,325.11,1174.25,80,0
    .goto 1442/1,267.98,1156.34,80,0
    .goto 1442/1,262.12,1136.15,80,0
    .goto 1442/1,238.68,1122.47,80,0
    .goto 1442/1,202.54,1089.58,80,0
    .goto 1442/1,169.82,1085.03,80,0
    .goto 1442/1,134.17,1067.12,80,0
    .goto 1442/1,102.43,1077.86,80,0
    .goto 1442/1,64.83,1059.95,80,0
    .goto 1442/1,35.53,1054.09,80,0
    .goto 1442/1,2.81,1083.07,80,0
    .goto 1442/1,-23.07,1085.03,80,0
    .goto 1442/1,-63.6,1094.14,80,0
    .goto 1442/1,-100.23,1091.86,80,0
    .goto 1442/1,-160.78,1070.37,80,0
    .goto 1442/1,-197.89,1086.0,80,0
    .goto 1442/1,-212.54,1117.59,80,0
    .goto 1442/1,332.44,1218.86,80,0
    .goto 1442/1,-202.900,1088.600
    >>杀死 |cRXP_ENEMY_XT:9|r
    >>|cRXP_WARN_它在河的南边巡逻|r
    >>|cRXP_WARN_他的生成点在你的地图上有标记|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1062
step << skip --better to do in stonetalon part 2
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto 1442/1,-34.79,1390.46,80,0
    .goto 1442/1,-3.05,1387.86,80,0
    .goto 1442/1,36.51,1448.42,80,0
    .goto 1442/1,133.69,1450.7,80,0
    .goto 1442/1,134.17,1421.4,80,0
    .goto 1442/1,148.34,1400.23,80,0
    .goto 1442/1,99.5,1414.56,80,0
    .goto 1442/1,85.34,1398.28,80,0
    .goto 1442/1,80.46,1362.78,80,0
    .goto 1442/1,66.3,1343.57,80,0
    .goto 1442/1,23.81,1331.85,80,0
    .goto 1442/1,11.11,1299.94,80,0
    .goto 1442/1,-8.91,1302.22,80,0
    .goto 1442/1,-20.14,1322.73,80,0
    .goto 1442/1,-94.85,1302.22,80,0
    .goto 1442/1,-145.64,1400.56,80,0
    .goto 1442/1,-183.24,1333.48,80,0
    .goto 1442/1,-218.89,1337.71,80,0
    .goto 1442/1,-241.35,1433.77,80,0
    .goto 1442/1,-233.54,1501.83,80,0
    .goto 1442/1,80.46,1378.74,80,0
    .goto 1442/1,80.46,1378.74,0
    >>杀死 |cRXP_ENEMY_XT:4|r
    >>|cRXP_WARN_它在河的北边巡逻|r
    >>|cRXP_WARN_如果找不到，请跳过这一步|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1062
step
    #completewith next
    .goto 1442/1,-357.09,978.55
    .subzone 2160 >>进入狂风矿洞
    .group
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_匹兹尼克|r 对话
    >>|cRXP_WARN_这个任务需要5分钟，会在固定时间点刷新3波狗头人：|r
    >>|cRXP_WARN_第一波在15秒时出现（3只狗头人），第二波在2分15秒时出现（4只狗头人，2个施法者2个近战），第三波在3分20秒时出现（4只狗头人）。目标在5分钟时完成。|r
    .accept 1090 >>接受任务 格雷苏的要求
    .target Piznik
    .group 2
step
    .goto 1442/1,-258.93,956.73
    >>保护 |cRXP_FRIENDLY_匹兹尼克|r 远离来袭的 |cRXP_ENEMY_风剪歹徒|r
    >>|cRXP_WARN_第一波在15秒时出现（3只狗头人），第二波在2分15秒时出现（4只狗头人，2个施法者2个近战），第三波在3分20秒时出现（4只狗头人）。目标在5分钟时完成。|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_匹兹尼克|r 对话
    .turnin 1090 >>交任务 格雷苏的要求
    .accept 1092 >>接受任务 格雷苏的要求
    .target Piznik
    .group
step << skip
    .goto 1442/1,-261.86,951.85
    .goto 1442/1,434.5,898.12,30 >>|cRXP_WARN_跳上木制轮子，通过登出并重新登入来执行登出跳过|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .group
step
    #completewith next
    .goto 1442/1,-577.33,1532.43,30 >>进入鹰巢小径
step << skip
    .goto 1442/1,-606.63,1573.79
    .goto 1440/1,-629.73,2633.42,30 >>|cRXP_WARN_跳上你右侧的白色石头。通过登出并重新登入来执行登出跳过|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Ashenvale
step
    .goto 1440/1,-632.700,2311.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Va'xug Firefure|r 对话 
    .accept 98251 >>接受任务 永不回头
    .target Va'xug Firefure
step
    #loop
    .goto 1440/1,-609.900,2140.100,0
    .goto 1440/1,-609.900,2140.100,50,0
    .goto 1440/1,-799.500,2222.000,50,0
    .goto 1440/1,-878.400,2168.400,50,0
    .goto 1440/1,-712.300,2023.900,50,0
    .goto 1440/1,-534.500,2045.100,50,0
    >>击杀 |cRXP_ENEMY_灰谷熊|r 和 |cRXP_ENEMY_黑角鹿|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_乌萨苟斯|r（25级强力怪）在该区域巡逻|r
    .complete 98251,2 --|6/6 Ashenvale Bear slain
    .mob +Ashenvale Bear
    .complete 98251,1 --|6/6 Shadowhorn Stag slain
    .mob +Shadowhorn Stag
step
    .goto 1440/1,-632.900,2312.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Va'xug Firefure|r 对话
    .turnin 98251 >>交任务 永不回头
    .accept 98252 >>接受任务 虚空之路
    .target Va'xug Firefure
step
    .goto 1440/1,-545.200,2446.600
    >>|cRXP_WARN_当 |cRXP_FRIENDLY_基尔罗格之眼|r 跟随你时，跑向主路|r
    .complete 98252,1 --|1/1 Eye of Kilrogg guided to the road
    .target Eye of Kilrogg
step
    .goto 1440/1,-545.500,2445.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔罗格之眼|r 对话
    .turnin 98252 >>交任务 虚空之路
    .target Eye of Kilrogg
    .isQuestComplete 98252
step
	#completewith ZoramFP
    .goto 1440/1,-268.74,2612.28,50,0
    .goto 1440/1,637.2,3406.79,50,0
    .goto 1440/1,1010.31,3355.28,80 >>前往佐拉姆加前哨站
    >>|cRXP_WARN_途中务必避开阿斯特兰纳的守卫。为安全起见请跟随路线指示|r
    .unitscan 阿斯特兰纳哨兵
step
    #optional
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21 >>刷怪升级到 21级
step
    #label ZoramFP
   .goto 1440/1,994.16,3373.730
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
   .fp Zoram'gar Outpost >>获得佐拉姆加前哨站的飞行点
   .target 安德鲁克
   .isQuestAvailable 6442
step
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_凯朗|r, |cRXP_FRIENDLY_米苏瓦|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
   .turnin 6562 >>交任务  帮助耶努萨克雷
   .target 耶努萨克雷
   .goto 1440/1,1033.37,3354.89
   .accept 216 >>接受任务 蓟皮熊怪的麻烦
   .target 卡拉恩·阿玛卡
   .goto 1440/1,1013.77,3345.67
   .accept 6462 >>接受任务巨魔符咒
   .target 米苏瓦
   .goto 1440/1,1028.18,3333.37
   .accept 6442 >>接受任务佐拉姆海岸的纳迦
   .target 玛鲁凯
   .goto 1440/1,1025.88,3331.450
step
   .goto 1440/1,1004.54,3341.83
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r 对话
   >>|cRXP_WARN_这将开始一个护送任务。小心，任务难度较高|r
   .accept 6641,1 >>接受任务鞭笞者沃尔沙
   .target 穆格拉什
step
    #completewith next
   >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob 怒尾纳迦
   .mob 怒尾御浪者
   .mob 怒尾巫师
   .mob 怒尾海巫
   .mob 怒尾女祭司
   .mob 怒尾侍从
   .mob 薇丝比娅
step
   .goto 1440/1,1144.67,3610.89
   >>到达后点击 |cRXP_PICK_火盆|r
   >>|cRXP_WARN_将会刷新一波波的|r |cRXP_ENEMY_娜迦|r |cRXP_WARN_。一旦|r |cRXP_ENEMY_沃尔沙|r |cRXP_WARN_出现，要小心，他攻击力非常高|r
   >>|cRXP_WARN_在与他战斗之前，|r你可以先让 |cRXP_FRIENDLY_|r穆格拉什|cRXP_WARN_ 引怪！|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob 鞭笞者沃尔沙
step << Priest
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>如果你希望获得一根强力魔杖升级（墓碑节杖），现在就可以组队去打黑暗深渊。你也可以等到26-28级在灰谷时再去打黑暗深渊
    .dungeon BFD
step
	#loop
    .goto 1440/1,1065.09,3574.76,0
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
   >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
   .complete 6442,1 --Wrathtail Head (20)
   .mob 怒尾纳迦
   .mob 怒尾御浪者
   .mob 怒尾巫师
   .mob 怒尾海巫
   .mob 怒尾女祭司
   .mob 怒尾侍从
   .mob 薇丝比娅
step
	#loop
	.goto 1440/1,1073.74,3635.49,50,0
	.goto 1440/1,1052.4,3683.92,50,0
	.goto 1440/1,1017.8,3683.15,50,0
	.goto 1440/1,978.59,3746.96,50,0
	.goto 1440/1,882.29,3749.26,50,0
	.goto 1440/1,843.65,3785.78,50,0
	.goto 1440/1,885.17,3874.57,50,0
	.goto 1440/1,850.57,3921.08,50,0
	.goto 1440/1,858.64,3984.89,50,0
	.goto 1440/1,928.42,4042.93,50,0
	.goto 1440/1,914.58,4116.34,50,0
	.goto 1440/1,884.02,4084.44,50,0
	.goto 1440/1,784.25,4080.21,50,0
	.goto 1440/1,811.93,4021.02,50,0
	.goto 1440/1,822.31,3949.91,50,0
	.goto 1440/1,815.97,3874.19,50,0
	.goto 1440/1,815.97,3807.69,50,0
	.goto 1440/1,816.55,3715.82,50,0
	.goto 1440/1,848.84,3691.99,50,0
	.goto 1440/1,856.91,3654.71,50,0
	.goto 1440/1,862.68,3587.06,50,0
	.goto 1440/1,918.62,3544.39,50,0
	.goto 1440/1,984.36,3552.46,50,0
	.goto 1440/1,1052.98,3479.82,50,0
	.goto 1440/1,1101.42,3535.17,50,0
	.goto 1440/1,1065.09,3574.76,50,0
    .xp 21+21450 >>刷怪达到 21450+/25200 经验
    .dungeon !BFD << Priest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战歌信使|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6641 >>交任务鞭笞者沃尔沙
    .target 战歌信使
    .goto 1440/1,995.31,3357.97
    .turnin 6442 >>交任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto 1440/1,1025.88,3331.450
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .accept 6563 >>接受任务 阿库麦尔的精华
    .accept 6921 >>接受任务废墟之间
    .accept 6565 >>接受任务 上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestTurnedIn 6564
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .accept 6563 >>接受任务 阿库麦尔的精华
    .accept 6921 >>接受任务废墟之间
    .target 耶努萨克雷
    .dungeon BFD
step << Priest
    .goto 1414/1,915.16,4156.85,100 >>前往黑暗深渊的入口
    .dungeon BFD
step << Priest
    #completewith next
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #loop
    .goto 1414/1,896.76,4247.63,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,896.76,4247.63,20,0
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r，并拾取她们的 |T134332:0|t[|cRXP_LOOT_潮湿便笺|r]，使用它来开启任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务 上古之神的仆从
    .mob 黑暗深渊海潮祭司
    .use 16790
    .dungeon BFD
step << Priest
    #loop
    .goto 1414/1,749.56,4186.29,0
    .goto 1414/1,679.64,4247.63,20,0
    .goto 1414/1,745.88,4220.64,20,0
    .goto 1414/1,815.80,4250.08,20,0
    .goto 1414/1,874.68,4318.77,20,0
    .goto 1414/1,911.48,4313.87,20,0
    .goto 1414/1,896.76,4247.63,20,0
    .goto 1414/1,944.60,4174.03,20,0
    .goto 1414/1,749.56,4186.29,20,0
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #label EnterBFD
    .goto 1414/1,742.20,4247.63
    .subzone 2797,2 >>进入黑暗深渊副本传送门。进入副本
    .dungeon BFD
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候塞尔瑞德|r 对话
    .accept 6561 >>接受任务 黑暗深渊中的恶魔
    .target 斥候塞尔瑞德
    .dungeon BFD
step << Priest
    >>击杀|cRXP_ENEMY_洛古斯·杰特|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step << Priest
    #completewith next
    >>在水中拾取散发绿光的 |cRXP_PICK_深渊之石|r，以获得 |cRXP_LOOT_深渊之核|r
    >>|cRXP_WARN_拾取此物会触发 |r阿奎尼斯男爵|cRXP_ENEMY_ 的出现|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    >>击杀 |cRXP_ENEMY_阿奎尼斯男爵|r，并拾取他的 |T136222:0|t [|cRXP_LOOT_奇怪水晶球|r] 使用它来接取任务
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>接受任务阿奎尼斯男爵
    .mob 阿奎尼斯男爵
    .use 16782
    .dungeon BFD
step << Priest
    >>在水中拾取散发绿光的 |cRXP_PICK_深渊之石|r，以获得 |cRXP_LOOT_深渊之核|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    >>击杀 |cRXP_ENEMY_暮光领主凯尔里斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    .complete 6561,1 --Head of Kelris (1)
    .mob 暮光领主克尔里斯
    .isOnQuest 6561
    .dungeon BFD
step << Priest
    .hs >>使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    >>|cRXP_WARN_如果你愿意，可以先|r击杀 |cRXP_ENEMY_|r阿库麦尔|cRXP_WARN_。这是副本的最终首领|r
    .dungeon BFD
step << Priest
    .goto 1456/1,-224.81,-1087.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴珊娜|r 对话
    .turnin 6561 >>交任务 黑暗深渊中的恶魔
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step << Priest
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Zoram'gar >>飞往佐拉姆加前哨站
    .target 塔尔
    .zoneskip Ashenvale
    .dungeon BFD
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6564 >>交任务  上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isOnQuest 6564
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6565 >>交任务  上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6565
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6563 >>交任务  阿库麦尔的精华
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6563
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6921 >>交任务废墟之间
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6521
step << Priest
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6922 >>交任务阿奎尼斯男爵
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6922
step
    .goto 1440/1,1013.77,3345.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯朗|r 对话
    .accept 216 >>接受任务 蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
step
    #completewith JourneytoTM
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .zoneskip Thunder Bluff
    .target 安德鲁克
    .cooldown item,6948,<0
step
    #completewith JourneytoTM
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
    .cooldown item,6948,>0
step
    #completewith next
    .goto 1456/1,-212.71,-1065.010,80 >>前往长者高地
step
    .goto 1456/1,-212.71,-1065.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加萨|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    .turnin 1063 >>交任务巫婆长老
    .timer 6,长者 剧情
    .accept 1064 >>接受任务 被遗忘者的援助
    .target 玛加萨·恐怖图腾
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >>前往灵魂高地，然后进入幻象之池
step
    #label JourneytoTM
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 1064 >>交任务  被遗忘者的援助
    .accept 1065 >>接受任务 前往塔伦米尔
    .target 药剂师扎玛
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
step << Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip Thunder Bluff,1
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
step << Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 安德鲁克
    .zoneskip Ashenvale,1
step << !Warlock
    #optional
    .goto 1440/1,994.16,3373.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 安德鲁克
    .zoneskip Ashenvale,1
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳格玛|r 对话
    .turnin 1511 >>交任务肯兹格拉的伤药
    .accept 1515 >>接受任务多格兰之囚
    .target 步兵劳格玛
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多格兰|r 对话
    .turnin 1515 >>交任务多格兰之囚
    .accept 1512 >>接受任务爱的礼物
    .target 步兵多格兰
step << Warlock
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 欧姆萨·雷角
    .zoneskip The Barrens,1
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
    .train 6202 >>训练你的职业技能
    .target 米尔科特
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6223 >>训练你的职业技能
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
    .turnin 2460 >>交任务碎手军礼
    .accept 2458 >>接受任务 卧底密探
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
    .train 2138 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2121 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_索乌|r 在小屋顶部对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .turnin 5642 >>交任务  暗影守卫
    .trainer >>训练你的职业技能
    .target 乌尔库
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8103 >>训练你的职业技能
    .target 乌尔库
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 3747 >>训练你的职业技能
    .target 乌尔库
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >>从西侧出口进入贫瘠之地
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >>前往淤泥营地
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
    .turnin 2458 >>交任务卧底密探
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
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >>https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
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
    .turnin 2478 >>交任务  基本不可能的任务
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
    .train 8498 >>训练你的职业技能
    .target 卡德里斯
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 905 >>训练你的职业技能
    .target 卡德里斯
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .target 哈纳什
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 6192 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 5308 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14323 >>训练你的职业技能
    .target 奥玛克
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14262 >>训练你的职业技能
    .target 奥玛克
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24558 >>训练你的宠物技能
    .target 肖祖
    .xp <24,1
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特拉克根|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target 特拉克根
step << Rogue
    >>|cRXP_WARN_如果你身上有|r |T134437:0|t[抗毒药]|cRXP_WARN_，使用一个来解除 |T136230:0|t[赞吉尔之触]|r
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    #optional
    .destroy 8051 >>|cRXP_WARN_从你的背包中删除|r |T134536:0|t[信号枪] |cRXP_WARN_，因为已经不再需要|r
    .destroy 8066 >>|cRXP_WARN_将 |T134374:0|t[菲兹鲁的哨子]|r从背包中删除|cRXP_WARN_，因为它已经不再需要了|r
step
    #optional
    #label flytoORG
step
    #optional
    .abandon 6421 >>放弃任务 滚岩峡谷
step
    #optional
    .abandon 4021 >>放弃任务 人马无双！
step
    #optional
    .abandon 6481 >>放弃任务 土灵的觉醒
step
    #optional
    .abandon 6284 >>放弃任务 贝瑟莱斯
step
    #optional
    .abandon 6641 >>放弃任务 鞭笞者沃尔沙
step
    #optional
    .abandon 6563 >>放弃任务 阿库麦尔水晶
]])