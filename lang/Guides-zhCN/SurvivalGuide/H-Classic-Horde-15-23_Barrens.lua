if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 15-19级 贫瘠之地
#version 1
#group RestedXP 生存指南 (部落版)
#subgroup RXP 生存指南 1-20级
#next 19-23级 石爪山脉/贫瘠之地/灰谷


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加索克|r 对话
    .turnin 837 >>交任务 野猪人的进犯
    .goto Durotar,51.95,43.50
    .target 加索克
    .isQuestComplete 837
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
	.train 6074 >>训练你的职业技能
    .target 泰金
    .xp <14,1
    .xp >16,1
step << Priest
    #optional
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
	.train 8102 >>训练你的职业技能
    .target 泰金
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 1160 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    #optional
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 285 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡普拉克
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡普拉克
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 6222 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基萨|r 对话并购买 |T133738:0|t[牺牲魔典]
    .collect 16351,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target 基萨
    .xp <16,1
step << Warlock
    #optional
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 1455 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
    .isQuestAvailable 840
step
    #optional
    .abandon 480 >>放弃任务 法师的头领，以避免任务日志问题，稍后你会重新接取
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加尔|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target 卡加尔·战痕
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 809 >>交任务 雅克塞罗斯
    .accept 924 >>接受任务 恶魔之种
    .isOnQuest 809
    .target 雅克塞罗斯
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_拾取位于 |r|cRXP_WARN_雅克塞罗斯|r |cRXP_FRIENDLY_旁的 |r|T134095:0|t[有瑕疵的能量石]|cRXP_WARN_。该物品有 30 分钟的计时器，所以要尽快操作|r
    .turnin 926 >>交任务 有瑕疵的能量石
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
    .subzoneskip 380
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r、|cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_瑟格拉|r、|cRXP_FRIENDLY_图加|r、|cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_索克|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务 十字路口征兵
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.94
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
    .target 曼科里克
    .goto The Barrens,52.00,31.60
    .accept 871 >>接受任务 保卫前沿哨所
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step << !Undead !Tauren
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r、|cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_瑟格拉|r、|cRXP_FRIENDLY_图加|r 和 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务 十字路口征兵
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.94
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
    .target 曼科里克
    .goto The Barrens,52.00,31.60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_瑟格拉|r、|cRXP_FRIENDLY_图加|r、|cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_索克|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务 十字路口征兵
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.94
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
    .target 曼科里克
    .goto The Barrens,52.00,31.60
    .accept 871 >>接受任务 保卫前沿哨所
    .accept 5041 >>接受任务 十字路口的补给品
    .target 索克
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_瑟格拉|r、|cRXP_FRIENDLY_图加|r 和 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 869 >>接受任务 追踪窃贼
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 842 >>交任务 十字路口征兵
    .accept 844 >>接受任务 平原陆行鸟的威胁
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .accept 870 >>接受任务 遗忘之池
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.94
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
    .target 曼科里克
    .goto The Barrens,52.00,31.60
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 对话
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接受任务 鹰身强盗
    .target 达索克·快刀
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6365 >>交任务 送往奥格瑞玛的肉 << !Tauren !Undead
    .accept 6384 >>接受任务 飞往奥格瑞玛 << !Tauren !Undead
    --.fp Crossroads >> Get the Crossroads Flight Path
    .zoneskip Orgrimmar
    .target 迪弗拉克
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务菌类孢子
    .accept 1492 >>接受任务码头管理员迪兹维格
	.turnin 1358 >>交任务 给赫布瑞姆的样本
    .target 药剂师赫布瑞姆
step
    #completewith DemonSeed
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>前往山顶
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键点击 |cRXP_PICK_祭坛|r
    >>|cRXP_WARN_请确保你身上带有|r |T134095:0|t[有瑕疵的能量石]|cRXP_WARN_（30 分钟时限）|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >>沿原路下山
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
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
    .goto The Barrens,55.70,27.30
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    >>|cRXP_WARN_如果现在没有刷新，之后再来获取即可|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step << !Tauren !Hunter !Shaman
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>击杀 |cRXP_ENEMY_寻水者|r, |cRXP_ENEMY_织棘者|r and |cRXP_ENEMY_猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob 钢鬃寻水者
    .complete 871,2 --Razormane Thornweaver (8)
    .mob 钢鬃织棘者
    .complete 871,3 --Razormane Hunter (3)
    .mob 钢鬃猎手
    .isOnQuest 871
step
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
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 844 >>交任务  平原陆行鸟的威胁
    .accept 845 >>接受任务 斑马的威胁
    .target 瑟格拉·黑棘
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 871 >>交任务 野猪人的袭击
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .isQuestComplete 871
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索克|r 对话
    .accept 872 >>接受任务 前沿哨所的进攻
    .target 索克
    .isQuestTurnedIn 871
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .turnin 6386 >>交任务 返回十字路口
    .target 扎尔夫
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该开始寻找怒焰裂谷的小队
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .isQuestAvailable 845
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左侧的道路向上前进
    .dungeon RFC
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳跃到笼子上，通过登出并重新登入来执行返回角色选择跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_点击此处查看示例|r
    .dungeon RFC
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >>乘电梯进入雷霆崖
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .zoneskip Thunder Bluff
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>向南前往陶拉祖营地，然后进入莫高雷。从那里前往雷霆崖
    >>|cRXP_WARN_如果你已经解锁雷霆崖的飞行点，可以直接飞过去|r
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往长者高地
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fp Thunder Bluff >>开启雷霆崖飞行点 << !Tauren
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 塔尔
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r的怪物，直到掉落|cRXP_LOOT_军官的徽章|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >>交任务 隐藏的敌人
    .accept 5728 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_销毁|r |T134417:0|t[军官的徽章] |cRXP_WARN_因为你不再需要它|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入 RFC Instance portal. Zone in
    .dungeon RFC
step
    #completewith next
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 5722 >>交任务 寻找背包
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step
    >>击杀|cRXP_ENEMY_饥饿者塔拉加曼|r，拾取|cRXP_LOOT_心|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>击杀|cRXP_ENEMY_巴扎兰|r和|cRXP_ENEMY_召唤者耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5728 >>交任务 隐藏的敌人
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5729 >>交任务 隐藏的敌人
    .accept 5730 >>接受任务 隐藏的敌人
    .target 尼尔鲁·火刃
    .dungeon RFC
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5730 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯下去到幽暗城
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .turnin 5725 >>交任务《 前往熔光镇》 毁灭之力
    .target 瓦里玛萨斯
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step
    #completewith FinalRFCTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step
    #label FinalRFCTurnin
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step
    #completewith RatchetArrive
    .hs >>炉石返回十字路口，北贫瘠之地
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
    .zoneskip Thunder Bluff,1
step
    #completewith RatchetArrive
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
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
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>拾取地上的 |cRXP_PICK_老陈的空酒桶|r，并使用它来开始任务
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>击杀 |cRXP_ENEMY_钢鬃地卜师|r 和 |cRXP_ENEMY_钢鬃防御者|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob 钢鬃地卜师
    .complete 872,2 --Razormane Defender (8)
    .mob 钢鬃防御者
    .isOnQuest 872
step
    #completewith next
    >>拾取 |cRXP_PICK_十字路口的补给箱|r，它有多个刷新地点
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>击杀 |cRXP_ENEMY_克里尼格·糟鼻|r，拾取他的 |cRXP_LOOT_獠牙|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob 克里尼格·糟鼻
    .isOnQuest 872
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
    .isOnQuest 872
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>拾取 |cRXP_PICK_十字路口的补给箱|r
    >>|cRXP_WARN_它有多个刷新点|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
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
    .isOnQuest 872
step
    #completewith next
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step
    .group
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 924 >>交任务  恶魔之种
    .target 雅克塞罗斯
    .isQuestComplete 924
step
    #completewith next
    >>击杀你看到的任何 |cRXP_ENEMY_斑马|r，拾取它们掉落的 |cRXP_LOOT_蹄子|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step
    .goto The Barrens,63.08,36.56,120 >>前往 棘齿城
    .subzoneskip 392
step
    #label RatchetArrive
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .accept 887 >>接受任务 南海海盗
    .target 加兹鲁维
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fp Ratchet >>获取棘齿城飞行路径
    .target 布拉高克
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_通缉布告|r 对话
    .accept 894 >>接受任务 什么什么平衡器
    .goto The Barrens,62.98,37.22
    .accept 895 >>接受任务 通缉：嘉维伊船长
    .goto The Barrens,62.59,37.47
    .target 斯布特瓦夫
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话。|r从他那里购买1把|cRXP_BUY_|T132394:0|t[芒刺斧]|r
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_装备|r |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔 |r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T133046:0|t[巨型石锤] |r
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤] |cRXP_WARN_等你达到 16级时|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T135343:0|t[战士阔剑] |r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_. |r从他那里购买第2把|cRXP_BUY_ |T135343:0|t[战士阔剑]作为你的副手武器|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 819 >>交任务 老陈的空酒桶
    .accept 821 >>接受任务 老陈的空酒桶
    .target 酿酒师德罗恩
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长嘴泥鳅] |cRXP_BUY_|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少买多少|r
    .vendor >>把垃圾物品卖给商人
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >>将你的炉石设置到棘齿城
    .target 旅店老板维尔雷
    .bindlocation 392
    .isQuestAvailable 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_从背包中删除|r |T133735:0|t[控制台操作手册]|cRXP_WARN_，因为已不再需要|r
