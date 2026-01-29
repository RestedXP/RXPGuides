RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 21-24 Stonetalon / The Barrens
#version 7
#subgroup RestedXP Survival Guide 1-30
#next 24-25 Hillsbrad Foothills

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前去找 |cRXP_FRIENDLY_霍苏斯|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前去找 |cRXP_FRIENDLY_霍苏斯|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍苏斯|r
    >>|cRXP_BUY_Buy|r |T134419:0|t[Runes of Teleportation]|cRXP_BUY_from him|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_多拉斯|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_多拉斯|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fp Orgrimmar >>获取塞尔萨玛的飞行路径
    .target Doras
step << !Shaman !Warrior
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r
    .turnin 9626 >>交任务《 前往熔光镇》 面见兽人 << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >>交任务《 前往熔光镇》 面见兽人 << !BloodElf
    .target Thrall
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
    .group
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dawnsinger|r
    .accept 9428 >>接受任务《物归己用》 前往碎木岗哨
    .target Ambassador Dawnsinger
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >>训练你的职业技能
    .target Master Pyreanor
step
    #label MeetingTW
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>接受任务《物归己用》 石爪之灵
    .target Zor Lonetree
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮菲瑞多|r
    .train 1953 >>训练你的职业技能
    .target Pephredo
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_索乌|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔库|r
    .train 14914 >>训练你的职业技能
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .turnin 10794 >>交任务《 前往熔光镇》 碎手盗贼
    .accept 2460 >>接受任务《物归己用》 碎手军礼
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Target |cRXP_FRIENDLY_申苏尔|r to Salute him|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务《 前往熔光镇》 碎手军礼
    .accept 2458 >>接受任务《物归己用》 卧底密探
    .target Shenthul
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r
    .train 1094 >>训练你的职业技能
    .target Grol'dar
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandon Carendin Summons
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gan'rul|r 和 |cRXP_FRIENDLY_卡祖尔|r
    .accept 1507 >>接受任务《物归己用》 噬魂者
    .target +Gan'rul Bloodeye
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >>交任务《 前往熔光镇》 噬魂者
    .accept 1508 >>接受任务《物归己用》 盲眼卡祖尔
    .accept 65601 >> Accept Love Hurts
    .target +Cazul
    .goto Orgrimmar,47.05,46.43
    --TODO: Test if 65601 is available on launch or not until Black Temple release
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >>前去找 |cRXP_FRIENDLY_赞卡沙|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞卡沙|r
    .turnin 1508 >>交任务《 前往熔光镇》 盲眼卡祖尔
    .accept 1509 >>接受任务《物归己用》 多格兰的消息
    .target Zankaja
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >>前去找 |cRXP_FRIENDLY_玛加尔|r
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加尔|r
    .turnin 65601 >> Turn in Love Hurts
    .accept 65610 >> Accept Wish You Were Here
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel 交谈 toward |cRXP_FRIENDLY_索乌|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索乌|r
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 5118 >>训练你的职业技能
    .target Ormak Grimshot
step << Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >>前去找 |cRXP_FRIENDLY_哈纳什|r
step << Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r
    .train 197 >>学习双手斧
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith FlyXroads1
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .target Doras
    .zoneskip The Barrens
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接受任务《物归己用》 复仇的怒火
    .accept 4921 >>接受任务《物归己用》 在战斗中失踪
    .target Mankrik
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务《 前往熔光镇》 遗忘之池
    .accept 877 >>接受任务《物归己用》 死水绿洲
    .target Tonga Runetotem
    .isQuestComplete 870
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>接受任务《物归己用》 死水绿洲
    .target Tonga Runetotem
    .isQuestTurnedIn 870
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sergra|r
    .accept 905 >>接受任务《物归己用》 在迅猛龙的巢穴里
    .target Sergra Darkthorn
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .turnin 1509 >>交任务《 前往熔光镇》 多格兰的消息
    .accept 1510 >>接受任务《物归己用》 多格兰的消息
    .target Gazrog
step
    #label FlyXroads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r
    .accept 3281 >>接受任务《物归己用》 [DEPRECATED] 被偷走的银币
    .target Gazrog
step
    #optional
    #completewith TestSeeds
    >>击杀 |cRXP_ENEMY_暴躁的平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_Horns|r 和 |cRXP_LOOT_乱羽|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>点击地上的 |cRXP_PICK_Bubble Fissure|r 对话
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .subzone 380 >>Return to 十字路口，北贫瘠之地
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tonga|r
    .turnin 877 >>交任务《 前往熔光镇》 死水绿洲
    .accept 880 >>接受任务《物归己用》 变异的生物
    .target Tonga Runetotem
    .dungeon WC
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
    >>击杀 the lake.拾取地上的 them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
    .dungeon WC
step
    #optional
    #completewith LostmyWife
    >>击杀 |cRXP_ENEMY_暴躁的平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith Nest
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_Horns|r 和 |cRXP_LOOT_乱羽|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>击杀 for his |cRXP_LOOT_头部|r
    >>|cRXP_WARN_He has a chance of spawning every time a |cRXP_ENEMY_Kolkar|r is killed|r
    >>|cRXP_WARN_On a highly populated server or fresh launch, your best option is camping his spawnpoint|r
    >>|cRXP_WARN_Skip this step if you cannot get him|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>拾取地上的 the |cRXP_PICK_[DEPRECATED] 被偷走的银币|ron the ground
    .complete 3281,1 --Stolen Silver (1)
step
    .goto The Barrens,52.60,46.10
    >>Click the |cRXP_PICK_Blue Raptor Nest|r. Kill more |cRXP_ENEMY_赤鳞镰爪龙|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Click the |cRXP_PICK_Red Raptor Nest|r. Kill more |cRXP_ENEMY_赤鳞镰爪龙|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Click the |cRXP_PICK_Yellow Raptor Nest|r. Kill more |cRXP_ENEMY_赤鳞镰爪龙|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>杀掉 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血肉模糊的尸体|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>击杀 for a |cRXP_LOOT_Thunder Lizard Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>击杀 for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务《物归己用》 拉克塔曼尼
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>击杀 |cRXP_ENEMY_雷角蜥蜴|r. Loot them for a |cRXP_LOOT_Horn|r. This does not have to be completed now
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >>Travel to 陶拉祖营地，贫瘠之地
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务《 前往熔光镇》 拉克塔曼尼
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接受任务《物归己用》 野猪人的内战
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r 和 |cRXP_FRIENDLY_加兹罗格|r
    .turnin 4921 >>交任务《 前往熔光镇》 在战斗中失踪
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>交任务《 前往熔光镇》 变异的生物
    .accept 1489 >>接受任务《物归己用》 哈缪尔·符文图腾
    .accept 3301 >>接受任务《物归己用》 茉拉·符文图腾
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>交任务《 前往熔光镇》 在迅猛龙的巢穴里
    .accept 3261 >>接受任务《物归己用》 [DEPRECATED in 4.x] 乔恩·星眼
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>交任务《 前往熔光镇》 [DEPRECATED] 被偷走的银币
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r 和 |cRXP_FRIENDLY_加兹罗格|r
    .turnin 4921 >>交任务《 前往熔光镇》 在战斗中失踪
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>交任务《 前往熔光镇》 死水绿洲
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>交任务《 前往熔光镇》 在迅猛龙的巢穴里
    .accept 3261 >>接受任务《物归己用》 [DEPRECATED in 4.x] 乔恩·星眼
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>交任务《 前往熔光镇》 [DEPRECATED] 被偷走的银币
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon !WC
step
    #label Xroadsturnins2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>交任务《 前往熔光镇》 狂热的维罗戈
    .accept 852 >>接受任务《物归己用》 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>接受任务《物归己用》 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith BloodFeeders
    .zone Stonetalon Mountains >>前往暴风城大教堂内，与 Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r 和 |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>交任务《 前往熔光镇》 石爪之灵
    .accept 1062 >>接受任务《物归己用》 地精侵略者
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接受任务《物归己用》 为我的村庄复仇
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >>交任务《 前往熔光镇》 石爪之灵
    .accept 1062 >>接受任务《物归己用》 地精侵略者
    .target +Seereth Stonebreak
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
    >>击杀 the area
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >>交任务《 前往熔光镇》 为我的村庄复仇
    .accept 6629 >>接受任务《物归己用》 杀死格鲁迪格·黑云
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >>接受任务《物归己用》 杀死格鲁迪格·黑云
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith BloodFeeders
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>跟随 the path on the left upward
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 >>交任务《 前往熔光镇》 多格兰的消息
    .accept 1511 >>接受任务《物归己用》 肯兹格拉的伤药
    .target Ken'zigla
step
    #label BloodFeeders
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接受任务《物归己用》 盗窃的蜘蛛
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Travel up the path to the bonfire
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>击杀 |cRXP_ENEMY_格鲁迪格·黑云|r 和 |cRXP_ENEMY_恐怖图腾蛮兵|r
    >>|cRXP_WARN_Make sure you kill all six|r |cRXP_ENEMY_恐怖图腾蛮兵|r |cRXP_WARN_before starting the quest inside|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >>接受任务《物归己用》 保护卡雅
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escort |cRXP_FRIENDLY_Kaya|r和 stay close to her
    >>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn when you reach the bonfire in Camp Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>击杀 every |cRXP_ENEMY_深苔爬行者|ryou see
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>点击地上的 |cRXP_PICK_Wanted Poster|r
    .accept 6284 >>接受任务《物归己用》 贝瑟莱斯
step
    #completewith Besseleth1
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r 和 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #completewith next
    >>拾取地上的 the |cRXP_PICK_蜘蛛卵|rnear the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>击杀 for for her |cRXP_LOOT_利牙|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>击杀 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >>前去找 |cRXP_FRIENDLY_其兹|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1483 >>交任务《 前往熔光镇》 [DEPRECATED] 菲兹克斯
    .accept 1093 >>接受任务《物归己用》 超级收割机6000
    .target Ziz Fizziks
step
    #completewith BluePrints
    >>拾取地上的 the |cRXP_PICK_蜘蛛卵|rnear the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
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
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>击杀 |cRXP_ENEMY_风险投资公司操作员|r。拾取他们的 |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
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
    .mob Venture Co. Logger
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
    >>拾取地上的 the |cRXP_PICK_蜘蛛卵|rnear the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Deepmoss Eggs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1093 >>交任务《 前往熔光镇》 超级收割机6000
    .accept 1094 >>接受任务《物归己用》 新的指示
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>杀掉 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_Save any|r |T134339:0|t[Small Venom Sacs] |cRXP_WARN_you loot|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 768 >>训练你的职业技能
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 5221 >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step
    #completewith next
    .hs >>Hearth to 陶拉祖营地，贫瘠之地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Byula
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务《 前往熔光镇》 [DEPRECATED in 4.x] 乔恩·星眼
    .accept 882 >>接受任务《物归己用》 伊沙姆哈尔
    .target Jorn Skyseer
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>交任务《 前往熔光镇》 肯兹格拉的伤药
    .accept 1515 >>接受任务《物归己用》 多格兰之囚
    .target Grunt Logmar
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接受任务《物归己用》 野猪人的内战
    .target Mangletooth
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_Bristleback Quillboars|r。拾取他们的 |cRXP_LOOT_獠牙|r
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_血岩碎片|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>交任务《 前往熔光镇》 多格兰之囚
    .accept 1512 >>接受任务《物归己用》 爱的礼物
    .target Grunt Dogran
step
    #loop
    .goto The Barrens,45.16,53.98,0
    .goto The Barrens,44.85,51.73,0
    .goto The Barrens,43.32,48.08,0
    .goto The Barrens,40.91,45.33,0
    .goto The Barrens,43.40,52.22,0
    .goto The Barrens,43.00,55.21,0
    .goto The Barrens,45.16,53.98,60,0
    .goto The Barrens,44.85,51.73,60,0
    .goto The Barrens,43.32,48.08,60,0
    .goto The Barrens,40.91,45.33,60,0
    .goto The Barrens,43.11,48.70,60,0
    .goto The Barrens,43.40,52.22,60,0
    .goto The Barrens,43.00,55.21,60,0
    >>击杀 |cRXP_ENEMY_Bristleback Quillboars|r。拾取他们的 |cRXP_LOOT_獠牙|r
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_血岩碎片|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_暴躁的平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>击杀 for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>击杀 |cRXP_ENEMY_暴躁的平原陆行鸟|r。拾取他们的 |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    .goto The Barrens,44.55,59.27
    >>击杀 for a |T134128:0|t[|cRXP_LOOT_血岩碎片|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .turnin 878 >>交任务《 前往熔光镇》 野猪人的内战
    .accept 5052 >>接受任务《物归己用》 阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务《 前往熔光镇》 阿迦玛甘的血岩碎片
    .target Mangletooth
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .aura 16618 >>|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_血岩碎片|r |cRXP_WARN_to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_碎牙|r
    >>|cRXP_WARN_Skip this step if you have the Thunder Bluff flight path|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 6382 >>接受任务《物归己用》 灰谷狩猎
    .target Jorn Skyseer
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Travel into Mulgore
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << !Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将你的炉石设置为暮色森林 Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>学习锤类武器
    .target Ansekhwa
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往暴风城大教堂内，与 the Elder Rise
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>交任务《 前往熔光镇》 哈缪尔·符文图腾
    .accept 1490 >>接受任务《物归己用》 纳拉·蛮鬃
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>交任务《 前往熔光镇》 纳拉·蛮鬃
    .accept 914 >>接受任务《物归己用》 尖牙德鲁伊
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .trainer >>训练你的职业技能
    .accept 27 >>接受任务《物归己用》 必修的课程
    .target Turak Runetotem
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Travel to the Spirit Rise 和 enter the pools of vision
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_She patrols around|r
    .accept 264 >>Until Death Do Us Part
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zamah|r
    .accept 962 >>接受任务《物归己用》 毒蛇花
    .target Apothecary Zamah
    .dungeon WC
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 14914 >>训练你的职业技能
    .target Miles Welsh
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 8103 >>训练你的职业技能
    .target Miles Welsh
    .xp <22,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 12051 >>训练你的职业技能
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 2138 >>训练你的职业技能
    .target Archmage Shymm
    .xp <22,1
step
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_She patrols around|r
    .accept 264 >>Until Death Do Us Part
    .target Clarice Foster
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 2645 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 8498 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>接受任务《物归己用》 水之召唤
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_制造|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill is 80 or higher|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 80 skill|r
    .train 3277 >> Train |T133684:0|t[Wool Bandage]
    .train 7934 >> Train |T134437:0|t[Anti-Venom] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_制造|r |T134437:0|t[Anti-Venom] |cRXP_WARN_if you found any|r |T134339:0|t[Small Venom Sacs]
    >>|cRXP_WARN_Save them for later|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将你的炉石设置为暮色森林 Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>前往暴风城大教堂内，与 the Hunter Rise
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>接受任务《物归己用》 钢齿土狼
    .target Melor Stonehoof
    --TODO: Beta check if this quest can't be accepted without doing 1130 first
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 5118 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >>训练你的宠物技能
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Torm|r
    .train 845 >>训练你的职业技能
    .accept 1823 >>接受任务《物归己用》 和鲁迦交谈
    .target Torm Ragetotem
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >>接受任务《物归己用》 神圣之火
    .target Zangen Stonehoof
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Tal
    .zoneskip The Barrens
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_Mebok|r
    .turnin 1094 >>交任务《 前往熔光镇》 新的指示
    .accept 1095 >>接受任务《物归己用》 新的指示
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务《 前往熔光镇》 一定是因为角
    .turnin 1069 >>交任务《 前往熔光镇》 [DEPRECATED] 深苔蜘蛛的卵
    .accept 1491 >>接受任务《物归己用》 智慧饮料
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r
    .home >>将你的炉石设置为夜色镇
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉利克斯|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_强化锁甲短裤|r] from him if it's up
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克斯宾德|r
    .vendor >>Buy |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] from him if they're up
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    |cRXP_WARN_Equip the|r |T134583:0|t[|cRXP_FRIENDLY_强化锁甲短裤|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    |cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>交任务《 前往熔光镇》 老陈的空酒桶
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Rogue
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
    .skill lockpicking,70,1
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Now you should be looking for a group to Wailing Caverns
    .dungeon WC
step
    #completewith next
    >>击杀 any |cRXP_ENEMY_Zhevra|r.拾取地上的 it for a |cRXP_LOOT_新鲜的斑马肉|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>使用炮台来击沉从东方驶来的小艇 the |T134368:0|t[|cRXP_LOOT_新鲜的斑马肉|r] at the dead tree to summon |cRXP_ENEMY_伊沙姆哈尔|r. Kill and loot him for his |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_The Carcass only has a 30 minute duration!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r
    .turnin 899 >>交任务《 前往熔光镇》 复仇的怒火
    .target Mankrik
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r
    .accept 868 >>接受任务《物归己用》 蝎卵
    .target Korran
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_Destroy the remaining|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_as they're no longer needed|r
step
    #completewith IshamuhaleTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .subzoneskip 378
    .target Devrak
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务《 前往熔光镇》 伊沙姆哈尔
    .accept 907 >>接受任务《物归己用》 被激怒的雷霆蜥蜴
    .turnin 883 >>交任务《 前往熔光镇》 拉克塔曼尼
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务《 前往熔光镇》 伊沙姆哈尔
    .accept 907 >>接受任务《物归己用》 被激怒的雷霆蜥蜴
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>击杀 for |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务《物归己用》 奥瓦坦卡
    .use 5102
    .unitscan Owatanka
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
    >>击杀 |cRXP_ENEMY_Thunder Lizards|r。拾取他们的 |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>交任务《 前往熔光镇》 奥瓦坦卡
    .turnin 907 >>交任务《 前往熔光镇》 被激怒的雷霆蜥蜴
    .accept 913 >>接受任务《物归己用》 雷鹰的嘶鸣
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>交任务《 前往熔光镇》 被激怒的雷霆蜥蜴
    .accept 913 >>接受任务《物归己用》 雷鹰的嘶鸣
    .target Jorn Skyseer
step
    #completewith next
    >>击杀 for |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]
    >>|cRXP_WARN_Use the |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step for now if you can't find him|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务《物归己用》 奥瓦坦卡
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>击杀 a |cRXP_ENEMY_雷鹰雏鸟|ror a |cRXP_ENEMY_雷鹰破云者|r.拾取地上的 it for its |cRXP_LOOT_Thunderhawk Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务《 前往熔光镇》 奥瓦坦卡
    .turnin 913 >>交任务《 前往熔光镇》 雷鹰的嘶鸣
    .accept 874 >>接受任务《物归己用》 玛伦·星眼
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务《 前往熔光镇》 雷鹰的嘶鸣
    .accept 874 >>接受任务《物归己用》 玛伦·星眼
    .target Jorn Skyseer
