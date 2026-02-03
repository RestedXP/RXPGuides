if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde !Warrior !Shaman
#name 20-23 石爪山脉/贫瘠之地
#version 7
#subgroup RestedXP 部落 1-30级
#next 23-25 希尔斯布莱德丘陵

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前去找|cRXP_FRIENDLY_霍苏斯 |r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>前去找|cRXP_FRIENDLY_霍苏斯 |r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍苏斯|r 对话
    >>|cRXP_BUY_从他那里购买|r |T134419:0|t[传送符文] |cRXP_BUY_|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target 霍苏斯
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
    .goto Orgrimmar,39.50,37.17,20 >>沿着塔向上前进，然后朝格罗玛什要塞方向前往
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
    .goto Orgrimmar,45.12,63.88,10 >>沿着塔楼向上前往 |cRXP_FRIENDLY_多拉斯 |r
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
    .goto Orgrimmar,45.12,63.88,10 >>沿着塔楼向上前往 |cRXP_FRIENDLY_多拉斯 |r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
step << !Shaman !Warrior
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 9626 >>交任务面见兽人 << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >>交任务面见兽人 << !BloodElf
    .target 萨尔
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨歌者|r 对话
    .accept 9428 >>接受任务前往碎木岗哨
    .target 银月大使帕拉·晨歌
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .train 879 >>训练你的职业技能
    .target 派雷亚诺
step
    #label MeetingTW
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佐尔 |r 对话
    .accept 1061 >>接受任务石爪之灵
    .target 佐尔·孤树
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 1953 >>训练你的职业技能
    .target 皮菲瑞多
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r  |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔库|r 对话
    .train 14914 >>训练你的职业技能
    .target 乌尔库
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 10794 >>交任务碎手盗贼
    .accept 2460 >>接受任务碎手军礼
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_选中 |cRXP_FRIENDLY_申苏尔|r 并向他行注目礼|r
    .complete 2460,1 --Shattered Salute Performed
    .target 申苏尔
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2460 >>交任务碎手军礼
    .accept 2458 >>接受任务卧底密探
    .target 申苏尔
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    .train 1094 >>训练你的职业技能
    .target 格罗达尔
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>放弃任务凯伦丁的召唤
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gan'rul|r 和 |cRXP_FRIENDLY_卡祖尔|r 对话
    .accept 1507 >>接受任务噬魂者
    .target 甘鲁尔·血眼
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >>交任务噬魂者
    .accept 1508 >>接受任务盲眼卡祖尔
    .accept 65601 >>接受任务 要爱就会受伤害
    .target 卡祖尔
    .goto Orgrimmar,47.05,46.43
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >>前往 |cRXP_FRIENDLY_赞卡沙|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞卡沙|r 对话
    .turnin 1508 >>交任务盲眼卡祖尔
    .accept 1509 >>接受任务多格兰的消息
    .target 赞卡沙
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >>前去找 |cRXP_FRIENDLY_玛加尔|r
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加尔|r 对话
    .turnin 65601 >>交任务 要爱就会受伤害
    .accept 65610 >>接受任务 希望你还在
    .target 玛加尔
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>前往并与 |cRXP_FRIENDLY_索乌|r 交谈
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .money <0.2000
    .target 索乌
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 5118 >>训练你的职业技能
    .target 奥玛克
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>学习双手斧技能
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target 哈纳什
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .accept 959 >>接受任务港口的麻烦
    .target 起重机操作员比戈弗兹
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .accept 1483 >>接受任务菲兹克斯
    .target 斯布特瓦夫
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .accept 865 >>接受任务一定是因为角
    .accept 1069 >>接受任务深苔蜘蛛的卵
    .target 麦伯克·米希瑞克斯
step << Rogue
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳上船只，下到第2层，并将你的开锁技能提升到至少 70|r
    .skill lockpicking,70,1
step
    #completewith XroadsPickups
    .subzone 380 >>前往十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .accept 870 >>接受任务遗忘之池
    .target 图加·符文图腾
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 899 >>接受任务复仇的怒火
    .accept 4921 >>接受任务在战斗中失踪
    .target 曼科里克
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
    .isQuestAvailable 899
    .bindlocation 380
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 1509 >>交任务多格兰的消息
    .accept 1510 >>接受任务多格兰的消息
    .target 加兹罗格
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fp The Crossroads >>获得十字路口的飞行点
    .target 迪弗拉克
    .subzoneskip 380,1
step
    #label XroadsPickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    .accept 848 >>接受任务菌类孢子
    .target 药剂师赫布瑞姆
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .accept 850 >>接受任务科卡尔首领
    .target 雷戈萨·死门
step
    #completewith next
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto The Barrens,44.55,23.65,0
    .goto The Barrens,45.52,22.42,40,0
    .goto The Barrens,44.63,22.55,40,0
    .goto The Barrens,44.55,23.65,40,0
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_注意！|r |cRXP_ENEMY_巴拉克·科多班恩|r 的近战攻击伤害非常高，而且他还受到一名 |cRXP_ENEMY_科卡尔牧民|r 的保护。他们可以对你施放投网，并在远程对你进行射击
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    #completewith next
    .zone Stonetalon Mountains >>前往石爪山脉
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1061 >>交任务石爪之灵
    .accept 1062 >>接受任务地精侵略者
    .target 希雷斯·碎石
    .goto The Barrens,35.26,27.88
    .accept 6548 >>接受任务为我的村庄复仇
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79
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
    >>在该区域击杀 |cRXP_ENEMY_恐怖图腾恶徒|r 和 |cRXP_ENEMY_恐怖图腾佣兵|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob 恐怖图腾恶徒
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob 恐怖图腾佣兵
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 6548 >>交任务为我的村庄复仇
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯兹格拉|r 对话
    .turnin 1510 >>交任务多格兰的消息
    .accept 1511 >>接受任务肯兹格拉的伤药
    .target 肯兹格拉
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .accept 6461 >>接受任务盗窃的蜘蛛
    .target 辛吉拉
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿着道路前往篝火处
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>击杀 |cRXP_ENEMY_格鲁迪格·黑云|r 和 |cRXP_ENEMY_恐怖图腾蛮兵|r
    >>|cRXP_WARN_务必在开始洞内任务之前，先击杀全部6 名|r |cRXP_ENEMY_恐怖图腾蛮兵|r |cRXP_WARN_！|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob 格鲁迪格·黑云
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob 恐怖图腾蛮兵
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雅|r对话
    .accept 6523,1 >>接受任务保护卡雅
    .target 卡雅·扁蹄
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送 |cRXP_FRIENDLY_卡雅|r，并始终保持在她身边
    >>|cRXP_WARN_小心！当你到达阿帕拉耶营地的篝火时，会刷新三名|r |cRXP_ENEMY_恐怖图腾|r |cRXP_WARN_敌人|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target 卡雅·扁蹄
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .accept 6461 >>接受任务盗窃的蜘蛛
    .target 辛吉拉
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>击杀每个你看到的 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step
    .goto Stonetalon Mountains,59.08,75.70
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 6284 >>接受任务贝瑟莱斯
step
    #completewith Besseleth1
    >>击杀 |cRXP_ENEMY_深苔毒蜘蛛|r 和 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔毒蜘蛛
step
    #completewith next
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>击杀 |cRXP_ENEMY_贝瑟莱斯|r，并拾取她的 |cRXP_LOOT_贝瑟莱斯的牙齿|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan 贝瑟莱斯
step
    .goto Stonetalon Mountains,54.99,76.03
    >>击杀 |cRXP_ENEMY_深苔爬行者|r
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >>前去找 |cRXP_FRIENDLY_其兹|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1483 >>交任务菲兹克斯
    .accept 1093 >>接受任务超级收割机6000
    .target 菲兹克斯
step
    #completewith BluePrints
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
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
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob 深苔毒蜘蛛
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r |cRXP_BUY_交谈。购买一把|r |T135423:0|t[大型战斧] |cRXP_BUY_从他那里|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_维尼克斯|r |cRXP_BUY_交谈。购买一把|r |T135324:0|t[长剑] |cRXP_BUY_从他那里|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target 维尼克斯
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob 风险投资公司樵夫
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>击杀 |cRXP_ENEMY_风险投资公司操作员|r。拾取他们的 |cRXP_LOOT_蓝图|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob 风险投资公司操作员
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
    .mob 风险投资公司樵夫
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
    >>在树附近拾取 |cRXP_PICK_蜘蛛卵|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_深苔幼蛛|r |cRXP_WARN_有几率召唤一只 22 级的|r |cRXP_ENEMY_深苔雌蜘蛛|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_如果你拥有超过 15 个 |cRXP_LOOT_深苔蛛卵|r|cRXP_WARN_，将多余的分开堆叠（Shift 点击），然后删除它们|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1093 >>交任务超级收割机6000
    .accept 1094 >>接受任务新的指示
    .target 菲兹克斯
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
    >>|cRXP_WARN_保存你拾取的任何|r |T134339:0|t[小毒囊] |cRXP_WARN_|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob 深苔爬行者
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 768 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 5221 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <22,1
step
    #completewith HSXroads1
    .hs >>使用炉石返回十字路口
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 870 >>交任务遗忘之池
    .accept 877 >>接受任务死水绿洲
    .target 图加·符文图腾
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    >>|cRXP_FRIENDLY_赫布瑞姆|r |cRXP_WARN_会开启一个 45 分钟的限时任务|r
    .turnin 848 >>交任务菌类孢子
    .timer 7,菌类孢子 剧情
    .accept 853 >>接受任务药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestComplete 848
step
    #optional
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫布瑞姆|r 对话
    >>|cRXP_FRIENDLY_赫布瑞姆|r |cRXP_WARN_会开启一个 45 分钟的限时任务|r
    .accept 853 >>接受任务药剂师扎玛
    .target 药剂师赫布瑞姆
    .isQuestTurnedIn 848
step
    #optional
    #label HSXroads1
step
    #sticky
    #completewith Zamah
    +|cRXP_WARN_你正在进行限时任务，不要暂离。如果失败请跳过该任务|r
    .isOnQuest 853
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>在水下点击 |cRXP_PICK_气泡裂隙|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .subzone 380 >>返回十字路口
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 877 >>交任务死水绿洲
    .accept 880 >>接受任务变异的生物
    .target 图加·符文图腾
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
    >>在湖中及其周围击杀 |cRXP_ENEMY_绿洲钳嘴龟|r，并拾取它们的 |cRXP_LOOT_壳|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob 绿洲钳嘴龟
    .dungeon WC
step
    #completewith next
    .subzone 380 >>返回十字路口
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图加|r 对话
    .turnin 880 >>交任务变异的生物
    .accept 1489 >>接受任务哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
    .target 图加·符文图腾
    .dungeon WC
step
    #completewith next
    .goto The Barrens,52.33,46.58,60,0
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_完整的迅猛龙角|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血肉模糊的尸体|r 对话
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target 血肉模糊的尸体
    .skipgossip
step
    #loop
    .goto The Barrens,48.95,48.70,0
    .goto The Barrens,49.10,47.16,0
    .goto The Barrens,52.53,46.33,0
    .goto The Barrens,48.95,48.70,60,0
    .goto The Barrens,49.10,47.16,60,0
    .goto The Barrens,52.53,46.33,60,0
    >>击杀 |cRXP_ENEMY_赤鳞镰爪龙|r。拾取他们的 |cRXP_LOOT_完整的迅猛龙角|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob 赤鳞镰爪龙
step
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_拉克塔曼尼的蹄子|r]
    >>|cRXP_WARN_使用 |T132318:0|t [|cRXP_LOOT_拉克塔曼尼之蹄|r]以开启该任务|r
    >>|cRXP_WARN_他有 4 个刷新点（已在地图上标记）|r
    >>|cRXP_WARN_如果找不到他，请跳过此步骤|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务拉克塔曼尼
    .use 5099
    .unitscan 拉克塔曼尼
step
    #completewith CampTFP
    .subzone 378 >>前往陶拉祖营地
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 883 >>交任务拉克塔曼尼
    .target 乔恩·星眼
    .isOnQuest 883
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳格玛|r 对话
    .turnin 1511 >>交任务肯兹格拉的伤药
    .accept 1515 >>接受任务多格兰之囚
    .target 步兵劳格玛
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
    .target 碎牙