step
    #completewith BaronLongshore
    >>击杀 |cRXP_ENEMY_南海歹徒|r 和 |cRXP_ENEMY_南海炮兵|r
    .complete 887,1 --Southsea Brigand (12)
    .mob 南海歹徒
    .complete 887,2 --Southsea Cannoneer (6)
    .mob 南海炮兵
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他会在山上来回巡逻|r
    .complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>击杀 |cRXP_ENEMY_巴隆·朗绍尔|r，拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_他可以在其中一个营地中找到|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan 巴隆·朗绍尔
step << Orc Rogue/Troll Rogue
	#completewith next
	>>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他会在山上来回巡逻|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
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
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
    >>杀死 |cRXP_ENEMY_塔赞|r。从他身上拾取战利品 |cRXP_LOOT_背包|r
    >>|cRXP_WARN_他会在山上来回巡逻|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 887 >>交任务  南海海盗
    .turnin 895 >>交任务  通缉：嘉维伊船长
    .accept 890 >>接受任务 丢失的货物
    .target 加兹鲁维
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 1492 >>交任务码头管理员迪兹维格
    .turnin 890 >>交任务  丢失的货物
    .accept 892 >>接受任务 丢失的货物
    .accept 896 >>接受任务 矿工的宝贝
    .target 码头管理员迪兹维格
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 892 >>交任务  丢失的货物
    .accept 888 >>接受任务 被窃的货物
    .target 加兹鲁维
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
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
    .goto The Barrens,62.24,37.48
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
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话.|r从他那里购买1把|cRXP_BUY_ |T135147:0|t[法师之杖] |r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 艾隆萨尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_对话. |r从他那里购买1把|cRXP_BUY_ |T135343:0|t[战士阔剑] |r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_艾隆萨尔|r|cRXP_BUY_. |r从他那里购买第2把|cRXP_BUY_ |T135343:0|t[战士阔剑]作为你的副手武器|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 艾隆萨尔
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
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
    >>击杀|cRXP_ENEMY_斑马|r，拾取它们的 |cRXP_LOOT_蹄|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob 快步斑马
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .turnin 872 >>交任务  前沿哨所的进攻
    .target 索克
    .isQuestComplete 872
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .target 索克
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 872 >>交任务  前沿哨所的进攻
    .target 索克
    .isQuestComplete 872
step
    #label XroadsTurnins3
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 845 >>交任务  斑马的威胁
    .accept 903 >>接受任务 猎杀雌狮
    .target 瑟格拉·黑棘
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target 巴尔格
step
    #completewith RegtharDeathgate1
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
step
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .accept 850 >>接受任务科卡尔首领
    .accept 855 >>接受任务 半人马护腕
    .target 雷戈萨·死门
step
    #completewith Leaders
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔风暴先知|r。拾取他们的 |cRXP_LOOT_半人马护腕|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_注意！他的近战攻击伤害非常高，而且他还受到一名|r |cRXP_ENEMY_科卡尔牧民|r|cRXP_WARN_ 的保护。他们可以对你施放投网，并在远程对你进行射击|r
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .target 雷戈萨·死门
step
    #completewith next
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_这个任务不必现在完成|r
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
    >>击杀 |cRXP_ENEMY_草原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r 和 |cRXP_LOOT_獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob 草原徘徊者
step
    #loop
    .goto The Barrens,41.84,14.81,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>击杀 |cRXP_ENEMY_巫翼鹰身女妖|r 和 |cRXP_ENEMY_巫翼游荡者|r，拾取它们掉落的 |cRXP_LOOT_爪子|r
    .complete 867,1 --Witchwing Talon (8)
    .mob 巫翼鹰身人
    .mob 巫翼游荡者
step
    #completewith Samophlange
    +|cRXP_WARN_小心区域内的 |r|cRXP_ENEMY_赤鳞镰爪龙|r|cRXP_WARN_。它们最高可达 18 级，并且会施放 |T132152:0|t[痛击]|r|cRXP_WARN_（每10秒获得2次额外攻击）|r
step
    #sticky
    #completewith Samophlange
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
	.vendor	>>出售垃圾物品并修理装备
    .target 弗朗恩·凝血
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>点击 |cRXP_PICK_控制台|r
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step
    .goto The Barrens,52.33,11.57
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_小心！关闭阀门后会刷新两个怪物|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>点击 |cRXP_PICK_阀门|r
    >>|cRXP_WARN_关闭阀门后会刷新一个怪物|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>点击 |cRXP_PICK_阀门|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>点击 |cRXP_PICK_控制台|r
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step
    .goto The Barrens,52.84,10.40
    >>在建筑内击杀 |cRXP_ENEMY_工匠斯尼格斯|r，拾取他的 |cRXP_LOOT_控制台钥匙|r
    .complete 901,1 --Console Key (1)
    .mob 工匠斯尼格斯
step
    .goto The Barrens,52.40,11.65
    >>点击 |cRXP_PICK_控制台|r
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 5211 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1430 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <18,1
step
    #completewith next
    .hs >>使用炉石返回棘齿城
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长嘴泥鳅] |cRXP_BUY_|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少买多少|r
    .vendor >>把垃圾物品卖给商人
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target 旅店老板维尔雷
    .isQuestAvailable 896
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .accept 3921 >>接受任务 维妮·布特巴克
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >>交任务菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r, |cRXP_FRIENDLY_图加|r, |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 867 >>交任务  鹰身强盗
    .accept 875 >>接受任务 鹰身人首领
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >>交任务  遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
    .turnin 903 >>交任务  猎杀雌狮
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .goto The Barrens,52.24,31.01
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r, |cRXP_FRIENDLY_达索克|r, |cRXP_FRIENDLY_图加|r 和 |cRXP_FRIENDLY_瑟格拉|r 对话
    .turnin 867 >>交任务  鹰身强盗
    .accept 875 >>接受任务 鹰身人首领
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >>交任务  遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
    .turnin 903 >>交任务  猎杀雌狮
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .goto The Barrens,52.24,31.01
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_阿瑟罗克|r|cRXP_BUY_对话. |r从他那里购买 1 个 |cRXP_BUY_|T134410:0|t[中型箭袋]|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target 阿瑟罗克
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .isQuestAvailable 881
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .turnin 6384 >>交任务 飞往奥格瑞玛
    .accept 6385 >>接受任务 双足飞龙驭手多拉斯
    .target 旅店老板格雷什卡
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >>交任务 双足飞龙驭手多拉斯
    .accept 6386 >>接受任务 返回十字路口
    .target 多拉斯
    .isOnQuest 6385
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8019 >>训练你的职业技能
    .target 卡德里斯
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 913 >>训练你的职业技能
    .target 卡德里斯
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佐尔 |r 对话
    .accept 1061 >>接受任务石爪之灵
    .target 佐尔·孤树
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .train 1804 >>学习 |T136058:0|t[开锁]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .accept 2379 >>接受任务 赞杜沙
    .target 申苏尔
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1963 >>交任务 碎手氏族
    .accept 1858 >>接受任务 碎手氏族
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞杜沙|r 对话
    .turnin 2379 >>交任务  赞杜沙
    .accept 2382 >>接受任务 棘齿城的维尼克斯
    .target 赞杜沙
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_对话。从他那里|r |cRXP_BUY_购买一个|r|T134065:0|t[潜行者工具]
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target 雷库尔
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_使用|r |T136058:0|t|T133626:0|t[开锁] |cRXP_WARN_打开|r |T133626:0|t|T133626:0|t[塔赞的背包]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1858 >>交任务 碎手氏族
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_在旅馆对|r |cRXP_WARN_加摩尔|r |cRXP_ENEMY_使用|r |T133644:0|t[搜索]|cRXP_WARN_，使用他的钥匙打开|r |T133626:0|t[塔赞的背包]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_瑟祖克|r 对话
    .turnin 1858 >>交任务 碎手氏族
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1455 >>训练你的职业技能
    .target 米尔科特
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1014 >>训练你的职业技能
    .target 米尔科特
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r 对话，购买 |T133738:0|t[牺牲魔典]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target 库古尔
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 库古尔|cRXP_FRIENDLY_ 对话，并购买 |T133738:0|t[火焰箭典籍(等级 3)]|r
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (Rank 1) (1)
    .target 库古尔
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 285 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 8198 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 13795 >>训练你的职业技能
    .target 奥玛克
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 2643 >>训练你的职业技能
    .target 奥玛克
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24557 >>训练你的宠物技能
    .target 肖祖
    .xp <18,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 227 >>学习法杖
    .target 哈纳什
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8102 >>训练你的职业技能
    .target 乌尔库
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >>训练你的职业技能
    .target 乌尔库
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2120 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_制作|r |T133685:0|t[亚麻绷带]|cRXP_WARN_直到你的急救技能达到 40 或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    .train 3276 >>学习 |T133688:0|t[厚亚麻绷带]
    .target 阿诺克
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到50或更高|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_阿诺克|r 对话
    .train 3274 >>学习 中级急救
    .target 阿诺克
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>从西侧出口进入贫瘠之地
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>击杀 |cRXP_ENEMY_风险投资公司执行者|r 和 |cRXP_ENEMY_风险投资公司监督|r，拾取掉落的 |cRXP_LOOT_猫眼翡翠|r
    >>|cRXP_WARN_避免进入矿洞。容易一次引到两只小怪，几乎没有逃脱空间|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob 风险投资公司执行者
    .mob 风险投资公司监督
