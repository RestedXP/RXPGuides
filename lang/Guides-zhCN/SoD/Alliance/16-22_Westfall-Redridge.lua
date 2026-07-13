if GetLocale() ~= "zhCN" then return end

if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP 联盟 1-20 级
#name 16-17级 西部荒野 探索赛季
#displayname 16-17级 西部荒野
#next 17-22级 赤脊山 探索赛季
#defaultfor !NightElf

step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话 << Alliance
    >>从他那里购买|T133745:0|t|T135956:0|t|cRXP_LOOT_[论述：驱魔人]|r，使用它来训练|T135956:0|t|T135956:0|t[驱魔人] << Paladin
    .collect 226398,1 << Paladin
    .train 415076,1 << Paladin
step
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
    .target 弗伦·长须
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜拉·梅德隆|r对话
    .target Nara Meideros
    .accept 78195 >>接受任务 艾露恩的秘密
step << Human Paladin
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin -2998 >>交任务圣洁之书
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_圣洁之书|r] 来激发任务|r
    .accept 1642 >>接受任务圣洁之书
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1642 >>交任务圣洁之书
    .accept 1643 >>接受任务圣洁之书
    .target 达索瑞恩·拉尔
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯蒂芬妮·特纳|r 对话
    .turnin 1643 >>交任务圣洁之书
    .accept 1644 >>接受任务圣洁之书
    .turnin 1644 >>交任务圣洁之书
    .accept 1780 >>接受任务圣洁之书
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r对话
    .turnin 1780 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
    .accept 1781 >>接受任务圣洁之书
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>与 |cRXP_FRIENDLY_贾森·坦诺姆|r对话
    .turnin 1781 >>交任务圣洁之书
    .target Gazin Tenorm
    .accept 1786 >>接受任务圣洁之书
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜拉·梅德隆|r对话
    .target Nara Meideros
    .trainer >>训练你的职业技能
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
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t|T133738:0|t[魔典：吞噬暗影（等级1）]
    .collect 16357,1
    .target 斯巴克尔
    .train 20387,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务誓缚
    .target 黑暗缚灵者加科因
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈环] |cRXP_WARN_召唤 |r虚空行者|cRXP_ENEMY_|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob 虚空行者
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target 黑暗缚灵者加科因
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务誓缚
step << Priest/Mage/Warlock
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_阿德温·凯伦|r 对话
    .vendor 1312 >>|cRXP_BUY_从她那里购买一个|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_，如果你买得起（35银）|r
    >>|cRXP_BUY_或者，如果拍卖行的价格更便宜，也可以从那里购买|r|T135144:0|t[强效魔法杖]|cRXP_BUY_ |r
    .collect 5208,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    >>|cRXP_WARN_确保你训练|r |T136058:0|t[开锁] |cRXP_WARN_，因为你很快需要它来完成你的潜行者职业任务|r
    .trainer >>训练你的职业技能
    .train 1804 >>学习 |T136058:0|t[开锁]
    .target 夜行者奥斯伯
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入军情7处总部。上楼去找 |cRXP_FRIENDLY_"剃刀"雷吉克|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"剃刀"雷吉克|r对话
    .accept 2281 >>接受任务 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior
    #season 2
    #completewith next
    .gossipoption 109045 >>与公园旅店内的|cRXP_FRIENDLY_丽芙·布拉德福德|r交谈
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>与|cRXP_ENEMY_斯图阿特|r对话，然后击败他。他会在生命值降至0%时昏倒
    .goto Stormwind City,21.213,62.781
    >>如果|cRXP_ENEMY_斯图阿特|r不在那里，等待他刷新
    .skipgossipid 109047
    .skipgossipid 109045
    .skipgossipid 109084
    --.train 425447,1