step
    #label CampTFP
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fp >>获得陶拉祖营地的飞行点
    .target 欧姆萨·雷角
    .subzoneskip 378,1
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背野猪人|r，并拾取它们的 |cRXP_LOOT_獠牙|r
    >>|cRXP_WARN_请保留|r|cRXP_WARN_你获得的 |T134128:0|t[|cRXP_LOOT_血之碎片|r]|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob 刺背寻水者
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob 刺背织棘者
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob 刺背地卜师
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多格兰|r 对话
    .turnin 1515 >>交任务多格兰之囚
    .accept 1512 >>接受任务爱的礼物
    .target 步兵多格兰
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
    >>击杀 |cRXP_ENEMY_刺背野猪人|r，并拾取它们的 |cRXP_LOOT_獠牙|r
    >>|cRXP_WARN_请保留|r|cRXP_WARN_你获得的 |T134128:0|t[|cRXP_LOOT_血之碎片|r]|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob 刺背寻水者
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob 刺背织棘者
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob 刺背地卜师
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    .goto The Barrens,44.55,59.27
    >>击杀 |cRXP_ENEMY_刺背野猪人|r。并拾取它们的 |T134128:0|t[|cRXP_LOOT_血岩碎片|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob 刺背寻水者
    .mob 刺背织棘者
    .mob 刺背地卜师
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务野猪人的内战
    .accept 5052 >>接受任务阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务阿迦玛甘的血岩碎片
    .target 碎牙
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r 对话
    .aura 16618 >>|cRXP_WARN_使用你的 |r|T134128:0|t[|cRXP_LOOT_血之碎片|r]，|cRXP_WARN_从 |cRXP_FRIENDLY_撕牙|r 处|r |cRXP_WARN_t换取 |T136022:0|t[风之精魂]|r
    >>|cRXP_WARN_如果你已经拥有雷霆崖的飞行点，请跳过此步骤|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target 碎牙
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .accept 6382 >>接受任务灰谷狩猎
    .target 乔恩·星眼
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>前往莫高雷
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>乘电梯进入雷霆崖
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 欧姆萨·雷角
    .zoneskip Thunder Bluff
step << !Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安塞瓦|r 对话
    .train 227 >>学习锤类武器
    .target 安塞瓦
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往长者高地
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 1489 >>交任务哈缪尔·符文图腾
    .accept 1490 >>接受任务纳拉·蛮鬃
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 1490 >>交任务纳拉·蛮鬃
    .accept 914 >>接受任务尖牙德鲁伊
    .target 纳拉·蛮鬃
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克|r 对话
    .trainer >>训练你的职业技能
    .accept 27 >>接受任务必修的课程
    .target 图拉克·符文图腾
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    >>|cRXP_WARN_她会在周围巡逻|r
    .accept 264 >>至死方休
    .target 克拉莉斯·弗斯特
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .accept 962 >>接受任务毒蛇花
    .target 药剂师扎玛
    .isOnQuest 853
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .accept 962 >>接受任务毒蛇花
    .target 药剂师扎玛
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
    .target 药剂师扎玛
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 14914 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 8103 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <22,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 12051 >>训练你的职业技能
    .target 大法师山姆
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 2138 >>训练你的职业技能
    .target 大法师山姆
    .xp <22,1
step
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉莉斯|r 对话
    >>|cRXP_WARN_她会在周围巡逻|r
    .accept 264 >>至死方休
    .target 克拉莉斯·弗斯特
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 2645 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8498 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尼斯|r 对话
    .accept 1529 >>接受任务水之召唤
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_制造|r |T133688:0|t[厚亚麻绷带] |cRXP_WARN_直至你的技能达到80或更高|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    >>|cRXP_WARN_如果你没有足够的|r |T132889:0|t[亚麻布] |cRXP_WARN_将技能提升到 80，请跳过此步骤|r
    .train 3277 >>学习 |T133684:0|t[绒线绷带]
    .train 7934 >>学习 |T134437:0|t[抗毒药剂] << Rogue
    .target 潘德·缚石
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_制造|r |T134437:0|t[解毒剂] |cRXP_WARN_如果你找到了任何|r |T134339:0|t[小毒囊]
    >>|cRXP_WARN_留着以后再用|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>前往猎人高地
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .accept 1131 >>接受任务钢齿土狼
    .target 梅洛·石蹄
    --TODO: Beta check if this quest can't be accepted without doing 1130 first
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5118 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24494 >>训练你的宠物技能
    .target 赫苏瓦·雷角
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 交谈
    .train 845 >>训练你的职业技能
    .accept 1823 >>接受任务和鲁迦交谈
    .target 托姆·暴怒图腾
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞金|r 对话
    .accept 1195 >>接受任务神圣之火
    .target 赞金·石蹄
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 塔尔
    .zoneskip The Barrens
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 和 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1094 >>交任务新的指示
    .accept 1095 >>接受任务新的指示
    .target 斯布特瓦夫
    .goto The Barrens,62.98,37.22
    .turnin 865 >>交任务一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
    .accept 1491 >>接受任务智慧饮料
    .target 麦伯克·米希瑞克斯
    .goto The Barrens,62.37,37.62
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    .home >>将你的炉石设置到棘齿城
    .target 旅店老板维尔雷
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉利克斯|r 对话
    .vendor >>如果他有出售的话，从他那里购买 |T134583:0|t[|cRXP_FRIENDLY_强力锁甲护腿|r]
    .target 格拉利克斯
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克斯宾德|r 对话
    .vendor >>如果他有出售的话，从他那里购买 |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .target 维克斯宾德
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备 |T134583:0|t[|cRXP_FRIENDLY_强化锁甲短裤|r]|r
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_装备|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    #sticky
    #completewith EnterWC
    .subzone 718 >>现在你应该开始寻找哀嚎洞穴的小队
    .dungeon WC
step
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_曼科里克|r 和 |cRXP_FRIENDLY_图加|r 对话
    .turnin 4921 >>交任务在战斗中失踪
    .turnin 899 >>交任务复仇的怒火
    .target 曼科里克
    .goto The Barrens,51.95,31.58
    .turnin 877 >>交任务死水绿洲
    .target 图加·符文图腾
    .goto The Barrens,52.26,31.93
step
    #optional
    #completewith WCcavepickups
    .destroy 5085 >>|cRXP_WARN_销毁剩余的|r |T133721:0|t[刺背野猪人的獠牙] |cRXP_WARN_，因为已经不再需要了|r
step
    .goto The Barrens,46.15,36.93,100 >>前往哀嚎洞穴
    .subzoneskip 718
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>从哀嚎洞穴集合石处跑上山
    >>|cRXP_WARN_紧跟箭头前进以到达隐藏的洞穴|r
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .accept 1486 >>接受任务变异皮革
    .target 纳尔帕克
    .maxlevel 21
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 和 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他们位于哀嚎洞穴入口上方|r
    .accept 1486 >>接受任务变异皮革
    .target 纳尔帕克
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>接受任务清除变异者
    .target 厄布鲁
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_建议如果你只进行1次任务，最多由 3 名玩家尝试完成|r。|cRXP_WARN_否则 |cRXP_LOOT_毒蛇花|r 不够每个人分配|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_建议如果你只进行1次任务，最多由 3 名玩家尝试完成|r。|cRXP_WARN_否则 |cRXP_LOOT_毒蛇花|r 不够每个人分配|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>击杀 |cRXP_ENEMY_变异皮革|r。拾取他们的 |cRXP_LOOT_皮|r
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1486,1 --Deviate Hide (20)
    .complete 1491,1 --Wailing Essence (6)
step
    #label MadMagg
    #loop
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.90,55.43,30,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>击杀 |cRXP_ENEMY_疯狂的马格利什|r。拾取他的 |cRXP_LOOT_99年波尔多陈酿|r
    >>|cRXP_WARN_他处于潜行状态，并且有多个刷新位置|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob 疯狂的马格利什
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >>进入哀嚎洞穴副本传送门，并进入副本
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_建议如果你只进行1次任务，最多由 3 名玩家尝试完成|r。|cRXP_WARN_否则 |cRXP_LOOT_毒蛇花|r 不够每个人分配|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_建议如果你只进行1次任务，最多由 3 名玩家尝试完成|r。|cRXP_WARN_否则 |cRXP_LOOT_毒蛇花|r 不够每个人分配|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>拾取地上的 the |cRXP_LOOT_毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_蝰蛇|r, |cRXP_ENEMY_蹒跚者|r 和 |cRXP_ENEMY_恐惧之牙|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob 变异破坏者
    .complete 1487,2 --Deviate Viper (7)
    .mob 剧毒飞蛇
    .complete 1487,3 --Deviate Shambler (7)
    .mob 变异蹒跚者
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob 变异尖牙风蛇
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>击杀 |cRXP_ENEMY_考布莱恩 |r, |cRXP_ENEMY_安娜科德拉|r, |cRXP_ENEMY_皮萨斯|r 和 |cRXP_ENEMY_瑟芬迪斯|r。拾取他们的 |cRXP_LOOT_宝石|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob 考布莱恩
    .complete 914,2 --Gem of Anacondra (1)
    .mob 安娜科德拉
    .complete 914,3 --Gem of Pythas (1)
    .mob 皮萨斯
    .complete 914,4 --Gem of Serpentis (1)
    .mob 瑟芬迪斯
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 哀嚎洞穴入口处与 |cRXP_FRIENDLY_纳拉雷克斯的信徒|r 对话，将他安全护送到 |cRXP_FRIENDLY_纳拉雷克斯|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>一旦到达 |cRXP_FRIENDLY_纳拉雷克斯|r，你将遭遇两波敌人攻击，最终面对 |cRXP_ENEMY_吞噬者穆塔努斯|r
    >>击杀他并拾取 |T135229:0|t[|cRXP_LOOT_发光的碎片|r]，用它来开始任务
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >>接受任务发光的碎片
    .use 10441
    .mob 吞噬者穆坦努斯
    .dungeon WC
step
    #label DeviateRaptors
    >>击杀 |cRXP_ENEMY_变异破坏者|r, |cRXP_ENEMY_蝰蛇|r, |cRXP_ENEMY_蹒跚者|r 和 |cRXP_ENEMY_恐惧之牙|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob 变异破坏者
    .complete 1487,2 --Deviate Viper (7)
    .mob 剧毒飞蛇
    .complete 1487,3 --Deviate Shambler (7)
    .mob 变异蹒跚者
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob 变异尖牙风蛇
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_这些任务的剩余部分可以在哀嚎洞穴副本入口外完成|r
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    >>|cRXP_WARN_如果竞争过于激烈，可以跳过该任务|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #optional
    #completewith EssenceHides
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_如果竞争过于激烈，可以跳过该任务|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
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
    >>击杀 |cRXP_ENEMY_变异皮革|r。拾取他们的 |cRXP_LOOT_皮|r
    >>击杀 |cRXP_ENEMY_灵质|r。拾取它们的 |cRXP_LOOT_精华|r
    .complete 1486,1 --Deviate Hide (20)
    .complete 1491,1 --Wailing Essence (6)
    .mob 吞噬软浆怪
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
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_施放|r |T133939:0|t[寻找草药] |cRXP_WARN_以便在小地图上显示草药位置|r
    >>|cRXP_WARN_如果竞争过于激烈，可以跳过该任务|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
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
    >>拾取地上的 the |cRXP_PICK_毒蛇花|r
    >>|cRXP_WARN_如果竞争过于激烈，可以跳过该任务|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #completewith GShard
    .hs >>使用炉石返回棘齿城
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>|cRXP_WARN_在哀嚎洞穴中退队卡炉石回城|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_在哀嚎洞穴中粘贴此宏以使用简易炉石返回棘齿城|r
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1491 >>交任务智慧饮料
    .target 麦伯克·米希瑞克斯
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .turnin 959 >>交任务港口的麻烦
    .target 起重机操作员比戈弗兹
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target 斯布特瓦夫
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Crossroads >>飞往十字路口
    .target 布拉高克
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >>沿着山路向上前进
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .turnin 6981 >>交任务发光的碎片
    .accept 3369 >>接受任务在噩梦中
    .target 菲拉·古风
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲拉|r 对话
    .accept 3369 >>接受任务在噩梦中
    .target 菲拉·古风
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄布鲁|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1487 >>交任务清除变异者
    .target 厄布鲁
    .isQuestComplete 1487
    .dungeon WC
step
    #label WCTurnins
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳尔帕克|r 对话
    >>|cRXP_WARN_他位于哀嚎洞穴入口上方|r
    .turnin 1486 >>交任务变异皮革
    .target 纳尔帕克
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 850 >>交任务科卡尔首领
    .target 雷戈萨·死门
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >>前往石爪山脉
    .zoneskip Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .turnin 6523 >>交任务保护卡雅
    .accept 6401 >>接受任务卡雅还活着
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 和 |cRXP_FRIENDLY_玛卡巴|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .target 希雷斯·碎石
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>交任务保护卡雅
    .accept 6401 >>接受任务卡雅还活着
    .target 玛卡巴·扁蹄
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希雷斯|r 对话
    .turnin 1062 >>交任务地精侵略者
    .timer 4,地精侵略者 剧情
    .accept 1063 >>接受任务巫婆长老
    .accept 1068 >>接受任务伐木机
    .goto The Barrens,35.26,27.88
    .target 希雷斯·碎石
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>沿着左侧的道路向上前进
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .turnin 6461 >>交任务盗窃的蜘蛛
    .target 辛吉拉
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>前往烈日石居
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板杰卡|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板杰卡
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店二楼与 |cRXP_FRIENDLY_基达|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_从她那里|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|r << !Warrior
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134413:0|t[活根草] |cRXP_BUY_如果有的话从她那里购买|r << Warrior
    .target 基达
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马格兰|r 对话
	.turnin 6284 >>交任务贝瑟莱斯
    .target 马格兰
step
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马格兰|r 对话
    .accept 5881 >>接受任务召回卫兵
    .target 马格兰
    .xp <23,1
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔姆拉|r 对话
    .turnin 6401 >>交任务卡雅还活着
    .target 塔姆拉·荒原
    .isOnQuest 6401
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔姆|r 对话
    .fp Sun Rock Retreat >>开启烈日石居飞行点
    .target 萨尔姆
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>沿右侧小路向上跑
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏纳曼|r 对话
    .accept 6562 >>接受任务帮助耶努萨克雷
    .target 苏纳曼
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_其兹|r 对话
    .turnin 1095 >>交任务新的指示
    .target 菲兹克斯
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>进入鹰巢小径
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>前往佐拉姆加前哨站
    .subzoneskip 2897
    >>|cRXP_WARN_途中务必避开阿斯特兰纳的守卫。为安全起见请跟随路线指示|r
    .unitscan 阿斯特兰纳哨兵
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fp Zoram'gar Outpost >>获得佐拉姆加前哨站的飞行点
    .target 安德鲁克
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_凯朗|r, |cRXP_FRIENDLY_米苏瓦|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6562 >>交任务帮助耶努萨克雷
    .accept 6563 >>接受任务阿库麦尔的精华
    .target 耶努萨克雷
    .goto Ashenvale,11.56,34.29
    .accept 216 >>接受任务蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>接受任务巨魔符咒
    .target 米苏瓦
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>接受任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto Ashenvale,11.69,34.90
step
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r 对话
    >>|cRXP_WARN_这将开始一个护送任务。小心，任务难度较高|r
    .accept 6641,1 >>接受任务鞭笞者沃尔沙
    .target 穆格拉什
step
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r 对话
    >>|cRXP_WARN_这将开始一个护送任务。非常小心！|cRXP_ENEMY_Vorsha|r 攻击力极高，建议组队进行|r
    .accept 6641,1 >>接受任务鞭笞者沃尔沙
    .target 穆格拉什
step
    #completewith next
    >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob 怒尾纳迦
    .mob 怒尾御浪者
    .mob 怒尾巫师
    .mob 怒尾海巫
    .mob 怒尾女祭司
    .mob 怒尾侍从
    .mob 薇丝比娅
step
    #softcore
    .goto Ashenvale,9.63,27.63
    >>到达后点击 |cRXP_PICK_火盆|r
    >>|cRXP_WARN_将会刷新一波波的|r |cRXP_ENEMY_娜迦|r |cRXP_WARN_。一旦|r |cRXP_ENEMY_沃尔沙|r |cRXP_WARN_出现，要小心，他攻击力非常高|r
    >>|cRXP_WARN_在攻击 |cRXP_ENEMY_沃尔沙|r 之前，|cRXP_WARN_先让|r|cRXP_FRIENDLY_穆格拉什|r 引怪！|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob 鞭笞者沃尔沙
step
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>到达后点击 |cRXP_PICK_火盆|r
    >>|cRXP_WARN_将会刷新一波波的|r |cRXP_ENEMY_娜迦|r |cRXP_WARN_。一旦|r |cRXP_ENEMY_沃尔沙|r |cRXP_WARN_出现，要小心，他攻击力非常高|r
    >>|cRXP_WARN_在与他战斗之前，|cRXP_WARN_先让 |r|cRXP_FRIENDLY_穆格拉什|r 引怪！|r
    >>|cRXP_WARN_准备好使用冷却技能和药水，因为|cRXP_ENEMY_沃尔沙|r 可能会造成高暴击伤害！|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob 鞭笞者沃尔沙
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
    >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob 怒尾纳迦
    .mob 怒尾御浪者
    .mob 怒尾巫师
    .mob 怒尾海巫
    .mob 怒尾女祭司
    .mob 怒尾侍从
    .mob 薇丝比娅
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>前往黑暗深渊的入口
step
    #completewith next
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
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
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r，并拾取她们的 |T134332:0|t[|cRXP_LOOT_潮湿便笺|r]，使用它来开启任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务上古之神的仆从
    .mob 黑暗深渊海潮祭司
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
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #completewith next
    .subzone 2897 >>前往佐拉姆加前哨站
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战歌信使|r 和 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6641 >>交任务鞭笞者沃尔沙
    .goto Ashenvale,12.22,34.21
    .target 战歌信使
    .turnin 6442 >>交任务佐拉姆海岸的纳迦
    .target 玛鲁凯
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6563 >>交任务阿库麦尔的精华
    .turnin 6564 >>交任务上古之神的仆从
    .target 耶努萨克雷
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 27 >>交任务必修的课程
    .accept 28 >>接受任务湖中试炼
    .target 德迪利特·星焰
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 768 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
    .xp >22,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1075 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <22,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>在湖底拾取 |cRXP_PICK_小饰物容器|r，以获得 |T134125:0|t[|cRXP_LOOT_神龛小饰物|r]
    >>|cRXP_WARN_在到达饰品正上方之前不要下水|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >>|cRXP_WARN_在雷姆洛斯神殿使用|r |T134125:0|t[神殿灵珠] |cRXP_WARN_|r
    .complete 30,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r 对话
    .turnin 28 >>交任务湖中试炼
    .accept 30 >>接受任务海狮试炼
    .target 塔加里
step
    #completewith JourneytoTM
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 安德鲁克
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>前往长者高地
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加萨|r 对话
    .turnin 1063 >>交任务巫婆长老
    .accept 1064 >>接受任务被遗忘者的援助
    .timer 6,长者 剧情
    .target 玛加萨·恐怖图腾
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉|r 对话
    .turnin 914 >>交任务尖牙德鲁伊
    .target 纳拉·蛮鬃
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈缪尔|r 对话
    .turnin 3369 >>交任务在噩梦中
    .target 大德鲁伊哈缪尔·符文图腾
    .isOnQuest 3369
    .dungeon WC
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与幻象之池中的 |cRXP_FRIENDLY_扎玛|r 交谈
    .turnin 1064 >>交任务被遗忘者的援助
    .accept 1065 >>接受任务 前往塔伦米尔
    .turnin 962 >>交任务毒蛇花
    .target 药剂师扎玛
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .dungeon WC
step
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 塔尔
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦伯克|r 对话
    .turnin 1491 >>交任务智慧饮料
    .target 麦伯克·米希瑞克斯
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比戈弗兹|r 对话
    .turnin 959 >>交任务港口的麻烦
    .target 起重机操作员比戈弗兹
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .turnin 1529 >>交任务水之召唤
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .turnin 1528 >>交任务水之召唤
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 和 |cRXP_FRIENDLY_玛伦·星眼|r 对话
    .accept 1530 >>接受任务水之召唤
    .target 水之先知伊斯伦
    .goto The Barrens,65.83,43.78
    .turnin 874 >>交任务玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 布拉高克
    .subzoneskip 378
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
    .home >>将你的炉石设置到陶拉祖营地
    .target 比鲁拉
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 交谈
    .turnin 1530 >>交任务水之召唤
    .accept 1535 >>接受任务水之召唤
    .target 布瑞恩
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >>|cRXP_WARN_在布瑞恩的小屋下方的水坑中填满你的|r |T132825:0|t[空的棕色水囊] |cRXP_WARN_|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 交谈
    .turnin 1535 >>交任务水之召唤
    .accept 1536 >>接受任务水之召唤
    .target 布瑞恩
step << Shaman
    #completewith next
    .hs >>使用炉石返回陶拉祖营地
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>回到陶拉祖营地
    .subzoneskip 178
    .cooldown item,6948,<0
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 欧姆萨·雷角
    .zoneskip Orgrimmar
step << !Druid !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 布拉高克
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .zoneskip Orgrimmar
    .dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1512 >>交任务爱的礼物
    .accept 1513 >>接受任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_在召唤圆圈处|cRXP_WARN_使用|r |T133290:0|t[多格兰的吊坠]|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>击杀 |cRXP_ENEMY_被召唤的魅魔|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob 魅魔
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_甘鲁尔|r 对话
    .turnin 1513 >>交任务誓缚
    .target 甘鲁尔·血眼
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6202 >>训练你的职业技能
    .target 米尔科特
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6223 >>训练你的职业技能
    .target 米尔科特
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡雷斯|r |cRXP_BUY_对话。购买一把|r |T135640:0|t[双刃弯刀] |cRXP_BUY_如果你还没有匕首的话|r
    .collect 2207,1 --Collect Jambiya (1)
    .target 卡雷斯
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 8676 >>学习 |T132282:0|t[伏击]
    .train 1943 >>学习 |T132302:0|t[撕裂]
    .train 1856 >>学习 |T132331:0|t[消失]
    .train 1725 >>学习 |T132289:0|t[扰乱]
    .train 1785 >>学习 |T132320:0|t[潜行 等级2]
    .accept 2460 >>接受任务碎手军礼
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>在 |cRXP_FRIENDLY_申苏尔|r 行完注目礼后，选中他并输入 /Salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2460 >>交任务碎手军礼
    .accept 2458 >>接受任务卧底密探
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r |cRXP_BUY_对话。购买|r |T134387:0|t[闪光粉] |cRXP_BUY_从他那里|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target 雷库尔
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_从她那里|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target 卡提斯
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2138 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2121 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r  |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 8103 >>训练你的职业技能
    .target 乌尔库
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 3747 >>训练你的职业技能
    .target 乌尔库
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>从西侧出口进入贫瘠之地
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >>前往尘泥沼泽
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>在水中拾取 |cRXP_PICK_奇怪的锁箱|r，以获得 |T133443:0|t[|cRXP_LOOT_水兽敏捷坠饰|r]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+选中 |cRXP_FRIENDLY_工头费苏勒|r，然后使用你的 |T134536:0|t[信号枪]两次，接着输入 /Salute
    >>|cRXP_WARN_小心！在他变为友好之前不要接近，否则他会攻击你！|r
    .use 8051
    .target 工头费苏勒
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r|cRXP_FRIENDLY_工头费苏勒|r 对话
    .turnin 2458 >>交任务卧底密探
    .accept 2478 >>接受任务基本不可能的任务
    .target 工头费苏勒
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>对 |cRXP_ENEMY_工头希里克斯|r 使用 |T133644:0|t[偷窃技能]，获取他的 |cRXP_LOOT_塔钥匙|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob 工头希里克斯
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_这里的每个怪物对某些技能造成的伤害会增加|r
    >>对 |cRXP_ENEMY_变异风险投资公司工人|r 使用 |T132282:0|t[伏击]
    >>对 |cRXP_ENEMY_风险投资公司巡逻员|r 使用 |T132302:0|t[割裂]
    >>对 |cRXP_ENEMY_风险投资公司看守|r 使用一次 |T132292:0|t[刺骨]（1 连击点）
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>进入盗贼塔并击杀 |cRXP_ENEMY_无人机|r、|cRXP_ENEMY_巡逻者|r 和 |cRXP_ENEMY_哨兵|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob 变异风险投资公司工人
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob 风险投资公司巡逻员
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob 风险投资公司看守
step << Rogue
    .goto The Barrens,54.77,5.57
    >>在塔顶你会找到 |cRXP_ENEMY_加利维克斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_使用|r |T132282:0|t[伏击] |cRXP_WARN_将他的生命值降至一半。使用|r |T132155:0|t[凿击] |cRXP_WARN_恢复能量，并使用|r |T136205:0|t[闪避]
	>>|cRXP_WARN_记得根据需要使用药水和|r |T132819:0|t[菊花茶] |cRXP_WARN_|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob 大工头普兹克·加里维克斯
step << Rogue
    .goto The Barrens,54.77,5.57
    >>使用你的开锁技能打开 |cRXP_PICK_加里维克斯的保险箱|r 并拾取 |cRXP_LOOT_混合物|r。
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处复活。或者从西侧入口跑步前往奥格瑞玛
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>从西侧入口前往奥格瑞玛
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target 迪弗拉克
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申苏尔|r 对话
    .turnin 2478 >>交任务基本不可能的任务
    .accept 2479 >>接受任务希诺特的帮助
    .target 申苏尔
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r |cRXP_BUY_对话。购买|r |T134387:0|t[闪光粉] |cRXP_BUY_从他那里|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target 雷库尔
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8498 >>训练你的职业技能
    .target 卡德里斯
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 905 >>训练你的职业技能
    .target 卡德里斯
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 6192 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 5308 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14323 >>训练你的职业技能
    .target 奥玛克
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14262 >>训练你的职业技能
    .target 奥玛克
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24558 >>训练你的宠物技能
    .target 肖祖
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_特拉克根|r |cRXP_BUY_对话。购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_从他那里|r
    .collect 3137,200,493,1 --Deadly Throwing Axe (200)
    .target 特拉克根
step << Rogue
    >>|cRXP_WARN_如果你身上有|r |T134437:0|t[抗毒药]|cRXP_WARN_，使用一个来解除 |T136230:0|t[赞吉尔之触]|r
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >>|cRXP_WARN_从你的背包中删除|r |T134536:0|t[信号枪] |cRXP_WARN_，因为已经不再需要|r
    .destroy 8066 >>|cRXP_WARN_将 |T134374:0|t[菲兹鲁的哨子]|cRXP_WARN_从背包中删除|r，因为它已经不再需要了|r
step << !Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .home >>将你的炉石设置到奥格瑞玛
	.target 旅店老板格雷什卡
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>离开奥格瑞玛
    .zoneskip Durotar
step
    #optional
    .abandon 1486,1487,914
    .dungeon WC
    --1486 Deviate Hides
    --1487 Deviate Eradication
    --914 Leaders of the Fang
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 23-25级 希尔斯布莱德丘陵
#version 7
#subgroup RestedXP 部落 1-30级
#next 25-27级 灰谷

step
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>离开奥格瑞玛
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
step
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
    .dungeon SFK << !Shaman !Warrior
step
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯下去到幽暗城
    .dungeon SFK << !Shaman !Warrior
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获取幽暗城的飞行路线
    .target 迈克尔·加勒特
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔杜加|r 对话
    .accept 1013 >>接受任务乌尔之书
    .target 看守者贝尔杜加
    .dungeon SFK
step
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
    .zone Tirisfal Glades >>从幽暗城下水道离开
    .dungeon SFK << !Shaman !Warrior
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >>前往银松森林
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >>向东北前往大海
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>在水中拾取 |cRXP_PICK_奇怪的箱子|r，获得 |T133442:0|t[|cRXP_LOOT_水下耐力半枚吊坠|r]
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith next
    .subzone 228 >>前往墓地
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .fp Sepulcher >>获取泰雷多尔的飞行路径
    .target 卡洛斯·拉佐克
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 和 |cRXP_FRIENDLY_姆拉|r 对话
    .accept 493 >>接受任务前往希尔斯布莱德丘陵
    .target 药剂师伦弗利尔
    .goto Silverpine Forest,42.90,40.86
    .turnin 3301 >>交任务茉拉·符文图腾
    .target 茉拉·符文图腾
    .goto Silverpine Forest,42.90,41.99
    .isOnQuest 3301
    .dungeon WC << !Warrior !Shaman
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 对话
    .accept 493 >>接受任务前往希尔斯布莱德丘陵
    .target 药剂师伦弗利尔
step
    .goto Silverpine Forest,44.18,42.68
    >>与地上的 |cRXP_PICK_尤瑞夫的墓碑|r 互动
    .turnin 264 >>交任务至死方休
    .target 克拉莉斯·弗斯特
    .isOnQuest 264
step
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵哨兵莱什|r 对话
    .accept 494 >>接受任务进攻的时机
    .target 亡灵哨兵莱什
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >>前往塔伦米尔
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞斯|r 对话
    .fp Tarren Mill>>获得塔伦米尔飞行路径
    .target 扎瑞斯
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希诺特|r 对话
    .turnin 2479 >>交任务希诺特的帮助
    .accept 2480 >>接受任务希诺特的帮助
    .timer 30,希诺特的帮助 剧情
    .target 瑟尔格·希诺特
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>等待 |cRXP_FRIENDLY_希诺特|r 完成解药制作
    .complete 2480,1 --Cure Completed (1)
step << Rogue  
    .goto Hillsbrad Foothills,61.64,19.19 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希诺特|r 对话
    .turnin 2480 >>交任务希诺特的帮助 
    .target 瑟尔格·希诺特
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>|cRXP_WARN_使用 |T134807:0|t[希诺特的药油]|cRXP_WARN_来治愈|r |T136230:0|t[赞吉尔之触]|r
step << Rogue    
    #completewith TarrenMillPickups
    >>|cRXP_WARN_制作|r |T132273:0|t[速效药膏] 
    .collect 6947,20,1067,1 --Collect Instant Poison (20)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师林度恩|r 对话
    .turnin 1065 >>交任务前往塔伦米尔
    .accept 1066 >>接受任务 无辜者之血
    .turnin 493 >>交任务前往希尔斯布莱德丘陵
    .accept 496 >>接受任务沉醉之药
    .accept 501 >>接受任务镇魂之药
    .target 药剂师林度恩
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>|cRXP_WARN_在塔伦米尔中央的水井使用|r |T132829:0|t[空的红色水囊] |cRXP_WARN_|r
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高级执行官达萨利亚|r 对话
    .turnin 494 >>交任务进攻的时机
    .accept 527 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达斯多恩|r 对话
    .turnin 9425 >>交任务前往塔伦米尔
    .target 顾问达斯多恩
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 549 >>接受任务通缉：辛迪加成员
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁斯克|r 对话
    .accept 498 >>接受任务拯救行动
    .target 克鲁斯克
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target 凯伦·苏萨隆
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锐锋箭]|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target 凯伦·苏萨隆
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>点击 |cRXP_FRIENDLY_通缉布告|r
    .accept 567 >>接受任务 危险
step << Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r 对话
    .home >>将你的炉石设置到塔伦米尔
	.target 旅店老板沙恩
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
	.target 旅店老板沙恩
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T132408:0|t[无情战斧] |cRXP_BUY_如果有货且你还没有的话|r 
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 奥特
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T135640:0|t[宽刃小刀] |cRXP_BUY_如果有货且你还没有的话|r 
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target 奥特
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_西奥多|r 对话
    .stable >>将你的宠物寄存。你即将驯服一只 |cRXP_ENEMY_灰熊|r 和一只 |cRXP_ENEMY_森林潜伏者|r
    .target 塞多蒙·克莱尔
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>|cRXP_WARN_对 |cRXP_ENEMY_灰熊|r |cRXP_WARN_施放|r |T132164:0|t[驯服野兽]。使用它攻击怪物以学习 |T132140:0|t[爪击(等级3)]|r
    .train 17263 >>|cRXP_WARN_对 |cRXP_ENEMY_森林潜伏者|r |cRXP_WARN_施放 |r |T132164:0|t[驯服野兽]。使用它攻击怪物以学习 |T132278:0|t[撕咬(等级3)]|r
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .mob Gray Bear
    .mob Forest Most Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_西奥多|r 对话
    .stable >>放弃你的 |cRXP_ENEMY_灰熊|r 或 |cRXP_ENEMY_森林潜伏者|r，并召回你常用的宠物
    .target 塞多蒙·克莱尔
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>|cRXP_WARN_在你的武器上使用|r |T132273:0|t[速效药膏] |cRXP_WARN_|r
    .itemcount 6947,2
step
	#completewith next
    >>途中击杀 |cRXP_ENEMY_熊|r 和 |cRXP_ENEMY_蜘蛛|r，并拾取它们掉落的 |cRXP_LOOT_舌头|r 和 |cRXP_LOOT_毒液|r
    >>|cRXP_WARN_避开|r |cRXP_ENEMY_老灰熊|r |cRXP_WARN_和 |r|cRXP_ENEMY_被驯养的食苔蛛|r |cRXP_WARN_，因为它们等级较高，不值得击杀|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob 邪恶的灰熊
    .complete 496,2 --Collect Creeper Ichor (x1) 
    .mob 森林爬行者
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >>前往敦霍尔德城堡
    .isOnQuest 549,1066,498
step
    #completewith Drull
    >>击杀 |cRXP_ENEMY_辛迪加盗贼|r |cRXP_ENEMY_守望者|r 和 |cRXP_ENEMY_暗影法师 |r 
    >>从 |cRXP_ENEMY_暗影法师|r 处拾取 |cRXP_LOOT_纯净之血小瓶|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob 辛迪加盗贼
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob 辛迪加卫士
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob 辛迪加暗影法师
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>击杀 |cRXP_ENEMY_狱卒埃斯顿|r，并拾取他的 |cRXP_LOOT_灰暗的铁钥匙|r
    >>|cRXP_WARN_他可以在|r |cRXP_FRIENDLY_托格萨|r |cRXP_WARN_的兵营前找到，或者在|r |cRXP_FRIENDLY_德鲁尔|r |cRXP_WARN_的前方|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob 狱卒埃斯顿
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0   
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>击杀 |cRXP_ENEMY_狱卒玛尔根|r，并拾取他的 |cRXP_LOOT_抛光的金钥匙|r
    >>|cRXP_WARN_他可以在|r |cRXP_FRIENDLY_托格萨|r |cRXP_WARN_前方找到，或者在塔楼底部|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob 狱卒玛尔根
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>点击地上的 |cRXP_PICK_锁链|r
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r 对话
    >>如果有出售的话，|cRXP_BUY_从她那里|cRXP_BUY_购买|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r]|cRXP_BUY_和 |r|T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]|r
    .vendor >>出售物品并修理装备
    .target 克瑞斯·李盖斯
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r 对话
    >>如果有出售的话，|cRXP_BUY_从她那里|cRXP_BUY_购买 |r|T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r]|r
    .vendor >>出售物品并修理装备
    .target 克瑞斯·李盖斯
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r 对话
    >>如果有出售的话，|cRXP_BUY_从她那里|cRXP_BUY_购买|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r]|r
    .vendor >>出售物品并修理装备
    .target 克瑞斯·李盖斯
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_装备|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] |cRXP_WARN_和|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] 
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
    +|cRXP_WARN_装备|r |T134590:0|t[|cRXP_FRIENDLY_捕猎短裤|r] 
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_装备|r |T132603:0|t[|cRXP_FRIENDLY_野狼护腕|r] 
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波刃短剑|r 对话
    .vendor >>出售物品并修理装备
    .target 克瑞斯·李盖斯
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>击杀 |cRXP_ENEMY_狱卒埃斯顿|r，并拾取他的 |cRXP_LOOT_灰暗的铁钥匙|r
    >>|cRXP_WARN_他可以在|r |cRXP_FRIENDLY_托格萨|r |cRXP_WARN_的兵营前找到，或者在|r |cRXP_FRIENDLY_德鲁尔|r |cRXP_WARN_的前方|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob 狱卒埃斯顿
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>点击地上的 |cRXP_PICK_锁链|r
    .complete 498,1 --Rescue Drull (1)
step
    #completewith next
    >>击杀 |cRXP_ENEMY_辛迪加盗贼|r 和 |cRXP_ENEMY_辛迪加卫士|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob 辛迪加盗贼
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob 辛迪加卫士
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
    >>击杀 |cRXP_ENEMY_辛迪加暗影法师|r。拾取他们的 |cRXP_LOOT_无辜者之血|r
    >>|cRXP_WARN_在要塞西南方的塔楼处还能找到更多|r
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob 辛迪加暗影法师
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
    >>|cRXP_WARN_在要塞西南方的塔楼处还能找到更多|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob 辛迪加盗贼
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob 辛迪加卫士
step
	#completewith next
    >>在返回塔伦米尔的途中，击杀 |cRXP_ENEMY_熊|r 和 |cRXP_ENEMY_蜘蛛|r，并拾取它们掉落的 |cRXP_LOOT_舌头|r 和 |cRXP_LOOT_毒液|r
    >>|cRXP_WARN_避开|r |cRXP_ENEMY_老灰熊|r |cRXP_WARN_和 |r|cRXP_ENEMY_被驯养的食苔蛛|r |cRXP_WARN_，因为它们等级较高，不值得击杀|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob 邪恶的灰熊
    .complete 496,2 --Collect Creeper Ichor (x1) 
    .mob 森林爬行者
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >>返回塔伦米尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克鲁斯克|r 和 |cRXP_FRIENDLY_达萨利亚|r 对话
    .turnin 498 >>交任务拯救行动
    .target 克鲁斯克
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >>交任务通缉：辛迪加成员
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target 凯伦·苏萨隆
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锐锋箭]|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target 凯伦·苏萨隆
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
	.target 旅店老板沙恩
    .isOnQuest 527
    .subzoneskip 272,1
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 和 |cRXP_FRIENDLY_乌比|r 对话
    .turnin 1066 >>交任务 无辜者之血
    .turnin 496 >>交任务沉醉之药
    .accept 499 >>接受任务沉醉之药
    .target 药剂师林度恩
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>交任务沉醉之药
    .target 乌比
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 和 |cRXP_FRIENDLY_乌比|r 对话
    .turnin 1066 >>交任务 无辜者之血
    .accept 499 >>接受任务沉醉之药
    .target 药剂师林度恩
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>交任务沉醉之药
    .target 乌比
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .turnin 1066 >>交任务 无辜者之血
    .goto Hillsbrad Foothills,61.44,19.05
    .target 药剂师林度恩
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>|cRXP_WARN_从你的背包中删除|r |T134238:0|t[抛光的金钥匙] |cRXP_WARN_，因为已经不再需要|r
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>|cRXP_WARN_从你的背包中删除|r |T134237:0|t[灰暗的铁钥匙] |cRXP_WARN_，因为已经不再需要|r
step
	#completewith Fields1
    >>击杀 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_山地狮的血液|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob 饥饿的山地狮
step
	#completewith Fields1
    >>在返回塔伦米尔的途中，击杀 |cRXP_ENEMY_熊|r 和 |cRXP_ENEMY_蜘蛛|r，并拾取它们掉落的 |cRXP_LOOT_舌头|r 和 |cRXP_LOOT_毒液|r
    >>|cRXP_WARN_避开|r |cRXP_ENEMY_老灰熊|r |cRXP_WARN_和 |r|cRXP_ENEMY_被驯养的食苔蛛|r |cRXP_WARN_，因为它们等级较高，不值得击杀|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob 邪恶的灰熊
    .complete 496,2 --Collect Creeper Ichor (x1) 
    .mob 森林爬行者
    .isOnQuest 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.7,39.4
    .subzone 286 >>前往希尔斯布莱德农场
    .isOnQuest 527
step
    #completewith FarmerRay
	>>在田地及其周围击杀 |cRXP_ENEMY_希尔斯布莱德农夫|r 和 |cRXP_ENEMY_希尔斯布莱德农场工人|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_希尔斯布莱德农夫|r |cRXP_WARN_可以|cRXP_WARN_对你|r施放 |T132343:0|t[缴械]|r << Rogue/Warrior/Shaman/Paladin
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob 希尔斯布莱德农夫 
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob 希尔斯布莱德雇农
    .isOnQuest 527
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>击杀 |cRXP_ENEMY_农夫盖兹|r
    >>|cRXP_WARN_他有三个不同的刷新位置：房屋内、谷仓中或田地里|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan 农夫盖兹
    .isOnQuest 527
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,10,0
    >>击杀 |cRXP_ENEMY_农夫雷恩|r
    >>|cRXP_WARN_他可能在屋外葡萄藤下刷新，或在房屋的1层或2层|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan 农夫雷恩
    .isOnQuest 527
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>在田地及其周围击杀 |cRXP_ENEMY_希尔斯布莱德农夫|r 和 |cRXP_ENEMY_希尔斯布莱德农场工人|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_希尔斯布莱德农夫|r |cRXP_WARN_可以|cRXP_WARN_对你|r施放 |T132343:0|t[缴械]|r << Rogue/Warrior/Shaman/Paladin
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob 希尔斯布莱德农夫 
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob 希尔斯布莱德雇农
    .isOnQuest 527
