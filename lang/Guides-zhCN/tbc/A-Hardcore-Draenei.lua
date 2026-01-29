if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#name 1-12 Azuremyst Isle
#next 12-14 Darkshore

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格伦|r 对话
    .accept 9279 >>接受任务《物归己用》 你活下来了！
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >>|cRXP_WARN_猎杀 2-3只 |cRXP_ENEMY_峡谷蛾|r 或 |cRXP_ENEMY_暴躁的变异体|r 并获取可卖给商人的垃圾物品(价值 10 铜币以上)|r
    >>|出售垃圾物品 |r
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
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Kore
step << Priest/Mage
    #completewith next
    |cRXP_WARN_Kill |cRXP_ENEMY_峡谷蛾|r and |cRXP_ENEMY_暴躁的变异体|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
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
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
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
	.vendor >> Vendor trash
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
	.accept 9290 >>接受任务《物归己用》 法师训练
	.turnin 9290 >>交任务《 前往熔光镇》 法师训练
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
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
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
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
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude] << Priest
    .train 2052 >> Train |T135929:0|t[Lesser Heal] << Priest
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
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔尼|r 对话
	.accept 9288 >>接受任务《物归己用》 猎人训练
	.turnin 9288 >>交任务《 前往熔光镇》 猎人训练
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗约什|r 对话
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_姆拉|r 对话
	.vendor >> Vendor trash
    >>|cRXP_BUY_Buy 5 stacks of|r |T132382:0|t[Rough Arrows]|cRXP_BUY_from her|r << Hunter
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
    .subzone 3527 >> Return to the Crash Site
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .target Vindicator Aldar
    .turnin 9303 >>交任务《 前往熔光镇》 疫苗
    .accept 9309 >>接受任务《物归己用》 失踪的斥候
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .target Technician Zhanaa
    .turnin 9305 >>交任务《 前往熔光镇》 备用零件
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .target Botanist Taerix
    .turnin 9294 >>交任务《 前往熔光镇》 净化湖水
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    .target Zalduun
    .turnin 9283 >>交任务《 前往熔光镇》 拯救幸存者！
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
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >> Vendor trash
    .target Aurok
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .turnin 9294 >>交任务《 前往熔光镇》 净化湖水
    .target Botanist Taerix
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
    >>击杀 for the |T132319:0|t[|cRXP_LOOT_血精灵计划书|r]
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
    .xp 6-1450 >>击杀 |cRXP_ENEMY_血精灵斥候|r ，直到 you are 1450xp away from level 6 (1350/2800)
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>击杀 |cRXP_ENEMY_血精灵斥候|r ，直到 you are 1230xp away from level 6 (1570/2800)
    .mob Blood Elf Scout
step
    #completewith next
    .subzone 3527 >> Return to the Crash Site
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
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_patrols slightly|r
    .turnin 9283 >>交任务《 前往熔光镇》 拯救幸存者！
    .target Zalduun
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
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r |cRXP_WARN_you see along the way. Skip this step once you get to the top of the river, you'll complete it later|r
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
    >>击杀 for a |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r]
    .use 23678 >>|cRXP_WARN_Use the|r |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r] |cRXP_WARN_to start the quest|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>接受任务《物归己用》 奇怪的发现
    .mob Infected Nightstalker Runt
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >>前往血环堡. 跟随 the arrow to get there safely
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
    .bindlocation 3576
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
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 3044 >> Train |T132218:0|t[Arcane Shot]
    .train 1130 >> Train |T132212:0|t[Hunter's Mark]
    .target Acteon
step << Shaman/Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman/Warrior
    #sticky
    .equip 16,2495 >> |cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >> |cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[Find Minerals]
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
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTE: Soon you will train and level|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshore later. You will need 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r for the quest now and 9 for later. Do NOT vendor them|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_施放|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_on|r |cRXP_FRIENDLY_塔瓦拉|r
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
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_and|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
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
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTE: Soon you will train and level|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshore later. You will need 6 |cRXP_LOOT_Moongraze Stag Tenderloins|r for the quest now and 9 for later. Do NOT vendor them|r    .complete 9463,1 -- Root Trapper (6)
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
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
	.accept 9454 >>接受任务《物归己用》 狩猎月痕鹿
    .turnin 9454 >>交任务《 前往熔光镇》 狩猎月痕鹿
    .accept 10324 >>接受任务《物归己用》 狩猎月痕鹿
    .target Acteon
step
    #completewith TenderloinRecipe
    +|cRXP_WARN_Do NOT vendor the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin]
    >>|cRXP_WARN_You will learn it soon once you've trained|r |T133971:0|t[Cooking]|cRXP_WARN_which is required for a quest in Darkshore later|r
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
    #label TenderloinRecipe
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
    .train 772 >> Train |T132155:0|t[Rend]
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
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
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
    .use 23654 >>|cRXP_WARN_Use the|r |T134325:0|t[Draenei Fishing Net] |cRXP_WARN_on|r |cRXP_PICK_Schools of Red Snapper|r
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
    >>击杀 |cRXP_ENEMY_怒鳞纳迦|r, |cRXP_ENEMY_怒鳞侍从|r and |cRXP_ENEMY_怒鳞海妖|r. Loot them for the |T134462:0|t[|cRXP_LOOT_写满符文的石板|r]
    .use 23759 >>|cRXP_WARN_Use the|r |T134462:0|t[|cRXP_LOOT_写满符文的石板|r] |cRXP_WARN_to start the quest|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Rune Covered Tablet
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
	.hs >>Hearth to 碧蓝岗哨，秘血岛
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .target Exarch Menelaous
    .turnin 9456 >>交任务《 前往熔光镇》 清理夜行豹……
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹达尔|r 对话
    .target Daedal
    .turnin 9473 >>交任务《 前往熔光镇》 备选方案的备选方案
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松部族的阿鲁古|r 对话
    .target Arugoo of the Stillpine
    .turnin 9544 >>交任务《 前往熔光镇》 阿基达的预言
    .accept 9559 >>接受任务《物归己用》 止松要塞
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .target Acteon
    .turnin 9453 >>交任务《 前往熔光镇》 找到艾克提恩！
    .turnin 10324 >>交任务《 前往熔光镇》 狩猎月痕鹿
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
    >>|cRXP_BUY_Buy more stacks of|r |T132382:0|t[Rough Arrows]|cRXP_BUY_from him while waiting for the RP to finish|r << Hunter
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
    >>与 beach
    >>击杀 RP.拾取地上的 him for the |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
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
    .goto Azuremyst Isle,26.33,73.79,15 >> Drop down to the lower level
