if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 1-12 Azuremyst Isle
#subgroup RestedXP 联盟 1-20 级
#defaultfor Draenei
#next 12-20 Bloodmyst (Draenei)

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格伦|r 对话
    .accept 9279 >>接受任务《物归己用》 你活下来了！
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >>|cRXP_WARN_猎杀 2-3只 |cRXP_ENEMY_峡谷蛾|r 或 |cRXP_ENEMY_暴躁的变异体|r 并获取可卖给商人的垃圾物品(价值 10 铜币以上)|r
    >>|出售垃圾物品 |cRXP_FRIENDLY_欧洛克|r 对话，NPC在里面|r
    .mob Vale Moth
    .mob Volatile Mutation
    .target Aurok
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
	.train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Firmanvaar
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .train 6673 >>训练 |T132333:0|t[战斗怒吼]
    .target Kore
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_峡谷蛾|r and |cRXP_ENEMY_暴躁的变异体|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
    .mob Vale Moth
    .mob Volatile Mutation
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9279 >>交任务《 前往熔光镇》 你活下来了！
    .accept 9280 >>接受任务《物归己用》 补充治疗水晶
    .target Proenitus
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗约什|r 对话
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Ryosh
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .accept 10302 >>接受任务《物归己用》 暴躁的变异体
    .target Botanist Taerix  
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>击杀 |cRXP_ENEMY_暴躁的变异体|r
    >>击杀 |cRXP_ENEMY_峡谷蛾|r。拾取他们的 |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_暴躁的变异体|r as you will turn in the quest and complete |cRXP_ENEMY_峡谷蛾|r after|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob +Volatile Mutation
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob +*Vale Moth
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9280 >>交任务《 前往熔光镇》 补充治疗水晶
    .accept 9409 >>接受任务《物归己用》 紧急物资！
    .target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 10302 >>交任务《 前往熔光镇》 暴躁的变异体
    .accept 9293 >>接受任务《物归己用》 必需的措施……
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>接受任务《物归己用》 跑腿采花
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>击杀 |cRXP_ENEMY_峡谷蛾|r。拾取他们的 |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>击杀 |cRXP_ENEMY_变异的根须鞭笞者|r。拾取他们的 |cRXP_LOOT_Lasher Samples|r
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Flowers|r on the ground 
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
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
    >>击杀 |cRXP_ENEMY_峡谷蛾|r。拾取他们的 |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
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
	.xp 4-420 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
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
	.xp 4-500 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 9293 >>交任务《 前往熔光镇》 必需的措施……
    .accept 9294 >>接受任务《物归己用》 净化湖水
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>交任务《 前往熔光镇》 跑腿采花
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9280 >>交任务《 前往熔光镇》 补充治疗水晶
    .accept 9409 >>接受任务《物归己用》 紧急物资！
    .target Proenitus
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
	.accept 9290 >>接受任务《物归己用》 法师训练
	.turnin 9290 >>交任务《 前往熔光镇》 法师训练
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷伦|r 对话
    >>|cRXP_FRIENDLY_奥雷伦|r |cRXP_WARN_may patrol slightly|r
	.accept 9287 >>接受任务《物归己用》 圣骑士训练
	.turnin 9287 >>交任务《 前往熔光镇》 圣骑士训练
    .train 465 >>Train |T135893:0|t[Devotion Aura]
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .train 20271 >>学习 |T135959:0|t[审判]
    .target Aurelon
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_patrols slightly|r
    .turnin 9409 >>交任务《 前往熔光镇》 紧急物资！
    .accept 9283 >>接受任务《物归己用》 拯救幸存者！
    .accept 9291 >>接受任务《物归己用》 牧师训练 << Priest
    .turnin 9291 >>交任务《 前往熔光镇》 牧师训练 << Priest
    .train 1243 >>学习 |T135987:0|t[真言术：韧] << Priest
    .train 2052 >>学习 |T135929:0|t[Lesser Heal] << Priest
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain] << Priest
    .target Zalduun
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .accept 9421 >>接受任务《物归己用》 萨满祭司训练
	.turnin 9421 >>交任务《 前往熔光镇》 萨满祭司训练
    .accept 9449 >>接受任务《物归己用》 大地的召唤
	.train 8042 >> Train |T136026:0|t[Earth Shock]
    .target Firmanvaar
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_施放|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_德莱尼幸存者|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_峡谷之灵|r 对话
    .turnin 9449 >>交任务《 前往熔光镇》 大地的召唤
    .accept 9450 >>接受任务《物归己用》 大地的召唤
    .target Spirit of the Vale
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>击杀 |cRXP_ENEMY_Restless Spirits of Earth|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_峡谷之灵|r 对话
    .turnin 9450 >>交任务《 前往熔光镇》 大地的召唤
    .accept 9451 >>接受任务《物归己用》 大地的召唤
    .target Spirit of the Vale
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_施放|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_德莱尼幸存者|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .turnin 9451 >>交任务《 前往熔光镇》 大地的召唤
    .target Firmanvaar
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >>交任务《 前往熔光镇》 拯救幸存者！
    .target Zalduun
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .accept 9289 >>接受任务《物归己用》 战士训练
	.turnin 9289 >>交任务《 前往熔光镇》 战士训练
    .train 100 >>Train |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔尼|r 对话
	.accept 9288 >>接受任务《物归己用》 猎人训练
	.turnin 9288 >>交任务《 前往熔光镇》 猎人训练
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗约什|r 对话
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]|cRXP_BUY_from him|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_姆拉|r 对话
	.vendor >>把垃圾物品卖给商人
    >>|cRXP_BUY_Buy 5 stacks of|r |T132382:0|t[劣质箭] |cRXP_BUY_from her|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Mura
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .accept 9305 >>接受任务《物归己用》 备用零件
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .accept 9303 >>接受任务《物归己用》 疫苗
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_施放|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>点击地上的 |cRXP_PICK_Irradiated Power Crystal|r in the lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_木巢枭兽|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>拾取散发绿光的 |cRXP_LOOT_Emitter Spare Parts|r on the ground
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Inoculating Crystal] |cRXP_WARN_on |cRXP_ENEMY_木巢枭兽|r for 4 seconds|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    >>Stand on top of nearby bonfires to take addition damage if required
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .turnin 9294 >>交任务《 前往熔光镇》 净化湖水
    .target Botanist Taerix
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target Aurok
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >>交任务《 前往熔光镇》 拯救幸存者！
    .target Zalduun
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .turnin 9305 >>交任务《 前往熔光镇》 备用零件
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .turnin 9303 >>交任务《 前往熔光镇》 疫苗
    .accept 9309 >>接受任务《物归己用》 失踪的斥候
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_施放|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 9309 >>交任务《 前往熔光镇》 失踪的斥候
    .accept 10303 >>接受任务《物归己用》 血精灵
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>击杀 |cRXP_ENEMY_血精灵斥候|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 10303 >>交任务《 前往熔光镇》 血精灵
    .accept 9311 >>接受任务《物归己用》 血精灵间谍
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Kill |cRXP_ENEMY_Surveyor Candress|r. Loot her for the |T132319:0|t[|cRXP_LOOT_血精灵计划书|r]
    .use 24414 >>|cRXP_WARN_Use the|r |T132319:0|t[|cRXP_LOOT_血精灵计划书|r] |cRXP_WARN_to start the quest|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>接受任务《物归己用》 血精灵计划书
    .mob Surveyor Candress
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
    >>|cRXP_WARN_施放|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a|r |cRXP_FRIENDLY_德莱尼幸存者|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Grind |cRXP_ENEMY_血精灵斥候|r until you are 1450xp away from level 6 (1350/2800). Let yourself get low hp on the last few mobs, we're death skipping after
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Grind |cRXP_ENEMY_血精灵斥候|r until you are 1230xp away from level 6 (1570/2800). Let yourself get low hp on the last few mobs, we're death skipping after
    .mob Blood Elf Scout
step
	#completewith BloodElfSpy
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >>交任务《 前往熔光镇》 拯救幸存者！
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .turnin 9311 >>交任务《 前往熔光镇》 血精灵间谍
    .turnin 9798 >>交任务《 前往熔光镇》 血精灵计划书
    .accept 9312 >>接受任务《物归己用》 图像发射器
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .turnin 9312 >>交任务《 前往熔光镇》 图像发射器
    .accept 9313 >>接受任务《物归己用》 前往碧蓝岗哨
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃文|r 对话
    .accept 9314 >>接受任务《物归己用》 碧蓝岗哨的消息
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .accept 9452 >>接受任务《物归己用》 美味的红钳鱼
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Swim north up the river|r
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net]|cRXP_WARN_on|r|cRXP_PICK_Schools of Red Snapper|r|cRXP_WARN_you see along the way. Skip this step once you get to the top of the river, you'll complete it later|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>接受任务《物归己用》 非常感谢！
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r. Loot them for a |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r]
    .use 23678 >>|cRXP_WARN_Use the|r |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r] |cRXP_WARN_to start the quest|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>接受任务《物归己用》 奇怪的发现
    .mob Infected Nightstalker Runt
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    >>|cRXP_WARN_Ensure to die near the pond close to the mountain side|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >>前往血环堡
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 对话
    .accept 9463 >>接受任务《物归己用》 医疗材料
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
	.turnin 9612 >>交任务《 前往熔光镇》 非常感谢！
    .turnin 9455 >>交任务《 前往熔光镇》 奇怪的发现
    .accept 9456 >>接受任务《物归己用》 清理夜行豹……
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9455 >>交任务《 前往熔光镇》 奇怪的发现
    .accept 9456 >>接受任务《物归己用》 清理夜行豹……
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师戴维恩|r 对话
    .turnin 9313 >>交任务《 前往熔光镇》 前往碧蓝岗哨
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .turnin 9314 >>交任务《 前往熔光镇》 碧蓝岗哨的消息
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .home >>将你的炉石设置为暮色森林 Watch
    .target Caregiver Chellan
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .accept 9586 >>接受任务《物归己用》 帮助塔瓦拉
    .train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .train 143 >>Train |T135812:0|t[火球术]
    .train 2136 >>Train |T135807:0|t[火焰冲击]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >> Train |T132212:0|t[Hunter's Mark]
    .target Acteon
step << Shaman/Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman/Warrior
    #sticky
    .equip 16,2495 >>|cRXP_WARN_Equip the|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[木槌棒]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >>|cRXP_WARN_Equip the|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .train 2575 >>Train |T134708:0|t[采矿]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    >>|cRXP_BUY_Buy a|r |T134708:0|t[矿工锄] |cRXP_BUY_from him|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>接受任务《物归己用》 非常感谢！
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_Vines|r
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_施放|r |T135929:0|t[Lesser Heal] (等级 2) |cRXP_WARN_on|r|cRXP_FRIENDLY_塔瓦拉|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .accept 9506 >>接受任务《物归己用》 第三类接触
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >>接受任务《物归己用》 曲奇的大餐
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠卡里普索|r 对话
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones]|cRXP_WARN_and|r |T135255:0|t[Rough Weightstones]|cRXP_WARN_which increase your melee damage by 2|r
    .train 2018 >>Train |T136241:0|t[锻造]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>拾取散发绿光的 |cRXP_LOOT_Nautical Map|r on the small cage
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>拾取散发绿光的 |cRXP_LOOT_Nautical Compass|r on the small box
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>击杀 |cRXP_ENEMY_迅捷的螃蟹|r。拾取他们的 |cRXP_LOOT_Crawler Meat|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >>交任务《 前往熔光镇》 曲奇的大餐
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 和 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9506 >>交任务《 前往熔光镇》 第三类接触
    .accept 9530 >>接受任务《物归己用》 天才的方案！
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >>接受任务《物归己用》 夺回废墟
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .accept 9523 >>接受任务《物归己用》 贵重物品，小心轻放
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>拾取地上的 a |cRXP_LOOT_刳心巨树|ron the ground
    >>拾取地上的 |cRXP_LOOT_Piles of Leaves|r on the ground
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_Vines|r
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9530 >>交任务《 前往熔光镇》 天才的方案！
    .accept 9531 >>接受任务《物归己用》 间谍之树
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >>击杀 ，直到 you are 950xp away from level 8 (3550/4500)
    >>|cRXP_WARN_Try to finish near Azure Watch|r