step
    #ssf
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>击杀|cRXP_ENEMY_风险投资公司监工|r，从他们身上拾取|T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>击杀|cRXP_ENEMY_风险投资公司监工|r，从他们身上拾取|T132794:0|t|T132794:0|t[|cRXP_LOOT_灯油|r]
    >>|cRXP_WARN_你也可以从拍卖行购买这些物品|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #completewith Wenikee
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step
    #completewith next
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 暴躁的平原陆行鸟
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维妮|r 对话
    .turnin 3921 >>交任务 维妮·布特巴克
    .accept 3922 >>接受任务 高强度齿轮
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >>拾取淤泥沼泽周围地面上的|cRXP_PICK_工具箱|r
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于淤泥沼泽的 |r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    .accept 858 >>接受任务 点火
    .target 维兹克兰克的伐木机
step
    #completewith next
    +|cRXP_WARN_如果|r|cRXP_ENEMY_工头葛瑞尔斯|r 或|cRXP_WARN_ |r淤泥兽|cRXP_ENEMY_ |r刷新了，|cRXP_WARN_i请小心。它们是强力的 19 级稀有怪|r
    .unitscan 工头葛瑞尔斯
    .unitscan 淤泥畸体
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>击杀 |cRXP_ENEMY_鲁格维兹主管|r，拾取他的 |cRXP_LOOT_钥匙|r
    >>|cRXP_WARN_他会在平台上来回巡逻|r
    .complete 858,1 --Ignition Key (1)
    .mob 鲁格维兹主管
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    >>|cRXP_WARN_这将开始一个护送任务。请确保你的生命值是满的|r
    .turnin 858 >>交任务  点火
    .accept 863,1 >>接受任务 梅贝尔的隐形水
    .target 维兹克兰克的伐木机
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_当伐木机移动到高处时，会刷新两个|r |cRXP_ENEMY_风险投资公司雇佣兵|r |cRXP_WARN_。击杀他们后，等待他在终点的剧情事件|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob 风险投资公司雇佣兵
    .mob 风险投资公司苦工
    .mob 监工格里比
step
    #loop
	.goto The Barrens,55.69,6.94,0
	.goto The Barrens,55.50,7.98,25,0
	.goto The Barrens,55.60,8.85,25,0
	.goto The Barrens,56.04,9.79,25,0
	.goto The Barrens,56.68,8.82,25,0
	.goto The Barrens,57.17,9.08,25,0
	.goto The Barrens,57.61,8.41,25,0
	.goto The Barrens,57.31,7.20,25,0
	.goto The Barrens,56.72,6.92,25,0
	.goto The Barrens,56.17,6.80,25,0
	.goto The Barrens,55.69,6.94,25,0
    >>拾取淤泥沼泽周围地面上的|cRXP_PICK_工具箱|r
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_如果你拥有超过 15 个 |cRXP_LOOT_高强度齿轮|r|cRXP_WARN_，将多余的分开堆叠（Shift 点击），然后删除它们|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>击杀你看到的所有 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
    .goto The Barrens,55.80,17.03
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    >>|cRXP_WARN_如果使用|cRXP_ENEMY_ |T134227:0|t[埃其亚基的号角]|r 后, |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请跳过此步骤|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_如果使用 |cRXP_ENEMY_|T134227:0|t[埃其亚基的号角]|r 后 |r埃其亚基|cRXP_WARN_ 没有刷新，或者它刷新时你没有获得任务标记，请放弃 埃其亚基 任务，然后返回城镇重新接取|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟格拉|r 对话
    .accept 881 >>接受任务 埃其亚基
    .target 瑟格拉·黑棘
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>使用 |T134227:0|t[埃其亚基的号角] 来召唤 |cRXP_ENEMY_埃其亚基|r
    >>击杀 |cRXP_ENEMY_埃其亚基|r。拾取他的 |cRXP_LOOT_埃其亚基的皮|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob 埃其亚基
    .use 10327
step
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维妮|r 对话
    .turnin 3922 >>交任务 高强度齿轮
    .accept 3923 >>接受任务 雷里·格里斯高布
    .target Wenikee Boltbucket
step
    #loop
    .goto The Barrens,47.81,14.18,0
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    >>完成击杀 |cRXP_ENEMY_迅猛龙|r，拾取它们掉落的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 869,1 --Raptor Head (12)
    .mob 赤鳞鞭尾龙
    .mob 赤鳞尖啸龙
    .mob 赤鳞镰爪龙
step
    #loop
	.goto The Barrens,40.15,15.98,0
	.goto The Barrens,40.28,15.49,50,0
	.goto The Barrens,39.50,14.68,50,0
	.goto The Barrens,39.47,13.24,50,0
	.goto The Barrens,38.94,12.80,50,0
	.goto The Barrens,38.18,12.56,50,0
	.goto The Barrens,37.96,13.52,50,0
	.goto The Barrens,38.62,13.95,50,0
	.goto The Barrens,38.18,14.62,50,0
	.goto The Barrens,38.14,15.59,50,0
	.goto The Barrens,37.29,15.68,50,0
	.goto The Barrens,37.24,16.26,50,0
	.goto The Barrens,37.67,16.34,50,0
	.goto The Barrens,38.35,17.08,50,0
	.goto The Barrens,38.83,17.71,50,0
	.goto The Barrens,39.37,17.21,50,0
	.goto The Barrens,39.87,16.66,50,0
	.goto The Barrens,40.15,15.98,50,0
    >>击杀 |cRXP_ENEMY_巫翼杀戮者|r。拾取他们的 |cRXP_LOOT_指环|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_巫翼杀戮者|r |cRXP_WARN_可以斩杀。把血量保持在20% 以上！|r
    >>|cRXP_WARN_注意 |r|cRXP_ENEMY_巫翼伏击者|r|cRXP_WARN_。它们处于潜行状态，并在区域内巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob 巫翼杀戮者
    .mob 巫翼伏击者
step
    #completewith FoodandWater1
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater1
    .goto The Barrens,52.09,30.43,120 >>前往十字路口
    >>|cRXP_WARN_你也可以继续刷怪直到|r |T134414:0|t[炉石] |cRXP_WARN_CD冷却完毕|r
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith next
    +|cRXP_WARN_确保不要卖掉你的|r |T132794:0|t[|cRXP_LOOT_灯油|r]|cRXP_WARN_!|r
    .itemcount 814,5
    .dungeon DM
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
step << !Tauren !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_扎尔夫|r、|cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_达索克|r 对话
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 6386 >>交任务 返回十字路口
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 881 >>交任务  埃其亚基
    .accept 905 >>接受任务 在迅猛龙的巢穴里
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务  鹰身人首领
    .accept 876 >>接受任务 塞瑞娜·血羽
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .isOnQuest 6386
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r、|cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_达索克|r 对话
    .turnin 869 >>交任务  追踪窃贼
    .accept 3281 >>接受任务 被偷走的银币
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
    .turnin 881 >>交任务  埃其亚基
    .accept 905 >>接受任务 在迅猛龙的巢穴里
    .target 瑟格拉·黑棘
    .goto The Barrens,52.23,31.00
    .turnin 875 >>交任务  鹰身人首领
    .accept 876 >>接受任务 塞瑞娜·血羽
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
step
    #completewith TheEscapeTurnIn
    .destroy 10327 >>|cRXP_WARN_摧毁 |r|T134227:0|t[埃其亚基的号角]|cRXP_WARN_，因为你已经不再需要它|r
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target 巴尔格
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 迪弗拉克
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2382 >>交任务  棘齿城的维尼克斯
    .accept 2381 >>接受任务 抢劫海盗
    .target 卑鄙的维尼克斯
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_雷尼克斯的基莫特隆装置|r交谈
    >>|cRXP_WARN_获取一个|r |T134059:0|t|T134065:0|t[E.C.A.C.] |cRXP_WARN_和一个|r |T134065:0|t|T134065:0|t[潜行者工具]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 863 >>交任务 梅贝尔的隐形水
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
    .goto The Barrens,62.98,37.22
    .turnin 896 >>交任务  矿工的宝贝
    .target 码头管理员迪兹维格
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 863 >>交任务 梅贝尔的隐形水
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .accept 865 >>接受任务 一定是因为角
    .accept 1069 >>接受任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长嘴泥鳅] |cRXP_BUY_|r
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_它们非常便宜，想买多少买多少|r
    .vendor >>把垃圾物品卖给商人
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target 旅店老板维尔雷
    .isQuestAvailable 888
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船只，下到第2层，并将你的开锁技能提升到至少 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>当你的开锁技能达到 70 后，前往船只的底层并打开 |cRXP_PICK_南海宝珠|r
    >>|cRXP_WARN_在 |r波利|cRXP_WARN_ 身上使用|r |T134059:0|t[大饼干]|cRXP_ENEMY_|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob 波利
