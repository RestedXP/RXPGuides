if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RXP TBC 生存指南 A
#subgroup RXP 生存指南 1-20级
#name 1-12 秘蓝岛
#next 12-14 黑海岸

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格伦|r 对话
    .accept 9279 >>接受任务 你活下来了！
    .target 麦格伦
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >>|cRXP_WARN_猎杀 2-3只 |cRXP_ENEMY_峡谷蛾|r 或 |cRXP_ENEMY_暴躁的变异体|r 并获取可卖给商人的垃圾物品(价值 10 铜币以上)|r
    >>|cRXP_WARN_在里面的 |cRXP_FRIENDLY_欧洛克|r 处出售垃圾物品|r
    .mob 峡谷蛾
    .mob 暴躁的变异体
    .target 欧洛克
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
	.train 8017 >>影袭 |T136086:0|t[石化武器]
    .target 费曼瓦尔
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 库勒
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_击杀 |cRXP_ENEMY_峡谷蛾|r 和 |cRXP_ENEMY_暴躁的变异体|r，拾取它们的掉落，直到你拥有价值50铜币的可出售物品（包括你的护甲）|r
    .mob 峡谷蛾
    .mob 暴躁的变异体
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9279 >>交任务 你活下来了！
    .accept 9280 >>接受任务 补充治疗水晶
    .target 普罗尼图斯
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗约什|r 对话
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 罗约什
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .accept 10302 >>接受任务 暴躁的变异体
    .target 植物学家塔蕾克丝
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>击杀 |cRXP_ENEMY_暴躁的变异体|r
    >>击杀 |cRXP_ENEMY_峡谷蛾|r，拾取它们的 |cRXP_LOOT_血|r
    >>|cRXP_WARN_优先击杀 |cRXP_ENEMY_暴躁的变异体|r，因为你会先交任务，之后再完成 |cRXP_ENEMY_峡谷蛾|r|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob 暴躁的变异体
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob 峡谷蛾
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9280 >>交任务 补充治疗水晶
    .accept 9409 >>接受任务 紧急物资！
    .target 普罗尼图斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 10302 >>交任务 暴躁的变异体
    .accept 9293 >>接受任务 必需的措施……
    .target 植物学家塔蕾克丝
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>接受任务 跑腿采花
    .target 学徒维莎尔
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>击杀 |cRXP_ENEMY_峡谷蛾|r，拾取它们的 |cRXP_LOOT_血|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob 峡谷蛾
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>击杀 |cRXP_ENEMY_变异的根须鞭笞者|r，拾取它们的 |cRXP_LOOT_鞭笞者样本|r
    >>拾取地上的 |cRXP_LOOT_被污染的花朵|r
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob 变异的根须鞭笞者
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>击杀 |cRXP_ENEMY_峡谷蛾|r，拾取它们的 |cRXP_LOOT_血|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob 峡谷蛾
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>刷怪练级，直到距离4级还差420点经验（980/1400）
    .mob 变异的根须鞭笞者
    .mob 暴躁的变异体
    .mob 峡谷蛾
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>刷怪练级，直到距离4级还差500点经验（900/1400）
    .mob 变异的根须鞭笞者
    .mob 暴躁的变异体
    .mob 峡谷蛾
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 9293 >>交任务 必需的措施……
    .accept 9294 >>接受任务 净化湖水
    .target 植物学家塔蕾克丝
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>交任务 跑腿采花
    .target 学徒维莎尔
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9280 >>交任务 补充治疗水晶
    .accept 9409 >>接受任务 紧急物资！
    .target 普罗尼图斯
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target 欧洛克
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
	.accept 9290 >>接受任务 法师训练
	.turnin 9290 >>交任务 法师训练
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 瓦拉图
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷伦|r 对话
    >>|cRXP_FRIENDLY_奥雷伦|r |cRXP_WARN_可能会稍微巡逻|r
	.accept 9287 >>接受任务 圣骑士训练
	.turnin 9287 >>交任务 圣骑士训练
    .train 465 >>训练 |T135893:0|t[虔诚光环]
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .train 20271 >>学习 |T135959:0|t[审判]
    .target 奥雷伦
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9409 >>交任务 紧急物资！
    .accept 9283 >>接受任务 拯救幸存者！
    .accept 9291 >>接受任务 牧师训练 << Priest
    .turnin 9291 >>交任务 牧师训练 << Priest
    .train 1243 >>学习 |T135987:0|t[真言术：韧] << Priest
    .train 2052 >>学习 |T135929:0|t[次级治疗术] << Priest
    .train 589 >>训练 |T136207:0|t[暗言术：痛] << Priest
    .target 扎尔杜
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .accept 9421 >>接受任务 萨满祭司训练
	.turnin 9421 >>交任务 萨满祭司训练
    .accept 9449 >>接受任务 大地的召唤
	.train 8042 >>影袭 |T136026:0|t[大地震击]
    .target 费曼瓦尔
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_如果你看到 |r德莱尼幸存者|cRXP_WARN_，对其施放|cRXP_FRIENDLY_ |T135923:0|t[纳鲁的祝福]|r|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_峡谷之灵|r 对话
    .turnin 9449 >>交任务 大地的召唤
    .accept 9450 >>接受任务 大地的召唤
    .target 峡谷之灵
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>击杀 |cRXP_ENEMY_躁动的大地之灵|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob 躁动的大地之灵
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_峡谷之灵|r 对话
    .turnin 9450 >>交任务 大地的召唤
    .accept 9451 >>接受任务 大地的召唤
    .target 峡谷之灵
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_如果你看到 |r德莱尼幸存者|cRXP_WARN_，对其施放|cRXP_FRIENDLY_ |T135923:0|t[纳鲁的祝福]|r|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .turnin 9451 >>交任务 大地的召唤
    .target 费曼瓦尔
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9283 >>交任务 拯救幸存者！
    .target 扎尔杜
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .accept 9289 >>接受任务 战士训练
	.turnin 9289 >>交任务 战士训练
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 库勒
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔尼|r 对话
	.accept 9288 >>接受任务 猎人训练
	.turnin 9288 >>交任务 猎人训练
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target 基尔尼


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗约什|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target 罗约什
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_姆拉|r 对话
	.vendor >>把垃圾物品卖给商人
    >>|cRXP_BUY_从她那里|r购买 5 堆|cRXP_BUY_ |T132382:0|t[劣质箭] |r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target 姆拉
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .accept 9305 >>接受任务 备用零件
    .target 技师沙娜安
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .accept 9303 >>接受任务 疫苗
    .target 守备官奥达尔
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_对|r |T135923:0|t[纳鲁的祝福]|cRXP_WARN_施放于|r|cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>点击湖中的 |cRXP_PICK_受辐射的能量水晶|r
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_对|r 木巢枭兽|cRXP_WARN_ |cRXP_ENEMY_引导|r |T132775:0|t[接种水晶] 持续 4 秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob 木巢枭兽
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>拾取地上的 |cRXP_LOOT_发射器零件|r
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_对|r 木巢枭兽|cRXP_WARN_ |cRXP_ENEMY_引导|r |T132775:0|t[接种水晶] 持续 4 秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob 木巢枭兽
step
    #completewith next
    .subzone 3527 >>返回 坠毁点
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .target 守备官奥达尔
    .turnin 9303 >>交任务 疫苗
    .accept 9309 >>接受任务 失踪的斥候
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .target 技师沙娜安
    .turnin 9305 >>交任务 备用零件
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .target 植物学家塔蕾克丝
    .turnin 9294 >>交任务 净化湖水
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    .target 扎尔杜
    .turnin 9283 >>交任务 拯救幸存者！
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9283 >>交任务 拯救幸存者！
    .target 扎尔杜
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target 欧洛克
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .turnin 9294 >>交任务 净化湖水
    .target 植物学家塔蕾克丝
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_对|r |T135923:0|t[纳鲁的祝福]|cRXP_WARN_施放于|r|cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 9309 >>交任务 失踪的斥候
    .accept 10303 >>接受任务 血精灵
    .target 图兰