step
    #loop
    #label Hezrul
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
    >>Find &kill |cRXP_ENEMY_赫兹鲁尔·血印|r.拾取地上的 him for his |cRXP_LOOT_头部|r
    >>|cRXP_WARN_He patrols around the lake|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >>前往暴风城大教堂内，与 Wailing Caverns
    .subzoneskip 718
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Run up the mountain at the Wailing Caverns meeting stone
    >>|cRXP_WARN_Follow the arrow closely to reach the hidden cave|r
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .accept 1486 >>接受任务《物归己用》 变异皮革
    .target Nalpak
    .maxlevel 22
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .accept 1486 >>接受任务《物归己用》 变异皮革
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>接受任务《物归己用》 清除变异者
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_毒蛇花|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_毒蛇花|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>击杀 |cRXP_ENEMY_Deviate Beasts|r。拾取他们的 |cRXP_LOOT_隐藏|r
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
step
    #completewith EnterWC
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
step
    #label MadMagg
    #loop
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.90,55.43,30,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .maxlevel 23
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >>进入 WC Instance portal. Zone in
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_毒蛇花|r |cRXP_WARN_for everybody|r
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_毒蛇花|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|ron the ground
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
    .dungeon WC
step
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r 和 |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>击杀 |cRXP_ENEMY_考布莱恩|r, |cRXP_ENEMY_安娜科德拉|r, |cRXP_ENEMY_皮萨斯|r 和 |cRXP_ENEMY_瑟芬迪斯|r。拾取他们的 |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the entrance of Wailing Caverns. Escort him safely to |cRXP_FRIENDLY_纳拉雷克斯|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Once you have reached |cRXP_FRIENDLY_纳拉雷克斯|r you will get attack by two waves of enemies and finally by |cRXP_ENEMY_吞噬者穆坦努斯|r
    >>Kill him and loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] and use it to start the quest
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >>接受任务《物归己用》 发光的碎片
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r 和 |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_The rest of these quests can be finished outside of the wailing caverns instance portal|r
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>拾取地上的 the |cRXP_PICK_毒蛇花|ron the ground
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>拾取地上的 the |cRXP_PICK_毒蛇花|ron the ground
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>击杀 |cRXP_ENEMY_Deviate Beasts|r。拾取他们的 |cRXP_LOOT_隐藏|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Devouring Ectoplasm
    .isOnQuest 1486
    .maxlevel 23
    .dungeon !WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>击杀 |cRXP_ENEMY_Deviate Beasts|r。拾取他们的 |cRXP_LOOT_隐藏|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>击杀 |cRXP_ENEMY_Ectoplasms|r。拾取他们的 |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>拾取地上的 the |cRXP_PICK_毒蛇花|ron the ground
    >>|cRXP_WARN_施放|r |T133939:0|t[Find Herbs] |cRXP_WARN_to see them on your minimap|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>拾取地上的 the |cRXP_PICK_毒蛇花|ron the ground
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >>Hearth to 棘齿城，北贫瘠之地
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Wailing Caverns|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Wailing Caverns to ghetto Hearth back to Ratchet|r
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>交任务《 前往熔光镇》 智慧饮料
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Travel up the mountain
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >>交任务《 前往熔光镇》 发光的碎片
    .accept 3369 >>接受任务《物归己用》 在噩梦中
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falla|r
    .accept 3369 >>接受任务《物归己用》 在噩梦中
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄布鲁|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1487 >>交任务《 前往熔光镇》 清除变异者
    .target Ebru
    .isQuestComplete 1487
step
    #label WCTurnins
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >>交任务《 前往熔光镇》 变异皮革
    .target Nalpak
    .isQuestComplete 1486
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>交任务《 前往熔光镇》 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>接受任务《物归己用》 人马无双！
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
    .group 2
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>击杀 .拾取地上的 the |cRXP_PICK_旗帜|rthat he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
    .group 2
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>交任务《 前往熔光镇》 人马无双！
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >>前往暴风城大教堂内，与 Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r 和 |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>交任务《 前往熔光镇》 地精侵略者
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接受任务《物归己用》 巫婆长老
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务《 前往熔光镇》 杀死格鲁迪格·黑云
    .turnin 6523 >>交任务《 前往熔光镇》 保护卡雅
    .accept 6401 >>接受任务《物归己用》 卡雅还活着
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r 和 |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>交任务《 前往熔光镇》 地精侵略者
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接受任务《物归己用》 巫婆长老
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务《 前往熔光镇》 杀死格鲁迪格·黑云
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r 和 |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>交任务《 前往熔光镇》 地精侵略者
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接受任务《物归己用》 巫婆长老
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>交任务《 前往熔光镇》 保护卡雅
    .accept 6401 >>接受任务《物归己用》 卡雅还活着
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>交任务《 前往熔光镇》 地精侵略者
    .timer 4,Goblin Invaders RP
    .accept 1063 >>接受任务《物归己用》 巫婆长老
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>跟随 the path on the left upward
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务《 前往熔光镇》 盗窃的蜘蛛
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Travel to 烈日石居，石爪山脉
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_基达|r on the second floor of the inn
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_and|r |T134413:0|t[Liferoot]|cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >>接受任务《物归己用》 召回卫兵
    .target Maggran Earthbinder
    .xp <23,1
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>交任务《 前往熔光镇》 贝瑟莱斯
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>交任务《 前往熔光镇》 卡雅还活着
    .target Tammra Windfield
    .isOnQuest 6401
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔姆|r
    .fp Sun Rock Retreat >>Get the Sun Rock Retreat flight path
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the right
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接受任务《物归己用》 帮助耶努萨克雷
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1095 >>交任务《 前往熔光镇》 新的指示
    .target Ziz Fizziks
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>进入 Talondeep Path
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>前去找 the Zoram'gar Outpost
    .subzoneskip 2897
    >>|cRXP_WARN_Make sure to avoid Astranaar guards en route. Follow the waypoint for safety|r
    .unitscan Astranaar Sentinel
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r
    .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
    .target Andruk
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_米苏瓦|r 和 |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6562 >>交任务《 前往熔光镇》 帮助耶努萨克雷
    .accept 6563 >>接受任务《物归己用》 阿库麦尔的精华
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接受任务《物归己用》 蓟皮熊怪的麻烦
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接受任务《物归己用》 巨魔符咒
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接受任务《物归己用》 佐拉姆海岸的纳迦
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r
    >>|cRXP_WARN_This will start an escort quest. Be VERY careful! |cRXP_ENEMY_Vorsha|r hits very hard|r
    .accept 6641,1 >>接受任务《物归己用》 鞭笞者沃尔沙
    .target Muglash
    .group 2
step
    #completewith next
    >>击杀 |cRXP_ENEMY_Wraithtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
    .group 0
step
    .goto Ashenvale,9.63,27.63
    >>点击地上的 get there
    >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits very hard|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .group 2
    .mob Vorsha the Lasher
step
    #loop
    .goto Ashenvale,10.86,26.99,0
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
    >>击杀 |cRXP_ENEMY_Wraithtail Nagas|r。拾取他们的 |cRXP_LOOT_头部|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>前往暴风城大教堂内，与 the entrance of Blackfathom Deeps
step
    #completewith next
    >>拾取地上的 
    .complete 6563,1 --Sapphire of Aku'Mai (20)
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
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务《物归己用》 上古之神的仆从
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #label Sapphires
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
    >>拾取地上的 
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #completewith Zoram2
    .subzone 2897 >>前往暴风城大教堂内，与 Zoram''gar Outpost
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战歌信使|r
    .turnin 6641 >>交任务《 前往熔光镇》 鞭笞者沃尔沙
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6442 >>交任务《 前往熔光镇》 佐拉姆海岸的纳迦
    .target Marukai
    .isQuestComplete 6641
step
    #label Zoram2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务《 前往熔光镇》 阿库麦尔的精华
    .turnin 6564 >>交任务《 前往熔光镇》 上古之神的仆从
    .target Je'neu Sancrea
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >>交任务《 前往熔光镇》 必修的课程
    .accept 28 >>接受任务《物归己用》 湖中试炼
    .target Dendrite Starblaze
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 768 >>训练你的职业技能
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1075 >>训练你的职业技能
    .target Loganaar
    .xp <22,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>拾取地上的 the |cRXP_PICK_神殿灵珠容器|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_神殿灵珠|r]
    >>|cRXP_WARN_Do not go underwater untill you arive right above the Bauble|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 30,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r
    .turnin 28 >>交任务《 前往熔光镇》 湖中试炼
    .accept 30 >>接受任务《物归己用》 海狮试炼
    .target Tajarri
step
    #completewith JourneytoTM
    .hs >>Hearth to 雷霆崖，莫高雷
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往暴风城大教堂内，与 the Elder Rise
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>交任务《 前往熔光镇》 巫婆长老
    .accept 1064 >>接受任务《物归己用》 [DEPRECATED] 被遗忘者的援助
    .timer 6,The Elder Crone RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>交任务《 前往熔光镇》 尖牙德鲁伊
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>交任务《 前往熔光镇》 在噩梦中
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision
    .turnin 1064 >>交任务《 前往熔光镇》 [DEPRECATED] 被遗忘者的援助
    .accept 1065 >>Accept Journey to Tarren Mill
    .target Apothecary Zamah
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision
    .turnin 962 >>交任务《 前往熔光镇》 毒蛇花
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将你的炉石设置为暮色森林 Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    --.dungeon WC
step
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Tal
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>交任务《 前往熔光镇》 智慧饮料
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >>交任务《 前往熔光镇》 港口的麻烦
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r 和 |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 1529 >>交任务《 前往熔光镇》 水之召唤
    .accept 1530 >>接受任务《物归己用》 水之召唤
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r 和 |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 1528 >>交任务《 前往熔光镇》 水之召唤
    .accept 1530 >>接受任务《物归己用》 水之召唤
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r 和 |cRXP_FRIENDLY_玛伦·星眼|r
    .accept 1530 >>接受任务《物归己用》 水之召唤
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r 和 |cRXP_FRIENDLY_玛伦·星眼|r
    .accept 1530 >>接受任务《物归己用》 水之召唤
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Bragok
    .subzoneskip 378
step << skip --Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1530 >>交任务《 前往熔光镇》 水之召唤
    .accept 1535 >>接受任务《物归己用》 水之召唤
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Fill your|r |T132825:0|t[Empty Brown Waterskin] |cRXP_WARN_in the watering hole below Brine's hut|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1535 >>交任务《 前往熔光镇》 水之召唤
    .accept 1536 >>接受任务《物归己用》 水之召唤
    .target Brine
step << Shaman
    #completewith next
    .hs >>Hearth to 陶拉祖营地，贫瘠之地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Travel back to Camp Taurajo
    .subzoneskip 178
    .cooldown item,6948,<0
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Druid !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Bragok
    .zoneskip Orgrimmar
    --.dungeon !WC
