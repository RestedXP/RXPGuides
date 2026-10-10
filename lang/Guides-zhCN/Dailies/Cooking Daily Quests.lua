if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 专业技能日常任务
#wotlk
#cata
#name 烹饪

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >>与 |cRXP_FRIENDLY_凯瑟琳·李|r 在旅馆内对话。她提供5个每日烹饪任务中的1个。接受任意可用的任务
	>>魔法蘑菇肉片
	>>下水道炖肉
	>>荠菜热狗
	>>魔术旅馆的集会
	>>兰尼德的奶酪
	.target Katherine Lee
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >>与在旅馆内的 |cRXP_FRIENDLY_埃维罗·隆古巴|r 对话。他提供5个每日烹饪任务中的1个。接受任意可用的任务
	>>魔法蘑菇肉片
	>>下水道炖肉
	>>荠菜热狗
	>>魔术旅馆的集会
	>>兰尼德的奶酪
	.target Awilo Lon'gomba
-- Quest: Mustard Dogs!
step << Alliance
	>>在达拉然的草地区域拾取|cRXP_PICK_野芥菜|r
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70,15,0
	.goto Dalaran,49.95,43.88,15,0
	.goto Dalaran,52.04,46.39,15,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13107
step << Horde
	>>在达拉然的草地区域拾取|cRXP_PICK_野芥菜|r
	.goto Dalaran,55.17,38.59,25,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77,15,0
	.goto Dalaran,51.70,47.34,15,0
	.goto Dalaran,49.38,44.26,15,0
	.goto Dalaran,47.58,47.52,15,0
	.goto Dalaran,50.19,50.54,15,0
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13116
step
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_犀牛肉|r。或者可以直接从达拉然的拍卖行购买|cRXP_LOOT_犀牛肉|r或|cRXP_LOOT_犀肉热狗|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13107 << Alliance
	.isOnQuest 13116 << Horde
step << Alliance
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_犀牛肉|r。或者可以直接从暴风城或铁炉堡的拍卖行购买|cRXP_LOOT_犀牛肉|r或|cRXP_LOOT_犀肉热狗|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13107
step << Horde
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_犀牛肉|r。或者可以直接从奥格瑞玛的拍卖行购买|cRXP_LOOT_犀牛肉|r或|cRXP_LOOT_犀肉热狗|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13116
step << Alliance
	.goto Dalaran,40.20,66.98
	>>使用你的烹饪专业，将4块|cRXP_LOOT_犀牛肉|r烹饪成4份|cRXP_LOOT_犀牛热狗|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>使用你的烹饪专业，将4块|cRXP_LOOT_犀牛肉|r烹饪成4份|cRXP_LOOT_犀牛热狗|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>使用背包中的 |cRXP_LOOT_空午餐篮|r，将4份 |cRXP_LOOT_犀牛热狗|r 和4份 |cRXP_LOOT_野芥菜|r 组合成 |cRXP_LOOT_芥菜热狗篮|r
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>使用背包中的 |cRXP_LOOT_空午餐篮|r，将4份 |cRXP_LOOT_犀牛热狗|r 和4份 |cRXP_LOOT_野芥菜|r 组合成 |cRXP_LOOT_芥菜热狗篮|r
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>在降落平台上与 |cRXP_FRIENDLY_大法师伯塔鲁斯|r 对话
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>交任务 荠菜热狗 << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>交任务 荠菜热狗 << Horde
	.isQuestComplete 13116 << Horde
	.target Archmage Pentarus
-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>进入达拉然下水道。拾取散落在地上的蓝色|cRXP_PICK_灌注蘑菇|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms
	.isOnQuest 13100
step << Horde
	>>落入井中，进入达拉然下水道。拾取散落在地上的蓝色|cRXP_PICK_灌注蘑菇|r
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms (4)
	.isOnQuest 13112
step
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在达拉然的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13100 << Alliance
	.isOnQuest 13112 << Horde
step << Alliance
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在暴风城或铁炉堡的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13100
step << Horde
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在奥格瑞玛的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13112
step << Alliance
	.use 43101 >>使用背包中的|cRXP_LOOT_煎肉锅|r，在火堆旁将4个|cRXP_PICK_灌注蘑菇|r和2块|cRXP_LOOT_冰冷的肉|r组合在一起
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>使用背包中的|cRXP_LOOT_煎肉锅|r，在火堆旁将4个|cRXP_PICK_灌注蘑菇|r和2块|cRXP_LOOT_冰冷的肉|r组合在一起
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>在奇物与摩尔大楼二楼与 |cRXP_FRIENDLY_奥顿·班尼特|r 对话
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>交任务 魔法蘑菇肉片 << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>交任务 魔法蘑菇肉片 << Horde
	.isQuestComplete 13112 << Horde
	.target Orton Bennet
-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>在达拉然进入紫罗兰之门建筑，点击紫罗兰之线水晶传送至下方的晶歌森林
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>拾取地上的|cRXP_PICK_晶歌胡萝卜|r
	.goto CrystalsongForest,25.83,39.27,40,0
	.goto CrystalsongForest,28.74,42.89,40,0
	.goto CrystalsongForest,31.87,43.25,40,0
	.goto CrystalsongForest,30.69,37.48,40,0
	.goto CrystalsongForest,26.96,47.00
	.collect 43148,4 --Crystalsong Carrot (4)
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在达拉然的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step << Alliance
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在暴风城或铁炉堡的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13102
step << Horde
	#sticky
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获取|cRXP_LOOT_冰冷的肉|r。或者你也可以直接在奥格瑞玛的拍卖行购买|cRXP_LOOT_冰冷的肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13114
step << Alliance
	.use 43147 >>使用背包中的|cRXP_LOOT_炖肉锅|r，在火上组合4颗|cRXP_PICK_晶歌胡萝卜|r和4块|cRXP_LOOT_冰冷的肉|r
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>使用背包中的|cRXP_LOOT_炖肉锅|r，在火上组合4颗|cRXP_PICK_晶歌胡萝卜|r和4块|cRXP_LOOT_冰冷的肉|r
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>在达拉然下水道与埃因·格林交谈
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>交任务 下水道炖肉
	.isQuestComplete 13102