step << Warrior
    #season 2
    .goto Stormwind City,22.608,64.621
    .use 204716 >>击倒|cRXP_FRIENDLY_斯图阿特|r后，再次与|cRXP_ENEMY_莉芙·布拉德福德|r对话，即可获得 |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1
    .train 425447,1 >>|cRXP_WARN_使用|r |T134419:0|t|T236317:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] |cRXP_WARN_训练|r |T236317:0|t|T236317:0|t[狂乱攻击]
    >>|cRXP_WARN_注意：根据你的等级，这个任务单刷可能会相当困难。如果需要的话，可以找些帮手。|r
    .skipgossip 203478,1
    .target Liv Bradford
    .mob Stuart
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r对话
    >>购买|T135612:0|t|T135612:0|t[大口径短枪]（7.4秒伤），或在拍卖行寻找更好的升级装备
    .collect 3023,1
    .money <0.3771
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.3
step << !Human/!Mage
    #season 1 << Rogue
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 227 >>学习法杖 << Priest/Warlock/Hunter
    .train 201 >>学习单手剑 << Mage/Warlock
    .train 202 >>学习双手剑 << Warrior/Paladin/Hunter
    --.train 5011 >>Train Crossbows << Hunter
    .target 吴平
step << Warrior/Paladin
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>购买1个 |T135353:0|t[普通长剑]（12.6 DPS）或在拍卖行寻找更好的升级
    .target Marda Weller
    .collect 2024,1 --Collect Espadon (1)
    .money <0.6397
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买|T134437:0|t[抗毒药剂] 用于你稍后的 |T132290:0|t[毒药] 职业任务，其余的留着稍后在赤脊山快速交任务 << !Dwarf Rogue
    >>购买以下物品，以便稍后在赤脊山更快地完成任务 << !Rogue/Dwarf Rogue
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134437:0|t[抗毒药剂] << !Dwarf Rogue
    >>|T134172:0|t[巨型血牙野猪头]
    >>|T134028:0|t[硬秃鹫肉]
    >>|T134321:0|t[香脆蜘蛛肉]
    >>抗毒药剂可以通过急救技能使用|T134339:0|t|T134339:0|t[小毒囊]制作 << Rogue !Dwarf
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target 拍卖师亚克森
step << Mage
    #season 2
    .goto StormwindClassic,55.8,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯德雷克·布舍尔|r 对话
    >>检查他是否有|T134830:0|t|T134830:0|t[|cRXP_LOOT_次级治疗药水|r]，如果有货的话就买一些
    .collect 211779,3 >>从他那里购买几个 |T135933:0|t[|cRXP_LOOT_理解魔符|r]
    .target Keldric Boucher
step << Human
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .turnin 6261 >>交任务 杜加尔·朗德瑞克
    .accept 6285 >>接受任务 返回西部荒野
    .target 杜加尔·朗德瑞克
    .isQuestTurnedIn 6281
step << !Human/Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Stormwind >>获取暴风城的飞行路径 << !Human
    .fly Redridge >>飞往赤脊山 << Warlock
    .target 索尔
step << !Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>前往艾尔文森林
    .zoneskip Westfall
    .zoneskip Redridge Mountains
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << !Human !Warlock
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .home >>将你的炉石设置为闪金镇
    .target 旅店老板法雷
step << Mage
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << !Warlock
    .goto 1429/0,73.800,-9465.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .accept 109 >>接受任务 向格里安·斯托曼报到
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>在 |cRXP_PICK_亨兹·法奥克|r 身上使用 |cRXP_FRIENDLY_生命符记|r
>>与 |cRXP_FRIENDLY_亨兹·法奥克|r对话
    .turnin 1786 >>交任务圣洁之书
.target Henze Faulk
    .accept 1787 >>接受任务圣洁之书
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>击杀岛上的|cRXP_ENEMY_迪菲亚巫师|r
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
step
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
    .accept 246 >>接受任务 审时度势
    .target 菲尔顿副队长
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step << !Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>接受任务 马掌
step << Human/Dwarf Paladin
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
step << Gnome Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
step << Gnome Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>前往艾尔文森林
    .zoneskip Westfall
    .isQuestAvailable 153
step << !Human !Paladin !Warlock
    #completewith next
    .hs >>使用炉石返回闪金镇