step
    .goto Azuremyst Isle,69.420,64.608
    >>击杀 |cRXP_ENEMY_血精灵斥候|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob 血精灵斥候
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 10303 >>交任务 血精灵
    .accept 9311 >>接受任务 血精灵间谍
    .target 图兰
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>击杀 |cRXP_ENEMY_测量员卡蒂瑞丝|r。拾取 |T132319:0|t[|cRXP_LOOT_血精灵计划书|r]
    .use 24414 >>|cRXP_WARN_使用|r |T132319:0|t[|cRXP_LOOT_血精灵计划书|r] |cRXP_WARN_来开始任务|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>接受任务 血精灵计划书
    .mob 测量员卡蒂瑞丝
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_对|r |T135923:0|t[纳鲁的祝福]|cRXP_WARN_施放于|r|cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>刷怪 |cRXP_ENEMY_Blood Elf Scouts|r 直到你距离 6 级还差 1450xp (1350/2800)
    .mob 血精灵斥候
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>刷怪 |cRXP_ENEMY_Blood Elf Scouts|r 直到你距离 6 级还差 1230xp (1570/2800)
    .mob 血精灵斥候
step
    #completewith next
    .subzone 3527 >>返回坠毁点
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .turnin 9311 >>交任务 血精灵间谍
    .turnin 9798 >>交任务 血精灵计划书
    .accept 9312 >>接受任务 图像发射器
    .target 守备官奥达尔
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .turnin 9312 >>交任务 图像发射器
    .accept 9313 >>接受任务 前往碧蓝岗哨
    .target 技师沙娜安
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9283 >>交任务 拯救幸存者！
    .target 扎尔杜
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃文|r 对话
    .accept 9314 >>接受任务 碧蓝岗哨的消息
    .target 埃文
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .accept 9452 >>接受任务 美味的红钳鱼
    .target 迪泰娜
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >>|cRXP_WARN_沿着河向北游|r
    .use 23654 >>|cRXP_WARN_沿途看到|r |T134325:0|t[德莱尼渔网] |cRXP_WARN_时对|r |cRXP_PICK_红钳鱼鱼群|r |cRXP_WARN_使用。到达河流上游后跳过此步骤，稍后会完成|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
    .goto Azuremyst Isle,53.9,34.4
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r，拾取 |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r]
    .use 23678 >>|cRXP_WARN_使用|r |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r] |cRXP_WARN_来开始任务|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>接受任务 奇怪的发现
    .mob 感染的夜行豹幼崽
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >>前往碧蓝岗哨。跟随箭头到达该处",  "grounding_notes": "Translated 'Go to' as 前往; translated '跟随 the arrow to get there safely' following Chinese word order. Location names kept (no annotations).
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 对话
    .accept 9463 >>接受任务 医疗材料
    .target 学者法蒂玛
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
	.turnin 9612 >>交任务 非常感谢！
    .turnin 9455 >>交任务 奇怪的发现
    .accept 9456 >>接受任务 清理夜行豹……
    .target 大主教梅内莱厄斯
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9455 >>交任务 奇怪的发现
    .accept 9456 >>接受任务 清理夜行豹……
    .target 大主教梅内莱厄斯
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师戴维恩|r 对话
    .turnin 9313 >>交任务 前往碧蓝岗哨
    .target 技师戴维恩
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .turnin 9314 >>交任务 碧蓝岗哨的消息
    .target 看护员谢尔兰
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .home >>将你的炉石绑定到碧蓝岗哨
    .target 看护员谢尔兰
    .bindlocation 3576
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .accept 9586 >>接受任务 帮助塔瓦拉
    .train 591 >>影袭 |T135924:0|t[惩击]
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .target 古安
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .train 143 >>学习 |T135812:0|t[火球术]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 塞米德
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .target 艾克提恩
step << Shaman
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Walking Stick (1)
    .target 纳贝克
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #sticky
    .equip 16,2495 >>|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_购买并装备一梗|r |T133053:0|t[木槌棒]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target 纳贝克
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >>|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
step << Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it|r
    .collect 2488,1 --Collect Gladius (1)
    .target 纳贝克
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target 杜尔维
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]
    .collect 2901,1 --Mining Pick (1)
    .target 其兹
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
    #completewith LeavesTree
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_枝条|r
    >>杀死 |cRXP_ENEMY_Moongraze Stags|r. 拾取他们的 |cRXP_LOOT_月痕鹿的嫩腰肉|r
    >>|cRXP_WARN_注释：稍后你会训练并升级|r |T133971:0|t[烹饪] |cRXP_WARN_来完成黑海岸的任务。现在你需要6个|cRXP_LOOT_月痕鹿的嫩腰肉|r，稍后需要9个。不要出售它们|r",  "grounding_notes": "Used [=注释：] annotation. Translated multi-part instruction with item counts and location name. Item name uses annotated translation from entry 206047.
    .complete 9463,1 -- Root Trapper (6)
    .mob 根须诱捕者
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob 月痕雄鹿
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_对|r塔瓦拉|cRXP_WARN_|r施放|cRXP_FRIENDLY_ |T135929:0|t[次级治疗] (等级 2) |r
    .complete 9586,1 --Heal Tavara
    .target 塔瓦拉
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .accept 9506 >>接受任务 第三类接触
    .target 海军上将奥德修斯
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .accept 9512 >>接受任务 曲奇的大餐
    .target “曲奇”米维克索斯 <厨师>
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠卡里普索|r 对话
    >>|cRXP_WARN_这将使你能够制作 |r|T135248:0|t[劣质磨刀石]|cRXP_WARN_ 和|r |T135255:0|t[劣质平衡石]|cRXP_WARN_，它们可使你的近战伤害提高 2 点|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 铁匠卡里普索
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>拾取小笼子上的 |cRXP_LOOT_航海地图|r
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>拾取小箱子上的 |cRXP_LOOT_航海罗盘|r
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>击杀 |cRXP_ENEMY_迅捷的螃蟹|r。拾取他们的 |cRXP_LOOT_螃蟹肉|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob 迅捷的螃蟹
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .turnin 9512 >>交任务 曲奇的大餐
    .target “曲奇”米维克索斯 <厨师>
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 和 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9506 >>交任务 第三类接触
    .accept 9530 >>接受任务 天才的方案！
    .target 海军上将奥德修斯
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >>接受任务 夺回废墟
    .target 女祭司基琳·伊尔蒂娜
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .accept 9523 >>接受任务 贵重物品，小心轻放
    .target 考古学家阿达曼特·铁心
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>拾取地上的 a |cRXP_LOOT_刳心巨树|r
    >>拾取地上的 |cRXP_LOOT_落叶堆|r
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_枝条|r
    >>杀死 |cRXP_ENEMY_Moongraze Stags|r。拾取它们的 |cRXP_LOOT_月痕鹿的嫩腰肉|r
    >>|cRXP_WARN_注意：很快你将训练并升级|r |T133971:0|t[烹饪] |cRXP_WARN_以用于之后黑海岸的任务。你现在需要6个 |cRXP_LOOT_月痕鹿的嫩腰肉|r，之后还需要9个。不要卖掉它们|r .complete 9463,1 -- Root Trapper (6)
    .mob 根须诱捕者
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob 月痕雄鹿
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9530 >>交任务 天才的方案！
    .accept 9531 >>接受任务 间谍之树
    .target 海军上将奥德修斯
