if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
<< NightElf
#name 11-15级 黑海岸/西部荒野 
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup (制作中)地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#next 15-16级 领主大厅

step
    #include RestedXP Forever Guide (A)\14-16 Darkshore@WashedA-Gatehouse
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品以便在西部荒野快速交任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[秃鹫肉条]
    >>|T133884:0|t[鱼人眼睛]
    >>|T135997:0|t[血牙野猪的头]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙野猪的肝]
    >>|T4548890:0|t[魔像同位弹簧]
    >>|T132995:0|t[收割机陀螺稳定器]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target 拍卖师亚克森
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fp Stormwind >>开启暴风城的飞行点
    .target 杜加尔·朗德瑞克
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >>前往西部荒野
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_农夫法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 36 >>接受任务 杂味炖肉
    .accept 151 >>接受任务 老马布兰契
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >>前往萨丁农场
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .accept 109 >>接受任务 向格里安·斯托曼报到
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .turnin 36 >>交任务 杂味炖肉
    .target 萨尔玛·萨丁
    .accept 38 >>接受任务 杂味炖肉
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target 格里安·斯托曼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target 格里安·斯托曼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 12 >>接受任务 西部荒野人民军
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .accept 102 >>接受任务 西部荒野的豺狼人
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>接受任务 红色皮质面罩
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    .vendor >>|cRXP_BUY_如有需要，购买食物/水|r
	.target 旅店老板希瑟尔
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔巴·晴月::253092|r 对话
    .target Alba Fairmoon::253092
    .accept 92742 >>接受任务 测试水井
    .accept 92744 >>接受任务 鱼人的鳃
step
	#completewith GnollPaws
    >>打开地上的 |cRXP_PICK_一袋燕麦|r。拾取他们的 |cRXP_LOOT_一捧燕麦|r
    >>|cRXP_WARN_你通常可以在农场的围栏或建筑物附近找到它们|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >>前往阿历克斯顿农场
    >>|cRXP_WARN_跑图前往该位置的途中，顺便做完其他任务的目标|r
step
    #sticky
    #completewith bennytime
    >>当你路过农田时，顺手击杀|cRXP_ENEMY_看守傀儡|r
    >>拾取它们的 |cRXP_LOOT_秋葵|r 和 |cRXP_LOOT_灯油|r
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>打开 |cRXP_PICK_阿历克斯顿的箱子|r。拾取其中的 |cRXP_LOOT_简易罗盘|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_莫尔森农场的水井|r |cRXP_WARN_中使用|r |T236996:0|t[井水采样工具包]
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >>前往贾森农场，|cRXP_WARN_途中完成其他任务目标|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>打开 |cRXP_PICK_法布隆的柜子|r。拾取其中的 |cRXP_LOOT_法布隆的怀表|r
    >>|cRXP_WARN_如果你调整到正确的视角，你可以从外面拾取 |cRXP_PICK_法布隆的柜子|r |r
	>>|cRXP_WARN_小心 |cRXP_ENEMY_本尼·布兰科|r。他的伤害很高|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>击杀 |cRXP_ENEMY_鱼人袭击者|r 和 |cRXP_ENEMY_滩行鱼人|r。拾取他们的 |cRXP_LOOT_眼球|r 和 |cRXP_LOOT_小蚌壳|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_在詹森农场的水井|r |cRXP_WARN_中使用|r |T236996:0|t[井水采样工具包]
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>打开地上的 |cRXP_PICK_一袋燕麦|r。拾取他们的 |cRXP_LOOT_一捧燕麦|r
	>>|cRXP_WARN_你通常可以在农场的围栏或建筑物附近找到它们|r
	.complete 151,1 --Handful of Oats (8)
