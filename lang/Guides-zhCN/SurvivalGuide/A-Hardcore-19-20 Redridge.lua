if GetLocale() ~= "zhCN" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 19-20级 赤脊山
#version 1
#group RestedXP 生存指南 (联盟版)
#subgroup RXP 生存指南 1-20级
#next 20-21级 黑海岸/灰谷

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的宠物技能
    .target 卡瑞娜·麦肯达
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor >>|cRXP_BUY_买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品，如果 |cRXP_FRIENDLY_比利巴布·旋轮|r 没有库存，请跳过此步骤|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target 弗伦·长须
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 和|cRXP_FRIENDLY_维尔德·蓟草|r 对话
    .accept 2040 >>接受任务 地底突袭
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
    .accept 167 >>接受任务 我的兄弟……
    .accept 168 >>接受任务 收集记忆
    .goto StormwindClassic,65.438,21.175
    .target +Wilder Thistlenettle
step << Hunter
    #ssf
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r 对话
    >>|cRXP_BUY_购买一把|r |T135489:0|t[重型弯弓]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #ah
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r 对话
    >>|cRXP_BUY_购买一把|r |T135489:0|t[重型弯弓] |cRXP_BUY_或从拍卖行购买更好的装备|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r 对话
    >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Stover
step << Hunter
    +|cRXP_WARN_装备|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .trainer >>训练你的职业技能
    .target 乔舒修士
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_BUY_购买一根|r |T135139:0|t|T135139:0|t[燃烧魔杖] |cRXP_BUY_如果它是装备升级的话|r
    >>|cRXP_WARN_购买一把非暗影伤害的魔杖非常重要。稍后你将不得不面对对暗影伤害有抗性的怪物|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .trainer >>训练你的职业技能
    .target 沙德拉斯·月树
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 201 >>学习单手剑 << Mage/Rogue/Warlock
    .train 1180 >>学习 匕首 << Mage/Druid
    .train 202 >>学习双手剑 << Warrior/Paladin
    .target 吴平
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_购买一把|r |T135324:0|t|T135342:0|t[长剑] |cRXP_BUY_和|r |T135342:0|t|T135342:0|t[波刃短剑]
    >>|cRXP_WARN_21级时，在主手装备|r |T135324:0|t|T135342:0|t[长剑] |cRXP_WARN_，并在副手装备|r |T135342:0|t|T135342:0|t[波刃短剑] |cRXP_WARN_|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买以下物品，以便稍后在赤脊山更快地完成任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134172:0|t[巨型血牙野猪头]
    >>|T134028:0|t[硬秃鹫肉]
    >>|T134321:0|t[香脆蜘蛛肉]
    >>|T134572:0|t|T134572:0|t[瑞斯班矿石]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .collect 2798,5,347,1 -- Rethban Ore (5)
    .target 拍卖师亚克森
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往 Redridge
    .target 杜加尔·朗德瑞克
step << NightElf
    #label ExitSW
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>离开暴风城
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往赤脊山
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
    .accept 246 >>接受任务 审时度势
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >>接受任务 丢失的工具
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>接受任务 马掌
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
	.target 所罗门镇长
    .accept 120 >>接受任务 送往暴风城的信
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达希|r 对话
    >>|cRXP_FRIENDLY_达希|r |cRXP_WARN_在旅馆里走动|r
	.target Darcy
    .accept 129 >>接受任务 免费的午餐
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
    .accept 132 >>接受任务 迪菲亚兄弟会
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>离开旅店
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师布雷纳|r对话
	.target Chef Breanna
    .accept 92 >>接受任务 赤脊山炖肉
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_肖恩|r 对话
	.target 肖恩
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >>接受任务 希拉里的项链
step
    >>|cRXP_WARN_跳跃入湖中|r
    >>打开|cRXP_PICK_闪光的泥浆|r。拾取 [|cRXP_LOOT_希拉里的项链|r]
    >>|cRXP_WARN_它在湖中有多个刷新点|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉里|r 对话
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务 希拉里的项链
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
	.target 艾蕾娜·斯托姆法瑟
    .fly Westfall >>飞往西部荒野
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 132 >>交任务 迪菲亚兄弟会
    .accept 135 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马库斯·乔纳森将军|r对话
    .turnin 120 >>交任务 送往暴风城的信
    .accept 121 >>接受任务 送往暴风城的信
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    .turnin 135 >>交任务 迪菲亚兄弟会
    .accept 141 >>接受任务 迪菲亚兄弟会
    .target 马迪亚斯·肖尔大师
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 141 >>交任务 迪菲亚兄弟会
    .accept 142 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >>前往月溪镇
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死 |cRXP_ENEMY_迪菲亚信使|r。拾取他的 |cRXP_LOOT_神秘的信件|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚信使|r 在月溪镇刷新。它沿着月溪镇北面的道路行走，前往金海岸矿洞和詹戈洛德矿洞。如果你在路上看不到它，就在月溪镇等待它刷新|r
    >>|cRXP_WARN_它的刷新时间为4-5分钟|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往西部荒野灯塔
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .accept 103 >>接受任务 长明的灯塔
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 103 >>交任务 长明的灯塔
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r|cRXP_WARN_在长滩上来回巡逻。如果你在长滩上看不到他，就等他刷新在最南边的|cRXP_ENEMY_鱼人|r营地|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 104 >>交任务 海岸上的威胁
    .target Captain Grayson
