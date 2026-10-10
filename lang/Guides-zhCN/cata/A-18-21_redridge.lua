if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 15-20级 赤脊山
#displayname 18-21级 赤脊山
#next 20-25级 暮色森林
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特尔迪娜·月羽|r对话
    .target Teldira Moonfeather
    .fly Rut'theran Village >>飞往鲁瑟兰村
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>通过传送门前往达纳苏斯
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>通过传送门前往达纳苏斯
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>与 |cRXP_FRIENDLY_莱兰奈|r 对话
    +|cRXP_BUY_购买1只|r |T132267:0|t[刃豹] |cRXP_BUY_坐骑，你在20级前无法使用它，先把它放在你的背包里|r
    .target 莱兰奈
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>与 |cRXP_FRIENDLY_贾萨姆|r对话
    .train 33388 >>训练初级骑术
    .target 贾萨姆
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>通过传送门返回鲁瑟兰村
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>与 |cRXP_FRIENDLY_象群管理者妥拉留斯|r对话
    +购买一头雷象，你在20级前无法使用它，先把它放在你的背包里
    .target 象群管理者妥拉留斯
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>与 |cRXP_FRIENDLY_埃亚伦|r对话
    .train 33388 >>训练初级骑术
    .target 埃亚伦
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >>乘船返回鲁瑟兰村
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >>乘船前往暴风城
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Kharanos >>飞往卡拉诺斯 << Gnome
    .fly Gol'Bolar Quarry >>飞往古博拉采掘场 << Dwarf
    .target 索格拉姆·伯雷森
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>与 |cRXP_FRIENDLY_米利·羽哨|r对话
    +|cRXP_BUY_购买1个|r |T132247:0|t[机械陆行鸟] |cRXP_BUY_坐骑，你在20级前无法使用它，先把它放在你的背包里|r
    .target 米利·羽哨
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>与 |cRXP_FRIENDLY_维隆·冻石|r对话
    +|cRXP_BUY_购买1只|r |T132248:0|t[山羊]|cRXP_BUY_坐骑，你在20级前无法使用它，先把它放在你的背包里|r
    .target 维隆·冻石
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索格拉姆·伯雷森
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>点击 |cRXP_PICK_英雄的召唤布告牌|r
    .accept 28563 >>接受任务 英雄的召唤：赤脊山！
    >>|cRXP_WARN_如果你没有接到这个任务，请跳过此步骤|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r对话
    >>|cRXP_BUY_从她那里|r购买1把|cRXP_BUY_ |T135280:0|t[微光重剑] |r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target 玛尔达·维勒
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r对话
    >>|cRXP_BUY_购买一个|r |T135280:0|t[微光重剑] |cRXP_BUY_从她那里。在达到21级时装备上|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target 玛尔达·维勒
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r对话
    >>|cRXP_BUY_购买1把|r |T135324:0|t[长剑]|cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target 玛尔达·维勒
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r对话
    >>|cRXP_BUY_购买一把|r |T135324:0|t[长剑] |cRXP_BUY_从她那里。在达到21级时装备上|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target 玛尔达·维勒
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r对话
    >>|cRXP_BUY_购买一把|r |T132415:0|t[双面斧] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target 玛尔达·维勒
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r对话
    >>|cRXP_BUY_购买一把|r |T135612:0|t[BKP 2700"执行者"] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r 对话
    >>|cRXP_BUY_购买一个|r |T135612:0|t[BKP 2700"执行者"] |cRXP_BUY_从她那里。在达到21级时装备上|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_装备|r |T132415:0|t[双面斧]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_装备|r |T135612:0|t[BKP 2700"执行者"]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >>前往 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .不可飞行 --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Eastvale Logging Camp >>飞往东谷伐木场
	.target 杜加尔·朗德瑞克
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰达尔·亨特|r对话
    .train 33388 >>训练初级骑术
    .money <3.6000
    .target 兰达尔·亨特
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯蒂·亨特|r对话
    +|cRXP_BUY_购买一匹|r |T132261:0|t[马] |cRXP_BUY_从她那里|r
    .money <0.08
    .target 凯蒂·亨特
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >>前往赤脊山
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Lakeshire >>获得湖畔镇飞行点
    .target 艾蕾娜·斯托姆法瑟
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 26504 >>接受任务 通缉：赤脊山豺狼人
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在内部的 |cRXP_FRIENDLY_达希·帕克|r 对话
    .accept 26506 >>接受任务 茄汁黄豆
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在守望塔顶与|cRXP_FRIENDLY_卫兵队长帕克|r对话
    .turnin 28563 >>交任务 英雄的召唤：赤脊山
    .accept 26503 >>接受任务 继续评估威胁
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在守望塔顶与|cRXP_FRIENDLY_卫兵队长帕克|r对话
    .accept 26503 >>接受任务 继续评估威胁
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>击杀 |cRXP_ENEMY_狼蛛|r，拾取它们的 |cRXP_LOOT_狼蛛眼球|r
    >>击杀在空中飞翔或停在栖木上的|cRXP_ENEMY_恐鹫|r，从它们身上拾取|cRXP_LOOT_秃鹫的内脏|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>击杀 |cRXP_ENEMY_狼蛛|r，拾取它们的 |cRXP_LOOT_狼蛛眼球|r
    >>击杀在空中飞翔或停在栖木上的|cRXP_ENEMY_恐鹫|r，从它们身上拾取[|cRXP_LOOT_秃鹫的内脏|r]
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r，从它们身上拾取|cRXP_LOOT_血牙野猪的肾脏|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>击杀|cRXP_ENEMY_赤脊山鞭笞者|r, |cRXP_ENEMY_混血赤脊山豺狼人|r, 和 |cRXP_ENEMY_赤脊山蛮兵|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>前去找 |cRXP_PICK_豺狼人的命令|r
    .不可飞行 --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>拾取桶上的|cRXP_PICK_豺狼人的命令|r
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>拾取地上的|cRXP_PICK_豺狼人战略指南|r
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r，从它们身上拾取|cRXP_LOOT_血牙野猪的肾脏|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>击杀 |cRXP_ENEMY_狼蛛|r，拾取它们的 |cRXP_LOOT_狼蛛眼球|r
    >>击杀在空中飞翔或停在栖木上的|cRXP_ENEMY_恐鹫|r，从它们身上拾取|cRXP_LOOT_秃鹫的内脏|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>击杀|cRXP_ENEMY_赤脊山鞭笞者|r, |cRXP_ENEMY_混血赤脊山豺狼人|r, 和 |cRXP_ENEMY_赤脊山蛮兵|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>拾取地上的|cRXP_PICK_豺狼人作战计划|r
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>击杀|cRXP_ENEMY_赤脊山鞭笞者|r, |cRXP_ENEMY_混血赤脊山豺狼人|r, 和 |cRXP_ENEMY_赤脊山蛮兵|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>击杀 |cRXP_ENEMY_狼蛛|r，拾取它们的 |cRXP_LOOT_狼蛛眼球|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>击杀在空中飞翔或停在栖木上的|cRXP_ENEMY_恐鹫|r，从它们身上拾取|cRXP_LOOT_秃鹫的内脏|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达希·帕克|r对话
    .turnin 26506 >>交任务 茄汁黄豆
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在守望塔顶与|cRXP_FRIENDLY_卫兵队长帕克|r对话
    .turnin 26504 >>交任务 通缉：赤脊山豺狼人
    .turnin 26503 >>交任务 继续评估威胁
    .accept 26505 >>接受任务 帕克的报告
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Lakeshire >>获得湖畔镇飞行点
    .target 艾蕾娜·斯托姆法瑟
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_肖恩|r对话
    .accept 26508 >>接受任务 尼达的项链
    .target 肖恩
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在码头的 |cRXP_FRIENDLY_肖恩|r 对话
    .accept 26508 >>接受任务 尼达的项链
    .target 肖恩
    .不可飞行 --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_拜里弗·科纳彻尔|r和|cRXP_FRIENDLY_所罗门镇长|r 对话
    .accept 26511 >>接受任务 打扫止水湖
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>交任务 帕克的报告
    .accept 26510 >>接受任务 必须准备万全！
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开湖畔镇议政厅
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>击杀|cRXP_ENEMY_鱼人食腐者|r 和 |cRXP_ENEMY_鱼人斥候|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob 鱼人斥候
step
    .goto 49,37.818,42.158
    >>拾取地面上的|cRXP_PICK_侏儒通讯器|r
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_拜里弗·科纳彻尔|r和|cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 26511 >>交任务 打扫止水湖
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>交任务 必须准备万全
    .accept 26512 >>接受任务 调试侏儒通讯器
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开湖畔镇议政厅
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .accept 26513 >>接受任务 无影无踪
    .target 治安官马瑞斯
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_前往湖畔镇的墓地|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>交任务 调试侏儒通讯器
    .accept 26514 >>接受任务 峡谷嬉戏
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_Click the pop-up in your questlog|r
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>击杀 |cRXP_ENEMY_赤脊山豺狼人|r。拾取[ |T134944:0|t|cRXP_LOOT_覆泥的卷轴]|r
    >>|cRXP_WARN_使用 |T134944:0|t|cRXP_LOOT_[覆泥的卷轴]|r 开始任务|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>接受任务 只要控制了双头魔
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>拾取地面上的 [|cRXP_LOOT_赤脊山补给箱|r]
    >>击杀|cRXP_ENEMY_赤脊山苦工|r、|cRXP_ENEMY_赤脊山秘法师|r、|cRXP_ENEMY_赤脊山猛击者|r、|cRXP_ENEMY_赤脊山突击队员|r和|cRXP_ENEMY_赤脊山蛮兵|r，拾取[|cRXP_LOOT_赤脊山豺狼人项圈|r]
    >>|cRXP_WARN_避免引到在该区域巡逻的|cRXP_ENEMY_峡谷双头魔|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26514 >>交任务 峡谷嬉戏
    .accept 26544 >>接受任务 他们变聪明了……
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>拾取地面上的 [|cRXP_LOOT_赤脊山补给箱|r]
    >>|cRXP_WARN_避免引到在该区域巡逻的|cRXP_ENEMY_峡谷双头魔|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >>进入瑞斯班洞穴
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>在瑞斯班洞穴内击杀 |cRXP_ENEMY_黑石监工|r。拾取 |cRXP_LOOT_黑石兽人信函|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26544 >>交任务 他们变聪明了……
    .accept 26545 >>接受任务 犹勒必须死！
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>前往瑞斯班洞穴内的|cRXP_ENEMY_阿尔多·泥爪|r处
step
    #requires DirtScroll
    #label Ardo
    >>击杀|cRXP_ENEMY_阿尔多·泥爪|r，点击他身旁的 |cRXP_PICK_双头魔控制宝珠|r
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>交任务 只要控制了双头魔
    .accept 26520 >>接受任务 拯救工头奥斯洛
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>离开瑞斯班洞穴
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>拾取地面上的 [|cRXP_LOOT_赤脊山补给箱|r]
    >>|cRXP_WARN_避免引到在该区域巡逻的|cRXP_ENEMY_峡谷双头魔|r|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>击杀|cRXP_ENEMY_犹勒|r，拾取|cRXP_LOOT_黑石攻击计划书|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >>在原地不动时，对一个|cRXP_ENEMY_峡谷双头魔|r使用|T332402:0|t[双头魔控制宝珠]
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>前往|cRXP_FRIENDLY_工头奥斯洛|r处，控制|cRXP_FRIENDLY_制服的峡谷双头魔|r时在其旁使用|T332402:0|t[双头魔控制宝珠]
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 26513 >>交任务 无影无踪
    .target 治安官马瑞斯
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在内部的|cRXP_FRIENDLY_所罗门镇长|r和|cRXP_FRIENDLY_托德曼上校|r 对话
    .turnin 26545 >>交任务 犹勒必须死！
    .turnin 26520 >>交任务 拯救工头奥斯洛
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>接受任务 约翰·J·基沙恩
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r 对话
    >>|cRXP_WARN_如果你之前接受过英雄的召唤：暮色森林！任务，请跳过此步骤|r
    .accept 26728 >>接受任务 英雄的召唤：暮色森林！
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_拜里弗·科纳彻尔|r和|cRXP_FRIENDLY_所罗门镇长|r 对话
    .accept 26728 >>接受任务 英雄的召唤：暮色森林！
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>交任务 犹勒必须死！
    .turnin 26520 >>交任务 拯救工头奥斯洛
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开湖畔镇议政厅
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .accept 26509 >>接受任务 不速之客
    .target 玛蒂·詹罗斯
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>击杀|cRXP_ENEMY_贝利格拉布|r，拾取|cRXP_LOOT_贝利格拉布的獠牙|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob 贝利格拉布
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 26509 >>交任务 不速之客
    .target 玛蒂·詹罗斯
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_潜入水下并检查刷新点。共有10个位置，同时最多会刷新2个|r
    >>打开|cRXP_PICK_闪光的泥浆|r，从中拾取|cRXP_LOOT_尼达的项链|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Eastvale Logging Camp >>飞往东谷伐木场
	.target 艾蕾娜·斯托姆法瑟
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯蒂·亨特|r对话
    +|cRXP_BUY_购买一匹|r |T132261:0|t[马] |cRXP_BUY_从她那里|r
    .target 凯蒂·亨特
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰达尔·亨特|r对话
    .train 33388 >>训练初级骑术
    .money <3.6000
    .target 兰达尔·亨特
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迅翼高斯|r对话
    .fly Lakeshire, Redridge >>飞往夜色镇
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尼达|r对话
    .turnin 26508 >>交任务 尼达的项链
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t当你在码头上的时候，与 |cRXP_FRIENDLY_尼达|r 对话
    .turnin 26508 >>交任务 尼达的项链
    .target Nida
    .不可飞行 --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>进入湖畔镇旅店
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板布瑞安娜|r 对话
    .home >>将你的炉石绑定到湖畔镇
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>进入后面的房间，然后下楼前往|cRXP_FRIENDLY_约翰·J·基沙恩|r处
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与湖岸镇旅店地下室的|cRXP_FRIENDLY_约翰·J·基沙恩|r对话
    .turnin 26567 >>交任务 约翰·J·基沙恩
    .accept 26568 >>接受任务 和我无关
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >>离开湖畔镇旅店 --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .accept 26509 >>接受任务 不速之客
    .target 玛蒂·詹罗斯
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>击杀|cRXP_ENEMY_贝利格拉布|r，拾取|cRXP_LOOT_贝利格拉布的獠牙|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob 贝利格拉布
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 26509 >>交任务 不速之客
    .target 玛蒂·詹罗斯
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_潜入水下并检查刷新点。共有10个位置，同时最多会刷新2个|r
    >>打开|cRXP_PICK_闪光的泥浆|r，从中拾取|cRXP_LOOT_尼达的项链|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尼达|r对话
    .turnin 26508 >>交任务 尼达的项链
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t当你在码头上的时候，与 |cRXP_FRIENDLY_尼达|r 对话
    .turnin 26508 >>交任务 尼达的项链
    .target Nida
    .不可飞行 --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的|cRXP_FRIENDLY_托德曼上校|r对话
    .turnin 26568 >>交任务 和我无关
    .accept 26571 >>接受任务 战争的武器
    .accept 26586 >>接受任务 寻找B连
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开湖畔镇议政厅
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r和|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .accept 26569 >>接受任务 测量设备
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>接受任务 撕裂者大军
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>击杀|cRXP_ENEMY_黑石叛节者|r和|cRXP_ENEMY_黑石斥候|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>前往|cRXP_FRIENDLY_梅森纳|r
    .不可飞行 --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在笼子里的 |cRXP_FRIENDLY_梅森纳|r 对话
    .turnin 26586 >>交任务 寻找B连
    .accept 26587 >>接受任务 越狱不容易
    .target Messner