step
    #label level8
	.xp 8-950 >>刷怪练级，直到距离8级还差950点经验（3550/4500）
    >>|cRXP_WARN_尽量在碧蓝岗哨附近完成|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
	.accept 9454 >>接受任务 狩猎月痕鹿
    .turnin 9454 >>交任务 狩猎月痕鹿
    .accept 10324 >>接受任务 狩猎月痕鹿
    .target 艾克提恩
step
    #completewith TenderloinRecipe
    +|cRXP_WARN_不要卖掉|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin]
    >>|cRXP_WARN_一旦你学习了|r |T133971:0|t[烹饪] |cRXP_WARN_你很快就会学会它，这是黑海岸稍后任务所需的|r
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 5116 >>训练 |T135860:0|t[震荡射击]
    .train 14260 >>训练 |T132223:0|t[猛禽一击]
    .target 艾克提恩
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 和 |cRXP_FRIENDLY_丹达尔|r 对话
    .turnin 9463 >>交任务 医疗材料
    .target 学者法蒂玛
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>接受任务 备选方案的备选方案
    .target 丹达尔
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务 非常感谢！
    .target 大主教梅内莱厄斯
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .trainer >>训练你的职业技能
    .target 图伦
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .accept 10428 >>接受任务 失踪的渔夫
    .target 杜尔维