step
    .goto The Barrens,63.58,49.25
    >>拾取地上的 |cRXP_PICK_箱子|r
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>拾取地上的 |cRXP_PICK_箱子|r
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
    #completewith TestSeeds
    >>击杀看到的任何 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_龙角|r 和 |cRXP_LOOT_乱羽|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob 赤鳞镰爪龙
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>拾取 |cRXP_PICK_被偷走的银币|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>在湖中央潜入水下并点击 |cRXP_PICK_冒泡的裂隙|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>击杀 |cRXP_ENEMY_维罗戈|r，拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_每次击杀一个|r |cRXP_ENEMY_半人马|r |cRXP_WARN_都有几率刷新他|r
    .complete 851,1 --Verog's Head (1)
    .mob 狂热的维罗戈
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.80,45.78,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>在绿洲周围刷 |cRXP_ENEMY_半人马|r。拾取它们掉落的 |cRXP_LOOT_护腕|r
    .complete 855,1 --Centaur Bracers (15)
    .mob 科卡尔战士
    .mob 科卡尔驯犬者
    .mob 科卡尔掠夺者
    .isOnQuest 851
step
    #label Verog
    #loop
    .goto The Barrens,56.75,43.41,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>在绿洲周围刷 |cRXP_ENEMY_半人马|r。一旦 |cRXP_ENEMY_狂热的维罗戈|r 出现，击杀他并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_每次击杀一个|r |cRXP_WARN_半人马|r |cRXP_ENEMY_都有几率刷新|r |cRXP_WARN_维罗戈|r
    .complete 851,1 --Verog's Head (1)
    .mob 狂热的维罗戈
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LizardHorn
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
    .mob 敏捷的平原陆行鸟
    .mob 暴躁的平原陆行鸟
step
    .goto The Barrens,52.60,46.10
    >>点击 |cRXP_PICK_蓝色迅猛龙巢|r。如果你没有 |T132914:0|t[太阳鳞羽毛]，请继续击杀 |cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob 赤鳞镰爪龙
step
    .goto The Barrens,52.45,46.57
    >>点击 |cRXP_PICK_红色迅猛龙巢|r。如果你没有 |T132914:0|t[太阳鳞羽毛]，请继续击杀 |cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob 赤鳞镰爪龙
step
    #label Nest
    .goto The Barrens,52.02,46.47
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
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克的妻子|r 对话
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target 血肉模糊的尸体
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r，拾取它们掉落的 |cRXP_LOOT_角|r。此任务不用现在就完成
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >>前往陶拉祖营地
    .subzoneskip 378
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
    .home >>将你的炉石设置到陶拉祖营地
    .target 比鲁拉
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
    .target 碎牙
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点 << !Tauren
    .fly Crossroads >>飞往十字路口
    .subzoneskip 380
    .target 欧姆萨·雷角
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .turnin 848 >>交任务菌类孢子
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_图加|r, |cRXP_FRIENDLY_瑟格拉|r 和 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 4921 >>交任务在战斗中失踪
    .target 曼科里克
    .goto The Barrens,52.00,31.60
    .turnin 877 >>交任务  死水绿洲
    .accept 880 >>接受任务 变异的生物
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
    .turnin 905 >>交任务  在迅猛龙的巢穴里
    .accept 3261 >>接受任务 [DEPRECATED in 4.x] 乔恩·星眼
    .target 瑟格拉·黑棘
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>交任务  被偷走的银币
    .target 加兹罗格
    .goto The Barrens,51.93,30.32
step
    .destroy 5165 >>|cRXP_WARN_删除你可能仍然留着的任何|r |T132914:0|t[赤鳞迅猛龙的羽毛] |cRXP_WARN_|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_巴尔格|r 对话
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target 巴尔格
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 851 >>交任务  狂热的维罗戈
    .accept 852 >>接受任务 赫兹鲁尔·血印
    .target 雷戈萨·死门
    .isQuestComplete 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .accept 852 >>接受任务 赫兹鲁尔·血印
    .target 雷戈萨·死门
    .isQuestTurnedIn 851
step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>前往石爪山脉
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1061 >>交任务石爪之灵
    .accept 1062 >>接受任务地精侵略者
    .target 希雷斯·碎石
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接受任务为我的村庄复仇
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 19-23级 石爪山脉/贫瘠之地/灰谷
#version 1
#group RestedXP 生存指南 (部落版)
#subgroup RXP 生存指南 1-20级
#next 23-25 希尔斯布莱德

step
    #optional
    #completewith next
    >>放弃任务 向卡德拉克报到，以避免任务日志问题，稍后你会重新接取
    .abandon 6541 >>放弃任务 向卡德拉克报到
    .isOnQuest 6541
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>在该区域击杀 |cRXP_ENEMY_恐怖图腾恶徒|r 和 |cRXP_ENEMY_恐怖图腾佣兵|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob 恐怖图腾恶徒
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob 恐怖图腾佣兵
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 6548 >>交任务为我的村庄复仇
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿着道路前往篝火处
step
    .goto Stonetalon Mountains,73.65,86.13
    >>击杀 |cRXP_ENEMY_格鲁迪格·黑云|r 和 |cRXP_ENEMY_恐怖图腾蛮兵|r
    >>|cRXP_WARN_务必在开始洞内任务之前，先击杀全部6 名|r |cRXP_ENEMY_恐怖图腾蛮兵|r |cRXP_WARN_！|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob 格鲁迪格·黑云
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob 恐怖图腾蛮兵
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雅|r对话
    .accept 6523,1 >>接受任务保护卡雅
    .target 卡雅·扁蹄
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送 |cRXP_FRIENDLY_卡雅|r，并始终保持在她身边
    >>|cRXP_WARN_小心！当你到达阿帕拉耶营地的篝火时，会刷新三名|r |cRXP_ENEMY_恐怖图腾|r |cRXP_WARN_敌人|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target 卡雅·扁蹄
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .accept 6461 >>接受任务盗窃的蜘蛛
    .target 辛吉拉
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>击杀每个你看到的 |cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>前往烈日石居
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿左侧小路向上跑
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩罗加尔|r 对话
    .accept 6421 >>接受任务 滚岩峡谷
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r 对话
    >>|cRXP_WARN_不要绑定你的炉石！！|r
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板杰卡
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店二楼与 |cRXP_FRIENDLY_基达|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T134831:0|t[治疗药水]|r << !Warrior
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134413:0|t[活根草] |cRXP_BUY_如果有的话从她那里购买|r << Warrior
    .target 基达
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔姆|r 对话
    .fp Sun Rock Retreat >>开启烈日石居飞行点
    .target 萨尔姆
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>前往狂风峭壁
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1483 >>交任务菲兹克斯
    .accept 1093 >>接受任务 超级收割机6000
    .target 菲兹克斯
step
    #completewith next
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob 深苔毒蜘蛛
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
	.goto Stonetalon Mountains,60.25,63.21,0
	.goto Stonetalon Mountains,59.25,61.55,50,0
	.goto Stonetalon Mountains,60.37,60.10,50,0
	.goto Stonetalon Mountains,61.34,59.15,50,0
	.goto Stonetalon Mountains,61.15,57.85,50,0
	.goto Stonetalon Mountains,61.41,56.77,50,0
	.goto Stonetalon Mountains,62.21,58.55,50,0
	.goto Stonetalon Mountains,63.12,60.02,50,0
	.goto Stonetalon Mountains,64.69,60.03,50,0
	.goto Stonetalon Mountains,62.76,61.69,50,0
	.goto Stonetalon Mountains,62.50,62.92,50,0
	.goto Stonetalon Mountains,62.48,64.15,50,0
	.goto Stonetalon Mountains,61.85,66.07,50,0
	.goto Stonetalon Mountains,60.71,66.12,50,0
	.goto Stonetalon Mountains,60.96,63.99,50,0
	.goto Stonetalon Mountains,60.25,63.21,50,0
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob 深苔毒蜘蛛
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_对话，购买一个|r |T135157:0|t[占卜法杖] |cRXP_BUY_从他那里|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r |cRXP_BUY_交谈。购买一把|r |T135423:0|t[大型战斧] |cRXP_BUY_从他那里|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
    .xp <20,1
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_对话。|r|cRXP_BUY_从他那里购买一个|r |T133044:0|t[牢固的木槌]
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T133044:0|t[牢固的木槌]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .xp <21,1
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
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
    .goto Stonetalon Mountains,58.22,51.74
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
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob 风险投资公司樵夫
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>击杀 |cRXP_ENEMY_风险投资公司操作员|r。拾取他们的 |cRXP_LOOT_蓝图|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob 风险投资公司操作员
step
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob 风险投资公司樵夫
step
	#completewith next
	+|cRXP_WARN_如果你拥有超过 15 个 |cRXP_LOOT_深苔蛛卵|r|cRXP_WARN_，将多余的分开堆叠（Shift 点击），然后删除它们|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1093 >>交任务超级收割机6000
    .accept 1094 >>接受任务 新的指示
    .target 菲兹克斯
step
    #loop
    .goto Stonetalon Mountains,68.59,88.34,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>杀掉 |cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1430 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 768 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