step << !Hunter
    >>击杀 |cRXP_ENEMY_督军斯雷提兹|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << !Hunter
    .xp 9+5360 >>击杀 ，直到 5360+/6500xp
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides Hollow' cave
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>|cRXP_WARN_Keep an eye out for a|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_While they are in combat, cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>接受任务《物归己用》 非常感谢！
	.unitscan Draenei Youngling
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9515 >>交任务《 前往熔光镇》 督军斯雷提兹
    .target Priestess Kyleen Il'dinare
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target "Cookie" McWeaksauce
step << !Hunter
    .cast 33277 >> |cRXP_WARN_Use the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_to learn the|r |T133971:0|t[Cooking] |cRXP_WARN_recipe|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
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
    .goto Azuremyst Isle,26.33,73.79,15 >> Drop down to the lower level
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
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9515 >>交任务《 前往熔光镇》 督军斯雷提兹
    .target Priestess Kyleen Il'dinare
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target "Cookie" McWeaksauce
step << Hunter
    .cast 33277 >> |cRXP_WARN_Use the|r |T134939:0|t[Recipe: Roasted Moongraze Tenderloin] |cRXP_WARN_to learn the|r |T133971:0|t[Cooking] |cRXP_WARN_recipe|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
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
	.use 23897 >>|cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a|r |cRXP_ENEMY_巨型林地陆行鸟|r
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
	.use 23898 >>|cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a|r |cRXP_ENEMY_夜行豹|r
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
    .destroy 2512 >> Destroy all your |T132382:0|t[Rough Arrows]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾维尔琳|r 对话
    >>|cRXP_BUY_Buy 6 stacks of|r |T132382:0|t[Sharp Arrows]
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
	.cast 1515 >>|cRXP_WARN_施放|r |cRXP_WARN_对[Tame Beast]|cRXP_WARN_on a|r|cRXP_ENEMY_成型的掠食者|r|cRXP_WARN_to tame it|r
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
    .cast 30767 >>点击地上的 |cRXP_ENEMY_死亡掠食者|r
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
	>>击杀 for his |cRXP_LOOT_隐藏|r
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
    .cast 30212 >>点击地上的 |cRXP_ENEMY_赫图尔|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>击杀 for his |cRXP_LOOT_艾什|r
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
    >>击杀 for |T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r]
    .use 23850 >>|cRXP_WARN_使用|r |T134350:0|t[|cRXP_LOOT_古尔弗的尊严|r] |cRXP_WARN_to start the quest|r
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
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古尔弗|r 对话
    .turnin 9564 >>交任务《 前往熔光镇》 古尔弗的尊严
    .turnin 9562 >>交任务《 前往熔光镇》 鱼人……
    .target Gurf
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>前往暴风城大教堂内，与 Bloodmyst Isle
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
    #completewith next
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
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松公主|r 对话
    .accept 9667 >>接受任务《物归己用》 拯救止松公主
    .target Princess Stillpine