step << !Human !Paladin
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
	.target 铁匠阿古斯
    .turnin 118 >>交任务 马掌
    .accept 119 >>接受任务 回复弗纳
step << !Human !Paladin
    #completewith next
    .zone Westfall >>前往西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_治安官格里安·斯托曼|r 和 |cRXP_FRIENDLY_丹努文队长|r 对话
    .goto Westfall,56.327,47.520
    .turnin -109 >>交任务 向格里安·斯托曼报到
    .accept 12 >>接受任务 西部荒野人民军
    .target 格里安·斯托曼
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .target 军需官刘易斯
    .goto Westfall,57.00,47.17
    .turnin 6285 >>交任务 返回西部荒野
    .isOnQuest 6285
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .accept 153 >>接受任务 红色皮质面罩
step << Rogue
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    .target 旅店老板希瑟尔
    .home >>将你的炉石设置在西部荒野
step
    >>击杀 |cRXP_ENEMY_迪菲亚捕兽者|r 和 |cRXP_ENEMY_迪菲亚走私者|r。拾取他们的|cRXP_LOOT_红色皮质面罩|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>击杀 |cRXP_ENEMY_迪菲亚抢劫者|r。拾取它们的 |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step << Mage
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸部 - 再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .accept 9 >>接受任务 清理荒野
step
#loop
    .goto Westfall,37.4,50.6,0
    .goto Westfall,44.8,33.6,0
    .goto Westfall,54.0,32.0,0
    .goto Westfall,51.0,22.0,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76,60,0
    >>击杀 看守傀儡。拾取它们的 秋葵|cRXP_ENEMY_ 和 |r灯油|cRXP_LOOT_，你稍后回在任务中需要它们
    >>你可以留在萨尔迪安田地里。如果全部死亡，它们会不断刷新
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5 -- Flask of Oil (5)
    .mob Harvest Watcher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >>交任务 清理荒野
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>交任务 红色皮质面罩
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
	.target 格里安·斯托曼
    .goto Westfall,56.33,47.52
    .turnin 12 >>交任务 西部荒野人民军
    .accept 65 >>接受任务 迪菲亚兄弟会
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Redridge >>飞往 Redridge
    .target 索尔

]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP 联盟 1-20 级
#name 17-22级 赤脊山 探索赛季
#displayname 17-22级 赤脊山
#next RestedXP 联盟 20-30级\22-24级 湿地 探索赛季
#defaultfor !NightElf


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接受任务黑石氏族的威胁
    .target 治安官马瑞斯
    .xp <18,1
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
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .turnin 119 >>交任务 回复弗纳
    .isOnQuest 119
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .accept 124 >>接受任务 豺狼人的乱吠
    .accept 122 >>接受任务 雏龙的鳞片
    .isQuestTurnedIn 119

step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
	.target 所罗门镇长
    .accept 120 >>接受任务 送往暴风城的信
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_码头管理员巴伦|r 对话
	.target 码头管理员巴伦
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >>接受任务卖鱼
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达希|r 对话
    >>|cRXP_FRIENDLY_达希|r |cRXP_WARN_在旅馆里走动|r
	.target Darcy
    .accept 129 >>接受任务 免费的午餐
step << !Rogue
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板布瑞安娜|r 对话
    .target Innkeeper Brianna
    .home >>将你的炉石绑定到湖畔镇
    .isQuestAvailable 20
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_黑衣威利|r 对话
	.target Wiley the Black
    .turnin 65 >>交任务 迪菲亚兄弟会
    .isOnQuest 65
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
    .accept 132 >>接受任务 迪菲亚兄弟会
	.target Wiley the Black
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师布雷纳|r对话
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2281 >>交任务 赤脊山的联络员
    .accept 2282 >>接受任务 奥瑟尔伐木场
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_肖恩|r 对话
	.target 肖恩
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >>接受任务 希拉里的项链
step
#loop
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
    >>打开 |cRXP_PICK_沉没的箱子|r。拾取 |cRXP_LOOT_奥斯洛的工具箱|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头奥斯洛|r 对话
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>交任务 丢失的工具
    .accept 89 >>接受任务 止水湖上的桥
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接受任务黑石氏族的威胁
    .target 治安官马瑞斯
    .xp <18,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉里|r 对话
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>交任务 希拉里的项链
step
    #optional
	#completewith threat1
	>>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .isOnQuest 122