step
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    >>|cRXP_WARN_Skip this step if you are already close to Azure Watch|r
    .subzoneskip 3576
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
	.accept 9454 >>接受任务《物归己用》 狩猎月痕鹿
    .turnin 9454 >>交任务《 前往熔光镇》 狩猎月痕鹿
    .accept 10324 >>接受任务《物归己用》 狩猎月痕鹿
    .target Acteon
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 5116 >> Train |T135860:0|t[Concussive Shot]
    .train 14260 >> Train |T132223:0|t[Raptor Strike]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 和 |cRXP_FRIENDLY_丹达尔|r 对话
    .turnin 9463 >>交任务《 前往熔光镇》 医疗材料
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>接受任务《物归己用》 备选方案的备选方案
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612  
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务《 前往熔光镇》 非常感谢！
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .trainer >>训练你的职业技能
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .accept 10428 >>接受任务《物归己用》 失踪的渔夫
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_译码者奥鲁恩|r 对话
    .accept 9538 >>接受任务《物归己用》 学外语……
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Use the|r |T133741:0|t[Stillpine Furbolg Language Primer]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基达图腾|r 对话
    .turnin 9538 >>交任务《 前往熔光镇》 学外语……
    .accept 9539 >>接受任务《物归己用》 库欧图腾
    .target Totem of Akida
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .turnin 9586 >>交任务《 前往熔光镇》 帮助塔瓦拉
    .trainer >>训练你的职业技能
    .target Guvan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target Ruada
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>接受任务《物归己用》 非常感谢！
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r。拾取他们的 |cRXP_LOOT_隐藏|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库欧图腾|r 对话
    .turnin 9539 >>交任务《 前往熔光镇》 库欧图腾
    .accept 9540 >>接受任务《物归己用》 提克提图腾
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Carefully drop down the side of the mountain here|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>拾取散发绿光的 |cRXP_LOOT_Azure Snapdragons|r on the ground
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提克提图腾|r 对话
    .turnin 9540 >>交任务《 前往熔光镇》 提克提图腾
    .accept 9541 >>接受任务《物归己用》 尤尔图腾
    .timer 30,Totem of Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r|cRXP_WARN_. He will buff you with|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_which grants 150% increased swim speed and water breathing|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net]|cRXP_WARN_on|r|cRXP_PICK_Schools of Red Snapper|r
    >>|cRXP_WARN_If a |cRXP_ENEMY_鱼人|r spawns out of the pool, swim away fast! Casting any hostils spells will cause you to lose the|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_buff|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .turnin 9452 >>交任务《 前往熔光镇》 美味的红钳鱼
    .accept 9453 >>接受任务《物归己用》 找到艾克提恩！
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与水底下的 |cRXP_FRIENDLY_尤尔图腾|r 对话
    .turnin 9541 >>交任务《 前往熔光镇》 尤尔图腾
    .accept 9542 >>接受任务《物归己用》 瓦克图腾
    .timer 71,Totem of Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_Stillpine Ancestor Yor|r|cRXP_WARN_. He will buff you with|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_which grants increased movement speed and invisibility|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Travel to western Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦克图腾|r 对话
    .turnin 9542 >>交任务《 前往熔光镇》 瓦克图腾
    .accept 9544 >>接受任务《物归己用》 阿基达的预言
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Click off the|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>击杀 |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r 和 |cRXP_ENEMY_Bristlelimb Ursas|r。拾取他们的 |cRXP_LOOT_Bristlelimb Keys|r
    >>打开 |cRXP_PICK_Bristlelimb Cages|r 上，解救 |cRXP_FRIENDLY_Stillpine Captives|r
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
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r。拾取他们的 |cRXP_LOOT_隐藏|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|ron the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Kill |cRXP_ENEMY_Wrathscale Nagas|r, |cRXP_ENEMY_Wrathscale Myrmidons|r and |cRXP_ENEMY_Wrathscale Sirens|r. Loot them for the |T134462:0|t[|cRXP_LOOT_写满符文的石板|r]
    .use 23759 >>|cRXP_WARN_Use the|r |T134462:0|t[|cRXP_LOOT_写满符文的石板|r] |cRXP_WARN_to start the quest|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>>写满符文的石板
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|ron the ground
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Swim across to Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Use the|r |T132288:0|t[Tree Disguise Kit] |cRXP_WARN_at the naga flag|r
    .timer 73,Tree's Company RP
    .use 23792
step
    >>|cRXP_WARN_等待剧情演出完成|r
    .complete 9531,1 -- The Traitor Uncovered 
step
    +|cRXP_WARN_Click off the|r |T132288:0|t[Tree Disguise] |cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 10428 >>交任务《 前往熔光镇》 失踪的渔夫
    .accept 9527 >>接受任务《物归己用》 遗体
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>击杀 |cRXP_ENEMY_Owlbeasts|r。拾取他们的 |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 9527 >>交任务《 前往熔光镇》 遗体
    .target Cowlen
step
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .turnin 9523 >>交任务《 前往熔光镇》 贵重物品，小心轻放
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9531 >>交任务《 前往熔光镇》 间谍之树
    .accept 9537 >>接受任务《物归己用》 绳侏儒以法
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9513 >>交任务《 前往熔光镇》 夺回废墟
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9514 >>交任务《 前往熔光镇》 写满符文的石板
    .target Priestess Kyleen Il'dinare
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛根·丹尼尔|r 对话
    .vendor >> |cRXP_WARN_Vendor trash while waiting for the RP to finish|r << !Hunter
    >>|cRXP_BUY_Buy more stacks of|r |T132382:0|t[劣质箭] |cRXP_BUY_from him while waiting for the RP to finish|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Logan Daniel
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .accept 9515 >>接受任务《物归己用》 督军斯雷提兹
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>与 |cRXP_FRIENDLY_工程师欧格林德|r patrolling the beach
    >>击杀 |cRXP_ENEMY_工程师欧格林德|r after the short RP. Loot him for the |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    Traitor's 通讯
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9537 >>交任务《 前往熔光镇》 绳侏儒以法
    .accept 9602 >>接受任务《物归己用》 邪恶的书信
    .target Admiral Odesyus
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >>进入磨坊 Hollow' cave
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>Drop down to the lower 等级
step << !Hunter
    >>击杀 |cRXP_ENEMY_督军斯雷提兹|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >>击杀 ，直到 3070+/6500xp
step
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .turnin 9453 >>交任务《 前往熔光镇》 找到艾克提恩！
    .turnin 10324 >>交任务《 前往熔光镇》 狩猎月痕鹿
    .target Acteon
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松部族的阿鲁古|r 对话
    .turnin 9544 >>交任务《 前往熔光镇》 阿基达的预言
    .accept 9559 >>接受任务《物归己用》 止松要塞
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹达尔|r 对话
    .turnin 9473 >>交任务《 前往熔光镇》 备选方案的备选方案
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9456 >>交任务《 前往熔光镇》 清理夜行豹……
    .turnin 9602 >>交任务《 前往熔光镇》 邪恶的书信
    .accept 9623 >>接受任务《物归己用》 成年
    .target Exarch Menelaous
step
    .isOnQuest 9612  
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务《 前往熔光镇》 非常感谢！
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .accept 9464 >>接受任务《物归己用》 火焰的召唤
    .trainer >>训练你的职业技能
    .target Tuluun
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .accept 9757 >>接受任务《物归己用》 寻找女猎手凯拉·夜弓
    .trainer >>训练你的职业技能
    .target Acteon
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target Guvan
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .trainer >>训练你的职业技能
    .accept 9582 >>接受任务《物归己用》 一人之力
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9757 >>交任务《 前往熔光镇》 寻找女猎手凯拉·夜弓
    .accept 9591 >>接受任务《物归己用》 驯服野兽
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >>|cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a |cRXP_ENEMY_带刺的螃蟹|r in the water|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob Barbed Crawler
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >>进入磨坊 Hollow' cave
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>Drop down to the lower 等级
step << Hunter
    >>击杀 |cRXP_ENEMY_督军斯雷提兹|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides Hollow' cave
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9591 >>交任务《 前往熔光镇》 驯服野兽
    .accept 9592 >>接受任务《物归己用》 驯服野兽
    .target Huntress Kella Nightbow
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_象群管理者妥拉留斯|r 对话
    .turnin 9623 >>交任务《 前往熔光镇》 成年
    .accept 9625 >>接受任务《物归己用》 雷象可不是好玩的！
    .target Torallius the Pack Handler
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >>|cRXP_WARN_Use the|r |T135139:0|t[Taming Totem]|cRXP_WARN_on a|r|cRXP_ENEMY_巨型林地陆行鸟|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9592 >>交任务《 前往熔光镇》 驯服野兽
    .accept 9593 >>接受任务《物归己用》 驯服野兽
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >>|cRXP_WARN_Use the|r |T135139:0|t[Taming Totem]|cRXP_WARN_on a|r|cRXP_ENEMY_夜行豹|r
    .complete 9593,1 --Tame a Nightstalker
    .mob Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    .turnin 9593 >>交任务《 前往熔光镇》 驯服野兽
    .accept 9675 >>接受任务《物归己用》 训练野兽
    .target Huntress Kella Nightbow
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Enter The Exodar through the backdoor
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
    .turnin 9675 >>交任务《 前往熔光镇》 训练野兽
	.trainer >>训练你的宠物技能
    .target Ganaar