step
    #completewith next
    .hs >>使用炉石返回陶拉祖营地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 比鲁拉
    .isOnQuest 3261
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 3261 >>交任务  [DEPRECATED in 4.x] 乔恩·星眼
    .accept 882 >>接受任务 伊沙姆哈尔
    .target 乔恩·星眼
step
	#completewith LakotaMani
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取他们的|cRXP_LOOT_角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #completewith next
    >>击杀|cRXP_ENEMY_刺背野猪人|r，拾取它们的|cRXP_LOOT_冰寒獠牙|r。保留你获得的|T134128:0|t|T134128:0|t[|cRXP_LOOT_血石碎片|r]
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
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>击杀|cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果找不到他，请跳过此步骤|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
step
    #completewith next
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取他们的|cRXP_LOOT_角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob 雷角蜥蜴
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>击杀|cRXP_ENEMY_刺背野猪人|r，拾取它们的|cRXP_LOOT_冰寒獠牙|r。保留你获得的|T134128:0|t|T134128:0|t[|cRXP_LOOT_血石碎片|r]
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
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. 拾取他们的|cRXP_LOOT_角|r
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
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>击杀 |cRXP_ENEMY_平原陆行鸟|r。拾取他们的 |cRXP_LOOT_肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob 巨型平原陆行鸟
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>杀掉 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_龙角|r
    >>|cRXP_WARN_小心，它们会施放|r |T132152:0|t[痛击]|cRXP_WARN_(每 10 秒会额外增加 2 次攻击次数)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>在湖中及其周围击杀 |cRXP_ENEMY_绿洲钳嘴龟|r，并拾取它们的 |cRXP_LOOT_壳|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob 绿洲钳嘴龟
step
    #completewith next
    >>击杀任意 |cRXP_ENEMY_斑马|r.拾取他们的|cRXP_LOOT_新鲜的斑马肉|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob 冲锋斑马
step
    .goto The Barrens,59.71,30.33
    .use 10338 >>在死亡的树处使用 |T134368:0|t[|cRXP_LOOT_新鲜的斑马肉|r] 来召唤 |cRXP_ENEMY_伊沙姆哈尔|r。击杀并从拾取 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_这具尸体只有30分钟的持续时间!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob 伊沙姆哈尔
step
    #completewith BootyTurnin
    .subzone 392 >>前往棘齿城
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尼克斯|r 对话
    .turnin 2381 >>交任务  抢劫海盗
    .target 卑鄙的维尼克斯
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 888 >>交任务  被窃的货物
    .target 加兹鲁维
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克|r 和 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 1094 >>交任务 新的指示
    .accept 1095 >>接受任务 新的指示
    .target 斯布特瓦夫
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
    .accept 1491 >>接受任务 智慧饮料
    .target 麦伯克·米希瑞克斯
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务 老陈的空酒桶
    .accept 822 >>接受任务 老陈的空酒桶
    .target 酿酒师德罗恩
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克|r 和 |cRXP_FRIENDLY_德罗恩|r 对话
    .turnin 1094 >>交任务 新的指示
    .accept 1095 >>接受任务 新的指示
    .target 斯布特瓦夫
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
    .goto The Barrens,62.37,37.62
    .turnin 821 >>交任务 老陈的空酒桶
    .accept 822 >>接受任务 老陈的空酒桶
    .target 酿酒师德罗恩
    .goto The Barrens,62.27,38.39
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉利克斯|r 对话
    .vendor >>如果他有出售的话，从他那里购买 |T134583:0|t[|cRXP_FRIENDLY_强力锁甲护腿|r]
    .target 格拉利克斯
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克斯宾德|r 对话
    .vendor >>如果他有出售的话，从他那里购买 |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .target 维克斯宾德
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    .home >>将你的炉石设置到棘齿城
    .target 旅店老板维尔雷
    .bindlocation 392
    .isQuestAvailable 959
    .dungeon WC
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备 |T134583:0|t[|r强化锁甲短裤|cRXP_FRIENDLY_]|r
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .accept 959 >>接受任务 港口的麻烦
    .target 起重机操作员比戈弗兹
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_图加|r 对话
    .turnin 899 >>交任务复仇的怒火
    .target 曼科里克
    .goto The Barrens,51.95,31.58
    .turnin 880 >>交任务  变异的生物
    .accept 1489 >>接受任务 哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
step
    .destroy 5085 >>|cRXP_WARN_删除你可能仍然留着的任何|r |T133721:0|t[刺背野猪人的獠牙] |cRXP_WARN_|r
    .itemcount 5085,1
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .bindlocation 380
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔恩|r 对话
	.accept 1528 >>接受任务水之召唤
    .target 希尔恩·火结
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 2645 >>训练你的职业技能
    .target 卡德里斯
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .trainer >>训练你的职业技能
    .accept 1507 >>接受任务噬魂者
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 库古尔|cRXP_FRIENDLY_ 对话，购买 |T133738:0|t[折磨典籍(等级 2)]|r
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target 库古尔
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡祖尔|r 对话
    .turnin 1507 >>交任务 噬魂者
    .accept 1508 >>接受任务盲眼卡祖尔
    .target 卡祖尔
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Warlock
    .goto Orgrimmar,37.03,59.48
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
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8052 >>训练你的职业技能
    .target 卡德里斯
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 2645 >>训练你的职业技能
    .target 卡德里斯
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
	.train 14318 >>训练你的职业技能
    .target 奥玛克
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
	.train 14290 >>训练你的职业技能
    .target 奥玛克
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
	.train 5118 >>训练你的宠物技能
	.target 肖祖
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
	.train 8198 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 845 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1943 >>训练你的职业技能
    .target 奥莫克
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 1014 >>训练你的职业技能
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_泽弗洛斯特|r 对话
    .train 706 >>训练你的职业技能
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 3140 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 1953 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 970 >>训练你的职业技能
    .target 乌尔库
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 14914 >>训练你的职业技能
    .target 乌尔库
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto Orgrimmar,55.59,62.92
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
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Stranglethorn Vale >>乘坐飞艇前往荆棘谷
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,200 >>从格罗姆高营地向西直接游向劣尸维尔暗礁，然后向北游向西部荒野
    >>|cRXP_WARN_避开岛屿。为了安全，请跟随路径点!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往西部荒野灯塔
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 103 >>接受任务 长明的灯塔
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 103 >>交任务 长明的灯塔
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r|cRXP_WARN_在长滩上来回巡逻。如果你在长滩上看不到他，就等他刷新在最南边的|cRXP_ENEMY_鱼人|r营地|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
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
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >>进入死亡矿井副本的传送门。进入副本
    .dungeon DM
step
    .hs >>完成死亡矿井后，炉石回到贫瘠之地
    .zone The Barrens >>抵达贫瘠之地
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板维尔雷
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板伯兰德·草风
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #optional
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
	.fly Crossroads >>飞往十字路口
    .zoneskip Orgrimmar,1
    .target 多拉斯
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 1509 >>交任务多格兰的消息
    .accept 1510 >>接受任务多格兰的消息
    .target 加兹罗格
step << Shaman
    #optional
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 多拉斯
    .zoneskip Orgrimmar,1
step << Shaman
    #optional
    #completewith CallofWater01
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon DM
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 对话
    .turnin 1528 >>交任务水之召唤
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 392,1
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_FRIENDLY_赫布瑞姆|r |cRXP_WARN_会开启一个 45 分钟的限时任务|r
    .accept 853 >>接受任务 药剂师扎玛
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
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 布拉高克
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .subzoneskip 378
    .target 布拉高克
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 迪弗拉克
    .subzoneskip 380,1
step
    .goto The Barrens,44.55,59.27
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。并拾取它们的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务野猪人的内战
    .accept 5052 >>接受任务阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务阿迦玛甘的血岩碎片
    .target 碎牙
    .addquestitem 5075,5052
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    +|cRXP_WARN_使用你的|r |T134128:0|t|T134128:0|t[|cRXP_LOOT_血碎片|r] |cRXP_WARN_来获取增益效果。至少保留4个以备后用|r
    +|cRXP_WARN_务必关闭 Questie 或 Leatrix Plus 等插件的自动完成任务功能！|r
    .target 碎牙
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .target 乔恩·星眼
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .accept 883 >>接受任务拉克塔曼尼
    .turnin 883 >>交任务拉克塔曼尼
    .target 乔恩·星眼
    .itemcount 5099,1
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r，拾取它们掉落的 |cRXP_LOOT_血液|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob 电角蜥蜴
    .mob 雷角蜥蜴
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
    .accept 913 >>接受任务 雷鹰的嘶鸣
    .target 乔恩·星眼
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>>向南前往 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    #completewith next
    >>击杀一只 |cRXP_ENEMY_雷鹰|r。拾取它的 |cRXP_LOOT_翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob 雷鹰雏鸟
    .mob 雷鹰破云者
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 对话
    .turnin 1530 >>交任务水之召唤
    .accept 1535 >>接受任务水之召唤
    .target 布瑞恩
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >>|cRXP_WARN_在布瑞恩的小屋下方的水坑中填满你的|r |T132825:0|t[空的棕色水囊] |cRXP_WARN_|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 对话
    .turnin 1535 >>交任务水之召唤
    .accept 1536 >>接受任务水之召唤
    .target 布瑞恩