step
    .abandon 103 >>放弃任务 长明的灯塔
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 142 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_迪菲亚叛徒|r 对话
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_迪菲亚叛徒|r不在，你可能需要等待他刷新|r
    .accept 155 >>接受任务 迪菲亚兄弟会
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>护送 |cRXP_FRIENDLY_迪菲亚叛徒|r 到死亡矿井
    >>|cRXP_WARN_时刻待在|cRXP_FRIENDLY_迪菲亚叛徒|r 身边。在抵达月溪镇时，准备好与 |cRXP_ENEMY_迪菲亚|r 战斗|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_使用 |T134269:0|t[|cRXP_LOOT_杉德尔船长的藏宝图|r] 来激发任务|r
    .use 1357
    .accept 136 >>接受任务 杉德尔船长的藏宝图
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>点击 |cRXP_PICK_船长的手提箱|r
    .turnin 136 >>交任务 杉德尔船长的藏宝图
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>点击 |cRXP_PICK_船长的手提箱|r
    .accept 138 >>接受任务 杉德尔船长的藏宝图
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>点击 |cRXP_PICK_破桶|r
    .turnin 138 >>交任务 杉德尔船长的藏宝图
    .accept 139 >>接受任务 杉德尔船长的藏宝图
    .isQuestTurnedIn 136