step
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .turnin 64 >>交任务 遗失的怀表
    .target 农夫法布隆
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>交任务 老马布兰契
    .target 弗娜·法布隆
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .vendor >>|cRXP_BUY_出售垃圾物品|r
    >>|cRXP_WARN_不要出售|r |T133884:0|t[鱼人的眼球]，|T135997:0|t[血牙野猪的头]，|T134341:0|t[血牙野猪的肝] |cRXP_WARN_或者|r |T133972:0|t[秃鹫肉条]
	.target Farmer Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
    .isQuestComplete 38
    .target 萨尔玛·萨丁
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
    .isQuestComplete 38
    .target 萨尔玛·萨丁
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>击杀 |cRXP_ENEMY_看守傀儡|r。拾取它们的 |cRXP_LOOT_秋葵|r 和 |cRXP_LOOT_灯油|r
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>击杀 看守傀儡。拾取它们的 |cRXP_ENEMY_秋葵|r 和 |cRXP_LOOT_灯油|r
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
	.target 萨尔玛·萨丁
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    >>|cRXP_WARN_这是一个动态刷新区域，如果你击杀足够的敌人，他们会持续刷新|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1324.200,-10490.400
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    >>|cRXP_WARN_这是一个动态刷新区域，如果你击杀足够的敌人，他们会持续刷新|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >>交任务 西部荒野人民军
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>接受任务 迪菲亚兄弟会
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >>交任务 红色皮质面罩
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔巴·晴月::253092|r 对话
    .target Alba Fairmoon::253092
    .turnin 92742 >>交任务 测试水井
    .turnin 92744 >>交任务 鱼人的鳃
step
    .hs >>将炉石使用回暴风城
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    .vendor 1287 >>|cRXP_BUY_从她那里购买一把|r |T135343:0|t[战士阔剑] |cRXP_BUY_或者从拍卖行购买更好的装备，然后装备到你的副手|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    .vendor 1287 >>|cRXP_BUY_从她那里购买一把|r |T135343:0|t[战士阔剑] |cRXP_BUY_|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .train 1758,1
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <16,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
    .xp <16,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
    .xp <16,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .trainer >>训练你的职业技能
	.target 塞瑞德兰
    .xp <16,1
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .turnin 399 >>交任务 童年的记忆
    .target 巴隆斯·阿历克斯顿
    .isQuestComplete 399
step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>前往暴风城大教堂
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto 1453/0,862.89,-8519.61
    .trainer >>训练你的职业技能
    .train 8122,1
    .target 乔舒修士
    .xp <16,1
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>进入矿道地铁
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >>乘坐地铁前往铁炉堡
    .zoneskip Loch Modan
    .zoneskip Dun Morogh


]])



RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#name 13-15级 西部荒野 
#displayname 14-15级 西部荒野 << Gnome/Dwarf !Hunter
#displayname 13-15级 西部荒野 << Hunter
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup (制作中)地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#next 15-16级 领主大厅

step
    #optional
    .maxlevel 14,endOfTheGuide
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
    .bindlocation 16509
step
    #label NEWestfallStart --hidden step for #include

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品以便在西部荒野快速交任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[秃鹫肉条]
    >>|T133884:0|t[鱼人眼睛]
    >>|T135997:0|t[血牙野猪的头]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙野猪的肝]
    >>|T4548890:0|t[魔像同位弹簧]
    >>|T132995:0|t[收割机陀螺稳定器]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target 拍卖师亚克森

step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .turnin 6261 >>交任务 杜加尔·朗德瑞克
    .accept 6285 >>接受任务 返回西部荒野
    .target 杜加尔·朗德瑞克

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野 << !NightElf
    .fp Stormwind >>开启暴风城的飞行点 << NightElf
    .target 杜加尔·朗德瑞克
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >>前往西部荒野
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_农夫法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 36 >>接受任务 杂味炖肉
    .accept 151 >>接受任务 老马布兰契
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >>前往萨丁农场
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .accept 9 >>接受任务 清理荒野
    .accept 109 >>接受任务 向格里安·斯托曼报到 << NightElf
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .turnin 36 >>交任务 杂味炖肉
    .target 萨尔玛·萨丁
    .accept 38 >>接受任务 杂味炖肉
    .accept 22 >>接受任务 猪肝馅饼
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .target 军需官刘易斯
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >>交任务 返回西部荒野
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target 格里安·斯托曼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target 格里安·斯托曼
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 12 >>接受任务 西部荒野人民军
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .accept 102 >>接受任务 西部荒野的豺狼人
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .accept 153 >>接受任务 红色皮质面罩
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>接受任务 红色皮质面罩
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    .vendor >>|cRXP_BUY_如有需要，购买食物/水|r
	.target 旅店老板希瑟尔
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔巴·晴月::253092|r 对话
    .target Alba Fairmoon::253092
    .accept 92742 >>接受任务 测试水井
    .accept 92744 >>接受任务 鱼人的鳃