step
    #optional
    #completewith threat1
    >>杀死 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
	.target 卫兵帕克
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>交任务 免费的午餐
    .accept 130 >>接受任务 寻访草药师
step
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>杀死 |cRXP_ENEMY_狼蛛|r。拾取它们的 |cRXP_LOOT_香脆蜘蛛肉|r
    .collect 1081,5,92,1
    .mob Tarantula
step
#loop
    .goto Redridge Mountains,29.49,82.80,0
    .goto Redridge Mountains,32.52,81.78,0
    .goto Redridge Mountains,43.18,72.22,0
    .goto Redridge Mountains,31.13,82.18,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18,45,0
	>>杀死 |cRXP_ENEMY_混血赤脊山豺狼人|r 和 |cRXP_ENEMY_赤脊山偷猎者|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
#label threat1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
	.target 菲尔顿副队长
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>交任务 审时度势
step
    #completewith db1
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
    .dungeon DM << !Human
step
    #optional
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马库斯·乔纳森将军|r 对话
    .turnin 120 >>交任务 送往暴风城的信
    .accept 121 >>接受任务 送往暴风城的信
    .target General Marcus Jonathan
    .isQuestTurnedIn 118
    .dungeon DM << !Human
step
    .accept 167 >>接受任务 我的兄弟……
    .accept 168 >>接受任务 收集记忆
    .goto StormwindClassic,65.438,21.175
    .target 维尔德·蓟草
    .target 沉默的舒尼
    .dungeon DM
step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>与 |cRXP_FRIENDLY_贾森·坦诺姆|r对话
    .turnin 1787 >>交任务圣洁之书
.target Gazin Tenorm
    .accept 1788 >>接受任务圣洁之书
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target 达索瑞恩·拉尔
>>与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r对话
    .turnin 1788 >>交任务圣洁之书
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .accept 2040 >>接受任务 地底突袭
    .target 沉默的舒尼
    .dungeon DM
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r对话
    >>在拍卖行购买一个|T135612:0|t|T135612:0|t[BKP 2700 "执法者"]（9.6秒伤），或者寻找更好的升级装备
    .collect 3024,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
    .dungeon DM << !Human
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    .target Marda Weller
    >>|cRXP_WARN_购买1把|r |T135342:0|t[波刃短剑]
    >>|cRXP_WARN_如果拍卖行有更便宜或更好的装备就购买它|r
    .collect 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .dungeon DM << !Human
step << Warrior/Paladin
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_WARN_如果你有足够的金币，购买一把|r |T135280:0|t[微光重剑] |cRXP_WARN_在21级时装备上|r
    >>|cRXP_WARN_如果你之前一直使用锤类武器，可以购买一把|r |T133044:0|t|T133044:0|t[牢固的木槌] |cRXP_WARN_暂时避免武器技能问题|r
    >>|cRXP_WARN_如果拍卖行有更便宜或更好的装备就购买它|r
    .collect 922,1 --Heavy Spiked Mace (1)
    .collect 924,1 --Ironwood Maul (1)
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .target 冈瑟尔·维勒
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .dungeon DM << !Human
step << Warlock/Priest
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_阿德温·凯伦|r 对话
    .vendor 1312 >>|cRXP_BUY_购买1个|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_如果你有足够的金币|r
    .collect 5210,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .dungeon DM << !Human
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马库斯·乔纳森将军|r对话
    .turnin 120 >>交任务 送往暴风城的信
    .accept 121 >>接受任务 送往暴风城的信
    .target General Marcus Jonathan
    .dungeon DM << !Human
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
	.target 铁匠阿古斯
    .turnin 118 >>交任务 马掌
    .accept 119 >>接受任务 回复弗纳
    .dungeon DM << !Human