step
    .goto Westfall,40.63,17.03
    >>点击 |cRXP_PICK_旧罐子|r
    .turnin 139 >>交任务 杉德尔船长的藏宝图
    .accept 140 >>接受任务 杉德尔船长的藏宝图
    .isQuestTurnedIn 138
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >>游向岛屿
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>点击 |cRXP_PICK_锁住的箱子|r
    .turnin 140 >>交任务 杉德尔船长的藏宝图
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 155 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼顶的 |cRXP_FRIENDLY_治安官格里安·斯托曼|r 和 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .accept 166 >>接受任务 迪菲亚兄弟会
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 214 >>接受任务 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >>现在你应该开始寻找前往死亡矿井的小队
    >>在组死亡矿井队伍的同时，刷豺狼人
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>前往死亡矿井
step
.dungeon DM
    #completewith EnterDM
    >>击杀 |cRXP_ENEMY_迪菲亚|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    >>|cRXP_WARN_你可以在进入副本后继续完成该任务|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_工头希斯耐特|r，拾取他的 |cRXP_LOOT_徽章|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan 工头希斯耐特
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>进入死亡矿井副本
step
.dungeon DM
    #completewith DMend
    >>击杀死亡矿井内的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_斯尼德|r，拾取他的 |cRXP_LOOT_小型高能发动机|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_艾德温·范克里夫|r，拾取他的 |cRXP_LOOT_头颅|r 以及 |T133471:0|t[|cRXP_LOOT_未寄出的信|r]
    >>|cRXP_WARN_使用 |T133471:0|t[|cRXP_LOOT_未寄出的信|r] 来开始任务|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >>接受任务 未寄出的信
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >>前往哨兵岭
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼顶的 |cRXP_FRIENDLY_治安官格里安·斯托曼|r 和 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .turnin 166 >>交任务 迪菲亚兄弟会
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 214 >>交任务 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r 对话
	.target 阿古斯·夜语
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >>接受任务 遥远的旅途
step
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克里斯托弗修士|r 对话
    >>如果你还没到20级，跳过此步骤
    .accept 343 >>接受任务 关于坚韧的演讲
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .turnin 373 >>交任务 未寄出的信
    .accept 389 >>接受任务 巴基尔·斯瑞德
    .target 巴隆斯·阿历克斯顿
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 和 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .turnin 167 >>交任务 我的兄弟……
    .turnin 168 >>交任务 收集记忆
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >>交任务 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target +Shoni the Shilent
step -- adding again 2nd time incase hitting 20 after turning in triple DM quests
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克里斯托弗修士|r 对话
    >>如果你还没到20级，跳过此步骤
    .accept 343 >>接受任务 关于坚韧的演讲
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >>前去找暴风城图书馆中的 |cRXP_FRIENDLY_米尔顿·西弗|r
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>如果你还没到20级，跳过此步骤
    .turnin 343 >>交任务 关于坚韧的演讲
    .accept 344 >>接受任务 帕克斯顿修士
    .target 米尔顿·西弗
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .turnin 389 >>交任务 巴基尔·斯瑞德
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target 典狱官塞尔沃特
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    >>如果你还在西部荒野，飞往赤脊山
    .fly Redridge >>飞往 Redridge
    .target 索尔
    .zoneskip Westfall,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>离开暴风城。前往闪金镇
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
	.target 铁匠阿古斯
    .turnin 118 >>交任务 马掌
    .accept 119 >>接受任务 回复弗纳
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >>前往北郡修道院
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 344 >>交任务 帕克斯顿修士
    .accept 345 >>接受任务 墨水短缺
    .target Brother Paxton
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >>前往阿祖拉之塔。登塔，然后跟随箭头走，从山上抄近路过去
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与顶部的|cRXP_FRIENDLY_塞欧克瑞图斯|r交谈
    .accept 94 >>接受任务 法师的眼线
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_当恩·布赖特斯塔|r 对话
    .vendor >>|cRXP_FRIENDLY_当恩·布赖特斯塔|r |cRXP_BUY_也有一些限量供应物品，例如|r |T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_以及|r |T134850:0|t|T134830:0|t[药水] |cRXP_BUY_，如果有库存应当购买|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_当恩·布赖特斯塔|r |cRXP_BUY_也有一些限量供应物品，例如|r |T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_以及|r |T134830:0|t[药水] |cRXP_BUY_，如果有库存应当购买|r << Warrior/Rogue
    .target 当恩·布赖特斯塔
    .subzoneskip 91,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往赤脊山
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往 Redridge
    .target 杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
	.target 卫兵帕克
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>接受任务 豺狼人的入侵
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
	.target 卫兵帕克
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>交任务 免费的午餐
    .accept 130 >>接受任务 寻访草药师
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
	.target 菲尔顿副队长
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >>交任务豺狼人的入侵
    .accept 246 >>接受任务 审时度势
step
    .isQuestTurnedIn 343
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >>交任务 墨水短缺
    .target Foreman Oslow
step
    .isQuestTurnedIn 118
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务 回复弗纳
    .accept 124 >>接受任务 豺狼人的乱吠
    .accept 122 >>接受任务 雏龙的鳞片
step
    #era/som
    #completewith MongrelPoacher
    >>杀死 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    >>杀死 |cRXP_ENEMY_狼蛛|r。拾取它们的 |cRXP_LOOT_香脆蜘蛛肉|r
    >>杀死 |cRXP_ENEMY_恐鹫|r。拾取它们的 |cRXP_LOOT_硬秃鹫肉|r
    >>|cRXP_WARN_在交赤脊山炖肉任务之前不要卖掉这些物品|r
    >>|cRXP_WARN_保留你拾取到的所有|r|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r，|cRXP_WARN_因为你可以用它们将|r|T133971:0|t[烹饪]|cRXP_WARN_提升到50级，这是稍后去暮色森林所必需的|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
    .collect 1081,5,92,1
    .mob +Tarantula
