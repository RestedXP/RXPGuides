if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 18-19级 洛克莫丹
#version 1
#group RestedXP 生存指南 (联盟版)
#subgroup RXP 生存指南 1-20级
#next 19-20级 赤脊山


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_德温·晨光|r 对话
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_德温·晨光|r 没有库存，请跳过此步骤|r
    .target 德温·晨光
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔·奥雷|r 对话
    .vendor >>|cRXP_BUY_买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_尼尔·奥雷|r 没有库存，请跳过此步骤|r
	.target 尼尔·奥雷
    .bronzetube
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾德温娜·蒙佐尔|r 对话
    .vendor >>|cRXP_BUY_购买 |T134410:0|t[中型箭袋]|r和|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 11362,1 --Medium Quiver (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target 艾德温娜·蒙佐尔
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 对话
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_这是限量供应物品，如果 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 没有库存，请跳过此步骤|r
    .target Samor Festivus
step << !Druid !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 谢尔雷·布隆迪尔
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话 << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话 << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r 对话 << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话 << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 对话 << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话 << Paladin
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >>训练你的职业技能
    .target 比尔班·飞钳 << Warrior
    .target 布瑞尔索恩 << Warlock
    .target 芬斯维克 << Rogue
    .target 托德雷·铁矿 << Priest
    .target 丁克 << Mage
    .target 布兰度尔·铁锤 << Paladin
    .xp <18,1
step << !Druid !Hunter
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 谢尔雷·布隆迪尔
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r 对话
    .accept 255 >>接受任务 雇佣兵
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_吉恩·角盔|r 对话
    .accept 436 >>接受任务 铁环挖掘场
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >>向北前往奥加兹岗哨
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 353 >>交任务 雷矛的包裹 << NightElf
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
step
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .target 巡山人雷矛
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >>前往巨石水坝
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主工程师辛德维尔七世|r 对话
    .accept 250 >>接受任务 水坝危机
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>点击 |cRXP_PICK_可疑的木桶|r
    .turnin 250 >>交任务 水坝危机
    .accept 199 >>接受任务 水坝危机
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主工程师辛德维尔七世|r 对话
    .turnin 199 >>交任务 水坝危机
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    +|cRXP_WARN_小心别撞上|r |cRXP_ENEMY_部落奔跑者|r|cRXP_WARN_！这是一组由2个|cRXP_ENEMY_兽人|r和1个|cRXP_ENEMY_牛头人|r组成的精英巡逻队，在洛克湖东侧（地图上的那条线）巡逻|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往旅行者营地
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .accept 257 >>接受任务 自豪的猎人
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克劳德·艾尔克辛|r 对话
    .trainer >>训练你的宠物技能
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_达恩·准星|r 对话
    .trainer >>训练你的职业技能
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_马雷克·铁心|r 对话
    .accept 385 >>接受任务 捕猎鳄鱼
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>击杀|cRXP_ENEMY_山丘秃鹫|r
    >>|cRXP_WARN_你必须完成此任务并在15分钟内返回|cRXP_FRIENDLY_年轻的达瑞尔|r处。若任务失败，请放弃后重新接取|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往 |cRXP_FRIENDLY_年轻的达瑞尔|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .goto Loch Modan,83.49,65.40
    .turnin 257 >>交任务 自豪的猎人
    .accept 258 >>接受任务 猎人的挑战
    .target Daryl the Youngling
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>击杀|cRXP_ENEMY_老年山猪|r
    >>|cRXP_WARN_你必须完成此任务并在12分钟内返回|cRXP_FRIENDLY_年轻的达瑞尔|r处。若任务失败，请放弃后重新接取|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往 |cRXP_FRIENDLY_年轻的达瑞尔|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .goto Loch Modan,83.49,65.40
    .turnin 258 >>交任务 猎人的挑战
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_维林·疾风|r 对话
    .goto Loch Modan,81.73,64.15
    .accept 271 >>接受任务 维林的报复
    .target Vyrin Swiftwind
step
    #completewith next
    +|cRXP_WARN_小心别撞上|r |cRXP_ENEMY_部落奔跑者|r|cRXP_WARN_！这是一组由2个|cRXP_ENEMY_兽人|r和1个|cRXP_ENEMY_牛头人|r组成的精英巡逻队，在洛克湖东侧（地图上的那条线）巡逻|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >>前往位于洛克湖中间的岛屿
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>击杀|cRXP_ENEMY_洛克鳄鱼|r，拾取它们的|cRXP_LOOT_肉|r和|cRXP_LOOT_皮|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    +|cRXP_WARN_小心别撞上|r |cRXP_ENEMY_部落奔跑者|r|cRXP_WARN_！这是一组由2个|cRXP_ENEMY_兽人|r和1个|cRXP_ENEMY_牛头人|r组成的精英巡逻队，在洛克湖东侧（地图上的那条线）巡逻|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >>前往铁环挖掘场
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_麦格玛尔·落斧|r 对话
    .turnin 436 >>交任务 铁环挖掘场
    .accept 297 >>接受任务 收集石像
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员基恩萨·铁环|r 对话
    .accept 298 >>接受任务 挖掘进度报告
    .target 勘察员基恩萨·铁环
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>击杀|cRXP_ENEMY_碎石怪挖掘者|r、|cRXP_ENEMY_碎石怪地卜师|r和|cRXP_ENEMY_狂暴穴居怪|r。从它们身上拾取|cRXP_LOOT_瘟疫雕像|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_麦格玛尔·落斧|r 对话
    .turnin 297 >>交任务 收集石像
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >>前往灰爪山
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>击杀|cRXP_ENEMY_老黑炭|r，拾取他的|cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_老黑炭|r |cRXP_WARN_不总是在他的洞穴内，也可能沿着通往下层地面的小路巡逻|r
    >>|cRXP_ENEMY_老黑炭|r |cRXP_WARN_是一个20级精英|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往旅行者营地
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_马雷克·铁心|r 对话
    .turnin 385 >>交任务 捕猎鳄鱼
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .goto Loch Modan,83.49,65.40
    .turnin 271 >>交任务 维林的报复
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .goto Loch Modan,83.49,65.40
    .accept 531 >>接受任务 维林的报复
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_维林·疾风|r 对话
    .goto Loch Modan,81.73,64.15
    .turnin 531 >>交任务 维林的报复
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >>放弃任务 维林的报复
step
    .group
    .goto Loch Modan,73.87,29.64,100 >>前往莫格罗什要塞
    .isOnQuest 255
step
    .group 3
    >>击杀 |cRXP_ENEMY_莫格罗什食人魔|r、|cRXP_ENEMY_莫格罗什执行者|r 和 |cRXP_ENEMY_莫格罗什蛮兵|r
    >>|cRXP_ENEMY_莫格罗什蛮兵|r |cRXP_WARN_只出现在洞穴内。不建议进东北方那个洞穴，去另外2个小洞里杀就行|r
    .complete 255,1 -- Mo'grosh Ogre slain (4)
    .mob +Mo'grosh Ogre
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,3 -- Mo'grosh Enforcer slain (4)
    .mob +Mo'grosh Enforcer
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,2 -- Mo'grosh Brute slain (4)
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08,25,0
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08
    .isOnQuest 255
    .mob +Mo'grosh Brute
step
    #completewith next
    +|cRXP_WARN_小心别撞上|r |cRXP_ENEMY_部落奔跑者|r|cRXP_WARN_！这是一组由2个|cRXP_ENEMY_兽人|r和1个|cRXP_ENEMY_牛头人|r组成的精英巡逻队，在洛克湖东侧（地图上的那条线）巡逻|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >>前往塞尔萨玛，洛克莫丹
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_吉恩·角盔|r 对话
    .turnin 298 >>交任务 挖掘进度报告
    .accept 301 >>接受任务 向铁炉堡报告
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r 对话
    .turnin 255 >>交任务 雇佣兵
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >>放弃任务 雇佣兵
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r 对话
    .turnin 301 >>交任务 向铁炉堡报告
    .target 勘察员塔伯斯·雷矛
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜雷·石衣|r 对话
    .bankdeposit 5996 >>将以下物品存入你的银行：
    >>|T134797:0|t[水下呼吸药剂]（如果你有的话） -- 5996
    .target 拜雷·石衣
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor >>|cRXP_BUY_买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_考格斯宾|r 没有库存，请跳过此步骤|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 考格斯宾
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >>进入矿道地铁，乘坐地铁前往暴风城
    >>|cRXP_WARN_在等待地铁期间，如有需要可提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 和 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Click here for a video guide for a logout skip on the tram|r
]])