step
    #label TenderloinRecipe
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_译码者奥鲁恩|r 对话
    .accept 9538 >>接受任务 学外语……
    .target 译码者奥鲁恩
step
	.use 23818 >>|cRXP_WARN_使用|r |T133741:0|t[止松熊怪语言入门]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基达图腾|r 对话
    .turnin 9538 >>交任务 学外语……
    .accept 9539 >>接受任务 库欧图腾
    .target 阿基达图腾
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .turnin 9586 >>交任务 帮助塔瓦拉
    .trainer >>训练你的职业技能
    .target 古安
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target 图拉丝
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target 塞米德
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 鲁安达
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
	#completewith TotemofTikti
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r，拾取它们的 |cRXP_LOOT_兽皮|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob 感染的夜行豹幼崽
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob 月痕巨鹿
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库欧图腾|r 对话
    .turnin 9539 >>交任务 库欧图腾
    .accept 9540 >>接受任务 提克提图腾
    .target 库欧图腾
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>拾取地上的 |cRXP_LOOT_碧蓝金鱼草|r
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提克提图腾|r 对话
    .turnin 9540 >>交任务 提克提图腾
    .accept 9541 >>接受任务 尤尔图腾
    .timer 30,尤尔图腾剧情演出
    .target 提克提图腾
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_止松先祖提克提|r|cRXP_WARN_。他会为你施加|r |T132107:0|t[毒蛇的拥抱] |cRXP_WARN_，使你的游泳速度提高150%，并获得水下呼吸效果|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_使用|r |T134325:0|t[德莱尼渔网]|cRXP_WARN_对|r|cRXP_PICK_红钳鱼鱼群|r
    >>|cRXP_WARN_如果有 |cRXP_ENEMY_鱼人|r 从鱼群中刷出，立刻游走！施放任何敌对法术都会导致你失去|r |T132107:0|t[毒蛇的拥抱] |cRXP_WARN_增益效果|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .turnin 9452 >>交任务 美味的红钳鱼
    .accept 9453 >>接受任务 找到艾克提恩！
    .target 迪泰娜
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与水底下的 |cRXP_FRIENDLY_尤尔图腾|r 对话
    .turnin 9541 >>交任务 尤尔图腾
    .accept 9542 >>接受任务 瓦克图腾
    .timer 71,瓦克图腾剧情演出
    .target 尤尔图腾
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_止松先祖尤尔|r|cRXP_WARN_。他会为你施加|r |T132142:0|t[森林之影] |cRXP_WARN_，使你获得移动速度提高和隐身效果|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >>|cRXP_WARN_前往秘蓝岛西部|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦克图腾|r 对话
    .turnin 9542 >>交任务 瓦克图腾
    .accept 9544 >>接受任务 阿基达的预言
    .target 瓦克图腾
step
    .aura -30448
    +|cRXP_WARN_点掉|r |T132142:0|t[森林之影] |cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>击杀 |cRXP_ENEMY_刺臂熊怪|r、|cRXP_ENEMY_刺臂唤风者|r 和 |cRXP_ENEMY_刺臂巨熊怪|r，拾取它们的 |cRXP_LOOT_刺臂钥匙|r
    >>打开 |cRXP_PICK_刺臂牢笼|r 来解救 |cRXP_FRIENDLY_止松俘虏|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r，拾取它们的 |cRXP_LOOT_兽皮|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob 感染的夜行豹幼崽
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob 月痕巨鹿
step
    #completewith next
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>击杀 |cRXP_ENEMY_怒鳞纳迦|r、|cRXP_ENEMY_怒鳞侍从|r 和 |cRXP_ENEMY_怒鳞海妖|r，拾取 |T134462:0|t[|cRXP_LOOT_写满符文的石板|r]
    .use 23759 >>|cRXP_WARN_使用|r |T134462:0|t[|cRXP_LOOT_写满符文的石板|r] |cRXP_WARN_来开始任务|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>>写满符文的石板
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob 怒鳞侍从
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob 怒鳞纳迦
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob 怒鳞海妖
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >>游往叛徒湾
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >>|cRXP_WARN_在娜迦旗帜处|r使用|cRXP_WARN_ |T132288:0|t[树伪装工具包]|r
    .timer 73,间谍之树剧情表演
    .use 23792