step << Hunter
    #completewith next
    .destroy 2512 >>Destroy all your |T132382:0|t[劣质箭]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_Buy 6 stacks of|r |T132382:0|t[锋利的箭]
    .collect 2515,1200
    .target Avelii
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>Travel up the ramp towards |cRXP_FRIENDLY_韩迪尔|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >> Train 2h Swords
    .target Handiir
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Jump down 和 head out of The Exodar
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target Moordo
    .accept 9560 >>接受任务《物归己用》 末日的野兽！
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古尔弗|r 对话
    .target Gurf
    .accept 9562 >>接受任务《物归己用》 鱼人……
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target High Chief Stillpine
    .turnin 9559 >>交任务《 前往熔光镇》 止松要塞
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a|r |cRXP_ENEMY_成型的掠食者|r |cRXP_WARN_to tame it|r
    .mob Ravager Specimen
step << Shaman
	#completewith next
	>>击杀 |cRXP_ENEMY_成型的掠食者|r。拾取他们的 |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9464 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9465 >>接受任务《物归己用》 火焰的召唤
    .target Temper
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>击杀 |cRXP_ENEMY_成型的掠食者|r。拾取他们的 |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >>点击地上的 |cRXP_PICK_Ravager Cage|r to release |cRXP_ENEMY_死亡掠食者|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>击杀 |cRXP_ENEMY_死亡掠食者|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob Death Ravager
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target Moordo
    .turnin 9560 >>交任务《 前往熔光镇》 末日的野兽！
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target Stillpine the Younger
    .accept 9573 >>接受任务《物归己用》 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target High Chief Stillpine
    .accept 9565 >>接受任务《物归己用》 搜索止松要塞
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >>进入 Stillpine Hold cave
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >> Head to the upper section of the cave
step
	.goto Azuremyst Isle,47.394,14.121
    >>击杀 |cRXP_ENEMY_欧莫鲁酋长|r 
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r。拾取他们的 |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob +Chieftain Oomooroo
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob +Crazed Wildkin
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob +Crazed Wildkin
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >>Drop down 和 head to the back of the cave
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r。拾取他们的 |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,50.632,11.544
    >>点击地上的 |cRXP_PICK_Blood Crystal|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_库肯|r if possible as you will need to kill him shortly|r
    .turnin 9565 >>交任务《 前往熔光镇》 搜索止松要塞
    .accept 9566 >>接受任务《物归己用》 血水晶
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r。拾取他们的 |cRXP_LOOT_Ritual Torch|r << Shaman
    >>|cRXP_WARN_You will finish this shortly if you havn't yet|r
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >> Exit the cave
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .target High Chief Stillpine
    .turnin 9566 >>交任务《 前往熔光镇》 血水晶
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target Stillpine the Younger
    .turnin 9573 >>交任务《 前往熔光镇》 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_启示者库尔兹|r 对话
    .target Kurz the Revelator
    .accept 9570 >> Accept The Kurken is Lurkin'
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕卡特·钢皮|r 对话
    .vendor >> |cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] 
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >>进入 Stillpine Hold cave again
step
    #completewith next
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r。拾取他们的 |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Kill |cRXP_ENEMY_The Kurken|r. Loot him for his |cRXP_LOOT_Hide|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob The Kurken
step
    .goto Azuremyst Isle,47.394,14.121
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r << !Shaman
    >>击杀 |cRXP_ENEMY_发狂的野枭兽|r。拾取他们的 |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松酋长|r 对话
    .target Stillpine the Younger
    .turnin 9573 >>交任务《 前往熔光镇》 欧莫鲁酋长
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_启示者库尔兹|r 对话
    .target Kurz the Revelator
    .turnin 9570 >> Turn in The Kurken is Lurkin'
    .accept 9571 >>接受任务《物归己用》 库肯的毛皮
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .accept 9622 >>接受任务《物归己用》 警告你的人民
    .target High Chief Stillpine
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .target Moordo
    .turnin 9571 >>交任务《 前往熔光镇》 库肯的毛皮
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9465 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9467 >>接受任务《物归己用》 火焰的召唤
    .target Temper
step << Shaman
    #completewith next
	.hs >>Hearth to 碧蓝岗哨，秘血岛
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9622 >>交任务《 前往熔光镇》 警告你的人民
    .target Exarch Menelaous
step << Shaman
    #completewith Wickerman
    .subzone 3639 >>前往暴风城大教堂内，与 Silvermyst Isle
step << Shaman
    #completewith Wickerman
    .use 24336 >>Open the |T133655:0|t[Fireproof Satchel] for the |T135432:0|t[Ritual Torch]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>点击地上的 |cRXP_PICK_Wickerman Effigy|r 以召唤 |cRXP_ENEMY_赫图尔|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Kill |cRXP_ENEMY_Hauteur|r. Loot him for his |cRXP_LOOT_Ashes|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob Hauteur
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_Use the|r |T134337:0|t[Orb of Returning] |cRXP_WARN_to teleport back to Emberglade|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坦普|r 对话
    .turnin 9467 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9468 >>接受任务《物归己用》 火焰的召唤
    .target Temper
step
    #completewith next
    >>击杀 |cRXP_ENEMY_沙鳞鱼人|r, |cRXP_ENEMY_沙鳞先知|r 和 |cRXP_ENEMY_沙鳞猎手|r。拾取他们的 |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
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
    >>Kill |cRXP_ENEMY_Murgurgula|r. Loot him for |T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r]
    .use 23850 >>|cRXP_WARN_Use|r |T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_咕噜咕拉|r |cRXP_WARN_patrols along the coast|r
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >>接受任务《物归己用》 古尔弗的尊严
	.unitscan Murgurgula
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
    >>击杀 |cRXP_ENEMY_沙鳞鱼人|r, |cRXP_ENEMY_沙鳞先知|r 和 |cRXP_ENEMY_沙鳞猎手|r。拾取他们的 |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>前往暴风城大教堂内，与 Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 12-20 Bloodmyst (Draenei)
#subgroup RestedXP 联盟 1-20 级
#defaultfor Draenei
#next 20-21 Darkshore (Draenei)