step
	#completewith TarrenMillTurnins2
    >>击杀 |cRXP_ENEMY_灰熊|r 和 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_灰熊的舌头|r 和 |cRXP_LOOT_山地狮的血液|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob 邪恶的灰熊
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob 饥饿的山地狮
    .isOnQuest 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱顿 |r、|cRXP_FRIENDLY_达萨莉亚 |r 和 |cRXP_FRIENDLY_萨姆萨 |r 对话
    .turnin 496 >>交任务沉醉之药
    .accept 499 >>接受任务沉醉之药
    .turnin 501 >>交任务镇魂之药
    .accept 502 >>接受任务镇魂之药
    .target 药剂师林度恩
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >>交任务希尔斯布莱德之战
    .accept 528 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >>接受任务死亡的纪念品
    .target 亡灵卫兵沙穆萨
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
    .isQuestComplete 501
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱顿 |r、|cRXP_FRIENDLY_达萨莉亚 |r 和 |cRXP_FRIENDLY_萨姆萨 |r 对话
    .turnin 496 >>交任务沉醉之药
    .accept 499 >>接受任务沉醉之药
    .target 药剂师林度恩
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >>交任务希尔斯布莱德之战
    .accept 528 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >>接受任务死亡的纪念品
    .target 亡灵卫兵沙穆萨
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱顿 |r、|cRXP_FRIENDLY_达萨莉亚 |r 和 |cRXP_FRIENDLY_萨姆萨 |r 对话
    .turnin 501 >>交任务镇魂之药
    .accept 502 >>接受任务镇魂之药
    .target 药剂师林度恩
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >>交任务希尔斯布莱德之战
    .accept 528 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >>接受任务死亡的纪念品
    .target 亡灵卫兵沙穆萨
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .accept 499 >>接受任务沉醉之药
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌比|r 对话
    .turnin 499 >>交任务沉醉之药
    .target 乌比
    .isQuestTurnedIn 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达萨利亚|r 和 |cRXP_FRIENDLY_沙穆萨|r 对话
    .turnin 527 >>交任务希尔斯布莱德之战
    .accept 528 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >>接受任务死亡的纪念品
    .target 亡灵卫兵沙穆萨
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 527
step
    #optional
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达萨利亚|r 和 |cRXP_FRIENDLY_沙穆萨|r 对话
    .accept 528 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >>接受任务死亡的纪念品
    .goto Hillsbrad Foothills,62.11,19.68
    .target 亡灵卫兵沙穆萨
    .isQuestTurnedIn 527
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
	.target 旅店老板沙恩
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith Fields2
    >>击杀 |cRXP_ENEMY_灰熊|r 和 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_灰熊的舌头|r 和 |cRXP_LOOT_山地狮的血液|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob 邪恶的灰熊
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob 饥饿的山地狮
    .isOnQuest 496
    .isOnQuest 501
step
	#completewith Fields2
    >>击杀 |cRXP_ENEMY_灰熊|r. 拾取它们的 |cRXP_LOOT_灰熊的舌头|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob 邪恶的灰熊
    .isQuestTurnedIn 501
    .isOnQuest 496
step
	#completewith Fields2
    >>击杀 |cRXP_ENEMY_饥饿的山地狮|r。拾取他们的 |cRXP_LOOT_山地狮的血液|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob 饥饿的山地狮
    .isQuestTurnedIn 496
    .isOnQuest 501
step
    #label Fields2
	.goto Hillsbrad Foothills,32.67,35.33
    .subzone 286 >>前往希尔斯布莱德农场
    .isOnQuest 528
step
    #completewith HillsbradPeasants
    >>击杀 |cRXP_ENEMY_希尔斯布莱德人类|r。拾取他们的 |cRXP_LOOT_希尔斯布莱德人类颅骨|r
    >>|cRXP_WARN_该任务现在不需要完成|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .isOnQuest 546
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯坦雷|r 对话
    >>|cRXP_WARN_等待剧情结束后，再击杀|r |cRXP_ENEMY_狂怒的斯坦利|r
    >>||cRXP_ENEMY_狂怒的斯坦雷|r |cRXP_WARN_会提供完整任务的经验值|r
    .turnin 502 >>交任务镇魂之药
    .timer 9,斯坦利 剧情（保持警惕）
    .mob 斯坦雷
    .isQuestTurnedIn 501
step
    #loop
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
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
    >>|cRXP_WARN_他会在城镇的道路周围巡逻|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan 平民维尔克斯
    .unitscan 暴怒的斯坦雷
    .isOnQuest 567
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯坦雷|r 对话
    >>|cRXP_WARN_等待剧情结束后，再击杀|r |cRXP_ENEMY_狂怒的斯坦利|r
    >>||cRXP_ENEMY_狂怒的斯坦雷|r |cRXP_WARN_会提供完整任务的经验值|r
    .turnin 502 >>交任务镇魂之药
    .timer 9,斯坦利 剧情（保持警惕）
    .mob 斯坦雷
    .isQuestTurnedIn 501
step
    #completewith next
	>>击杀 |cRXP_ENEMY_希尔斯布莱德农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob 希尔斯布莱德农民
    .isQuestTurnedIn 527
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>击杀 |cRXP_ENEMY_农夫卡拉巴|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob 农夫卡拉巴
    .isOnQuest 567
step
    #label HillsbradPeasants
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	>>击杀 |cRXP_ENEMY_希尔斯布莱德农民|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob 希尔斯布莱德农民
    .isQuestTurnedIn 527
step
    #completewith next
    >>杀掉 |cRXP_ENEMY_山地狮|r。拾取他们的 |cRXP_LOOT_山地狮的血液|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob 饥饿的山地狮
    .isOnQuest 501
step
    #loop
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
    >>杀掉 |cRXP_ENEMY_熊|r。拾取他们的 |cRXP_LOOT_舌头|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob 邪恶的灰熊
    .isOnQuest 496
step
    #loop
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
    >>杀掉 |cRXP_ENEMY_山地狮|r。拾取他们的 |cRXP_LOOT_山地狮的血液|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .isOnQuest 501
    .mob 饥饿的山地狮
step
    #loop
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
	>>杀掉 |cRXP_ENEMY_森林爬行者|r 和 |cRXP_ENEMY_被驯养的食苔蛛|r。拾取他们的 |cRXP_LOOT_毒液|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob 森林爬行者
    .mob 被驯养的食苔蛛
    .isOnQuest 496
step << Mage
    .hs >>使用炉石返回塔伦米尔
    .use 6948
    .subzoneskip 272
    .bindlocation 272,1
    .cooldown item,6948,>0,1
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .turnin 496 >>交任务沉醉之药
    .accept 499 >>接受任务沉醉之药
    .turnin 501 >>交任务镇魂之药
    .accept 502 >>接受任务镇魂之药
    .target 药剂师林度恩
    .isQuestComplete 496
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .turnin 496 >>交任务沉醉之药
    .accept 499 >>接受任务沉醉之药
    .target 药剂师林度恩
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .turnin 501 >>交任务镇魂之药
    .accept 502 >>接受任务镇魂之药
    .target 药剂师林度恩
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .accept 499 >>接受任务沉醉之药
    .target 药剂师林度恩
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .accept 502 >>接受任务镇魂之药
    .target 药剂师林度恩
    .isQuestTurnedIn 501
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_度恩|r 对话
    .accept 1067 >>接受任务返回雷霆崖
    .target 药剂师林度恩
    .isQuestTurnedIn 1066
step
    .goto Hillsbrad Foothills,61.53,19.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌比|r 对话
    .turnin 499 >>交任务沉醉之药
    .target 乌比
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达萨利亚|r 对话
    .turnin 528 >>交任务希尔斯布莱德之战
    .accept 529 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .isQuestComplete 528
step
    #optional
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达萨利亚|r 对话
    .accept 529 >>接受任务希尔斯布莱德之战
    .target 高级执行官达萨利亚
    .isQuestTurnedIn 528
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板沙恩|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
	.target 旅店老板沙恩
    .isOnQuest 529
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]|r
    .collect 2515,1800,529,1 << Hunter --Sharp Arrow (1800)
    .target 凯伦·苏萨隆
    .itemcount 2515,<1000
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_凯伦|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从他处|cRXP_BUY_购买|r |T132382:0|t[锐锋箭]|r
    .collect 3030,1800,529,1 << Hunter --Razor Arrow (1800)
    .target 凯伦·苏萨隆
    .xp <25,1
    .itemcount 3030,<1000
step << Shaman/Warrior
    #optional
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T132408:0|t[无情战斧] |cRXP_BUY_如果有货且你还没有的话|r 
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 奥特
    .subzoneskip 272,1
step << Rogue
    #optional
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥特|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T135640:0|t[宽刃小刀] |cRXP_BUY_如果有货且你还没有的话|r 
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target 奥特
    .subzoneskip 272,1
step
    #label Fields3
	.goto Hillsbrad Foothills,32.67,35.33
    .subzone 286 >>前往希尔斯布莱德农场
    .isOnQuest 529
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯坦雷|r 对话
    >>|cRXP_WARN_等待剧情结束后，再击杀|r |cRXP_ENEMY_狂怒的斯坦利|r
    >>||cRXP_ENEMY_狂怒的斯坦雷|r |cRXP_WARN_会提供完整任务的经验值|r
    .turnin 502 >>交任务镇魂之药
    .timer 9,斯坦利 剧情（保持警惕）
    .mob 斯坦雷
    .isQuestTurnedIn 501
step
    #hardcore
    #completewith HillsbradBlacksmith
    +|cRXP_WARN_铁匠铺内最多有 4 个怪，外面还有更多。将它们安全地拉走，直到清理完铁匠铺|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_希尔斯布莱德议员|r，他们会施放 |r |T135846:0|t[寒冰箭]，|cRXP_WARN_会让你很难逃脱|r
step
    #completewith next
	>>击杀 |cRXP_ENEMY_铁匠维林坦|r 和 |cRXP_ENEMY_希尔斯布莱德见习铁匠|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
	.unitscan 铁匠维林坦
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
	.mob 希尔斯布莱德见习铁匠
    .isQuestTurnedIn 528
step
    .goto Hillsbrad Foothills,32.02,45.45
    >>拾取 |cRXP_PICK_一箱铁材|r，以获得 |T132761:0|t[|cRXP_LOOT_一箱铁材|r]
    .complete 529,3 --Collect Shipment of Iron (x1)
    .isQuestTurnedIn 528
step
    #label HillsbradBlacksmith
    .goto Hillsbrad Foothills,32.65,45.48,20,0
    .goto Hillsbrad Foothills,31.87,46.66,20,0
    .goto Hillsbrad Foothills,32.23,45.32
	>>击杀 |cRXP_ENEMY_铁匠维林坦|r 和 |cRXP_ENEMY_希尔斯布莱德见习铁匠|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
	.unitscan 铁匠维林坦
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
	.mob 希尔斯布莱德见习铁匠
    .isQuestTurnedIn 528
step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >>现在你应该开始寻找影牙城堡的小队
    .dungeon SFK
step
    .goto Hillsbrad Foothills,62.37,20.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达萨利亚|r 对话
    .turnin 529 >>交任务希尔斯布莱德之战
	.target 高级执行官达萨利亚
    .isQuestComplete 529
    .dungeon SFK
    .zoneskip Hillsbrad Foothills,1
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞斯|r 对话
    .fly The Sepulcher>>飞往瑟伯切尔
    .target 扎瑞斯
    .zoneskip Hillsbrad Foothills,1
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德瑞克|r 对话
    .accept 1098 >>接受任务影牙城堡里的亡灵哨兵
    .target 高级执行官哈德瑞克
    .dungeon SFK
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .accept 1014 >>接受任务除掉阿鲁高
    .target 达拉尔·道恩维沃尔
    .dungeon SFK
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >>进入幽暗城法师副本传送门，并进入副本
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_文森特|r 对话
    .turnin 1098 >>交任务影牙城堡里的亡灵哨兵
    .target 亡灵哨兵文森特
    .dungeon SFK
    .isOnQuest 1098
step
    >>在 |cRXP_ENEMY_吞噬者芬鲁斯|r 的房间内，从书架上拾取 |cRXP_PICK_乌尔之书|r
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>击杀 |cRXP_ENEMY_大法师阿鲁高|r，并拾取他的 |cRXP_LOOT_头颅|r
    .complete 1014,1 --Head of Arugal (1)
    .mob 大法师阿鲁高
    .dungeon SFK
    .isOnQuest 1014
step
    #hardcore
    #completewith FlytoUC
    .goto Silverpine Forest,45.51,41.26,150,0 
    .subzone 228 >>前往墓地
    .dungeon SFK
step
    #softcore
    #completewith FlytoUC
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德瑞克|r 对话
    .turnin 1098 >>交任务影牙城堡里的亡灵哨兵
    .target 高级执行官哈德瑞克
    .dungeon SFK
    .isQuestComplete 1098
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 1014 >>交任务除掉阿鲁高
    .target 达拉尔·道恩维沃尔
    .dungeon SFK
    .isQuestComplete 1014
step << Mage
    #completewith OrgFood1
    .cast 3563 >>|cRXP_WARN_施放 |T135766:0|t[传送：幽暗城]|r
    .zoneskip Undercity
    .dungeon SFK
step << Mage
    .goto Undercity,85.15,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 2121 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Mage
    #optional
    .goto Undercity,85.15,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 120 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <26,1
    .dungeon SFK
step << Mage
    .goto Undercity,82.79,15.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉娜·阿克雷|r 对话
    >>|cRXP_BUY_从她那里|cRXP_BUY_购买至少两枚 |r|T134419:0|t[传送符文]|r
    .collect 17031,2,6503,1 --Rune of Teleportation (2)
	.target 汉娜·阿克雷
    .dungeon SFK
 step << !Mage
    #label FlytoUC
    #completewith OrgFood1
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .fly Undercity >>飞往幽暗城
    .target 卡洛斯·拉佐克
    .zoneskip Undercity
    .dungeon SFK
step
    #label BookofUrTurnin
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔杜加|r 对话
    .turnin 1013 >>交任务乌尔之书
    .target 看守者贝尔杜加
    .dungeon SFK
    .isQuestComplete 1013
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 5308 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 6178 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <26,1
    .dungeon SFK
step << Rogue
    .goto Undercity,75.19,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_西结|r|cRXP_BUY_交谈。向他购买|r |T133849:0|t[腐朽之尘] |cRXP_BUY_和|r |T132793:0|t[空瓶] |cRXP_BUY_|r
    .collect 2928,40,1067,1 --Collect Dust of Decay (40)
    .collect 3371,40,1067,1 --Collect Empty Vial (40)
    .target 艾泽基尔·格瑞乌斯
    .zoneskip Undercity,1
    .dungeon SFK
step << Rogue    
    #completewith OrgFood1
    >>|cRXP_WARN_制作|r |T132273:0|t[速效药膏] 
    .collect 6947,40,1067,1 --Collect Instant Poison (40)
    .dungeon SFK
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 6762 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <24,1
    .xp >26,1
    .dungeon SFK
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 1833 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <26,1
    .dungeon SFK
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 6223 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <24,1
    .xp >26,1
    .dungeon SFK
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 1456 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <26,1
    .dungeon SFK
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1822 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1850 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_在雷姆洛斯神殿合并这两枚项链以获得|r |cRXP_LOOT_海狮坠饰|r
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 30 >>交任务海狮试炼
    .accept 31 >>接受任务水栖形态
    .target 德迪利特·星焰
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .accept 31 >>接受任务水栖形态
    .target 德迪利特·星焰
    .isQuestTurnedIn 30
step << Mage
    .cast 3567 >>|cRXP_WARN_施放 |T135759:0|t [传送：奥格瑞玛]|r
    .zoneskip Orgrimmar
    .train 3567,3
step << !Shaman
    .hs >>使用炉石返回奥格瑞玛
    .use 6948
    .bindlocation 1637,1
    .zoneskip Orgrimmar
    .train 3567,1 << Mage--Skips if Teleport Orgrimmar is trained
step << Shaman
    .hs >>使用炉石返回陶拉祖营地
    .use 6948
    .zoneskip Orgrimmar
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith CallofWater4
    .goto The Barrens,43.42,77.41,100 >>向南前往 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    #label CallofWater4
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 交谈
    .turnin 1536 >>交任务水之召唤
    .accept 1534 >>接受任务水之召唤
    .target 布瑞恩
step << Shaman
    #completewith next
    .subzone 378 >>回到陶拉祖营地
step << Shaman
    #completewith next
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 欧姆萨·雷角
    .zoneskip Orgrimmar
step << !Mage !Shaman
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_酒吧老板莫拉格|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
	.target 酒吧老板莫拉格
    .isQuestAvailable 6503
step
    .goto Orgrimmar,49.57,69.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .bankdeposit 3692 >>如果你有 |T133730:0|t [|cRXP_LOOT_希尔斯布莱德人类头骨|r]，请将它们存入银行
    .bankdeposit 3564 >>存入|T132761:0|t[|cRXP_LOOT_一箱铁材|r]
    .target 卡鲁斯
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .train 5599 >>训练你的职业技能
    .target 派雷亚诺
    .xp <24,1
    .xp >26,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .train 19939 >>训练你的职业技能
    .target 派雷亚诺
    .xp <26,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 2121 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <24,1
    .xp >26,1
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮菲瑞多|r 对话
    .train 120 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <26,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与位于小屋顶部的|r |cRXP_FRIENDLY_索乌|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .target 索乌
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔库|r 对话
    .train 3747 >>训练你的职业技能
    .target 乌尔库
    .xp <24,1
    .xp >26,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔库|r 对话
    .train 992 >>训练你的职业技能
    .target 乌尔库
    .xp <26,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 8046 >>训练你的职业技能
    .target 卡德里斯
    .xp <24,1
    .xp >26,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .train 943 >>训练你的职业技能
    .target 卡德里斯
    .xp <26,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 6762 >>训练你的职业技能
    .target 奥莫克
    .xp <24,1
    .xp >26,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1833 >>训练你的职业技能
    .target 奥莫克
    .xp <26,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r 对话
	.vendor >>|cRXP_BUY_补充|r |T134387:0|t[闪光粉] |cRXP_BUY_和|r |T132273:0|t[毒药]
    .target 雷库尔
    .zoneskip Orgrimmar,1
    .dungeon !SFK
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6223 >>训练你的职业技能
    .target 米尔科特
    .xp <24,1
    .xp >26,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1456 >>训练你的职业技能
    .target 米尔科特
    .xp <26,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 5308 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <24,1
    .xp >26,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 6178 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <26,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14262 >>训练你的职业技能
    .target 奥玛克
    .xp <24,1
    .xp >26,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 3045 >>训练你的职业技能
    .target 奥玛克
    .xp <26,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
	.train 24558 >>训练你的宠物技能
    .target 肖祖
    .xp <24,1
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
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 25-27 灰谷
#version 7
#subgroup RestedXP 部落 1-30级
#next 27-30 南贫瘠之地/千针石林


step << Rogue
    #optional
    #completewith Splintertree1
    >>|cRXP_WARN_制作|r |T132273:0|t[速效药膏] 
    .collect 6947,40,1067,1 --Collect Instant Poison (40)
    .dungeon !SFK