step
    >>|cRXP_WARN_等待剧情演出完成|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_点掉|r |T132288:0|t[大树伪装] |cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 10428 >>交任务 失踪的渔夫
    .accept 9527 >>接受任务 遗体
    .target 库雷
step
    .goto Azuremyst Isle,13.209,89.742
	>>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |cRXP_LOOT_库雷的家人的遗体|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob 变异的枭兽
    .mob 疯乱的枭兽
    .mob 狂乱的枭兽
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 9527 >>交任务 遗体
    .target 库雷
step
    #completewith next
	.hs >>炉石返回碧蓝岗哨，秘血岛
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .target 大主教梅内莱厄斯
    .turnin 9456 >>交任务 清理夜行豹……
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹达尔|r 对话
    .target 丹达尔
    .turnin 9473 >>交任务 备选方案的备选方案
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松部族的阿鲁古|r 对话
    .target 止松部族的阿鲁古
    .turnin 9544 >>交任务 阿基达的预言
    .accept 9559 >>接受任务 止松要塞
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .target 艾克提恩
    .turnin 9453 >>交任务 找到艾克提恩！
    .turnin 10324 >>交任务 狩猎月痕鹿
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .turnin 9523 >>交任务 贵重物品，小心轻放
    .target 考古学家阿达曼特·铁心
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9531 >>交任务 间谍之树
    .accept 9537 >>接受任务 绳侏儒以法
    .target 海军上将奥德修斯
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9513 >>交任务 夺回废墟
    .target 女祭司基琳·伊尔蒂娜
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9514 >>交任务 写满符文的石板
    .target 女祭司基琳·伊尔蒂娜
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛根·丹尼尔|r 对话
    .vendor >>|cRXP_WARN_剧情播放期间，出售垃圾物品|r << !Hunter
    >>|cRXP_BUY_在等待剧情结束时，向他购买更多组|r |T132382:0|t[劣质箭]|cRXP_BUY_|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target 洛根·丹尼尔
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .accept 9515 >>接受任务 督军斯雷提兹
    .target 女祭司基琳·伊尔蒂娜
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>与在海滩巡逻的 |cRXP_FRIENDLY_工程师欧格林德|r 对话
    >>在简短的剧情结束后击杀 |cRXP_ENEMY_工程师"火花"欧格林德|r，拾取他掉落的 |cRXP_LOOT_叛徒的通讯|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,"叛徒的通讯"剧情
    .unitscan 工程师欧格林德
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9537 >>交任务 绳侏儒以法
    .accept 9602 >>接受任务 邪恶的书信
    .target 海军上将奥德修斯
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides' Hollow cave
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>跳下到下层
step << !Hunter
    >>击杀 |cRXP_ENEMY_督军斯雷提兹|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob 督军斯雷提兹
step << !Hunter
    .xp 9+5360 >>升级至 5360+/6500 点经验值
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides' Hollow cave
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9515 >>交任务 督军斯雷提兹
    .target 女祭司基琳·伊尔蒂娜
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target “曲奇”米维克索斯 <厨师>
step << !Hunter
    .cast 33277 >>|cRXP_WARN_使用|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_来学习|r |T133971:0|t[烹饪] |cRXP_WARN_配方|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9602 >>交任务 邪恶的书信
    .accept 9623 >>接受任务 成年
    .target 大主教梅内莱厄斯
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务 非常感谢！
    .target 大主教梅内莱厄斯
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .accept 9464 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
    .target 图伦
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .accept 9757 >>接受任务 寻找女猎手凯拉·夜弓
    .trainer >>训练你的职业技能
    .target 艾克提恩
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target 古安
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target 图拉丝
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target 塞米德
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .trainer >>训练你的职业技能
    .accept 9582 >>接受任务 一人之力
    .target 鲁安达
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9757 >>交任务 寻找女猎手凯拉·夜弓
    .accept 9591 >>接受任务 驯服野兽
    .target 女猎手凯拉·夜弓
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >>|cRXP_WARN_使用|r |T135139:0|t[驯服图腾] |cRXP_WARN_对水中的 |cRXP_ENEMY_带刺的螃蟹|r 使用|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob 带刺的螃蟹
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides' Hollow cave
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>跳下到下层
step << Hunter
    >>击杀 |cRXP_ENEMY_督军斯雷提兹|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob 督军斯雷提兹
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides' Hollow cave
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9515 >>交任务 督军斯雷提兹
    .target 女祭司基琳·伊尔蒂娜
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target “曲奇”米维克索斯 <厨师>
step << Hunter
    .cast 33277 >>|cRXP_WARN_使用|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_来学习|r |T133971:0|t[烹饪] |cRXP_WARN_配方|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9591 >>交任务 驯服野兽
    .accept 9592 >>接受任务 驯服野兽
    .target 女猎手凯拉·夜弓
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_象群管理者妥拉留斯|r 对话
    .turnin 9623 >>交任务 成年
    .accept 9625 >>接受任务 雷象可不是好玩的！
    .target 象群管理者妥拉留斯
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >>|cRXP_WARN_使用|r |T135139:0|t[驯服图腾]|cRXP_WARN_对|r|cRXP_ENEMY_巨型林地陆行鸟|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob 巨型林地陆行鸟
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9592 >>交任务 驯服野兽
    .accept 9593 >>接受任务 驯服野兽
    .target 女猎手凯拉·夜弓
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >>|cRXP_WARN_使用|r |T135139:0|t[驯服图腾]|cRXP_WARN_对|r|cRXP_ENEMY_夜行豹|r
    .complete 9593,1 --Tame a Nightstalker
    .mob 逐夜
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9593 >>交任务 驯服野兽
    .accept 9675 >>接受任务 训练野兽
    .target 女猎手凯拉·夜弓
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>从后门进入埃索达
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
    .turnin 9675 >>交任务 训练野兽
	.trainer >>训练你的宠物技能
    .target 甘纳尔
