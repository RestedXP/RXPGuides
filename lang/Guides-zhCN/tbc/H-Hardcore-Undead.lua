if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#group RestedXP Survival Guide (H)
<< Horde
#name 1-6 Tirisfal Glades
#version 7
#subgroup RestedXP Survival Guide 1-30
#defaultfor Scourge
#next 6-10 Eversong Woods


step << !Undead
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Undead. It is recommended you choose the same starter zone that you start in|r
step
    #completewith Zombies
	.destroy 6948 >> Destroy the |T134414:0|t[Hearthstone] in your bags, as it's no longer needed
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Run up out of the crypt toward |cRXP_FRIENDLY_Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mordo|r
    .accept 363 >>接受任务《物归己用》 突然醒来
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    |cRXP_WARN_Kill |cRXP_ENEMY_食腐狼幼崽|r and |cRXP_ENEMY_夜行蝙蝠|r. Loot them until you have 60 copper worth of vendor items (including your armor)|r << Mage
    |cRXP_WARN_Kill |cRXP_ENEMY_食腐狼幼崽|r and |cRXP_ENEMY_夜行蝙蝠|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r << Priest
    |cRXP_WARN_Kill |cRXP_ENEMY_食腐狼幼崽|r and |cRXP_ENEMY_夜行蝙蝠|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>Go 对话，NPC在里面 the building
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Venya|r 和 |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>接受任务《物归己用》 控制小鬼 << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >>交任务《 前往熔光镇》 突然醒来
    .accept 364 >>接受任务《物归己用》 无脑的僵尸
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elreth|r
    .accept 376 >>接受任务《物归己用》 被诅咒者
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendor Trash
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >>交任务《 前往熔光镇》 突然醒来
    .accept 364 >>接受任务《物归己用》 无脑的僵尸
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elreth|r
    .accept 376 >>接受任务《物归己用》 被诅咒者
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>击杀 |cRXP_ENEMY_断骨骷髅|r。拾取他们的 |cRXP_LOOT_Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    |cRXP_WARN_Kill |cRXP_ENEMY_无脑的僵尸|r and |cRXP_ENEMY_Wretched Zombies|r. Loot them until you have 25 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>交任务《 前往熔光镇》 控制小鬼
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[Summon Imp]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
    .goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
    >>击杀 |cRXP_ENEMY_无脑的僵尸|r 和 |cRXP_ENEMY_Wretched Zombies|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    |cRXP_WARN_Kill |cRXP_ENEMY_无脑的僵尸|r and |cRXP_ENEMY_Wretched Zombies|r. Loot them until you have 33 copper worth of vendor items (including your armor)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r 和 |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, and |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >>交任务《 前往熔光镇》 无脑的僵尸
    .accept 3095 >>接受任务《物归己用》 简易卷轴 << Warrior
    .accept 3096 >>接受任务《物归己用》 密文卷轴 << Rogue
    .accept 3097 >>接受任务《物归己用》 神圣卷轴 << Priest
    .accept 3098 >>接受任务《物归己用》 雕文卷轴 << Mage
    .accept 3099 >>接受任务《物归己用》 被污染的卷轴 << Warlock
    .accept 3901 >>接受任务《物归己用》 断骨骷髅
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接受任务《物归己用》 被诅咒者
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务《 前往熔光镇》 被污染的卷轴 << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .target +Isabella << Mage
    .turnin 3098 >>交任务《 前往熔光镇》 雕文卷轴 << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务《 前往熔光镇》 神圣卷轴 << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,29.21,66.68,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    >>击杀 |cRXP_ENEMY_食腐狼幼崽|r 和 |cRXP_ENEMY_蓬毛食腐狼|r。拾取他们的 |cRXP_LOOT_Scavenger Paws|r
    >>击杀 |cRXP_ENEMY_夜行蝙蝠|r 和 |cRXP_ENEMY_癞皮夜行蝙蝠|r。拾取他们的 |cRXP_LOOT_Duskbat Wings|r
    >>|cRXP_WARN_Try to avoid |cRXP_ENEMY_癞皮夜行蝙蝠|r if you can due to them being much tougher to kill than |cRXP_ENEMY_夜行蝙蝠|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>击杀 |cRXP_ENEMY_断骨骷髅|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+940 >>击杀 to 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>击杀 to 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT go below 1 Silver|r << Mage/Warlock/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sarvis|r 和 |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >>交任务《 前往熔光镇》 断骨骷髅
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务《 前往熔光镇》 被诅咒者
    .accept 6395 >>接受任务《物归己用》 玛拉的遗愿
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Duesten|r
    .train 589 >>训练你的职业技能
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r 和 |cRXP_FRIENDLY_执行官阿伦|r
    .accept 3902 >>接受任务《物归己用》 捡破烂
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>接受任务《物归己用》 夜行蜘蛛洞穴
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>交任务《 前往熔光镇》 简易卷轴
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>交任务《 前往熔光镇》 简易卷轴
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务《 前往熔光镇》 密文卷轴
    .train 53 >> Train |T132090:0|t[Backstab]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务《 前往熔光镇》 密文卷轴
    .target David Trias