step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥纳尔|r 对话
    .target Aonar
    .accept 9624 >>接受任务《物归己用》 美味的点心
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target Vorkhan the Elekk Herder
    .turnin 9625 >>交任务《 前往熔光镇》 雷象可不是好玩的！
    .accept 9634 >>接受任务《物归己用》 大战异型掠夺者
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target Vorkhan the Elekk Herder
    .accept 9634 >>接受任务《物归己用》 大战异型掠夺者
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
    .xp 12-2000 >> |cRXP_WARN_Grind until you are 2000xp away from level 12 (6800/8800)|r
    >>击杀 |cRXP_ENEMY_秘血幼崽|r
	>>拾取散发绿光的 |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_Once you have reached the xp needed, continue with the guide|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    .accept 9603 >>接受任务《物归己用》 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snapper] |cRXP_BUY_from him|r << Warrior
    >>|cRXP_BUY_Buy up to 40|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_from him|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Buy up to 40|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_and|r |T133918:0|t[Longjaw Mud Snapper] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1179,35 << !Warrior !Rogue --Ice Cold Milk (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    .home >>将你的炉石设置为暮色森林 Watch
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target Maatparm
    .accept 9648 >>接受任务《物归己用》 玛特帕尔姆蘑菇展
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target Laando
    .turnin 9603 >>交任务《 前往熔光镇》 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target Laando
    .fp Blood Watch>>获取藏宝海湾飞行路径
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .target Laando
    .turnin 9603 >>交任务《 前往熔光镇》 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .accept 9693 >>接受任务《物归己用》 阿古斯的意义
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .accept 9581 >>接受任务《物归己用》 研究水晶
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9693 >>交任务《 前往熔光镇》 阿古斯的意义
    .accept 9694 >>接受任务《物归己用》 秘血岗哨
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r
    >>|cRXP_WARN_Be cautious as |cRXP_ENEMY_炎鹰间谍|r are very strong at this 等级|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9694 >>交任务《 前往熔光镇》 秘血岗哨
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .target Morae
    .accept 9629 >>接受任务《物归己用》 研究鱼人
step
	#completewith next
	>>拾取地上的 a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r 
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>击杀 a |cRXP_ENEMY_臭角刺鱼|r.拾取地上的 it for the |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_You may also loot the |cRXP_LOOT_Aquatic Stinkhorn|r 对话|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Impact Site Crystal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
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
    .xp 12-2000 >> |cRXP_WARN_Grind until you are 2000xp away from level 12 (6800/8800)|r
    >>击杀 |cRXP_ENEMY_秘血幼崽|r
	>>拾取散发绿光的 |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_Once you have reached the xp needed, continue with the guide|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith grind3800
	>>拾取散发绿光的 |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_They can be hard to spot, check around trees|r
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
    .mob Bloodmyst Hatchling
step
	#label grind3800
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
	.xp 12+3880 >>击杀 ，直到 you're 3880 xp into level 12 (3880+/9800)
    .mob Bloodmyst Hatchling
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
	>>拾取散发绿光的 |cRXP_LOOT_Sand Pears|r on the ground
    >>|cRXP_WARN_They can be hard to spot, check around trees|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥纳尔|r 对话
    .target Aonar
    .turnin 9624 >>交任务《 前往熔光镇》 美味的点心
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷象管理者沃克汉|r 对话
    .target Vorkhan the Elekk Herder
    .turnin 9634 >>交任务《 前往熔光镇》 大战异型掠夺者
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务《物归己用》 凯希尔的信使
    .target Kessel
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >> |cRXP_WARN_NOTE: Do not engage any mobs, attack or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    *|cRXP_WARN_This is also a timed quest! You have 15 minutes to complete it and turn it in|r
    *|cRXP_WARN_Follow the road south to get to |cRXP_FRIENDLY_止松老酋长|r safely|r
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .accept 9622 >>接受任务《物归己用》 警告你的人民 << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古尔弗|r 对话
    .turnin 9564 >>交任务《 前往熔光镇》 古尔弗的尊严
    .turnin 9562 >>交任务《 前往熔光镇》 鱼人……
    .target Gurf
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >> |cRXP_WARN_Continue following the road south to Azure Watch|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .turnin 9582 >>交任务《 前往熔光镇》 一人之力
    .accept 10350 >>接受任务《物归己用》 贝霍玛特
    .trainer >>训练你的职业技能
    .target Ruada
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .trainer >>训练你的职业技能
    .target Acteon
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target Guvan
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .turnin 9468 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9461 >>接受任务《物归己用》 火焰的召唤
    .trainer >>训练你的职业技能
    .target Tuluun
    .subzoneskip 3576,1
step
    #optional
    .use 23910 >>|cRXP_WARN_Use the|r |T133473:0|t[Blood Elf Communication]|cRXP_WARN_to start the quest|r
    .accept 9616 >>接受任务《物归己用》 强盗！
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616  
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9616 >>交任务《 前往熔光镇》 强盗！
    .target Exarch Menelaous
step
    #optional
    .isOnQuest 9612  
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务《 前往熔光镇》 非常感谢！
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9622 >>交任务《 前往熔光镇》 警告你的人民 << !Shaman
    .complete 9663,2 --Exarch Menelaous Warned
    .target Exarch Menelaous
step
    #completewith next
    .isOnQuest 9663
    .subzone 3573 >> |cRXP_WARN_Continue following the road south to Odesyus' Landing|r
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .complete 9663,3 --Admiral Odesyus Warned
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9515 >>交任务《 前往熔光镇》 督军斯雷提兹
    .target Priestess Kyleen Il'dinare
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,20,0
    .goto The Exodar,42.90,67.67,15 >>Enter The Exodar through the backdoor
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .target Jol
    .accept 9598 >>接受任务《物归己用》 救赎
    .turnin 9598 >>交任务《 前往熔光镇》 救赎
    .accept 9600 >>接受任务《物归己用》 救赎
	.trainer >>训练你的职业技能
step
    .isOnQuest 9581,9663
	.hs >>前往血环堡
    .cooldown item,6948,>2,1
step
	.isOnQuest 9581,9663
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9567 >>接受任务《物归己用》 知己知彼
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9581 >>交任务《 前往熔光镇》 研究水晶
    .accept 9620 >>接受任务《物归己用》 失踪的测量小组
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .turnin 9663 >>交任务《 前往熔光镇》 凯希尔的信使
    .accept 9666 >>接受任务《物归己用》 展示力量
    .target Kessel
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松公主|r 对话
    .accept 9667 >>接受任务《物归己用》 拯救止松公主
    .target Princess Stillpine
step
	#completewith next
	>>拾取地上的 a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    .goto Bloodmyst Isle,67.35,67.99,40,0
    .goto Bloodmyst Isle,68.83,68.09
	>>击杀 |cRXP_ENEMY_克希兹领主|r
    .use 24084 >>|cRXP_WARN_Use the|r |T132484:0|t[Draenei Banner]|cRXP_WARN_on his corpse|r
    .complete 9666,1 -- Kill Lord Xiz (1)
    .mob +Lord Xiz
    .complete 9666,2 --Declaration of Power (x1)
step
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>拾取地上的 a |cRXP_LOOT_Ruinous Polyspore|r on the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step << Paladin
    #completewith next
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Use the|r |T133439:0|t[Symbol of Life]|cRXP_WARN_on the|r|cRXP_FRIENDLY_年轻的熊怪萨满祭司|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,64.2,76.8
    >>击杀 |cRXP_ENEMY_刺臂战士|r and |cRXP_ENEMY_刺臂萨满祭司|r until |cRXP_ENEMY_刺臂酋长|r spawns
    >>击杀 |cRXP_ENEMY_刺臂酋长|r. Loot him for |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step << Paladin
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Use the|r |T133439:0|t[Symbol of Life]|cRXP_WARN_on the|r|cRXP_FRIENDLY_年轻的熊怪萨满祭司|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,68.257,80.999
    >>点击 |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .turnin 9666 >>交任务《 前往熔光镇》 展示力量
    .accept 9668 >>接受任务《物归己用》 向主教埃德门图斯报告
    .target Kessel
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger]|cRXP_WARN_on|r|cRXP_ENEMY_黑沙斥候|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_黑沙斥候|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	>>Kill |cRXP_ENEMY_Cruelfin|r. Loot him for the |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r]
    .use 23870 >>|cRXP_WARN_Use the|r |T133339:0|t[|cRXP_LOOT_红色水晶坠饰|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_克鲁芬|r |cRXP_WARN_patrols along the shoreline|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >>接受任务《物归己用》 克鲁芬的项链
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger]|cRXP_WARN_on|r|cRXP_ENEMY_黑沙斥候|r
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_黑沙斥候|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	#completewith FelConeFungus
	>>拾取地上的 a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r 
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>拾取地上的 a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] 
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务《物归己用》 军团的徽记
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>点击地上的 |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall. 拾取地上的 it for the |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] 
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_瑟拉克的护甲块|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_If you do not see him patrolling through the camps, wait for him to spawn at the purple sigil on the ground at the south. It can take 3-6 minutes for him to spawn|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>接受任务《物归己用》 军团的徽记
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>击杀 |cRXP_ENEMY_纳兹维安萨特|r 和 |cRXP_ENEMY_纳兹维安魔誓者|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Nazzivus Rogues|r if you aren't seeing |cRXP_ENEMY_Satyrs|r or |cRXP_ENEMY_Felsworns|r to make them respawn|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>拾取地上的 a |cRXP_LOOT_Fel Cone Fungus|r on the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #loop
    .goto Bloodmyst Isle,38.9,79.4,0
    .goto Bloodmyst Isle,42.1,71.7,0
    .goto Bloodmyst Isle,46.8,77.0,0
    .goto Bloodmyst Isle,45.7,86.9,0
    .goto Bloodmyst Isle,49.7,86.2,0
    .goto Bloodmyst Isle,53.5,75.7,0
    .goto Bloodmyst Isle,48.5,66.7,0
    .goto Bloodmyst Isle,54.1,67.6,0
    .goto Bloodmyst Isle,58.9,61.8,0
    .goto Bloodmyst Isle,38.9,79.4,15,0
    .goto Bloodmyst Isle,42.1,71.7,15,0
    .goto Bloodmyst Isle,46.8,77.0,15,0
    .goto Bloodmyst Isle,45.7,86.9,15,0
    .goto Bloodmyst Isle,49.7,86.2,15,0
    .goto Bloodmyst Isle,53.5,75.7,15,0
    .goto Bloodmyst Isle,48.5,66.7,15,0
    .goto Bloodmyst Isle,54.1,67.6,15,0
    .goto Bloodmyst Isle,58.9,61.8,15,0
	>>拾取地上的 a |cRXP_LOOT_Blood Mushroom|r on the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r 
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #optional
    .isOnQuest 9648,9594,9567,9629
	.hs >>前往血环堡
    .cooldown item,6948,>2,1
step
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9576 >>交任务《 前往熔光镇》 克鲁芬的项链
    .turnin 9629 >>交任务《 前往熔光镇》 研究鱼人
    .accept 9574 >>接受任务《物归己用》 腐蚀的牺牲品
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>击杀 |cRXP_ENEMY_堕落的树人|r。拾取他们的 |cRXP_LOOT_Crystallized Bark|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9574 >>交任务《 前往熔光镇》 腐蚀的牺牲品
    .target Morae
step
	.goto Bloodmyst Isle,53.319,56.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比迦|r
    .target Beega
	.vendor >> |cRXP_WARN_Vendor and Repair|r << !Hunter
	.vendor >>|cRXP_BUY_Buy a|r |T134410:0|t[Medium Quiver] |cRXP_WARN_and restock on|r |T132382:0|t[锋利的箭] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.252,59.121
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 9646 >>接受任务《物归己用》 通缉：死爪
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9594 >>交任务《 前往熔光镇》 军团的徽记
    .turnin 9567 >>交任务《 前往熔光镇》 知己知彼
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9567 >>交任务《 前往熔光镇》 知己知彼
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松大使欧罗尔格|r 对话
    .turnin 9667 >>交任务《 前往熔光镇》 拯救止松公主
    .target Stillpine Ambassador Olorg
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
	.turnin 9641 >>交任务《 前往熔光镇》 辐射水晶碎片
    .accept 9779 >>接受任务《物归己用》 拦截情报
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .accept 9641 >>接受任务《物归己用》 辐射水晶碎片
    .accept 9779 >>接受任务《物归己用》 拦截情报
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .accept 9580 >>接受任务《物归己用》 猎熊
    .accept 9643 >>接受任务《物归己用》 荆棘巨藤
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .turnin 9648 >>交任务《 前往熔光镇》 玛特帕尔姆蘑菇展
    .target Maatparm
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与击碎者姆摩尔对话 |cRXP_FRIENDLY_德莱尼制图师|r
    .turnin 9620 >>交任务《 前往熔光镇》 失踪的测量小组
    .accept 9628 >>接受任务《物归己用》 夺回数据
    .target Draenei Cartographer
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>击杀 |cRXP_ENEMY_怒鳞掠夺者|r and |cRXP_ENEMY_怒鳞巫师|r. Loot them for the |cRXP_LOOT_Survey Data Crystal|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9628 >>交任务《 前往熔光镇》 夺回数据
    .accept 9584 >>接受任务《物归己用》 第二份样本
    .turnin 9668 >>交任务《 前往熔光镇》 向主教埃德门图斯报告
    .target Harbinger Mikolaas
step
	#completewith GrindCheck
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r. Loot them for the |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_at the|r |cRXP_PICK_Altered Bloodmyst Crystal|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    #label GrindCheck
	.goto Bloodmyst Isle,48.1,47.6
    .xp 15-1200 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Sunhawk Spy
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>击杀 |cRXP_ENEMY_炎鹰间谍|r. Loot them for the |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
	#completewith Audience
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使赫米修斯|r
    >>|cRXP_FRIENDLY_信使赫米修斯|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >>接受任务《物归己用》 紧急信件
    .turnin 9671 >>交任务《 前往熔光镇》 紧急信件
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9584 >>交任务《 前往熔光镇》 第二份样本
    .accept 9585 >>接受任务《物归己用》 最终的样本
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9779 >>交任务《 前往熔光镇》 拦截情报
    .accept 9696 >>接受任务《物归己用》 翻译……