step << Hunter
    #completewith next
    .destroy 2512 >>摧毁你所有的 |T132382:0|t[劣质箭]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_购买6组|r |T132382:0|t[锋利的箭]
    .collect 2515,1200
    .target 艾维尔琳
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>沿着坡道向上，前往 |cRXP_FRIENDLY_韩迪尔|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >>学习双手剑
    .target 韩迪尔
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>跳下去并离开埃索达
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target 莫多
    .accept 9560 >>接受任务 末日的野兽！
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古尔弗|r 对话
    .target 古尔弗
    .accept 9562 >>接受任务 鱼人……
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target 止松老酋长
    .turnin 9559 >>交任务 止松要塞
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >>|cRXP_WARN_施放|r |T132164:0|t[驯服野兽] |cRXP_WARN_对|r |cRXP_ENEMY_成型的掠食者|r |cRXP_WARN_施放以驯服它|r
    .mob 成型的掠食者
step << Shaman
	#completewith next
	>>击杀 |cRXP_ENEMY_成型的掠食者|r，拾取它们的 |cRXP_LOOT_掠食者兽皮|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob 成型的掠食者
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9464 >>交任务  火焰的召唤
    .accept 9465 >>接受任务 火焰的召唤
    .target 坦普
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>击杀 |cRXP_ENEMY_成型的掠食者|r，拾取它们的 |cRXP_LOOT_掠食者兽皮|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob 成型的掠食者
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >>点击 |cRXP_PICK_掠食者牢笼|r 来释放 |cRXP_ENEMY_死亡掠食者|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>击杀 |cRXP_ENEMY_死亡掠食者|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob 死亡掠食者
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target 莫多
    .turnin 9560 >>交任务 末日的野兽！
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target 止松酋长
    .accept 9573 >>接受任务 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target 止松老酋长
    .accept 9565 >>接受任务 搜索止松要塞
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >>进入止松要塞洞穴
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >>前往洞穴的上层
step
	.goto Azuremyst Isle,47.394,14.121
    >>击杀 |cRXP_ENEMY_欧莫鲁酋长|r
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r，拾取它们的 |cRXP_LOOT_仪式火炬|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob 欧莫鲁酋长
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob 发狂的野枭兽
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob 发狂的野枭兽
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >>跳下去并前往洞穴深处
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r，拾取它们的 |cRXP_LOOT_仪式火炬|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob 发狂的野枭兽
step
    .goto Azuremyst Isle,50.632,11.544
    >>点击 |cRXP_PICK_血色水晶|r
    >>|cRXP_WARN_尽量避免击杀 |cRXP_ENEMY_库肯|r，因为你很快还需要击杀他|r
    .turnin 9565 >>交任务 搜索止松要塞
    .accept 9566 >>接受任务 血水晶
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r，拾取它们的 |cRXP_LOOT_仪式火炬|r << Shaman
    >>|cRXP_WARN_You will finish this shortly if you haven't yet|r
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob 发狂的野枭兽
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >>离开洞穴
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target 止松老酋长
    .turnin 9566 >>交任务 血水晶
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target 止松酋长
    .turnin 9573 >>交任务 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_启示者库尔兹|r 对话
    .target 启示者库尔兹
    .accept 9570 >>接受任务 可怕的库肯
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕卡特·钢皮|r 对话
    .vendor >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包]
    .target 帕卡特·钢皮
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >>再次进入止松要塞洞穴
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r，拾取它们的 |cRXP_LOOT_仪式火炬|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob 发狂的野枭兽
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>击杀 |cRXP_ENEMY_库肯|r，拾取他的 |cRXP_LOOT_毛皮|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob 库肯
step
    .goto Azuremyst Isle,47.394,14.121
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r，拾取它们的 |cRXP_LOOT_仪式火炬|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob 发狂的野枭兽
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target 止松酋长
    .turnin 9573 >>交任务 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_启示者库尔兹|r 对话
    .target 启示者库尔兹
    .turnin 9570 >>交任务 可怕的库肯
    .accept 9571 >>接受任务 库肯的毛皮
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .accept 9622 >>接受任务 警告你的人民
    .target 止松老酋长
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target 莫多
    .turnin 9571 >>交任务 库肯的毛皮
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9465 >>交任务  火焰的召唤
    .accept 9467 >>接受任务 火焰的召唤
    .target 坦普
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9622 >>交任务 警告你的人民
    .target 大主教梅内莱厄斯
step << Shaman
    #completewith Wickerman
    .subzone 3639 >>前往 银雾岛