step
	#completewith GnollPaws
    >>打开地上的 |cRXP_PICK_一袋燕麦|r。拾取他们的 |cRXP_LOOT_一捧燕麦|r
    >>|cRXP_WARN_你通常可以在农场的围栏或建筑物附近找到它们|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >>前往阿历克斯顿农场
    >>|cRXP_WARN_跑图前往该位置的途中，顺便做完其他任务的目标|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 在谷仓对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
step
    #sticky
    #completewith bennytime
    >>当你路过农田时，顺手击杀|cRXP_ENEMY_看守傀儡|r
    >>拾取它们的 |cRXP_LOOT_秋葵|r 和 |cRXP_LOOT_灯油|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>打开 |cRXP_PICK_阿历克斯顿的箱子|r。拾取其中的 |cRXP_LOOT_简易罗盘|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >>前往贾森农场，|cRXP_WARN_途中完成其他任务目标|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>打开 |cRXP_PICK_法布隆的柜子|r。拾取其中的 |cRXP_LOOT_法布隆的怀表|r
    >>|cRXP_WARN_如果你调整到正确的视角，你可以从外面拾取 |cRXP_PICK_法布隆的柜子|r |r
	>>|cRXP_WARN_小心 |cRXP_ENEMY_本尼·布兰科|r。他的伤害很高|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #completewith next
    >>击杀 |cRXP_ENEMY_河爪豺狼人|r 和 |cRXP_ENEMY_河爪斥候|r。拾取它们的 |T134297:0|t|cRXP_LOOT_豺狼人的爪子|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_在詹森农场的水井|r |cRXP_WARN_中使用|r |T236996:0|t[井水采样工具包]
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>击杀 |cRXP_ENEMY_鱼人袭击者|r 和 |cRXP_ENEMY_滩行鱼人|r。拾取他们的 |cRXP_LOOT_眼球|r 和 |cRXP_LOOT_小蚌壳|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>击杀 |cRXP_ENEMY_河爪豺狼人|r 和 |cRXP_ENEMY_河爪斥候|r。拾取它们的 |T134297:0|t|cRXP_LOOT_豺狼人的爪子|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>打开地上的 |cRXP_PICK_一袋燕麦|r。拾取他们的 |cRXP_LOOT_一捧燕麦|r
	>>|cRXP_WARN_你通常可以在农场的围栏或建筑物附近找到它们|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .turnin 64 >>交任务 遗失的怀表
    .turnin 184 >>交任务 法布隆的地契
    .target 农夫法布隆
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>交任务 老马布兰契
    .goto 1436/0,919.47,-9853.13
	.target 弗娜·法布隆
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .turnin 64 >>交任务 遗失的怀表
    .target 农夫法布隆
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>交任务 老马布兰契
    .target 弗娜·法布隆
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .vendor >>|cRXP_BUY_出售垃圾物品|r
    >>|cRXP_WARN_不要出售|r |T133884:0|t[鱼人的眼球]，|T135997:0|t[血牙野猪的头]，|T134341:0|t[血牙野猪的肝] |cRXP_WARN_或者|r |T133972:0|t[秃鹫肉条]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>交任务 清理荒野
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >>交任务 猪肝馅饼
    .turnin 38 >>交任务 杂味炖肉
    .isQuestComplete 22
    .isQuestComplete 38
    .target 萨尔玛·萨丁
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >>交任务 猪肝馅饼
    .isQuestComplete 22
    .target 萨尔玛·萨丁
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
    .isQuestComplete 38
    .target 萨尔玛·萨丁
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>击杀 |cRXP_ENEMY_看守傀儡|r。拾取它们的 |cRXP_LOOT_秋葵|r 和 |cRXP_LOOT_灯油|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>击杀 看守傀儡。拾取它们的 |cRXP_ENEMY_秋葵|r 和 |cRXP_LOOT_灯油|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>交任务 清理荒野
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>击杀 |cRXP_ENEMY_幼年血牙野猪|r 和 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的 |cRXP_LOOT_秃鹫肉条|r，|cRXP_LOOT_野猪头|r 和 |cRXP_LOOT_野猪肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >>交任务 清理荒野
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
	.target 萨尔玛·萨丁
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
    .turnin 22 >>交任务 猪肝馅饼
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兹温·铁链::253395|r 对话
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>接受任务 收割傀儡被收割
    .turnin 92909 >>交任务 收割傀儡被收割
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    >>|cRXP_WARN_这是一个动态刷新区域，如果你击杀足够的敌人，他们会持续刷新|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_莫尔森农场的水井|r |cRXP_WARN_中使用|r |T236996:0|t[井水采样工具包]
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .goto 1436/0,1324.200,-10490.400
    >>杀死 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的 |T133694:0|t|cRXP_LOOT_红色皮质面罩|r
    >>|cRXP_WARN_这是一个动态刷新区域，如果你击杀足够的敌人，他们会持续刷新|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >>交任务 西部荒野人民军
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>接受任务 迪菲亚兄弟会
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >>交任务 西部荒野的豺狼人
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >>交任务 红色皮质面罩
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔巴·晴月::253092|r 对话
    .target Alba Fairmoon::253092
    .turnin 92742 >>交任务 测试水井
    .turnin 92744 >>交任务 鱼人的鳃