step << !Shaman
    #optional
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Tal
    .zoneskip Thunder Bluff,1
    .zoneskip Orgrimmar
    --.dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>交任务《 前往熔光镇》 爱的礼物
    .accept 1513 >>接受任务《物归己用》 誓缚
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_使用|r |T133290:0|t[Dogran's Pendant] |cRXP_WARN_at the Summoning Circle|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_魅魔|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>交任务《 前往熔光镇》 誓缚
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 6202 >>训练你的职业技能
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 6223 >>训练你的职业技能
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡雷斯|r|cRXP_BUY_. Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you do not have a dagger|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .train 8676 >> Train |T132282:0|t[Ambush]
    .train 1943 >> Train |T132302:0|t[Rupture]
    .train 1856 >> Train |T132331:0|t[Vanish]
    .train 1725 >> Train |T132289:0|t[Distract]
    .train 1785 >> Train |T132320:0|t[Stealth Rank 2]
    .accept 2460 >>接受任务《物归己用》 碎手军礼
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>After |cRXP_FRIENDLY_申苏尔|r does his salute, type /Salute while targeting him
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 >>交任务《 前往熔光镇》 碎手军礼
    .accept 2458 >>接受任务《物归己用》 卧底密探
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 2138 >>训练你的职业技能
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 2121 >>训练你的职业技能
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_索乌|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 8103 >>训练你的职业技能
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 3747 >>训练你的职业技能
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Enter The Barrens through the western Exit
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >>前往暴风城大教堂内，与 the Sludge Ven
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>拾取地上的 the |cRXP_PICK_Strange Lockbox|rin the water for the |T133443:0|t[|cRXP_LOOT_水兽敏捷坠饰|r]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	Target |cRXP_FRIENDLY_工头费苏勒|r, then use your |T134536:0|t[Flare Gun] TWICE and type /Salute
    >>|cRXP_WARN_Be careful! Do NOT approach him until he becomes friendly or he will attack you!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_工头费苏勒|r
    .turnin 2458 >>交任务《 前往熔光镇》 卧底密探
    .accept 2478 >>接受任务《物归己用》 基本不可能的任务
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>使用炮台来击沉从东方驶来的小艇 |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_工头希里克斯|r for his |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Each mob here will take increased damage to certain abilities|r
    >>使用炮台来击沉从东方驶来的小艇 |T132282:0|t[Ambush] on the |cRXP_ENEMY_变异风险投资公司工人|r
    >>使用炮台来击沉从东方驶来的小艇 |T132302:0|t[Rupture] on the |cRXP_ENEMY_风险投资公司巡逻员|r
    >>使用炮台来击沉从东方驶来的小艇 |T132292:0|t[Eviscerate] on the |cRXP_ENEMY_风险投资公司看守|r once (1 combo point)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Run into the Rogue Tower 和 kill |cRXP_ENEMY_Drones|r,|cRXP_ENEMY_Patrollers|r和 
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>At the top of the tower you'll find |cRXP_ENEMY_Gallywix|r. Loot him for his |cRXP_LOOT_头部|r
    >>|cRXP_WARN_使用|r |T132282:0|t[Ambush] |cRXP_WARN_to reduce his HP to half. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and use|r |T136205:0|t[Evasion]
	>>|cRXP_WARN_Remember to use a Potion and|r |T132819:0|t[Thistle Tea] |cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Use your lock picking to open |cRXP_PICK_Gallywix's Lockbox|r & loot the |cRXP_LOOT_Mixture|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r,or run to Orgrimmar through the western entrance
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Travel to Orgrimmar through the Western entrance
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 >>交任务《 前往熔光镇》 基本不可能的任务
    .accept 2479 >>接受任务《物归己用》 希诺特的帮助
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 8498 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 905 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 6192 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 5308 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 14323 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 14262 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r
    .train 24558 >>训练你的宠物技能
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,493,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_If you have any|r |T134437:0|t[Anti-Venom]|cRXP_WARN_, use one to cure yourself of|r |T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Delete the|r |T134536:0|t[Flare Gun] |cRXP_WARN_from your bags, as it's no longer needed|r
    .destroy 8066 >>|cRXP_WARN_删除|r |T134374:0|t[Fizzule's Whistle] |cRXP_WARN_from your bags, as it's no longer needed|r
step << skip --!Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .home >>将你的炉石设置为铁炉堡
	.target Innkeeper Gryshka
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step << !Mage
    .goto Orgrimmar,49.1,94.5,30 >>Exit Orgrimmar
    .zoneskip Durotar
step
    #optional
    #label BarrensEnd
step
    #optional
    .abandon 1486,1487,914
    .dungeon WC
    --1486 Deviate Hides
    --1487 Deviate Eradication
    --914 Leaders of the Fang

    --TODO:
    --HS to TB after Hillsbrad > turnins/training > fly South Barrens instead of ORG > Ashenvale

]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 24-25 Hillsbrad Foothills
#version 7
#subgroup RestedXP Survival Guide 1-30
#next 25-27 South Barrens

step << !Mage
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Exit Orgrimmar
    .zoneskip Durotar
step << !Mage
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .dungeon SFK
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .dungeon SFK
step << Mage
    #completewith JourneytoHillsbrad
    .cast 3563 >>Cast |T135766:0|t[Teleport: Undercity]
    .zoneskip Undercity
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获得塔纳利斯飞行路径
    .target Michael Garrett
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>接受任务《物归己用》 乌尔之书
    .target Keeper Bel'dugur
    .dungeon SFK
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Silverpine Forest
    .dungeon SFK << !Mage
step << Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Silverpine Forest
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >>前往 Auberdine Forest
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >> Travel North East toward the Great Sea
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>拾取地上的 the |cRXP_PICK_Strange Lockbox|rin the water for the |T133442:0|t[|cRXP_LOOT_Half Pendant of Aquatic Endurance|r]
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith next
    .subzone 228 >>Travel to 瑟伯切尔，银松森林
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Get The Sepulcher flight path
    .target Karos Razok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Renferrel|r 和 |cRXP_FRIENDLY_姆拉|r
    .accept 493 >>接受任务《物归己用》 前往希尔斯布莱德丘陵
    .target +Apothecary Renferrel
    .goto Silverpine Forest,42.90,40.86
    .turnin 3301 >>交任务《 前往熔光镇》 茉拉·符文图腾
    .target +Mura Runetotem
    .goto Silverpine Forest,42.90,41.99
    .isOnQuest 3301
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Renferrel|r
    .accept 493 >>接受任务《物归己用》 前往希尔斯布莱德丘陵
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,44.18,42.68
    >>Interact with |cRXP_PICK_Yuriv's Tombstone|r on the ground
    .turnin 264 >>交任务《 前往熔光镇》 至死方休
    .target Clarice Foster
    .isOnQuest 264
step
    #completewith next
    .zone Hillsbrad Foothills >>前往暴风城大教堂内，与 Hillsbrad Foothills
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵哨兵莱什|r
    .accept 494 >>接受任务《物归己用》 [DEPRECATED] 进攻的时机
    .target Deathstalker Lesh
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to 塔伦米尔，希尔斯布莱德
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞斯|r
    .fp Tarren Mill>>获得塔纳利斯飞行路径
    .target Zarise
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hinott|r
    .turnin 2479 >>交任务《 前往熔光镇》 希诺特的帮助
    .accept 2480 >>接受任务《物归己用》 希诺特的帮助
    .timer 30,Hinott's Assistance RP
    .target Serge Hinott
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>等待 the cure
    .complete 2480,1 --Cure Completed (1)
step << Rogue  
    .goto Hillsbrad Foothills,61.64,19.19 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hinott|r
    .turnin 2480 >>交任务《 前往熔光镇》 希诺特的帮助 
    .target Serge Hinott
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>|cRXP_WARN_使用|r |T134807:0|t[Hinott's Oil] |cRXP_WARN_to cure yourself of the|r |T136230:0|t[Touch of Zanzil]
step << Rogue    
    #completewith TarrenMillPickups
    >>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons] 
    .collect 6947,20,1067,1 --Collect Instant Poison (20)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师林度恩|r
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
    .turnin 493 >>交任务《 前往熔光镇》 前往希尔斯布莱德丘陵
    .accept 496 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .accept 501 >>接受任务《物归己用》 [DEPRECATED] 镇魂之药
    .target Apothecary Lydon
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>|cRXP_WARN_Use the|r |T132829:0|t[Empty Red Waterskin] |cRXP_WARN_at the well in the middle of Tarren Mill|r
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高级执行官达萨利亚|r
    .turnin 494 >>交任务《 前往熔光镇》 [DEPRECATED] 进攻的时机
    .accept 527 >>接受任务《物归己用》 [DEPRECATED] 希尔斯布莱德之战
    .target High Executor Darthalia
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Duskingdawn|r
    .turnin 9425 >>交任务《 前往熔光镇》 前往塔伦米尔
    .target Advisor Duskingdawn
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>点击地上的 |cRXP_PICK_Wanted Poster|r
    .accept 549 >>接受任务《物归己用》 [DEPRECATED] 通缉：辛迪加成员
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁斯克|r
    .accept 498 >>接受任务《物归己用》 [DEPRECATED] 拯救行动
    .target Krusk
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_from him|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>点击地上的 |cRXP_PICK_Wanted Poster|r
    .accept 567 >> Accept Dangerous!
step << skip --Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r
    .home >>将你的炉石设置为夜色镇 Mill
	.target Innkeeper Shay
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r 
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r
    .vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r 
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r
    .stable >>Stable your pet.You will tame a |cRXP_ENEMY_Gray Bear|r和 a |cRXP_ENEMY_Forest Most Creeper|rshortly
    .target Theodore Mont Claire
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Gray Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
    .train 17263 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Forest Most Creeper|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 3)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .mob Gray Bear
    .mob Forest Most Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r
    .stable >>Abandon the |cRXP_ENEMY_Gray Bear|ror |cRXP_ENEMY_Forest Most Creeper|r和 retrieve your regular pet
    .target Theodore Mont Claire
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>|cRXP_WARN_Use the|r |T132273:0|t[Instant Poison] |cRXP_WARN_on your weapons|r
    .itemcount 6947,2
step
	#completewith next
    >>击杀 route.拾取地上的 them for their |cRXP_LOOT_Tongues|r和 
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_被驯养的食苔蛛|r |cRXP_WARN_as they're high level and not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1) 
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >>前往暴风城大教堂内，与 Durnholde Keep
    .isOnQuest 549,1066,498
step
    #completewith Drull
    >>击杀 和  
    >>拾取地上的 the |cRXP_ENEMY_Shadow Mages|rfor their |cRXP_LOOT_Vials of Innocent Blood|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob +Syndicate Shadow Mage
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>击杀 for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0   
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>击杀 for his |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or at the bottom of the tower|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>点击地上的 ground
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r
    >>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] |cRXP_BUY_and|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] |cRXP_BUY_from her if they're up|r
    .vendor >>Vendor 和 Repair
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r
    >>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] |cRXP_BUY_from her if they're up|r
    .vendor >>Vendor 和 Repair
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r
    >>|cRXP_BUY_Buy|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] |cRXP_BUY_from her if they're up|r
    .vendor >>Vendor 和 Repair
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    |cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] |cRXP_WARN_and|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] 
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
    .equip 7,1831
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    |cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] 
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    |cRXP_WARN_Equip the|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] 
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r
    .vendor >>Vendor 和 Repair
    .target Kris Legace
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>击杀 for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>点击地上的 ground
    .complete 498,1 --Rescue Drull (1)
step
    #completewith next
    >>击杀 |cRXP_ENEMY_辛迪加盗贼|r 和 |cRXP_ENEMY_辛迪加卫士|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>击杀 |cRXP_ENEMY_辛迪加暗影法师|r。拾取他们的 |cRXP_LOOT_Vials|r
    >>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Shadow Mage
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>击杀 |cRXP_ENEMY_辛迪加盗贼|r 和 |cRXP_ENEMY_辛迪加卫士|r
    >>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
	#completewith next
    >>击杀 |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_蜘蛛|r en route back to Tarren Mill. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_被驯养的食苔蛛|r |cRXP_WARN_as they're high level and not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1) 
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >>Return to 塔伦米尔，希尔斯布莱德
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁斯克|r 和 |cRXP_FRIENDLY_Darthalia|r
    .turnin 498 >>交任务《 前往熔光镇》 [DEPRECATED] 拯救行动
    .target +Krusk
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >>交任务《 前往熔光镇》 [DEPRECATED] 通缉：辛迪加成员
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_from him|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 527
    .subzoneskip 272,1
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r 和 |cRXP_FRIENDLY_乌比|r
    .turnin 1066 >> Turn in Blood of Innocents
    .turnin 496 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r 和 |cRXP_FRIENDLY_乌比|r
    .turnin 1066 >> Turn in Blood of Innocents
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r
    .turnin 1066 >> Turn in Blood of Innocents
    .goto Hillsbrad Foothills,61.44,19.05
    .target Apothecary Lydon
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>|cRXP_WARN_Delete the|r |T134238:0|t[Burnished Gold Key] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>|cRXP_WARN_Delete the|r |T134237:0|t[Dull Iron Key] |cRXP_WARN_from your bags, as it's no longer needed|r
step
	#completewith Fields1
    >>击杀 |cRXP_ENEMY_Gray Bears|r 和 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_灰熊的舌头|r 和 |cRXP_LOOT_山地狮的血液|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
step
	#completewith Fields1
    >>击杀 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_山地狮的血液|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isQuestTurnedIn 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >>前往暴风城大教堂内，与 the Hillsbrad Fields
    .isOnQuest 527
step
    #completewith FarmerRay
	>>击杀 和 around the fields
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_希尔斯布莱德农夫|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_你|r << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer 
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>击杀 |cRXP_ENEMY_农夫盖兹|r
    >>|cRXP_WARN_He has three different spawn locations. In the house, barn, or field|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,8,0
    >>击杀 |cRXP_ENEMY_农夫雷恩|r
    >>|cRXP_WARN_He can spawn outside under the grapevine or in the 1st or 2nd floor of the house|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>击杀 和 around the fields
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_希尔斯布莱德农夫|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_你|r << Rogue/Warrior/Shaman 
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer 
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
	#completewith next
    >>击杀 |cRXP_ENEMY_Bears|r。拾取他们的 |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,54.77,28.72,0
	.goto Hillsbrad Foothills,39.79,34.43,60,0
	.goto Hillsbrad Foothills,38.70,36.71,60,0
	.goto Hillsbrad Foothills,38.45,38.77,60,0
	.goto Hillsbrad Foothills,39.88,40.56,60,0
	.goto Hillsbrad Foothills,37.97,44.59,60,0
	.goto Hillsbrad Foothills,39.92,45.83,60,0
	.goto Hillsbrad Foothills,40.91,44.23,60,0
	.goto Hillsbrad Foothills,42.56,40.19,60,0
	.goto Hillsbrad Foothills,43.36,39.38,60,0
	.goto Hillsbrad Foothills,51.28,35.37,60,0
	.goto Hillsbrad Foothills,54.29,31.75,60,0
	.goto Hillsbrad Foothills,52.93,29.45,60,0
	.goto Hillsbrad Foothills,54.77,28.72,60,0
    >>杀掉 |cRXP_ENEMY_山地狮|r。拾取他们的 |cRXP_LOOT_Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
	#completewith TarrenMillTurnins2
    >>击杀 to Tarren Mill.拾取地上的 them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r 和 |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .turnin 501 >>交任务《 前往熔光镇》 [DEPRECATED] 镇魂之药
    .accept 502 >>接受任务《物归己用》 [DEPRECATED] 镇魂之药
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >>交任务《 前往熔光镇》 [DEPRECATED] 希尔斯布莱德之战
    .accept 528 >>接受任务《物归己用》 [DEPRECATED] 希尔斯布莱德之战
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >>接受任务《物归己用》 [DEPRECATED] 死亡的纪念品
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌比|r
    .turnin 499 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .target Umpi
    .isQuestTurnedIn 496
step
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r 和 |cRXP_FRIENDLY_Samsa|r
    .turnin 501 >>交任务《 前往熔光镇》 [DEPRECATED] 镇魂之药
    .accept 502 >>接受任务《物归己用》 [DEPRECATED] 镇魂之药
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >>交任务《 前往熔光镇》 [DEPRECATED] 希尔斯布莱德之战
    .accept 528 >>接受任务《物归己用》 [DEPRECATED] 希尔斯布莱德之战
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >>接受任务《物归己用》 [DEPRECATED] 死亡的纪念品
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith next
    >>击杀 to the Hillsbrad Fields.拾取地上的 them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >>前往暴风城大教堂内，与 the Hillsbrad Fields
    .isOnQuest 528