step << Shaman
    #completewith Wickerman
    .use 24336 >>打开 |T133655:0|t[防火背包]，获取 |T135432:0|t[仪祭火炬]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>点击|cRXP_PICK_火人像|r 以召唤 |cRXP_ENEMY_赫图尔|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>击杀 |cRXP_ENEMY_赫图尔|r。拾取他的 |cRXP_LOOT_灰烬|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob 赫图尔
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_使用|r |T134337:0|t[回归宝珠] |cRXP_WARN_传送回灰烬林地|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9467 >>交任务  火焰的召唤
    .accept 9468 >>接受任务 火焰的召唤
    .target 坦普
step
    #completewith next
    >>击杀 |cRXP_ENEMY_沙鳞鱼人|r, |cRXP_ENEMY_沙鳞先知|r 和 |cRXP_ENEMY_沙鳞猎手|r。拾取他们的 |cRXP_LOOT_止松谷物|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob 沙鳞鱼人
    .mob 沙鳞先知
    .mob 沙鳞猎手
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>击杀 |cRXP_ENEMY_咕噜咕拉|r. 拾取以获得|T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r]
    .use 23850 >>|cRXP_WARN_使用|r |T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r] |cRXP_WARN_开始任务|r
    >>|cRXP_ENEMY_咕噜咕拉|r |cRXP_WARN_沿海岸巡逻|r
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >>接受任务 古尔弗的尊严
	.unitscan 咕噜咕拉
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>击杀 |cRXP_ENEMY_沙鳞鱼人|r, |cRXP_ENEMY_沙鳞先知|r 和 |cRXP_ENEMY_沙鳞猎手|r。拾取他们的 |cRXP_LOOT_止松谷物|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob 沙鳞鱼人
    .mob 沙鳞先知
    .mob 沙鳞猎手
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古尔弗|r 对话
    .turnin 9564 >>交任务 古尔弗的尊严
    .turnin 9562 >>交任务 鱼人……
    .target 古尔弗
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>前往 秘血岛
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥纳尔|r 对话
    .target 奥纳尔
    .accept 9624 >>接受任务 美味的点心
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target 雷象管理者沃克汉
    .turnin 9625 >>交任务 雷象可不是好玩的！
    .accept 9634 >>接受任务 大战异型掠夺者
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target 雷象管理者沃克汉
    .accept 9634 >>接受任务 大战异型掠夺者
step
    #completewith next
	>>拾取地上的 |cRXP_LOOT_沙梨|r
    >>|cRXP_WARN_它们不易被发现，查看树周围|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>击杀 |cRXP_ENEMY_秘血幼崽|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob 秘血幼崽
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>拾取地上的 |cRXP_LOOT_沙梨|r
    >>|cRXP_WARN_它们不易被发现，查看树周围|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥纳尔|r 对话
    .target 奥纳尔
    .turnin 9624 >>交任务 美味的点心
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target 雷象管理者沃克汉
    .turnin 9634 >>交任务 大战异型掠夺者
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松公主|r 对话
    .accept 9667 >>接受任务 拯救止松公主
    .target 止松公主
step
    .goto Bloodmyst Isle,64.2,76.8
    >>击杀 |cRXP_ENEMY_刺臂战士|r 和 |cRXP_ENEMY_刺臂萨满祭司|r，直到 |cRXP_ENEMY_刺臂酋长|r 刷新
    >>击杀 |cRXP_ENEMY_刺臂酋长|r。拾取他的 |cRXP_LOOT_酋长的钥匙|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob 刺臂战士
    .mob 刺臂萨满祭司
    .unitscan 刺臂酋长
step
    .goto Bloodmyst Isle,68.257,80.999
    >>点击 |cRXP_PICK_止松公主的牢笼|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务 凯希尔的信使
    .target 凯希尔
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>向北前往血环堡
    >>|cRXP_WARN_紧跟箭头前进！务必不要穿过桥梁，否则你会被强制下坐骑！|r
    >>|cRXP_WARN_不要与任何怪物交战、攻击或施放任何法术，否则你会被强制下坐骑！如果被身后攻击触发迷惑，同样也会被强制下坐骑！|r
    >>|cRXP_WARN_一旦到达秘血岗哨或被卸下坐骑，放弃任务"凯希尔的信使"|r
step
    #optional
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target 托菲尔·罗阿
    .accept 9603 >>接受任务 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松大使欧罗尔格|r 对话
    .turnin 9667 >>交任务 拯救止松公主
    .target 止松大使欧罗尔格
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target 玛特帕尔姆
    .accept 9648 >>接受任务 玛特帕尔姆蘑菇展
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target 兰度
    .turnin 9603 >>交任务 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target 兰度
    .fp Blood Watch>>获取秘血岗哨的飞行路径
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target 兰度
    .turnin 9603 >>交任务 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .accept 9693 >>接受任务 阿古斯的意义
    .target 主教埃德门图斯
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .accept 9581 >>接受任务 研究水晶
    .target 先行官米库拉斯
step
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9693 >>交任务 阿古斯的意义
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9693 >>交任务 阿古斯的意义
    .accept 9694 >>接受任务 秘血岗哨
step
    #optional
    #sticky
    .abandon 9663 >>放弃任务 凯希尔的信使
step
    .group 2
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r
    >>|cRXP_WARN_要小心，|cRXP_ENEMY_Sunhawk Spies|r 在这个等级非常强大。一次只与一个交战|r
    >>|cRXP_WARN_如果你是单人，不要尝试此任务|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob 炎鹰间谍
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target 守备官波鲁斯
    .turnin 9694 >>交任务 秘血岗哨