step
    .hs >>将炉石使用回暴风城
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    .vendor 1287 >>|cRXP_BUY_从她那里购买一把|r |T135343:0|t[战士阔剑] |cRXP_BUY_或者从拍卖行购买更好的装备，然后装备到你的副手|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    .vendor 1287 >>|cRXP_BUY_从她那里购买一把|r |T135343:0|t[战士阔剑] |cRXP_BUY_|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .train 1758,1
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    >>|cRXP_WARN_如果你之前刚学习过，就跳过这一步|r
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .turnin 399 >>交任务 童年的记忆
    .target 巴隆斯·阿历克斯顿
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .trainer >>训练你的职业技能
	.target 塞瑞德兰
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .train 6222,1
    .target 厄苏拉·德林
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>前往法师塔
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .train 2137,1
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>训练你的职业技能
    .train 19742,1
    .target 虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto 1453/0,862.89,-8519.61
    .trainer >>训练你的职业技能
    .train 8122,1
    .target 乔舒修士
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_凯瑟琳·利兰|r 对话
    >>|cRXP_BUY_从她那里购买一个|r |T134335:0|t[闪光的小珠] |cRXP_BUY_和三个|r |T134324:0|t[夜色虫] |cRXP_BUY_这是一个900点经验值的任务|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉尔伯特·格雷::267118|r 对话
    .target Gilbert Gray::267118
    .accept 95065 >>接受任务 钓鱼时间
    .turnin 95065 >>交任务 钓鱼时间
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 对话 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>接受任务 Philmor's Favor
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莱恩·提亚斯::483|r 对话
    .target Elaine Trias::483
    .turnin 97220 >>交任务 Philmor's Favor
    .accept 97222 >>接受任务 Gatehouse Goods
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >>|cRXP_WARN_在楼上的|r |cRXP_WARN_门楼大门|cRXP_PICK_ |r前使用|r |T132762:0|t[门楼货物]
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莱恩·提亚斯::483|r 对话
    .target Elaine Trias::483
    .turnin 97222 >>交任务 Gatehouse Goods
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>进入矿道地铁
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >>乘坐地铁前往铁炉堡
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup (制作中)地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 15-16级 领主大厅
#next 16-18级 洛丹伦废墟

step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
step
    #completewith OII
    +|cRXP_WARN_你现在将完成领主大厅的前置任务，然后进行地下城副本|r