step
    #label Audience
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_审讯者埃莉西亚|r
    .target Interrogator Elysia
    .turnin 9696 >>交任务《 前往熔光镇》 翻译……
    .accept 9698 >>接受任务《物归己用》 会见先知
step
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使赫米修斯|r
    >>|cRXP_FRIENDLY_信使赫米修斯|r |cRXP_WARN_patrols throughout Blood Watch|r
    .accept 9671 >>接受任务《物归己用》 紧急信件
    .turnin 9671 >>交任务《 前往熔光镇》 紧急信件
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_Mailbox|r. Loot |T134332:0|t[|cRXP_LOOT_海军上将的来信|r]
    .use 24132 >>|cRXP_WARN_Use|r |T134332:0|t[|cRXP_LOOT_海军上将的来信|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >>接受任务《物归己用》 血咒的遗产
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snapper] |cRXP_BUY_from him|r << Warrior
    >>|cRXP_BUY_Buy up to 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Buy up to 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133918:0|t[Longjaw Mud Snapper] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1205,35 << !Warrior !Rogue --Melon Juice (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9569 >>接受任务《物归己用》 化解危机
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target Maatparm
    .accept 9649 >>接受任务《物归己用》 伊瑟拉之泪
step
    #completewith next
    .subzone 3598 >>前往弗雷岛
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .accept 9687 >>接受任务《物归己用》 找回尊严
    .target Prince Toreth
step
	#completewith next
	>>拾取地上的 |cRXP_LOOT_伊瑟拉之泪|r on the ground
    >>|cRXP_WARN_These look like small green mushrooms|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9672 >>交任务《 前往熔光镇》 血咒的遗产
    .accept 9674 >>接受任务《物归己用》 血咒纳迦
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>击杀 |cRXP_ENEMY_血咒纳迦|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9674 >>交任务《 前往熔光镇》 血咒纳迦
    .accept 9682 >>接受任务《物归己用》 绝望者……
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>击杀 |cRXP_ENEMY_血咒航海者|r。拾取他们的 |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9682 >>交任务《 前往熔光镇》 绝望者……
    .accept 9683 >>接受任务《物归己用》 血咒的终结 << !Warrior
    .target Captain Edward Hanes
step << !Warrior
    .xp 16-3300 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>拾取地上的 |cRXP_LOOT_伊瑟拉之泪|r on the ground
    >>|cRXP_WARN_These look like small green mushrooms|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << !Warrior
    #completewith Atoph
    .subzone 3612 >> Swim south to Bloodcurse Isle
step << !Warrior
    #completewith Atoph
    .goto Bloodmyst Isle,83.58,55.21,20,0
    .goto Bloodmyst Isle,86.26,57.24,20,0
    .goto Bloodmyst Isle,86.90,52.70,20,0
    .goto Bloodmyst Isle,86.061,54.599
    .cast 8386,6477,6478 >>点击地上的 |cRXP_PICK_Statue of Queen Azshara|r 以召唤 |cRXP_ENEMY_血咒者埃托弗|r
step << !Warrior
    #label Atoph
    .goto Bloodmyst Isle,85.59,53.42
    >>击杀 |cRXP_ENEMY_血咒者埃托弗|r
    >>|cRXP_ENEMY_血咒者埃托弗|r |cRXP_WARN_is level 19. Be ready to use a Healing Potion or|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_if required. Skip this step if you are unable to kill him|r
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    .mob Atoph the Bloodcursed
step
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛特帕尔姆|r 对话
    .target Maatparm
    .turnin 9649 >>交任务《 前往熔光镇》 伊瑟拉之泪
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘探者纳克兰|r
    .accept 10063 >>接受任务《物归己用》 探险者协会要为侏儒服务吗？
    .target Prospector Nachlan
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .accept 9604 >>接受任务《物归己用》 乘坐角鹰兽
    .target Laando
step
    #completewith WingsofHippogryph
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
step
    #completewith WingsofHippogryph
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step
    #label WingsofHippogryph
	.goto The Exodar,57.011,50.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_努古尼|r
    .turnin 9604 >>交任务《 前往熔光镇》 乘坐角鹰兽
    .accept 9605 >>接受任务《物归己用》 斯泰法努斯
    .target Nurguni
step << Warlock/Priest/Mage
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_from him or check the Auction House for a|r |T135144:0|t[强效魔法杖]
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest/Mage
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_from him|r
    .goto The Exodar,46.386,61.499
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.3173
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Equip the|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Remember to equip the|r |T135468:0|t[烟尘魔杖] |cRXP_WARN_later when you reach level 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    .goto The Exodar,53.589,90.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if she doesn't have one|r
    .bronzetube
    .target Feera
    .zoneskip The Exodar,1
step << Warrior/Shaman/Paladin
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_贝霍玛特|ron the top floor << Warrior
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_韩迪尔|ron the top floor << Shaman/Paladin
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .turnin 10350 >>交任务《 前往熔光镇》 贝霍玛特
    .trainer >>训练你的职业技能
    .target Behomat
step << Warrior/Shaman/Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 199 >>学习双手锤 << Warrior/Shaman
    .train 202 >> Train 2h Swords << Paladin
    .target Handiir
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9600 >>交任务《 前往熔光镇》 救赎
	.trainer >>训练你的职业技能
    .target Jol
step << Warrior/Paladin
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[巨型石锤] |cRXP_BUY_from her or check the Auction House for a better weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[巨型石锤] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin
    #optional
    +|cRXP_WARN_Equip the|r |T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target Prophet Velen
    .turnin 9461 >>交任务《 前往熔光镇》 火焰的召唤 << Shaman
    .accept 9555 >>接受任务《物归己用》 火焰的召唤 << Shaman
    .turnin 9698 >>交任务《 前往熔光镇》 会见先知
    .accept 9699 >>接受任务《物归己用》 真相还是谎言
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>沿斜坡前去找 |cRXP_FRIENDLY_先知诺布杜|r
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .target Farseer Nobundo
    .turnin 9555 >>交任务《 前往熔光镇》 火焰的召唤
	.trainer >>训练你的职业技能
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .target Stephanos
    .turnin 9605 >>交任务《 前往熔光镇》 斯泰法努斯
    .accept 9606 >>接受任务《物归己用》 返回看护员谢尔兰身边
step
    .isOnQuest 9606,9699
	.hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
	.isOnQuest 9606,9699
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .turnin -9606 >>交任务《 前往熔光镇》 返回看护员谢尔兰身边
    .target Caregiver Topher Loaal
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9699 >>交任务《 前往熔光镇》 真相还是谎言
    .accept 9700 >>接受任务《物归己用》 黑暗中的魔法
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >>前往暴风城大教堂内，与 Axxarien
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Kill any you see on the way to Axxarien|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>击杀 |cRXP_ENEMY_塞弗拉克斯|r, |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Axxarien Crystal|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>击杀 |cRXP_ENEMY_塞弗拉克斯|r, |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>击杀 |cRXP_ENEMY_阿克萨林暗影行者|r 和 |cRXP_ENEMY_阿克萨林唤魔者|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>拾取散发绿光的 |cRXP_LOOT_Corrupted Crystals|r on the ground
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>击杀 |cRXP_ENEMY_死爪|r. Loot him for |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 10063 >>交任务《 前往熔光镇》 探险者协会要为侏儒服务吗？
    .accept 9548 >>接受任务《物归己用》 被偷走的设备
    .accept 9549 >>接受任务《物归己用》 黑沙神器
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if he doesn't have one|r
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>击杀 |cRXP_ENEMY_黑沙先知|r。拾取他们的 |cRXP_LOOT_Crude Murloc Idols|r
    >>击杀 |cRXP_ENEMY_黑沙战士|r 和 |cRXP_ENEMY_黑沙巡滩者|r。拾取他们的 |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>拾取地上的 |cRXP_LOOT_Clopper's Equipment|r on the ground
    >>|cRXP_WARN_It can spawn in any of the murloc camps|r
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>击杀 |cRXP_ENEMY_黑沙先知|r。拾取他们的 |cRXP_LOOT_Crude Murloc Idols|r
    >>击杀 |cRXP_ENEMY_黑沙战士|r 和 |cRXP_ENEMY_黑沙巡滩者|r。拾取他们的 |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 9548 >>交任务《 前往熔光镇》 被偷走的设备
    .turnin 9549 >>交任务《 前往熔光镇》 黑沙神器
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Use the|r |T134269:0|t[Weathered Treasure Map]|cRXP_WARN_to start the quest|r
    .accept 9550 >>接受任务《物归己用》 一张地图？
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>击杀 |cRXP_ENEMY_虚空畸能|r and explore the Sun Portal Site
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>击杀 |cRXP_ENEMY_变异的缠绕者|r。拾取他们的 |cRXP_LOOT_Thorny Constrictor Vines|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_变异的缠绕者|r as you will have time later to finish the|r |cRXP_ENEMY_老年棕熊|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>拾取地上的 the |cRXP_LOOT_龙骨|r on the ground
    >>|cRXP_WARN_These can be difficult to see and are normally found around the small camps|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>点击地上的 |cRXP_PICK_Battered Ancient Book|r on the ground
    .turnin 9550 >>交任务《 前往熔光镇》 一张地图？
    .accept 9557 >>接受任务《物归己用》 破译书籍
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .turnin 9557 >>交任务《 前往熔光镇》 破译书籍
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先行官米库拉斯|r 对话
    .turnin 9585 >>交任务《 前往熔光镇》 最终的样本
    .accept 10064 >>接受任务《物归己用》 阿古斯之手
    .turnin 9646 >>交任务《 前往熔光镇》 通缉：死爪
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者菲索斯|r
    .accept 9561 >>接受任务《物归己用》 诺尔凯的日记
    .accept 9632 >>接受任务《物归己用》 新的盟友
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9700 >>交任务《 前往熔光镇》 黑暗中的魔法
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[辐射水晶碎片] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .accept 9703 >>接受任务《物归己用》 冷却核心
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9643 >>交任务《 前往熔光镇》 荆棘巨藤
    .accept 9647 >>接受任务《物归己用》 消灭巨蛾
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9569 >>交任务《 前往熔光镇》 化解危机
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .accept 9578 >>接受任务《物归己用》 搜寻加莱恩
    .target Morae
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .accept 9669 >>接受任务《物归己用》 覆灭的远征队
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >>前往暴风城大教堂内，与 The Cyro-Core 
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>点击 |cRXP_FRIENDLY_加莱恩的尸体|r
    >>|cRXP_WARN_Avoid trying to kill many |cRXP_ENEMY_炎鹰回收者|r if possible while getting to|r |cRXP_FRIENDLY_加莱恩的尸体|r
    .turnin 9578 >>交任务《 前往熔光镇》 搜寻加莱恩
    .accept 9579 >>接受任务《物归己用》 加莱恩的命运
    .accept 9706 >>接受任务《物归己用》 加莱恩的日记 - 守备官撒鲁安的命运
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>击杀 |cRXP_ENEMY_炎鹰回收者|r. Loot them for |cRXP_LOOT_Galaen's Amulet|r and their |cRXP_LOOT_医疗物资|r
    >>你也可以拾取地上的 the |cRXP_LOOT_医疗物资|r on the ground
	>>|cRXP_WARN_Use the pillars and structures to LoS if needed to avoid their|r |T135812:0|t[火球术] |cRXP_WARN_施放|r  
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.xp 17+12800 >>击杀 ，直到 you're 12800 xp into level 17 (12800+/16400)
step
	.isOnQuest 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >>前往血环堡
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫莱|r
    .turnin 9579 >>交任务《 前往熔光镇》 加莱恩的命运
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9703 >>交任务《 前往熔光镇》 冷却核心
    .turnin 9706 >>交任务《 前往熔光镇》 加莱恩的日记 - 守备官撒鲁安的命运
    .accept 9711 >>接受任务《物归己用》 残忍的玛提斯
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .accept 9748 >>接受任务《物归己用》 毒水
    .accept 9753 >>接受任务《物归己用》 我们所知道的……
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9753 >>交任务《 前往熔光镇》 我们所知道的……
    .accept 9756 >> Acccept What We Don't Know...
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,54.312,54.215
    >>与 the |cRXP_ENEMY_被抓住的炎鹰间谍|r inside the |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主教埃德门图斯|r 对话
    .turnin 9756 >>交任务《 前往熔光镇》 我们不知道的……
    .accept 9760 >>接受任务《物归己用》 守备官营地
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r 和 |cRXP_FRIENDLY_斥候洛伊|r
    .turnin 10064 >>交任务《 前往熔光镇》 阿古斯之手
    .accept 10065 >>接受任务《物归己用》 披荆斩棘
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >>接受任务《物归己用》 虚空幼体
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 9760 >>交任务《 前往熔光镇》 守备官营地
    .accept 10066 >>接受任务《物归己用》 纠结之网
    .accept 10067 >>接受任务《物归己用》 污秽的水之魂
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>|cRXP_WARN_Use the|r |T134536:0|t[Flare Gun] |cRXP_WARN_on|r |cRXP_ENEMY_残忍的玛提斯|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get agro as |cRXP_ENEMY_残忍的玛提斯|r hits very hard|r
    >>|cRXP_ENEMY_残忍的玛提斯|r |cRXP_WARN_patrols a large section of the road. His patrol path is marked on your map|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>击杀 |cRXP_ENEMY_虚空幼体|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_虚空畸能|r to trigger |cRXP_ENEMY_虚空幼体|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>击杀 |cRXP_ENEMY_变异的纠结者|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>击杀 |cRXP_ENEMY_被激怒的掠食者|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob +Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>击杀 |cRXP_ENEMY_变异的纠结者|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>击杀 |cRXP_ENEMY_老年棕熊|r。拾取他们的 |cRXP_LOOT_Elder Brown Bear Flank|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>击杀 |cRXP_ENEMY_鲜艳的蓝翼巨蛾|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10066 >>交任务《 前往熔光镇》 纠结之网
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候约莉|r
    .turnin 10065 >>交任务《 前往熔光镇》 披荆斩棘
    .target +Scout Loryi
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>击杀 |cRXP_ENEMY_污秽的水之魂|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10067 >>交任务《 前往熔光镇》 污秽的水之魂
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .accept 9670 >>接受任务《物归己用》 他们还活着！也许……
    .target Researcher Cornelius
step
	#completewith next
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>击杀 |cRXP_ENEMY_秘网吸血者|r, |cRXP_ENEMY_秘网编织者|r and |cRXP_ENEMY_萨拉肯|r atop Amberweb Pass
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>消灭那些试图阻止仪式的 |cRXP_ENEMY_被网住的生物|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_被网住的生物|r from range if possible incase a hostile mob pops out, it won't agro you|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_研究员考内留斯|r
    .turnin 9670 >>交任务《 前往熔光镇》 他们还活着！也许……
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Use the|r |T134870:0|t[Water Sample Flask] |cRXP_WARN_at the base of the waterfall|r
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .isOnQuest 9748,9669,9741,9711
    .hs >>前往血环堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿彻鲁斯|r
    .turnin 9669 >>交任务《 前往熔光镇》 覆灭的远征队
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9741 >>交任务《 前往熔光镇》 虚空幼体
    .turnin 9748 >>交任务《 前往熔光镇》 毒水
    .accept 9746 >>接受任务《物归己用》 精疲力尽 << Hunter/Shaman/Mage
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9711 >>交任务《 前往熔光镇》 残忍的玛提斯
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9580 >>交任务《 前往熔光镇》 猎熊
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务《 前往熔光镇》 消灭巨蛾
    .target Tracker Lyceon
step << Hunter/Mage
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>击杀 |cRXP_ENEMY_炎鹰火法师|r 和 |cRXP_ENEMY_炎鹰防御者|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Hunter/Mage
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务《 前往熔光镇》 精疲力尽
    .target Vindicator Aesom
step
    #completewith next
    .subzone 3591 >>前往暴风城大教堂内，与 the Ruins of Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>点击地上的 |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 9561 >>交任务《 前往熔光镇》 诺尔凯的日记
step
    #completewith next
    .subzone 3598 >>前往弗雷岛
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9687 >>交任务《 前往熔光镇》 找回尊严
    .accept 9688 >>接受任务《物归己用》 进入梦境
    .target Prince Toreth
step
	#completewith next
    >>击杀 |cRXP_ENEMY_绿色雏龙|r 和 |cRXP_ENEMY_绿色龙崽|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    #optional
    .isQuestComplete 9683
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9683 >>交任务《 前往熔光镇》 血咒的终结
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>击杀 |cRXP_ENEMY_绿色雏龙|r 和 |cRXP_ENEMY_绿色龙崽|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9688 >>交任务《 前往熔光镇》 进入梦境
    .accept 9689 >>接受任务《物归己用》 刺喉
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>点击地上的 |cRXP_PICK_永燃火堆|r atop the mountain to summon |cRXP_ENEMY_刺喉|r
    .timer 36,Razormaw RP
step
    .goto Bloodmyst Isle,73.129,20.587
    >>击杀 |cRXP_ENEMY_刺喉|r
    >>|cRXP_ENEMY_刺喉|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_这个任务非常困难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself if required|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷斯王子|r
    >>|cRXP_FRIENDLY_托雷斯王子|r |cRXP_WARN_walks around slightly|r
    .turnin 9689 >>交任务《 前往熔光镇》 刺喉
    .target Prince Toreth
step
    #optional
	.abandon 9711 >> Abandon Matis the Cruel if you did not complete it
step
    #optional
	.abandon 9689 >> Abandon Razormaw if you did not complete it
step << Hunter/Shaman/Mage
    .xp 20 >>击杀 to level 20
step
	#completewith FlyExo
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Paladin
    #completewith FlyExo
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .trainer >>训练你的职业技能
    .target Vindicator Aesom
step
    #label FlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Hunter/Priest/Mage/Warrior
    #completewith NewfoundAllies
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏兰|r
    .accept 9502 >>接受任务《物归己用》 水之召唤
    .trainer >>训练你的职业技能
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>沿斜坡前去找 |cRXP_FRIENDLY_先知诺布杜|r
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .turnin 9502 >>交任务《 前往熔光镇》 水之召唤
    .accept 9501 >>接受任务《物归己用》 水之召唤
    .target Farseer Nobundo
step << Shaman
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
step << Shaman
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >>前往暴风城大教堂内，与 the Hidden Reef
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9501 >>交任务《 前往熔光镇》 水之召唤
    .accept 9503 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>击杀 |cRXP_ENEMY_炎鹰火法师|r 和 |cRXP_ENEMY_炎鹰防御者|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>击杀 |cRXP_ENEMY_污秽的水之魂|r。拾取他们的 |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9503 >>交任务《 前往熔光镇》 水之召唤
    .accept 9504 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
	#completewith ShamFlyExo
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Shaman
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务《 前往熔光镇》 精疲力尽
    .target Vindicator Aesom
step << Shaman
    #label ShamFlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔德|r
	.trainer >>训练你的职业技能
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘纳尔|r 对话
	.trainer >>训练你的宠物技能
    .target Ganaar
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_from him or check the Auction House for a better one|r 
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧斯|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_from him|r 
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equip the|r |T135139:0|t[燃烧魔杖]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兹米尔|r
    .trainer >>训练你的职业技能
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊迪拉恩|r
    .trainer >>训练你的职业技能
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁纳尔兰|r
    .train 32271 >>训练 |T135756:0|t[传送：埃索达]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆萨尔|r
    >>|cRXP_BUY_Buy at least one|r |T134419:0|t[传送符文] |cRXP_BUY_from her|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_贝霍玛特|ron the top floor
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .trainer >>训练你的职业技能
    .target Behomat
step
    #label NewfoundAllies
	.goto The Exodar,33.8,73.7,15,0 << !Shaman
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手凯拉·夜弓|r 对话
    >>|cRXP_FRIENDLY_女猎手凯拉·夜弓|r |cRXP_WARN_is located outside the back enterance of The Exodar|r
    .turnin 9632 >>交任务《 前往熔光镇》 新的盟友
    .accept 9633 >>接受任务《物归己用》 前往奥伯丁
    .target Huntress Kella Nightbow
step
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸

--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shaussiy|r 对话
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >>前往暴风城大教堂内，与 the dock of the Menethil Harbor boat
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_You will now begin to travel to The Deadmines|r
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉克·唐纳德|r 对话，NPC在里面
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[刽子手之剑] |cRXP_BUY_from him (if its up and you can afford it)|r
    >>|cRXP_WARN_Alternatively, you can check the Auction House soon for something better or cheaper|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉克·唐纳德|r 对话，NPC在里面
    .vendor 1441 >>|cRXP_BUY_Buy a|r |T135329:0|t[刽子手之剑] |cRXP_BUY_from him (if its up and you can afford it)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .money <1.3559
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equip the|r |T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 
step
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target Shellei Brondir
step
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>从码头尽头跳下水，游向指示点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色脱困自助功能直接跳转到铁炉堡。你需要先在指定位置下线，然后用另一个角色进入帮助菜单 (或者把下面的脱困链接粘贴到浏览器中)，向下滚动找到自助服务。选择你的角色并点击移动。如果无法成功脱困，请跳过此步骤，沿着山脉游泳前往西部荒野
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Click here for video reference|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Click here for the unstuck link for US servers|r
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Click here for the unstuck link for EU servers|r
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>学习 |T135757:0|t[传送：铁炉堡]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>If the website unstuck is not available, 飞往西部荒野
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Run up the shore 和 make your way to Sentinel Hill
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun Tram
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>飞往暴风城
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >>乘坐地铁前往暴风城
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .accept 2040 >>接受任务《物归己用》 地底突袭
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 
    .accept 167 >>接受任务《物归己用》 我的兄弟……
    .accept 168 >>接受任务《物归己用》 收集记忆
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接受任务《物归己用》 遥远的旅途
    .target Argos Nightwhisper
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid/Priest
    .train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
    .target Woo Ping
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
	.xp <20,1
    .target Larimaine Purdue
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城的飞行路径 << !Human
    .fly Westfall >> Fly to Westfall if you just came from Westfall, otherwise run there
    .disablecheckbox
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>前往西部荒野
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target Thor
step
.dungeon DM
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
    >>|cRXP_WARN_Grind |cRXP_ENEMY_豺狼人|r south of Sentinel Hill whilst assembling a Deadmines group|r
    .subzone 20 >>When your group has been assembled, 前往月溪镇
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Enter the Defias Hideout with your group
step
.dungeon DM
    #completewith EnterDM
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Defias|r。拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    >>|cRXP_WARN_You can also complete this inside the Deadmines|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>击杀 |cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r。拾取他们的 |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>击杀 the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>击杀 |cRXP_ENEMY_Sneed|r。拾取他的 |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for |T133471:0|t[|cRXP_LOOT_穆拉克·冰角 <萨满祭司训练师>|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Exit the Deadmines via the back exit east of |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 166 >>交任务《 前往熔光镇》 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_哨兵瑞尔|r atop the Tower
    .turnin 214 >>交任务《 前往熔光镇》 红色丝质面罩
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_艾尔莎林|r atop the Tower
    .train 2138 >>训练你的职业技能
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
    .xp <22,1
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .train 6202 >>训练你的职业技能
    .target Ursula Deline
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Travel to |cRXP_FRIENDLY_达索瑞恩·拉尔|r对话，NPC在里面 the Stormwind Cathedral
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 19835 >>训练你的职业技能
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前去找 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话，NPC在里面
    .train 8103 >>训练你的职业技能
    .target High Priestess Laurena
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前去找 |cRXP_FRIENDLY_武神|r 对话，NPC在里面 the Command Center
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .train 6192 >>训练你的职业技能
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .use 2874 >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_穆拉克·冰角 <萨满祭司训练师>|r] to start the quest|r
    .accept 373 >>接受任务《物归己用》 未寄出的信
    .turnin 373 >>交任务《 前往熔光镇》 未寄出的信
    .accept 389 >>接受任务《物归己用》 巴基尔·斯瑞德
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >>交任务《 前往熔光镇》 巴基尔·斯瑞德
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔德·蓟草|r 对话，NPC在里面
    .turnin 167 >>交任务《 前往熔光镇》 我的兄弟……
    .turnin 168 >>交任务《 前往熔光镇》 收集记忆
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2040 >>交任务《 前往熔光镇》 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管] |cRXP_BUY_from him (if its up)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 20-21 Darkshore (Draenei)
#subgroup RestedXP 联盟 20-32 级
#defaultfor Draenei
#next 21-23 Ashenvale (Draenei)

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务《物归己用》 海中的水果
    .target Gubber Blump
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fp Auberdine >>获取鹰巢山飞行路径
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Darkshore,37.219,44.227
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 4740 >>接受任务《物归己用》 通缉：莫克迪普！
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接受任务《物归己用》 洞中的蘑菇
    .target Barithras Moonshade
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵艾莉萨·星风|r 交谈
    .accept 965 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接受任务《物归己用》 深不可测的海洋
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
	.turnin 9633 >>交任务《 前往熔光镇》 前往奥伯丁
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 10752 >>接受任务《物归己用》 前往灰谷
    .target Thundris Windweaver