step << Shaman
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>回到陶拉祖营地
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>击杀一只 |cRXP_ENEMY_雷鹰|r。拾取它的 |cRXP_LOOT_翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob 雷鹰雏鸟
    .mob 雷鹰破云者
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 913 >>交任务 雷鹰的嘶鸣
    .accept 874 >>接受任务 玛伦·星眼
    .target 乔恩·星眼
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_碎牙|r 对话
    .aura 16618 >>|cRXP_WARN_如果你剩余 10 个|r |T134128:0|t[|cRXP_LOOT_血岩碎片|r]|cRXP_WARN_，可用它们从|r 撕牙鱼人|cRXP_WARN_ |r处兑换|cRXP_FRIENDLY_ |T136022:0|t[风之精灵]|r
    >>|cRXP_WARN_如果你已经拥有雷霆崖的飞行点，请跳过此步骤|r
    .itemcount 5075,10
    .target 碎牙
step << !Tauren
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>前往莫高雷
step << !Tauren
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>乘电梯进入雷霆崖
    >>|cRXP_WARN_如果你已经解锁雷霆崖的飞行点，可以直接飞过去|r
step << Tauren
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 199 >>训练 双手锤
    .train 227 >>学习法杖
    .target 安塞瓦
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习法杖
    .target 安塞瓦
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 198 >>学习锤类武器
    .target 安塞瓦
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库鲁克|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target 库鲁克
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5075 >>存入你的 |T134128:0|t[血岩碎片]
    .target 彻斯姆
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    .accept 264 >>至死方休
    .target 克拉莉斯·弗斯特
    .dungeon !WC
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .accept 962 >>接受任务 毒蛇花
    .target 药剂师扎玛
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .accept 962 >>接受任务 毒蛇花
    .target 药剂师扎玛
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .target 药剂师扎玛
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .accept 5644 >>接受任务 噬灵瘟疫 << Undead Priest
    .accept 5642 >>接受任务 暗影守卫 << Troll Priest
    .trainer >>训练你的职业技能
    .target 麦尔斯·威尔什
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 12051 >>训练你的职业技能
    .target 大法师山姆
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 2138 >>训练你的职业技能
    .target 大法师山姆
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 2645 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8498 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到80或更高|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
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
    .goto Thunder Bluff,69.88,30.90,80 >>前往长者高地
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 1489 >>交任务哈缪尔·符文图腾
    .accept 1490 >>接受任务纳拉·蛮鬃
    .target 大德鲁伊哈缪尔·符文图腾
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
    .accept 914 >>接受任务 尖牙德鲁伊
    .target 纳拉·蛮鬃
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
    .target 纳拉·蛮鬃
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .trainer >>训练你的职业技能
    .accept 27 >>接受任务 必修的课程
    .target 图拉克·符文图腾
step << Druid
    #completewith next
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 27 >>交任务必修的课程
    .accept 28 >>接受任务湖中试炼
    .target 德迪利特·星焰
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,28,1 >>在湖底拾取 |cRXP_PICK_小饰物容器|r，以获得 |T134125:0|t[神龛小饰物]
    >>|cRXP_WARN_在到达饰品正上方之前不要下水|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >>|cRXP_WARN_在雷姆洛斯神殿使用|r |T134125:0|t[神殿灵珠] |cRXP_WARN_|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r 对话
    .turnin 28 >>交任务湖中试炼
    .accept 30 >>接受任务海狮试炼
    .target 塔加里
step << Druid
    #completewith FlyXroads2
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .cooldown item,6948,>0
    .dungeon !WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >>前往猎人高地
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24494 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>前往猎人高地
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 对话
    .train 845 >>训练你的职业技能
    .accept 1823 >>接受任务 和鲁迦对话
    .target 托姆·暴怒图腾
step << Rogue
    .goto Thunder Bluff,53.00,56.63
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
    #completewith next
    #ah
    +|cRXP_FRIENDLY_如果更便宜的话，你也可以改从拍卖行购买一把绿色武器|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
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
step << Shaman
    .goto Thunder Bluff,53.21,58.25
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
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_伊图|r|cRXP_BUY_对话。购买|r |T133476:0|t[尖刺流星锤]|cRXP_BUY_从他那里|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target 伊图·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith KayaLives
    +|cRXP_WARN_装备|r |T133476:0|t[尖刺流星锤]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库纳|r|cRXP_BUY_对话.|r从她那里购买1把|cRXP_BUY_ |T135489:0|t[重型弯弓] |r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target 库纳·雷角
step << Hunter
    #optional
    #completewith KayaLives
    +|cRXP_WARN_装备|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r 库纳|cRXP_FRIENDLY_ 对话|r
    >>|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target 库纳·雷角
step
    #sticky
    #completewith EnterWC
    .subzone 718 >>现在你应该开始寻找哀嚎洞穴的小队
    .dungeon WC
step
    #label FlyXroads2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip The Barrens
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >>前往甜水绿洲
    .isQuestTurnedIn 851
step
    #loop
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    >>寻找并击杀 |cRXP_ENEMY_赫兹鲁尔·血印|r。拾取他的 |cRXP_LOOT_头|r
    >>|cRXP_ENEMY_赫兹鲁尔|r |cRXP_WARN_在湖泊周围巡逻|r
    .complete 852,1 --Hezrul's Head
    .unitscan 赫兹鲁尔·血印
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >>前往哀嚎洞穴
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>从哀嚎洞穴集合石处跑上山
    >>|cRXP_WARN_紧跟箭头前进以到达隐藏的洞穴|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .accept 1486 >>接受任务 变异皮革
    .target 纳尔帕克
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>接受任务 清除变异者
    .goto Kalimdor,51.92,55.44
    .target 厄布鲁
    .dungeon WC
step
    #optional
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>击杀所有见到的|cRXP_ENEMY_虚空兽|r，并拾取它们的|cRXP_LOOT_皮|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_LOOT_皮|r |cRXP_WARN_不够所有人分|r
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
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99年波尔多陈酿|r
    >>|cRXP_WARN_他的刷新时间很长。如果找不到他，请跳过此步骤。|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob 疯狂的马格利什
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >>进入哀嚎洞穴副本传送门，并进入副本
    .dungeon WC
step
    #optional
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
    #completewith GlowingShard
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_LOOT_皮|r |cRXP_WARN_不够所有人分|r
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
    #completewith Ectoplasms
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_建议最多3名玩家尝试完成此任务，如果只做一次的话。因为|r |cRXP_PICK_毒蛇花|r |cRXP_WARN_不够所有人采集|r
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
    #completewith GlowingShardRP
    .hs >>使用炉石返回棘齿城
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .turnin 959 >>交任务 港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1491 >>交任务智慧饮料
    .target 麦伯克·米希瑞克斯
    .isQuestComplete 1491
    .dungeon WC
step
    .use 10441 >>使用 |T135229:0|t[发光的碎片|cRXP_LOOT_] 来激发任务|r
    .accept 6981 >>接受任务 发光的碎片
    .itemcount 10441,1
    .dungeon WC
step
    #label GlowingShardRP
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target 斯布特瓦夫
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >>沿着山路向上前进
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .turnin 6981 >>交任务 发光的碎片
    .accept 3369 >>接受任务 在噩梦中
    .target 菲拉·古风
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
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
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >>交任务 清除变异者
    .target 厄布鲁
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1487 >>交任务 清除变异者
    .target 厄布鲁
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 纳尔帕克|cRXP_FRIENDLY_ 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1486 >>交任务 变异皮革
    .target 纳尔帕克
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 迪弗拉克
    .zoneskip Thunder Bluff
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 914 >>交任务  尖牙德鲁伊
    .target 纳拉·蛮鬃
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 3369 >>交任务  在噩梦中
    .target 大德鲁伊哈缪尔·符文图腾
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 962 >>交任务  毒蛇花
    .target 药剂师扎玛
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    .accept 264 >>至死方休
    .target 克拉莉斯·弗斯特
    .dungeon WC
step
    #label WCEnd
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
step
    #completewith SerenaKill
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Crossroads >>飞往十字路口
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .dungeon WC
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 852 >>交任务  赫兹鲁尔·血印
    .target 雷戈萨·死门
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .accept 4021 >>接受任务 人马无双！
    --.timer 183,Warlord Krom'zar Spawn
    .target 雷戈萨·死门
    .isQuestTurnedIn 852
    .group
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>击杀 |cRXP_ENEMY_督军克罗姆扎|r当他出现后。拾取他掉落在地上的 |cRXP_PICK_旗帜|r
    >>|cRXP_WARN_小心！他是一个强力精英，并且至少有两个|r |cRXP_ENEMY_科卡尔|r |cRXP_WARN_怪物守卫|r
    >>|cRXP_WARN_他可能需要最长 3 分钟才会刷新|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan 督军克罗姆扎
    .group 3
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 4021 >>交任务  人马无双！
    .target 雷戈萨·死门
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
    .group
step
    #optional
    >>如果你此时还没有完成 半人马护腕任务 ，放弃该任务
    .abandon 855 >>放弃任务 半人马护腕
    .isOnQuest 855