step
    .isOnQuest 122
    #completewith Toolbox
    >>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    >>你现在不需要完成这个任务
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label MongrelPoacher
    .goto Redridge Mountains,15.91,62.76,0
    .goto Redridge Mountains,43.44,70.61,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>杀死 |cRXP_ENEMY_混血赤脊山豺狼人|r 和 |cRXP_ENEMY_赤脊山偷猎者|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    #era/som
    #completewith next
    >>杀死 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    >>杀死 |cRXP_ENEMY_恐鹫|r。拾取它们的 |cRXP_LOOT_硬秃鹫肉|r
    >>|cRXP_WARN_在交赤脊山炖肉任务之前不要卖掉这些物品|r
    >>|cRXP_WARN_保留你拾取到的所有|r|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r，|cRXP_WARN_因为你可以用它们将|r|T133971:0|t[烹饪]|cRXP_WARN_提升到50级，这是稍后去暮色森林所必需的|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>杀死 |cRXP_ENEMY_狼蛛|r。拾取它们的 |cRXP_LOOT_香脆蜘蛛肉|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #era/som
    >>击杀 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    >>杀死 |cRXP_ENEMY_恐鹫|r。拾取它们的 |cRXP_LOOT_硬秃鹫肉|r
    >>|cRXP_WARN_在交赤脊山炖肉任务之前不要卖掉这些物品|r
    >>|cRXP_WARN_保留你拾取到的所有|r|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r，|cRXP_WARN_因为你可以用它们将|r|T133971:0|t[烹饪]|cRXP_WARN_提升到50级，这是稍后去暮色森林所必需的|r
    .collect 1080,5,92,1
    .mob +Dire Condor
    .goto Redridge Mountains,66.4,76.6,60,0
    .goto Redridge Mountains,35.6,69.6,60,0
    .goto Redridge Mountains,45.4,76.6
    .goto Redridge Mountains,35.6,69.6,0
    .collect 2296,5,92,1
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .mob +Great Goretusk
step
    #label Toolbox
    >>|cRXP_WARN_跳进湖里。注意水中巡逻的精英|cRXP_ENEMY_ |r止水湖蛇颈龙|r
    >>打开 |cRXP_PICK_沉没的箱子|r。拾取 |cRXP_LOOT_奥斯洛的工具箱|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-3000 >>刷怪直到离20级还差3000点经验值
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >>前往湖畔镇
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>交任务 丢失的工具
    .accept 89 >>接受任务 止水湖上的桥