step
    .goto Darkshore,38.83,29.37,10,0
    .goto Darkshore,38.236,28.800
    >>|cRXP_WARN_Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>拾取散发绿光的 |cRXP_LOOT_Silver Dawning's Lockbox|r on the ground
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
step
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.633,27.459
    >>|cRXP_WARN_Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>拾取散发绿光的 |cRXP_LOOT_Mist Veil's Lockbox|r on the ground
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
step
    #completewith GelkakGyromast
    >>击杀 |cRXP_ENEMY_暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >>接受任务《物归己用》 基尔卡克的钥匙
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r and |cRXP_ENEMY_硬壳潮行蟹|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_狂暴暗礁蟹|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>击杀 |cRXP_ENEMY_灰雾智者|r and |cRXP_ENEMY_灰雾潮行者|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_灰雾智者|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r and |cRXP_ENEMY_硬壳潮行蟹|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_狂暴暗礁蟹|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>击杀 |cRXP_ENEMY_凶猛的森林陆行鸟|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >>交任务《 前往熔光镇》 基尔卡克的钥匙
    .accept 2078 >>接受任务《物归己用》 基尔卡克的报复
    .target Gelkak Gyromast
step
    .goto Darkshore,55.803,18.291,10,0
    .goto Darkshore,56.655,13.485
    >>与 |cRXP_FRIENDLY_机械打手4100型|r to start the escort
    >>护送 |cRXP_FRIENDLY_机械打手4100型|r to |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>击杀 |cRXP_ENEMY_机械打手4100型|r once it turns hostile
    .skipgossip
    .complete 2078,1
    .mob The Threshwackonator 4100