step
    #label SerenaKill
    .goto The Barrens,39.16,12.16
    >>击杀 |cRXP_ENEMY_塞瑞娜·血羽|r，拾取她的 |cRXP_LOOT_头颅|r
    .complete 876,1 --Serena's Head (1)
    .mob 塞瑞娜·血羽
step
    #completewith next
    .subzone 380 >>前往十字路口
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索克|r 和 |cRXP_FRIENDLY_科兰|r 对话
    .turnin 876 >>交任务 塞瑞娜·血羽
    .accept 1060 >>接受任务 写给金吉尔的信
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .accept 868 >>接受任务 蝎卵
    .target +Korran
    .goto The Barrens,51.10,29.60
step
    #completewith next
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
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .turnin 6523 >>交任务保护卡雅
    .accept 6401 >>接受任务卡雅还活着
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左侧的道路向上前进
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金吉尔|r 对话
    .turnin 1060 >>交任务  写给金吉尔的信
    .accept 1058 >>接受任务 金吉尔的森林魔法
    .target 巫医金吉尔
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯兹格拉|r 对话
    .turnin 1510 >>交任务多格兰的消息
    .accept 1511 >>接受任务肯兹格拉的伤药
    .target 肯兹格拉
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .turnin 6461 >>交任务盗窃的蜘蛛
    .target 辛吉拉
step << skip
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳跃到笼子上，通过登出并重新登入来执行返回角色选择跳过|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_点击此处查看示例|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>进入滚岩峡谷，然后进入北边的洞穴
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >>攻击 |cRXP_PICK_共鸣水晶|r 并走进洞穴深处，探查该区域
    >>|cRXP_WARN_注意！这些怪物实际强度高于外观，且极易同时引到两只。|r |cRXP_ENEMY_高戈护石者|r |cRXP_WARN_会施放|r |T136026:0|t[大地震击] |cRXP_WARN_造成大量伤害！|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step << skip
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >>进入滚岩峡谷的南方洞穴
    .group
step << skip
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳上右边的岩石。通过调整角色位置使其看起来像在漂浮，然后登出再登入，执行登出跳过|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >>https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >> |cRXP_WARN_点击此处查看示例|r
    .group
step
    #completewith next
    .subzone 460 >>前往烈日石居
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔姆拉|r 对话
    .turnin 6401 >>交任务 卡雅还活着
    .target 塔姆拉·荒原
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r 对话
    >>|cRXP_WARN_不要绑定你的炉石！！|r
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板杰卡
    .isQuestAvailable 6442
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店二楼与 |cRXP_FRIENDLY_基达|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T134831:0|t[治疗药水]|r << !Warrior
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134413:0|t[活根草] |cRXP_BUY_如果有的话从她那里购买|r << Warrior
    .target 基达
    .isQuestAvailable 6442
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿右侧小路向上跑
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏纳曼|r 和 |cRXP_FRIENDLY_摩罗加尔|r 对话
    .accept 6562 >>接受任务 帮助耶努萨克雷
    --.accept 6393 >>Accept Elemental War
    .target +Tsunaman
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 >>交任务 滚岩峡谷
    .accept 6481 >>接受任务 土灵的觉醒
    .target +Mor'Rogal
    .goto Stonetalon Mountains,47.21,64.05
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩罗加尔|r 对话
    .accept 6481 >>接受任务 土灵的觉醒
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏纳曼|r 对话
    .accept 6562 >>接受任务 帮助耶努萨克雷
    --.accept 6393 >>Accept Elemental War
    .target 苏纳曼
step
    .goto Stonetalon Mountains,59.08,75.70
    >>点击 |cRXP_FRIENDLY_通缉布告|r
    .accept 6284 >>接受任务 贝瑟莱斯
    .group
step
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>击杀 |cRXP_ENEMY_贝瑟莱斯|r，并拾取她的 |cRXP_LOOT_贝瑟莱斯的牙齿|r
    >>|cRXP_WARN_开怪之前先清理干净周围的杂兵。千万小心，她会把你网住整整 10 秒！|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan 贝瑟莱斯
    .group 3
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>进入滚岩峡谷，然后进入北边的洞穴
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >>点击 |cRXP_PICK_共鸣桶|r 召唤 |cRXP_ENEMY_高戈罗克|r。当他出现时击杀他
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2
    .isOnQuest 6481
step << skip
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳跃到一个黄色蘑菇上，通过登出再登入执行返回角色选择跳过。如果你没有成功就跑回烈日石居|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >>https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >> |cRXP_WARN_点击此处查看示例|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >>前往烈日石居
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿左侧小路向上跑
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩罗加尔|r 对话
    .turnin 6481 >>交任务 土灵的觉醒
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马格兰|r 对话
	.turnin 6284 >>交任务 贝瑟莱斯
    .target 马格兰
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>前往狂风峭壁
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1095 >>交任务 新的指示
    .target 菲兹克斯
step
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,50,0
    .goto Stonetalon Mountains,60.33,51.68,50,0
    .goto Stonetalon Mountains,59.66,52.14,50,0
    .goto Stonetalon Mountains,59.81,53.51,50,0
    .goto Stonetalon Mountains,60.98,54.06,50,0
    .goto Stonetalon Mountains,61.10,54.68,50,0
    .goto Stonetalon Mountains,61.58,55.10,50,0
    .goto Stonetalon Mountains,62.32,56.11,50,0
    .goto Stonetalon Mountains,62.99,56.25,50,0
    .goto Stonetalon Mountains,63.72,56.80,50,0
    .goto Stonetalon Mountains,64.37,56.47,50,0
    .goto Stonetalon Mountains,65.14,57.02,50,0
    .goto Stonetalon Mountains,65.74,57.20,50,0
    .goto Stonetalon Mountains,66.41,56.31,50,0
    .goto Stonetalon Mountains,66.94,56.25,50,0
    .goto Stonetalon Mountains,67.77,55.97,50,0
    .goto Stonetalon Mountains,68.52,56.04,50,0
    .goto Stonetalon Mountains,69.76,56.70,50,0
    .goto Stonetalon Mountains,70.52,56.22,50,0
    .goto Stonetalon Mountains,70.82,55.25,50,0
    .goto Stonetalon Mountains,59.66,52.14,0
    >>击杀 |cRXP_ENEMY_XT:9|r。它在河流南侧巡逻
    >>|cRXP_WARN_该任务现在不需要完成|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23,50,0
    .goto Stonetalon Mountains,64.82,47.23,0
    >>击杀 |cRXP_ENEMY_XT:4|r。它在河北侧巡逻
    >>|cRXP_WARN_该任务现在不需要完成|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .subzone 2160 >>进入狂风矿洞
    .group
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_匹兹尼克|r 对话
    .accept 1090 >>接受任务 格雷苏的要求
    .target Piznik
    .group 3
step
    .goto Stonetalon Mountains,71.77,60.19
    >>保护 |cRXP_FRIENDLY_匹兹尼克|r 远离来袭的 |cRXP_ENEMY_风剪歹徒|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 3
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_匹兹尼克|r 对话
    .turnin 1090 >>交任务 格雷苏的要求
    .accept 1092 >>接受任务 格雷苏的要求
    .target Piznik
    .group
step << skip
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳上木制轮子，通过登出并重新登入来执行登出跳过|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .group
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1092 >>交任务 格雷苏的要求
    .target 菲兹克斯
    .isQuestTurnedIn 1090
    .group
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>进入鹰巢小径
step << skip
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_跳上你右侧的白色石头。通过登出并重新登入来执行登出跳过|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看示例|r
    .zoneskip Ashenvale
step
	#completewith ZoramFP
    .goto Ashenvale,39.45,55.29,50,0
    .goto Ashenvale,36.47,57.15,50,0
    .goto Ashenvale,34.56,54.13,30,0
    .goto Ashenvale,32.14,52.12,60,0
    .goto Ashenvale,28.64,48.10,50,0
    .goto Ashenvale,26.34,45.44,50,0
    .goto Ashenvale,25.40,39.00,70,0
    .goto Ashenvale,11.96,34.28,80 >>前往佐拉姆加前哨站
    >>|cRXP_WARN_途中务必避开阿斯特兰纳的守卫。为安全起见请跟随路线指示|r
    .unitscan 阿斯特兰纳哨兵
step
    #optional
	#loop
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    .xp 21 >>刷怪升级到 21级
step
    #label ZoramFP
   .goto Ashenvale,12.24,33.80
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
   .fp Zoram'gar Outpost >>获得佐拉姆加前哨站的飞行点
   .target 安德鲁克
   .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_凯朗|r, |cRXP_FRIENDLY_米苏瓦|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6562 >>交任务  帮助耶努萨克雷
    .accept 6563 >>接受任务 阿库麦尔的精华
    .target 耶努萨克雷
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接受任务 蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接受任务巨魔符咒
    .target 米苏瓦
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接受任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto Ashenvale,11.69,34.90
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_凯朗|r, |cRXP_FRIENDLY_米苏瓦|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6562 >>交任务  帮助耶努萨克雷
    .target 耶努萨克雷
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接受任务 蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接受任务巨魔符咒
    .target 米苏瓦
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接受任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r 对话
    >>|cRXP_WARN_这将开始一个护送任务。小心，任务难度较高|r
    .accept 6641,1 >>接受任务鞭笞者沃尔沙
    .target 穆格拉什
    .group 2