step
    #completewith Kalaba
    >>击杀 |cRXP_ENEMY_Hillsbrad Humans|r。拾取他们的 |cRXP_LOOT_骷髅|r.
    >>|cRXP_WARN_This quest does not need to be completed now|r
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯坦雷|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_暴怒的斯坦雷|r
    >>|cRXP_ENEMY_暴怒的斯坦雷|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >>交任务《 前往熔光镇》 [DEPRECATED] 镇魂之药
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    #loop
    .goto Hillsbrad Foothills,36.54,39.44,0
    .goto Hillsbrad Foothills,36.54,39.44,40,0
    .goto Hillsbrad Foothills,35.36,38.73,40,0
    .goto Hillsbrad Foothills,33.98,38.78,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.58,38.17,40,0
    .goto Hillsbrad Foothills,32.66,36.08,40,0
    .goto Hillsbrad Foothills,32.92,35.25,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.65,41.12,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,30.53,40.56,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.41,43.85,40,0
    .goto Hillsbrad Foothills,32.46,44.59,40,0
    .goto Hillsbrad Foothills,32.29,45.13,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    >>击杀 |cRXP_ENEMY_平民维尔克斯|r
    >>|cRXP_WARN_He patrols around the roads of the town|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯坦雷|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_暴怒的斯坦雷|r
    >>|cRXP_ENEMY_暴怒的斯坦雷|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >>交任务《 前往熔光镇》 [DEPRECATED] 镇魂之药
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    #completewith next
	>>击杀 |cRXP_ENEMY_希尔斯布莱德农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>击杀 |cRXP_ENEMY_农夫卡拉巴|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	>>击杀 |cRXP_ENEMY_希尔斯布莱德农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #loop
	.goto Hillsbrad Foothills,66.52,34.52,0
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>杀掉 |cRXP_ENEMY_Bears|r。拾取他们的 |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,62.85,38.74,0
	.goto Hillsbrad Foothills,62.85,38.74,60,0
	.goto Hillsbrad Foothills,62.24,39.96,60,0
	.goto Hillsbrad Foothills,60.92,37.92,60,0
	.goto Hillsbrad Foothills,59.62,33.33,60,0
	.goto Hillsbrad Foothills,56.88,29.73,60,0
	.goto Hillsbrad Foothills,59.80,27.72,60,0
	.goto Hillsbrad Foothills,57.63,24.16,60,0
	.goto Hillsbrad Foothills,56.47,16.42,60,0
	.goto Hillsbrad Foothills,59.36,14.55,60,0
	.goto Hillsbrad Foothills,60.54,13.67,60,0
	.goto Hillsbrad Foothills,62.65,12.90,60,0
	.goto Hillsbrad Foothills,64.43,10.22,60,0
	.goto Hillsbrad Foothills,65.18,6.93,60,0
	.goto Hillsbrad Foothills,65.31,5.76,60,0
	.goto Hillsbrad Foothills,66.90,9.02,60,0
	.goto Hillsbrad Foothills,70.39,8.89,60,0
	.goto Hillsbrad Foothills,68.86,10.18,60,0
	.goto Hillsbrad Foothills,67.35,12.95,60,0
	.goto Hillsbrad Foothills,71.38,19.81,60,0
	.goto Hillsbrad Foothills,71.78,21.89,60,0
	.goto Hillsbrad Foothills,64.85,24.92,60,0
	.goto Hillsbrad Foothills,66.68,28.15,60,0
	.goto Hillsbrad Foothills,69.76,31.89,60,0
	.goto Hillsbrad Foothills,67.62,37.65,60,0
	>>杀掉 |cRXP_ENEMY_森林爬行者|r 和 |cRXP_ENEMY_被驯养的食苔蛛|r。拾取他们的 |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r 和 |cRXP_FRIENDLY_Darthalia|r
    .turnin 496 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .accept 1067 >>接受任务《物归己用》 返回雷霆崖
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >>交任务《 前往熔光镇》 [DEPRECATED] 希尔斯布莱德之战
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r
    .accept 499 >>接受任务《物归己用》 [DEPRECATED] 沉醉之药
    .target Apothecary Lydon
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌比|r
    .turnin 499 >>交任务《 前往熔光镇》 [DEPRECATED] 沉醉之药
    .target Umpi
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lydon|r 和 |cRXP_FRIENDLY_Darthalia|r
    .accept 1067 >>接受任务《物归己用》 返回雷霆崖
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >>交任务《 前往熔光镇》 [DEPRECATED] 希尔斯布莱德之战
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
	.target Innkeeper Shay
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_from him|r
    .collect 2515,1800 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .itemcount 2515,<1000
    .xp >25,1
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .itemcount 3030,<1000
    .xp <25,1
    .subzoneskip 272,1
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r 
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r
    .vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r 
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >> Now you should be looking for a group to Shadowfang Keep
    .dungeon SFK
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞斯|r
    .fly The Sepulcher>>Fly to 瑟伯切尔，银松森林
    .target Zarise
    .zoneskip Hillsbrad Foothills,1
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hadrec|r
    .accept 1098 >>接受任务《物归己用》 影牙城堡里的亡灵哨兵
    .target High Executor Hadrec
    .dungeon SFK
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dalar|r
    .accept 1014 >>接受任务《物归己用》 除掉阿鲁高
    .target Dalar Dawnweaver
    .dungeon SFK
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >>进入 SFK Instance portal. Zone in
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vincent|r
    .turnin 1098 >>交任务《 前往熔光镇》 影牙城堡里的亡灵哨兵
    .target Deathstalker Vincent
    .dungeon SFK
    .isOnQuest 1098
step
    >>拾取地上的 the |cRXP_PICK_Book of Ur|rfrom the bookshelf in |cRXP_ENEMY_Fenrus the Devourer's|rroom
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>击杀 for his |cRXP_LOOT_头部|r
    .complete 1014,1 --Head of Arugal (1)
    .mob Archmage Arugal
    .dungeon SFK
    .isOnQuest 1014
step
    #completewith FlytoUC
    .goto Silverpine Forest,45.51,41.26,150,0 
    .subzone 228 >>Travel to 瑟伯切尔，银松森林
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hadrec|r
    .turnin 1098 >>交任务《 前往熔光镇》 影牙城堡里的亡灵哨兵
    .target High Executor Hadrec
    .dungeon SFK
    .isQuestComplete 1098
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dalar|r
    .turnin 1014 >>交任务《 前往熔光镇》 除掉阿鲁高
    .target Dalar Dawnweaver
    .dungeon SFK
    .isQuestComplete 1014
step << Mage
    #completewith OrgFood1
    .cast 3563 >>|cRXP_WARN_施放|r |T135766:0|t[Teleport: Undercity]
    .zoneskip Undercity
    .dungeon SFK
step << Mage
    .goto Undercity,85.15,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Anastasia|r
    .train 2121 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Mage
    #optional
    .goto Undercity,85.15,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Anastasia|r
    .train 120 >>训练你的职业技能
    .target Anastasia Hartwell
    .xp <26,1
    .dungeon SFK
step << Mage
    .goto Undercity,82.79,15.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉娜·阿克雷|r
    >>|cRXP_BUY_Buy at least two|r |T134419:0|t[Rune of Teleportation]|cRXP_BUY_from her|r
    .collect 17031,2,6503,1 --Rune of Teleportation (2)
	.target Hannah Akeley
    .dungeon SFK
 step << !Mage
    #label FlytoUC
    #completewith OrgFood1
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Fly to the Undercity
    .target Karos Razok
    .zoneskip Undercity
    .dungeon SFK
step
    #label BookofUrTurnin
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bel'dugur|r
    .turnin 1013 >>交任务《 前往熔光镇》 乌尔之书
    .target Keeper Bel'dugur
    .dungeon SFK
    .isQuestComplete 1013
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Angela|r
    .train 5308 >>训练你的职业技能
    .target Angela Curthas
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Angela|r
    .train 6178 >>训练你的职业技能
    .target Angela Curthas
    .xp <26,1
    .dungeon SFK
step << Rogue
    .goto Undercity,75.19,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_伊瑟基尔|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
    .collect 2928,40,1067,1 --Collect Dust of Decay (40)
    .collect 3371,40,1067,1 --Collect Empty Vial (40)
    .target Ezekiel Graves
    .zoneskip Undercity,1
    .dungeon SFK
step << Rogue    
    #completewith OrgFood1
    >>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons] 
    .collect 6947,40,1067,1 --Collect Instant Poison (40)
    .dungeon SFK
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Carolyn|r
    .train 6762 >>训练你的职业技能
    .target Carolyn Ward
    .xp <24,1
    .xp >26,1
    .dungeon SFK
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Carolyn|r
    .train 1833 >>训练你的职业技能
    .target Carolyn Ward
    .xp <26,1
    .dungeon SFK
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Richard|r
    .train 6223 >>训练你的职业技能
    .target Richard Kerwin
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Richard|r
    .train 1456 >>训练你的职业技能
    .target Richard Kerwin
    .xp <26,1
    .dungeon SFK
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1822 >>训练你的职业技能
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1850 >>训练你的职业技能
    .target Loganaar
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Combine the two pendants at the Shrine of Remulos for the |r|cRXP_LOOT_Pendant of the Sea Lion|r
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dendrite|r
    .turnin 30 >>交任务《 前往熔光镇》 海狮试炼
    .accept 31 >>接受任务《物归己用》 水栖形态
    .target Dendrite Starblaze
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dendrite|r
    .accept 31 >>接受任务《物归己用》 水栖形态
    .target Dendrite Starblaze
    .isQuestTurnedIn 30
step
    #label ThunderBluffHS
    .hs >>Hearth to 雷霆崖，莫高雷
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
step
    #optional
    .abandon 1013,1014,1098
    .dungeon SFK
    --1013 The Book of Ur
    --1014 Arugal Must Die
    --1098 Deathstalkers in Shadowfang

    ]])



RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 25-27 South Barrens
#version 7
#subgroup RestedXP Survival Guide 1-30
#next 27-29 Ashenvale

step << Shaman/Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r 
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .target Delgo Ragetotem
step << Hunter
    #completewith HunterTraining26
    .goto Thunder Bluff,61.31,78.25,80 >>前往暴风城大教堂内，与 the Hunter Rise
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 14262 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <24,1
    .xp >26,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 3045 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <26,1
step << Hunter
    #label HunterTraining26
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hesuwa|r
    .train 24558 >>训练你的宠物技能
    .target Hesuwa Thunderhorn
step << Druid
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往暴风城大教堂内，与 the Elder Rise
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak|r
    .trainer >>训练你的职业技能
    .turnin 31 >>交任务《 前往熔光镇》 水栖形态
    .target Turak Runetotem
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Thunderhorn
    .money <1.9467
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Travel to the Spirit Rise 和 enter the pools of vision
step
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zamah|r
    .turnin 1067 >>交任务《 前往熔光镇》 返回雷霆崖
    .target Apothecary Zamah
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
	.train 3747 >>训练你的职业技能
    .target Miles Welsh
    .xp <24,1
    .xp >26,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
	.train 992 >>训练你的职业技能
    .target Miles Welsh
    .xp <26,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8400 >>训练你的职业技能
    .target Archmage Shymm
    .xp <24,1
    .xp >26,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 120 >>训练你的职业技能
    .target Archmage Shymm
    .xp <26,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 905 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <24,1
    .xp >26,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 8190 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <26,1
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_制造|r |T133688:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115 or higher|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Train |T133687:0|t[Heavy Wool Bandage]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >>接受任务《物归己用》 神圣之火
    .target Zangen Stonehoof
step
    #label FlytoCampT2
    #completewith CampTHS2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .accept 879 >>接受任务《物归己用》 内奸
    .target Mangletooth
step
    #completewith CampTHS2
    +|cRXP_WARN_Use your remaining|r |T134128:0|t[Blood Shards] |cRXP_WARN_to get|r |T136104:0|t[Razorhide] |cRXP_WARN_and other buffs|r << !Mage !Druid
    +|cRXP_WARN_Use your remaining|r |T134128:0|t[Blood Shards] |cRXP_WARN_to get buffs|r << Mage/Druid
    >>|cRXP_WARN_If possible, save 10|r |T134128:0|t[Blood Shards] |cRXP_WARN_to be able to utilize the speed buff later in the guide|r
    >>|cRXP_WARN_Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!|r
    .addquestitem 4075,5052
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r
    .accept 6382 >>接受任务《物归己用》 灰谷狩猎
    .target Jorn Skyseer
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_鲁迦·暴怒图腾|r inside the building
	.turnin 1823 >>交任务《 前往熔光镇》 和鲁迦交谈
    .accept 1824 >>接受任务《物归己用》 巨人旷野的试炼
    .target Ruga Ragetotem
step
    #label CampTHS2
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 
    .home >>Set your Hearthstone to Camp Taurajo
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 879
step
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Find & kill |cRXP_ENEMY_奥瓦坦卡|r (Blue Thunder Lizard) around this area. Loot him for |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this quest if you can't find him|r
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务《物归己用》 奥瓦坦卡
    .use 5102
    .unitscan Owatanka
step << Warrior
    #loop
	.goto The Barrens,45.17,69.08,0
	.goto The Barrens,45.17,69.08,50,0
	.goto The Barrens,43.87,68.84,50,0
	.goto The Barrens,42.17,69.65,50,0
	.goto The Barrens,42.35,71.85,50,0
	.goto The Barrens,42.77,72.28,50,0
	.goto The Barrens,43.86,72.06,50,0
	.goto The Barrens,45.38,72.25,50,0
    >>击杀 |cRXP_ENEMY_异种护卫者|r, |cRXP_ENEMY_异种群居蝎|r, |cRXP_ENEMY_异种爬行者|r and |cRXP_ENEMY_异种幼蝎|r. Loot them for their |T133027:0|t[Twitching Antenna]
    >>|cRXP_WARN_NOTE: The |T133027:0|t[Twitching Antenna] only have a 15 minute duration, do not AFK or logout during this quest|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_鲁迦·暴怒图腾|r inside the building
    >>|cRXP_WARN_Skip the follow-up|r
    .turnin 1824 >>交任务《 前往熔光镇》 巨人旷野的试炼
    .target Ruga Ragetotem
step
    #completewith next
    >>击杀 the |cRXP_ENEMY_异种收割者|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this quest if you can't find him. This mob is very rare!|r
    .collect 5138,1,897 --Collect Harvester's Head
    .accept 897 >>接受任务《物归己用》 收割者
    .use 5138
    .unitscan Silithid Harvester
step 
    #label SilithidEggs
    #loop
    .goto The Barrens,42.91,69.86,0
    .goto The Barrens,45.04,69.85,60,0
    .goto The Barrens,42.91,69.86,60,0
    .goto The Barrens,42.97,71.11,60,0
    .goto The Barrens,45.36,72.36,60,0
    .goto The Barrens,47.40,70.11,60,0
    .goto The Barrens,48.40,70.08,60,0
    .goto The Barrens,42.91,69.86,60,0
	>>拾取地上的 the |cRXP_PICK_Silithid Mounds|rfor |cRXP_LOOT_Silithid Eggs|r
	.complete 868,1 --Silithid Egg (12)
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>击杀 |cRXP_ENEMY_瓦希塔帕恩|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>前去找 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1536 >>交任务《 前往熔光镇》 水之召唤
    .accept 1534 >>接受任务《物归己用》 水之召唤
    .target Brine
step
    #completewith Backstabber
    >>击杀 |cRXP_ENEMY_瓦希塔帕恩|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r
    .accept 843 >>接受任务《物归己用》 加恩的报复
    .target Gann Stonespire
    .maxlevel 27