step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >>从奥格瑞玛的西侧出口离开
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >>沿着河流向北前进，进入灰谷
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>前往碎木岗哨
    >>|cRXP_WARN_你可能会遇到一些 29-30 级的怪物，尽量避开它们|r
    .subzoneskip 431
    .isQuestAvailable 6503
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .dailyturnin 235,742,6382 >>交任务灰谷狩猎
    .turnin 6383 >>交任务灰谷狩猎
    .target 塞娜尼·雷心
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .turnin 6382 >>交任务灰谷狩猎
    .target 塞娜尼·雷心
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯利斯克|r 对话 
    .home >>将你的炉石设置到 碎木岗哨
    .target 旅店老板凯利斯克
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马斯托克|r 对话
    .accept 25 >>接受任务 石爪山的困境
    .target 马斯托克·维尔西斯
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .accept 6441 >>接受任务萨特之角
    .target 皮克希尔
    .maxlevel 26
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fp Splintertree Post >>获得碎木岗哨的飞行点
    .target 乌尔格拉
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 和 |cRXP_FRIENDLY_誓日|r 对话 << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 对话 << !BloodElf
    .accept 6503 >>接受任务灰谷先驱者
    .target 库莱比
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >>交任务前往碎木岗哨 << BloodElf
    .target 顾问萨苏恩·誓日 << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 |r|cRXP_FRIENDLY_基苏|r 对话
    .stable >>将你的宠物寄存。你即将驯服一只 |cRXP_ENEMY_灰谷长者熊|r 和一只 |cRXP_ENEMY_鬼爪阿尔法|r
    .target 基苏
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_对 |cRXP_ENEMY_老灰谷熊|r |cRXP_WARN_施放 |T132164:0|t[驯服野兽]|r。使用它攻击怪物以学习 |T132140:0|t[爪击(等级4) |r
    .mob 老灰谷熊
    .train 17264 >>|cRXP_WARN_对 |cRXP_WARN_鬼爪狼王|r |cRXP_WARN_|r 施放 |T132164:0|t[驯服野兽]。使用它攻击怪物以学习 |T132278:0|t[撕咬(等级4)]|r
    .mob 幽爪前锋
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
    .train 16830 >>|cRXP_WARN_对 |cRXP_ENEMY_老灰谷熊|r |cRXP_WARN_施放 |T132164:0|t[驯服野兽]|r。使用它攻击怪物以学习 |T132140:0|t[爪击(等级4) |r
    .mob 老灰谷熊
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 |r|cRXP_FRIENDLY_基苏|r 对话
    .stable >>放弃你的 |cRXP_ENEMY_灰谷长者熊|r 或 |cRXP_ENEMY_鬼爪阿尔法|r，并召回你常用的宠物
    .target 基苏
    .zoneskip Ashenvale,1
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 对话
    .accept 6503 >>接受任务灰谷先驱者
    .target 库莱比
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>击杀 |cRXP_ENEMY_锐爪鹰|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_锐爪鹰|r |cRXP_WARN_是 31 级，会在周围巡逻。如果你难以击杀，可以将它引回 碎木岗哨或 亡灵营地。如果采用这种方法，确保对它造成 50%以上伤害才能获得任务进度。你也可以稍后再完成此任务|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务尖爪的爪子
    .unitscan 尖爪
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>|cRXP_WARN_施放|r |T132320:0|t[追踪隐藏] |cRXP_WARN_以更容易找到 |cRXP_ENEMY_灰谷先驱者|r|r
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
    >>|cRXP_WARN_他们处于潜行状态|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob 灰谷先驱者
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
    >>击杀 |cRXP_ENEMY_锐爪鹰|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_锐爪鹰|r |cRXP_WARN_是 31 级，会在周围巡逻。如果你难以击杀，可以将它引回 碎木岗哨或 亡灵营地。如果采用这种方法，确保对它造成 50%以上伤害才能获得任务进度。你也可以稍后再完成此任务|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务尖爪的爪子
    .unitscan 尖爪
    .use 16305
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托雷克|r 对话以开始护送任务
    >>|cRXP_FRIENDLY_托雷克|r |cRXP_WARN_重生时间为 5 分钟|r
    .accept 6544 >>接受任务托雷克的突袭
    .target 托雷克
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>跟随 |cRXP_FRIENDLY_托雷克|r
    >>让 |cRXP_FRIENDLY_托雷克（|r 和他的 |cRXP_FRIENDLY_碎木袭击者|r 抗住 |cRXP_ENEMY_银翼战士|r 和 |cRXP_ENEMY_银翼哨兵|r
    >>|cRXP_WARN_清理完建筑物后，跑向阳台。当 |cRXP_ENEMY_杜瑞尔·月火|r 出现时，先让 |cRXP_FRIENDLY_托雷克|r 和他的 |cRXP_FRIENDLY_碎木袭击者|r 承受仇恨，再对其造成伤害|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob 银翼战士
    .mob 银翼哨兵
    .unitscan 杜瑞尔·月火
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >>前往夜行蜘蛛洞的西侧入口
    >>|cRXP_WARN_小心！一名 35 级的|r |cRXP_ENEMY_游荡的守护古树|r |cRXP_WARN_（PVP 精英）可能会在该区域巡逻！|r
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >>前往夜行谷
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
    >>击杀 |cRXP_ENEMY_魔草巡影者|r, |cRXP_ENEMY_魔草萨特|r, 和 |cRXP_ENEMY_魔草魔仆|r。拾取他们的 |cRXP_LOOT_萨特之角|r
    >>|cRXP_WARN_小心！所有魔草怪都会施放|r |T136119:0|t[无比恶臭]|cRXP_WARN_，这是一个瞬发的 6 秒沉默效果|r << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob 魔草巡影者
    .mob 魔草魔仆
    .mob 魔草萨特
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >>向西前往雷恩伍德隐居地
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
    >>击杀 |cRXP_ENEMY_夏杜布拉|r，并拾取她的 |T132225:0|t[|cRXP_LOOT_夏杜布拉的头颅|r]，使用它来接取任务
    >>|cRXP_ENEMY_夏杜布拉|r |cRXP_WARN_会在周围安静地巡逻|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务猎影的头
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
    >>击杀 |cRXP_ENEMY_嬉笑姐妹|r，并拾取她们的 |T134776:0|t[|cRXP_LOOT_刻印药瓶|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob 欢笑的姐妹
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
    >>击杀 |cRXP_ENEMY_夏杜布拉|r，并拾取她的 |T132225:0|t[|cRXP_LOOT_夏杜布拉的头颅|r]，使用它来接取任务
    >>|cRXP_ENEMY_夏杜布拉|r |cRXP_WARN_会在周围安静地巡逻|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务猎影的头
	.unitscan 猎影
    .use 16304
step
   .goto Ashenvale,36.81,33.48,200 >>前往蓟皮村
   >>|cRXP_WARN_途中务必避开阿斯特兰纳的守卫|r
   .subzoneskip 2301
   .isOnQuest 216
step
    #completewith next
    >>在前往洞穴的途中，击杀 |cRXP_ENEMY_蓟皮萨满|r 和 |cRXP_ENEMY_蓟皮复仇者|r
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob 蓟皮萨满祭司
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob 蓟皮复仇者 
step
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>进入蓟皮要塞
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
	>>在地上拾取 |cRXP_PICK_巨魔箱|r，以获得 |cRXP_LOOT_巨魔护符|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与洞穴深处的 |cRXP_FRIENDLY_鲁尔|r 交谈。这将开始一个护送任务
    .accept 6482 >>接受任务鲁尔的自由
    .target 鲁尔·雪蹄
step
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>护送 |cRXP_FRIENDLY_鲁尔|r 离开 蓟皮村
    >>|cRXP_WARN_小心！当你走到洞穴一半时会刷新 3 个|r |cRXP_ENEMY_蓟皮|r |cRXP_WARN_，并且在蓟皮村庄大门外还会再刷新 3 个|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target 鲁尔·雪蹄
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
    .mob 蓟皮萨满祭司
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob 蓟皮复仇者 
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>|cRXP_WARN_在|r |T132821:0|t[空的蓝色水囊] |cRXP_WARN_在露台下方使用|r
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
    >>击杀 |cRXP_ENEMY_乌桑戈斯|r，并拾取他的 |T132941:0|t[|cRXP_LOOT_乌桑戈斯的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_他会在附近稍微巡逻|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>接受任务 乌萨苟斯的爪子
    .unitscan 乌萨苟斯
    .use 16303
step
    #completewith Tideress
    .subzone 421 >>前往秘斯特拉湖
    .isOnQuest 25
step
    #completewith Tideress
    >>击杀 |cRXP_ENEMY_污浊的水元素|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob 污浊的水元素
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
    >>击杀 |cRXP_ENEMY_泰德雷斯|r，并拾取她的 |T136222:0|t[|cRXP_LOOT_被污染的水球|r]。使用它来开启任务
    >>|cRXP_ENEMY_泰德雷斯|r |cRXP_WARN_会在岛周围及水下巡逻|r
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接受任务被污染的水元素
    .use 16408
    .unitscan 泰德雷斯
step
	.goto Ashenvale,48.93,69.56
    >>进入凉亭下方
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
    >>击杀 |cRXP_ENEMY_泰德雷斯|r，并拾取她的 |T136222:0|t[|cRXP_LOOT_被污染的水球|r]。使用它来开启任务
    >>|cRXP_ENEMY_泰德雷斯|r |cRXP_WARN_会在岛周围及水下巡逻|r
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接受任务被污染的水元素
    .use 16408
    .unitscan 泰德雷斯
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
    .mob 污浊的水元素
step
    .goto Ashenvale,60.20,72.90
	>>|cRXP_WARN_在月亮井中使用|r |T134776:0|t[|cRXP_LOOT_蚀刻瓶|r] |cRXP_WARN_|r
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>前往碎木岗哨
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 对话
    .turnin 6503 >>交任务灰谷先驱者
    .target 库莱比
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
    >>击杀 |cRXP_ENEMY_锐爪鹰|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_锐爪鹰|r |cRXP_WARN_是 31 级，会在周围巡逻。如果你难以击杀，可以将它引回 碎木岗哨或 亡灵营地。如果采用这种方法，确保对它造成 50%以上伤害才能获得任务进度。你也可以稍后再完成此任务|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务尖爪的爪子
    .unitscan 尖爪
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔托格|r 对话
    .turnin 6544 >>交任务托雷克的突袭
    .target 埃尔托格·怒齿
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .turnin 2 >>交任务尖爪的爪子
    .turnin 24 >>交任务猎影的头
    .turnin 23 >>交任务 乌萨苟斯的爪子
    .turnin 247 >>交任务完成狩猎
    .target 塞娜尼·雷心
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .turnin 24 >>交任务猎影的头
    .turnin 23 >>交任务 乌萨苟斯的爪子
    .turnin 247 >>交任务完成狩猎
    .target 塞娜尼·雷心
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼|r 对话
    .turnin 24 >>交任务猎影的头
    .turnin 23 >>交任务 乌萨苟斯的爪子
    .target 塞娜尼·雷心
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .turnin 6441 >>交任务萨特之角
    .target 皮克希尔
    .isQuestComplete 6441
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马斯托克|r 对话
    .turnin 25 >>交任务 石爪山的困境
    .turnin 1918 >>交任务被污染的水元素
    .accept 824 >>接受任务大地之环的耶努萨克雷
    .target 马斯托克·维尔西斯
step
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅玛|r 对话
    .turnin 6482 >>交任务鲁尔的自由
    .target 雅玛·雪蹄
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 |r|cRXP_FRIENDLY_基苏|r 对话
    .stable >>将你的宠物寄存。你即将驯服一只 |cRXP_ENEMY_灰谷长者熊|r 和一只 |cRXP_ENEMY_鬼爪阿尔法|r
    .target 基苏
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_对 |cRXP_ENEMY_老灰谷熊|r |cRXP_WARN_施放 |T132164:0|t[驯服野兽]|r。使用它攻击怪物以学习 |T132140:0|t[爪击(等级4) |r
    .mob 老灰谷熊
    .train 17264 >>|cRXP_WARN_对 |cRXP_ENEMY_鬼爪狼王|r |cRXP_WARN_|r 施放 |T132164:0|t[驯服野兽]。使用它攻击怪物以学习 |T132278:0|t[撕咬(等级4)]|r
    .mob 幽爪前锋
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
    .train 16830 >>|cRXP_WARN_对 |cRXP_ENEMY_老灰谷熊|r |cRXP_WARN_施放 |T132164:0|t[驯服野兽]|r。使用它攻击怪物以学习 |T132140:0|t[爪击(等级4) |r
    .mob 老灰谷熊
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>现在你应该开始寻找黑暗深渊的小队
    .dungeon BFD
step
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Zoram'gar >>飞往佐拉姆加前哨站
    .target 乌尔格拉
    .subzoneskip 2897
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯朗|r 对话
    .turnin 216 >>交任务蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
step
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米苏瓦|r 对话
    .turnin 6462 >>交任务巨魔符咒
    .target 米苏瓦
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 824 >>交任务大地之环的耶努萨克雷
    .accept 6563 >>接受任务阿库麦尔的精华
    .accept 6921 >>接受任务废墟之间
    .accept 6565 >>接受任务上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestTurnedIn 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 824 >>交任务大地之环的耶努萨克雷
    .accept 6563 >>接受任务阿库麦尔的精华
    .accept 6921 >>接受任务废墟之间
    .target 耶努萨克雷
    .dungeon BFD
step
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 824 >>交任务大地之环的耶努萨克雷
    .target 耶努萨克雷
step
    .goto Kalimdor,43.89,35.23,100 >>前往黑暗深渊的入口
    .dungeon BFD
step
    #completewith next
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
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
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r，并拾取她们的 |T134332:0|t[|cRXP_LOOT_潮湿便笺|r]，使用它来开启任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>接受任务上古之神的仆从
    .mob 黑暗深渊海潮祭司
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
    >>从墙上拾取 |cRXP_LOOT_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >>前往黑暗深渊副本入口并进入副本
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候塞尔瑞德|r 对话
    .accept 6561 >>接受任务黑暗深渊中的恶魔
    .target 斥候塞尔瑞德
    .dungeon BFD
step
    >>击杀 |cRXP_ENEMY_洛古斯·杰特 |r
    .complete 6565,1 --Lorguss Jett slain (1)
    .mob Lorguss Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>在水中拾取散发绿光的 |cRXP_PICK_深渊之石|r，以获得 |cRXP_LOOT_深渊之核|r
    >>|cRXP_WARN_拾取此物会触发 |cRXP_ENEMY_阿奎尼斯男爵|r 的出现|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>击杀 |cRXP_ENEMY_阿奎尼斯男爵|r，并拾取他的 |T136222:0|t [|cRXP_LOOT_奇怪水晶球|r] 使用它来接取任务
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>接受任务阿奎尼斯男爵
    .mob 阿奎尼斯男爵
    .use 16782
    .dungeon BFD
step
    >>在水中拾取散发绿光的 |cRXP_PICK_深渊之石|r，以获得 |cRXP_LOOT_深渊之核|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>击杀 |cRXP_ENEMY_暮光领主凯尔里斯|r，并拾取他的 |cRXP_LOOT_头颅|r
    .complete 6561,1 --Head of Kelris (1)
    .mob 暮光领主克尔里斯
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith FlyZoramS2
    .hs >>使用炉石返回碎木岗哨
    >>|cRXP_WARN_如果你愿意，可以先|cRXP_WARN_击杀 |r|cRXP_ENEMY_阿库麦尔|r。这是副本的最终首领|r
    .cooldown item,6948,>2,1
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon BFD
step
    #optional
    #completewith FlyZoramS2
    .subzone 431 >>|cRXP_WARN_在黑暗深渊中退队卡炉石回城|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_在黑暗深渊中粘贴此宏以使用简易炉石返回碎木岗哨|r
    .cooldown item,6948,<0
    .bindlocation 431,1
    .dungeon BFD
step
    #label FlyZoramS2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Zoram'gar >>飞往佐拉姆加前哨站
    .target Vhulgr
    .subzoneskip 2897
    .dungeon BFD
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6564 >>交任务上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isOnQuest 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6565 >>交任务上古之神的仆从
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6563 >>交任务阿库麦尔的精华
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6921 >>交任务废墟之间
    .target 耶努萨克雷
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶努萨克雷|r 对话
    .turnin 6922 >>交任务阿奎尼斯男爵
    .target 耶努萨克雷
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 1850 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <26,1
    .xp >28,1
    .dungeon !BFD
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 3029 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <28,1
    .dungeon !BFD
step
    #completewith FlyTB
    .hs >>使用炉石返回碎木岗哨
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon !BFD
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Orgrimmar>>飞往奥格瑞玛
    .target 乌尔格拉
    .zoneskip Orgrimmar
    .dungeon !BFD
step << Rogue/Warlock
    #completewith OrgSkip
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Orgrimmar>>飞往奥格瑞玛
    .target 安德鲁克
    .zoneskip Orgrimmar
    .dungeon BFD
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1833 >>训练你的职业技能
    .target 奥莫克
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 8687 >>训练你的职业技能
    >>|T132273:0|t[速效毒药等级 2] |cRXP_WARN_需要 120 点制毒技能！|r
    .target 奥莫克
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r 对话
	.vendor >>|cRXP_BUY_补充|r |T134387:0|t[闪光粉] |cRXP_BUY_和|r |T132273:0|t[毒药]
    .target 雷库尔
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1456 >>训练你的职业技能
    .target 米尔科特
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6217 >>训练你的职业技能
    .target 米尔科特
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r 对话
	.vendor >>购买任何你买得起的宠物升级
	.target 库古尔
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135466:0|t[致命魔杖] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target 卡提斯
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135466:0|t[致命魔杖] |cRXP_BUY_从她那里|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target 卡提斯
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    #optional
    #label OrgSkip
step
    #optional
    #label FlyTB
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 多拉斯
    .zoneskip Orgrimmar,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 安德鲁克
    .zoneskip Ashenvale,1
    .dungeon BFD
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 乌尔格拉
    .zoneskip Ashenvale,1
    .dungeon !BFD
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 27-30级 南贫瘠之地/千针石林
#version 7
#subgroup RestedXP 部落 1-30级
#next 30-33 希尔斯布莱德 / 阿拉希

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_德尔贡|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T132408:0|t[无情战斧] |cRXP_BUY_如果有货且你还没有的话|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 德尔贡·暴怒图腾
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_德尔贡|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T132408:0|t[无情战斧] |cRXP_BUY_如果有货且你还没有的话|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 德尔贡·暴怒图腾
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡德|r |cRXP_BUY_对话。购买一把|r |T135651:0|t[钝刺] |cRXP_BUY_作为你的副手武器|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target 卡德·暴怒图腾
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡德|r |cRXP_BUY_对话。购买一把|r |T135651:0|t[钝刺] |cRXP_BUY_作为你的副手武器|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target 卡德·暴怒图腾
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_装备|r |T135651:0|t[钝刺] 
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赞金|r 对话
    .turnin 1195 >>交任务神圣之火
    .accept 1196 >>接受任务神圣之火
    .target 赞金·石蹄
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 1850 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 3029 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 783 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .accept 1131 >>接受任务钢齿土狼
    .target 梅洛·石蹄
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 3045 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 14319 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5384 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24559 >>训练你的宠物技能
    .target 赫苏瓦·雷角
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔|r 对话
    .train 6178 >>训练你的职业技能
    .target 科尔·暴怒图腾
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔|r 对话
    .train 7887 >>训练你的职业技能
    .target 科尔·暴怒图腾
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 交谈
    .train 7369 >>训练你的职业技能
    .accept 1718 >>接受任务岛民
    .target 托姆·暴怒图腾
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥尔德|r 对话
    .accept 1102 >>接受任务奥尔德的报复
    .target 奥尔德·石塔
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往灵魂高地，然后进入幻象之池
step
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 1067 >>交任务返回雷霆崖
    .target 药剂师扎玛
    .isQuestTurnedIn 1066
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 992 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 8104 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 602 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 120 >>训练你的职业技能
    .target 大法师山姆
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 759 >>训练你的职业技能
    .target 大法师山姆
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 8412 >>训练你的职业技能
    .target 大法师山姆
    .xp <30,1
step << Mage    
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_比尔吉特|r 对话
    .train 3566 >>学习 |T135765:0|t[传送：雷霆崖] 
    .target 比尔吉特·克兰斯顿
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 408443 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8053 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 556 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_制造|r |T133684:0|t[绒线绷带] |cRXP_WARN_直到你的技能达到 115|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    .train 3278 >>学习 |T133687:0|t[厚绒线绷带]
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >>|cRXP_WARN_制造 |r|T133687:0|t[厚绒线绷带]，|cRXP_WARN_直到你的技能达到 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    .train 7928 >>学习 |T133671:0|t[丝质绷带]
    >>|cRXP_WARN_如果你没有足够的毛料将技能提升到 150，请跳过此步骤|r
    .target 潘德·缚石
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库纳|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T135495:0|t[强韧的弯弓] |cRXP_BUY_如果有的话，从她那里|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target 库纳·雷角
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库纳|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_从她那里|cRXP_BUY_购买 |r|T132382:0|t[锐锋箭]|r
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target 库纳·雷角
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
    #completewith Owatanka
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip The Barrens
step
    #completewith next
    +|cRXP_WARN_使用你剩余的|r |T134128:0|t[血岩碎片] |cRXP_WARN_来获得增益|r
    +|cRXP_WARN_务必关闭 Questie 或 Leatrix Plus 等插件的自动完成任务功能！|r
    .itemcount 5075,4
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 879 >>接受任务内奸
    .target 碎牙
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在建筑物内与 |cRXP_FRIENDLY_鲁迦·暴怒图腾|r 对话
	.turnin 1823 >>交任务和鲁迦交谈
    .accept 1824 >>接受任务巨人旷野的试炼
    .target 鲁迦·暴怒图腾
step
    #label Owatanka
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>在该区域找到并击杀 |cRXP_ENEMY_奥瓦坦卡|r（蓝色雷霆蜥蜴）。拾取他的 |T133723:0|t[|cRXP_LOOT_奥瓦坦卡的尾刺|r]，用它来开始任务
    >>|cRXP_WARN_如果找不到他，请跳过此任务|r
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务奥瓦坦卡
    .use 5102
    .unitscan 奥瓦坦卡
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
    >>击杀 |cRXP_ENEMY_异种护卫者|r, |cRXP_ENEMY_异种群居蝎|r, |cRXP_ENEMY_异种爬行者|r and |cRXP_ENEMY_异种幼蝎|r. 以获取它们的|T133027:0|t[颤抖的触角]
    >>|cRXP_WARN_注意: |T133027:0|t[颤抖的触角] 仅持续 15 分钟，完成此任务时不要离开或登出游戏|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob 异种护卫者
    .mob 异种群居蝎
    .mob 异种爬行者
    .mob 异种幼蝎
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在建筑物内与 |cRXP_FRIENDLY_鲁迦·暴怒图腾|r 对话
    >>|cRXP_WARN_跳过后续任务|r
    .turnin 1824 >>交任务巨人旷野的试炼
    .target 鲁迦·暴怒图腾
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>击杀 |cRXP_ENEMY_瓦希塔·帕恩|r，并拾取他的 |T135992:0|t[|cRXP_LOOT_瓦希塔·帕恩的羽毛|r]，使用它来接取任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务瓦希塔帕恩
    .use 5103
    .unitscan 瓦希塔帕恩
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>前去找 |cRXP_FRIENDLY_布瑞恩|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞恩|r 交谈
    .turnin 1534 >>交任务水之召唤
    .accept 220 >>接受任务水之召唤
    .target 布瑞恩
step
    #completewith Backstabber
    >>击杀 |cRXP_ENEMY_瓦希塔·帕恩|r，并拾取他的 |T135992:0|t[|cRXP_LOOT_瓦希塔·帕恩的羽毛|r]，使用它来接取任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务瓦希塔帕恩
    .use 5103
    .unitscan 瓦希塔帕恩
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加恩|r 对话
    >>|cRXP_FRIENDLY_加恩|r |cRXP_WARN_沿道路南北巡逻|r
    .accept 843 >>接受任务加恩的报复
    .target 加恩·石塔
    .maxlevel 27
step
    #loop
    .goto The Barrens,44.06,80.02,0
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
    .goto The Barrens,44.37,79.85,45,0
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    >>击杀 |cRXP_ENEMY_库兹|r，并拾取他的 |cRXP_LOOT_库兹的头颅|r
    >>|cRXP_ENEMY_库兹（Kuz）|r |cRXP_WARN_会在周围安静巡逻|r
    .complete 879,1 --Kuz's Skull (1)
    .unitscan 卡兹
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>击杀 |cRXP_ENEMY_洛克·猎魔者|r，并拾取他的 |cRXP_LOOT_洛克的头颅|r
    .complete 879,3 --Lok's Skull (1)
    .mob 洛克·奥克班恩
step
    #completewith NakSkull
    >>击杀 |cRXP_ENEMY_钢鬃捕猎者|r and |cRXP_ENEMY_钢鬃探路者|r. 拾取它们以获得|T135640:0|t[|cRXP_LOOT_钢鬃背刺匕首|r]
    >>|cRXP_WARN_这些 |cRXP_ENEMY_钢鬓捕猎者|r 是潜行状态|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob 钢鬃捕猎者
    .mob 钢鬃探路者
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,0
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
    >>击杀 |cRXP_ENEMY_钢鬃先知|r，并拾取他们的 |T135139:0|t[|cRXP_LOOT_烧焦的钢鬃魔杖|r]
    >>击杀 |cRXP_ENEMY_钢鬃战士|r，并拾取他们的 |T134955:0|t[|cRXP_LOOT_钢鬃大盾|r]
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob 钢鬃先知
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob 钢鬃战士
step
    #label NakSkull
    .goto The Barrens,43.87,83.43
    >>击杀 |cRXP_ENEMY_纳克|r，并拾取他的 |cRXP_LOOT_纳克的头颅|r
    .complete 879,2 --Nak's Skull (1)
    .mob 纳克
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
    >>击杀 |cRXP_ENEMY_钢鬃捕猎者|r and |cRXP_ENEMY_钢鬃探路者|r. 拾取它们以获得|T135640:0|t[|cRXP_LOOT_钢鬃背刺匕首|r]
    >>|cRXP_WARN_这些 |cRXP_ENEMY_钢鬓捕猎者|r 是潜行状态|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob 钢鬃捕猎者
    .mob 钢鬃探路者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_巴尔丹挖掘者|r 和 |cRXP_ENEMY_巴尔丹工头|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob 巴尔丹挖掘者
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob 巴尔丹工头
    .isOnQuest 843
step
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>击杀 |cRXP_ENEMY_勘探员卡兹戈姆|r，并拾取他的 |cRXP_LOOT_卡兹戈姆的日记|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob 勘察员卡兹戈姆
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
    .mob 巴尔丹挖掘者
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob 巴尔丹工头
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>击杀 |cRXP_ENEMY_瓦希塔·帕恩|r，并拾取他的 |T135992:0|t[|cRXP_LOOT_瓦希塔·帕恩的羽毛|r]，使用它来接取任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务瓦希塔帕恩
    .use 5103
    .unitscan 瓦希塔帕恩
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加恩|r 对话
    >>|cRXP_FRIENDLY_加恩|r |cRXP_WARN_沿道路南北巡逻|r
    .turnin 843 >>交任务加恩的报复
    .accept 846 >>接受任务加恩的报复
    .target 加恩·石塔
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加恩|r 对话
    >>|cRXP_FRIENDLY_加恩|r |cRXP_WARN_沿道路南北巡逻|r
    .accept 846 >>接受任务加恩的报复
    .target 加恩·石塔
    .isQuestTurnedIn 843
step
    #label BaelModan
    #completewith RevengeofGann2
    .goto The Barrens,48.63,84.49,110 >>前往巴尔莫丹
    .subzoneskip 359
    .isQuestTurnedIn 843
step
    #completewith TearMoons2
    >>击杀 |cRXP_ENEMY_巴尔丹矮人|r，并拾取他们的 |cRXP_LOOT_硝化甘油|r、|cRXP_LOOT_木浆|r 和 |cRXP_LOOT_硝酸钠|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_巴尔丹军官|r |cRXP_WARN_在完成防御姿态动作后 8 秒内 闪避几率增加 50%|r << Rogue/Warrior/Druid/Shaman/Paladin
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob 巴尔丹火枪手
    .mob 巴尔丹士兵
    .mob 巴尔丹军官
    .group 0 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费格雷|r 对话
    .accept 857 >>接受任务众月之泪
    .target 被流放的费格雷
    .group 3 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>下到巴尔丹要塞的底层
    .group << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    .goto The Barrens,49.13,84.25
    >>开启 |cRXP_PICK_双辫将军的铁箱|r，并拾取其中的 |cRXP_LOOT_众月之泪|r
    >>|cRXP_WARN_小心！在 |cRXP_ENEMY_双辫将军|r 的房间里很容易拉到过多的怪|r
    >>|cRXP_WARN_不要直接拉除了 |cRXP_ENEMY_双辫将军|r 之外任何的怪|r << !Hunter !Warlock
    >>|cRXP_WARN_不要直接拉除了 |cRXP_ENEMY_双辫将军|r 之外任何的怪，并使用你的宠物来抗怪。或者你也可以先派宠物进去，然后再拾取铁箱|r << Hunter/Warlock
    .complete 857,1 --Tear of the Moons (1)
    .group 3 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>离开巴尔丹要塞
    .group << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #label TearMoons2
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费格雷|r 对话
    .turnin 857 >>交任务众月之泪
    .target 被流放的费格雷
    .isQuestComplete 857
    .group << !Hunter !Warlock
step
    #label RevengeofGann2
    #loop
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    .goto The Barrens,48.96,84.36,30,0
    >>击杀 |cRXP_ENEMY_巴尔丹矮人|r，并拾取他们的 |cRXP_LOOT_硝化甘油|r、|cRXP_LOOT_木浆|r 和 |cRXP_LOOT_硝酸钠|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_巴尔丹军官|r |cRXP_WARN_在完成防御姿态动作后 8 秒内 闪避几率增加 50%|r << Rogue/Warrior/Druid/Shaman/Paladin
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob 巴尔丹火枪手
    .mob 巴尔丹士兵
    .mob 巴尔丹军官
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加恩|r 对话
    >>|cRXP_FRIENDLY_加恩|r |cRXP_WARN_沿道路南北巡逻|r
    .turnin 846 >>交任务加恩的报复
    .accept 849 >>接受任务加恩的报复
    .target 加恩·石塔
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>点击平台上的 |cRXP_PICK_巴尔莫丹飞行器|r
    >>|cRXP_WARN_该技能范围为 50 码|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加恩|r 对话
    >>|cRXP_FRIENDLY_加恩|r |cRXP_WARN_沿道路南北巡逻|r
    .turnin 849 >>交任务加恩的报复
    .target 加恩·石塔
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.44,78.97,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
	.goto The Barrens,44.85,78.81,60,0
    >>击杀 |cRXP_ENEMY_瓦希塔·帕恩|r，并拾取他的 |T135992:0|t[|cRXP_LOOT_瓦希塔·帕恩的羽毛|r]，使用它来接取任务
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>接受任务瓦希塔帕恩
    .use 5103
    .unitscan 瓦希塔帕恩
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞什|r 对话
    .turnin 5881 >>交任务召回卫兵
    .target 瑞什·远行者
    .isOnQuest 5881
step
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_月角|r 对话
    .accept 4542 >>接受任务给乱风岗的紧急信件
    .target 卫兵穆赫·月角
step
    .goto Thousand Needles,31.97,23.76,30 >>乘电梯下到千针石林
    >>|cRXP_WARN_小心别掉下去！你会死亡！|r
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>击杀 |cRXP_ENEMY_加拉克信使|r，并拾取他身上的 |T133473:0|t[|cRXP_LOOT_刺杀便笺|r]，使用它来接取任务
    >>|cRXP_WARN_他在裂蹄峭壁（东部半人马营地）刷新|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务暗杀计划
    .use 12564
    .unitscan 加拉克信使
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往狂风岗的电梯区
step
    .goto Thousand Needles,45.91,49.91,25 >>乘电梯上到乱风岗
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图林·长角|r 对话
    .accept 9431 >>接受任务另一条路
    .target 魔导师艾洛塞
step
    .goto Thousand Needles,46.00,50.80
    >>点击 |cRXP_FRIENDLY_通缉海报|r
    .accept 5147 >>接受任务通缉：阿纳克-恐怖图腾
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳恩|r 对话
    .turnin 1196 >>交任务神圣之火
    .accept 1197 >>接受任务神圣之火
    .target 拉乌·峭壁信使
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图林·长角|r 对话
    .turnin 4542 >>交任务给乱风岗的紧急信件
    .accept 4841 >>接受任务清除半人马
    .target 峭壁卫兵图林·长角
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134831:0|t[卷轴] |cRXP_BUY_如果有货的话从他那里购买|r << !Warrior
    .vendor >>|cRXP_BUY_如果有出售的话，从他那里|cRXP_BUY_购买|r |T134831:0|t[治疗药水]、|cRXP_BUY_购买|r|T134937:0|t[卷轴]和 |cRXP_BUY_购买|r|T134413:0|t[活根草]|r << Warrior
    .target 莫塔尔
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_f从他那里|cRXP_BUY_购买|r |T135495:0|t[|cRXP_FRIENDLY_致密短弓|r]|r
    .target 斯塔恩
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r 对话
    >>|cRXP_BUY_从他那里|cRXP_BUY_购买一枚或多枚|r |T134419:0|t[传送符文]|r
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target 莫塔尔
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板埃比克瓦|r 对话
    .home >>将你的炉石设置到狂风岗
    .target 旅店老板埃比克瓦
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈加尔|r 对话
    .accept 4821 >>接受任务异型卵
    .target 哈加尔·雷蹄
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾鲁|r 对话
    .accept 4767 >>接受任务驭风者
    .target Elu
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话
    .fp Freewind Post >>获得乱风岗的飞行点
    .target 奈瑟
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>击杀 |cRXP_ENEMY_加拉克斥候|r,|cRXP_ENEMY_加拉克争斗者|r, 和 |cRXP_ENEMY_加拉克逐风者|r
    >>|cRXP_WARN_击杀你看到的每一个|r |cRXP_ENEMY_加拉克斥候|r |cRXP_WARN_，因为它们比较稀有|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob 加拉克斥候
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob 加拉克争斗者
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob 加拉克逐风者
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>前往 |cRXP_PICK_远古火盆|r
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>开启 |cRXP_PICK_远古火盆|r，并拾取其中的 |cRXP_LOOT_裂蹄|r
    >>|cRXP_WARN_小心！该火盆由两名 30 级 |cRXP_ENEMY_加拉克火焰守卫|r 守护|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob 加拉克烈焰守卫
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>击杀 |cRXP_ENEMY_加拉克信使|r，并拾取他身上的 |T133473:0|t[|cRXP_LOOT_刺杀便笺|r]，使用它来接取任务
    >>|cRXP_WARN_他会巡逻，并在裂蹄峭壁（东部半人马营地）刷新|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务暗杀计划
    .use 12564
    .unitscan 加拉克信使
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
    .mob 加拉克斥候
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob 加拉克争斗者
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob 加拉克逐风者
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>前往 |cRXP_FRIENDLY_多恩|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .accept 1149 >>接受任务信仰的试炼
    .timer 7,信仰的试炼 剧情
    .target 多恩·平原行者
step
    .goto Thousand Needles,26.63,34.23
    >>|cRXP_WARN_等待剧情演出完成|r
    >>|cRXP_WARN_从木质平台末端跳下。你会被传送，而不会因坠落伤害而死亡|r
    .complete 1149,1 --Explore Zone (1)
step
    #softcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1149 >>交任务信仰的试炼
    .accept 1150 >>接受任务耐力的试炼
    .target 多恩·平原行者
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1149 >>交任务信仰的试炼
    .target 多恩·平原行者
    .solo
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1149 >>交任务信仰的试炼
    .accept 1150 >>接受任务耐力的试炼
    .target 多恩·平原行者
    .group
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>拾取地上的 the |cRXP_LOOT_异型卵|r
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
    >>击杀 |cRXP_ENEMY_雷鸣石灵|r，并拾取它们的 |cRXP_LOOT_净化之土|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob 雷鸣岩石元素
step
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>拾取地上的 the |cRXP_LOOT_异型卵|r
    >>|cRXP_WARN_它有3个不同的刷新位置，已在地图上标记|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>前往狂风岗的电梯区
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图林·长角|r 对话
    .turnin 4841 >>交任务清除半人马
    .accept 5064 >>接受任务恐怖图腾的密信
    .target 峭壁卫兵图林·长角
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳恩|r 对话
    .turnin 1197 >>交任务神圣之火
    .target 拉乌·峭壁信使
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈加尔|r 对话
    .turnin 4821 >>交任务异型卵
    .accept 4865 >>接受任务狂热之蛇
    .target 哈加尔·雷蹄
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    .vendor >>如果有出售的话，|cRXP_BUY_f从他那里|cRXP_BUY_购买|r |T135495:0|t[|cRXP_FRIENDLY_致密短弓|r]|r
    .target 斯塔恩
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target 斯塔恩
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134831:0|t[卷轴] |cRXP_BUY_如果有货的话从他那里购买|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target 莫塔尔
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #softcore
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>进入盗羽者巢穴
step
    #softcore
    #completewith Grenka
    +|cRXP_WARN_小心，因为|r |cRXP_ENEMY_尖啸唤风者|r |cRXP_WARN_会施放|r |T136022:0|t[阵风]|cRXP_WARN_，这是一个以|r |cRXP_ENEMY_尖啸唤风者|r |cRXP_WARN_为中心、10 码范围内持续 4 秒的 AoE 昏迷|r
    +|cRXP_ENEMY_尖啸鹰身人|r 会施放|r |T136122:0|t[震耳尖啸]|cRXP_WARN_，造成 8 秒沉默|r << Mage/Warlock/Priest/Druid/Shaman
step
    #softcore
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +在洞穴后方地面开启 |cRXP_PICK_女妖食物|r，以召唤 |cRXP_ENEMY_格伦卡|r
    >>|cRXP_WARN_小心，多个|r |cRXP_ENEMY_鹰身人|r |cRXP_WARN_小怪包会接连刷新|r
step
    #softcore
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>击杀 |cRXP_ENEMY_格伦卡·血啸|r，并拾取她的 |cRXP_LOOT_格伦卡的爪子|r
    >>|cRXP_WARN_小心，这个洞穴有动态刷新机制|r
    >>|cRXP_WARN_这个任务非常难。如果无法单刷，请组队或跳过|r
    .link https://www.youtube.com/watch?v=EVy-6OjB5bs&t=27300s >>https://www.youtube.com/watch?v=EVy-6OjB5bs&t=27300s >> 如果你认为可行，可点击此处查看视频参考
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob 格林卡·血啸
    .isOnQuest 1150
step
    #hardcore
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>进入盗羽者巢穴
    .group 0
step
    #hardcore
    #completewith Grenka
    +|cRXP_WARN_小心，因为|r |cRXP_ENEMY_尖啸唤风者|r |cRXP_WARN_会施放|r |T136022:0|t[阵风]|cRXP_WARN_，这是一个以|r |cRXP_ENEMY_尖啸唤风者|r |cRXP_WARN_为中心、10 码范围内持续 4 秒的 AoE 昏迷|r
    +|cRXP_ENEMY_尖啸鹰身人|r 会施放|r |T136122:0|t[震耳尖啸]|cRXP_WARN_，造成 8 秒沉默|r << Mage/Warlock/Priest/Druid/Shaman
    .group 0
step
    #hardcore
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +在洞穴后方地面开启 |cRXP_PICK_女妖食物|r，以召唤 |cRXP_ENEMY_格伦卡|r
    >>|cRXP_WARN_小心，多个|r |cRXP_ENEMY_鹰身人|r |cRXP_WARN_小怪包会接连刷新|r
    .group 0
step
    #hardcore
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>击杀 |cRXP_ENEMY_格伦卡·血啸|r，并拾取她的 |cRXP_LOOT_格伦卡的爪子|r
    >>|cRXP_WARN_小心，这个洞穴有动态刷新机制|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob 格林卡·血啸
    .isOnQuest 1150
    .group 2
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>击杀 |cRXP_ENEMY_钢牙|r，并拾取他的 |cRXP_LOOT_钢牙的肋骨|r
    >>|cRXP_WARN_小心，他身边有两只|r |cRXP_ENEMY_土狼|r |cRXP_WARN_守卫！|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan 钢齿土狼
step
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>前往高椅岭
    .subzoneskip 482
step
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>沿着小路向上，前往 |cRXP_FRIENDLY_庞卡|r
step
    #completewith PaokaEscort
    >>拾取地上的 |cRXP_LOOT_风巢双足飞龙的蛋|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波卡|r 对话开始护送任务
    >>|cRXP_WARN_如果 |cRXP_ENEMY_心刃|r |cRXP_WARN_出现，请小心！这是 32 级稀有精英|r
    .accept 4770,1 >>接受任务回家
    .target 帕奥卡·迅山
    .unitscan 锐爪飞心
step
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_护送|r |cRXP_FRIENDLY_波卡|r
    >>|cRXP_WARN_当|r |cRXP_FRIENDLY_波卡|r |cRXP_WARN_到达高坡栖木中部时，会刷新三只风巢双足飞龙。你只需要拉到东边那一只，其余的会消失|r
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>拾取地上的 |cRXP_LOOT_风巢双足飞龙的蛋|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>击杀 |cRXP_ENEMY_钢牙|r，并拾取他的 |cRXP_LOOT_钢牙的肋骨|r
    >>|cRXP_WARN_小心，他身边有两只|r |cRXP_ENEMY_土狼|r |cRXP_WARN_守卫！|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan 钢齿土狼
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 莱尔·台地行者
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    >>|cRXP_WARN_小心！交任务时会召唤三只 |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_，你必须保护 |cRXP_FRIENDLY_卡纳提|r |r
    .turnin 4881 >>交任务暗杀计划
    .accept 4966 >>接受任务保护卡纳提·灰云
    .target 卡纳提·灰云
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>击杀 |cRXP_ENEMY_加拉克刺客|r 以保护 |cRXP_FRIENDLY_卡纳提|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob 加拉克刺客
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    .turnin 4966 >>交任务保护卡纳提·灰云
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特加|r 对话
    .turnin 4865 >>交任务 狂热之蛇
    .accept 5062 >>接受任务 神圣之火
    .turnin 4770 >>交任务 回家
    .target 莫特加·火鬃
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹罗|r 对话
    .turnin 9431 >>交任务 另一条路
    .accept 9433 >>月亮井之水
    .accept 5151 >>接受任务 超适应齿轮
    .target 维兹罗
step
    .goto Thousand Needles,22.78,24.53
    >>打开笼子并击杀 |cRXP_ENEMY_被激怒的黑豹|r。拾取地上的他以获取 |cRXP_LOOT_超适应齿轮|r
    >>|cRXP_WARN_如果需要可以组队。这个任务很难|r
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob 被激怒的黑豹
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_他会巡逻，并在裂蹄峭壁（东部半人马营地）刷新|r
    >>|cRXP_WARN_如果你已经学会了|r |T132172:0|t[鹰眼术] |cRXP_WARN_，可以用它来侦查他的位置|r << Hunter
    >>|cRXP_WARN_如果你已经学会了|r |T136034:0|t[视界术] |cRXP_WARN_，可以用它来侦查他的位置|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务暗杀计划
    .use 12564
    .unitscan 加拉克信使
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>|cRXP_WARN_在|r |cRXP_PICK_隐蔽的控制台|r 附近使用|r |T132995:0|t[机器人控制器] |cRXP_WARN_|r
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>|cRXP_WARN_在你控制|r |cRXP_FRIENDLY_机器助手3000型|r |cRXP_WARN_时，进入月亮井并使用|r |T134754:0|t[水样采集] |cRXP_WARN_技能收集|r |cRXP_LOOT_萨兰纳尔月亮井之水|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target 机器助手3000型
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
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_他会巡逻，并在裂蹄峭壁（东部半人马营地）刷新|r
    >>|cRXP_WARN_如果你已经学会了|r |T132172:0|t[鹰眼术] |cRXP_WARN_，可以用它来侦查他的位置|r << Hunter
    >>|cRXP_WARN_如果你已经学会了|r |T136034:0|t[视界术] |cRXP_WARN_，可以用它来侦查他的位置|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>接受任务暗杀计划
    .use 12564
    .unitscan 加拉克信使
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
    >>击杀 |cRXP_ENEMY_钢牙|r，并拾取他的 |cRXP_LOOT_钢牙的肋骨|r
    >>|cRXP_WARN_他会逆时针方向巡逻|r
    >>|cRXP_WARN_如果你已经学会了|r |T132172:0|t[鹰眼术] |cRXP_WARN_，可以用它来侦查他的位置|r << Hunter
    >>|cRXP_WARN_如果你已经学会了|r |T136034:0|t[视界术] |cRXP_WARN_，可以用它来侦查他的位置|r << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan 钢齿土狼
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >>刷怪到 29 级 500+/36300 经验
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    >>|cRXP_WARN_小心！交任务时会召唤三只 |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_，你必须保护 |cRXP_FRIENDLY_卡纳提|r |r
    .turnin 4881 >>交任务暗杀计划
    .accept 4966 >>接受任务保护卡纳提·灰云
    .target 卡纳提·灰云
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>击杀 |cRXP_ENEMY_加拉克刺客|r 以保护 |cRXP_FRIENDLY_卡纳提|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob 加拉克刺客
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    .turnin 4966 >>交任务保护卡纳提·灰云
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹罗|r 对话
    .turnin 9433 >>交任务月亮井的水
    .accept 9434 >>接受任务测试药剂
    .turnin 5151 >>交任务超适应齿轮
    .target 维兹罗
    .isQuestComplete 5151
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹罗|r 对话
    .turnin 9433 >>交任务月亮井的水
    .accept 9434 >>接受任务测试药剂
    .target 维兹罗
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
    >>拾取地上及水下的 |cRXP_PICK_火岩龙舌兰|r
    >>|cRXP_ENEMY_滚烫的水元素|r 和 |cRXP_ENEMY_沸腾的水元素|r 免疫冰霜伤害，并且对火焰伤害有极高抗性。尽量避开它们，或使用奥术法术 << Mage
    >>|cRXP_WARN_小心，因为|r |cRXP_ENEMY_沸腾元素|r |cRXP_WARN_会施放|r |T132156:0|t[蒸汽喷射]|cRXP_WARN_，使你的命中率降低 30%，持续 10 秒|r << Warrior/Rogue/Shaman/Druid
    >>|cRXP_WARN_小心，因为|r |cRXP_ENEMY_滚烫的水元素|r |cRXP_WARN_会施放|r |T135807:0|t[灼热术]|cRXP_WARN_，瞬间造成 150 点火焰伤害并使你眩晕 4 秒|r
    .complete 5062,1 --Collect Incendia Agave (x10)
step
    #completewith HSTB
    .hs >>使用炉石返回雷霆崖
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>|cRXP_WARN_施放 |T135765:0|t[传送：雷霆崖]|r
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 8412 >>训练你的职业技能
    .target 大法师山姆
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 8422 >>训练你的职业技能
    .target 大法师山姆
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板帕拉
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅洛|r
    .turnin 1131 >>交任务钢齿土狼
    .accept 1136 >>接受任务 霜喉雪人
    .target 梅洛·石蹄
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 14319 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 5384 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌瑞克|r 对话
    .train 14263 >>训练你的职业技能
    .target 乌瑞克·雷角
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫苏瓦|r 对话
    .train 24559 >>训练你的宠物技能
    .target 赫苏瓦·雷角
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔|r 对话
    .train 7887 >>训练你的职业技能
    .target 科尔·暴怒图腾
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 交谈
    .train 7369 >>训练你的职业技能
    .accept 1718 >>接受任务岛民
    .target 托姆·暴怒图腾
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆|r 交谈
    .train 20658 >>训练你的职业技能
    .accept 1718 >>接受任务岛民
    .target 托姆·暴怒图腾
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加萨|r 对话
    .turnin 5062 >>交任务神圣之火
    .accept 5088 >>接受任务阿利卡拉
    .target 玛加萨·恐怖图腾
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛加萨|r 对话
    .turnin 5062 >>交任务神圣之火
    .target 玛加萨·恐怖图腾
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 3029 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 783 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .train 22568 >>训练你的职业技能
    .target 凯姆·蛮鬃
    .xp <32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 8104 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 602 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦尔斯|r 对话
    .train 6077 >>训练你的职业技能
    .target 麦尔斯·威尔什
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 759 >>训练你的职业技能
    .target 大法师山姆
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 8412 >>训练你的职业技能
    .target 大法师山姆
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师山姆|r 对话
    .train 8422 >>训练你的职业技能
    .target 大法师山姆
    .xp <32,1
step << Mage    
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_比尔吉特|r 对话
    .train 3566 >>学习 |T135765:0|t[传送：雷霆崖] 
    .target 比尔吉特·克兰斯顿
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 8053 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 556 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提戈尔|r 对话
    .train 421 >>训练你的职业技能
    .target 提戈尔·逐星
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >> |cRXP_WARN_Create|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_潘德|r 对话
    .train 7928 >>学习 |T133671:0|t[丝质绷带]
    >>|cRXP_WARN_如果你没有足够的毛料将技能提升到 150，请跳过此步骤|r
    .target 潘德·缚石
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知|r对话
    .accept 1049 >>接受任务堕落者纲要
    .target 圣者图希克
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库纳|r 对话
    .vendor >>|cRXP_BUY_购买一把|r |T135495:0|t[强韧的弯弓] |cRXP_BUY_如果有的话，从她那里|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target 库纳·雷角
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_库纳|r |cRXP_BUY_交谈|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target 库纳·雷角
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_德尔贡|r 对话
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r
    >>|cRXP_WARN_或者你也可以购买一把|r |T135576:0|t[巨型战斧]
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 德尔贡·暴怒图腾
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_德尔贡|r 对话
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r
    >>|cRXP_WARN_或者你也可以购买一把|r |T135576:0|t[巨型战斧] |cRXP_WARN_，或者查看拍卖行是否有更好的选择|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target 德尔贡·暴怒图腾
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target 卡德·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target 卡德·暴怒图腾
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith TearMoons
    +|cRXP_WARN_装备|r |T135275:0|t[骑士长剑] 
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target 卡德·暴怒图腾
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
    .target 卡德·暴怒图腾
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_装备|r |T135651:0|t[钝刺] 
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 塔尔
    .zoneskip The Barrens
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 879 >>交任务内奸
    .accept 906 >>接受任务内奸
    .target 碎牙
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔特纳克|r 对话
    .accept 893 >>接受任务野猪人的武器
    .turnin 893 >>交任务野猪人的武器
    .accept 1153 >>接受任务新的矿石样本
    .target 塔特纳克·钢炉
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩|r 对话
    .accept 884 >>接受任务奥瓦坦卡
    .turnin 884 >>交任务奥瓦坦卡
    .itemcount 5102,1
    .target 乔恩·星眼
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔恩|r 对话
    .accept 885 >>接受任务瓦希塔帕恩
    .turnin 885 >>交任务瓦希塔帕恩
    .target 乔恩·星眼
    .itemcount 5103,1
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>前往血蹄村
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r 对话
    .train 132245 >>Train |T136103:0|t[Kodo Riding]
    .vendor >>|cRXP_BUY_购买一只|r |T132253:0|t[|cFF0070FF科多兽|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target 卡尔·雷歌
    .target 哈布·爪蹄
step
    .goto The Barrens,50.48,78.72,100 >>前往尘泥沼泽
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>点击地上的 |cRXP_PICK_可疑蹄印|r
    .accept 1268 >>接受任务可疑的蹄印
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>点击地面木板上的 |cRXP_PICK_塞拉摩卫兵徽章|r
    .accept 1269 >>接受任务帕瓦尔·雷瑟上尉
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>点击壁炉上方的 |cRXP_PICK_黑色盾牌|r
    .accept 1251 >>接受任务黑色盾牌
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
    .subzone 496 >>飞往蕨墙村
    >>|cRXP_WARN_小心！该区域有 36-38 级的怪物。为安全起见请跟随路线箭头|r
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .turnin 1268 >>交任务可疑的蹄印
    .target 克罗格
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .turnin 1269 >>交任务帕瓦尔·雷瑟上尉
    .target 克罗格
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .turnin 1251 >>交任务黑色盾牌
    .accept 1321 >>接受任务黑色盾牌
    .target 克罗格
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .accept 1321 >>接受任务黑色盾牌
    .target 克罗格
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜高尔|r 对话
    .turnin 1321 >>交任务黑色盾牌
    .target 杜高尔
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_祖尔格|r 对话
    .vendor >>|cRXP_BUY_购买一根|r |T135158:0|t[大棍子]|cRXP_BUY_如果有货的话从他那里|r
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target 祖尔格
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
    .zoneskip Dustwallow Marsh,1
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴莱|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134831:0|t[卷轴] |cRXP_BUY_如果有货的话从她那里购买|r
    .target 巴莱·洛克维
    .zoneskip Dustwallow Marsh,1
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴莱|r 对话
    >>|cRXP_BUY_f从她那里|cRXP_BUY_f购买|r |T133735:0|t[急救手册]|r
    .collect 16112,1,873,1 >>手册：厚丝质绷带 (1)
    .collect 16113,1,873,1 >>手册：魔纹绷带 (1)
    .collect 16084,1,873,1 >>中级急救教材 - 绷带缚体 (1)
    .target 巴莱·洛克维
    .zoneskip Dustwallow Marsh,1
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙尔迪|r 对话 
    .fp Brackenwall >>获得蕨墙村的飞行点
    .fly Freewind Post >>飞往乱风岗
    .target 沙尔迪
    .zoneskip Dustwallow Marsh,1
step
    #optional
    #completewith FreewindHome
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Freewind Post >>飞往乱风岗
    .target 欧姆萨·雷角
    .zoneskip The Barrens,1
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾鲁|r 对话
    .turnin 4767 >>交任务驭风者
    .target Elu
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up|r
    .target 斯塔恩
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134831:0|t[卷轴] |cRXP_BUY_如果有货的话从他那里购买|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target 莫塔尔
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板埃比克瓦|r 对话
    .home >>将你的炉石设置到狂风岗
    .target 旅店老板埃比克瓦
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图林·长角|r 对话
    .turnin 9434 >>交任务测试药剂
    .target 魔导师艾洛塞
step
    #softcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1150 >>交任务耐力的试炼
    .accept 1151 >>接受任务力量的试炼
    .target 多恩·平原行者
    .isQuestComplete 1150
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1150 >>交任务耐力的试炼
    .accept 1151 >>接受任务力量的试炼
    .target 多恩·平原行者
    .isQuestComplete 1150
    .group
step
    #optional
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .accept 1151 >>接受任务力量的试炼
    .target 多恩·平原行者
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
    >>找到并击杀 |cRXP_ENEMY_罗卡里姆|r。拾取他的 |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_他会在该区域北部和西部的大范围内巡逻|r
    >>|cRXP_WARN_如果现在找不到他，可以暂时跳过此步骤|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan 罗卡里姆
	.isOnQuest 1151
step
    .goto Thousand Needles,31.47,36.71,30 >>前往黑云峰
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
    .goto Thousand Needles,33.32,36.24,20 >>沿着黑云峰向上前进
step
    .goto Thousand Needles,31.79,32.58
    >>打开高地上的 |cRXP_PICK_文件箱|r。拾取地上的它以获取 |cRXP_LOOT_秘密便条 #1|r
    .complete 5064,1 --Secret Note #1 (1)
step
    .goto Thousand Needles,33.80,39.90
    >>打开 |cRXP_PICK_文件箱|r 并对话，NPC 在大帐篷内。拾取地上的它以获取 |cRXP_LOOT_秘密便条 #1|r
    .complete 5064,2 --Secret Note #2 (1)
step
    .goto Thousand Needles,39.20,41.60
    >>打开东部高地帐篷内的 |cRXP_PICK_文件箱|r。拾取它以获取 |cRXP_LOOT_秘密便条 #1|r
    .complete 5064,3 --Secret Note #3 (1)
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >>前往北部/东部高地的 |cRXP_PICK_篝火|r 
step
    >>清理 |cRXP_ENEMY_恐怖图腾|r 然后点燃 |cRXP_PICK_篝火|r
	>>击杀 |cRXP_ENEMY_阿利卡拉|r。拾取她的 |cRXP_LOOT_皮|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob 阿利卡拉 <复仇>
step
    .goto Thousand Needles,38.00,26.80
    >>击杀 |cRXP_ENEMY_阿纳克·恐怖图腾|r。拾取他的 |cRXP_LOOT_蹄子|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob 阿纳克·恐怖图腾 <黑云恐怖图腾酋长之首>
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉克塔|r 对话
    >>|cRXP_WARN_这将开始护送任务|r
    .accept 4904,1 >>接受任务终获解救
    .target 拉克塔·风歌
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
	>>护送 |cRXP_FRIENDLY_拉克塔|r 到安全地点
    >>|cRXP_WARN_每当她到达一个新的平台时，会刷新两只|r |cRXP_ENEMY_恐怖图腾|r |cRXP_WARN_。如果你背后有刷新怪，尽量走在她前面清理平台|r
	>>|cRXP_WARN_小心，这个任务很难。不要害怕通过向后逃跑并让护送任务失败来脱身|r
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target 拉克塔·风歌
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特加|r 对话
    .turnin 5088 >>交任务阿利卡拉
    .target 莫特加·火鬃
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    >>|cRXP_WARN_小心！交任务时会召唤三只 |cRXP_ENEMY_加拉克刺客|r |cRXP_WARN_，你必须保护 |cRXP_FRIENDLY_卡纳提|r |r
    .turnin 4881 >>交任务暗杀计划
    .accept 4966 >>接受任务保护卡纳提·灰云
    .target 卡纳提·灰云
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>击杀 |cRXP_ENEMY_加拉克刺客|r 以保护 |cRXP_FRIENDLY_卡纳提|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob 加拉克刺客
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡纳提|r 对话
    .turnin 4966 >>交任务保护卡纳提·灰云
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
    >>找到并击杀 |cRXP_ENEMY_罗卡里姆|r。拾取他的 |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_他会在该区域北部和西部的大范围内巡逻|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan 罗卡里姆
	.isOnQuest 1151
step
    #completewith next
    .goto Thousand Needles,12.51,13.83,80,0
    .goto Thousand Needles,11.21,22.09,80,0
    >>击杀 |cRXP_ENEMY_砂齿勘探员|r 和 |cRXP_ENEMY_砂齿掘地工|r。拾取他们以获取 |cRXP_LOOT_矿石样本|r
    >>|cRXP_WARN_如果没有掉落，请暂时跳过此步骤|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .zoneskip Feralas
step
    #completewith FeralasFP
    .subzone 1099 >>前往菲拉斯的莫沙彻营地
    >>|cRXP_WARN_小心！沿着道路行走以避开高等级怪物|r
step
    .goto Feralas,76.06,43.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布隆克|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134833:0|t[优质治疗药水] |cRXP_BUY_如果有货的话从他那里|r
    .target 布隆克
    .isQuestAvailable 1151
step
    #label FeralasFP
    .goto Feralas,75.45,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希恩|r 对话
    .fp Camp Mojache >>获得莫沙彻营地的飞行点
    .fly freewind Post >>飞往乱风岗
    .target 希恩
    .subzoneskip 484
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图林·长角|r 对话
    .turnin 5064 >>交任务 恐怖图腾的密信
    .turnin 5147 >>交任务通缉：阿纳克-恐怖图腾
    .target 峭壁卫兵图林·长角
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨利亚|r 对话
    .turnin 4904 >>交任务终获解救
    .target 萨利亚
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫塔尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134831:0|t[治疗药水]|cRXP_BUY_和|r |T134831:0|t[卷轴] |cRXP_BUY_如果有货的话从他那里购买|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_, |r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target 莫塔尔
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up and fill your quiver with arrows|r
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target 斯塔恩
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯塔恩|r 对话
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target 斯塔恩
    .subzoneskip 484,1
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多恩|r 对话
    .turnin 1151 >>交任务力量的试炼
    .target 多恩·平原行者
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
    >>击杀 |cRXP_ENEMY_砂齿勘探员|r、|cRXP_ENEMY_砂鼻掘地者|r 和 |cRXP_ENEMY_吉布尔斯尼克|r(如果他出现)。拾取他们的 |cRXP_LOOT_矿石样本|r
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
    .xp 30 >>刷怪练级到 30 级
step
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >>飞往闪光平原
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克拉维尔|r 对话
    .accept 1111 >>接受任务码头管理员迪兹维格
	.accept 5762 >>接受任务赫米特·奈辛瓦里二世
	.target 克拉维尔·浓须
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >>前往加基森
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布科雷克|r 对话
	.fp Gadgetzan >>获取加基森飞行点
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 布科雷克·怒拳
    .cooldown item,6948,<0
    .zoneskip The Barrens
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布科雷克|r 对话
	.fp Gadgetzan >>获取加基森飞行点
    .target 布科雷克·怒拳
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >>使用炉石返回狂风岗
    .goto Thousand Needles,46.06,51.41,30 >>到达乱风岗
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 奈瑟
    .subzoneskip 484,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔特纳克|r 对话
    .turnin 1153 >>交任务新的矿石样本
    .target 塔特纳克·钢炉
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>前往血蹄村
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r 对话
    .train 132245 >>Train |T136103:0|t[Kodo Riding]
    .vendor >>|cRXP_BUY_购买一只|r |T132253:0|t[|cFF0070FF科多兽|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target 卡尔·雷歌
    .target 哈布·爪蹄
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>前往陶拉祖营地
    .skill riding,<75,1
step
    #label FlyCR
    #completewith SwarmGrows
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Crossroads>>飞往十字路口
    .target 欧姆萨·雷角
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 906 >>交任务内奸
    .target 索克
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科兰|r 对话
    .accept 1145 >>接受任务疯狂的虫群
    .target 科兰
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >>飞往棘齿城
	.target 迪弗拉克
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >>飞往棘齿城
	.target 迪弗拉克
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
	.target 迪弗拉克
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔戈洛姆|r 对话
    .turnin 1145 >>交任务疯狂的虫群
    .accept 1146 >>接受任务疯狂的虫群
    .target 贝尔戈洛姆·石槌
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索瑞克|r 对话
	.accept 1718 >>接受任务岛民
    .target 索瑞克
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 多拉斯
    .zoneskip Orgrimmar,1
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兹维格|r 对话
    .turnin 1111 >>交任务码头主管迪兹维格
    .accept 1112 >>接受任务给克拉维尔的零件
    .target 码头管理员迪兹维格
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 对话
    .turnin 220 >>交任务水之召唤
    .accept 63 >>接受任务水之召唤
    .target 水之先知伊斯伦
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊斯伦|r 对话
    >>|cRXP_WARN_确保你获取 |T134754:0|t [|cRXP_LOOT_水之灵契|r]|r
    .turnin 972 >>交任务水之灵契
	.collect 6637,1 --Water Sapta (1)
    .target 水之先知伊斯伦
step
    #optional << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .turnin 874 >>交任务玛伦·星眼
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .isOnQuest 874
step
    #optional
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .accept 873 >>接受任务依沙瓦克
    .target 玛伦·星眼
    .isQuestTurnedIn 874
step
    #optional << !Warrior !Shaman
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>击杀 |cRXP_ENEMY_依沙瓦克|r。拾取他的 |cRXP_LOOT_依沙瓦克的心脏|r
    >>|cRXP_WARN_他在沿海地区有四个不同的刷新位置|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan 依沙瓦克
    .isOnQuest 873
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >>前往弗雷岛 
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克兰诺克|r 对话
    .turnin 1718 >>交任务岛民
    .accept 1719 >>接受任务格斗考验
    .target 克兰诺克·马克雷德
step << Warrior
	>>站到你身后的格栅上。迅速击杀依次出现的 |cRXP_ENEMY_竞技挑战者|r
    >>在 |cRXP_ENEMY_大威尔|r 出现后击杀他
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob 比格维尔
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克兰诺克|r 对话
    >>|cRXP_WARN_这会教你狂暴姿态|r
    .turnin 1719 >>交任务格斗考验
    .accept 1791 >>接受任务捕风者
    .target 克兰诺克·马克雷德
step
    #optional << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛伦|r 对话
    .turnin 873 >>交任务依沙瓦克
    .target 玛伦·星眼
    .isQuestComplete 873
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >>现在你应该开始寻找剃刀沼泽的小队
    .dungeon RFK
step << !Mage
    #optional << !Warrior !Shaman
    #completewith FlyOrg2
    .goto The Barrens,62.81,37.91,200 >>返回棘齿城
    .subzoneskip 392
step << !Mage
    #label FlyOrg2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 布拉高克
    .zoneskip Orgrimmar
step << Mage
    .cast 3567 >>|cRXP_WARN_施放 |T135759:0|t [传送：奥格瑞玛]|r
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 8412 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 8422 >>训练你的职业技能
    .target 皮菲瑞多
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_霍苏斯|r |cRXP_BUY_对话。购买两枚或更多|r |T134419:0|t[传送符文] |cRXP_BUY_从他那里|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target 霍苏斯
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 1760 >>训练你的职业技能
    .target 奥莫克
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .train 8623 >>训练你的职业技能
    .target 奥莫克
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_雷库尔|r 对话
	.vendor >>|cRXP_BUY_Stock up on|r |T134387:0|t[Flash Powder] |cRXP_BUY_and|r |T132273:0|t[Poisons]
    .target 雷库尔
    .zoneskip Orgrimmar,1
step << Shaman
    .goto Orgrimmar,37.95,37.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔恩|r 对话
    .trainer >>训练你的职业技能
    .accept 1531 >>接受任务空气的召唤
    .target 希尔恩·火结
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 5784 >>学习 |T136103:0|t[召唤地狱战马]
    .target 米尔科特
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 6213 >>训练你的职业技能
    .target 米尔科特
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r 对话
	.vendor >>购买任何你买得起的宠物升级
	.target 库古尔
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135466:0|t[致命魔杖] |cRXP_BUY_从她那里|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target 卡提斯
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_卡提斯|r |cRXP_BUY_对话。购买一把|r |T135466:0|t[致命魔杖] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以查看拍卖行，看看是否有更好的选择|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target 卡提斯
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔戈洛姆|r 对话
    .turnin 1145 >>交任务疯狂的虫群
    .accept 1146 >>接受任务疯狂的虫群
    .target 贝尔戈洛姆·石槌
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 7369 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .train 20658 >>训练你的职业技能
    .target 格雷兹·怒拳
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 5384 >>训练你的职业技能
    .target 奥玛克
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r 对话
    .train 14263 >>训练你的职业技能
    .target 奥玛克
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖|r 对话
    .train 24559 >>训练你的宠物技能
    .target 肖祖
    .xp <30,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target 金索拉
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈纳什|r 对话
    .train 197 >>学习双手斧
    .target 哈纳什
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 602 >>训练你的职业技能
    .target 乌尔库
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_乌尔库|r 对话
    .train 6077 >>训练你的职业技能
    .target 乌尔库
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .train 34769 >>学习 |T136103:0|t[召唤军马]
    .target 派雷亚诺
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r 对话
    .train 19836 >>训练你的职业技能
    .target 派雷亚诺
    .xp <32,1
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔达|r 和 |cRXP_FRIENDLY_奥古纳罗|r 对话
    .train 825 >>学习 |T136103:0|t[骑术：狼]
    .vendor >>|cRXP_BUY_Buy a|r |T132224:0|t[|cFF0070FF狼|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target 基尔达
    .target 奥古纳罗
step << Troll
    #optional
    #completewith next
    .subzone 367 >>前往森金村
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克萨尔迪|r 和 |cRXP_FRIENDLY_祖尼尔|r 对话
    .train 10861 >>Train |T136103:0|t[Raptor Riding]
    .vendor >>|cRXP_BUY_购买一只|r |T132253:0|t[|cFF0070FF迅猛龙|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target 克萨尔迪
    .target 祖尼尔
step
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target 多拉斯
    .zoneskip The Barrens
    .dungeon RFK
step
    #completewith next
    >>|cRXP_WARN_如果可能，让队友共享以下任务，否则跳过此步骤|r
    .accept 1109 >>接受任务 蝙蝠的粪便
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >>进入剃刀沼泽
    .dungeon RFK
step
    >>击杀 |cRXP_ENEMY_剃刀沼泽蝙蝠|r，并拾取它们的 |cRXP_LOOT_剃刀沼泽粪便|r
    .complete 1109,1 --Kraul Guano (1)
    .mob 沼泽蝙蝠
    .mob 巨型沼泽蝙蝠
    .dungeon RFK
    .isOnQuest 1109
step
    >>击杀 |cRXP_ENEMY_卡尔加·刺肋|r，拾取她的 |cRXP_LOOT_心脏|r 以及 |T134939:0|t[|cRXP_LOOT_小卷轴|r]，并使用该卷轴来接取任务
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>接受任务邪恶的盟友
    .mob 卡尔加·刺肋
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_进口商威利克斯|r 对话
    >>|cRXP_WARN_这将开始护送任务|r
    .accept 1144 >>接受任务进口商威利克斯
    .target 进口商威利克斯
    .dungeon RFK
step
    >>护送 |cRXP_FRIENDLY_进口商威利克斯|r 穿过剃刀沼泽
    >>|cRXP_WARN_确保你靠近 |cRXP_FRIENDLY_威利克斯|r 否则任务可能无法完成|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target 进口商威利克斯
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_进口商威利克斯|r 对话
    .turnin 1144 >>交任务进口商威利克斯
    .target 进口商威利克斯
    .isQuestComplete 1144
    .dungeon RFK
step << !Mage
    #completewith RFKFinish
	.hs >>使用炉石返回狂风岗
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon RFK
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 奈瑟
    .zoneskip Thunder Bluff
    .isQuestComplete 1102
    .dungeon RFK
step << Mage
    .cast 3566 >>|cRXP_WARN_施放 |T135765:0|t[传送：雷霆崖]|r
    .zoneskip Thunder Bluff
    .isQuestComplete 1102
    .dungeon RFK
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥尔德|r 对话
    .turnin 1102 >>交任务奥尔德的报复
    .target 奥尔德·石塔
    .isQuestComplete 1102
    .dungeon RFK
step
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 奈瑟
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
    .zone 721,2 >>现在你应该开始寻找诺莫瑞根的小队
    .dungeon GNOMER
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺格|r 对话
    .accept 2841 >>接受任务设备之战
    .target 诺格
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索维克|r 对话
    >>|cRXP_WARN_通过对话接受该任务|r
    .accept 2842 >>接受任务主工程师斯库提
    .target 索维克
    .dungeon GNOMER
step
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 多拉斯
    .zoneskip Orgrimmar,1
    .dungeon GNOMER
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >>乘船前往荆棘谷
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯库提|r 对话
    .turnin 2842 >>交任务主工程师斯库提
    .accept 2843 >>接受任务出发！诺莫瑞根！
    .target 斯库提
    .timer 9 >>地精传送器
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯库提 |r 对话
    .turnin 2843 >>交任务出发！诺莫瑞根！
    .target 斯库提
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >>踩上诺莫瑞根传送器
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >>进入诺莫瑞根
    .dungeon GNOMER
step
    >>击杀 |cRXP_ENEMY_麦克基尼尔·瑟玛普拉格|r，并拾取他的 |cRXP_LOOT_保险箱密码|r
    >>在房间北侧拾取 |cRXP_PICK_瑟玛普拉格的保险箱|r，获得 |cRXP_LOOT_设备蓝图|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob 机械师瑟玛普拉格
    .dungeon GNOMER
step << !Mage
    #completewith next
	.hs >>使用炉石返回狂风岗
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈瑟|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 奈瑟
    .zoneskip Orgrimmar
    .dungeon GNOMER
step << !Mage
    #optional
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 布拉高克
    .subzoneskip 392,1
step << Mage
    .cast 3567 >>|cRXP_WARN_施放 |T135759:0|t [传送：奥格瑞玛]|r
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺格|r 对话
    .turnin 2841 >>交任务设备之战
    .target 诺格
    .dungeon GNOMER
    .isQuestComplete 2841

]])