step
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>打开 |cRXP_PICK_Equipment Boxes|r on the ground. 拾取地上的 them for the |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>击杀 |cRXP_ENEMY_小夜行蜘蛛|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
    .goto Tirisfal Glades,27.86,58.98,40,0
	.goto Tirisfal Glades,28.25,58.27,40,0
	.goto Tirisfal Glades,28.42,59.07,40,0
	.goto Tirisfal Glades,27.86,60.57,40,0
	.goto Tirisfal Glades,27.17,59.18,40,0
	.goto Tirisfal Glades,27.30,57.97,40,0
	.goto Tirisfal Glades,26.94,56.42,40,0
	.goto Tirisfal Glades,27.51,56.00,40,0
    >>击杀 cave entrance
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>进入小屋
step
    #loop
    .goto Tirisfal Glades,26.31,59.60,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>击杀 
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #softcore
    #completewith Scavenging
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|ror run back to Deathknell
    .target Spirit Healer
step
    #hardcore
    #completewith Scavenging
    .goto Tirisfal Glades,31.61,65.62,80 >>Return to Deathknell
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >>交任务《 前往熔光镇》 捡破烂
    .target Deathguard Saltain
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Arren|r
    .turnin 380 >>交任务《 前往熔光镇》 夜行蜘蛛洞穴
    .accept 381 >>接受任务《物归己用》 血色十字军
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
    .goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
    >>击杀 |cRXP_ENEMY_血色新兵|r 和 |cRXP_ENEMY_血色信徒|r。拾取他们的 |cRXP_LOOT_Scarlet Armbands|r
    >>|cRXP_WARN_Don't kill |cRXP_ENEMY_迈文·考加尔|r yet|r
    >>|cRXP_WARN_Try to avoid |cRXP_ENEMY_血色新兵|r if you can as they have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows your attack speed)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>击杀 |cRXP_ENEMY_Samuel|r。拾取他的 |cRXP_LOOT_Samuel's Remains|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,31.17,65.08,80 >>Return to Deathknell
step
    .goto Tirisfal Glades,31.17,65.08
	>>点击地上的 |cRXP_PICK_Marla's Grave|r on the ground
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elreth|r 和 |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >>交任务《 前往熔光镇》 玛拉的遗愿
    .target +Novice Elreth
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >>接受任务《物归己用》 黑暗的恩赐 << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Arren|r
    .turnin 381 >>交任务《 前往熔光镇》 血色十字军
    .accept 382 >>接受任务《物归己用》 十字军信使
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r
    .vendor >> Vendor Trash
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>击杀 |cRXP_ENEMY_Meven|r。拾取他的 |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Arren|r
    .turnin 382 >>交任务《 前往熔光镇》 十字军信使
    .accept 383 >>接受任务《物归己用》 重要情报
    .target Executor Arren
step
    #loop
    .goto Tirisfal Glades,37.51,62.99,0
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    .xp 5+2350 >>击杀 to 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Calvin|r
    .accept 8 >>接受任务《物归己用》 潜行者的交易
    .target Calvin Montague
step
    #softcore
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|ror run to Brill
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .subzone 159 >>前往暴风城大教堂内，与 Brill
step
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zygand|r
    .turnin 383 >>交任务《 前往熔光镇》 重要情报
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_温特斯夫人|r|cRXP_BUY_. Buy |r |T135421:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,200,8475,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,8475,1 --Collect Stiletto (1)
    .target Oliver Dwor
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135421:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,8475,1 --Collect Gladius (1)
    .target Oliver Dwor
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_吉娜·朗恩|r on the second floor
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact]|cRXP_BUY_from her|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Gina Lang
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Rupert Boch
step << Warlock
    #completewith SilvermoonFP
    .train 20397 >> |cRXP_WARN_Use the|r |T133738:0|t[Grimoire of Blood Pact]
    .itemcount 16321,1
    .use 16321
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r
    .turnin 8 >>交任务《 前往熔光镇》 潜行者的交易
    .home << Set your Hearthstone to Brill << Priest
    .target Innkeeper Renee
    .bindlocation 159 << Priest
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Beryl|r 交谈
    .turnin 5651 >>交任务《 前往熔光镇》 黑暗的恩赐
    .accept 5650 >>接受任务《物归己用》 黑暗之衣
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Beryl|r 交谈
    .turnin 5651 >>交任务《 前往熔光镇》 黑暗的恩赐
    .accept 5650 >>接受任务《物归己用》 黑暗之衣
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Beryl|r 交谈
    .turnin 5651 >>交任务《 前往熔光镇》 黑暗的恩赐
    .accept 5650 >>接受任务《物归己用》 黑暗之衣
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Beryl|r 交谈
    .turnin 5651 >>交任务《 前往熔光镇》 黑暗的恩赐
    .accept 5650 >>接受任务《物归己用》 黑暗之衣
    .target Dark Cleric Beryl
step << Priest
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Exit the Inn
step << Priest
    .goto Tirisfal Glades,59.18,46.49,50 >>前去找 |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >>|cRXP_WARN_施放|r |T135929:0|t[Lesser Heal Rank 2] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >>|cRXP_WARN_施放|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Heal 和 then Fortify |cRXP_FRIENDLY_Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest
    #completewith next
    .hs >>Hearth to 布瑞尔，提瑞斯法林地
    .bindlocation 159,1
    .subzoneskip 159
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Beryl|r 交谈
    .turnin 5650 >>交任务《 前往熔光镇》 黑暗之衣
    .target Dark Cleric Beryl
step
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Exit the Inn
step
    #completewith next
    .goto Undercity,65.87,1.48,15,0
    .goto Undercity,65.82,5.44,15,0
    .goto Undercity,62.76,11.02,12,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
step
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >>获取暴风城的飞行路径
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >>接受任务《物归己用》 死亡之痕
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>前往暴风城大教堂内，与 Falconwing Square
    .isQuestAvailable 8463
]])