step
    #completewith Lok
    >>击杀 |cRXP_ENEMY_钢鬃捕猎者|r and |cRXP_ENEMY_钢鬃探路者|r. Loot them for the |T135640:0|t[|cRXP_LOOT_钢鬃背刺匕首|r]
    >>击杀 for a |T135139:0|t[|cRXP_LOOT_烧焦的钢鬃魔杖|r]
    >>击杀 for a |T134955:0|t[|cRXP_LOOT_钢鬃大盾|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_钢鬃捕猎者|r are stealthed|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob +Razormane Stalker
    .mob +Razormane Pathfinder
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    #loop
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.83,79.87,0
    >>击杀 for |cRXP_LOOT_卡兹的徽记|r
    >>|cRXP_ENEMY_卡兹|r |cRXP_WARN_patrols around slightly|r
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>击杀 for |cRXP_LOOT_Lok's Skull|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
step
    #completewith next
    >>击杀 |cRXP_ENEMY_钢鬃捕猎者|r and |cRXP_ENEMY_钢鬃探路者|r. Loot them for a |T135640:0|t[|cRXP_LOOT_钢鬃背刺匕首|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_钢鬃捕猎者|r are stealthed|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
	.goto The Barrens,42.57,78.81,50,0
    >>击杀 for a |T135139:0|t[|cRXP_LOOT_烧焦的钢鬃魔杖|r]
    >>击杀 for a |T134955:0|t[|cRXP_LOOT_钢鬃大盾|r]
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
    .goto The Barrens,43.87,83.43
    >>击杀 for |cRXP_LOOT_Nak's Skull|r
    .complete 879,2 --Nak's Skull (1)
    .mob Nak
step
    #label Backstabber
    #loop
    .goto The Barrens,45.48,79.89,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    >>击杀 |cRXP_ENEMY_钢鬃捕猎者|r and |cRXP_ENEMY_钢鬃探路者|r. Loot them for a |T135640:0|t[|cRXP_LOOT_钢鬃背刺匕首|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_钢鬃捕猎者|r are stealthed|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>击杀 |cRXP_ENEMY_巴尔丹挖掘者|r 和 |cRXP_ENEMY_巴尔丹工头|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #loop
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>击杀 for |cRXP_LOOT_Khazgorm's Journal|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
    .isOnQuest 843
step
    #loop
    .goto The Barrens,47.22,84.98,0
    .goto The Barrens,47.22,84.98,40,0
    .goto The Barrens,47.28,85.74,40,0
    .goto The Barrens,47.60,85.66,40,0
    .goto The Barrens,48.43,86.34,40,0
    .goto The Barrens,48.03,85.46,40,0
    .goto The Barrens,47.94,84.86,40,0
    .goto The Barrens,47.37,84.01,40,0
    .goto The Barrens,46.92,84.22,40,0
    .goto The Barrens,46.99,85.82,40,0
    >>击杀 |cRXP_ENEMY_巴尔丹挖掘者|r 和 |cRXP_ENEMY_巴尔丹工头|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>击杀 |cRXP_ENEMY_瓦希塔帕恩|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .use 5103
    .unitscan Washte Pawne
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
    .turnin 843 >>交任务《 前往熔光镇》 加恩的报复
    .accept 846 >>接受任务《物归己用》 加恩的报复
    .target Gann Stonespire
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
    .accept 846 >>接受任务《物归己用》 加恩的报复
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label BaelModan
    .goto The Barrens,48.63,84.49,110 >>前往暴风城大教堂内，与 Bael Modan
    .isOnQuest 846
step
    #loop
    .goto The Barrens,48.96,84.36,0
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    >>击杀 |cRXP_ENEMY_Bael'dun Dwarves|r。拾取他们的 |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
    >>|cRXP_WARN_Be Careful!|r |cRXP_ENEMY_巴尔丹军官|r |cRXP_WARN_have a 50% increased parry chance for 8 seconds after they do their defense stance animation|r << Rogue/Warrior/Druid/Shaman
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
    .turnin 846 >>交任务《 前往熔光镇》 加恩的报复
    .accept 849 >>接受任务《物归己用》 加恩的报复
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>点击地上的 platform
    >>|cRXP_WARN_This has a 50 yard range|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols North and South on the road|r
    .turnin 849 >>交任务《 前往熔光镇》 加恩的报复
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.85,78.81,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
    >>击杀 |cRXP_ENEMY_瓦希塔帕恩|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .use 5103
    .unitscan Washte Pawne
step
    #completewith WeaponsofChoiceTurnin
    .hs >>Hearth to 陶拉祖营地，贫瘠之地
    .bindlocation 378,1
    .subzoneskip 378
    .use 6948
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >> Travel back to Camp Taurajo
    >>|cRXP_WARN_You can also grind until your|r |T134414:0|t[Hearthstone] |cRXP_WARN_is back up|r
    .cooldown item,6948,<0
step
    #label WeaponsofChoiceTurnin
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >>接受任务《物归己用》 野猪人的武器
    .turnin 893 >>交任务《 前往熔光镇》 野猪人的武器
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .accept 884 >>接受任务《物归己用》 奥瓦坦卡
    .turnin 884 >>交任务《 前往熔光镇》 奥瓦坦卡
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .turnin 885 >>交任务《 前往熔光镇》 瓦希塔帕恩
    .target Jorn Skyseer
    .itemcount 5103,1
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .accept 897 >>接受任务《物归己用》 收割者
    .turnin 897 >>交任务《 前往熔光镇》 收割者
    .itemcount 5138,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .turnin 879 >>交任务《 前往熔光镇》 内奸
    .accept 906 >>接受任务《物归己用》 内奸
    .target Mangletooth
step
    #completewith next
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fly to 十字路口，北贫瘠之地
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r
    .turnin 906 >>交任务《 前往熔光镇》 内奸
    .target Thork
step
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r
    .turnin 868 >>交任务《 前往熔光镇》 蝎卵
    .target Korran
step
    #completewith IshaAwak
    #optional
    .destroy 5058 >>|cRXP_WARN_Destroy any extra|r |T132834:0|t[Silithid Eggs] |cRXP_WARN_you still have|r
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Innkeeper Boorand|r 
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1096
step << Rogue
    .goto The Barrens,51.39,30.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈拉玛|r 
    .vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and supplies for|r |T132273:0|t[Instant Poison]
    .target Hula'mahi
    .subzoneskip 380,1
step << Hunter
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .zoneskip Orgrimmar
    .target Devrak
step << Hunter
    .goto Orgrimmar,48.12,80.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_特拉克根|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,874,1 << Hunter --Razor Arrow (1800)
    .target Trak'gend
    --VV Add hunter training
step << Hunter
    #completewith IshaAwak
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Doras
    .subzoneskip 392
step << !Hunter
    #completewith IshaAwak
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Devrak
    .subzoneskip 392
step
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target Mahren Skyseer
step
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>击杀 |cRXP_ENEMY_依沙瓦克|r。拾取他的 |cRXP_LOOT_依沙瓦克的心脏|r
    >>|cRXP_WARN_He has four different spawn locations alongside the coast|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
step
    #label IshaAwak
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >>交任务《 前往熔光镇》 依沙瓦克
    .target Mahren Skyseer
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Bragok
    .zoneskip Orgrimmar
step << Mage
    .cast 3567 >>|cRXP_WARN_施放|r |T135759:0|t[Teleport: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 120 >>训练你的职业技能
    .target Pephredo
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 759 >>训练你的职业技能
    .target Pephredo
    .xp <28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 8687 >>训练你的职业技能
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 1833 >>训练你的职业技能
    >>|T132273:0|t[Instant Poison Rank 2] |cRXP_WARN_requires 120 skill in Poisons!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 8190 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r
    .train 8053 >>训练你的职业技能
    .target Kardris Dreamseeker
    .xp <28,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 6178 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 7887 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <28,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 1456 >>训练你的职业技能
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 6217 >>训练你的职业技能
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r
	.vendor >>Buy any pet upgrades you can afford
	.target Kurgul
    --VV Warlock Grimoire steps
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
    .collect 5347,1,6544,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 3045 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 14319 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <28,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤索克|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 992 >>训练你的职业技能
    .target Ur'kyo
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 8104 >>训练你的职业技能
    .target Ur'kyo
    .xp <28,1

    ]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 27-29 Ashenvale
#version 7
#subgroup RestedXP Survival Guide 1-30
#next 29-31 Thousand Needles



step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> Leave Orgrimmar through the western exit
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >> Travel north alongside the river into Ashenvale
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>Travel to 碎木岗哨，灰谷
    >>|cRXP_WARN_You may encounter a few level 29-30 mobs, avoid them if possible|r
    .subzoneskip 431
    .isQuestAvailable 6503
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Senani|r
    .dailyturnin 235,742,6382 >>交任务《 前往熔光镇》 灰谷狩猎
    .turnin 6383 >>交任务《 前往熔光镇》 灰谷狩猎
    .target Senani Thunderheart
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >>交任务《 前往熔光镇》 灰谷狩猎
    .target Senani Thunderheart
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯利斯克|r 
    .home >>将你的炉石设置为铁炉堡 Post
    .target Innkeeper Kaylisk
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mastok|r
    .accept 25 >> Accept Stonetalon Standstill
    .target Mastok Wrilehiss
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r
    .accept 6441 >>接受任务《物归己用》 萨特之角
    .target Pixel
    .maxlevel 28
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r
    .fp Splintertree Post >> Get the Splintertree Post flight path
    .target Vhulgra
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 和 |cRXP_FRIENDLY_Sunsworn|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r << !BloodElf
    .accept 6503 >>接受任务《物归己用》 灰谷先驱者
    .target +Kuray'bin
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >>交任务《 前往熔光镇》 前往碎木岗哨 << BloodElf
    .target +Advisor Sunsworn << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_基苏|r
    .stable >>Stable your pet.You will tame an |cRXP_ENEMY_老灰谷熊|r和 a |cRXP_ENEMY_幽爪前锋|rshortly
    .target Qeeju
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_老灰谷熊|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_幽爪前锋|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale1
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_老灰谷熊|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_基苏|r
    .stable >>Abandon the |cRXP_ENEMY_老灰谷熊|ror |cRXP_ENEMY_幽爪前锋|r和 retrieve your regular pet
    .target Qeeju
    .zoneskip Ashenvale,1
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r
    .accept 6503 >>接受任务《物归己用》 灰谷先驱者
    .target Kuray'bin
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>击杀 |cRXP_ENEMY_尖爪|r. Loot him for |T136063:0|t[|cRXP_LOOT_尖爪的爪子|r] and use it to start the quest
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_尖爪|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务《物归己用》 尖爪的爪子
    .unitscan Sharptalon
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>|cRXP_WARN_施放|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find the |cRXP_ENEMY_灰谷先驱者|r more easily|r
    .train 19885,3
step
    #label Outrunners
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    >>击杀 |cRXP_ENEMY_灰谷先驱者|r
    >>|cRXP_WARN_They are stealthed|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_托雷克|r to start the escort
    >>|cRXP_FRIENDLY_托雷克|r |cRXP_WARN_has a 5 minute respawn time|r
    .accept 6544 >>接受任务《物归己用》 托雷克的突袭
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>跟随 |cRXP_FRIENDLY_托雷克|r
    >>Let |cRXP_FRIENDLY_托雷克|r和 his |cRXP_FRIENDLY_Splintertree Raiders|rtank the |cRXP_ENEMY_银翼战士|r和 
    >>|cRXP_WARN_When you clear the building, run toward the Balcony. When |cRXP_ENEMY_杜瑞尔·月火|r comes, let |cRXP_FRIENDLY_托雷克|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >> Travel toward the western entrance point into Night Run
    >>|cRXP_WARN_Be careful! A level 35|r |cRXP_ENEMY_Wandering Protector|r |cRXP_WARN_(PVP elite) might patrol the area!|r
    .unitscan Wandering Protector
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >>前往暴风城大教堂内，与 Night Run
    .subzoneskip 428
step
    #loop
	.goto Ashenvale,67.85,51.34,0
	.goto Ashenvale,66.78,51.71,50,0
	.goto Ashenvale,66.19,53.44,50,0
	.goto Ashenvale,66.17,54.40,50,0
	.goto Ashenvale,66.22,55.27,50,0
	.goto Ashenvale,66.20,56.37,50,0
	.goto Ashenvale,66.77,57.14,50,0
	.goto Ashenvale,67.11,56.39,50,0
	.goto Ashenvale,67.35,55.53,50,0
	.goto Ashenvale,67.92,54.42,50,0
	.goto Ashenvale,68.92,53.44,50,0
	.goto Ashenvale,68.63,52.69,50,0
	.goto Ashenvale,67.85,51.34,50,0
    >>击杀 |cRXP_ENEMY_魔草巡影者|r, |cRXP_ENEMY_魔草萨特|r, and |cRXP_ENEMY_魔草魔仆|r。拾取他们的 |cRXP_LOOT_萨特之角|r
    >>|cRXP_WARN_Be careful! All the Felmusk cast|r |T136119:0|t[Overwhelming Stench]|cRXP_WARN_, an instant-cast 6 second silence|r << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >> Travel West toward Raynewood Retreat
    .isOnQuest 1195
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    >>击杀 |cRXP_ENEMY_猎影|r. Loot her for |T132225:0|t[|cRXP_LOOT_猎影的头|r] and use it to start the quest
    >>|cRXP_ENEMY_猎影|r |cRXP_WARN_patrols around slightly|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务《物归己用》 猎影的头
	.unitscan Shadu
step
    #loop
    .goto Ashenvale,58.08,56.06,0
    .goto Ashenvale,58.08,56.06,40,0
    .goto Ashenvale,58.69,55.18,40,0
    .goto Ashenvale,59.27,54.47,40,0
    .goto Ashenvale,59.83,53.26,40,0
    .goto Ashenvale,60.40,52.83,40,0
    .goto Ashenvale,61.03,51.96,40,0
    .goto Ashenvale,60.99,49.19,40,0
    .goto Ashenvale,62.51,50.16,40,0
    >>击杀 for an |T134776:0|t[|cRXP_LOOT_Etched Phial|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
    .isOnQuest 1195
step
    #label Shadumbra
    #loop
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,0
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80,40,0
    >>击杀 |cRXP_ENEMY_猎影|r. Loot her for |T132225:0|t[|cRXP_LOOT_猎影的头|r] and use it to start the quest
    >>|cRXP_ENEMY_猎影|r |cRXP_WARN_patrols around slightly|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务《物归己用》 猎影的头
	.unitscan Shadumbra
    .use 16304
step
   .goto Ashenvale,36.81,33.48,200 >>前往暴风城大教堂内，与 Thistlefur Village
   >>|cRXP_WARN_Make sure to avoid Astranaar guards en route|r
   .subzoneskip 2301
   .isOnQuest 216
step
    #completewith next
    >>击杀 route to the cave
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger 
step
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>Enter Thistlefur Hold
    .isOnQuest 6462
step
    #loop
    .goto Ashenvale,40.39,33.22,0
    .goto Ashenvale,40.39,33.22,20,0
    .goto Ashenvale,40.77,32.81,20,0
    .goto Ashenvale,41.36,32.19,20,0
    .goto Ashenvale,41.75,32.94,20,0
    .goto Ashenvale,41.77,33.68,20,0
    .goto Ashenvale,42.37,33.61,20,0
    .goto Ashenvale,42.82,34.11,20,0
    .goto Ashenvale,41.73,34.47,20,0
    .goto Ashenvale,41.66,35.70,20,0
	>>拾取地上的 the |cRXP_PICK_Troll Chests|ron the ground for |cRXP_LOOT_巨魔符咒|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. This will start an escort
    .accept 6482 >>接受任务《物归己用》 鲁尔的自由
    .target Ruul Snowhoof
step
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>护送 |cRXP_FRIENDLY_Ruul|r out of Thistlefur Village
    >>|cRXP_WARN_Be careful! 3|r |cRXP_ENEMY_Thistlefurs|r |cRXP_WARN_will spawn once you are halfway through the cave and another 3 outside the gate of Thistlefur Village|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    #loop
    .goto Ashenvale,35.75,32.01,0
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    >>杀掉 |cRXP_ENEMY_蓟皮萨满祭司|r 和 |cRXP_ENEMY_蓟皮复仇者|r
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger 
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>|cRXP_WARN_Use the|r |T132821:0|t[Empty Blue Waterskin] |cRXP_WARN_under the Gazebo|r
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,43.78,68.86,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.81,62.94,40,0
    >>击杀 |cRXP_ENEMY_乌萨苟斯|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest
    >>|cRXP_WARN_He patrols around slightly|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    #completewith Tideress
    .subzone 421 >>前往西部荒野 Lake
    .isOnQuest 25
step
    #completewith Tideress
    >>击杀 |cRXP_ENEMY_污浊的水元素|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.36,69.74,40,0
    >>击杀 |cRXP_ENEMY_泰德雷斯|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
    >>|cRXP_ENEMY_泰德雷斯|r |cRXP_WARN_patrols around the island and underwater|r
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接受任务《物归己用》 被污染的水元素
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Go under the Gazebo
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    #loop
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,0
    .goto Ashenvale,48.71,69.54,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,45.84,70.67,40,0
    >>击杀 |cRXP_ENEMY_泰德雷斯|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
    >>|cRXP_ENEMY_泰德雷斯|r |cRXP_WARN_patrols around the island and underwater|r
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接受任务《物归己用》 被污染的水元素
    .use 16408
    .unitscan Tideress
step
    #loop
	.goto Ashenvale,48.36,69.74,0
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
    >>击杀 |cRXP_ENEMY_污浊的水元素|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>|cRXP_WARN_Use the|r |T134776:0|t[|cRXP_LOOT_Etched Phial|r] |cRXP_WARN_in the Moonwell|r
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>Travel to 碎木岗哨，灰谷
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r
    .turnin 6503 >>交任务《 前往熔光镇》 灰谷先驱者
    .target Kuray'bin
step
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>击杀 |cRXP_ENEMY_尖爪|r. Loot him for |T136063:0|t[|cRXP_LOOT_尖爪的爪子|r] and use it to start the quest
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_尖爪|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务《物归己用》 尖爪的爪子
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >>交任务《 前往熔光镇》 托雷克的突袭
    .target Ertog Ragetusk
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Senani|r
    .turnin 2 >>交任务《 前往熔光镇》 尖爪的爪子
    .turnin 24 >>交任务《 前往熔光镇》 猎影的头
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 247 >>交任务《 前往熔光镇》 完成狩猎
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Senani|r
    .turnin 24 >>交任务《 前往熔光镇》 猎影的头
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 247 >>交任务《 前往熔光镇》 完成狩猎
    .target Senani Thunderheart
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Senani|r
    .turnin 24 >>交任务《 前往熔光镇》 猎影的头
    .turnin 23 >> Turn in Ursangous's Paw
    .target Senani Thunderheart
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r
    .turnin 6441 >>交任务《 前往熔光镇》 萨特之角
    .target Pixel
    .isQuestComplete 6441
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >>交任务《 前往熔光镇》 被污染的水元素
    .accept 824 >>接受任务《物归己用》 大地之环的耶努萨克雷
    .target Mastok Wrilehiss
step
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >>交任务《 前往熔光镇》 鲁尔的自由
    .target Yama Snowhoof
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_基苏|r
    .stable >>Stable your pet.You will tame an |cRXP_ENEMY_老灰谷熊|r和 a |cRXP_ENEMY_幽爪前锋|rshortly
    .target Qeeju
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_老灰谷熊|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_幽爪前锋|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale2
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_老灰谷熊|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps
    .dungeon BFD
step
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r
    .fly Zoram'gar >>Fly to 佐拉姆加前哨站，灰谷
    .target Vhulgra
    .subzoneskip 2897
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Karang|r
    .turnin 216 >>交任务《 前往熔光镇》 蓟皮熊怪的麻烦
    .target Karang Amakkar
step
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米苏瓦|r
    .turnin 6462 >>交任务《 前往熔光镇》 巨魔符咒
    .target Mitsuwa
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 824 >>交任务《 前往熔光镇》 大地之环的耶努萨克雷
    .accept 6563 >>接受任务《物归己用》 阿库麦尔的精华
    .accept 6921 >>接受任务《物归己用》 废墟之间
    .accept 6565 >>接受任务《物归己用》 上古之神的仆从
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 824 >>交任务《 前往熔光镇》 大地之环的耶努萨克雷
    .accept 6563 >>接受任务《物归己用》 阿库麦尔的精华
    .accept 6921 >>接受任务《物归己用》 废墟之间
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 824 >>交任务《 前往熔光镇》 大地之环的耶努萨克雷
    .target Je'neu Sancrea
step
    .goto Kalimdor,43.89,35.23,100 >>前往暴风城大教堂内，与 the entrance of Blackfathom Deeps
    .dungeon BFD
step
    #completewith next
    >>拾取地上的 
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
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
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务《物归己用》 上古之神的仆从
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
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
    >>拾取地上的 
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候塞尔瑞德|r
    .accept 6561 >>接受任务《物归己用》 黑暗深渊中的恶魔
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>击杀 |cRXP_ENEMY_Lorguss Jett |r
    .complete 6565,1 --Lorguss Jett slain (1)
    .mob Lorguss Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>拾取地上的 the |cRXP_PICK_Fathom Stone|rin the water on the ground for the |cRXP_LOOT_Fathom Core|r
    >>|cRXP_WARN_Looting this will spawn|r |cRXP_ENEMY_阿奎尼斯男爵|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>击杀 |cRXP_ENEMY_阿奎尼斯男爵|r. Loot him for a |T136222:0|t[|cRXP_LOOT_Strange Water Globe|r]. Use it to accept the quest
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>接受任务《物归己用》 阿奎尼斯男爵
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>拾取地上的 the |cRXP_PICK_Fathom Stone|rin the water on the ground for the |cRXP_LOOT_Fathom Core|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>击杀 for his |cRXP_LOOT_头部|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith FlyZoramS2
    .hs >>Hearth to 碎木岗哨，灰谷
    >>|cRXP_WARN_杀死|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_first if you wish. This is the last boss of the dungeon|r
    .cooldown item,6948,>2,1
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon BFD
step
    #optional
    #completewith FlyZoramS2
    .subzone 431 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Blackfathom Deeps|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Blackfathrom Deeps to ghetto Hearth back to Splintertree Post|r
    .cooldown item,6948,<0
    .bindlocation 431,1
    .dungeon BFD
step
    #label FlyZoramS2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r
    .fly Zoram'gar >>Fly to 佐拉姆加前哨站，灰谷
    .target Vhulgr
    .subzoneskip 2897
    .dungeon BFD
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 >>交任务《 前往熔光镇》 上古之神的仆从
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6565 >>交任务《 前往熔光镇》 上古之神的仆从
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务《 前往熔光镇》 阿库麦尔的精华
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6921 >>交任务《 前往熔光镇》 废墟之间
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6922 >>交任务《 前往熔光镇》 阿奎尼斯男爵
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
    .dungeon !BFD
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 1850 >>训练你的职业技能
    .target Loganaar
    .xp <26,1
    .xp >28,1
    .dungeon !BFD
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 3029 >>训练你的职业技能
    .target Loganaar
    .xp <28,1
    .dungeon !BFD
step
    #completewith FlyTB
    .hs >>Hearth to 碎木岗哨，灰谷
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon !BFD
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r
    .fly Orgrimmar>>Fly to 奥格瑞玛，杜隆塔尔
    .target Vhulgra
    .zoneskip Orgrimmar
    .dungeon !BFD
step << Rogue/Warlock
    #completewith OrgSkip
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r
    .fly Orgrimmar>>Fly to 奥格瑞玛，杜隆塔尔
    .target Andruk
    .zoneskip Orgrimmar
    .dungeon BFD
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 1833 >>训练你的职业技能
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 8687 >>训练你的职业技能
    >>|T132273:0|t[Instant Poison Rank 2] |cRXP_WARN_requires 120 skill in Poisons!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_雷库尔|r
	.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 1456 >>训练你的职业技能
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 6217 >>训练你的职业技能
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r
	.vendor >>Buy any pet upgrades you can afford
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    #optional
    #label OrgSkip
step
    #optional
    #label FlyTB
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Doras
    .zoneskip Orgrimmar,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Andruk
    .zoneskip Ashenvale,1
    .dungeon BFD
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Vhulgra
    .zoneskip Ashenvale,1
    .dungeon !BFD
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Survival Guide (H)
<< Horde
#name 29-31 Thousand Needles
#version 7
#subgroup RestedXP Survival Guide 1-30
#next 31-33 Hillsbrad / Arathi

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equip the|r |T135651:0|t[Main Gauche] 
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >>交任务《 前往熔光镇》 神圣之火
    .accept 1196 >>接受任务《物归己用》 神圣之火
    .target Zangen Stonehoof
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 1850 >>训练你的职业技能
    .target Kym Wildmane
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 3029 >>训练你的职业技能
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 783 >>训练你的职业技能
    .target Kym Wildmane
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>接受任务《物归己用》 钢齿土狼
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 3045 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 14319 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 5384 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >>训练你的宠物技能
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ker|r
    .train 6178 >>训练你的职业技能
    .target Ker Ragetotem
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ker|r
    .train 7887 >>训练你的职业技能
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Torm|r
    .train 7369 >>训练你的职业技能
    .accept 1718 >>接受任务《物归己用》 岛民
    .target Torm Ragetotem
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Auld|r
    .accept 1102 >>接受任务《物归己用》 奥尔德的报复
    .target Auld Stonespire
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将你的炉石设置为暮色森林 Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 992 >>训练你的职业技能
    .target Miles Welsh
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 8104 >>训练你的职业技能
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 602 >>训练你的职业技能
    .target Miles Welsh
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 120 >>训练你的职业技能
    .target Archmage Shymm
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 759 >>训练你的职业技能
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>训练你的职业技能
    .target Archmage Shymm
    .xp <30,1
step << Mage    
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff] 
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 408443 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 8053 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 556 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_制造|r |T133684:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Train |T133687:0|t[Heavy Wool Bandage]
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >>|cRXP_WARN_制造|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Train |T133671:0|t[Silk Bandage]
    >>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Thunderhorn
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from her|r
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target Kuna Thunderhorn
    .itemcount 3030,<1400
step
    #optional
    .abandon 6561,6565,6563,6921
    --6561 Blackfathom Villainy
    --6565 Allegiance to the Old Gods
    --6563 The Essence of Aku'Mai
    --6921 Amongst the Ruins
    .dungeon BFD
step
    #completewith Elevators
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Tal
    .zoneskip The Barrens
    .zoneskip Thousand Needles
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tatternack|r
    .accept 1153 >>接受任务《物归己用》 新的矿石样本
    .target Tatternack Steelforge
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grish|r
    .turnin 5881 >>交任务《 前往熔光镇》 召回卫兵
    .target Grish Longrunner
    .isOnQuest 5881
step
    #label Elevators
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Moonhorn|r
    .accept 4542 >>接受任务《物归己用》 给乱风岗的紧急信件
    .target Brave Moonhorn
step
    .goto Thousand Needles,31.97,23.76,30 >> Take the lift down to Thousand Needles
    >>|cRXP_WARN_Don't fall off! You'll DIE!|r
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>击杀 the |cRXP_ENEMY_加拉克信使|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务《物归己用》 暗杀计划
    .use 12564
    .unitscan Galak Messenger
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往暴风城大教堂内，与 Freewind Post's Elevators
step
    .goto Thousand Needles,45.91,49.91,25 >> Take the Elevator up to Freewind
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Longhorn|r
    .accept 9431 >>接受任务《物归己用》 另一条路
    .target Magistrix Elosai
step
    .goto Thousand Needles,46.00,50.80
    >>点击 the |cRXP_PICK_Wanted Poster|r
    .accept 5147 >>接受任务《物归己用》 通缉：阿纳克-恐怖图腾
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >>交任务《 前往熔光镇》 神圣之火
    .accept 1197 >>接受任务《物归己用》 神圣之火
    .target Rau Cliffrunner
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >>交任务《 前往熔光镇》 给乱风岗的紧急信件
    .accept 4841 >>接受任务《物归己用》 清除半人马
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_，|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_笨重的短弓|r] |cRXP_BUY_from him if it's up|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r
    >>|cRXP_BUY_Buy one or more|r |T134419:0|t[Rune of Teleportation]|cRXP_BUY_from him|r
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target Montarr
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板埃比克瓦|r
    .home >>将你的炉石设置为暮色森林 Post
    .target Innkeeper Abeqwa
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈加尔|r
    .accept 4821 >>接受任务《物归己用》 异型卵
    .target Hagar Lightninghoof
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elu|r
    .accept 4767 >>接受任务《物归己用》 驭风者
    .target Elu
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r
    .fp Freewind Post >> Get the Freewind Post flight path
    .target Nyse
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>击杀 |cRXP_ENEMY_加拉克斥候|r,|cRXP_ENEMY_加拉克争斗者|r, 和 |cRXP_ENEMY_加拉克逐风者|r
    >>|cRXP_WARN_Kill every|r |cRXP_ENEMY_加拉克斥候|r |cRXP_WARN_that you see as they are more rare|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>进入 cave
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>前去找 the |cRXP_PICK_Ancient Brazier|r
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Open the |cRXP_PICK_Ancient Brazier|r.拾取地上的 it for the |cRXP_LOOT_Cloven Hoof|r
    >>|cRXP_WARN_Be careful! The brazier is defended by two level 30|r |cRXP_ENEMY_加拉克烈焰守卫|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob Galak Flame Guard
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>击杀 the |cRXP_ENEMY_加拉克信使|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务《物归己用》 暗杀计划
    .use 12564
    .unitscan Galak Messenger
step
    #loop
	.goto Thousand Needles,43.12,36.86,0
	.goto Thousand Needles,43.12,36.86,50,0
	.goto Thousand Needles,41.18,34.83,50,0
	.goto Thousand Needles,40.42,34.45,50,0
	.goto Thousand Needles,39.00,32.56,50,0
	.goto Thousand Needles,39.68,34.93,50,0
	.goto Thousand Needles,39.76,35.82,50,0
	.goto Thousand Needles,39.32,36.93,50,0
	.goto Thousand Needles,40.43,37.96,50,0
	.goto Thousand Needles,41.04,39.03,50,0
	.goto Thousand Needles,41.12,41.34,50,0
	.goto Thousand Needles,42.33,40.54,50,0
	.goto Thousand Needles,42.84,39.09,50,0
	.goto Thousand Needles,44.15,40.72,50,0
	.goto Thousand Needles,44.98,41.03,50,0
	.goto Thousand Needles,45.66,43.81,50,0
	.goto Thousand Needles,47.23,41.98,50,0
	.goto Thousand Needles,48.57,43.53,50,0
	.goto Thousand Needles,49.39,41.24,50,0
	.goto Thousand Needles,48.14,40.43,50,0
	.goto Thousand Needles,47.11,40.29,50,0
	.goto Thousand Needles,45.89,40.32,50,0
	.goto Thousand Needles,44.43,38.36,50,0
    >>击杀 |cRXP_ENEMY_加拉克斥候|r,|cRXP_ENEMY_加拉克争斗者|r, 和 |cRXP_ENEMY_加拉克逐风者|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>前去找 |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >>接受任务《物归己用》 信仰的试炼
    .timer 7,Test of Faith RP
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>等剧情结束
    >>|cRXP_WARN_Jump off the end of the wooden platform. You'll get teleported instead of dying from fall damage|r
    .complete 1149,1 --Explore Zone (1)
step
    #softcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>交任务《 前往熔光镇》 信仰的试炼
    .accept 1150 >>接受任务《物归己用》 耐力的试炼
    .target Dorn Plainstalker
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>交任务《 前往熔光镇》 信仰的试炼
    .target Dorn Plainstalker
    .solo
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>交任务《 前往熔光镇》 信仰的试炼
    .accept 1150 >>接受任务《物归己用》 耐力的试炼
    .target Dorn Plainstalker
    .group
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>拾取地上的 the |cRXP_LOOT_异型卵|ron the ground
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #loop
    .goto Thousand Needles,60.49,58.82,0
    .goto Thousand Needles,63.69,60.43,0
    .goto Thousand Needles,65.84,61.77,0
    .goto Thousand Needles,63.67,48.03,0
    .goto Thousand Needles,60.49,58.82,50,0
    .goto Thousand Needles,63.69,60.43,50,0
    .goto Thousand Needles,65.84,61.77,50,0
    .goto Thousand Needles,63.67,48.03,50,0
    >>击杀 |cRXP_ENEMY_雷鸣岩石元素|r。拾取他们的 |cRXP_LOOT_Purifying Earth|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>拾取地上的 the |cRXP_LOOT_异型卵|ron the ground
    >>|cRXP_WARN_It has 3 different spawn locations. They are marked on the map|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往暴风城大教堂内，与 Freewind Post's Elevators
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Longhorn|r
    .turnin 4841 >>交任务《 前往熔光镇》 清除半人马
    .accept 5064 >>接受任务《物归己用》 恐怖图腾的密信
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rau|r
    .turnin 1197 >>交任务《 前往熔光镇》 神圣之火
    .target Rau Cliffrunner
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈加尔|r
    .turnin 4821 >>交任务《 前往熔光镇》 异型卵
    .accept 4865 >>接受任务《物归己用》 狂热之蛇
    .target Hagar Lightninghoof
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_笨重的短弓|r] |cRXP_BUY_from him if it's up|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_，|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #softcore
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den
step
    #softcore
    #completewith Grenka
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Screeching Windcallers|r cast|r |T136022:0|t[Gust of Wind]|cRXP_WARN_, a 4-second AoE stun within 10 yards of the |cRXP_ENEMY_Screeching Windcaller|r
    |cRXP_ENEMY_尖啸鹰身人号|r cast|r |T136122:0|t[Deafening Screech]|cRXP_WARN_, an 8 second silence|r << Mage/Warlock/Priest/Druid/Shaman
step
    #softcore
    #completewith next
    .goto Thousand Needles,25.84,54.78
    打开 |cRXP_PICK_Harpy Foodstuffs|r on the ground in the back of the cave to summon |cRXP_ENEMY_Grenka|r
    >>|cRXP_WARN_Be careful, multiple packs of |cRXP_ENEMY_Harpies|r |cRXP_WARN_will spawn one after another|r
step
    #softcore
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>击杀 for |cRXP_LOOT_Grenka's Claw|r
    >>|cRXP_WARN_Be careful, this cave has dynamic respawns|r
    >>|cRXP_WARN_This quest is VERY HARD. Group up or skip it if you can't solo it|r
    .link https://www.youtube.com/watch?v=EVy-6OjB5bs&t=27300s >> CLICK HERE for a visual reference if you think it's doable
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
step
    #hardcore
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den
    .group 0
step
    #hardcore
    #completewith Grenka
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Screeching Windcallers|r cast|r |T136022:0|t[Gust of Wind]|cRXP_WARN_, a 4-second AoE stun within 10 yards of the |cRXP_ENEMY_Screeching Windcaller|r
    |cRXP_ENEMY_尖啸鹰身人号|r cast|r |T136122:0|t[Deafening Screech]|cRXP_WARN_, an 8 second silence|r << Mage/Warlock/Priest/Druid/Shaman
    .group 0
step
    #hardcore
    #completewith next
    .goto Thousand Needles,25.84,54.78
    打开 |cRXP_PICK_Harpy Foodstuffs|r on the ground in the back of the cave to summon |cRXP_ENEMY_Grenka|r
    >>|cRXP_WARN_Be careful, multiple packs of |cRXP_ENEMY_Harpies|r |cRXP_WARN_will spawn one after another|r
    .group 0
step
    #hardcore
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>击杀 for |cRXP_LOOT_Grenka's Claw|r
    >>|cRXP_WARN_Be careful, this cave has dynamic respawns|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
    .group 2
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>击杀 for |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r |cRXP_WARN_defending him!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>前去找 Highperch
    .subzoneskip 482
step
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Run up the path.前去找 
step
    #completewith PaokaEscort
    >>拾取地上的 
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
    >>|cRXP_WARN_Be careful if |cRXP_ENEMY_锐爪飞心|r |cRXP_WARN_is up! This is a level 32 rare elite|r
    .accept 4770,1 >>接受任务《物归己用》 回家
    .target Pao'ka Swiftmountain
    .unitscan Heartrazor
step
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escort|r |cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_Three Highperch Wyverns will spawn once |cRXP_FRIENDLY_Pao'ka|r reaches the middle of Highperch. You only need to aggro the eastern one and the others will disappear|r
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>拾取地上的 
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>击杀 for |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r |cRXP_WARN_defending him!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Laer|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Laer Stepperunner
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >>交任务《 前往熔光镇》 暗杀计划
    .accept 4966 >>接受任务《物归己用》 保护卡纳提·灰云
    .target Kanati Greycloud
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>消灭那些试图阻止仪式的 |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务《 前往熔光镇》 保护卡纳提·灰云
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >>交任务《 前往熔光镇》 狂热之蛇
    .accept 5062 >>接受任务《物归己用》 神圣之火
    .turnin 4770 >>交任务《 前往熔光镇》 回家
    .target Motega Firemane
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >>交任务《 前往熔光镇》 另一条路
    .accept 9433 >> A Dip in the Moonwell
    .accept 5151 >>接受任务《物归己用》 超适应齿轮
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,22.78,24.53
    >>Open the cage 和 kill the |cRXP_ENEMY_被激怒的黑豹|r.拾取地上的 him for the |cRXP_LOOT_超适应齿轮|r
    >>|cRXP_WARN_Group up if you need to. This quest is HARD|r
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob Enraged Panther
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>击杀 the |cRXP_ENEMY_加拉克信使|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务《物归己用》 暗杀计划
    .use 12564
    .unitscan Galak Messenger
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>|cRXP_WARN_Use the|r |T132995:0|t[Robotron Control Unit] |cRXP_WARN_near the|r |cRXP_PICK_Concealed Control Panel|r
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>|cRXP_WARN_As you are controlling the|r |cRXP_FRIENDLY_机器助手3000型|r|cRXP_WARN_, enter the Moonwell and use the|r |T134754:0|t[Gather Water] |cRXP_WARN_ability to collect|r |cRXP_LOOT_Thalanaar Moonwell Water|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target Robotron 3000
    .use 23675
step
    #label Messenger
    #loop
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43,40,0
    >>击杀 the |cRXP_ENEMY_加拉克信使|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务《物归己用》 暗杀计划
    .use 12564
    .unitscan Galak Messenger
step
    #loop
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,0
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    >>击杀 for |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_He patrols counter-clockwise|r
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >>击杀 to level 29 500+/36300 xp
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >>交任务《 前往熔光镇》 暗杀计划
    .accept 4966 >>接受任务《物归己用》 保护卡纳提·灰云
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>消灭那些试图阻止仪式的 |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务《 前往熔光镇》 保护卡纳提·灰云
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >>交任务《 前往熔光镇》 月亮井的水
    .accept 9434 >>接受任务《物归己用》 测试药剂
    .turnin 5151 >>交任务《 前往熔光镇》 超适应齿轮
    .target Wizlo Bearingshiner
    .isQuestComplete 5151
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >>交任务《 前往熔光镇》 月亮井的水
    .accept 9434 >>接受任务《物归己用》 测试药剂
    .target Wizlo Bearingshiner
step
    #loop
    .goto Thousand Needles,36.58,38.77,0
    .goto Thousand Needles,36.58,38.77,35,0
    .goto Thousand Needles,37.77,38.17,35,0
    .goto Thousand Needles,36.63,36.23,35,0
    .goto Thousand Needles,34.96,33.22,35,0
    .goto Thousand Needles,33.37,32.85,35,0
    .goto Thousand Needles,33.67,34.09,35,0
    .goto Thousand Needles,34.88,34.82,35,0
    .goto Thousand Needles,35.62,36.20,35,0
    .goto Thousand Needles,36.05,37.41,35,0
    >>拾取地上的 the |cRXP_PICK_Incendia Agave Plants|ron the ground 和 对话
    >>|cRXP_ENEMY_Scalding Elementals|r and |cRXP_ENEMY_Boiling Elementals|r are immune to frost damage, and highly resistant to fire. Try to avoid them or use Arcane spells << Mage
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Boiling Elementals|r |cRXP_WARN_施放|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Shaman/Druid
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Scalding Elementals|r |cRXP_WARN_施放|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
    .complete 5062,1 --Collect Incendia Agave (x10)
step
    #completewith HSTB
    .hs >>Hearth to 雷霆崖，莫高雷
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>|cRXP_WARN_施放|r |T135765:0|t[Teleport: Thunder Bluff]
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>训练你的职业技能
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8422 >>训练你的职业技能
    .target Archmage Shymm
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Pala
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >>交任务《 前往熔光镇》 钢齿土狼
    .accept 1136 >> Accept Frostmaw
    .target Melor Stonehoof
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 14319 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 5384 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urek|r
    .train 14263 >>训练你的职业技能
    .target Urek Thunderhorn
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >>训练你的宠物技能
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ker|r
    .train 7887 >>训练你的职业技能
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Torm|r
    .train 7369 >>训练你的职业技能
    .accept 1718 >>接受任务《物归己用》 岛民
    .target Torm Ragetotem
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Torm|r
    .train 20658 >>训练你的职业技能
    .accept 1718 >>接受任务《物归己用》 岛民
    .target Torm Ragetotem
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >>交任务《 前往熔光镇》 神圣之火
    .accept 5088 >>接受任务《物归己用》 阿利卡拉
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >>交任务《 前往熔光镇》 神圣之火
    .target Magatha Grimtotem
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 3029 >>训练你的职业技能
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 783 >>训练你的职业技能
    .target Kym Wildmane
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r
    .train 22568 >>训练你的职业技能
    .target Kym Wildmane
    .xp <32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 8104 >>训练你的职业技能
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 602 >>训练你的职业技能
    .target Miles Welsh
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miles|r
    .train 6077 >>训练你的职业技能
    .target Miles Welsh
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 759 >>训练你的职业技能
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>训练你的职业技能
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shymm|r
    .train 8422 >>训练你的职业技能
    .target Archmage Shymm
    .xp <32,1
step << Mage    
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff] 
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 8053 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 556 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tigor|r
    .train 421 >>训练你的职业技能
    .target Tigor Skychaser
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >>|cRXP_WARN_制造|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Train |T133671:0|t[Silk Bandage]
    >>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sage|r
    .accept 1049 >>接受任务《物归己用》 堕落者纲要
    .target Sage Truthseeker
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Thunderhorn
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from her|r
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target Kuna Thunderhorn
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r
    >>|cRXP_WARN_Alternatively you can also buy a|r |T135576:0|t[Bullova]
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r
    >>|cRXP_WARN_Alternatively you can also buy a|r |T135576:0|t[Bullova] |cRXP_WARN_or check the Auction House if something better is available|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith TearMoons
    +|cRXP_WARN_Equip the|r |T135275:0|t[Broadsword] 
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equip the|r |T135651:0|t[Main Gauche] 
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r
    .turnin 879 >>交任务《 前往熔光镇》 内奸
    .accept 906 >>接受任务《物归己用》 内奸
    .target Mangletooth
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >>接受任务《物归己用》 野猪人的武器
    .turnin 893 >>交任务《 前往熔光镇》 野猪人的武器
    .accept 1153 >>接受任务《物归己用》 新的矿石样本
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .accept 884 >>接受任务《物归己用》 奥瓦坦卡
    .turnin 884 >>交任务《 前往熔光镇》 奥瓦坦卡
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jorn|r
    .accept 885 >>接受任务《物归己用》 瓦希塔帕恩
    .turnin 885 >>交任务《 前往熔光镇》 瓦希塔帕恩
    .target Jorn Skyseer
    .itemcount 5103,1
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>Travel to 血蹄村，莫高雷
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r
    .train 132245 >>学习 |T136103:0|t[Kodo Riding]
    .vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step
    .goto The Barrens,50.48,78.72,100 >> Travel into Dustwallow Marsh
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>点击地上的 ground
    .accept 1268 >>接受任务《物归己用》 可疑的蹄印
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>点击地上的 plank of wood on the ground
    .accept 1269 >>接受任务《物归己用》 帕瓦尔·雷瑟上尉
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>点击地上的 fireplace
    .accept 1251 >>接受任务《物归己用》 黑色盾牌
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #completewith FlyFreewind
    .goto Dustwallow Marsh,30.65,45.34,40,0
    .goto Dustwallow Marsh,32.28,42.80,40,0
    .goto Dustwallow Marsh,33.12,40.85,40,0
    .goto Dustwallow Marsh,33.55,38.71,40,0
    .goto Dustwallow Marsh,34.73,37.66,40,0
    .goto Dustwallow Marsh,34.31,34.40,40,0
    .goto Dustwallow Marsh,33.30,31.23,40,0
    .goto Dustwallow Marsh,36.64,31.72,120,0
    .subzone 496 >>Travel to 蕨墙村，尘泥沼泽
    >>|cRXP_WARN_Be careful! There are level 36-38 mobs in the area. Follow the waypoint arrow for safety|r
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r
    .turnin 1268 >>交任务《 前往熔光镇》 可疑的蹄印
    .target Krog
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r
    .turnin 1269 >>交任务《 前往熔光镇》 帕瓦尔·雷瑟上尉
    .target Krog
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r
    .turnin 1251 >>交任务《 前往熔光镇》 黑色盾牌
    .accept 1321 >>接受任务《物归己用》 黑色盾牌
    .target Krog
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r
    .accept 1321 >>接受任务《物归己用》 黑色盾牌
    .target Krog
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜高尔|r
    .turnin 1321 >>交任务《 前往熔光镇》 黑色盾牌
    .target Do'gol
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_祖尔格|r
    .vendor >>|cRXP_BUY_Buy a|r |T135158:0|t[Big Stick]|cRXP_BUY_from him if it's up|r
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target Zulrg
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
    .zoneskip Dustwallow Marsh,1
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Balai|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from her if they're up|r
    .target Balai Lok'Wein
    .zoneskip Dustwallow Marsh,1
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Balai|r
    >>|cRXP_BUY_Buy the|r |T133735:0|t[First Aid Manuals]|cRXP_BUY_from her|r
    .collect 16112,1,873,1 >> Manual: Heavy Silk Bandage (1)
    .collect 16113,1,873,1 >> Manual: Mageweave Bandage (1)
    .collect 16084,1,873,1 >> Manual: Expert First Aid - Under Wraps (1)
    .target Balai Lok'Wein
    .zoneskip Dustwallow Marsh,1
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙尔迪|r 
    .fp Brackenwall >> Get the Brackenwall Village Flight Path
    .fly Freewind Post >>Fly to 乱风岗 ，千针石林
    .target Shardi
    .zoneskip Dustwallow Marsh,1