step << Human
    .dungeon !DM
    .cooldown item,6948,>120,1
    .hs >>使用炉石回到湖畔镇
    .zoneskip Redridge Mountains
step << Human
#optional
.dungeon !DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往 Redridge
    .target 杜加尔·朗德瑞克
    .zoneskip Redridge Mountains
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接受任务黑石氏族的威胁
    .target 治安官马瑞斯
    .xp <18,1
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .turnin 119 >>交任务 回复弗纳
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .accept 124 >>接受任务 豺狼人的乱吠
    .accept 122 >>接受任务 雏龙的鳞片
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
	.target 所罗门镇长
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>交任务 送往暴风城的信
step
    .goto Redridge Mountains,29.71,44.26
    .target 拜里弗·科纳彻尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r 对话
    .accept 91 >>接受任务所罗门的律法
step
    .goto Redridge Mountains,26.75,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击 |cRXP_FRIENDLY_通缉告示|r
    .accept 180 >>接受任务通缉：范高雷中尉
step
    .goto Redridge Mountains,21.85,46.32
    .target 玛蒂·詹罗斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 130 >>交任务 寻访草药师
    .accept 131 >>接受任务 水仙诉衷情
    .accept 34 >>接受任务不速之客
step
#optional
	#completewith BayingOfGnolls
	>>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step << !Rogue
    #label BayingOfGnolls
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
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    #sticky
    #completewith next
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>击杀|cRXP_ENEMY_赤脊山蛮兵|r和|cRXP_ENEMY_赤脊山秘法师|r，拾取他们的|cRXP_LOOT_铁刺矛|r和|cRXP_LOOT_铁铆钉|r。|cRXP_WARN_在前往奥瑟尔伐木场的途中推进此任务，返回时即可完成|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_站在路径点位置。调整你的镜头和鼠标位置，使你无需移动即可一次性点击 3 个|cRXP_PICK_ |r练习用保险箱|r
    .skill lockpicking,80 >>|cRXP_WARN_在奥瑟尔木场打开地上的 |cRXP_PICK_练习用保险箱|r，直到你的|r |T136058:0|t[开锁] 技能达到 80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery (1)
step << Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>完成击杀 |cRXP_ENEMY_赤脊山蛮兵|r 和 |cRXP_ENEMY_赤脊山秘法师|r。拾取他们的|cRXP_LOOT_铁矛|r 和 |cRXP_LOOT_铁铆钉|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达希|r 对话
    >>|cRXP_FRIENDLY_达希|r |cRXP_WARN_在旅馆里走动|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>交任务 水仙诉衷情
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>交任务 豺狼人的乱吠
    .accept 126 >>接受任务 群山中的嚎叫
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头奥斯洛|r 对话
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 89 >>交任务 止水湖上的桥
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2282 >>交任务 奥瑟尔伐木场
    .target Lucius
step << Rogue
#label xp20
    >>你在这里应该达到20级。如果还没到，就去东边做鱼人任务并刷怪直到升到20级
    .xp 20


----Start of Rogue Poison and Deadmines section----

step << Rogue
    .goto Redridge Mountains,30.6,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
    .zoneskip Westfall
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    >>|cRXP_WARN_从此刻开始，请谨慎管理你的资金。当你到达湿地时，需要预留75银币来解锁一个符文。|r
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    .accept 2360 >>接受任务 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target 马迪亚斯·肖尔大师
step << !Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
step << Rogue
#completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
    .zoneskip Westfall