step
    #completewith OII
    .zone Dun Morogh >>前往 丹莫罗
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .accept 96392 >>接受任务 Farsen's Watch
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话查看他的远视
    >>|cRXP_WARN_目标完成后你可以取消远视|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_按ESC键取消远视|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_目标完成后你可以取消远视|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_按ESC键取消远视|r
    .turnin 96392 >>交任务 Farsen's Watch
    .accept 96390 >>接受任务 防患于未然
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>击杀 |cRXP_ENEMY_黑铁间谍|r。拾取他们的 |T237385:0|t|cRXP_LOOT_黑铁地图|r
    .use 274268 >>|cRXP_WARN_使用|r |T237385:0|t[|cRXP_LOOT_黑铁地图|r] |cRXP_WARN_来开始任务|r
    >>一旦你找到 |T237385:0|t[|cRXP_WARN_黑铁地图|cRXP_ENEMY_]|r，就可以跳过为另一个任务击杀 |r黑铁间谍|cRXP_LOOT_，因为它们等级很低|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>接受任务 Underground Map
    .mob 黑铁间谍
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin 96391 >>交任务 Underground Map
    .accept 96393 >>接受任务 旧铁炉堡入侵
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin 96390 >>交任务 防患于未然
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_开始为领主大厅寻找队伍|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >>前往铁炉堡
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >>通过 |cRXP_FRIENDLY_国王麦格尼的|r 的房间，前往旧铁炉堡下层
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿法德拉·顿沃尔|r 对话
    .accept 96394 >>接受任务 永不安息的亡者
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >>|cRXP_WARN_跳到下面的斜坡|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汤姆·费尔奇|r 对话
    .accept 96403 >>接受任务 重要的传家宝
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >>进入领主大厅

step
    #completewith FaldrimAnvilmar
    >>在领主大厅的地上拾取 |cRXP_PICK_矮人的篝火|r
    >>|cRXP_WARN_你在地下城最后也能收集到许多这样的东西|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>击杀 |cRXP_ENEMY_被激怒的幽灵|r 和 |cRXP_ENEMY_被折磨的幽魂|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鬼魅随从|r 对话
    .accept 96395 >>接受任务 远古的宿怨
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>击杀 |cRXP_ENEMY_法德林·安威玛尔|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_回去找|r |cRXP_FRIENDLY_鬼魅随从|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鬼魅随从|r 对话
    .turnin 96395 >>交任务 远古的宿怨
    .target Ghostly Attendant
step
    >>击杀 |cRXP_ENEMY_被激怒的幽灵|r 和 |cRXP_ENEMY_被折磨的幽魂|r
    >>|cRXP_WARN_争取现在完成这个任务，因为你之后可能没有机会完成它了|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>在领主大厅的地上拾取 |cRXP_PICK_矮人的篝火|r
    >>|cRXP_WARN_你在地下城最后也能收集到许多这样的东西|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>击杀 |cRXP_ENEMY_杜根·挽锤|r。拾取他的 |cRXP_LOOT_杜根·挽锤的头颅|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>点击 |cRXP_PICK_谅解条约|r
    .accept 98423 >>接受任务 谅解条约
step
    >>在领主大厅的地上拾取 |cRXP_PICK_矮人的篝火|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >>|cRXP_WARN_退出领主大厅。最快的方法是从最终Boss房间直接沿走廊跑下去|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汤姆·费尔奇|r 对话
    .turnin 96403 >>交任务 重要的传家宝
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >>登上斜坡回去找 |cRXP_FRIENDLY_阿法德拉·顿沃尔|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿法德拉·顿沃尔|r 对话
    .turnin 96394 >>交任务 永不安息的亡者
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >>登上斜坡前去找 |cRXP_FRIENDLY_麦格尼·铜须国王|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格尼·铜须国王|r 对话
    .turnin 96393 >>交任务 旧铁炉堡入侵
    .turnin 98423 >>交任务 谅解条约
    .target 麦格尼·铜须国王

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔德伦·风暴破坏者::258098|r 对话
    .target Eldrun Stormbreaker::258098
    .trainer >>训练你的职业技能
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话 << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话 << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 对话 << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >>训练你的职业技能
    .target 托德雷·铁矿 << Priest
    .target 布兰度尔·铁锤 << Paladin
    .target 丁克 << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话 << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r 对话 << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩 << Warlock
    .target 芬斯维克 << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133738:0|t[魔典：牺牲（级别 1）]
    .target 寻尸者祖贝尔
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格努斯·雷石|r 对话 << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话 << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >>训练你的职业技能
    .target 雷格努斯·雷石 << Hunter
    .target 比尔班·飞钳 << Warrior
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 16-18级 洛丹伦废墟
#next 18-20级 死亡矿井