step
    #optional
    #completewith FreewindHome
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Freewind Post >>Fly to 乱风岗 ，千针石林
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >>交任务《 前往熔光镇》 驭风者
    .target Elu
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_笨重的短弓|r] |cRXP_BUY_from him if it's up|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_，|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板埃比克瓦|r
    .home >>将你的炉石设置为暮色森林 Post
    .target Innkeeper Abeqwa
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Longhorn|r
    .turnin 9434 >>交任务《 前往熔光镇》 测试药剂
    .target Magistrix Elosai
step
    #softcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >>交任务《 前往熔光镇》 耐力的试炼
    .accept 1151 >>接受任务《物归己用》 力量的试炼
    .target Dorn Plainstalker
    .isQuestComplete 1150
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >>交任务《 前往熔光镇》 耐力的试炼
    .accept 1151 >>接受任务《物归己用》 力量的试炼
    .target Dorn Plainstalker
    .isQuestComplete 1150
    .group
step
    #optional
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .accept 1151 >>接受任务《物归己用》 力量的试炼
    .target Dorn Plainstalker
    .isQuestTurnedIn 1150
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Find 和 kill |cRXP_ENEMY_罗卡里姆|r.拾取地上的 him for his |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_He patrols a large portion of the northern/western part of the zone|r
    >>|cRXP_WARN_Skip this step for now if you can't find him|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