step << Rogue
.dungeon !DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 132 >>交任务 迪菲亚兄弟会
    .accept 135 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 141 >>交任务 迪菲亚兄弟会
    .accept 142 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >>前往月溪镇
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死 |cRXP_ENEMY_迪菲亚信使|r。拾取他的 |cRXP_LOOT_神秘的信件|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚信使|r 在月溪镇刷新。它沿着月溪镇北面的道路行走，前往金海岸矿洞和詹戈洛德矿洞。如果你在路上看不到它，就在月溪镇等待它刷新|r
    >>|cRXP_WARN_它的刷新时间为4-5分钟|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 142 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_迪菲亚叛徒|r 对话
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_迪菲亚叛徒|r不在，你可能需要等待他刷新|r
    .accept 155 >>接受任务 迪菲亚兄弟会
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>护送 |cRXP_FRIENDLY_迪菲亚叛徒|r 到死亡矿井
    >>|cRXP_WARN_时刻待在|cRXP_FRIENDLY_迪菲亚叛徒|r 身边。在抵达月溪镇时，准备好与 |cRXP_ENEMY_迪菲亚|r 战斗|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 155 >>交任务 迪菲亚兄弟会
    .accept 166 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .accept 214 >>接受任务 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target 哨兵瑞尔
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板（默认按键：V）这样可以在塔内的一些拐角处看到躲在后面的敌人|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    >>|cRXP_WARN_你必须完成这个任务来获取你的|r|T132290:0|t[毒药]
    .turnin 2360 >>交任务马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务 克拉文之塔
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[搜索] |cRXP_ENEMY_丑陋的迪菲亚懒汉|r。拾取 |cRXP_LOOT_迪菲亚塔楼钥匙|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[匕首]|cRXP_WARN_，请为这个任务装备上|r|T135641:0|t[曲木匕首]|cRXP_WARN_ |r
    .use 15396
    .itemcount 15396,1
step << Rogue
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
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_施放 |T136225:0|t[石像形态] ，来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备上你的主武器|r << Rogue
    .turnin 2359 >>交任务 克拉文之塔
    .turnin 135 >>交任务 迪菲亚兄弟会
    .target 马迪亚斯·肖尔大师
step << Rogue
#completewith next
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
    .zoneskip Westfall
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >>现在你应该开始组队准备进入死亡矿井
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
    .isOnQuest 214
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
    .isOnQuest 214
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
    .goto Westfall,56.33,47.52
    .turnin -214 >>交任务 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target 格里安·斯托曼
    .target 哨兵瑞尔
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维尔德·蓟草|r 对话
    .turnin 167 >>交任务 我的兄弟……
    .turnin 168 >>交任务 收集记忆
    .target 维尔德·蓟草
    .dungeon DM
step
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .turnin 2040 >>交任务 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target 沉默的舒尼
    .dungeon DM
step
    .dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往 Redridge
    .target 杜加尔·朗德瑞克
    .zoneskip Redridge Mountains


----End of Rogue Poison and Deadmines section----


step
    #optional
    #completewith orcs
    >>杀死 |cRXP_ENEMY_恐鹫|r。拾取它们的 |cRXP_LOOT_硬秃鹫肉|r
    >>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
    .subzoneskip 997--Render's Valley
step
#completewith next
    >>杀死 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    .goto Redridge Mountains,49.0,70.0
    >>击杀 |cRXP_ENEMY_鱼人巡滩者|r 和 |cRXP_ENEMY_鱼人小招潮者|r。拾取它们的 |cRXP_LOOT_鱼人的鳍|r 和 |cRXP_LOOT_斑点太阳鱼|r
	>>|cRXP_WARN_小心这个区域刷怪很快，|cRXP_ENEMY_鱼人|r 会迅速重生|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step << Warlock
    #season 2
    #sticky
    #label Incinerate
    .goto Redridge Mountains,76.8,82.2
    .train 416015 >>击杀 |cRXP_ENEMY_焚化者加因姆|r |cRXP_WARN_(23级精英)|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_烧尽符文|r]
    .use 211477>>这个符文可能有点难度，但完全可行，只要让加里姆保持恐惧状态就行。你之后做任务会需要这个符文
    .collect 211477,1
    .disablecheckbox
    .unitscan Incinerator Gar'im
step
    #loop
    >>击杀 |cRXP_ENEMY_黑石步兵|r 和 |cRXP_ENEMY_黑石前锋|r。拾取他们的 |cRXP_LOOT_斧|r
	>>|cRXP_WARN_注意 |cRXP_ENEMY_黑石前锋|r 会对你施放|r |T132149:0|t[网]
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .complete 20,1 --Battleworn Axe (10)
    .mob 黑石步兵
	.mob 黑石前锋