step
    #label GelkakGyromast
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务《 前往熔光镇》 基尔卡克的报复
    .target Gelkak Gyromast
step
    #sticky
    #optional
    .destroy 7442 >> Delete |T134459:0|t[Gyromast's Key] as it's no longer needed (it is not in your keyring)
step
    #loop
    .goto Darkshore,53.51,18.65,0
    .goto Darkshore,51.42,22.04,0
    .goto Darkshore,48.52,20.65,0
    .goto Darkshore,45.50,20.45,0
    .goto Darkshore,53.51,18.65,70,0
    .goto Darkshore,51.42,22.04,70,0
    .goto Darkshore,48.52,20.65,70,0
    .goto Darkshore,45.50,20.45,70,0
    >>击杀 |cRXP_ENEMY_暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 966 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Balthule Shadowstrike
step
    #loop
    .goto Darkshore,55.231,26.508,0
    .goto Darkshore,56.194,27.071,0
    .goto Darkshore,56.047,26.586,0
    .goto Darkshore,55.231,26.508,50,0
    .goto Darkshore,55.369,27.025,50,0
    .goto Darkshore,55.763,26.695,50,0
    .goto Darkshore,55.815,26.972,50,0
    .goto Darkshore,56.194,27.071,50,0
    .goto Darkshore,56.790,27.621,50,0
    .goto Darkshore,57.278,26.311,50,0
    .goto Darkshore,57.046,26.234,50,0
    .goto Darkshore,56.544,26.598,50,0
    .goto Darkshore,56.047,26.586,50,0
    .goto Darkshore,55.743,25.915,50,0
    >>击杀 |cRXP_ENEMY_暗滩狂热者|r。拾取他们的 |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 967 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往暴风城大教堂内，与 the Cliffspring River Cave
step
    >>拾取散发绿光的 |cRXP_LOOT_Scaber Stalks|r 和 a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If there is not a |cRXP_LOOT_Death Cap|r at the end of the top side, drop down and get one from the southern room below|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stormscale Wave Riders|r cast|r |T135836:0|t[Aqua Jet] |cRXP_WARN_(Ranged Instant: Deals damage to nearby enemies and knocks them back) - make sure you're not in a position to get knocked off the upper level of the cave|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
	.goto Darkshore,55.3,34.0
    .xp 20-3900 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
step << Hunter
	#completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务《 前往熔光镇》 深不可测的海洋
    .target Gorbold Steelhand
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >>交任务《 前往熔光镇》 遥远的旅途
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >>接受任务《物归己用》 研究堕落
    .target Gershala Nightwhisper
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接受任务《物归己用》 健忘的勘察员
    .target Archaeologist Hollee
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务《 前往熔光镇》 洞中的蘑菇
    .accept 948 >>接受任务《物归己用》 安努
    .target Barithras Moonshade
step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务《 前往熔光镇》 海中的水果
    .target Gubber Blump
step << Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step << Hunter
.dungeon !BFD
    #optional
    #completewith TrainWeps
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step
.dungeon BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step
.dungeon BFD
    #completewith BFDAccept
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门   
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 和 |cRXP_FRIENDLY_哨兵山德拉斯|r 交谈
    .accept 1199 >>接受任务《物归己用》 暮光之锤的末日
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>接受任务《物归己用》 寻找塞尔瑞德
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << Hunter
#ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_WARN_Buy a|r |T135489:0|t[重型弯弓] |cRXP_WARN_if you can afford it or check the Auction House for a better one|r 
    >>|cRXP_WARN_Stock up on|r |T132382:0|t[锋利的箭]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
#ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r
    >>|cRXP_WARN_Buy a|r |T135489:0|t[重型弯弓]
    >>|cRXP_WARN_Stock up on|r |T132382:0|t[锋利的箭]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
    .money <0.5643
step << Hunter
    +|cRXP_WARN_Equip the|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71    
step << Hunter
    #label TrainWeps
    .goto Darnassus,57.56,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 264 >> Train Bows
    .train 227 >>学习锤类武器
    .target Ilyenia Moonfire
step
    #label BFDAccept
    .goto Darnassus,39.799,92.286,10,0
    .goto Darnassus,38.716,81.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦鲁丝塔大使|r 交谈
    .accept 9432 >>接受任务《物归己用》 前往阿斯特兰纳
    .target Emissary Valustraa
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto Darkshore,35.429,76.566,0
    .goto Darkshore,35.429,76.566,60,0
    .goto Darkshore,36.526,76.603
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_莫克迪普|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_灰雾猎人|r in the wave that he spawns with alive)|r
    >>击杀 the |cRXP_ENEMY_灰雾战士|r and |cRXP_ENEMY_灰雾猎人|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_莫克迪普|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_灰雾滩行者|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_灰雾战士|r, and Wave 3 has a level 19 |cRXP_ENEMY_莫克迪普|r and a level 16-17 |cRXP_ENEMY_灰雾猎人|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto Darkshore,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务《 前往熔光镇》 安努
    .accept 944 >>接受任务《物归己用》 主宰之剑
    .target Onu