step << Horde
	>>从井口进入达拉然下水道。与 |cRXP_FRIENDLY_埃因·格林|r 对话
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>交任务 下水道炖肉
	.isQuestComplete 13114
	.target Ajay Green
-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>开始寻找|cRXP_PICK_半满的达拉然酒杯|r，它们分散在达拉然的建筑中，检查旅馆内部以及楼上
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>开始寻找|cRXP_PICK_半满的达拉然酒杯|r，它们分散在达拉然的建筑中，检查旅馆内部以及楼上
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>进入达拉然的再来一杯建筑，拾取|cRXP_PICK_陈年达拉然干酪|r，它可能随机出现在室内或室外的桌子上
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>开始寻找|cRXP_PICK_半满的达拉然酒杯|r，它们分散在达拉然的建筑中，检查旅馆内部以及楼上
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>使用背包中的空的奶酪盘，将6个|cRXP_PICK_半满的达拉然酒杯|r和1个|cRXP_PICK_陈年达拉然干酪|r组合成一个|cRXP_LOOT_美酒和奶酪盘|r
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>使用背包中的空的奶酪盘，将6个|cRXP_PICK_半满的达拉然酒杯|r和1个|cRXP_PICK_陈年达拉然干酪|r组合成一个|cRXP_LOOT_美酒和奶酪盘|r
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>在达拉然与|cRXP_FRIENDLY_安德森|r 对话
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>兰尼德的奶酪 << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>兰尼德的奶酪 << Horde
	.isQuestComplete 13115 << Horde
	.target Ranid Glowergold
-- Quest: Convention at the Legerdemain
step << Alliance
	>>在达拉然前往"再来一杯"建筑。拾取|cRXP_PICK_一壶葡萄酒|r。注意它会随机生成，也可能出现在外面或楼上
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>在达拉然前往"再来一杯"建筑。拾取|cRXP_PICK_一壶葡萄酒|r。注意它会随机生成，也可能出现在外面或楼上
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_冰冷的肉|r。或者可以直接从达拉然的拍卖行购买|cRXP_LOOT_冰冷的肉|r或|cRXP_LOOT_诺森德炖肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13101 << Alliance
	.isOnQuest 13113 << Horde
step << Alliance
	#sticky
    #completewith stew
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_冰冷的肉|r。或者可以直接从暴风城或铁炉堡的拍卖行购买|cRXP_LOOT_冰冷的肉|r或|cRXP_LOOT_诺森德炖肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13101
step << Horde
	#sticky
    #completewith stew
	>>在风暴峭壁击杀|cRXP_ENEMY_犀牛|r获得|cRXP_LOOT_冰冷的肉|r。或者可以直接从奥格瑞玛的拍卖行购买|cRXP_LOOT_冰冷的肉|r或|cRXP_LOOT_诺森德炖肉|r
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13113
step << Alliance
	#completewith next
	.isQuestAvailable 13087
	.isOnQuest 13101
	>>要学习烹饪 |cRXP_LOOT_诺森德炖肉|r，需携带4份 |cRXP_LOOT_冰冷的肉|r前往嚎风峡湾的 |cRXP_FRIENDLY_布罗姆|r处。或者，你也可以直接在拍卖行购买 |cRXP_LOOT_诺森德炖肉|r。如果选择从拍卖行购买，请跳过此步骤
	>>完成此任务总共需要 8 块冰冷的肉
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >>接受任务 诺森德的厨师
	.turnin 13087 >>交任务 诺森德的厨师
	.goto HowlingFjord,58.21,62.06
	.target Brom Brewbaster
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>要学习烹饪 |cRXP_LOOT_诺森德炖肉|r，需携带4份 |cRXP_LOOT_冰冷的肉|r前往嚎风峡湾的 |cRXP_FRIENDLY_托马斯·克里奇|r处。或者，你也可以直接在拍卖行购买 |cRXP_LOOT_诺森德炖肉|r。如果选择从拍卖行购买，请跳过此步骤
	>>完成此任务总共需要 8 块冰冷的肉
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >>接受任务 诺森德的厨师
	.turnin 13089 >>交任务 诺森德的厨师
	.goto HowlingFjord,78.61,29.48
	.target Thomas Kolichio
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>使用你的烹饪专业，将4块|cRXP_LOOT_冰冷的肉|r烹饪成4份|cRXP_LOOT_诺森德炖肉|r
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>使用你的烹饪专业，将4块|cRXP_LOOT_冰冷的肉|r烹饪成4份|cRXP_LOOT_诺森德炖肉|r
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>在达拉然与|cRXP_FRIENDLY_埃里雷|r 对话
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>魔术旅馆的集会 << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>魔术旅馆的集会 << Horde
	.isQuestComplete 13113 << Horde
	.target Arille Azuregaze
step
	+你已完成了今天的钓烹饪日常任务
]])