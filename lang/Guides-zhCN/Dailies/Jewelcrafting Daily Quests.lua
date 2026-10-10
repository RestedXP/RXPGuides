if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 专业技能日常任务
#wotlk
#cata
#name 珠宝加工

step
	.goto Dalaran,40.67,35.35
	>>要开始珠宝加工日常任务，你必须首先完成完成发货任务，该任务要求你在达拉然给|cRXP_FRIENDLY_蒂莫西·琼斯|r 带去一块|cRXP_LOOT_玉髓|r
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>与 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
    .goto Dalaran,40.67,35.35
    .accept 13041 >>接受任务 完成订单
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>交任务 完成订单
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >>与达拉然的|cRXP_FRIENDLY_蒂莫西·琼斯|r 对话。他有6个珠宝加工日常任务中的1个，接受任意可用的任务
	>>货单: 鲜血玉髓护符 -- 12958
	>>货单: 发光象牙雕像 -- 12959
	>>货单: 邪恶日之胸针 -- 12960
	>>货单: 精制骸骨雕像 -- 12961
	>>货单: 明亮护甲圣物 -- 12962
	>>货单: 移日珍玩 -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>收集一个 |cRXP_LOOT_黑玉|r 和一个 |cRXP_LOOT_血石|r，然后与一个 |cRXP_LOOT_维库护身符|r组合
	.collect 36932,1 --Dark Jade (1)
	.collect 36917,1 --Bloodstone (1)
	.isOnQuest 12958
step
	.goto TheStormPeaks,22.50,59.67,60,0
	.goto TheStormPeaks,23.46,59.89,60,0
	.goto TheStormPeaks,25.31,59.98,60,0
	.goto TheStormPeaks,26.29,59.11,60,0
	.goto TheStormPeaks,27.57,60.98,60,0
	.goto TheStormPeaks,26.10,62.50
	>>在风暴峭壁击杀 |cRXP_ENEMY_瓦基里安候选者|r 获得 |cRXP_LOOT_维库护身符|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>使用背包中的 |cRXP_LOOT_维库护身符|r来组合 |cRXP_LOOT_黑玉|r 和 |cRXP_LOOT_血石|r，制作 |cRXP_LOOT_血玉护符|r
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>交任务 货单：血玉护符
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>收集一个 |cRXP_LOOT_玉髓石|r 和一个 |cRXP_LOOT_暗影水晶|r，然后与一个 |cRXP_LOOT_诺森德鹿牙|r组合
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>在龙骨荒野击杀 |cRXP_FRIENDLY_瘦弱的猛犸象|r 获得 |cRXP_LOOT_诺森德鹿牙|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>使用背包中的 |cRXP_LOOT_诺森德鹿牙|r来组合 |cRXP_LOOT_玉髓石|r 和 |cRXP_LOOT_暗影水晶|r，制作 |cRXP_LOOT_炽热鹿牙雕像|r
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>交任务 货单：炽热鹿牙雕像
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>收集一个 |cRXP_LOOT_茶晶石|r和一个 |cRXP_LOOT_太阳水晶|r，然后与一个 |cRXP_LOOT_铁矮人胸针|r 组合
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>前往风暴峭壁的伯尔之息洞穴。击杀 |cRXP_FRIENDLY_雷铸矮人|r 获得 |cRXP_LOOT_铁矮人胸针|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>使用背包中的 |cRXP_LOOT_铁矮人胸针|r 来组合 |cRXP_LOOT_茶晶石|r和 |cRXP_LOOT_太阳水晶|r，制作 |cRXP_LOOT_邪恶太阳胸针|r
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>交任务 货单：邪恶太阳胸针
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>收集一个 |cRXP_LOOT_太阳水晶|r和一个 |cRXP_LOOT_黑玉|r，然后与一个 |cRXP_LOOT_始祖龙骨|r 组合
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>在风暴峭壁击杀 |cRXP_ENEMY_风暴峭壁龙|r 获得 |cRXP_LOOT_始祖龙骨|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>使用背包中的 |cRXP_LOOT_始祖龙骨|r 来组合 |cRXP_LOOT_太阳水晶|r和 |cRXP_LOOT_黑玉|r，制作 |cRXP_LOOT_精致龙骨雕像|r
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>交任务 货单：精致龙骨雕像
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>收集一个 |cRXP_LOOT_血石|r和一个 |cRXP_LOOT_茶晶石|r，然后与一个 |cRXP_LOOT_元素护甲片|r组合
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>在龙骨荒野击杀 |cRXP_ENEMY_水晶冰雪元素|r 获得 |cRXP_LOOT_元素护甲片|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>使用背包中的 |cRXP_LOOT_元素护甲片|r来组合 |cRXP_LOOT_血石|r和 |cRXP_LOOT_茶晶石|r，制作 |cRXP_LOOT_光芒护甲圣物|r
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>交任务 货单：光芒护甲圣物
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>收集一个 |cRXP_LOOT_太阳水晶|r和一个 |cRXP_LOOT_暗影水晶|r，然后与一个 |cRXP_LOOT_天灾古物|r组合
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>在冰冠冰川击杀 |cRXP_ENEMY_笨重的憎恶|r 或 |cRXP_ENEMY_邪恶通灵师|r 获得 |cRXP_LOOT_天灾古物|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>使用背包中的 |cRXP_LOOT_天灾古物|r来组合 |cRXP_LOOT_太阳水晶|r和 |cRXP_LOOT_暗影水晶|r，制作 |cRXP_LOOT_迅捷烈日古器|r
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >>传送至达拉然
step
	>>与达拉然的 |cRXP_FRIENDLY_蒂莫西·琼斯|r 对话
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>交任务 货单：光芒护甲圣物
	.isQuestComplete 12963
	.target Timothy Jones
step
	+你已完成今天的珠宝加工日常任务
]])