step
    .goto Darkshore,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r
    >>|cRXP_WARN_This will start an escort. You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 731,1 >>接受任务《物归己用》 健忘的勘察员
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_勘察员雷塔维|r through the Excavation|r
    .complete 731,1
    .isOnQuest 731
    .target Prospector Remtravel
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>|cRXP_WARN_点击船底的 |cRXP_PICK_Scrying Bowl|r 前进|r
    .turnin 944 >>交任务《 前往熔光镇》 主宰之剑
    .accept 949 >>接受任务《物归己用》 暮光之锤的营地
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>点击地上的 |cRXP_PICK_暮光宝典|r on the northern pedestal
    .turnin 949 >>交任务《 前往熔光镇》 暮光之锤的营地
step
    #optional
    #sticky
    .destroy 5251 >> Delete the |T134715:0|t[Phial of Scrying], as it's no longer needed
step
    .goto Darkshore,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_瑟瑞露尼|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    .accept 945 >>接受任务《物归己用》 护送瑟瑞露尼
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_瑟瑞露尼|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
    .target Therylune
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 21-23 Ashenvale (Draenei)
#subgroup RestedXP 联盟 20-32 级
#defaultfor Draenei
#next 23-24级 湿地

step
    .goto Ashenvale,28.929,14.485
    .zone Ashenvale >> Travel south to Ashenvale
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 970 >>接受任务《物归己用》 奥萨拉克斯之塔
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接受任务《物归己用》 巴斯兰的头发
step
    .goto Ashenvale,31.25,30.70
    >>击杀 |cRXP_ENEMY_暗滩祭司|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_暗滩执行者|r and |cRXP_ENEMY_暗滩挖掘者|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|ron the ground.拾取地上的 them for |cRXP_LOOT_巴斯兰的头发|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务《 前往熔光镇》 巴斯兰的头发
    .accept 1020 >>接受任务《物归己用》 奥雷迪尔的药剂
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .accept 973 >>接受任务《物归己用》 奥萨拉克斯之塔
    .target Delgren the Purifier
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.67,48.83
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接受任务《物归己用》 佐拉姆海岸
    .target Shindrell Swiftfire
step
    #optional
    .isOnQuest 9432
    .goto Ashenvale,34.894,49.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官帕兰纳尔|r
    .turnin 9432 >>交任务《 前往熔光镇》 前往阿斯特兰纳
    .target Vindicator Palanaar
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞安德尔|r
    >>|cRXP_BUY_Buy a|r |T135280:0|t[微光重剑] |cRXP_BUY_from him|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Equip the|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 10752 >>交任务《 前往熔光镇》 前往灰谷
    .accept 1054 >>接受任务《物归己用》 解除威胁
    .accept 991 >>接受任务《物归己用》 莱恩的净化
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Kimlya
    .subzoneskip 415,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .turnin 1020 >>交任务《 前往熔光镇》 奥雷迪尔的药剂
    .timer 24,Orendil's Cure RP
    .accept 1033 >>接受任务《物归己用》 月神之泪
    .target Pelturas Whitemoon
step
.dungeon WC
    #completewith TravelRatchet
    +Begin looking for a Wailing Caverns group while you complete the next two steps. Very soon you'll be heading to The Barrens to run Wailing Caverns
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_达尔·血爪|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>拾取地上的 |cRXP_LOOT_月神之泪|r on the ground
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet in The Barrens. 跟随 the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接受任务《物归己用》 港口的麻烦
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994
    .goto 1414/1,-2003.0622,-830.7456,20 >>前往 Halfhill The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_纳尔帕克|r and |cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .accept 1486 >>接受任务《物归己用》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >>接受任务《物归己用》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_疯狂的马格利什|r |cRXP_WARN_can spawn in a few locations|r
    >>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Zone into The Wailing Caverns
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>击杀所有 types of |cRXP_ENEMY_Deviate|r creatures
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>击杀 |cRXP_ENEMY_考布莱恩|r, |cRXP_ENEMY_皮萨斯|r, |cRXP_ENEMY_瑟芬迪斯|r and |cRXP_ENEMY_安娜科德拉|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
    >>护送 the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns 和 complete the ritual of awakening
    >>击杀 |cRXP_ENEMY_吞噬者穆坦努斯|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>接受任务《物归己用》 发光的碎片
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>击杀 all types of |cRXP_ENEMY_Deviate|rcreatures.拾取地上的 them for their |cRXP_LOOT_变异皮革|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>前往暴风城大教堂内，与 Ratchet. You will turn in the quests above WC soon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >>交任务《 前往熔光镇》 发光的碎片
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_纳尔帕克|r and |cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>拾取地上的 |cRXP_LOOT_月神之泪|r on the ground
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_达尔·血爪|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1054 >>交任务《 前往熔光镇》 解除威胁
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1033 >>交任务《 前往熔光镇》 月神之泪
    .timer 17,Elune's Tear RP
    .accept 1034 >>接受任务《物归己用》 星尘废墟
step << Shaman
    #completewith next
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Use the|r |T132825:0|t[Empty Bota Bag] |cRXP_WARN_at the Ruins of Stardust small fountain|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>拾取散发绿光的 |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
    .goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r|cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians]|cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务《 前往熔光镇》 护送瑟瑞露尼
	.target Therysil
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >>交任务《 前往熔光镇》 奥萨拉克斯之塔
    .target Delgren the Purifier
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰洛尼斯的尸体|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >>交任务《 前往熔光镇》 莱恩的净化
    .accept 1023 >>接受任务《物归己用》 莱恩的净化
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>击杀 |cRXP_ENEMY_Saltspittle Murlocs|r。拾取他们的 |cRXP_LOOT_Glowing Gem|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Accept The Ancient Statuette
    .target Talen
step
    #completewith AncientStatuette
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>拾取散发绿光的 |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
    #label AncientStatuette
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>交任务誓缚 Statuette
    .accept 1009 >>接受任务《物归己用》 卢泽尔
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    .goto Ashenvale,6.528,13.361
    >>击杀 |cRXP_ENEMY_卢泽尔|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_卢泽尔|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_怒尾侍从|r and |cRXP_ENEMY_怒尾海巫|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_薇丝比娅|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Begin looking for a Blackfathom Deeps group while you complete the next steps. Very soon you'll be running Blackfathom Deeps
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>击杀 |cRXP_ENEMY_Wrathtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔伦|r
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>交任务《 前往熔光镇》 卢泽尔
	.target Talen
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Grind |cRXP_ENEMY_Naga|r while you assemble a group for BFD. Head to BFD once you have a group
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >>前往暴风城大教堂内，与 Blackfathom Deeps
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>击杀 |cRXP_ENEMY_腐根游荡者|r, |cRXP_ENEMY_腐根萨特|r, |cRXP_ENEMY_黑暗深渊智者|r 和 |cRXP_ENEMY_黑暗深渊海潮祭司|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once 对话，NPC在里面 the Instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
    >>|cRXP_WARN_See if anyone in your group can share the quest "Knowledge in the Deeps" from Ironforge with you|r
step
.dungeon BFD
    #completewith Kelris
    >>击杀 |cRXP_ENEMY_Nagas|r 和 |cRXP_ENEMY_Satyrs|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>打开 |cRXP_PICK_Pitted Iron Chest|r 对话 near the area with the turtles. 拾取地上的 it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候塞尔瑞德|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >>接受任务《物归己用》 黑暗深渊中的恶魔
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>击杀 all of the |cRXP_ENEMY_暮光之锤|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>击杀 |cRXP_ENEMY_暮光领主凯尔里斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>击杀 all of the |cRXP_ENEMY_暮光之锤|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>击杀 |cRXP_ENEMY_Nagas|r 和 |cRXP_ENEMY_Satyrs|r。拾取他们的 |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >>Hearth to 阿斯特兰纳，灰谷
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #completewith ZoramStrandTurnin
    .subzone 415 >>前往萨兰纳尔
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩·狼行者|r
	.target Raene Wolfrunner
    .turnin 1023 >>交任务《 前往熔光镇》 莱恩的净化
step
    #optional
    #sticky
    .destroy 5505 >> Destroy |T133741:0|t[Teronis' Journal]. You no longer need it
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>交任务《 前往熔光镇》 星尘废墟
step
    #label ZoramStrandTurnin
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target Shindrell Swiftfire
    .turnin 1008 >>交任务《 前往熔光镇》 佐拉姆海岸
step
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞往黑海岸
    .target Daelyshia
    .zoneskip Ashenvale,1
step
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务《 前往熔光镇》 通缉：莫克迪普！
    .isQuestComplete 4740
step
.dungeon BFD
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 741 >>接受任务《物归己用》 健忘的勘察员
    .target Archaeologist Hollee
step
.dungeon !BFD
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 741 >>接受任务《物归己用》 健忘的勘察员 << !Hunter
    .target Archaeologist Hollee
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 1275 >>交任务《 前往熔光镇》 研究堕落
    .target Gershala Nightwhisper
step
.dungeon BFD
    .isOnQuest 1199,1200
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
    .target Caylais Moonfeather
step << !Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>乘船前往塞拉摩
    .zoneskip Darnassus
step
.dungeon BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << !Hunter
.dungeon !BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾德莉亚|r
    .trainer >>训练你的职业技能
    .target Jandria
step << !Hunter
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step << Hunter
.dungeon BFD
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 942 >>接受任务《物归己用》 健忘的勘察员
step << Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳斯·刃歌|r
    .trainer >>训练你的职业技能
    .target Darnath Bladesinger
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 227 >>学习锤类武器
    .target Ilyenia Moonfire
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银月守卫玛纳杜斯|r 交谈
    .turnin 1199 >>交任务《 前往熔光镇》 暮光之锤的末日
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞尔高姆|r 交谈
    .turnin 1200 >>交任务《 前往熔光镇》 黑暗深渊中的恶魔
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << !Hunter
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
step << Hunter
.dungeon BFD
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
]])