step
    #completewith EnterRoL
    +|cRXP_WARN_你现在将去打洛丹伦废墟副本|r
    >>|cRXP_WARN_所有任务都在地下城内接取|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    >>|cRXP_WARN_如果你还没有开启湿地的飞行点，跳过此步骤|r
    .fly Wetlands >>飞往湿地
    .target 格莱斯·瑟登
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >>|cRXP_WARN_离开铁炉堡。前往可以在丹莫罗自杀然后在湿地复活的死亡跳怪的位置|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_爬上山，然后沿着锯齿形状地形往下走，直到你的所在区域变成湿地|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_面朝北方或西北方，跳下山坡|r
    .deathskip >>死掉并在巴拉丁海湾的 |cRXP_FRIENDLY_灵魂医者|r 复生
    .target 灵魂医者
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >>游到米奈希尔港
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fp Menethil Harbor >>获取湿地的飞行路径
    .target 谢尔雷·布隆迪尔
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >>乘船前往南海镇
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .fp Southshore >>开启南海镇的飞行点
    .target 达尔拉·哈瑞斯
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>前往幽暗城的洛丹伦废墟。进入地下城
    >>|cRXP_WARN_跑过去时小心高等级的 |cRXP_ENEMY_豹子|r、|cRXP_ENEMY_熊|r、|cRXP_ENEMY_蜘蛛|r 或 |cRXP_ENEMY_渔人|r|r
    >>|cRXP_WARN_一旦进入 幽暗城，你将自动被标记为PvP状态，|r |cRXP_ENEMY_部落|r 可以攻击你

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图曼上尉|r 对话
    .accept 95250 >>接受任务 Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>击杀 |cRXP_ENEMY_The 男爵|r。拾取他的 |cRXP_LOOT_男爵的头颅|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>从所有小怪身上拾取 |T133328:0|t[|cRXP_LOOT_血污徽章|r]
    .use 268535 >>|cRXP_WARN_使用|r |T133328:0|t[|cRXP_LOOT_血污徽章|r] |cRXP_WARN_来开启任务|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >>接受任务 血污徽章
step
    #sticky
    #label BloodiedInsignia
    >>从所有小怪身上拾取 |cRXP_LOOT_血污徽章|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>拾取在地上或挂在墙上的 |T4504543:0|t[|cRXP_LOOT_洛丹伦纹章|r]
    >>|cRXP_WARN_留意一下这个。它可以在许多不同位置出现，而且很难被看到|r
    .use 268579 >>|cRXP_WARN_使用|r |T4504543:0|t[|cRXP_LOOT_洛丹伦纹章|r] |cRXP_WARN_来开启任务|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >>接受任务 洛丹伦纹章
step
    #sticky
    #label CrumpledPaper
    >>点击 |cRXP_PICK_拉斯玛尔|r 附近地上的 |cRXP_ENEMY_揉皱的纸|r
    >>|cRXP_WARN_你可以在杀死他之后再做这个|r
    .accept 92415 >>接受任务 Remember That I Love 你
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图曼上尉|r 对话
    >>|cRXP_FRIENDLY_图曼上尉|r |cRXP_WARN_在地下城的起点处|r
    .turnin 95250 >>交任务 Abominable Creatures
    .target Captain Truman