step
	>>击杀|cRXP_ENEMY_穆尔顿克|r和|cRXP_ENEMY_霍尔穆克|r，拾取|cRXP_LOOT_基沙恩的弓|r和|cRXP_LOOT_基沙恩的生存刀|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26571 >>交任务 战争的武器
    .accept 26573 >>接受任务 他的心必须在
step
    .goto 49,49.234,38.005
    >>打开树桩中的 |cRXP_PICK_黑石钥匙包|r。拾取 |cRXP_LOOT_梅森纳的牢笼钥匙|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_黑石狼骑首领|r和|cRXP_ENEMY_黑石战狼|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与笼中的|cRXP_FRIENDLY_梅森纳|r对话，在他重新出现在你身旁
    .turnin 26587 >>交任务 越狱不容易
    .timer 3,梅森纳 剧情RP
    .accept 26560 >>接受任务 约根森
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>前往撕裂者营地的外围
    .isOnQuest 26560
    .不可飞行 --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>击杀|cRXP_ENEMY_黑石召唤师|r和|cRXP_ENEMY_黑石追踪者|r，拾取|cRXP_ENEMY_黑石追踪者|r的|cRXP_LOOT_黑石望远镜|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>击杀|cRXP_ENEMY_黑石召唤师|r和|cRXP_ENEMY_黑石追踪者|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>击杀|cRXP_ENEMY_钥匙管理者乌卓卡|r，拾取|cRXP_LOOT_约根森的牢笼钥匙|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >>前往|cRXP_FRIENDLY_约根森|r
    .不可飞行 --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与笼中的|cRXP_FRIENDLY_约根森|r对话，然后在他重新出现在你身旁
    .turnin 26560 >>交任务 约根森
    .timer 3,约根森 剧情RP
    .accept 26561 >>接受任务 卡拉克尔
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >>进入撕裂者之石
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>击杀里面的|cRXP_ENEMY_仪祭师塔拉卡|r
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>前往里面的 |cRXP_PICK_黑石保险箱|r
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>打开里面地面上的 |cRXP_PICK_黑石保险箱|r。拾取 |cRXP_LOOT_基沙恩的红头带|r 和 |cRXP_LOOT_基沙恩的翡翠坠饰|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与内部祭坛上的|cRXP_FRIENDLY_卡拉克尔|r对话，然后在他重新出现在你身旁
    .turnin 26561 >>交任务 卡拉克尔
    .timer 3,卡拉克尔 剧情RP
    .accept 26562 >>接受任务 最后但同样重要的……丹弗斯
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >前往里面的|cRXP_ENEMY_巴尔贝留斯大王|r
step
    .goto 49,27.634,18.155
    >>击杀里面的|cRXP_ENEMY_巴尔贝留斯大王|r，拾取|cRXP_LOOT_黑石控制杆钥匙|r
	>>|cRXP_WARN_确保你跳下去时，你的守护者也会传送下来|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_点击内部地面上的 |cRXP_PICK_铁链控制杆|r|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与水中的|cRXP_FRIENDLY_丹弗斯|r对话，然后在他重新出现在你身旁
    .turnin 26562 >>交任务 最后但同样重要的……丹弗斯
    .timer 3,丹弗斯 剧情RP
    .accept 26563 >>接受任务 B连归来
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >>离开撕裂者之石
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>击杀|cRXP_ENEMY_黑石召唤师|r和|cRXP_ENEMY_黑石追踪者|r，拾取|cRXP_ENEMY_黑石追踪者|r的|cRXP_LOOT_黑石望远镜|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >>使用炉石回到湖畔镇
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与湖畔镇旅店中的|cRXP_FRIENDLY_金伯利·海特|r对话
    .vendor >>出售物品并修理装备
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托德曼上校|r对话
    .turnin 26563 >>交任务 B连归来
    .turnin 26573 >>交任务 他的心必须在
    .accept 26607 >>接受任务 他们流下第一滴血
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>离开湖畔镇议政厅
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>进入湖畔镇旅店
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>进入后面的房间，然后下楼前往|cRXP_FRIENDLY_约翰·J·基沙恩|r处
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与湖岸镇旅店地下室的|cRXP_FRIENDLY_约翰·J·基沙恩|r对话
    .turnin 26607 >>交任务 他们流下第一滴血
    .accept 26616 >>接受任务 战争不会结束
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与湖岸镇旅店地下室的|cRXP_FRIENDLY_约翰·J·基沙恩|r对话
    .turnin 26607 >>交任务 他们流下第一滴血
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >>离开湖畔镇旅店 --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r和|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 26569 >>交任务 测量设备
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>交任务 撕裂者大军
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >>进入 |cRXP_PICK_基沙恩的小船|r
	.timer 43,战争不会结束 剧情RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>等待剧情事件结束
    >>|cRXP_WARN_计时结束后手动离开船只|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_约翰·J·基沙恩|r，|cRXP_FRIENDLY_卡拉克尔|r，|cRXP_FRIENDLY_梅森纳|r和|cRXP_FRIENDLY_丹弗斯|r对话
    .turnin 26616 >>交任务 战争不会结束
    .accept 26639 >>接受任务 接头人：布鲁贝克
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>接受任务 B连战斗工具：伪装
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>接受任务 B连战斗工具：麻醉剂
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>接受任务 猎杀黑石猎人
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>在水下击杀|cRXP_ENEMY_淤泥鱼|r。拾取|cRXP_LOOT_淤泥鱼的腺体|r
    >>|cRXP_WARN_避开|r|cRXP_ENEMY_锉锯齿|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>击杀|cRXP_ENEMY_黑石猎人|r
    >>|cRXP_WARN_注意他们处于|r |T136041:0|t[伪装] 状态
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>拾取地面上的|cRXP_LOOT_一堆树叶|r 和 |cRXP_LOOT_狐狸粪便|r
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布鲁贝克|r对话
    .turnin 26639 >>交任务 接头人：布鲁贝克
    .accept 26640 >>接受任务 虐囚
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_梅森纳|r,|cRXP_FRIENDLY_卡拉克尔|r,|cRXP_FRIENDLY_丹弗斯|r, 和|cRXP_FRIENDLY_约翰·J·基沙恩|r 对话
    .turnin 26637 >>交任务 B连战斗工具：麻醉剂
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>交任务 B连战斗工具：伪装
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>交任务 猎杀黑石猎人
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>交任务 虐囚
    .accept 26646 >>接受任务 战俘
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_梅森纳|r,|cRXP_FRIENDLY_卡拉克尔|r,|cRXP_FRIENDLY_丹弗斯|r, 和|cRXP_FRIENDLY_约翰·J·基沙恩|r 对话
    .turnin 26637 >>交任务 B连战斗工具：麻醉剂
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>交任务 B连战斗工具：伪装
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>交任务 猎杀黑石猎人
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>交任务 虐囚
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔伦·玛尔斯特|r对话
    .fly Eastvale Logging Camp >>飞往东谷伐木场
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰达尔·亨特|r对话
    .skill riding,75 >>从他那里学习 |T136103:0|t[初级骑术]
    .target 兰达尔·亨特
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯蒂·亨特|r对话
    +|cRXP_BUY_从她那里购买任意|r |T132261:0|t[马] ，|cRXP_BUY_选择你喜欢的颜色|r
	.target 凯蒂·亨特
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用 |T132261:0|t[杂色马缰绳] 来学习
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用 |T132261:0|t[栗色马缰绳] 来学习
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>使用 |T132261:0|t[棕马缰绳] 来学会
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132261:0|t[杂色马] |cRXP_WARN_拖到你的动作条上|r
    .cast 472 >>骑上你的|T132261:0|t[杂色马]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132261:0|t[栗色马] |cRXP_WARN_拖到你的动作条上|r
    .cast 6648 >>骑上你的|T132261:0|t[栗色马]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132261:0|t[棕马] |cRXP_WARN_拖到你的动作条上|r
    .cast 458 >>骑上你的|T132261:0|t[棕马]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迅翼高斯|r对话
    .fly Darkshire >>飞往夜色镇
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔伦·玛尔斯特|r对话
    .fly Darkshire >>飞往夜色镇
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_使用|r |T133878:0|t[B连战地工具] |cRXP_WARN_在|r |cRXP_WARN_撕裂者山谷|r
    >>|cRXP_WARN_你持有物品时可以正常骑乘，但无法处于|r |T136041:0|t[伪装] 状态 << !Druid
    >>你可以用物品正常坐骑并在 |T132128:0|t[飞行姿态]|cRXP_WARN_下飞行，同时保持|r |T136041:0|t[伪装]|cRXP_WARN_状态|r << Druid
    >>施放 |T136074:0|t[伪装] (1) 以隐身
    >>施放 |T132289:0|t[扰乱] (2) 让 |cRXP_ENEMY_黑石氏族兽人|r 移动
    >>施放|T136090:0|t[麻醉](3)令|cRXP_ENEMY_黑石典狱官|r和|cRXP_ENEMY_黑石卫士|r入睡。对|cRXP_ENEMY_黑石龙骑士|r无效
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_使用|r |T133878:0|t[B连战地工具] |cRXP_WARN_在|r |cRXP_WARN_撕裂者山谷|r
    >>|cRXP_WARN_你持有物品时可以正常骑乘，但无法处于|r |T136041:0|t[伪装] 状态
    >>施放 |T136074:0|t[伪装] (1) 以隐身
    >>施放 |T132289:0|t[扰乱] (2) 让 |cRXP_ENEMY_黑石氏族兽人|r 移动
    >>施放|T136090:0|t[麻醉](3)令|cRXP_ENEMY_黑石典狱官|r和|cRXP_ENEMY_黑石卫士|r入睡。对|cRXP_ENEMY_黑石龙骑士|r无效
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .不可飞行 --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >>进入在撕裂者山谷的洞穴
step
    #questguide
    .goto 49,69.525,76.315
    >>打开里面的 |cRXP_PICK_黑石钥匙包|r。拾取|cRXP_LOOT_黑石关押所钥匙|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>打开任意 |cRXP_PICK_黑石关押所|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26646 >>交任务 战俘
    .accept 26651 >>接受任务 要赢得战争，就要比战争还残酷
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>进入塔内
    .不可飞行 --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>装备|T133878:0|t[b连战地工具]后，在塔中部中层施放|T136173:0|t[放置爆盐](4)
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>装备|T133878:0|t[b连战地工具]后，在小屋外墙施放|T136173:0|t[放置爆盐](4)
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >>|cRXP_WARN_点击取消|r|T133878:0|t[b连战地工具]|cRXP_WARN_buff|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_避开|cRXP_ENEMY_黑石典狱官|r、|cRXP_ENEMY_黑石卫士|r和|r|cRXP_ENEMY_黑石龙骑士|r
    .goto 49,77.683,65.506,15 >>前往|cRXP_FRIENDLY_约翰·J·基沙恩|r
    .不可飞行 --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约翰·J·基沙恩|r 对话
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .turnin 26651 >>交任务 要赢得战争，就要比战争还残酷
    .accept 26668 >>接受任务 引爆山谷
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_约翰·J·基沙恩|r和|cRXP_FRIENDLY_丹弗斯|r 对话
    .turnin 26668 >>交任务 引爆山谷
    .accept 26693 >>接受任务 黑暗之塔
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>接受任务 暗皮大灭绝
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>击杀|cRXP_ENEMY_疯狂的暗皮豺狼人|r,|cRXP_ENEMY_暗皮巫师|r,|cRXP_ENEMY_暗皮刺客|r,|cRXP_ENEMY_暗皮战士|r,|cRXP_ENEMY_暗皮杀手|r,|cRXP_ENEMY_暗皮蛮兵|r和|cRXP_ENEMY_暗皮豺狼人|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_暗皮刺客|r处于|r |T132320:0|t[潜行]状态
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob 疯狂的暗皮豺狼人
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26692 >>交任务 暗皮大灭绝
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>进入|cRXP_ENEMY_范高雷将军|r的洞穴
step
    #questguide
    .goto 49,67.542,28.902
    >>击杀内部的|cRXP_ENEMY_范高雷将军|r。从他身上拾取|cRXP_LOOT_伊尔加拉之匙|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26693 >>交任务 黑暗之塔
    .accept 26694 >>接受任务 大魔导师杜内
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>前往伊尔加拉之塔入口
    .不可飞行 --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >>点击伊尔加拉之塔底部的 |cRXP_PICK_伊尔加拉牢笼|r
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>击败伊尔加拉塔顶内部的|cRXP_ENEMY_大魔导师杜内|r
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >>返回|cRXP_FRIENDLY_约翰·J·基沙恩|r处
    .不可飞行 --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约翰·J·基沙恩|r 对话
    .turnin 26694 >>交任务 大魔导师杜内
    .timer 29,大魔导师杜内 剧情RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>|cRXP_WARN_等剧情结束|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_托德曼上校|r对话
    .accept 26708 >>接受任务 啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >>进入|cRXP_FRIENDLY_B连围攻坦克|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_乘坐|cRXP_FRIENDLY_B连围攻坦克|r向加拉德尔谷地行进
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_乘坐|cRXP_FRIENDLY_B连攻城坦克|r，穿越|cRXP_ENEMY_黑石入侵者|r向基山哨所行进，冷却好后施放|r |T252187:0|t[撞击] (1)|cRXP_WARN_|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_离开|r |cRXP_FRIENDLY_B连围攻坦克|r
    >>|cRXP_WARN_这会立即将你从|cRXP_ENEMY_黑石入侵者|r所在阶段切换回|r |cRXP_ENEMY_暗皮豺狼人|r阶段
    .goto 49,60.660,36.666,15 >>返回|cRXP_FRIENDLY_托德曼上校|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_托德曼上校|r对话
    .turnin 26708 >>交任务 啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！
    .accept 26713 >>接受任务 决战石堡要塞
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_继续前请确保队友在身旁。靠近|cRXP_ENEMY_萨瑞尔祖恩|r时队友应会出现。若未出现则退出游戏后重新登录|r
step
    #questguide
    .goto 49,60.307,47.402
    >>击杀|cRXP_ENEMY_萨瑞尔祖恩|r
    .complete 26713,1 --Tharil'zun (1)
    .mob 萨瑞尔祖恩
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>前去找|cRXP_ENEMY_加塞尔佐格|r
    .不可飞行 --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>击杀|cRXP_ENEMY_加塞尔佐格|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob 加塞尔佐格
step
    #questguide
    >>|cRXP_WARN_点击任务日志中的弹出窗口|r
    .turnin 26713 >>交任务 决战石堡要塞
    .goto 49,58.651,55.469
    .accept 26714 >>接受任务 黑暗烈焰，灭世者的子嗣
    .timer 25,黑暗烈焰 剧情RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_等待|cRXP_ENEMY_大魔导师杜内|r的变形剧情结束|r
    >>|cRXP_WARN_在剧情结束后|cRXP_ENEMY_击败|r黑暗烈焰|r
    >>|cRXP_WARN_如果失败，使用地上的|cRXP_PICK_ 召唤号角|r重新召唤|r |cRXP_ENEMY_大魔导师杜内|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托德曼上校|r对话
    .turnin 26714 >>交任务 黑暗烈焰，灭世者的子嗣
    .accept 26726 >>接受任务 凯旋而归
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >>使用炉石回到湖畔镇
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>进入湖畔镇议政厅
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的|cRXP_FRIENDLY_所罗门镇长|r对话
    .turnin 26726 >>交任务 凯旋而归
	.target 所罗门镇长
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
