if GetLocale() ~= "zhCN" then return end
if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 13-15级 银松森林
#version 1
#group RestedXP 生存指南 (部落版)
#subgroup RXP 生存指南 1-20级
#next 15-19级 贫瘠之地

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_如果你看到|r |cRXP_FRIENDLY_阿斯托|r|cRXP_WARN_，就与他对话并将其击杀。从他身上拾取信件。他在布瑞尔和瑟伯切尔之间的道路上巡逻。|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>在前往|cRXP_ENEMY_埃兰德|r的路上击杀|cRXP_FRIENDLY_座狼|r，拾取它们的|cRXP_LOOT_心脏|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵哨兵埃兰德|r 对话
    >>|cRXP_WARN_确保你在开始任务前满血满蓝！|r
    .accept 435 >>接受任务 护送埃兰德
    .target Deathstalker Erland
step
    #completewith next
    >>击杀|cRXP_ENEMY_座狼|r，拾取它们的|cRXP_LOOT_心脏|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>安全护送|cRXP_FRIENDLY_埃兰德|r前往|cRXP_FRIENDLY_雷恩·约里克|r处
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_座狼|r |cRXP_WARN_可以堆叠刷新，尽可能多进食和饮水|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .turnin 435 >>交任务 护送埃兰德
    .accept 429 >>接受任务 荒野之心
    .accept 449 >>接受任务 亡灵哨兵的报告
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>击杀|cRXP_ENEMY_座狼|r，拾取它们的|cRXP_LOOT_心脏|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>前往墓地
    .subzoneskip 228
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .accept 421 >>接受任务 证明你的价值
    .target 达拉尔·道恩维沃尔
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格乌恩|r 对话
    .vendor >>|cRXP_BUY_购买|r |T134830:0|t|T134830:0|t[次级治疗药水] |cRXP_BUY_从他那里（如果有货的话）|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德温|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_购买|r |T134830:0|t[Lesser 治疗 Potions] |cRXP_BUY_如果有货就从他那里买|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利斯特|r 和 |cRXP_FRIENDLY_博迪瑞格|r 对话
    .accept 477 >>接受任务 越境
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>接受任务 瑟伯切尔的补给
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 对话
    .accept 477 >>接受任务 越境
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>进入地穴
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地穴中的|cRXP_FRIENDLY_高级执行官哈德瑞克|r交谈
    .turnin 449 >>交任务 死亡猎手的报告
    .accept 3221 >>接受任务 与伦弗利尔会面
    .accept 437 >>接受任务 亡者农场
    .target 高级执行官哈德瑞克
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 对话
    .turnin 429 >>交任务 荒野之心
    .turnin 445 >>交任务 给银松森林送信
    .turnin 3221 >>交任务 与伦弗利尔会面
    .accept 1359 >>接受任务 给金格的货物
    .accept 447 >>接受任务 致命的配方
    .accept 430 >>接受任务 回到奎恩身旁
    .target 药剂师伦弗利尔
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>杀死 |cRXP_ENEMY_Moonrage Whitescalps|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .target 达拉尔·道恩维沃尔
    .turnin 421 >>交任务 证明你的价值
    .accept 422 >>接受任务 阿鲁高的愚行
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >>前往瓦尔甘农场
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>进入房子，上到二楼。拾取地上的|cRXP_PICK_暗色法术书|r
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >>前往伊瓦南瓜田
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在房屋二楼与 |cRXP_FRIENDLY_奎恩·尤瑞克|r 对话
    .turnin 430 >>交任务 回到奎恩身旁
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在外面与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .accept 425 >>接受任务 邪恶的伊瓦
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>杀死 |cRXP_ENEMY_邪恶的伊瓦|r。拾取他掉落的|cRXP_LOOT_头部|r
    >>|cRXP_WARN_小心！清除农舍前方的整个区域并一次一个地将|r |cRXP_ENEMY_Ravenclaw Slaves|r |cRXP_WARN_拉到外面。|r
    >>|cRXP_WARN_伊瓦尔受到谷仓内两名|r |cRXP_ENEMY_拉文克劳奴隶|r |cRXP_WARN_的保护。你可以在他向前巡逻时单独拉出一名|r
    >>|cRXP_WARN_它们对恐惧免疫！|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .turnin 425 >>交任务 邪恶的伊瓦
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_小心！这里可能有一个|r |cRXP_ENEMY_阿鲁高之子|r |cRXP_WARN_在这个区域！这是一个25级精英怪，远离他！|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>杀死 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>在亡者农场附近击杀|cRXP_ENEMY_腐皮豺狼人|r，直到|cRXP_ENEMY_奈塔拉什的哀嚎|r刷新。击杀她并拾取|cRXP_LOOT_精华|r
    >>|cRXP_WARN_它们对恐惧免疫！|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>杀死 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>击杀 |cRXP_ENEMY_蜘蛛|r。从它们身上获得|cRXP_LOOT_鲜血|r
    >>|cRXP_WARN_小心，如果|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_活跃，她会杀死你！她有一个15秒冷却、130伤害的盾牌和110伤害的瞬时冲击能力|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基利恩|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>击杀 |cRXP_ENEMY_蜘蛛|r。从它们身上获得|cRXP_LOOT_鲜血|r
    >>|cRXP_WARN_小心，如果|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_活跃，她会杀死你！她有一个15秒冷却、130伤害的盾牌和110伤害的瞬时冲击能力|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>完成击杀 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>返回瑟伯切尔
    .subzoneskip 228
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 422 >>交任务 阿鲁高的愚行
    .accept 423 >>接受任务 阿鲁高的愚行
    .target 达拉尔·道恩维沃尔
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>进入地穴
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地穴中的|cRXP_FRIENDLY_高级执行官哈德瑞克|r交谈
    .turnin 437 >>交任务亡者农场
    .accept 438 >>接受任务破旧渡口
    .target 高级执行官哈德瑞克
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格乌恩|r 对话
    >>|cRXP_BUY_购买|r |T134532:0|t[红色-speckled Mushrooms] |cRXP_BUY_从她那里|r
    .vendor >>把垃圾物品卖给商人
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Edwin|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_购买|r |T134830:0|t[Lesser 治疗 Potions]|cRXP_BUY_ （如果有货）|r
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Andrea|r 对话
    .vendor >>从她那里购买 |T132491:0|t[|cRXP_FRIENDLY_智者腰带|r]（如果有货）
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nadia|r 对话
    >>如果有货就从她那里购买 |T135490:0|t[|cRXP_FRIENDLY_精良的长弓|r]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alexandre|r 对话
    .vendor >>从她那里购买 |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r]（如果有货）
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alexandre|r 对话
    .vendor >>从她那里购买 |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r] 或 |T132537:0|t[|cRXP_FRIENDLY_马靴|r]（如果其中一个有货）
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132491:0|t[|cRXP_FRIENDLY_智者腰带|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Hunter
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T135490:0|t[|cRXP_FRIENDLY_精良的长弓|r]
    .use 11304
    .itemcount 11304,1
    .xp <14,1
    .equip 18,11304
step << Hunter/Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132537:0|t[|cRXP_FRIENDLY_马靴|r]
    .use 4789
    .itemcount 4789,1
    .equip 8,4789
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >>下山旅行
step
    #completewith DecrepitFerry
    +|cRXP_WARN_小心！区域内可能出现|r |cRXP_ENEMY_阿鲁高之子|r |cRXP_WARN_！这是一个25级精英，远离他！|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
	.goto Silverpine Forest,43.83,31.00,0
	.goto Silverpine Forest,44.22,31.55,50,0
	.goto Silverpine Forest,43.51,32.38,50,0
	.goto Silverpine Forest,42.61,31.12,50,0
	.goto Silverpine Forest,41.28,30.25,50,0
	.goto Silverpine Forest,39.70,30.24,50,0
	.goto Silverpine Forest,38.96,29.15,50,0
	.goto Silverpine Forest,38.28,27.10,50,0
	.goto Silverpine Forest,37.60,24.16,50,0
	.goto Silverpine Forest,38.07,23.13,50,0
	.goto Silverpine Forest,38.56,21.93,50,0
	.goto Silverpine Forest,39.73,23.26,50,0
	.goto Silverpine Forest,41.49,23.51,50,0
	.goto Silverpine Forest,41.14,25.50,50,0
	.goto Silverpine Forest,41.17,28.26,50,0
	.goto Silverpine Forest,42.01,29.27,50,0
	.goto Silverpine Forest,43.83,31.00,50,0
    >>杀死 |cRXP_ENEMY_Moonrage Gluttons|r 和 |cRXP_ENEMY_Moonrage Darksouls|r。拾取它们的 |cRXP_LOOT_镣铐|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_Moonrage Darksouls|r |cRXP_WARN_当生命值低于25%时会狂暴。当他们生命值较低时快速击杀它们|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>点击码头旁的 |cRXP_PICK_船只|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_Hands of Ravenclaw|r |cRXP_WARN_等级高达16级，拥有5秒冷却的近战范围眩晕能力|r
    .turnin 438 >>交任务破旧渡口
    .accept 439 >>接受任务线索
step
    .goto Silverpine Forest,49.89,60.33
    >>点击营地中的 |cRXP_PICK_Crate|r
    >>|cRXP_WARN_小心！这些小怪会施放|r |T135846:0|t[寒冰箭] |cRXP_WARN_并在低生命值时逃离。把它们拉回来，一个一个击杀，直到你能安全地点击箱子为止|r
    .turnin 477 >>交任务越境
    .accept 478 >>接受任务 地图与符记
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>回到瑟伯切尔
    .subzoneskip 228
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 和 |cRXP_FRIENDLY_Dalar|r 对话
    .turnin 478 >>交任务地图与符记
    .accept 481 >>接受任务 达拉尔的推理
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>交任务 阿鲁高的愚行
    .turnin 481 >>交任务 达拉尔的推理
    .accept 482 >>接受任务 达拉然的意图
    .accept 424 >>接受任务 阿鲁高的愚行
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 和 |cRXP_FRIENDLY_Dalar|r 对话
    .turnin 478 >>交任务 地图与符记
    .accept 481 >>接受任务达拉尔的推理
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>交任务 阿鲁高的愚行
    .turnin 481 >>交任务达拉尔的推理
    .accept 482 >>接受任务 达拉然的意图
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 对话
    .turnin 482 >>交任务 达拉然的意图
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 对话
    .accept 479 >>接受任务 调查安伯米尔
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 对话
    .turnin 482 >>交任务达拉然的意图
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>进入 地穴
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hadrec|r 在 地穴 对话
    .turnin 439 >>交任务 烂皮线索
    .accept 440 >>接受任务 黛丽娅的戒指
    .target 高级执行官哈德瑞克
step << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .turnin 6321 >>交任务 资助墓穴
    .accept 6323 >>接受任务 飞往幽暗城
    .target 卡洛斯·拉佐克
step
    #completewith ZingeAndFaranell
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .fp Sepulcher >>获得墓穴飞行路径 << !Undead
    .fly Undercity >>飞往幽暗城
    .target 卡洛斯·拉佐克
    .zoneskip Undercity
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gordon|r 对话
    .turnin 6323 >>交任务飞往幽暗城
    .accept 6322 >>接受任务 迈克尔·加勒特
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Louis|r |cRXP_BUY_对话。从他那里购买|r |T135147:0|t[法师之杖]
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 刘易斯·瓦伦
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +装备 |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_对话，从他那里购买|r |T132394:0|t[芒刺斧]
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +装备 |T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_对话，从他那里购买|r |T133046:0|t[巨型石锤]
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target 刘易斯·瓦伦
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_装备|r |T133046:0|t[巨型石锤] |cRXP_WARN_等你达到 16级时|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_对话，从他那里购买|r |T135147:0|t[法师之杖]
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target 刘易斯·瓦伦
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_装备|r |T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_对话，从他那里购买|r |T135343:0|t[战士阔剑]|cRXP_BUY_。|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 刘易斯·瓦伦
step << Rogue
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #completewith ZingeAndFaranell
    .goto Undercity,47.20,59.69,0
    .goto Undercity,47.20,59.69,12,0
    .goto Undercity,43.55,68.11,12,0
    .goto Undercity,45.20,71.67,12 >>前往 |cRXP_FRIENDLY_药剂师金格 <皇家药剂师协会>|r 和 |cRXP_FRIENDLY_大药剂师法拉尼尔|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大药剂师法拉尼尔|r 和 |cRXP_FRIENDLY_药剂师金格 <皇家药剂师协会>|r 在炼金房对话
    .turnin 447 >>交任务 致命的配方
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>交任务 给金格的货物
    .accept 1358 >>接受任务 给赫布瑞姆的样本
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在炼金区与 |cRXP_FRIENDLY_大药剂师法拉尼尔|r 和 |cRXP_FRIENDLY_药剂师金格|r 对话
    .turnin 447 >>交任务 死亡配方
    .accept 450 >>接受任务 致命的配方
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>交任务给金格的货物
    .accept 1358 >>接受任务 给赫布瑞姆的样本
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .group
step
    #optional
    #label ZingeAndFaranell
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 2137 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 2120 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 6222 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 1455 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Zane|r|cRXP_BUY_对话，从他那里购买|r |T133718:0|t[烟尘魔杖]
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target 赞恩·布拉德弗
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mennet|r 对话
    .turnin 1886 >>交任务 暗影守望者
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mennet|r 对话
    .accept 1898 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Andron|r 对话
    .turnin 1898 >>交任务亡灵哨兵
    .accept 1899 >>接受任务 亡灵哨兵
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>在|cRXP_PICK_Andron|r后面战利品|cRXP_FRIENDLY_Andron的书架|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mennet|r 对话
    .turnin 1899 >>交任务 亡灵哨兵
    .accept 1978 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .turnin 1978 >>交任务亡灵哨兵
    .target 瓦里玛萨斯
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Mary|r 对话
    .train 3276 >>学习 |T133688:0|t[厚亚麻绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Mary|r 对话
    .train 3274 >>学习 中级急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 1160 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 285 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉扎鲁斯|r 对话
	.train 6074 >>训练你的职业技能
    .target 拉扎鲁斯神父
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉扎鲁斯|r 对话
	.train 8102 >>训练你的职业技能
    .target 拉扎鲁斯神父
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    .abandon 1886 >>放弃任务 亡灵哨兵，没有再做一次的机会了
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .accept 5725 >>接受任务《物归己用》 毁灭之力
    .target 瓦里玛萨斯
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .turnin 6322 >>交任务 迈克尔·加勒特
    .accept 6324 >>接受任务 向博迪瑞格回报
    .target 迈克尔·加勒特
step
    #completewith GrimsonthePale
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fly The Supulcher >>飞往瑟伯切尔
    .target 迈克尔·加勒特
    .zoneskip Silverpine Forest
    .group
step << Undead
    #completewith next
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fly The Supulcher >>飞往瑟伯切尔
    .target 迈克尔·加勒特
    .zoneskip Silverpine Forest
    .solo
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_博迪瑞格|r 对话
    .turnin 6324 >>交任务 返回至Podrig
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gwyn|r 对话
    .vendor >>|cRXP_BUY_向他购买|r |T134830:0|t[次级治疗药剂] |cRXP_BUY_（若有库存）|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >>进入矿井
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>杀死 |cRXP_ENEMY_白毛狼人格瑞姆森|r. 拾取他身上的战利品|cRXP_LOOT_头部|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step << skip
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_跳跃到木轮上。通过登出并重新登录来返回角色选择。如果没有做成，跑回瑟伯切尔|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >>https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_点击这里查看示例|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 424 >>交任务 阿鲁高的愚行
    .accept 99 >>阿鲁高的愚行
    .goto Silverpine Forest,44.20,39.73
    .target 达拉尔·道恩维沃尔
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120,0
    .subzone 233 >>前往安伯米尔
    .group
step
    #loop
	.goto Silverpine Forest,57.12,63.39,0
	.goto Silverpine Forest,57.91,62.48,50,0
	.goto Silverpine Forest,59.10,61.88,50,0
	.goto Silverpine Forest,59.79,63.08,50,0
	.goto Silverpine Forest,60.79,62.55,50,0
	.goto Silverpine Forest,61.98,62.56,50,0
	.goto Silverpine Forest,61.00,64.89,50,0
	.goto Silverpine Forest,60.10,65.93,50,0
	.goto Silverpine Forest,59.02,67.10,50,0
	.goto Silverpine Forest,57.56,67.57,50,0
	.goto Silverpine Forest,57.62,65.17,50,0
	.goto Silverpine Forest,57.12,63.39,50,0
    >>杀死 |cRXP_ENEMY_达拉然防御者|r和 |cRXP_ENEMY_达拉然法师|r. 拾取他们的战利品|cRXP_LOOT_Pendants|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >>前往焚木村
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>击杀 |cRXP_ENEMY_Pyrewood|r小怪. 拾取他们身上的战利品|cRXP_LOOT_镣铐|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>进入旅馆，上楼梯到二楼
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>杀死 |cRXP_ENEMY_药剂师伯纳德|r. 在书架上拾取他的战利品|cRXP_LOOT_书籍|r
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >>进入礼拜堂
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Faerleia|r 对话
    .accept 452 >>接受任务 焚木村中的伏击
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>击杀出现的 |cRXP_ENEMY_Councilman|r和 |cRXP_ENEMY_莫瑞森村长|r
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Faerleia|r 对话
    .turnin 452 >>交任务 焚木村中的伏击
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    #loop
    .goto Silverpine Forest,45.48,73.43,0
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43,40,0
    >>继续击杀|cRXP_ENEMY_Pyrewood|r小怪. 拾取他们身上的战利品|cRXP_LOOT_镣铐|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >>返回瑟伯切尔
    .subzoneskip 228
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 99 >>交任务阿鲁高的愚行
    .goto Silverpine Forest,44.20,39.73
    .target 达拉尔·道恩维沃尔
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 对话
    .turnin 450 >>交任务 死亡的配方
    .target 药剂师伦弗利尔
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allister|r 对话
    .turnin 479 >>交任务 调查安伯米尔
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nadia|r 对话
    >>如果有就购买|T135490:0|t[|cRXP_FRIENDLY_精良的长弓|r]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
    .group
step << Druid
    #completewith next
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    .target 洛甘纳尔
step
    #optional
    .abandon 424 >>放弃任务阿鲁高的愚行
    .isOnQuest 424
step
    #optional
    .abandon 479 >>放弃任务 调查安伯米尔
    .isOnQuest 479
step
    #optional
    .abandon 99 >>放弃任务 阿鲁高的愚行
    .isOnQuest 99
step
    #optional
    .abandon 450 >>放弃任务奇妙的配方
    .isOnQuest 450
step
    #optional
    .abandon 452 >>放弃任务 焚木村中的伏击
    .isOnQuest 452
step << Tauren/Shaman/Hunter
    .hs >>炉石返回十字路口，北贫瘠之地
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Tauren !Shaman !Hunter
    .hs >>炉石返回剃刀岭，杜隆塔尔
    .use 6948
    .bindlocation 362,1
    .subzoneskip 362

    ]])