step
    #era
    .isQuestComplete 122
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
    >>如果还没完成任务"雏龙的鳞片"，跳过这一步，后续会回来做
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >>交任务 雏龙的鳞片
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
	.target 所罗门镇长
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>交任务 送往暴风城的信
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
	.target 玛蒂·詹罗斯
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >>交任务 寻访草药师
    .accept 131 >>接受任务 水仙诉衷情
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师布雷纳|r对话
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >>交任务 赤脊山炖肉
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达希|r 对话
    >>|cRXP_FRIENDLY_达希|r |cRXP_WARN_在旅馆里走动|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>交任务 水仙诉衷情
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
	.target 菲尔顿副队长
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>交任务 审时度势
step
    .xp 20 >>在飞往暴风城之前，确保你是20级
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
	.target 艾蕾娜·斯托姆法瑟
    .fly Stormwind >>飞往暴风城
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133738:0|t[魔典：折磨（等级 2）]
    .target 斯巴克尔
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1716 >>接受任务噬魂者
    .target 黑暗缚灵者加科因
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
	.xp <20,1
    .target 拉瑞麦尼·普尔度
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .goto StormwindClassic,20.89,55.50
    .trainer >>训练你的职业技能
    .train 768 >>学习 |T132115:0|t[猎豹形态]
    .target 沙德拉斯·月树
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_购买一把|r |T135324:0|t[长剑] |cRXP_BUY_，21级时装备上|r
    >>|cRXP_BUY_如果拍卖行有更便宜或更好的装备就购买它|r
    >>|cRXP_WARN_如果你有更好的装备，就跳过此步|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << !Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买 |T134437:0|t[抗毒药剂]，后续 |T132290:0|t[毒药] 任务会用上
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    .collect 6452,1,2359,1 --Anti-Venom (1)
    .target 拍卖师亚克森
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_购买一把|r |T135324:0|t[长剑] |cRXP_BUY_，21级时装备上|r
    >>|cRXP_WARN_如果你有更好的装备，就跳过此步|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_如果你有足够的金币，购买一把|r |T135280:0|t[微光重剑] |cRXP_BUY_在21级时装备上|r
    >>|cRXP_BUY_如果拍卖行有更便宜或更好的装备就购买它|r
    >>|cRXP_WARN_如果你有更好的装备，就跳过此步|r
    .collect 922,1 --Dacian Falx (1)
    .target 冈瑟尔·维勒
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_如果你有足够的金币，购买一把|r |T135280:0|t[微光重剑] |cRXP_BUY_在21级时装备上|r
    >>|cRXP_WARN_如果你有更好的装备，就跳过此步|r
    .collect 922,1 --Dacian Falx (1)
    .target 冈瑟尔·维勒
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r 对话
	.target 阿古斯·夜语
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >>接受任务 遥远的旅途
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克里斯托弗修士|r 对话
    .accept 343 >>接受任务 关于坚韧的演讲
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话。他会给你 |T133739:0|t[|cRXP_LOOT_勇气之书|r]
    .use 6776 >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_勇气之书|r] 来激发任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接受任务 勇气之书
    .target 达索瑞恩·拉尔
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1649 >>交任务 勇气之书
    .target 达索瑞恩·拉尔
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target 乔舒修士
step
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >>前去找暴风城图书馆中的 |cRXP_FRIENDLY_米尔顿·西弗|r
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    .turnin 343 >>交任务 关于坚韧的演讲
    .accept 344 >>接受任务 帕克斯顿修士
    .target 米尔顿·西弗
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .train 1804 >>训练 |T136058:0|t[开锁] 来学习开锁技能
    .target 夜行者奥斯伯
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入军情七处总部。向上楼朝 |cRXP_FRIENDLY_“剃刀”雷吉克|r 和 |cRXP_FRIENDLY_大师级 马迪亚斯·肖尔大师|r走去
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r 对话
    .accept 2281 >>接受任务 赤脊山的联络员
    .target +Renzik "The Shiv"
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >>接受任务 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >>离开暴风城。前往闪金镇
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
	.target 铁匠阿古斯
    .turnin 118 >>交任务 马掌
    .accept 119 >>接受任务 回复弗纳
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >>前往北郡修道院
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 344 >>交任务 帕克斯顿修士
    .accept 345 >>接受任务 墨水短缺
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >>前往阿祖拉之塔。登塔，然后跟随箭头走，从山上抄近路过去
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与顶部的|cRXP_FRIENDLY_塞欧克瑞图斯|r交谈
    .accept 94 >>接受任务 法师的眼线
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_当恩·布赖特斯塔|r 对话
    .vendor >>|cRXP_FRIENDLY_当恩·布赖特斯塔|r |cRXP_BUY_也有一些限量供应物品，例如|r |T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_以及|r |T134850:0|t|T134830:0|t[药水] |cRXP_BUY_，如果有库存应当购买|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_当恩·布赖特斯塔|r |cRXP_BUY_也有一些限量供应物品，例如|r |T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_以及|r |T134830:0|t[药水] |cRXP_BUY_，如果有库存应当购买|r << Warrior/Rogue
    .target 当恩·布赖特斯塔
    .subzoneskip 91,1
step
    #completewith TravelRM
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往赤脊山
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    >>如果你在暴风城，飞往赤脊山
    .fly Redridge >>飞往 Redridge
    .target 杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >>交任务 墨水短缺
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >>交任务 回复弗纳
    .accept 124 >>接受任务 豺狼人的乱吠
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >>接受任务 雏龙的鳞片
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2281 >>交任务 赤脊山的联络员
    .target Lucius
    .accept 2282 >>接受任务 奥瑟尔伐木场
step
    #era
	#completewith next
	>>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label TravelRM
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>杀死 |cRXP_ENEMY_赤脊山蛮兵|r 和 |cRXP_ENEMY_赤脊山秘法师|r。拾取他们的|cRXP_LOOT_铁矛|r 和 |cRXP_LOOT_铁铆钉|r
    .complete 124,1 --Redridge Brute (10)
	.mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +打开|cRXP_PICK_练习锁箱|r，直到你的|T136058:0|t[开锁]技能达到80点
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_用你之前打到的|r |T133971:0|t|cRXP_WARN_[大块野猪肉]|r 升级你的|cRXP_LOOT_ |T133970:0|t[烹饪]。|r你需要50级的|cRXP_WARN_ |T133971:0|t[烹饪]|r
    +|cRXP_WARN_如果你需要更多|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_，可以往西走到|r |cRXP_ENEMY_贝利格拉布|r |cRXP_WARN_附近，去击杀更多的|r |cRXP_ENEMY_巨型血牙野猪|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >>交任务 止水湖上的桥
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>交任务 豺狼人的乱吠
    .turnin 122 >>交任务 雏龙的鳞片
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >>交任务 豺狼人的乱吠
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2282 >>交任务 奥瑟尔伐木场
    .target Lucius