step
    .goto Thousand Needles,31.47,36.71,30 >> Head to Darkcloud Pinnacle
    .isOnQuest 5064,5147,4904
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Travel up Darkcloud Pinnacle
step
    .goto Thousand Needles,31.79,32.58
    >>Open the |cRXP_PICK_Document Chest|ron top of the plataeu.拾取地上的 it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,1 --Secret Note #1 (1)
step
    .goto Thousand Needles,33.80,39.90
    >>Open the |cRXP_PICK_Document Chest|r对话，NPC在里面 the big tent.拾取地上的 it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,2 --Secret Note #2 (1)
step
    .goto Thousand Needles,39.20,41.60
    >>Open the |cRXP_PICK_Document Chest|r对话，NPC在里面 the tent on the eastern plateau.拾取地上的 it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,3 --Secret Note #3 (1)
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >>前去找 the |cRXP_PICK_篝火|ron the northern/eastern plateau 
step
    >>Clear the |cRXP_ENEMY_Grimtotems|r和 then light the |cRXP_PICK_篝火|r
	>>击杀 for her |cRXP_LOOT_Skin|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob Arikara
step
    .goto Thousand Needles,38.00,26.80
    >>击杀 for his |cRXP_LOOT_Hoof|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob Arnak Grimtotem
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lakota|r
    >>|cRXP_WARN_This will start an escort|r
    .accept 4904,1 >>接受任务《物归己用》 终获解救
    .target Lakota Windsong