step
    .goto Bloodmyst Isle,64.2,76.8
    >>击杀 |cRXP_ENEMY_刺臂酋长|rspawns
    >>击杀 for |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step
    .goto Bloodmyst Isle,68.257,80.999
    >>点击 |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯希尔|r 对话
    .accept 9663 >>接受任务《物归己用》 凯希尔的信使
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>前往血环堡
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r
    >>|cRXP_WARN_Once you get to Blood Watch or if you become dismounted, abandon the quest "The Kessel Run"|r
step
    #optional
    #completewith next
    .subzone 3584 >>前往血环堡
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托菲尔·罗阿|r 对话
    .target Caregiver Topher Loaal
    .accept 9603 >>接受任务《物归己用》 床铺，绷带，以及更多
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松大使欧罗尔格|r 对话
    .turnin 9667 >>交任务《 前往熔光镇》 拯救止松公主
    .target Stillpine Ambassador Olorg
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
    .fp Blood Watch>> Get the Blood Watch flight path
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
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9693 >>交任务《 前往熔光镇》 阿古斯的意义
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9693 >>交任务《 前往熔光镇》 阿古斯的意义
    .accept 9694 >>接受任务《物归己用》 秘血岗哨
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run
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
    >>|cRXP_WARN_Be cautious as |cRXP_ENEMY_炎鹰间谍|r are very strong at this level. Only engage one at a time|r
    >>|cRXP_WARN_Do NOT attempt this quest if you are solo|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话
    .target Vindicator Boros
    .turnin 9694 >>交任务《 前往熔光镇》 秘血岗哨
step
    #completewith ImpactSiteCrystalSample
    .xp 12
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
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Impact Site Crystal|r
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
    .mob Bloodmyst Hatchling
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
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
    *|cRXP_WARN_Follow the road south|r
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松老酋长|r 对话
    .accept 9622 >>接受任务《物归己用》 警告你的人民 
    .target High Chief Stillpine
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
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .turnin 9582 >>交任务《 前往熔光镇》 一人之力
    .accept 10350 >>接受任务《物归己用》 贝霍玛特
    .target Ruada
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .trainer >>训练你的职业技能
    .target Ruada
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .trainer >>训练你的职业技能
    .target Acteon
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target Guvan
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target Tullas
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .turnin 9468 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9461 >>接受任务《物归己用》 火焰的召唤
    .target Tuluun
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .trainer >>训练你的职业技能
    .target Tuluun
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >> |cRXP_WARN_Use the|r |T133473:0|t[Blood Elf Communication] |cRXP_WARN_to start the quest|r
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
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 对话
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Anchorite Fateema
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Otonambusi|r
    >>|cRXP_BUY_买一个|r [Simple Wood] |cRXP_BUY_和一个|r [Flint and Tinder] |cRXP_BUY_从他|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_too from him if needed|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Otonambusi
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9622 >>交任务《 前往熔光镇》 警告你的人民 
    .target Exarch Menelaous
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>再次进入埃索达
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Caregiver Breel|r
    .target Caregiver Breel
    .home >> Set your Hearthstone to The Exodar
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from her or check the Auction House for a better weapon|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >> |cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r |cRXP_BUY_from him or check the Auction House for a better weapon|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135350:0|t[Claymore] |cRXP_BUY_from him|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133477:0|t[Giant Mace] |cRXP_BUY_from her|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >> |cRXP_WARN_Equip the|r |T133477:0|t[Giant Mace]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>Travel up the ramp towards |cRXP_FRIENDLY_韩迪尔|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_韩迪尔|r 对话
    .train 202 >> Train 2h Swords
    .target Handiir
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >> |cRXP_WARN_Equip the|r |T135350:0|t[Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>上楼梯 toward |cRXP_FRIENDLY_贝霍玛特|ron the top floor
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝霍玛特|r 对话
    .turnin 10350 >>交任务《 前往熔光镇》 贝霍玛特
    .target Behomat
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话
    .target Prophet Velen
    .turnin 9461 >>交任务《 前往熔光镇》 火焰的召唤
    .accept 9555 >>接受任务《物归己用》 火焰的召唤
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>前去找 ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .target Farseer Nobundo
    .turnin 9555 >>交任务《 前往熔光镇》 火焰的召唤
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >>离开埃索达
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
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
    +|T133971:0|t[Cook] |cRXP_WARN_the|r |cRXP_LOOT_Moongraze Stag Tenderloins|r |cRXP_WARN_into|r |T134016:0|t[Roasted Moongraze Tenderloin]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
    >>|cRXP_WARN_Level your|r 在等待前往 Darkshore 的船时提升你的[First Aid]|cRXP_WARN_while waiting for the boat|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
]])