step
    .goto Ashenvale,9.63,27.63
    >>到达后点击 |cRXP_PICK_火盆|r
    >>|cRXP_WARN_将会刷新一波波的|r |cRXP_ENEMY_娜迦|r |cRXP_WARN_。一旦|r |cRXP_ENEMY_沃尔沙|r |cRXP_WARN_出现，要小心，他攻击力非常高|r
    >>|cRXP_WARN_在与他战斗之前，|r你可以先让 |cRXP_FRIENDLY_|r穆格拉什|cRXP_WARN_ 引怪！|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob 鞭笞者沃尔沙
    .group 2
step
	#loop
	.goto Ashenvale,11.01,28.57,0
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob 怒尾纳迦
    .mob 怒尾御浪者
    .mob 怒尾巫师
    .mob 怒尾海巫
    .mob 怒尾女祭司
    .mob 怒尾侍从
    .mob 薇丝比娅
step
    .goto Kalimdor,43.89,35.23,100 >>前往黑暗深渊的入口
    .isOnQuest 6563
    .group
step
    #completewith next
    >>从墙上拾取 |cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,43.94,34.86,20,0
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r，并拾取她们的 |T134332:0|t[|cRXP_LOOT_潮湿便笺|r]，使用它来开启任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务 上古之神的仆从
    .mob 黑暗深渊海潮祭司
    .use 16790
    .group 4
step
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>从墙上拾取 |cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
	#loop
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    .xp 23 >>刷怪升级到 23 级
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6563 >>交任务  阿库麦尔的精华
    .turnin 6564 >>交任务  上古之神的仆从
    .target 耶努萨克雷
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6563 >>交任务  阿库麦尔的精华
    .target 耶努萨克雷
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6564 >>交任务  上古之神的仆从
    .target 耶努萨克雷
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战歌信使|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6641 >>交任务鞭笞者沃尔沙
    .target 战歌信使
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >>交任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto Ashenvale,11.69,34.90
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6442 >>交任务佐拉姆海岸的纳迦
    .target Marukai
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯朗|r 对话
    .accept 216 >>接受任务 蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
step
    #completewith flytoORG
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
step
    #completewith flytoORG
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .zoneskip Thunder Bluff
    .fly Thunder Bluff >>飞往雷霆崖
    .target 安德鲁克
    .cooldown item,6948,<0
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_彻斯姆|r 对话
    .bankdeposit 5059 >>存放你的 |T132938:0|t[掘地铲]
    .target 彻斯姆
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往长者高地
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加萨|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    .turnin 1063 >>交任务巫婆长老
    .timer 6,长者 剧情
    .accept 1064 >>接受任务 被遗忘者的援助
    .target 玛加萨·恐怖图腾
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 1064 >>交任务  被遗忘者的援助
    .accept 1065 >>接受任务 前往塔伦米尔
    .target 药剂师扎玛
step << Warlock
    #completewith flytoORG
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .subzoneskip 378
step << !Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Orgrimmar
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳格玛|r 对话
    .turnin 1511 >>交任务肯兹格拉的伤药
    .accept 1515 >>接受任务多格兰之囚
    .target 步兵劳格玛
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多格兰|r 对话
    .turnin 1515 >>交任务多格兰之囚
    .accept 1512 >>接受任务爱的礼物
    .target 步兵多格兰
step << Warlock
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 欧姆萨·雷角
    .zoneskip The Barrens,1
step
    #optional
    #label flytoORG
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1512 >>交任务爱的礼物
    .accept 1513 >>接受任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_在召唤圆圈处|r使用|cRXP_WARN_ |T133290:0|t[多格兰的吊坠]|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>击杀 |cRXP_ENEMY_被召唤的魅魔|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob 魅魔
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1513 >>交任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6202 >>训练你的职业技能
    .target 米尔科特
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6223 >>训练你的职业技能
    .target 米尔科特
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡雷斯|r |cRXP_BUY_对话。购买一把|r |T135640:0|t[双刃弯刀] |cRXP_BUY_如果你还没有匕首的话|r
    .collect 2207,1 --Collect Jambiya (1)
    .target 卡雷斯
step << Rogue
    .goto Orgrimmar,43.05,53.73
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
    .goto Orgrimmar,43.05,53.73
    >>在 |cRXP_FRIENDLY_申苏尔|r 行完注目礼后，选中他并输入 /Salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2460 >>交任务碎手军礼
    .accept 2458 >>接受任务卧底密探
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r |cRXP_BUY_对话。购买|r |T134387:0|t[闪光粉] |cRXP_BUY_从他那里|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target 雷库尔
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷里|r 对话
    .turnin 3923 >>交任务 雷里·格里斯高布
    .accept 3924 >>接受任务 主动式负载平衡器说明书
    .target Rilli Greasygob
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2138 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2121 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .turnin 5642 >>交任务  暗影守卫
    .trainer >>训练你的职业技能
    .target 乌尔库
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8103 >>训练你的职业技能
    .target 乌尔库
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 3747 >>训练你的职业技能
    .target 乌尔库
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>从西侧出口进入贫瘠之地
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >>前往淤泥营地
step << Druid
    .goto The Barrens,56.67,8.32
    >>拾取水中的 奇怪的锁箱|cRXP_PICK_，获取 |T133443:0|t[水性敏捷坠饰]|r
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
    +选中 |cRXP_FRIENDLY_工头费苏勒|r，然后使用你的 |T134536:0|t[信号枪]两次，接着输入 /Salute
    >>|cRXP_WARN_小心！在他变为友好之前不要接近，否则他会攻击你！|r
    .use 8051
    .target 工头费苏勒
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r|cRXP_FRIENDLY_工头费苏勒|r 对话
    .turnin 2458 >>交任务卧底密探
    .accept 2478 >>接受任务基本不可能的任务
    .target 工头费苏勒
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
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
    .goto The Barrens,54.72,5.74
    >>进入盗贼塔并击杀 |cRXP_ENEMY_无人机|r、|cRXP_ENEMY_巡逻者|r 和 |cRXP_ENEMY_哨兵|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob 变异风险投资公司工人
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob 风险投资公司巡逻员
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob 风险投资公司看守
step << Rogue
    .goto The Barrens,54.77,5.57
    >>在塔顶你会找到 |cRXP_ENEMY_加利维克斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_使用|r |T132282:0|t[伏击] |cRXP_WARN_将他的生命值降至一半。使用|r |T132155:0|t[凿击] |cRXP_WARN_恢复能量，并使用|r |T136205:0|t[闪避]
	>>|cRXP_WARN_记得根据需要使用药水和|r |T132819:0|t[菊花茶] |cRXP_WARN_|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob 大工头普兹克·加里维克斯
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>使用你的开锁技能打开 |cRXP_PICK_加里维克斯的保险箱|r 并拾取 |cRXP_LOOT_混合物|r。
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >>前往石矿洞
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>从西侧出口进入贫瘠之地
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司执行者|r 和 |cRXP_ENEMY_风险投资公司监督|r，拾取掉落的 |cRXP_LOOT_主动式负载平衡器说明书正文|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob 风险投资公司执行者
    .mob 风险投资公司监督
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>击杀位于矿洞深处的 |cRXP_ENEMY_考博普拉格|r。从他身上拾取 |cRXP_LOOT_主动式负载平衡器说明书封面|r
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob 风险投资公司执行者
    .mob 风险投资公司监督
step
    #label SamophlangePages2
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>击杀 |cRXP_ENEMY_风险投资公司执行者|r 和 |cRXP_ENEMY_风险投资公司监督|r，拾取掉落的 |cRXP_LOOT_主动式负载平衡器说明书正文|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob 风险投资公司执行者
    .mob 风险投资公司监督
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >>|cRXP_WARN_点击|r |T133735:0|t[主动式负载平衡器说明书封面] |cRXP_WARN_来创建|r |cRXP_LOOT_主动式负载平衡器说明书|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
ste
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>从西侧入口进入奥格瑞玛
    .isQuestComplete 3924
step << skip
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳跃到帐篷上，通过登出再登入执行返回角色选择跳过。如果你没有成功就跑回奥格瑞玛|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >>https://www.youtube.com/watch?v=cOxspH4RcI8&ab >> |cRXP_WARN_点击此处查看示例|r
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2478 >>交任务基本不可能的任务
    .accept 2479 >>接受任务希诺特的帮助
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_对话。向他购买|r |T133849:0|t[腐朽之尘] |cRXP_BUY_和|r |T132793:0|t[空瓶] |cRXP_BUY_|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target 雷库尔
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8498 >>训练你的职业技能
    .target 卡德里斯
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 905 >>训练你的职业技能
    .target 卡德里斯
    .xp <24,1
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷里|r 对话
    .turnin 3924 >>交任务 主动式负载平衡器说明书
    .target Rilli Greasygob
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>训练 双手斧
    .target 哈纳什
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 6192 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 5308 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14323 >>训练你的职业技能
    .target 奥玛克
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14262 >>训练你的职业技能
    .target 奥玛克
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24558 >>训练你的宠物技能
    .target 肖祖
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特拉克根|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target 特拉克根
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
    #completewith next
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .zoneskip Undercity

]])