step
    #label LakoteEscort
    .goto Thousand Needles,38.96,29.46,20,0
    .goto Thousand Needles,37.56,31.43,20,0
    .goto Thousand Needles,36.89,31.73,20,0
    .goto Thousand Needles,35.64,31.01,20,0
    .goto Thousand Needles,34.53,30.78,20,0
    .goto Thousand Needles,33.19,28.54,20,0
    .goto Thousand Needles,32.53,27.44,20,0
    .goto Thousand Needles,32.28,28.67,20,0
    .goto Thousand Needles,32.04,31.37,20,0
    .goto Thousand Needles,32.86,32.62,20,0
    .goto Thousand Needles,33.05,35.42,20,0
    .goto Thousand Needles,31.06,36.89
	>>护送 |cRXP_FRIENDLY_Lakota|r to safety
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn every time she reaches a new platform. Try and stay ahead of her to clear the platforms if you have respawns behind|r
	>>|cRXP_WARN_Be careful as this quest is HARD. Don't be afraid to escape by running behind you and failing the escort|r
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target Lakota Windsong
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Motega|r
    .turnin 5088 >>交任务《 前往熔光镇》 阿利卡拉
    .target Motega Firemane
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >>交任务《 前往熔光镇》 暗杀计划
    .accept 4966 >>接受任务《物归己用》 保护卡纳提·灰云
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>消灭那些试图阻止仪式的 |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>交任务《 前往熔光镇》 保护卡纳提·灰云
    .isQuestComplete 4966
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Find 和 kill |cRXP_ENEMY_罗卡里姆|r.拾取地上的 him for his |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_He patrols a large portion of the northern/western part of the zone|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
step
    #completewith next
    .goto Thousand Needles,12.51,13.83,80,0
    .goto Thousand Needles,11.21,22.09,80,0
    >>击杀 拾取地上的 them for an |cRXP_LOOT_Ore Sample|r
    >>|cRXP_WARN_Skip this step for now if it does not drop|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .zoneskip Feralas
step
    #completewith FeralasFP
    .subzone 1099 >>前往暴风城大教堂内，与 Camp Mojache in Feralas
    >>|cRXP_WARN_Be careful! Stay on the road to avoid high level mobs|r
step
    .goto Feralas,76.06,43.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布隆克|r
    .vendor >> |cRXP_BUY_Buy|r |T134833:0|t[Superior Healing Potions] |cRXP_BUY_from him if they're up|r
    .target Bronk
    .isQuestAvailable 1151
step
    #label FeralasFP
    .goto Feralas,75.45,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r
    .fp Camp Mojache >> Get the Camp Mojache Flight Path
    .fly freewind Post >>Fly to 乱风岗 ，千针石林
    .target Shyn
    .subzoneskip 484
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >>交任务《 前往熔光镇》 恐怖图腾的密信
    .turnin 5147 >>交任务《 前往熔光镇》 通缉：阿纳克-恐怖图腾
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thalia|r
    .turnin 4904 >>交任务《 前往熔光镇》 终获解救
    .target Thalia Amberhide
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from him if they're up|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_，|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_笨重的短弓|r] |cRXP_BUY_from him if it's up and fill your quiver with arrows|r
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorn|r
    .turnin 1151 >>交任务《 前往熔光镇》 力量的试炼
    .target Dorn Plainstalker
    .isQuestComplete 1151
step
    #loop
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,51.89,43.02,40,0
    .goto Thousand Needles,53.41,46.19,40,0
    .goto Thousand Needles,54.05,44.96,40,0
    .goto Thousand Needles,53.47,46.65,40,0
    .goto Thousand Needles,52.61,48.28,40,0
    .goto Thousand Needles,53.64,48.50,40,0
    .goto Thousand Needles,51.48,48.06,40,0
    .goto Thousand Needles,59.69,47.76,40,0
    .goto Thousand Needles,62.21,47.76,40,0
    .goto Thousand Needles,62.63,48.38,40,0
    .goto Thousand Needles,64.01,47.52,40,0
    .goto Thousand Needles,63.92,46.63,40,0
    .goto Thousand Needles,63.10,45.53,40,0
    .goto Thousand Needles,65.83,51.44,40,0
    .goto Thousand Needles,65.44,50.11,40,0
    .goto Thousand Needles,64.91,50.30,40,0
    .goto Thousand Needles,66.11,49.91,40,0
    .goto Thousand Needles,66.32,49.13,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,58.87,58.69,40,0
    .goto Thousand Needles,57.66,57.70,40,0
    .goto Thousand Needles,58.93,57.68,40,0
    .goto Thousand Needles,58.94,56.55,40,0
    .goto Thousand Needles,58.97,54.98,40,0
    .goto Thousand Needles,59.32,53.69,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,59.79,58.16,0
    >>击杀 |cRXP_ENEMY_砂齿勘探员|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #optional
    .abandon 1151,5147,5064,5088,1152
    --1151 Test of Strength
    --5147 Wanted - Arnak Grimtotem
    --5064 Grimtotem Spying
    --5088 Arikara
    --1152 Test of Lore
step
    #optional
    .goto Thousand Needles,43.12,36.86
    .xp 30 >>击杀 to level 30
step
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >>飞往闪光平原
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kravel|r
    .accept 1111 >>接受任务《物归己用》 码头主管迪兹维格
	.accept 5762 >>接受任务赫米特·奈辛瓦里二世
	.target Kravel Koalbeard
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >>Travel to 加基森，塔纳利斯
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >>获取棘齿城飞行路径
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Bulkrek Ragefist
    .cooldown item,6948,<0
    .zoneskip The Barrens
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >>获取棘齿城飞行路径
    .target Bulkrek Ragefist
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >>Hearth to 乱风岗 ，千针石林
    .goto Thousand Needles,46.06,51.41,30 >>Arrive in Freewind Post
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r
    .fly Camp Taurajo >>Fly to 陶拉祖营地，贫瘠之地
    .target Nyse
    .subzoneskip 484,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >>交任务《 前往熔光镇》 新的矿石样本
    .target Tatternack Steelforge
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>Travel to 血蹄村，莫高雷
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r
    .train 132245 >>学习 |T136103:0|t[Kodo Riding]
    .vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>Travel to 陶拉祖营地，贫瘠之地
    .skill riding,<75,1
step
    #label FlyCR
    #completewith SwarmGrows
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads>>Fly to 十字路口，北贫瘠之地
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r
    .turnin 906 >>交任务《 前往熔光镇》 内奸
    .target Thork
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r
    .accept 1145 >>接受任务《物归己用》 疯狂的虫群
    .target Korran
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
	.target Devrak
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
	.target Devrak
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
	.target Devrak
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >>交任务《 前往熔光镇》 疯狂的虫群
    .accept 1146 >>接受任务《物归己用》 疯狂的虫群
    .target Belgrom Rockmaul
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索瑞克|r
	.accept 1718 >>接受任务《物归己用》 岛民
    .target Sorek
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Doras
    .zoneskip Orgrimmar,1
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1111 >>交任务《 前往熔光镇》 码头主管迪兹维格
    .accept 1112 >>接受任务《物归己用》 给克拉维尔的零件
    .target Wharfmaster Dizzywig
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r
    .turnin 220 >>交任务《 前往熔光镇》 水之召唤
    .accept 63 >>接受任务《物归己用》 水之召唤
    .target Islen Waterseer
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Islen|r
    >>|cRXP_WARN_Make sure you get the|r |T134754:0|t[|cRXP_LOOT_水之灵契|r
    .turnin 972 >>交任务《 前往熔光镇》 水之灵契
	.collect 6637,1 --Water Sapta (1)
    .target Islen Waterseer
step
    #可选 << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>交任务《 前往熔光镇》 玛伦·星眼
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target Mahren Skyseer
    .isOnQuest 874
step
    #optional
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahren|r
    .accept 873 >>接受任务《物归己用》 依沙瓦克
    .target Mahren Skyseer
    .isQuestTurnedIn 874
step
    #可选 << !Warrior !Shaman
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>击杀 |cRXP_ENEMY_依沙瓦克|r。拾取他的 |cRXP_LOOT_依沙瓦克的心脏|r
    >>|cRXP_WARN_He has four different spawn locations alongside the coast|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isOnQuest 873
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >>前往弗雷岛 
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Klannoc|r
    .turnin 1718 >>交任务《 前往熔光镇》 岛民
    .accept 1719 >>接受任务《物归己用》 格斗考验
    .target Klannoc Macleod
step << Warrior
	>>Step onto the grate behind you. Quickly kill the |cRXP_ENEMY_挑衅者|r that come one by one
    >>击杀 
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob Big Will
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Klannoc|r
    >>|cRXP_WARN_This will teach you Berserker Stance|r
    .turnin 1719 >>交任务《 前往熔光镇》 格斗考验
    .accept 1791 >>接受任务《物归己用》 捕风者
    .target Klannoc Macleod
step
    #可选 << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >>交任务《 前往熔光镇》 依沙瓦克
    .target Mahren Skyseer
    .isQuestComplete 873
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >> Now you should be looking for a group to Razorfen Kraul
    .dungeon RFK
step << !Mage
    #可选 << !Warrior !Shaman
    #completewith FlyOrg2
    .goto The Barrens,62.81,37.91,200 >>Travel 飞往棘齿城
    .subzoneskip 392
step << !Mage
    #label FlyOrg2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Bragok
    .zoneskip Orgrimmar
step << Mage
    .cast 3567 >>|cRXP_WARN_施放|r |T135759:0|t[Teleport: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 8412 >>训练你的职业技能
    .target Pephredo
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_皮菲瑞多|r
    .train 8422 >>训练你的职业技能
    .target Pephredo
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_霍苏斯|r|cRXP_BUY_. Buy two or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Horthus
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 1760 >>训练你的职业技能
    .target Ormok
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r
    .train 8623 >>训练你的职业技能
    .target Ormok
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_雷库尔|r
	.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Shaman
    .goto Orgrimmar,37.95,37.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Searn|r
    .trainer >>训练你的职业技能
    .accept 1531 >>接受任务《物归己用》 空气的召唤
    .target Searn Firewarder
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 5784 >>学习 |T136103:0|t[Summon Felsteed]
    .target Mirket
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r
    .train 6213 >>训练你的职业技能
    .target Mirket
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r
	.vendor >>Buy any pet upgrades you can afford
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >>交任务《 前往熔光镇》 疯狂的虫群
    .accept 1146 >>接受任务《物归己用》 疯狂的虫群
    .target Belgrom Rockmaul
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 7369 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz|r
    .train 20658 >>训练你的职业技能
    .target Grezz Ragefist
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 5384 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak|r
    .train 14263 >>训练你的职业技能
    .target Ormak Grimshot
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r
    .train 24559 >>训练你的宠物技能
    .target Xao'tsu
    .xp <30,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_金索拉|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows]|cRXP_BUY_from him|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r
    .train 197 >>学习双手斧
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 602 >>训练你的职业技能
    .target Ur'kyo
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_乌尔库|r
    .train 6077 >>训练你的职业技能
    .target Ur'kyo
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Pyreanor|r
    .train 34769 >>学习 |T136103:0|t[Summon Warhorse]
    .target Master Pyreanor
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Pyreanor|r
    .train 19836 >>训练你的职业技能
    .target Master Pyreanor
    .xp <32,1
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔达|r 和 |cRXP_FRIENDLY_Ogunaro|r
    .train 825 >>学习 |T136103:0|t[Wolf Riding]
    .vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FF狼|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kildar
    .target Ogunaro Wolfrunner
step << Troll
    #optional
    #completewith next
    .subzone 367 >>Travel to 森金村，杜隆塔尔
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r
    .train 10861 >>学习 |T136103:0|t[Raptor Riding]
    .vendor >>|cRXP_BUY_Buy a|r |T132253:0|t[|cFF0070FFRaptor|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Xar'Ti
    .target Zjolnir
step
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Camp Taurajo >> Fly Camp Taurajo
    .target Doras
    .zoneskip The Barrens
    .dungeon RFK
step
    #completewith next
    >>|cRXP_WARN_If possible, have party members share the following quest. Skip this step otherwise|r
    .accept 1109 >>接受任务《物归己用》 蝙蝠的粪便
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >>进入剃刀沼泽
    .dungeon RFK
step
    >>击杀 for a |cRXP_LOOT_Kraul Guano|r
    .complete 1109,1 --Kraul Guano (1)
    .mob Kraul Bat
    .mob Greater Kraul Bat
    .dungeon RFK
    .isOnQuest 1109
step
    >>击杀 |cRXP_ENEMY_卡尔加·刺肋|r. Loot her for her |cRXP_LOOT_Heart|r and for the |T134939:0|t[|cRXP_LOOT_Small Scroll|r]. Use the scroll to start the quest
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>接受任务《物归己用》 邪恶的盟友
    .mob Charlga Razorflank
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_进口商威利克斯|r
    >>|cRXP_WARN_This will start an escort|r
    .accept 1144 >>接受任务《物归己用》 进口商威利克斯
    .target Willix the Importer
    .dungeon RFK
step
    >>护送 |cRXP_FRIENDLY_进口商威利克斯|r 进入剃刀沼泽
    >>|cRXP_WARN_确保你靠近 |cRXP_FRIENDLY_威利克斯|r 否则任务可能无法完成|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target Willix the Importer
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_进口商威利克斯|r
    .turnin 1144 >>交任务《 前往熔光镇》 进口商威利克斯
    .target Willix the Importer
    .isQuestComplete 1144
    .dungeon RFK
step << !Mage
    #completewith RFKFinish
	.hs >>Hearth to 乱风岗 ，千针石林
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon RFK
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r
    .fly Thunder Bluff >>Fly to 雷霆崖，莫高雷
    .target Nyse
    .zoneskip Thunder Bluff
    .isQuestComplete 1102
    .dungeon RFK
step << Mage
    .cast 3566 >>|cRXP_WARN_施放|r |T135765:0|t[Teleport: Thunder Bluff]
    .zoneskip Thunder Bluff
    .isQuestComplete 1102
    .dungeon RFK
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Auld|r
    .turnin 1102 >>交任务《 前往熔光镇》 奥尔德的报复
    .target Auld Stonespire
    .isQuestComplete 1102
    .dungeon RFK
step
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Nyse
    .zoneskip Thousand Needles,1
    .isQuestComplete 1102
    .dungeon RFK
step
    #optional
    #label RFKFinish
    .dungeon RFK
step
    #sticky
    #completewith EnterGNOMER
    .zone 721,2 >> Now you should be looking for a group to Gnomeregan
    .dungeon GNOMER
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺格|r
    .accept 2841 >>接受任务《物归己用》 设备之战
    .target Nogg
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索维克|r
    >>|cRXP_WARN_Go through his dialogue to accept this quest|r
    .accept 2842 >>接受任务《物归己用》 主工程师斯库提
    .target Sovik
    .dungeon GNOMER
step
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >>Fly to 棘齿城，北贫瘠之地
    .target Doras
    .zoneskip Orgrimmar,1
    .dungeon GNOMER
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >>Take 向南前往荆棘谷
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯库提|r
    .turnin 2842 >>交任务《 前往熔光镇》 主工程师斯库提
    .accept 2843 >>接受任务《物归己用》 出发！诺莫瑞根！
    .target Scooty
    .timer 9 >> Goblin Transponder
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯库提|r
    .turnin 2843 >>交任务《 前往熔光镇》 出发！诺莫瑞根！
    .target Scooty
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >> Step onto the Gnomeregan Transponder
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >> Enter Gnomeregan
    .dungeon GNOMER
step
    >>击杀 for his |cRXP_LOOT_Safe Combination|r
    >>拾取地上的 side of the room for the |cRXP_LOOT_Rig Blueprints|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob Mekgineer Thermaplugg
    .dungeon GNOMER
step << !Mage
    #completewith next
	.hs >>Hearth to 乱风岗 ，千针石林
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Nyse
    .zoneskip Orgrimmar
    .dungeon GNOMER
step << !Mage
    #optional
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fly Orgrimmar >>Fly to 奥格瑞玛，杜隆塔尔
    .target Bragok
    .subzoneskip 392,1
step << Mage
    .cast 3567 >>|cRXP_WARN_施放|r |T135759:0|t[Teleport: Orgrimmar]
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺格|r
    .turnin 2841 >>交任务《 前往熔光镇》 设备之战
    .target Nogg
    .dungeon GNOMER
    .isQuestComplete 2841

]])