step
    #completewith ImpactSiteCrystalSample
    .xp 12
step
	#completewith next
	>>拾取地上的 |cRXP_LOOT_血蘑菇|r
    >>|cRXP_WARN_这些会在秘血岛各处出现|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>击杀一只 |cRXP_ENEMY_臭角刺鱼|r，拾取地上的物品以获得 |cRXP_LOOT_水生臭角菇|r
    >>|cRXP_WARN_你也可以在水下拾取 |cRXP_LOOT_水生臭角菇|r|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob 臭角刺鱼
step
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_使用|r |T134709:0|t[水晶矿锄] |cRXP_WARN_对|r |cRXP_PICK_坠毁点水晶|r 使用
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .goto Bloodmyst Isle,64.2,76.8,60,0 -- furbolgs
    .goto Bloodmyst Isle,64.2,76.8,0-- furbolgs
    .xp 12
    .mob 秘血幼崽
    .mob 刺臂战士
    .mob 刺臂萨满祭司
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务 凯希尔的信使
    .target 凯希尔
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >>|cRXP_WARN_不要与任何怪物交战、攻击或施放任何法术，否则你会被强制下坐骑！如果被身后攻击触发迷惑，同样也会被强制下坐骑！|r
    *|cRXP_WARN_跟随向南的道路|r
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .accept 9622 >>接受任务 警告你的人民
    .target 止松老酋长
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >>|cRXP_WARN_继续沿路南行，前往碧蓝岗哨|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target 塞米德
    .subzoneskip 3576,1
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .turnin 9582 >>交任务 一人之力
    .accept 10350 >>接受任务 贝霍玛特
    .target 鲁安达
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .trainer >>训练你的职业技能
    .target 鲁安达
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .trainer >>训练你的职业技能
    .target 艾克提恩
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target 古安
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target 图拉丝
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .turnin 9468 >>交任务  火焰的召唤
    .accept 9461 >>接受任务 火焰的召唤
    .target 图伦
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .trainer >>训练你的职业技能
    .target 图伦
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >>|cRXP_WARN_使用 |r|T133473:0|t[血精灵通讯器] |cRXP_WARN_来开始任务|r
    .accept 9616 >>接受任务 强盗！
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9616 >>交任务 强盗！
    .target 大主教梅内莱厄斯
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务 非常感谢！
    .target 大主教梅内莱厄斯
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 学者法蒂玛
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥图纳布斯|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_购买|r |T133634:0|t[棕色小包] |cRXP_BUY_如果需要也可以从他那里获得|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target 奥图纳布斯 <杂货商>
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9622 >>交任务 警告你的人民
    .target 大主教梅内莱厄斯
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>前往埃索达内部
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷尔|r 对话
    .target 布雷尔 <旅店老板>
    .home >>将你的炉石设为埃索达
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃索达拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师伊蕾萨
    .target 拍卖师凡尼
    .target 拍卖师艾欧克
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃索达拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师伊蕾萨
    .target 拍卖师凡尼
    .target 拍卖师艾欧克
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔洛米|r 对话
    >>|cRXP_BUY_向她购买|r |T135154:0|t[短杖] |cRXP_BUY_或在拍卖行寻找更好的武器|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target 埃尔洛米 <钝器商人>
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔洛米|r 对话
    >>|cRXP_BUY_购买1根|r |T135154:0|t[短杖] |cRXP_BUY_从她那里|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target 埃尔洛米 <钝器商人>
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >>|cRXP_WARN_装备|r |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温恩|r对话
    >>|cRXP_BUY_购买|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r |cRXP_BUY_或在拍卖行查找更好的武器|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target 霍苏斯 <施法材料商>
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温恩|r对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target |Tinterface/worldmap/chatbubble_64grey.blp:20|t与 指挥官阿什拉姆·瓦罗菲斯特 对话
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔洛米|r 对话
    >>|cRXP_BUY_购买1把|r |T133477:0|t[巨棒] |cRXP_BUY_从她那里|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target 埃尔洛米 <钝器商人>
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >>|cRXP_WARN_装备|r |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>沿着坡道向上，前往 |cRXP_FRIENDLY_韩迪尔|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >>学习双手剑
    .target 韩迪尔
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >>|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯前往顶层的 |cRXP_FRIENDLY_贝霍玛特|r
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .turnin 10350 >>交任务 贝霍玛特
    .target 贝霍玛特
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target 先知维伦
    .turnin 9461 >>交任务  火焰的召唤
    .accept 9555 >>接受任务 火焰的召唤
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>沿斜坡前去找 |cRXP_FRIENDLY_先知诺布杜|r
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .target 预言者努波顿
    .turnin 9555 >>交任务  火焰的召唤
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >>离开埃索达
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith DarkshoreBoat
    #requires Cooking1
    #optional
    +|T133971:0|t[烹饪] |cRXP_WARN_将|r |cRXP_LOOT_月痕鹿的嫩腰肉|r |cRXP_WARN_烹制成|r |T134016:0|t[Roasted Moongraze Tenderloin]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
    >>|cRXP_WARN_在等待船的时候提升你的|r |T135966:0|t[急救] |cRXP_WARN_等级|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
]])