step
    #requires Incinerate<< Warlock
    .goto Redridge Mountains,61.37,77.10
    >>杀死 |cRXP_ENEMY_恐鹫|r。拾取它们的 |cRXP_LOOT_硬秃鹫肉|r
    >>击杀 |cRXP_ENEMY_黑龙雏龙|r。拾取它们的 |cRXP_LOOT_腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
step << Rogue
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .xp 22-18500 >>刷怪直到距离22级还差18500点经验
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
step
    #softcore
    .deathskip >>在灵魂医者处死亡并复活。接受复活虚弱效果，接下来一段时间内你不会与任何怪物战斗
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
    .itemcount 3014,10 --Battleworn Axe (10)
    .xp <21.25
step
    #loop
    >>杀死 |cRXP_ENEMY_巨型血牙野猪|r。拾取它们的 |cRXP_LOOT_巨型血牙野猪头|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83,0
    .goto Redridge Mountains,32.25,70.20,0
    .goto Redridge Mountains,31.02,72.14,0
    .collect 2296,5,92,1
    .mob Great Goretusk
step << Rogue
    .xp 22-18500 >>刷怪直到距离22级还差18500经验值
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师布雷纳|r对话
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_码头管理员巴伦|r 对话
	.target 码头管理员巴伦
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>交任务卖鱼
    .accept 150 >>接受任务鱼人偷猎者
    .turnin 150 >>交任务鱼人偷猎者
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗纳·奥斯古|r 对话
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >>交任务 雏龙的鳞片
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
	.target 治安官马瑞斯
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>交任务黑石氏族的威胁
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
	.target 艾蕾娜·斯托姆法瑟
    .fly Stormwind >>飞往暴风城
step << !Mage/Paladin/Warlock
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
step << Mage
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
    .target +Larimaine Purdue
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
	.target 詹妮亚·坎农
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    >>|cRXP_WARN_确保训练后留有75银，稍后需要用它解锁符文。仅购买必要的法术即可|r
    .train 1856 >>|cRXP_WARN_确保你训练了|T132331:0|t|T132331:0|t[消失]。|r |cRXP_WARN_你很快需要用它来解锁一个符文|r
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .target 高阶牧师劳瑞娜
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>进入矿道地铁。乘坐地铁前往铁炉堡
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩
step << Warlock
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor 6382 >>|cRXP_BUY_购买|r |T133738:0|t[魔典：折磨（等级 2）]
    .collect 16346,1
    .disablecheckbox
    .target Jubahl Corpseseeker
    .train 427733,1 --skips if you have a felguard
step << Mage
    .goto Ironforge,25.50,7.04
    >>与 |cRXP_FRIENDLY_贝尔斯塔弗|r 对话
    .train 3562 >>学习 |T135757:0|t[传送：铁炉堡]
    .target 贝尔斯塔弗·风暴之眼
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>前往跳过点。沿途紧贴山体左侧
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_走无伤翻山路线，从丹莫罗翻山前往湿地|r
    >>|cRXP_WARN_如果不自信，每次坠落都吃满食物|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_点击此处作为参考（强烈建议你这样做）|r
    .goto Dun Morogh,60.65,11.38,20 >>小心地从山侧跳下
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_走无伤翻山路线，从丹莫罗翻山前往湿地|r
    >>|cRXP_WARN_在跳向海岸之前，小心|cRXP_ENEMY_斯拉丁|r（稀有怪，如果刷新了的话）|r
    >>|cRXP_WARN_到达海边时小心西边的|cRXP_ENEMY_蓝腮袭击者|r|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_点击此处作为参考（强烈建议你这样做）|r
    .goto Wetlands,12.69,60.97,15 >>将炉石使用回米奈希尔港
    .mob 湿地鳄鱼幼崽
    .mob 蓝腮袭击者
    .unitscan Sludginn
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
]])