step
    .hs >>将炉石使用回暴风城
    >>|cRXP_WARN_如果你的炉石没有绑在暴风城，请自行前往那里|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_孤儿监护员奈丁加尔|r 对话
    .turnin 92415 >>交任务 Remember That I Love 你
    .accept 95161 >>接受任务 Remember That I Love 你
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_孤儿监护员奈丁加尔|r 对话
    .accept 95161 >>接受任务 Remember That I Love 你
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .accept 2040 >>接受任务 地底突袭
    .target 沉默的舒尼
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 对话
    .accept 167 >>接受任务 我的兄弟……
    .accept 168 >>接受任务 收集记忆
    .target 维尔德·蓟草
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >>前往暴风城图书馆
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德娜·肯尼迪|r 对话
    >>|cRXP_WARN_她在皇家画廊里走来走去|r
    .turnin 95189 >>交任务 洛丹伦纹章
    .target 德娜·肯尼迪
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马库斯·乔纳森将军|r对话
    .turnin 95195 >>交任务 血污徽章
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .trainer >>训练你的职业技能
	.target 塞瑞德兰
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>前往法师塔
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto 1453/0,862.89,-8519.61
    .trainer >>训练你的职业技能
    .target 乔舒修士
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP魔兽世界无限地下城指南（联盟版）
#subgroup （制作中）地下城指南 1-20级
--#groupid RXP-SRGCE-A1
#name 18-20级 死亡矿井
#next 20-20级 赤脊山

step
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >>接受任务 迪菲亚兄弟会
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 或 |cRXP_FRIENDLY_索尔|r 对话
    >>|cRXP_WARN_如果你还没有开启赤脊山的飞行路线，跳过这一步|r
    .fly Redridge >>飞往赤脊山
    .target 杜加尔·朗德瑞克
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    #completewith RRDB
    .zone Redridge Mountains >>前往赤脊山
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上里面的 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
    .accept 132 >>接受任务 迪菲亚兄弟会
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_肖恩|r对话
	.target 肖恩
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >>接受任务 希拉里的项链
    .zoneskip 1433,1
step
    >>|cRXP_WARN_跳跃入湖中|r
    >>打开|cRXP_PICK_闪光的泥浆|r。拾取 [|cRXP_LOOT_希拉里的项链|r]
    >>|cRXP_WARN_它在湖中有多个刷新点|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
    .zoneskip 1433,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉里|r 对话
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >>交任务 希拉里的项链
    .zoneskip 1433,1
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >>交任务 迪菲亚兄弟会
    .accept 135 >>接受任务 迪菲亚兄弟会
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    .turnin 135 >>交任务 迪菲亚兄弟会
    .accept 141 >>接受任务 迪菲亚兄弟会
    .target 马迪亚斯·肖尔大师
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品以便在西部荒野快速交任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T132794:0|t|T132794:0|t[灯油]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target 拍卖师亚克森
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 141 >>交任务 迪菲亚兄弟会
    .accept 142 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >>前往月溪镇
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死 |cRXP_ENEMY_迪菲亚信使|r。拾取他的 |cRXP_LOOT_神秘的信件|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚信使|r 在月溪镇刷新。它沿着月溪镇北面的道路行走，前往金海岸矿洞和詹戈洛德矿洞。如果你在路上看不到它，就在月溪镇等待它刷新|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 142 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_迪菲亚叛徒|r 对话
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_迪菲亚叛徒|r不在，你可能需要等待他刷新|r
    .accept 155 >>接受任务 迪菲亚兄弟会
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>护送 |cRXP_FRIENDLY_迪菲亚叛徒|r 到死亡矿井
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 155 >>交任务 迪菲亚兄弟会
    .accept 166 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .accept 214 >>接受任务 红色丝质面罩
    .target 哨兵瑞尔
step
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_在哨兵岭南侧刷 |cRXP_ENEMY_豺狼人|r，同时组建一个死亡矿井队伍|r
    .subzone 20 >>当你的小队集结完毕后，前往月溪镇