step << Rogue
    #sticky
    #optional
    .destroy 7907 >>从你的背包中删除 |T134328:0|t[偷窃技能认证书]，因为不再需要了
step << NightElf Rogue
    #hardcore
    #optional
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >>前往西部荒野
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Westfall >>开启西部荒野的飞行路径
    .target 索尔
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #hardcore
    #optional
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>击杀|cRXP_ENEMY_小型结网毒蜘蛛|r和|cRXP_ENEMY_结网毒蜘蛛|r，拾取|cRXP_LOOT_小毒囊|r和|cRXP_LOOT_粘糊的蜘蛛腿|r
    >>|cRXP_WARN_你需要一个|cRXP_LOOT_小毒囊|r来做成|r |T134437:0|t[抗毒药剂] |cRXP_WARN_，后面用来解除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_的debuff|r
    >>|cRXP_WARN_把|cRXP_LOOT_粘糊的蜘蛛腿|r留着后面用|r
    >>|cRXP_WARN_如果你有一个|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，可以直接跳过这步，之后请他们帮你解掉就行|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob 小型结网毒蜘蛛
    .mob 结网毒蜘蛛
    .itemcount 6452,<1 --Anti Venom (<1)
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板（默认按键：V）这样可以在塔内的一些拐角处看到躲在后面的敌人|r
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    >>|cRXP_WARN_你必须完成这个任务来获取你的|r|T132290:0|t[毒药]
    .turnin 2360 >>交任务马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务 克拉文之塔
    .target Agent Kearnen
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    >>|cRXP_WARN_你必须完成这个任务来获取你的|r|T132290:0|t[毒药]
    .accept 2359 >>接受任务 克拉文之塔
    .target Agent Kearnen
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[搜索] |cRXP_ENEMY_丑陋的迪菲亚懒汉|r。拾取地上的物品以获得 |cRXP_LOOT_迪菲亚塔楼钥匙|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_丑陋的迪菲亚懒汉|cRXP_ENEMY_ |r出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Malformed Defias Drone
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r |T135641:0|t[弯曲木匕首] |cRXP_WARN_，并且当前没有装备|r |T135641:0|t[匕首] |cRXP_WARN_，请在此任务中装备它|r
    .use 15396
    .itemcount 15396,1
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_前往塔楼的第2层顶楼。在|r |T132320:0|t[潜行] |cRXP_WARN_状态下，并且 |cRXP_ENEMY_迪菲亚哨兵|r 不在你身旁时，跳到椅子上，再跳到灯上，最后跳到路径点位置顶部的书架上|r
    >>|cRXP_WARN_手动|r |T132320:0|t[取消潜行]|cRXP_WARN_，然后按下你的 "与目标互动" 快捷键来打开 |cRXP_PICK_暮色森林宝箱|r。拾取其中的|r |cRXP_LOOT_克拉文·摩特维克的日志|r
    >>|cRXP_WARN_注意：你的|r |T132320:0|t[潜行] |cRXP_WARN_在拾取|r |cRXP_LOOT_克拉文·摩特维克的日志|r 后会暂时失效
    >>|cRXP_WARN_如果你在第2层没有击杀 |cRXP_ENEMY_迪菲亚哨兵|r，请做好逃跑的准备。当你站在书架顶部时，他们很可能会一直对你产生仇恨 (但不会攻击你) ，因为那里是一个脱战点|r
    >>|cRXP_WARN_如果你的背包中或已装备|r |T135641:0|t[匕首] |cRXP_WARN_，你可以施放|r |T132282:0|t[伏击] |cRXP_WARN_对付里面的 |cRXP_ENEMY_迪菲亚巡塔员|r 和 |cRXP_ENEMY_迪菲亚哨兵|r，从而瞬间击杀他们。击杀第一个 |cRXP_ENEMY_迪菲亚哨兵|r 后请做好逃跑准备，并记住你可能会从上方被攻击。这种方法更慢，但安全性高得多|r
    >>|cRXP_WARN_注意，如果你需要跑出塔楼，|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 和 |cRXP_ENEMY_迪菲亚苦工|r 可能会在塔楼入口处|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_施放 |T136225:0|t[石像形态] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .aura -9991
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备上你的主武器|r << Rogue
    .turnin 2359 >>交任务 克拉文之塔
    .target 马迪亚斯·肖尔大师
    .isQuestComplete 2359
]])