step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >>与小队一起进入迪菲亚斯藏身处
step
    #completewith EnterDM
    >>击杀 |cRXP_ENEMY_迪菲亚|r。拾取他们身上的 |cRXP_LOOT_红色丝质头巾|r
    >>|cRXP_WARN_你也可以在死亡矿井副本内完成这个|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_注释：这个任务没有给予类似其他地下城任务的额外经验，而且需要花费更长的时间来完成。如果你的队伍同意，考虑跳过这个任务|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_工头希斯耐特|r，拾取他的 |cRXP_LOOT_徽章|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan 工头希斯耐特
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_注释：这个任务没有给予类似其他地下城任务的额外经验，而且需要花费更长的时间来完成。如果你的队伍同意，考虑跳过这个任务|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>进入死亡矿井副本
step
    #completewith DMend
    >>击杀死亡矿井内的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>击杀 |cRXP_ENEMY_斯尼德|r，拾取他的 |cRXP_LOOT_小型高能发动机|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>击杀 |cRXP_ENEMY_艾德温·范克里夫|r，拾取他的 |cRXP_LOOT_头颅|r 以及 |T133471:0|t[|cRXP_LOOT_未寄出的信|r]
    >>|cRXP_WARN_使用 |T133471:0|t[|cRXP_LOOT_未寄出的信|r] 来开始任务|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >>接受任务 未寄出的信
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >>前往西部荒野灯塔
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .accept 103 >>接受任务 长明的灯塔
    .turnin 103 >>交任务 长明的灯塔
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 104 >>交任务 海岸上的威胁
    .target Captain Grayson
    .isQuestComplete 104
step
    .goto 1436/0,1707.2116,-10583.0227
    >>点击地面上的|cRXP_PICK_焦焚残骸|r
    .accept 79008 >>接受任务 ……以及你找到的那张字条
step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >>前往哨兵岭
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼顶的 |cRXP_FRIENDLY_格里安·斯托曼|r 和 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .turnin 166 >>交任务 迪菲亚兄弟会
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 214 >>交任务 红色丝质面罩
    .goto 1436/0,1033.22,-10504.83
    .target +Scout Riell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 166 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
step
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .turnin 214 >>交任务 红色丝质面罩
    .goto 1436/0,1033.22,-10504.83
    .target 哨兵瑞尔

--Shaman water totem quest start
step << Shaman
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索尔
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔德伦·风暴破坏者::258098|r 对话
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>接受任务 水之召唤
    .trainer >>训练你的职业技能
step << Shaman
    #completewith CallofWater
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
step << Shaman
	.isOnQuest 94494
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Norric Lochthane::258043|r 对话
    .target Norric Lochthane::258043
    .turnin 94494 >>交任务水之召唤
	.accept 94495 >>接受任务 水之召唤
step << Shaman
	#label CallofWater
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Norric Lochthane::258043|r 对话
    .target Norric Lochthane::258043
    .accept 94495 >>接受任务 水之召唤
step << Shaman
	#optional
	.isOnQuest 468
    .goto 1432/0,-2695.500,-4678.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人罗克加::1342|r 对话
    .target Mountaineer Rockgar::1342
    .turnin 468 >>交任务 向巡山人罗克加报告
step << Shaman
    #completewith WaterTotem1
    #label DunAlgaz1
    .goto 1432/0,-2697.700,-4645.500,15,0
    .goto 1437/0,-2653.800,-4448.100,15,0
    .goto 1437/0,-2480.200,-4421.800,15,0
    .goto 1437/0,-2464.200,-4280.900,15,0
    .goto 1437/0,-2419.800,-4092.100,15,0
    .goto 1437/0,-2629.900,-4086.400,15 >>穿过丹奥加兹前往湿地
step << Shaman
    #completewith WaterTotem1
    #requires DunAlgaz1
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >>沿着斜坡向上前往洞穴内的 |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
step << Shaman
    #label WaterTotem1
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hervdana Saegrund::258203|r 对话
    .target Hervdana Saegrund::258203
    .turnin 94495 >>交任务水之召唤
    .accept 94497 >>接受任务 水之召唤  
step << Shaman
    .goto 1437/0,-3069.100,-4210.100
    .use 265732 >>|cRXP_WARN_在瀑布底部|r |cRXP_WARN_使用|r |T132825:0|t[空的棕色水囊]
    .complete 94497,1 --|1/1 Full Brown Waterskin
step << Shaman
    #completewith next
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >>沿着斜坡向上回到洞穴内的 |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
step << Shaman
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hervdana Saegrund::258203|r 对话
    .target Hervdana Saegrund::258203
    .turnin 94497 >>交任务水之召唤
    .accept 94499 >>接受任务 水之召唤

--sham can hs to sw
--everyone else can fly sw turn in / train 20 spells

]])