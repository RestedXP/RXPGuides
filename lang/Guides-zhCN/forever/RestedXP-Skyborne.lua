if GetLocale() ~= "zhCN" then return end
--Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-14级 泽风岛
#displayname 1-13级 天裔 << Alliance
#displayname 1-12级 天裔 << Horde
#group RestedXP魔兽世界无限练级指南（联盟版） << Alliance
#group RestedXP魔兽世界无限练级指南（部落版） << Horde
#subgroup 快速升级指南1-20级 << Alliance
#subgroup 快速升级指南1-22级 << Horde
#defaultfor Skyborne
#next 13-15级 西部荒野 << Alliance !Hunter
#next 14-16级 黑海岸 << Alliance Hunter
#next 12-14级 银松森林 << Horde !Hunter
#next 12-17级 贫瘠之地 << Horde Hunter

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莉·远心::251362|r 对话。
    .accept 92460 >>接受任务 成年
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92460 >>交任务 成年
    .target Rorian the Dayseeker::251361
    .accept 92461 >>接受任务 平衡中的和谐
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .accept 92464 >>接受任务 元素动荡
    .target Rorian the Dayseeker::251361
    .xp <2,1
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉特雷尔·轻羽::251368|r 对话。
    .accept 92462 >>接受任务 虫灾调查
    .target Elatrell Featherlight::251368
step << Alliance/!Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step << Horde Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_幼年瓦尔德伦::250873|r。
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>击杀 |cRXP_ENEMY_烦人的卷云蝇::251169|r。
    *|cRXP_WARN_优先击杀它们|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>击杀 |cRXP_ENEMY_幼年瓦尔德伦::250873|r。
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>刷怪达到480+/900点经验，以便在交完图腾任务后升到3级。
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉特雷尔·轻羽::251368|r 对话。
    *|cRXP_WARN_不要使用 |r|T132845:0|t[Walk on Air] |cRXP_WARN_，因为我们很快会需要它|r。
    .turnin 92462 >>交任务 虫灾调查
    .accept 92463 >>接受任务 卷云蝇女王
    .target Elatrell Featherlight::251368
step << Warrior
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_剑圣任::251964|r 对话。
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.0010
    .xp <1,1
    .train 5242,1
--Quest Bugged readd next week
-- step
--     .goto 2521,43.53,24.34,20,0
--     .goto 2521,43.83,24.13,10,0
--     .goto 2521,43.78,24.38,5,0
--     .goto 2521,43.66,24.25,5,0
--     .goto 2521,43.75,24.09,5,0
--     .goto 2521,43.84,24.3,5,0
--     .goto 2521,43.66,24.23,5,0
--     .goto 2521,43.83,24.18,5,0
--     .goto 2521,43.83,24.32,8,0
--     .goto 2521,43.80,24.05
--     >>Climb the spiral staircase, then |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r at the top of the tower.
--     .accept 94414 >>Accept The Anchors of Zephras
--     .target Halaan Hawk-Eye::257554
-- step
--     .goto 2521,43.80,24.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r.
--     *Move or press ESC to cancel.
--     .complete 94414,1 --View the Anchor Pylon
--     .skipgossipid 137720,1
--     .target Halaan Hawk-Eye::257554
-- step
--     .goto 2521,43.80,24.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r.
--     *Move or press ESC to cancel.
--     .turnin 94414 >>Turn in The Anchors of Zephras
--     .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉亚尔·唤雾::263113|r 对话。
    .accept 92474 >>接受任务 优雅坠落
    .target Myriaal Mistwake::263113
step << Skyborne
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92461,1 >>交任务 平衡中的和谐
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>从塔上坠落时，使用 |T132845:0|t[踏空而行] 并朝任务NPC飞过去。
    *你也可以跳起来并在地上狂按按钮。
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>踏空而行
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92461,1 >>交任务 平衡中的和谐
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>交任务 优雅坠落
    .accept 92464 >>接受任务 元素动荡
    .accept 92481 >>接受任务 奥术学徒 << Mage
    .accept 92483 >>接受任务 安于暗影 << Rogue
    .accept 92482 >>接受任务 猎人之道 << Hunter
    .accept 92484 >>接受任务 拥抱元素 << Shaman
    .accept 92532 >>接受任务 战士之路 << Warrior
    .accept 92485 >>接受任务 自然的学员 << Druid
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92461,1 >>交任务 平衡中的和谐
    .target Rorian the Dayseeker::251361
    .accept 92464 >>接受任务 元素动荡
    .accept 92481 >>接受任务 奥术学徒 << Alliance Mage
    .accept 92483 >>接受任务 安于暗影 << Rogue
    .accept 92482 >>接受任务 猎人之道 << Hunter
    .accept 92484 >>接受任务 拥抱元素 << Horde Shaman
    .accept 92532 >>接受任务 战士之路 << Warrior
    .accept 92485 >>接受任务 自然的学员 << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锡顿·银风::251373|r 对话。
    .turnin 92485 >>交任务 A Student of 自然
    .target Xyton Silverwind::251373
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锡顿·银风::251373|r 对话。
    .train 1126 >>学习 |T136078:0|t[野性印记]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
    .money <0.0010
    .xp <1,1
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多莉·明语::251379|r 对话。
    .turnin 92481 >>交任务 奥术学徒
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多莉·明语::251379|r 对话。
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.0010
    .xp <1,1
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塑风者波罗::251374|r 对话
    .target Windshaper Boro::251374
    .turnin 92484 >>交任务 Embracing the Elements
    .accept 92466 >>接受任务 大地的召唤
step << Horde Shaman
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塑风者波罗::251374|r 对话。
    .train 8017 >>学习 |T136086:0|t[石化武器]
    .target Windshaper Boro::251374
    .money <0.0010
    .skipgossipid 136811
    .xp <1,1
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·远见::251376|r 对话。
    .turnin 92482 >>交任务 猎人之道
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_文塔里·明愿::251487|r 对话。
    .accept 92598 >>接受任务 天穹视界的天赋
    .target Ventaari Brightwish::251487
step << !Warrior !Rogue 
    .itemcount 159,<20 << Mage/Shaman
    .itemcount 2512,<1000 << Hunter
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌阿莉亚·日冠::251537|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Hunter !Shaman
    >>|cRXP_BUY_购买|r |T132382:0|t[粗糙的箭矢] |cRXP_BUY_向她购买|r << Hunter
    .vendor 251537 >>|cRXP_WARN_出售垃圾物品|r
    *不要出售 |T133970:0|t[多汁肉] << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (10)
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
    .subzoneskip 16635,1
    .isNotOnQuest 93552
    .isQuestAvailable 93552
step << Horde
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    .accept 93552 >>接受任务 采集风之石
    .target Dalia the Collector::251363
step << Horde
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Rogue/Horde Warrior
    .subzoneskip 16635,1
    .isOnQuest 92463
    .isQuestNotComplete 92463
    .goto 2521,43.41,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    *|cRXP_WARN_如果你买不起就请跳过|r
    .collect 2131,1 >>购买并装备 |T135274:0|t[农夫之剑] << Rogue
    .collect 1194,1 >>购买并装备 |T135276:0|t[损坏的双刃刀] << Warrior
    .target Dalia the Collector::251363
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    .accept 93552 >>接受任务 采集风之石
    .target Dalia the Collector::251363
step << Alliance Rogue/Alliance Warrior 
    .goto 2521,43.41,23.51
    #completewith Harvesting Windstones
    .collect 2131,1 >>购买并装备 |T135274:0|t[农夫之剑] << Rogue
    .collect 1194,1 >>购买并装备 |T135276:0|t[损坏的双刃刀] << Warrior
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith Harvesting Windstones
    .goto 2521,43.41,23.51
    .vendor 251364 >>|cRXP_WARN_出售垃圾物品|r
    *不要出售 |T133970:0|t[多汁肉]。 << Alliance
    .target Destin Thriceforged::251364
step << Alliance !Hunter !Mage !Druid
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    .accept 93552 >>接受任务 采集风之石
    .target Dalia the Collector::251363
step << Alliance Hunter/Alliance Mage/Alliance Druid
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    .accept 93552 >>接受任务 采集风之石
    .target Dalia the Collector::251363
step << Alliance
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法罗恩·秋风::251371|r 对话。
    .accept 92597 >>接受任务 Reading the Ley Lines
    .target Falorne Fallwind::251371
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅拉·捕风::249363|r 对话。
    .turnin 92464 >>交任务 元素动荡
    .accept 92465 >>接受任务 煽动者
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_奥拉凯斯信徒::251160|r 与 |cRXP_ENEMY_翻滚之风::251143|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_翻滚之风::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>在 |cRXP_PICK_元素交汇|r 附近使用 |T1029587:0|t[天穹视界]。
    *|cRXP_WARN_遍布整个区域。在其中一个附近使用 |T1029587:0|t[天穹视界] 可将 10% 移动速度增益的持续时间从 15 秒延长至 15 分钟。|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>天穹视界
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯信徒::251160|r 与 |cRXP_ENEMY_翻滚之风::251143|r。
    *拾取他们的 |T1020384:0|t[阿基尔徽记] << Shaman
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_翻滚之风::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅拉·捕风::249363|r 对话。
    .turnin 92465 >>交任务 煽动者
    .accept 92469 >>接受任务 向罗里安复命
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1
    .hs >>炉石回到森达尔村
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塑风者波罗::251374|r 对话
    .turnin 92466 >>交任务 大地的召唤
    .accept 92467 >>接受任务 大地的召唤
    .target Windshaper Boro::251374
step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>击杀 |cRXP_ENEMY_卷云蝇后::251404|r。
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404
step << Alliance/!Shaman
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅拉·捕风::249363|r 对话。
    .turnin 92464 >>交任务 元素动荡
    .accept 92465 >>接受任务 煽动者
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>击杀 |cRXP_ENEMY_奥拉凯斯信徒::251160|r 与 |cRXP_ENEMY_翻滚之风::251143|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_翻滚之风::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>在 |cRXP_WARN_蓝色裂隙|r 附近的地上使用 |T236219:0|t[阅读魔网]
    *|cRXP_WARN_遍布整个区域|r |cRXP_WARN_在其中一个附近使用|r |T236219:0|t[阅读魔网] |cRXP_WARN_可将 100% 法力与食物回复效果的持续时间从 15 秒延长至 15 分钟|r。
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705 << Alliance
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>在 |cRXP_PICK_元素交汇|r 附近使用 |T1029587:0|t[天穹视界]。
    *|cRXP_WARN_遍布整个区域。在其中一个附近使用 |T1029587:0|t[天穹视界] 可将 10% 移动速度增益的持续时间从 15 秒延长至 15 分钟。|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>天穹视界
step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>使用 |T134743:0|t[大地灵契]。
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地之魂::251166|r 对话
    .turnin 92467 >>交任务 大地的召唤
    .accept 92468 >>接受任务 大地的召唤
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Horde Shaman
    .isQuestComplete 93552
    .isOnQuest 93552
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>从山上跳下，在墓地复活。
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552
    .isOnQuest 93552
    .subzoneskip 16635,1
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灵魂医者::6491|r 对话。
    .target Spirit Healer::6491
step << Horde Shaman
    #loop
    .goto 2521,48.290,25.694,20,0
    .goto 2521,47.173,23.545,20,0
    .goto 2521,46.945,20.927,20,0
    .goto 2521,44.186,22.288,20,0
    .goto 2521,42.832,22.274,20,0
    .goto 2521,43.473,23.845,20,0
    .goto 2521,43.809,25.423,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    +1
step << Alliance/!Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>击杀 |cRXP_ENEMY_奥拉凯斯信徒::251160|r 与 |cRXP_ENEMY_翻滚之风::251143|r。
    *拾取他们的 |T1020384:0|t[阿基尔徽记] << Shaman
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_翻滚之风::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要破坏约10块石头，不过你可能最多需要15块|r。
    *|cRXP_WARN_如果该区域人数过多，可以蹲守一个刷新点或者在附近的几个石碑之间跑来跑去|r。
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>刷怪达到300+/1400经验
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅拉·捕风::249363|r 对话。
    .turnin 92465 >>交任务 煽动者
    .accept 92469 >>接受任务 向罗里安复命
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>炉石回到森达尔村
    .cooldown item,6948,>0
step
    #completewith next
    #label Harvesting Windstones2
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    *|cRXP_WARN_选择采矿、草药学或剥皮中的一项。|r
    .turnin 93552 >>交任务 采集风之石
    .target Dalia the Collector::251363
step
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收藏家达莉亚::251363|r 对话。
    *|cRXP_WARN_选择采矿、草药学或剥皮中的一项。|r
    .turnin 93552 >>交任务 采集风之石
    .target Dalia the Collector::251363
step
    .goto 2521,43.44,24.80
    .itemcount 247840,1
    .train 2575 >>|cRXP_WARN_在前往任务发布者的途中使用|r |T4625105:0|t[采矿傻瓜教程]。
    .use 247840
step
    .goto 2521,43.44,24.80
    .itemcount 247841,1
    .train 2366 >>|cRXP_WARN_在前往任务发布者的途中使用|r |T4624731:0|t[荒野采摘]。
    .use 247841
step
    .goto 2521,43.44,24.80
    .itemcount 247846,1
    .train 8613 >>|cRXP_WARN_在前往任务发布者的途中使用|r |T4624731:0|t[兽皮收集入门]。
    .use 247846
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿克利·暮刃::251389|r 对话。
    .turnin 92483 >>交任务 At 首页 in the Shadows
    .target Akeri Duskblade::251389
step << Warrior
    .train 6546,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_剑圣任::251964|r 对话。
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 6178,1
    .train 772 >>学习 |T132155:0|t[撕裂]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_剑圣任::251964|r 对话。
    .turnin 92532 >>交任务 战士之路
    .xp <4,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉特雷尔·轻羽::251368|r 对话。
    .turnin 92463,3 >>交任务 卷云蝇女王
    .target Elatrell Featherlight::251368
step << Alliance
    #arrowtext 与\n|cRXP_FRIENDLY_法罗恩·秋风::251371|r 对话
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法罗恩·秋风::251371|r 对话。
    .turnin 92597 >>交任务 Reading the Ley Lines
    .target Falorne Fallwind::251371
-- These steps are duplicated because lag can prevent the first batch from appearing.
step
    #arrowtext 使用\n|T4625105:0|t[采矿傻瓜教程]
    .itemcount 247840,1
    .train 2575 >>使用 |T4625105:0|t[采矿傻瓜教程]。
    .use 247840
step
    #arrowtext 使用\n|T4624731:0|t[荒野采摘]
    .itemcount 247841,1
    .train 2366 >>使用 |T4624731:0|t[荒野采摘]。
    .use 247841
step
    #arrowtext 使用\n|T4624731:0|t[兽皮收集入门]
    .itemcount 247846,1
    .train 8613 >>使用 |T4624731:0|t[兽皮收集入门]。
    .use 247846
step << Warrior
    .train 6546,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_剑圣任::251964|r 对话。
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 6178,1
    .train 772 >>学习 |T132155:0|t[撕裂]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_剑圣任::251964|r 对话。
    .turnin 92532 >>交任务 战士之路
    .target Blademaster Ren::251964
step << Hunter Horde
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·远见::251376|r 对话
    .train 13163 >>学习 |T132159:0|t[灵猴守护]
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92469,1 >>交任务 向罗里安复命
    .accept 92471 >>接受任务 烈风之埃瑟恩 -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Horde
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锡顿·银风::251373|r 对话。
    .train 8921 >>学习 |T136096:0|t[月火术]
    .train 774 >>学习 |T136081:0|t[回春术]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈风之埃瑟恩::251366|r 对话。
    .turnin 92471 >>交任务 烈风之埃瑟恩
    .accept 92470 >>接受任务 邪恶的族母
    .target Aetheen of the Gales::251366
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塑风者波罗::251374|r 对话。
    .train 8042 >>影袭 |T136026:0|t[大地震击]
    .target Windshaper Boro::251374
    .money <0.01
    .xp <4,1
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_文塔里·明愿::251487|r 对话
    .turnin 92598 >>交任务 天穹视界的天赋
    .target Ventaari Brightwish::251487
step << Hunter Alliance
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·远见::251376|r 对话
    .train 13163 >>学习 |T132159:0|t[灵猴守护]
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Alliance
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_逐日者罗里安::251361|r 对话。
    .turnin 92469,1 >>交任务 向罗里安复命
    .accept 92471 >>接受任务 烈风之埃瑟恩 -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Alliance
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锡顿·银风::251373|r 对话。
    .train 8921 >>学习 |T136096:0|t[月火术]
    .train 774 >>学习 |T136081:0|t[回春术]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多莉·明语::251379|r 对话。
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.01
    .xp <4,1
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈风之埃瑟恩::251366|r 对话。
    .turnin 92471 >>交任务 烈风之埃瑟恩
    .accept 92470 >>接受任务 邪恶的族母
    .target Aetheen of the Gales::251366
step
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔瑞娅·谷风::257551|r 对话。
    .accept 92473 >>接受任务 步步紧逼
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌阿莉亚·日冠::251537|r 对话
    .collect 277113,1 >>购买 |T133637:0|t[初级草药袋]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌阿莉亚·日冠::251537|r 对话
    .collect 2901,1 >>购买 |T134708:0|t[矿工锄]
    .collect 277115,1 >>购买 |T133635:0|t[初级采矿包]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌阿莉亚·日冠::251537|r 对话
    .collect 7005,1 >>购买 |T135637:0|t[剥皮小刀]
    .collect 277114,1 >>购买 |T133634:0|t[初级剥皮包]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>|cRXP_WARN_出售垃圾物品|r
    *不要出售 |T133970:0|t[多汁肉] << Alliance
    .collect 159,20 >>购买 |T132794:0|t[清凉的泉水] << Mage
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔瑞娅·谷风::257551|r 对话。
    .accept 92473 >>接受任务 步步紧逼
    .target Valreaa Valewind::257551
step
    #completewith Scrawny Usera
    +手动将材料包拖入材料包栏位。右键点击它则会将其放入空的常规背包栏位
step
    #completewith Scrawny Usera
    .train 2366,3
    .cast 2383 >>施放 |T133939:0|t[寻找草药] 来寻找附近的草药
    *|cRXP_WARN_你可以沿途采集草药，为后续任务所需的20点草药学做准备。此步骤可选做，尤其在开服初期，请自行决定是否执行|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 2656,3
    .cast 2580 >>施放 |T136025:0|t[寻找矿物] 来寻找附近的矿石
    *|cRXP_WARN_你可以沿途采矿，为后续任务所需的20点采矿技能做准备。此步骤可选做，尤其在开服初期，请自行决定是否执行|r
    .usespell 2580
step
    #completewith Scrawny Usera
    .train 8613,3
    +|cRXP_WARN_你可以沿途剥皮，为后续任务所需的20点剥皮技能做准备。此步骤可选做，尤其在开服初期，请自行决定是否执行|r
step
    #label Scrawny Usera
    #loop
    .goto 2521,41.05,25.7,30,0
    .goto 2521,40.4,26.9,30,0
    .goto 2521,39.7,27.03,30,0
    .goto 2521,37.25,29.72,40,0
    .goto 2521,38.17,27.84,30,0
    .goto 2521,37.67,26.31,30,0
    .goto 2521,38.44,27.35,30,0
    >>击杀 |cRXP_ENEMY_熊::250926|r。拾取 |T132136:0|t[|cRXP_LOOT_瘦弱的乌萨拉之爪|r]。
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #completewith next
    >>击杀 |cRXP_ENEMY_乌萨娜::250937|r。
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>击杀 |cRXP_ENEMY_乌萨娜|r。拾取他的 |T5840609:0|t[|cRXP_LOOT_乌萨娜的头颅|r]。
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah::251115
step
    #loop
    .goto 2521,36.2,25,30,0
    .goto 2521,36.39,23.79,30,0
    .goto 2521,37.33,24.26,30,0
    .goto 2521,36.9,24.54,30,0
    .goto 2521,37.34,25.13,30,0
    .goto 2521,38.12,27.71,30,0
    .goto 2521,37.7,29.46,30,0
    .goto 2521,40.79,26.64,30,0
    >>击杀 |cRXP_ENEMY_乌萨拉食腐者::250937|r。
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .isOnQuest 92470
    .isQuestComplete 92470
    .subzoneskip 16673,1
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>死掉后在墓地复活。
    *|cRXP_WARN_在战斗中使用坐下宏，可加快死亡速度|r。
    .macro Sit, >>坐下
    .target Spirit Healer::6491
step
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1
    .isOnQuest 92470
    .isQuestComplete 92470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈风之埃瑟恩::251366|r 对话。
    .turnin 92470,1 >>交任务 邪恶的族母 << Warrior
    .turnin 92470,2 >>交任务 邪恶的族母 << Druid/Shaman
    .turnin 92470,3 >>交任务 邪恶的族母 << Mage
    .turnin 92470,4 >>交任务 邪恶的族母 << Rogue
    .turnin 92470,5 >>交任务 邪恶的族母 << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1
    .isOnQuest 92470
    .isQuestComplete 92470
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灵魂医者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈风之埃瑟恩::251366|r 对话。
    .turnin 92470,1 >>交任务 邪恶的族母 << Warrior
    .turnin 92470,2 >>交任务 邪恶的族母 << Druid/Shaman
    .turnin 92470,3 >>交任务 邪恶的族母 << Mage
    .turnin 92470,4 >>交任务 邪恶的族母 << Rogue
    .turnin 92470,5 >>交任务 邪恶的族母 << Hunter
    .accept 92472 >>接受任务 下一步
    .accept 96638 >>接受任务 冒险者
    .target Aetheen of the Gales::251366
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔瑞娅·谷风::257551|r 对话。
    .turnin 92473,1 >>交任务 步步紧逼
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>|cRXP_WARN_出售垃圾物品|r
    *不要出售 |T133970:0|t[多汁狼肉] 和 |T132832:0|t[小蛋]。 << Alliance
    *不要出售 |T132832:0|t[小蛋]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔瑞娅·谷风::257551|r 对话。
    .turnin 92473,1 >>交任务 步步紧逼
    .target Valreaa Valewind::257551
step
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_装备|r |T135335:0|t[破损的巨剑] << Warrior
    *|cRXP_WARN_装备|r |T135145:0|t[见习牧师的短杖] << Druid/Shaman
    *|cRXP_WARN_装备|r |T135650:0|t[斥候游侠的匕首] << Mage
    *|cRXP_WARN_装备|r |T133057:0|t[维和者的采矿锤] << Rogue
    *|cRXP_WARN_装备|r |T135503:0|t[精良的短弓] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈娜·夜风::252095|r 对话。
    .accept 92544 >>接受任务 奥拉凯斯暴徒
    .target Hanaa Nightwind::252095
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>在不浪费时间的前提下，沿途击杀小怪。
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈娜·夜风::252095|r 对话。
    .accept 92544 >>接受任务 奥拉凯斯暴徒
    .target Hanaa Nightwind::252095
step
    #completewith next
    >>击杀 |cRXP_ENEMY_奥拉凯斯蛮兵::251145|r 和 |cRXP_ENEMY_奥拉凯斯新教徒::251448|r。
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>击杀 |cRXP_ENEMY_马尔杜科·碎云::256935|r。
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>前往寺庙的上层
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>击杀神殿顶部的 |cRXP_ENEMY_马尔杜科·碎云::256935|r。
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544
    .goto 2521,35.910,33.605
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step << Alliance
    .isOnQuest 92544
    .goto 2521,35.57,33.84
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #hidewindow
    #completewith Grind6
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    +1
step
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯蛮兵::251145|r 和 |cRXP_ENEMY_奥拉凯斯新教徒::251448|r。
    *|cRXP_WARN_在魔网附近|r|cRXP_WARN_刷新|r |T236219:0|t[阅读魔网] << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
    .mob +Al'Aketh Ambusher::251451
step
    #label Grind6
    .xp 5+1740 >>刷怪升级至5级（1740+/2800经验值），以便在下一村庄交完任务后达到6级，从而学习新技能。
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈娜·夜风::252095|r 对话。
    .turnin 92544 >>交任务 奥拉凯斯暴徒
    .target Hanaa Nightwind::252095
step << !Mage
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|t点击沿途的 |cRXP_PICK_风石晶体|r 以获得生命值和法力值恢复品
    *触碰龙卷风以获得 40% 移动速度加成，造成伤害会移除该效果
step
    .isOnQuest 92472
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .turnin 92472 >>交任务 下一步
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>沿途击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]
    .collect 5469,8
    .collect 6889,3
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜·真云::254358|r 对话。
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid
    >>|cRXP_WARN_为你的职业法术预留 2 银币！|r << Shaman/Druid
    .vendor 254358 >>|cRXP_WARN_出售垃圾物品|r。
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_出售垃圾物品|r。
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .turnin 92472 >>交任务 下一步
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .accept 93461 >>接受任务 欢迎来到申达尔村 << Alliance
    .accept 92514 >>接受任务 欢迎来到申达尔村 << Horde
    .target Constable Aonda::251523
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多莉·明语::251379|r 对话。
    .train 143 >>学习 |T135812:0|t[火球术 (等级 2)]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .train 1296017 >>学习 |T8188276:0|t[理解卷轴]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉西里尔·日矛::251903|r 对话。
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>接受任务 The 高 Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉西里尔·日矛::251903|r 对话。
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
    .skipgossipid 136139 -- Can you tell me what is happening on Zephras Isle?
    .skipgossipid 136138 -- Do we know why..?
    .skipgossipid 136137 -- How do we solve this?
    .skipgossipid 136136 -- What about the Al'Aketh? Can they help?
    .skipgossipid 136135 -- What of this "Windlord"? Is Al'Akir real, or a creation of the cult?
    .skipgossipid 136134 -- How can you be so sure? If we've never dealt with the windlord directly, surely it's worth a try?
    .skipgossipid 136133 -- <Remain Silent>
step << Alliance
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉西里尔·日矛::251903|r 对话。
    .turnin 92596 >>交任务 The 高 Order
    .accept 94413 >>接受任务 A Magical Affront
    .target Rathiril Sunlance::251903
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉娅·琥珀风::251902|r 对话。
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>接受任务 塑风者
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉娅·琥珀风::251902|r 对话。
    .complete 92595,1 --1/1 Listen to Illaya
    .target Illaya Amberwind::251902
    .skipgossipid 135864
    .skipgossipid 135863
    .skipgossipid 135862
    .skipgossipid 135861
    .skipgossipid 135860
    .skipgossipid 135859
    .skipgossipid 135858
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉娅·琥珀风::251902|r 对话。
    .turnin 92595 >>交任务 塑风者
    .accept 94411 >>接受任务 多管闲事的法师
    .target Illaya Amberwind::251902
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿诺尔·风暴打击::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
    .skipgossipid 136811
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科里埃拉·平风::254089|r 对话。
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科里埃拉·平风::254089|r 对话。
    .home >>将你的炉石设置为申达尔村
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Mage
    .isOnQuest 93461
    .subzoneskip 16624,1
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜萨兰娜·风歌::257020|r 对话，购买缺少的材料：|T133942:0|t[铜棒]、|T132841:0|t[魔法微粒] 和 |T135435:0|t[普通木柴]。
    .collect 6217,1
    .collect 247786,3
    .collect 4470,1
    .skipgossipid 137558
    .target Nasalanna Windsinger::257020
    .money <0.0172
step << Mage
    .isOnQuest 93461
    .subzoneskip 16624,1
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜萨兰娜·风歌::257020|r 对话
    .train 7411 >>学习 |T136189:0|t[附魔] |cRXP_WARN_以立即制作魔杖|r
    .skipgossipid 137559
    .target Nasalanna Windsinger::257020
step << Mage
    .isOnQuest 93461
    .train 7411,3
    >>使用下面的 |T135225:0|t[符文铜棒] 宏，然后使用 |T135645:0|t[新手练习魔杖] 宏
    *|cRXP_WARN_之后，如果你已装备护腕，就为其附魔耐力|r
    .collect 6218,1
    .collect 247789,1
    .macro Runed Copper Rod,135225 >>符文铜棒
    .macro Novice's Practice Wand,135645 >>新手练习魔杖
step << Mage
    #completewith next
    .train 7411,3
    +放弃附魔，或继续练下去。
step << Alliance
    .goto 2521,43.02,43.24
    *|cRXP_WARN_装备|r |T135645:0|t[新手练习魔杖] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科里埃拉·平风::254089|r 对话。
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科里埃拉·平风::254089|r 对话。
    .home >>将你的炉石设置为申达尔村
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔桑·裂地者::254088|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里与 |cRXP_FRIENDLY_伊拉雅·柔风::254084|r 对话。
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话。
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒 (等级 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .turnin 93461 >>交任务 欢迎来到申达尔村 << Alliance
    .turnin 92514 >>交任务 欢迎来到申达尔村 << Horde
    .accept 92517 >>接受任务 法外之徒
    .target Constable Aonda::251523
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉雅·柔风::254084|r 对话。
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒 (等级 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·泉风::251906|r 对话。
    .accept 93319 >>接受任务 被偷走的风之石
    .accept 92516 >>接受任务 角鹰兽的袭扰
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_因达里·日缝::251993|r 对话。
    .accept 92515 >>接受任务 傲爪的麻烦
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳·闪线::251991|r 对话。
    .accept 93951 >>接受任务 一点小小的美丽
    .target Taleen Shimmerthread::251991
step << Shaman
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Warrior
    .isOnQuest 92517
    .isQuestNotComplete 92517
    .subzoneskip 16624,1
    .goto 2521,44.8,44.18
    #arrowtext 与\n|cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话，购买并装备 |T133053:0|t[木槌棒]。
    .collect 2493,1 -- Wooden Mallet
    .money <0.0701
    .target Tephri Thriceforged::257421
step << Rogue
    .isOnQuest 92517
    .isQuestNotComplete 92517
    .subzoneskip 16624,1
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话，购买并装备 |T135321:0|t[步兵剑]。
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
    .money <0.0536
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .accept 92553 >>接受任务 补充储藏室
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step
    .isQuestTurnedIn 92553
    .isQuestAvailable 92517
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>使用下方的|T132834:0|t[草药烘蛋]宏进行制作。
    *|cRXP_WARN_任何增益食物都会提供击杀经验提高 5% 的效果，持续 15 分钟|r。
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    #completewith BadwindBennicA
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    *|cRXP_WARN_优先击杀它们|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    *|cRXP_WARN_优先击杀它们|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>击杀 |cRXP_ENEMY_高阶会学徒::257521|r。
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517
    .isQuestNotComplete 92517
    .goto 2521,46.597,38.121
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step
    #completewith BadwindBennicB
    >>击杀 |cRXP_ENEMY_高地强盗::251918|r。拾取 |T5172975:0|t[|cRXP_LOOT_被偷走的风石|r]。
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith next
    #label BadwindBennicA
    >>击杀 |cRXP_ENEMY_“恶风”本尼克::255534|r。
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>进入洞穴
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,50.680,34.214
    >>击杀 |cRXP_ENEMY_“恶风”本尼克::255534|r。
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step << Alliance
    .isOnQuest 92517
    .subzoneskip 16674,1
    #arrowtext 在魔网附近使用 |T236219:0|t[阅读魔网]\n
    .goto 2521,50.59,33.51
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith OutCave
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith OutCave
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label OutCave
    #loop
    .goto 2521,50.27,33.41,25,0
    .goto 2521,49.69,34.05,25,0
    .goto 2521,49.64,34.66,25,0
    .goto 2521,49.93,35.22,25,0
    .goto 2521,49.79,35.97,25,0
    .goto 2521,49.26,35.91,25,0
    .goto 2521,48.82,36.47,25,0
    .goto 2521,49.43,38.66,40,0
    .goto 2521,48.02,38.41,40,0
    .goto 2521,47.75,36.19,40,0
    .goto 2521,48.93,36.38,40,0
    >>击杀 |cRXP_ENEMY_高地强盗::251918|r。拾取它们的战利品 |T5172975:0|t[|cRXP_LOOT_被偷走的风石|r]。
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith To Shendalar
    >>杀死 |cRXP_ENEMY_Galestrider::251661|r |cRXP_WARN_沿途|r。 
    *拾取战利品 |T133972:0|t[|cRXP_LOOT_Strider 肉|r] 和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith To Shendalar
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_沿途|r。 
    *拾取战利品 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isOnQuest 96638
    .isQuestAvailable 96638
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话。
    .vendor 251905 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们|r。
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .train 2550 >>学习 |T133971:0|t[初级烹饪]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
-- step
--     .isOnQuest 92553
--     .isQuestAvailable 92517
--     .itemcount 1971,<1
--     .goto 2521,43.86,43.85
--     >>Use the |T132834:0|t[Herb Baked Egg] macro below to craft.
--     *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
--     .collect 6888,1
--     .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count then C_TradeSkillUI.CraftRecipe(8604, count) end
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多莉·明语::251379|r 对话。
    .train 143 >>学习 |T135812:0|t[火球术 (等级 2)]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .train 1296017 >>学习 |T8188276:0|t[理解卷轴]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿诺尔·风暴打击::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 1757 >>学习 |T136189:0|t[影袭 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔桑·裂地者::254088|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉雅·柔风::254084|r 对话。
    .train 3044 >>学习 |T132218:0|t[奥术射击]
    .train 1130 >>学习 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>学习 |T136006:0|t[愤怒 (等级 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step << Mage/Druid/Shaman
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·泉风::251906|r 对话
    .target Teeri Wellwind::251906
    .turnin 93319 >>交任务 被偷走的风之石
step << Mage/Druid/Shaman
    .subzoneskip 16624,1
    .isQuestAvailable 96638
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜·真云::254358|r 对话
    .vendor 254358 >>|cRXP_BUY_如有需要，|r|cRXP_BUY_购买|r |T133634:0|t[棕色小包]。
    *|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    .target Veena Vericloud::254358
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉娅·琥珀风::251902|r 对话。
    .turnin 94411 >>交任务 多管闲事的法师
    .target Illaya Amberwind::251902
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_悬赏：贪得无厌的乌尔加拉！|r
    .accept 93318 >>接受任务 悬赏：贪得无厌的乌尔加拉
    .target Bounty Available: Vulgara the Insatiable!
step << Warrior/Rogue
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜丽娅·碎补::257018|r 对话。
    .train 3273 >>学习急救
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话。
    .turnin 96638 >>交任务 冒险者
    .target Raan Wildwind::263664
    .accept 96101 >>接受任务 广阔天地
step
    .goto 2521,41.67,44.79
    >>点击"已激活物品栏"中的宏以坐下。
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    -- .emote SIT,263664 -- Feels like this is breaking the quest completion 50% of the time
    .macro Sit,134400 >>坐下
    .timer 59, RP
    .target Raan Wildwind::263664
step
    >>|cRXP_WARN_保持坐下，直到获得“强化休息”增益|r。
    *|cRXP_WARN_你可以在等待期间制作物品，不会中断该过程|r。
    *|cRXP_WARN_制作|r |T133974:0|t[烧烤狼肉] |cRXP_WARN_来提升你的烹饪技能。不要使用|r |T132832:0|t[小蛋] << Alliance
    *如果未获得该增益，请重新登录，然后重试。
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话。
    .turnin 96101 >>交任务 广阔天地
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2575,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97970 >>接受任务 露营基础：采矿
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 8613,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97971 >>接受任务 露营基础：剥皮
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 96646 >>接受任务 露营基础：烹饪
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2366,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97968 >>接受任务 露营基础：草药学
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 3273,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97965 >>接受任务 露营基础：急救
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 7620,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97967 >>接受任务 露营基础：钓鱼
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2259,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97963 >>接受任务 露营基础：炼金术
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2018,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97964 >>接受任务 露营基础：锻造
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 3908,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97973 >>接受任务 露营基础：裁缝
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 7411,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 98286 >>接受任务 露营基础：附魔
    .target Raan Wildwind::263664
step
    .train 2108,3
    .subzoneskip 16624,1
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉安·狂风::263664|r 对话
    .accept 97969 >>接受任务 露营基础：制皮
    .target Raan Wildwind::263664
step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith HippogryphHarassmentA
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    *|cRXP_WARN_触碰附近的龙卷风，以此获得 40% 移动速度加成，持续5分钟。造成伤害会移除该效果|r。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith HippogryphHarassmentA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith next
    >>击杀 |cRXP_ENEMY_塑风者见习先知::257532|r。
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413
    .isQuestNotComplete 94413
    .goto 2521,39,47.37
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>击杀 |cRXP_ENEMY_塑风者见习先知::257532|r。
    *|cRXP_WARN_在魔网附近|r|cRXP_WARN_刷新|r |T236219:0|t[阅读魔网] << Alliance
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516
    .isQuestNotComplete 92516
    .subzoneskip 16623,1
    #arrowtext 从山上跳下\n使用 |T132845:0|t[踏空而行]
    .goto 2521,36.44,50.93
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向路径点。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_幼年角鹰兽::251291|r、|cRXP_ENEMY_角鹰兽保卫者::251284|r 和 |cRXP_ENEMY_角鹰兽雌兽::251261|r。
    *|cRXP_WARN_留意风之石来恢复，以及龙卷风来获得移动速度加成|r
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_主母::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_角鹰兽绒毛|r。
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>击杀 |cRXP_ENEMY_幼年角鹰兽::251291|r、|cRXP_ENEMY_角鹰兽保卫者::251284|r 和 |cRXP_ENEMY_角鹰兽雌兽::251261|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_主母::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #completewith VulgarasHeadA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith VulgarasHeadA
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>上山击杀 |cRXP_ENEMY_贪得无厌的乌尔加拉::254589|r |cRXP_WARN_(8级精英)|r。拾取 |T4218759:0|t[|cRXP_LOOT_乌尔加拉的头颅|r]。
    *|cRXP_WARN_建议组队击杀，或跳过该任务；刷新时间较长|r。
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #completewith next
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #loop
    .goto 2521,43.07,48.51,40,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .train 3273,3
    .isQuestComplete 97965
    .isQuestAvailable 92517
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜丽娅·碎补::257018|r 对话
    .turnin 97965 >>交任务 露营基础：急救
    .target Naleeia Tattermend::257018
step
    .train 7411,3
    .isQuestComplete 98286
    .isQuestAvailable 92517
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜萨兰娜·风歌::257020|r 对话
    .turnin 98286 >>交任务 露营基础：附魔
    .target Nasalanna Windsinger::257020
step
    .train 8613,3
    .isQuestComplete 97971
    .isQuestAvailable 92517
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_门达拉斯·碎补::257024|r 对话
    .turnin 97971 >>交任务 露营基础：剥皮
    .target Mendalass Tattermend::257024
step
    .isOnQuest 92516
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话并购买5个 |T134059:0|t[甜香料]
    .vendor 251905 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .collect 2678,5
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isQuestAvailable 92517
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .turnin 92553 >>交任务 补充储藏室
    .target Zerril Softbreeze::251905
step
    .train 2550,3
    .isQuestComplete 96646
    .isQuestAvailable 92517
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .turnin 96646 >>交任务 露营基础：烹饪
    .target Zerril Softbreeze::251905
step
    .isOnQuest 92553
    .isQuestAvailable 92517
    .itemcount 1971,<3
    .goto 2521,43.86,43.85
    >>使用下方的|T132834:0|t[草药烘蛋]宏进行制作。
    *|cRXP_WARN_保留至少3颗小蛋，用于后续任务|r
    *|cRXP_WARN_任何增益食物都会提供击杀经验提高 5% 的效果，持续 15 分钟|r。
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isQuestTurnedIn 92553
    .isQuestAvailable 92517
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>使用下方的|T132834:0|t[草药烘蛋]宏进行制作。
    *|cRXP_WARN_任何增益食物都会提供击杀经验提高 5% 的效果，持续 15 分钟|r。
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .train 2259,3
    .isQuestComplete 97963
    .isQuestAvailable 92517
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_妮雅萨·迅饮::257019|r 对话
    .turnin 97963 >>交任务 露营基础：炼金术
    .target Nyassa Swiftdraught::257019
step
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳·闪线::251991|r 对话
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>交任务 一点小小的美丽
step
    .train 3908,3
    .isQuestAvailable 92517
    .isQuestComplete 97973
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳·闪线::251991|r 对话
    .turnin 97973 >>交任务 露营基础：裁缝
    .target Taleen Shimmerthread::251991
step
    .train 2018,3
    .isQuestAvailable 92517
    .isQuestComplete 97964
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾迪·三铸::251913|r 对话
    .turnin 97964 >>交任务 露营基础：锻造
    .target Aedi Thriceforged::251913
step
    .train 2575,3
    .isQuestAvailable 92517
    .isQuestComplete 97970
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅萨娜·冠风::257022|r 对话
    .turnin 97970 >>交任务 露营基础：采矿
    .target Messana Crestwind::257022
step
    .isQuestAvailable 92517
    .isQuestComplete 92515
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_因达里·日缝::251993|r 对话
    .target Indari Sunseam::251993
    .turnin 92515 >>交任务 傲爪的麻烦
step
    .train 2108,3
    .isQuestAvailable 92517
    .isQuestComplete 97969
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_因达里·日缝::251993|r 对话
    .turnin 97969 >>交任务 露营基础：制皮
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰丽·泉风::251906|r 对话
    .target Teeri Wellwind::251906
    .turnin 92516 >>交任务 角鹰兽的袭扰
    .turnin 93319 >>交任务 被偷走的风之石
step << Shaman
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .subzoneskip 16624,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔桑·裂地者::254088|r 对话
    .train 284 >>学习 |T132282:0|t[英勇打击 (等级 2)]
    .train 1715 >>学习 |T132316:0|t[断筋]
    .train 7372,1
    .train 6343 >>学习 |T136105:0|t[雷霆一击]
    .train 8198,1
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.05
    .xp <8,1
step
    .isOnQuest 93318
    .isQuestComplete 93318
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳瑞·怒面::252172|r 对话
    .target Danarii Bellowveil::252172
    .turnin 93318 >>交任务 悬赏：贪得无厌的乌尔加拉
step
    .abandon 93318 >>放弃任务 悬赏：贪得无厌的乌尔加拉
step << Alliance Druid
    .subzoneskip 16624,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话。
    .train 339 >>学习 |T136100:0|t[纠缠根须]
    .train 5186 >>学习 |T136041:0|t[治疗之触 (等级 2)]
    .skipgossipid 136805
    .xp <8,1
    .money <0.04
    .target Naeluna Swiftmend::254081
step << Alliance Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉雅·柔风::254084|r 对话。
    .train 5116 >>学习 |T135860:0|t[震荡射击]
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 14260 >>学习 |T132223:0|t[猛禽一击 (等级 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话
    .target Constable Aonda::251523
    .turnin 92517,3 >>交任务 法外之徒
    .accept 93036 >>接受任务 潜入密教
step << Hunter
    .subzoneskip 16624,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉雅·柔风::254084|r 对话。
    .train 5116 >>学习 |T135860:0|t[震荡射击]
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 14260 >>学习 |T132223:0|t[猛禽一击 (等级 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.06
    .xp <8,1
step << Horde Druid
    .subzoneskip 16624,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话。
    .trainer >>学习法术
    .target Naeluna Swiftmend::254081
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨妮亚·银流::251904|r 对话
    .target Sania Silverstream::251904
    .turnin 93036 >>交任务 潜入密教
    .accept 92529 >>接受任务 法拉斯村
step
    .subzoneskip 16624,1
    .isQuestAvailable 92529
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜·真云::254358|r 对话
    .vendor 254358 >>|cRXP_BUY_如有需要，|r|cRXP_BUY_购买最多三个|r |T133634:0|t[棕色小包]。
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Druid
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage
    .target Veena Vericloud::254358
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰弗瑞·三铸::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .isOnQuest 92529
    .subzoneskip 16624,1
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨妮亚·银流::251904|r 对话
    .skipgossipid 135874
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿诺尔·风暴打击::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
    .money <0.10
    .xp <8,1
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_申安·咒风::254086|r 对话
    .train 5143 >>学习 |T136096:0|t[奥术飞弹]
    .train 205 >>学习 |T135846:0|t[寒冰箭 (等级 2)]
    .train 118 >>学习 |T136071:0|t[变形术]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.06
    .xp <8,1
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉西里尔·日矛::251903|r 对话。
    .turnin 94413 >>交任务 A Magical Affront
    .target Rathiril Sunlance::251903
step
    .train 7620,3
    .isQuestComplete 97967
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬恩·晴风::251992|r 对话
    .turnin 97967 >>交任务 露营基础：钓鱼
    .target Fenn Fairweather::251992
step
    #completewith LivingLightningA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #completewith LivingLightningA
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #completewith Skypriest Aanders
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529
    .subzoneskip 16624,1
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_传教士贾萨安::257065|r 对话
    .target Missionary Jasaan::257065
    .turnin 92529 >>交任务 法拉斯村
    .accept 92528 >>接受任务 信徒之中
    .use 2454 << Warrior/Rogue
step
    .isOnQuest 92528
    .subzoneskip 16636,1
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨妮亚·银流::251904|r 对话
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528
    .goto 2521,48.497,55.827
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step
    #completewith next
    #label plans
    .goto 2521,48.8,53.89,10,0
    .goto 2521,48.93,53.55,10,0
    >>点击衣柜后，返回城中。
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|t点击二楼的 |cRXP_PICK_衣柜|r。
    *|cRXP_WARN_如果有人已经做过了，它仍会完成|r
    .timer 14,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>返回城中并等待剧情演出。
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .macro Leave Vehicle,6656430 >>离开载具
step
    .isOnQuest 92528
    .subzoneskip 16624
    .goto 2521,46.86,51.54,25,0
    .goto 2521,44.37,46.69
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Rogue
    .isQuestAvailable 92528
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·雾刃::254087|r 对话
    .train 5277 >>学习 |T136205:0|t[闪避]
    .train 6760 >>学习 |T132292:0|t[刺骨 (等级 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .turnin 92528,1 >>交任务 信徒之中 << Mage/Druid/Shaman
    .turnin 92528,2 >>交任务 信徒之中 << Warrior/Rogue
    .turnin 92528,3 >>交任务 信徒之中 << Hunter
    .accept 92550 >>接受任务 高地之劫
    .accept 93926 >>接受任务 西部瞭望塔
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_装备|r |T454058:0|t[污渍斑斑的仪式匕首] << Mage/Druid/Shaman
    *|cRXP_WARN_装备|r |T7789512:0|t[弧形弯刀] << Warrior/Rogue
    *|cRXP_WARN_装备|r |T135493:0|t[风袭短弓] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳瑞·怒面::252172|r 对话。
    .accept 92551 >>接受任务 被偷走的补给品
    .target Danarii Bellowveil::252172
step
	.isOnQuest 93926
    .isQuestNotComplete 93926
    -- .subzoneskip 16624,1
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>在申达尔村西南方死亡，然后在 |cRXP_FRIENDLY_灵魂医者::6491|r 处复活
    .macro Sit,134400 >>坐下
step
    #completewith next
    #label Western Watchtower
    .isOnQuest 92470
    .isQuestComplete 92470
    .subzoneskip 17674,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维和者瓦尼尔::252155|r 对话。
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .subzoneskip 17674,1
    .isOnQuest 92470
    .isQuestComplete 92470
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灵魂医者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维和者瓦尼尔::252155|r 对话。
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_维和者瓦尼尔::252155|r
    .turnin 93926 >>交任务 西部瞭望塔
    .accept 93927 >>接受任务 最后的请求
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_沾血的便笺|r。 
    *|cRXP_WARN_保留一个空的背包栏位|r。
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|t从远处点击 |cRXP_PICK_阿文苏斯·影歌|r\n。
    *|cRXP_WARN_保留一个空的背包栏位|r。
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|t从远处点击 |cRXP_PICK_凝风者拉尼|r\n。
    *|cRXP_WARN_保留一个空的背包栏位|r。
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,40.94,64.15,4,0
    .goto 2521,41.11,64.03,4,0
    .goto 2521,41.09,64.29,4,0
    .goto 2521,40.95,64.25,4,0
    .goto 2521,41.05,64.02,4,0
    .goto 2521,41.08,64.27,4,0
    .goto 2521,40.94,64.2,4,0
    .goto 2521,41.08,64.39
    >>沿螺旋楼梯上行，然后在塔顶击杀 |cRXP_ENEMY_天空祭司安德斯::256966|r。
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1
    .isOnQuest 92551
    .isQuestNotComplete 92551
    .goto 2521,50.29,56.95
    .cast 1259416 >>从塔上跳下，使用 |T132845:0|t[踏空而行] 飞向路径点位置。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #completewith NearCommander
    >>击杀 |cRXP_ENEMY_奥拉凯斯唤暴者::252068|r。拾取 |T133647:0|t[|cRXP_LOOT_失窃的申达尔补给品|r]。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击|cRXP_PICK_补给箱|r。
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #completewith NearCommander
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith NearCommander
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550
    .isOnQuest 92550
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_活体闪电::251662|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_奥拉凯斯唤暴者::252068|r。拾取 |T133647:0|t[|cRXP_LOOT_失窃的申达尔补给品|r]。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击|cRXP_PICK_补给箱|r。
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>击杀 |cRXP_ENEMY_指挥官塞克拉斯::251966|r。拾取 |T134161:0|t[|cRXP_LOOT_指挥官塞克拉斯的头颅|r]。
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    --.goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    +1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_活体闪电::251662|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>击杀 |cRXP_ENEMY_奥拉凯斯唤暴者::252068|r。拾取 |T133647:0|t[|cRXP_LOOT_失窃的申达尔补给品|r]。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击|cRXP_PICK_补给箱|r。
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>击杀 |cRXP_ENEMY_活体闪电::251662|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550
    .goto 2521,48.497,55.827
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step
    #completewith RestockingTheLaddersA
    #hidewindow
    #loop
    .goto 2521,42.885,63.422,35,0
    .goto 2521,42.97,49.81,35,0
    .goto 2521,44.12,50.46,35,0
    .goto 2521,38.283,42.288,35,0
    .goto 2521,42.055,40.938,35,0
    +1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>击杀 |cRXP_ENEMY_傲爪::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_傲爪的毛皮|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLaddersA
    >>击杀 |cRXP_ENEMY_疾风陆行鸟::251661|r，拾取 |T133972:0|t[|cRXP_LOOT_陆行鸟肉|r] 和 |T132832:0|t[|cRXP_LOOT_小蛋|r]。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .train 7620,3
    .isQuestComplete 97967
    .isQuestAvailable 92550
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬恩·晴风::251992|r 对话
    .turnin 97967 >>交任务 露营基础：钓鱼
    .target Fenn Fairweather::251992
step
    --might cause issues when really unlucky with the pelt or strider quest
    .isQuestAvailable 92551
    .isQuestNotComplete 97967
    .isQuestNotComplete 97965
    .isQuestNotComplete 97968
    .isQuestNotComplete 98286
    .isQuestNotComplete 97971
    .isQuestNotComplete 97963
    .isQuestNotComplete 97973
    .isQuestNotComplete 97964
    .isQuestNotComplete 97970
    .isQuestNotComplete 97969
    .goto 2521,44.111,45.843,40 >>沿路上山。
step
    .train 3273,3
    .isQuestComplete 97965
    .isQuestAvailable 92550
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜丽娅·碎补::257018|r 对话
    .turnin 97965 >>交任务 露营基础：急救
    .target Naleeia Tattermend::257018
step
    .train 7411,3
    .isQuestComplete 98286
    .isQuestAvailable 92550
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_娜萨兰娜·风歌::257020|r 对话
    .turnin 98286 >>交任务 露营基础：附魔
    .target Nasalanna Windsinger::257020
step
    .train 8613,3
    .isQuestComplete 97971
    .isQuestAvailable 92550
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_门达拉斯·碎补::257024|r 对话
    .turnin 97971 >>交任务 露营基础：剥皮
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92553
    .isOnQuest 92550
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话并购买 |T135237:0|t[燧石和火绒]。
    .collect 4471,1
    .itemcount 4471,<1
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isOnQuest 92550
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话并购买 5 根 |T135435:0|t[普通木柴]。
    .collect 4470,5
    .itemcount 4470,<5
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isQuestAvailable 92550
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .turnin 92553 >>交任务 补充储藏室
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553
    .isQuestAvailable 92550
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>尽可能多制作 |T132834:0|t[草药烘蛋]。
    *|cRXP_WARN_任何增益食物都会提供击杀经验提高 5% 的效果，持续 15 分钟|r。
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .train 2550,3
    .isQuestComplete 96646
    .isQuestAvailable 92550
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽瑞尔·柔风::251905|r 对话
    .turnin 96646 >>交任务 露营基础：烹饪
    .target Zerril Softbreeze::251905
step
    .train 2259,3
    .isQuestComplete 97963
    .isQuestAvailable 92550
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_妮雅萨·迅饮::257019|r 对话
    .turnin 97963 >>交任务 露营基础：炼金术
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3
    .isQuestComplete 97973
    .isQuestAvailable 92550
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳·闪线::251991|r 对话
    .turnin 97973 >>交任务 露营基础：裁缝
    .target Taleen Shimmerthread::251991
step
    .train 2018,3
    .isQuestComplete 97964
    .isQuestAvailable 92550
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾迪·三铸::251913|r 对话
    .turnin 97964 >>交任务 露营基础：锻造
    .target Aedi Thriceforged::251913
step
    .train 2575,3
    .isQuestComplete 97970
    .isQuestAvailable 92550
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅萨娜·冠风::257022|r 对话
    .turnin 97970 >>交任务 露营基础：采矿
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515
    .isQuestAvailable 92550
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_因达里·日缝::251993|r 对话
    .target Indari Sunseam::251993
    .turnin 92515 >>交任务 傲爪的麻烦
step
    .train 2108,3
    .isQuestComplete 97969
    .isQuestAvailable 92550
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_因达里·日缝::251993|r 对话
    .turnin 97969 >>交任务 露营基础：制皮
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1
    .isQuestAvailable 92551
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜·真云::254358|r 对话
    .vendor 254358 >>出售垃圾。如果需要背包，|cRXP_BUY_购买最多三个|r |T133634:0|t[棕色小包]
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Druid/Mage
    *|cRXP_BUY_购买|r |T132382:0|t[劣质箭] 和 |T132382:0|t[锋利的箭] << Hunter
    *|cRXP_BUY_购买|r |T132382:0|t[锋利的箭] << Rogue
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrow (1000)
    .collect 2515,600 << Rogue --Sharp Arrow (600)
    .target Veena Vericloud::254358
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳瑞·怒面::252172|r 对话。
    .turnin 92551 >>交任务 被偷走的补给品
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官阿翁达::251523|r 对话。
    .turnin 92550,3 >>交任务 高地之劫
    .turnin 93927 >>交任务 最后的请求
    .accept 92701 >>接受任务 前往瓦拉纳尔 << Alliance
    .accept 92579 >>接受任务 前往瓦拉纳尔 << Horde
    .accept 93948 >>接受任务 送还图章
    .target Constable Aonda::251523
step
    .isQuestAvailable 93948
    .isNotOnQuest 93317
    .subzoneskip 16624,1
    .goto 2521,49.4,58.76
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向路径点位置。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .isQuestAvailable 93948
    .isNotOnQuest 93317
    .subzoneskip 16624,1
    .goto 2521,49.4,58.76
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向路径点位置。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
	.isOnQuest 93926
    .isNotOnQuest 93317
    .subzoneskip 16638
    .goto 2521,49.4,58.76
    .subzone 16626 >>在精确的路径点位置死亡 
    *|cRXP_WARN_否则，你可能会被送到不同的墓地|r
    .macro Sit,134400 >>坐下
step
    #ignorecorpse
    .subzoneskip 16626,1
	.isOnQuest 93926
    .isNotOnQuest 93317
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Spirit 治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Hunter
    .isNotOnQuest 92679
    .isQuestAvailable 92679
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里与 |cRXP_FRIENDLY_法尔凡·半风::271465|r 对话。
    >>|cRXP_BUY_购买并装备一把|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>出售垃圾，需要时修理
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
    .money <0.1345
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
step << Alliance
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_妮雅拉·明火::257006|r 对话。
    *|cRXP_WARN_如果你发现龙卷风，靠近它即可获得 40% 移动速度加成，持续5分钟。造成伤害会移除该效果|r。
    .target Nyalah Brightfire::257006
    .accept 93317 >>接受任务 捕蟹季节
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948
    .itemcount 1971,<1
    .goto 2521,60.640,72.664
    >>尽可能多制作 |T132834:0|t[草药烘蛋]。
    *|cRXP_WARN_任何增益食物都会提供击杀经验提高 5% 的效果，持续 15 分钟|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多纳尔·微风::255940|r 对话。
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>将你的炉石设置为瓦拉纳尔
    .goto 2521,62.180,72.616
step
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多纳尔·微风::255940|r 对话。
    .vendor 255940 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,20 << Mage/Druid/Shaman
step
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_阿尔瓦里昂·风野::252448|r 对话。
    .target Alvarion Windfield::252448
    .accept 92679 >>接受任务 血之什一税
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>上楼
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_阿尔瓦里昂·风野::252448|r 对话。
    .target Alvarion Windfield::252448
    .accept 92679 >>接受任务 血之什一税
step
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>越过山
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .accept 94484 >>接受任务 Unnerving 默然
    .target Lotheluum Starbreeze::252359
step
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉内·漫云::259012|r 对话。
    .accept 94896 >>接受任务 援助难民
    .accept 94897 >>接受任务 爱人的命运
    .target Ealaane Nimbuswalker::259012
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .turnin 93948 >>交任务 送还图章
    .target Talaanis Shadowsong::252476
step
    #completewith DeliverTheSignetA
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>登上塔
step
    #requires DeliverTheSignetA
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .turnin 93948 >>交任务 送还图章
    .target Talaanis Shadowsong::252476
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92701 >>交任务 前往瓦拉纳尔 << Alliance
    .turnin 92579,3 >>交任务 前往瓦拉纳尔 << Horde
    .accept 92699 >>接受任务 至高法师 << Alliance
    .accept 92700 >>接受任务 大星灵 << Horde
    .accept 93949 >>接受任务 窃听虫 << Alliance
    .target Valennia Stormfist::252383
-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    *|cRXP_WARN_如果时机把握准确，你可以在半空中取消飞行，从而落入建筑内|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>取消踏空而行
step << Alliance
    .isOnQuest 92699 
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    *|cRXP_WARN_如果时机把握准确，你可以在半空中取消飞行，从而落入建筑内|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>取消踏空而行
step << Alliance
    #completewith Unwelcome Visitors
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉德林·晚风::252475|r 对话。
    .turnin 92699 >>交任务 至高法师
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_唐达里安·语风::253204|r 对话。
    .accept 92727 >>接受任务 失踪的学者
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊阿达瑞亚·苦风::253004|r 对话。
    .accept 92741 >>接受任务 不速之客
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727
    .goto 2521,67.41,80.46
    .subzoneskip 16638,1
    .subzone 16626 >>跳下悬崖
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1
    .isOnQuest 92727
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_灵魂医者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Hunter
    .goto 2521,63.027,77.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安特拉瑞娅·凝云::252390|r 对话。
    >>|cRXP_BUY_购买|r 600支 |T132382:0|t[劣质箭]
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,35,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿耶莎·晨歌::251968|r 对话。
    .turnin 92700 >>交任务 大星灵
    .accept 92708 >>接受任务 大冒险
    .timer 75,剧情事件时长
    .accept 93735 >>接受任务 损坏的构造体
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 92708
    .goto 2521,59.154,79.783
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344
step << Horde
    .train 2366,3
    .isOnQuest 97968
    .isQuestComplete 97968
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希瑞尔·夜雨::254345|r 对话。
    .target Syriel Nightrain::254345
    .turnin 97968 >>交任务 露营基础：草药学
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里阿尼·夜风::256083|r 对话。
    .target Riaani Nightwind::256083
    .turnin 93735 >>交任务 损坏的构造体
--     .accept 93737 >>Accept The Broken Construct
--     .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
-- step << Horde
--     .goto 2521,59.265,79.977
--     >>Wait for the roleplay. -- Probably skipping this quest.
--     .complete 92708,1 --|1/1 Listen to Ayessa
-- step << Horde
--     #label LeavingValanaarA
--     .goto 2521,59.150,79.790
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
--     .target Ayessa Dawnsinger::251968
--     .turnin 92708 >>Turn in A Grand Adventure
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #completewith next
--     #label BrokenConstructA
--     #hidewindow
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
-- step << Horde
--     #completewith BrokenConstructA
--     .goto 2521,51.397,68.644,15 >>Enter the cave
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires BrokenConstructA
--     #loop
--     .goto 2521,51.434,67.603,15,0
--     .goto 2521,51.874,67.221,15,0
--     .goto 2521,52.933,66.084,15,0
--     .goto 2521,53.201,65.424,15,0
--     .goto 2521,52.752,64.732,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_染血的背包|r
    .turnin 92727 >>交任务 失踪的学者
    .accept 92849 >>接受任务 失踪的学者
    .target Bloodstained Satchel
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t在洞穴内点击 |cRXP_FRIENDLY_菲里昂·炎风::253002|r。
    *|cRXP_WARN_这些鸟的仇恨范围比大多数敌人小|r。
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1
    .isOnQuest 92849
    .isQuestNotComplete 92849
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|t在洞穴内点击 |cRXP_FRIENDLY_菲里昂·炎风::253002|r。
    *|cRXP_WARN_这些鸟的仇恨范围比大多数敌人小|r。
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>护送 |cRXP_FRIENDLY_菲里昂·炎风::253281|r 到安全处。途中避开敌人。
    *|cRXP_WARN_这些鸟的仇恨范围比大多数敌人小|r。
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲里昂·炎风::253284|r 对话。
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>交任务 失踪的学者
    .accept 92850 >>接受任务 失踪的学者
step << Alliance
    #completewith next
    #label Shriekling Matriarch
    .goto 2521,51.39,68.2,20,0
    >>击杀 |cRXP_ENEMY_尖啸幼兽主母::253283|r。拾取 |T6119035:0|t[|cRXP_LOOT_尖啸幼兽主母的头颅|r]。
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    #completewith Shriekling Matriarch
    .goto 2521,52.02,65.51,130 >>进入洞穴
step << Alliance
    #requires Shriekling Matriarch
    .goto 2521,52.02,65.51
    >>击杀 |cRXP_ENEMY_尖啸幼兽主母::253283|r。拾取 |T6119035:0|t[|cRXP_LOOT_尖啸幼兽主母的头颅|r]。
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .subzoneskip 16672,1
    .goto 2521,52.37,66.5,15,0
    .goto 2521,51.75,66.33,15,0
    .goto 2521,51.05,66.66,15,0
    .goto 2521,51.16,67.53,15,0
    .goto 2521,51.49,69.08,20,0
    .goto 2521,51.5,69.11,25 >>离开洞穴
step << Alliance
    #completewith FindAameliaWindfieldA
    >>击杀 |cRXP_ENEMY_风歌爬行者::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_风歌爬行者肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
-- step << Horde
--     #completewith next
--     #label BrokenConstructB
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
--     *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location.|r
--     .complete 92679,1 --1/1 Find Aamelia Windfield
--     .target Aamelia Windfield::252800
-- step << Horde
--     #completewith BrokenConstructB
--     .goto 2521,51.397,68.644,15 >>Leave the cave
step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间于不同位置间移动。在路径点位置等待。|r
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间于不同位置间移动。在路径点位置等待。|r
    .turnin 92679 >>交任务 血之什一税
    .accept 92682 >>接受任务 派上用场
    .accept 92684 >>接受任务 暴躁的疾风陆行鸟
    .accept 92683 >>接受任务 扑翼蝶鳞粉
    .target Aamelia Windfield::252800
-- step
--     #completewith RipBanditsA
--     >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
--     >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
--     *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
--     .complete 92683,1 --5/5 Flutterfly Dust
--     .mob Flutterfly::251622
--     .use 253666
-- step
--     #completewith RipBanditsA
--     >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
--     .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
--     .mob Ornery Galestrider::251707

step << Alliance
    .isOnQuest 92682
    .isQuestNotComplete 92682
    .subzoneskip 16663,1
    .goto 2521,45.73,80.86
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    -- #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_LOOT_成熟的风暴苹果|r
    >>击杀 |cRXP_ENEMY_饥饿的强盗::252802|r|cRXP_WARN_（潜行状态）|r。
    *猎人提示：不停按Tab键提前选中它们，对其使用猎人印记，这样你就能拉开距离并从远处攻击。 << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684
    .goto 2521,48.416,80.537
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step
    #completewith WhatIsMyPurposeA
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #completewith WhatIsMyPurposeA
    >>对 |cRXP_ENEMY_扑翼蝶::251622|r 使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_扑翼蝶鳞粉|r。
    *|cRXP_WARN_如果扑翼蝶拍没有飞走，再次对其使用蝶拍|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_发生故障的旋风构造体::250929|r 对话。
    .accept 92698 >>接受任务 What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929
step << Horde Shaman
    #completewith ShamanLevel10
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    +1
step << Horde Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #completewith ShamanLevel10
    #label ShamanFluterflyDustA
    >>对 |cRXP_ENEMY_扑翼蝶::251622|r 使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_扑翼蝶鳞粉|r。
    *|cRXP_WARN_如果扑翼蝶拍没有飞走，再次对其使用蝶拍|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #requires ShamanFluterflyDustA
    #completewith ShamanLevel10
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label ShamanLevel10
    .xp 10 >>1
step << Horde Shaman
    #completewith next
    .hs >>炉石回到瓦拉纳尔
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞萨瑞亚·漫空::252382|r 对话。
    .accept 97243 >>接受任务 火焰的召唤
    .target Sessaria Skystride::252382
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞萨瑞亚·漫空::252382|r 对话。
    .trainer >>训练你的职业技能
    .target Sessaria Skystride::252382
    .money <0.12
    .xp <10,1
step << Horde Shaman
    #completewith CallOfFireA
    >>对 |cRXP_ENEMY_扑翼蝶::251622|r 使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_扑翼蝶鳞粉|r。
    *|cRXP_WARN_如果扑翼蝶拍没有飞走，再次对其使用蝶拍|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireA
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .turnin 97243 >>交任务  火焰的召唤
    .accept 97244 >>接受任务 Call to 火焰
    .target Olariaan Swiftburn::268592
-- step << Shaman
--     .isOnQuest 97244
--     .isQuestNotComplete 97244
--     .goto 2521,50.8,89.6
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>击杀 |cRXP_ENEMY_天空牧师法拉迪尔::268602|r。拾取他的战利品 |T839910:0|t[|cRXP_LOOT_法拉迪尔的心脏|r]。
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
-- step << Shaman
--     .isOnQuest 97244
--     .goto 2521,62.384,64.393
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    #completewith CallOfFireB
    >>对 |cRXP_ENEMY_扑翼蝶::251622|r 使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_扑翼蝶鳞粉|r。
    *|cRXP_WARN_如果扑翼蝶拍没有飞走，再次对其使用蝶拍|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireB
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>交任务  火焰的召唤
    .accept 97245 >>接受任务 火焰的召唤
step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    +1
step
    #completewith next
    >>击杀 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_低地疾风陆行鸟里脊肉|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>对 |cRXP_ENEMY_Flutterflies::251622|r 使用 |T537768:0|t[Flutterfly Swatter]。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_Flutterfly Dust|r。
    *|cRXP_WARN_如果蝴蝶没有飞走，再次对其使用拍子|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label GalestriderTenderloinA
    >>击杀 |cRXP_ENEMY_Ornery Galestrider::251707|r。拾取 |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r]。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间于不同位置间移动。|r
    *|cRXP_WARN_从远处寻找她，或跟随她的对话提示；箭头仅标示大概位置|r。
    .turnin 92682 >>交任务 派上用场
    .turnin 92684,3 >>交任务 暴躁的疾风陆行鸟
    .turnin 92698 >>交任务 What Is My Purpose?
    .turnin 92683 >>交任务 扑翼蝶鳞粉
    .accept 92685 >>接受任务 隔山有眼 << Alliance/Shaman
    .target Aamelia Windfield::252800
-- step -- version 1
--     #loop
--     .goto 2521,45.28,77.49,30,0
--     .goto 2521,44.89,75.51,30,0
--     .goto 2521,45.615,72.361,35,0
--     .goto 2521,43.551,74.999,35,0
--     .goto 2521,45.760,78.419,35,0
--     >>Kill |cRXP_ENEMY_Bandit Highwaymen|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
--     .complete 92685,1 --7/7 Blood-Stained Bandit Mask
-- step << Alliance
--     .isOnQuest 92682
--     .isQuestNotComplete 92682
--     .subzoneskip 16663,1
--     .goto 2521,63.33,73.65,15,0
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance/Shaman -- version 2
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_装备|r |T7791298:0|t[扑翼蝶拍] << Rogue
    >>击杀 |cRXP_ENEMY_强盗路霸::252820|r。拾取 |T133693:0|t[|cRXP_LOOT_染血的强盗面罩|r]。
    *|cRXP_WARN_留意苹果园中潜行的敌人|r。
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Alliance/Shaman
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>向山上走
step << Alliance/Shaman
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .goto 2521,45.760,78.419,35,0
    >>击杀 |cRXP_ENEMY_强盗路霸::252820|r。拾取 |T133693:0|t[|cRXP_LOOT_染血的强盗面罩|r]。
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
-- step << Horde
--     #requires Bandit Highwaymen
--     #completewith BrokenConstructC
--     #hidewindow
--     #loop
--     .goto 2521,45.615,72.361,35,0
--     .goto 2521,43.551,74.999,35,0
--     .goto 2521,45.760,78.419,35,0
--     +1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires Bandit Highwaymen
--     #completewith next
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
-- step << Horde
--     #requires Bandit Highwaymen
--     >>Kill |cRXP_ENEMY_Bandit Highwaymen::252820|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
--     .complete 92685,1 --7/7 Blood-Stained Bandit Mask
--     .mob Bandit Highwaymen::252820
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #label BrokenConstructC
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Kuramaa's Stump|r。
    >>击杀 |cRXP_ENEMY_库拉玛::268605|r。拾取 |T3549050:0|t[|cRXP_LOOT_库拉玛的面具|r]。
    *|cRXP_WARN_他会击退你，并受到额外火焰伤害。|r
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间于不同位置间移动。两个地点都查看|r。
    .turnin 92685 >>交任务 隔山有眼
    .accept 92693 >>接受任务 坚守阵地
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685
    -- .subzoneskip 16626,1
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>从山上跳下，|cRXP_WARN_在半空中|r使用 |T132845:0|t[踏空而行] 飞向路径点位置。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance/Shaman
    #loop
    .goto 2521,47.511,78.490,30,0
    .goto 2521,46.71,81.94,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间于不同位置间移动。两个地点都查看|r。
    *你可以从山上跳下，|cRXP_WARN_在半空中|r使用 |T132845:0|t[踏空而行] 飞向路径点位置。
    .turnin 92685 >>交任务 隔山有眼
    .accept 92693 >>接受任务 坚守阵地
    .target Aamelia Windfield::252800
step << Alliance/Shaman
    .goto 2521,46.71,81.94
    >>返回 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 所在的主要位置并与她对话。
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,剧情事件时长
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>跟随 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r。等待剧情演出。
    *当阿米莉亚停下时，如果你有营火且附近没有，就放置一个。获得增益并开始烹饪。
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿米莉亚·风野::252800|r 对话。
    .turnin 92693 >>交任务 坚守阵地
    .accept 92703 >>接受任务 Deliver the 新闻
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703
    .goto 2521,48.445,80.591
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
step << Alliance/!Shaman
    .isQuestAvailable 92703
    .subzoneskip 16638
    .hs >>炉石回到瓦拉纳尔
step << Alliance/!Shaman
    .isQuestAvailable 92703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多纳尔·微风::255940|r 对话。
    .vendor 255940 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,15 >>购买 |T132815:0|t[冰镇牛奶] << Mage/Druid
step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>交任务  火焰的召唤
    .accept 97257 >>接受任务 火焰的召唤
    .timer 35,剧情事件时长
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>等待剧情演出。在燃烧的 |cRXP_PICK_火盆|r 上使用 |T135432:0|t[恒焰火炬]。
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>你大约有5分钟时间跑回去。
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞萨瑞亚·漫空::252382|r 对话。
    .target Sessaria Skystride::252382
    .turnin 97257 >>交任务  火焰的召唤
-- step << Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time.|r
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde Shaman
    .isQuestAvailable 92703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多纳尔·微风::255940|r 对话。
    .vendor 255940 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Hunter
    .subzoneskip 16638,1
    .isQuestAvailable 92703
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多纳尔·微风::255940|r 对话。
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T134534:0|t[森林蘑菇]。|cRXP_BUY_你稍后会用它来喂你的宠物|r
    .collect 4604,5
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
step
    .isOnQuest 92703
    .isQuestComplete 92703
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_阿尔瓦里昂·风野::252448|r 对话。
    .turnin 92703,1 >>交任务 传递消息 << Warrior/Shaman
    .turnin 92703,2 >>交任务 传递消息 << Druid
    .turnin 92703,3 >>交任务 传递消息 << Rogue
    .turnin 92703 >>交任务 传递消息 << Hunter/Mage
    .target Alvarion Windfield::252448
step
    #completewith next
    *|cRXP_WARN_装备|r |T134435:0|t[种植铲] << Warrior/Shaman
    *|cRXP_WARN_装备|r |T133057:0|t[屋面锤] << Druid
    *|cRXP_WARN_装备|r |T134520:0|t[可靠的扳手] << Rogue
step << Alliance
    #completewith Turn in The Missing Scholar
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .target Seena Skybreaker::252377
    .accept 94003 >>接受任务 破天者壁垒
step << Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .train 6546 >>学习 |T132155:0|t[撕裂(等级2)]
    .train 2687 >>学习 |T132277:0|t[血性狂暴]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.12
    .xp <10,1
step << Alliance Druid
    .isQuestAvailable 92850
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance Druid
    .subzoneskip 16638,1
    .isQuestAvailable 92850
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>越过山
    .cooldown spell,1259705,<0,1
step << Horde Druid
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>越过山
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .accept 94006 >>接受任务 The Great Ursera 精神
    .target Lotheluum Starbreeze::252359
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .train 16689 >>学习 |T136063:0|t[自然之握]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>学习 |T136081:0|t[回春术 (等级 2)]
    .train 5232 >>学习 |T136078:0|t[野性印记 (等级 2)]
    .train 8924 >>学习 |T136096:0|t[月火术 (等级 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359
    .money <0.12
    .xp <10,1
step << Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔森·夜风::252379|r 对话。
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 6770 >>学习 |T132310:0|t[闷棍]
    .train 2070,1
    .train 5171 >>训练 |T132306:0|t[切割]
    .train 6774,1
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .train 8696,1
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.09
    .xp <10,1
step << Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .train 13165 >>学习 |T136076:0|t[雄鹰守护]
    .train 13549 >>学习 |T132204:0|t[毒蛇钉刺 (等级 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <10,1
step << Hunter
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .accept 94978 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Hunter Alliance
    .goto 2521,63.023,77.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安特拉瑞娅·凝云::252390|r 对话。
    >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]
    .vendor 252390 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .collect 2515,1000
    .target Antelariaa Cloudgaze::252390
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_双持|r |T134520:0|t[可靠的扳手] |cRXP_WARN_和|r |T7791298:0|t[扑翼蝶拍] << Rogue
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r 对话。
    .turnin 92850 >>交任务 失踪的学者
    .accept 99260 >>接受任务 Fillion's Mission
    .target Fillion Flamebreeze::253284
step << Alliance
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉德林·晚风::252475|r 对话。
    .target Elaadrin Evengale::252475
    .turnin 99260 >>交任务 Fillion's Mission
    .accept 92840 >>接受任务 捕风
-- Deathskip past 10; might need later
-- step << Alliance
--     .isOnQuest 92840
--     .isQuestNotComplete 92840
--     .goto 2521,67.41,80.46
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     -- .subzoneskip 16638,1
--     .target Spirit Healer::6491
step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_风歌爬行者::254588|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94978 >>交任务 驯服野兽
    .accept 94979 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_右键点击你的 |cRXP_ENEMY_风歌爬行者::254588|r 的单位框体并选择解散，否则你将无法驯服|r |cRXP_ENEMY_硬甲蝎::3126|r
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94979 >>交任务 驯服野兽
    .accept 94013 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #loop
    .goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0

    -- .goto 2521,54.23,75,40,0
    -- .goto 2521,53.45,80.93,40,0
    -- .goto 2521,52.56,77.82,40,0
    -- .goto 2521,61.944,68.828,35,0
    -- .goto 2521,59.516,64.846,35,0
    -- .goto 2521,57.041,67.729,35,0
    -- .goto 2521,54.322,75.080,35,0
    -- .goto 2521,51.925,80.458,35,0
    -- .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_瓦尔德伦::250874|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94013 >>交任务 驯服野兽
    .accept 94050 >>接受任务 训练野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔多拉·疾风::254411|r 对话。
    .turnin 94050 >>交任务 训练野兽
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔多拉·疾风::254411|r 对话。
    .train 4195 >>训练 |T136112:0|t[持久耐力]
    .train 24547 >>训练 |T136094:0|t[自然护甲]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Horde Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_对|r 风歌爬行者::254588|cRXP_WARN_ 施放|cRXP_ENEMY_ |T132164:0|t[驯服野兽] |r来驯服它|r -- .tame 1997
    *|cRXP_WARN_注意：|r 如果所有螃蟹都已死亡，你也可以先驯服一只 |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r 直到你找到一只螃蟹为止。
    .train 2981 >>|cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.mob Windsong Crawler::254588
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝兰·风木::256507|r 对话。
    .target Belann Windwood::256507
    .accept 93791 >>接受任务Speak with Belann
    .turnin 93791 >>交任务Speak with Belann
    .accept 93797 >>接受任务Boughs in the Wind
step << Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿纳萨玛斯·以太之风::252373|r 对话
    .train 168 >>学习 |T135843:0|t[霜甲术]
    .train 122 >>学习 |T135848:0|t[冰霜新星]
    .train 5504 >>学习 |T132794:0|t[造水术]
    .train 587 >>学习 |T133952:0|t[造食术]
    .train 5505 >>学习 |T132794:0|t[造水术 (等级 2)]
    .skipgossipid 136807
    .money <0.08
    .xp <10,1
    .target Anathamaas Aetherwind::252373
step << Alliance Hunter
    #completewith next
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_风歌爬行者::254588|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance !Hunter
    #completewith next
    >>击杀 |cRXP_ENEMY_风歌爬行者::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_风歌爬行者肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>绕过这座山。
    *|cRXP_WARN_触碰附近的龙卷风，以此获得 40% 移动速度加成，持续5分钟。造成伤害会移除该效果|r。
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_树枝|r。
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance Hunter
    .isOnQuest 94013
    .isQuestNotComplete 94013
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_风歌爬行者::254588|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .subzone 16626,1
    .isOnQuest 94013
    .isQuestComplete 94013
    .isOnQuest 92840
    .isQuestComplete 92840
    .subzoneskip 16638
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance !Hunter
    .isOnQuest 92840
    .isQuestComplete 92840
    .subzoneskip 16638
    .goto 2521,49.46,70.12,30,0
    .goto 2521,65.577,76.650
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
-- Deathskip past 10; might need later
-- step << Alliance --The correct step; the beta issue still needs to be fixed.
--     .subzoneskip 16638
--     .isOnQuest 92840
--     .isQuestComplete 92840
--     .goto 2521,48.37,70.01
-- -- #ignorecorpse
--     .deathskip >>Die to the monsters or jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .subzoneskip 16638,1
--     .target Spirit Healer
step << Alliance
    .train 2366,3
    #completewith next
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .train 2366,3
    .isOnQuest 97968
    .isQuestComplete 97968
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希瑞尔·夜雨::254345|r 对话。
    .turnin 97968 >>交任务 露营基础：草药学
    .target Syriel Nightrain::254345
step << Mage
    #completewith next
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝兰·风木::256507|r 对话。
    .turnin 93797 >>交任务Boughs in the Wind
    .target Belann Windwood::256507
step << Alliance Hunter
    #completewith next
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94978 >>交任务 驯服野兽
    .accept 94979 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    +|cRXP_WARN_右键点击你的 |cRXP_ENEMY_风歌爬行者::254588|r 的单位框体并选择解散，否则你将无法驯服|r |cRXP_ENEMY_硬甲蝎::3126|r
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_暴躁的疾风陆行鸟::251707|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94979 >>交任务 驯服野兽
    .accept 94013 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    >>击杀 |cRXP_ENEMY_天空跳跃者::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #loop
    .goto 2521,54.23,75,40,0
    .goto 2521,53.45,80.93,40,0
    .goto 2521,52.56,77.82,40,0
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_在最大射程下，|r|cRXP_WARN_对一只|r |cRXP_ENEMY_瓦尔德伦::250874|r |cRXP_WARN_使用|r |T132164:0|t[驯兽棒]。
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .turnin 94013 >>交任务 驯服野兽
    .accept 94050 >>接受任务 训练野兽
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔多拉·疾风::254411|r 对话。
    .turnin 94050 >>交任务 训练野兽
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔多拉·疾风::254411|r 对话。
    .train 4195 >>训练 |T136112:0|t[持久耐力]
    .train 24547 >>训练 |T136094:0|t[自然护甲]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Alliance
    #loop
    .goto 2521,58.85,75.49,30,0
    .goto 2521,59.05,76.35,30,0
    .goto 2521,59.8,75.68,30,0
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>击杀 |cRXP_ENEMY_Skyhopper::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Horde
--     #loop
--     .goto 2521,63.1,77.59,20,0
--     .goto 2521,62.67,77.77,15,0
--     .goto 2521,63.13,77.32,15,0
--     .goto 2521,62.97,76.91,15,0
--     .goto 2521,63.8,78.01,30,0
--     .goto 2521,63.16,78.97,30,0
--     .goto 2521,65.37,78.53,40,0
--     .goto 2521,58.85,75.49,30,0
--     .goto 2521,59.05,76.35,30,0
--     .goto 2521,59.8,75.68,30,0
--     .goto 2521,61.4,74.76,40,0
--     .goto 2521,62.61,76.14,40,0
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time.|r
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉德林·晚风::252475|r 对话。
    .turnin 92840 >>交任务 捕风
    .accept 92834 >>接受任务 Avenged Tenfold
    .accept 92860 >>接受任务 In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_装备|r |T7810733:0|t[时光之弓] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92860 >>交任务 In Service of Zephras << Alliance
    .turnin 93949 >>交任务 窃听虫
    .accept 93320 >>接受任务塔楼防御  << Alliance
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0 << Alliance
    .goto 2521,64.98,77.12,30,0 << Alliance
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>登上塔
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92860 >>交任务 In Service of Zephras  << Alliance
    .turnin 93949 >>交任务 窃听虫
    .accept 93320 >>接受任务塔楼防御 << Alliance
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉内·漫云::259012|r 对话。
    .accept 94896 >>接受任务 援助难民
    .accept 94897 >>接受任务 爱人的命运
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 93320
    .subzoneskip 16638,1
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>从山上跳下来，使用 |T132845:0|t[Walk on Air] 飞往路径点所在地区。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith next
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawler::270201|r。
    *拾取战利品 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yorana Windyreed::252378|r 对话。
    .turnin 93320 >>交任务 塔防建材
    .accept 92642 >>接受任务 切断后勤
    .accept 92645 >>接受任务 解决“破坏者”
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取战利品 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>击杀 |cRXP_ENEMY_奥拉凯斯治疗者|r 和 |cRXP_ENEMY_奥拉凯斯斗士|r。
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>进入房屋到二楼，击杀 |cRXP_ENEMY_指挥官贝尔吉洛斯::252666|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取战利品 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯斗士::270201|r 和 |cRXP_ENEMY_奥拉凯斯治疗者::254596|r。
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834
    .subzoneskip 17675,1
    -- .subzone 16593
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .target Urs'endris::255853
    .turnin 94006 >>交任务 The Great Ursera 精神
    .accept 94638 >>接受任务 力量 and Mercy
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取战利品 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>击杀 |cRXP_ENEMY_奥拉凯斯|r。
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith next
    #label Commander Belguilos Druid
    >>进入房屋到二楼，击杀 |cRXP_ENEMY_指挥官贝尔吉洛斯::252666|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>越过山
step << Alliance Druid
    #requires Commander Belguilos Druid
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>进入房屋到二楼，击杀 |cRXP_ENEMY_指挥官贝尔吉洛斯::252666|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取 |T1379232:0|t[|cRXP_LOOT_奥拉凯斯风石护符|r]。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯斗士::270201|r 和 |cRXP_ENEMY_奥拉凯斯治疗者::254596|r。
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yorana Windyreed::252378|r 对话。
    .turnin 92645 >>交任务 解决“破坏者”
    .turnin 92642 >>交任务 切断后勤
    .accept 92880 >>接受任务 返回 to Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92880,1 >>交任务 返回Valanaar << Alliance Warrior
    .turnin 92880,2 >>交任务 返回Valanaar << Alliance Rogue
    .turnin 92880,3 >>交任务 返回Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid
    .accept 92881 >>接受任务 The 高 Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Return to Valanaar
    .goto 2521,65.58,68.58,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>绕过山，然后爬上塔
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92880,1 >>交任务 返回Valanaar << Alliance Warrior
    .turnin 92880,2 >>交任务 返回Valanaar << Alliance Rogue
    .turnin 92880,3 >>交任务 返回Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid
    .accept 92881 >>接受任务 The 高 Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .turnin 92881 >>交任务 The 高 Elder's Request
    .accept 92643 >>接受任务 叛徒
    .target Talaanis::252476
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    .isNotOnQuest 98512
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    .isNotOnQuest 98512
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房屋里与 |cRXP_FRIENDLY_贝兰·风木::256507|r 对话。
    .vendor 256507 >>出售垃圾，需要时修理
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    .isNotOnQuest 98512
    .goto 2521,63.96,74.15
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
-- Deathskip past 10; might need later
-- step << Alliance
--     .subzoneskip 16638,1
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     -- *|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] << Alliance Warrior
--     -- *|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] << Alliance Hunter/Alliance Mage/Alliance Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r outside the house.
--     .vendor 252479 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *|cRXP_WARN_We need them for Cooking later.|r
--     .target Daeann Steelwind::252479
--     .goto 2521,65.4,80.22
--     .skipgossipid 137530
-- step << Alliance
--     -- .subzoneskip 16638,1
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     .goto 2521,66.42,83.48
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
-- step << Horde
--     #completewith next
--     #label BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     #optional
--     #completewith BuggedHordeA
--     .goto 2521,65.93,76.37,8,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Horde
--     #requires BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     .goto 2521,66.18,76.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     .abandon 93949 >>Abandon Bugged
step << Horde Druid
    .isOnQuest 94006
    .subzoneskip 16638,1
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>跟随路线离开瓦拉纳尔
step << Horde Druid
    .isOnQuest 94006
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>从山上跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .turnin 94006 >>交任务 The Great Ursera 精神
    .accept 94638 >>接受任务 力量 and Mercy
    .target Urs'endris::255853
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Alliance
    .goto 2521,59.719,67.016,35,0 << Druid --Remove if we add deathskips again
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    *|cRXP_WARN_触碰附近的龙卷风，以此获得 40% 移动速度加成，持续5分钟。造成伤害会移除该效果|r。
    .accept 98512 >>接受任务 奥拉凯斯刺客
    .target Fendaal Windstone::273017
step << Alliance
    #completewith Fendaal Windstone
    >>击杀 |cRXP_ENEMY_奥拉凯斯刺客::254626|r。
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.13,60.26
    >>跟随箭头
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_死亡教徒|r。
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dead 教徒::253372|r 对话。
    .target Dead Cultist::253372
    .turnin 92643 >>交任务 叛徒
    .accept 92644 >>接受任务 Unfortunate 新闻
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯刺客::254626|r。
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    .turnin 98512 >>交任务 奥拉凯斯刺客
    .target Fendaal Windstone::273017
step << Druid
    .goto 2521,54.284,65.803
    >>击杀 |cRXP_ENEMY_Ur'endra::258443|r。
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .isOnQuest 94638
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>从|cRXP_WARN_较低的那座山（不是你所在的这座）|r跳下，使用 |T132845:0|t[踏空而行] 飞向任务发布者。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .target Urs'endris::255853
    .turnin 94638 >>交任务 力量与仁慈
step << Alliance Druid
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>击杀 |cRXP_ENEMY_风歌爬行者::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_风歌爬行者肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    .goto 2521,57.25,60.92,50 >>绕过群山 
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>击杀 |cRXP_ENEMY_风歌爬行者::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_风歌爬行者肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde Druid
--     #completewith next
--     #label CrawlerMeatDruidA
--     .goto 2521,59.59,66.7,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
-- step << Horde Druid
--     #completewith CrawlerMeatDruidA
--     .goto 2521,57.25,60.92,50 >>Go around the mountains 
-- step << Horde
--     #requires CrawlerMeatDruidA << Druid
--     #loop
--     .goto 2521,53.56,59.17,35,0
--     .goto 2521,52.91,58.56,35,0
--     .goto 2521,52.08,59.23,35,0
--     .goto 2521,52.49,57.3,35,0
--     .goto 2521,53.55,55.55,35,0
--     .goto 2521,54.3,57.94,35,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>击杀 |cRXP_ENEMY_风歌爬行者::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_风歌爬行者肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Horde
    .isQuestAvailable 93159
    .goto 2521,52.790,57.628
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] 以获得 10% 移动速度加成。
    .cooldown spell,1259686,>0,1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #loop
--     .goto 2521,53.029,51.423,35,0
--     .goto 2521,53.621,50.493,35,0
--     .goto 2521,52.878,49.641,35,0
--     .goto 2521,53.129,47.738,35,0
--     .goto 2521,52.528,45.922,35,0
--     .goto 2521,51.574,46.567,35,0
--     .goto 2521,49.511,45.931,35,0
--     .goto 2521,49.917,44.806,35,0
--     .goto 2521,50.642,44.296,35,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
step << Alliance
    #completewith next
    .isQuestAvailable 93159
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>越过瀑布并绕过山脉。
step << Horde
    .isQuestAvailable 93159
    #completewith next
    .goto 2521,59.444,67.060,45,0
    .goto 2521,58.72,52.77,30 >>绕过山脉并穿过大桥。
step
    .isQuestAvailable 93159
    .subzoneskip 16631
    .goto 2521,58.24,51.21,20,0
    .goto 2521,57.77,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Brother Zendraas|r 对话
    .vendor 272045 >>把垃圾物品卖给商人
    *别卖 |T133970:0|t[多汁狼肉]、|T132832:0|t[小蛋] 或 |T133972:0|t[陆行鸟肉]。 << Alliance
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    .skipgossip 272045,1,1,1,2
    .skipgossipid 141672
    .target Brother Zendraas::272045
    --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
    --1: What trade would that be?
    --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
    --2: Show me what you have available for trade.
step << Warrior
    .goto 2521,56.56,50.36
    >>击杀 |cRXP_ENEMY_Zaal 暴风之盾::257196|r。拾取他的 |T134959:0|t[|cRXP_LOOT_Skybreaker Bulwark|r]。
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip 
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    #completewith Learn
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。
    *拾取 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r]。
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    .goto 2521,58.81,46.74,30,0
    .goto 2521,58.81,43.57,40,>>穿过大桥。
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇怪的隐士::251684|r 对话。
    .accept 93159 >>接受任务 奇怪的隐士
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>交任务 奇怪的隐士
    .accept 93160 >>接受任务 森林的馈赠
    .accept 93172 >>接受任务 解放空洞风灵
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit|r 对话。
    .accept 98285 >>接受任务 露营基础：工程学
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。 
    *拾取它们的 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r]。
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_空洞风灵::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,57.45,33.8,40,0
    .goto 2521,56.83,33.99,30,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_雷萨安|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #completewith Abandoned BelongingsZ
    >>击杀 |cRXP_ENEMY_空洞风灵::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1
    .goto 2521,56.61,29.26,20,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.14,30.47,10,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.1,33.38
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith Wind Hollow
    #hidewindow
    #loop
    .goto 2521,59.08,34.75,30,0
    .goto 2521,57.26,33.48,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,58.14,30.47,20,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,56.61,29.26,20,0
    +1
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_空洞风灵::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_空洞风灵::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #completewith Unnerving Silence
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。 
    *拾取 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r]。 << Alliance
    *拾取它们的 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_特别是在树周围|r点击 |cRXP_WARN_Seeds|r。
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .target Elegael Thornpaw::257944
    .turnin 94484 >>交任务 Unnerving 默然
    .accept 94485 >>接受任务 贵妇之泪
    .accept 94486 >>接受任务 包扎用的羽毛 << Alliance
    .accept 94487 >>接受任务 遭弃与不配 
step << Alliance
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Tear Moss|r |cRXP_WARN_树上|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Alliance
    #completewith next
    >>击杀 |cRXP_ENEMY_奥拉凯斯步兵::252665|r 和 |cRXP_ENEMY_奥拉凯斯逐风者::252664|r。 
    *拾取它们的战利品 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] 和 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vayn Moongaze|r 对话
    .accept 93165 >>接受任务 充耳不闻的怜悯
    .target Vayn Moongaze
step
    #label Unnerving Silence
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>击杀 |cRXP_ENEMY_奥拉凯斯步兵|r 和 |cRXP_ENEMY_奥拉凯斯逐风者|r。 
    *拾取它们的 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]、|T133856:0|t[|cRXP_LOOT_Al'Alketh Cultist's 耳朵|r] 和 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。 << Alliance
    *拾取战利品 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]。 << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Alketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
    .goto 2521,62.83,38.25,35,0
    .goto 2521,62.08,36.7,35,0
    .goto 2521,61.17,35.44,35,0
    .goto 2521,60.82,37.23,35,0
    .goto 2521,60.33,37.46,35,0
    .goto 2521,60.9,38.88,35,0
    .goto 2521,59.79,38.95,35,0
    .goto 2521,59.9,40.38,35,0
    .goto 2521,58.53,39.85,35,0
    .goto 2521,57.94,39.99,35,0
    .goto 2521,57.36,40.86,35,0
    .goto 2521,57.24,42.8,35,0
    .goto 2521,55.38,42.17,35,0
    .goto 2521,54.55,42.17,35,0
    .goto 2521,55.59,39.23,35,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。 
    *拾取 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r] 和 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Alliance
    *拾取它们的 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons 
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Seeds|r |cRXP_WARN_特别是在树周围|r。
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_在树上|r点击 |cRXP_WARN_Tear Moss|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_在树上|r点击 |cRXP_WARN_Tear Moss|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_特别是在树周围|r点击 |cRXP_WARN_Seeds|r。
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇怪的隐士::251684|r 对话。
    .turnin 93160 >>交任务 森林的馈赠
    .turnin 93172 >>交任务 解放空洞风灵
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. 
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
--     .complete 92741,1 --8/8 Shriekling Talons 
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇怪的隐士::251684|r 对话。
    .turnin 93160 >>交任务 森林的馈赠
    .turnin 93172 >>交任务 解放空洞风灵
    .target Strange Hermit::251684
step
    .train 4036,3
    .isOnQuest 98285
    .isQuestComplete 98285
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇怪的隐士::251684|r 对话。
    .turnin 98285 >>交任务 露营基础：工程学
    .target Strange Hermit::251684
step
    #hidewindow
    #completewith Pristine Shriekling Feathers
    #loop
    .goto 2521,54.93,38.11,40,0
    .goto 2521,55.92,36.83,40,0
    .goto 2521,57.49,37.79,40,0
    .goto 2521,58.93,37.91,40,0
    .goto 2521,60.27,38.12,40,0
    .goto 2521,61.61,36.4,40,0
    .goto 2521,61.41,39.14,40,0
    .goto 2521,59.67,40.26,40,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。拾取 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r] 和 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Alliance
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。拾取 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons 
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_贵妇之泪苔藓|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。拾取 |T1508517:0|t[|cRXP_LOOT_尖啸幼兽的利爪|r] 和 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Alliance
    >>击杀 |cRXP_ENEMY_影风尖啸幼兽::256092|r。拾取 |T132927:0|t[完好的尖啸幼兽羽毛]。 << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94485 >>交任务 贵妇之泪
    .turnin 94487 >>交任务 遭弃与不配
    .turnin 94486 >>交任务 包扎用的羽毛 << Alliance
    .accept 94488 >>接受任务 血脉的羁绊
    .accept 94489 >>接受任务 背叛的伤痕
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490
    .goto 2521,65.54,36.3
    >>击杀 |cRXP_ENEMY_指挥官哈利恩::253622|r。拾取他的 |T134161:0|t[|cRXP_LOOT_头颅|r] 和 |T135332:0|t[撕破的信件]。
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1
step
    #completewith next
    >>使用你背包中的 |T134332:0|t[撕破的信件] 来开始任务。
    .accept 94490 >>接受任务 撕破的信件
    .use 265476
step << Alliance
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在洞穴入口与 |cRXP_FRIENDLY_Vayn Moongaze|r 对话
    .turnin 93165 >>交任务 充耳不闻的怜悯
    .target Vayn Moongaze
step
    .goto 2521,64.29,34.23,30,0
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击洞穴内的 |cRXP_PICK_乔雷尔·风歌|r。
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step
    #loop
    .goto 2521,64.51,34.89,10,0
    .goto 2521,64.98,34.96,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_德鲁伊|r
    -- >>|cRXP_WARN_Do not move while clicking them or it can bug.|r
    .complete 94489,1,3 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    #loop
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,25,0
    .goto 2521,64.52,31.88,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_德鲁伊|r
    -- >>|cRXP_WARN_Do not move while clicking them or it can bug.|r
    .complete 94489,1,5 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    #loop
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_德鲁伊|r，点击时不要移动，否则可能会出问题。
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,65.23,34.53,30,0
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94489 >>交任务 背叛的伤痕
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>离开洞穴
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94489 >>交任务 背叛的伤痕
    .turnin 94490 >>交任务 撕破的信件
    .turnin 94488 >>交任务 血脉的羁绊
    .accept 94491 >>接受任务 The Fate of the Den
    .target Elegael Thornpaw::257944
step
    .isOnQuest 94491 << Alliance
    .isOnQuest 94896 << Horde
    .subzoneskip 16631,1
    .hs >>炉石回到申达尔村
    .use 6948
step << Warrior Alliance
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .target Seena Skybreaker::252377
    .turnin 94003 >>交任务 破天者壁垒
step << Warrior Alliance
    .isQuestAvailable 94491
    .subzoneskip 16638,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .train 1160 >>学习 |Tinterface/icons/ability_warrior_warcry.blp:0|t[挫志怒吼]
    .train 6190,1
    .train 6572 >>学习 |Tinterface/icons/ability_warrior_revenge.blp:0|t[复仇]
    .train 6574,1
    .train 1310185 >>学习 |T136031:0|t[战术掌握]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Alliance 
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房屋内与 |cRXP_FRIENDLY_妮雅拉·明火::257006|r 对话。
    .turnin 93317 >>交任务 捕蟹季节
    .target Nyalah Brightfire::257006
-- step << Alliance Rogue
--     .goto 2521,59.9,72.48
--     *|cRXP_WARN_Use the Interact Key through the Wall|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1766 >>Train |T132219:0|t[Kick]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .money <0.16
--     .xp <12,1
step << Alliance Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔森·夜风::252379|r 对话。
    .train 1766 >>训练 |T132219:0|t[脚踢]
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔阿娜·疾风::252389|r 对话。
    .train 14281 >>学习 |T132218:0|t[奥术射击 (等级 2）]
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <12,1
step << Alliance Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .train 5242 >>学习 |T132333:0|t[战斗怒吼 (等级 2)]
    .train 7384 >>训练 |T132223:0|t[压制]
    .train 7887,1
    .train 72 >>学习 |T132357:0|t[盾击]
    .train 1671,1
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .turnin 94491 >>交任务 巢穴的命运
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .subzoneskip 16638,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈露娜·迅愈::254081|r 对话。
    .train 5229 >>学习 |T132126:0|t[激怒]
    .train 8936 >>学习 |T136085:0|t[愈合]
    .target Naeluna Swiftmend::254081
    .money <0.16
    .xp <12,1 
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃拉内·漫云::259012|r 对话。
    .turnin 94896 >>交任务 援助难民
    .turnin 94897 >>交任务 爱人的命运
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .turnin 92644 >>交任务 不幸消息
    .accept 94568 >>接受任务 密教的真正计划
    .disablecheckbox
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Unfortunate News
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>登上塔
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .turnin 92644 >>交任务 不幸消息
    .accept 94568 >>接受任务 密教的真正计划
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>与 |cRXP_FRIENDLY_塔拉尼斯·影歌::252476|r 对话。
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_等待剧情演出|r。
    *如果你拥有所需材料，烹饪 |T132834:0|t[Herb Baked 道具] 和 |T133974:0|t[Charred 经典怀旧服 NPC 肉]。
    *否则，使用你的其他专业技能制作任何你能制作的物品。
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r |cRXP_WARN_在你身边|r 对话。
    .turnin 94568 >>交任务 密教的真正计划
    .accept 92640 >>接受任务 非常时期
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640
    .isQuestNotComplete 92640
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>从山上跳下来，使用 |T132845:0|t[Walk on Air] 飞往路径点所在地区。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿耶莎·晨歌::251968|r 对话。
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊拉德林·晚风::252475|r 对话。
    .turnin 92834 >>交任务 Avenged Tenfold
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊阿达瑞亚·苦风::253004|r 对话。
    .turnin 92741 >>交任务 不速之客
    .target Iaadaria Bitterwind::253004
step << Alliance
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92640 >>交任务 非常时期
    .accept 93065 >>接受任务 准备作战
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Prepare for Battle
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>登上塔
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::252383|r 对话。
    .turnin 92640 >>交任务 非常时期
    .accept 93065 >>接受任务 准备作战
    .target Valennia Stormfist::252383
step << Alliance
    .subzoneskip 16638,1
    .isOnQuest 93065
    .goto 2521,63.9,74.16
    .cast 1259705 >>使用 |T236219:0|t[阅读魔网] 以获得 100% 的被动法力与生命回复提升。
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦伦妮亚·风暴之拳::253844|r 对话。
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>交任务 准备作战
    .target Valennia Stormfist::253844
step << Horde
    >>放弃任何剩余的 Camping 101 任务。
    *在「使用中物品」框架中点击宏来一次性放弃它们。
    .abandon 97970 >>放弃任务 Camping 101: 采矿。
    .abandon 97971 >>放弃任务 Camping 101: 剥皮。
    .abandon 96646 >>放弃任务 Camping 101: 烹饪。
    .abandon 97968 >>放弃任务 Camping 101: 草药学。
    .abandon 97965 >>放弃任务 Camping 101: 急救。
    .abandon 97967 >>放弃任务 Camping 101: 钓鱼。
    .abandon 97963 >>放弃任务 Camping 101: 炼金术。
    .abandon 97964 >>放弃任务 Camping 101: 锻造。
    .abandon 97973 >>放弃任务 Camping 101: 裁缝。
    .abandon 98286 >>放弃任务 Camping 101: 附魔。
    .abandon 97969 >>放弃任务 Camping 101: 制皮。
    .abandon 98285 >>放弃任务 Camping 101: 工程学。
    .macro Abandon 101,130722 >>放弃任务 101。
step << Alliance
    #completewith Magical City of Dalaran
    >>放弃任何剩余的 "露营基础" 任务。
    *点击 使用中物品 框架中的宏来立即放弃全部。
    .abandon 97970 >>放弃任务 露营基础：采矿
    .abandon 97971 >>放弃任务 露营基础：剥皮
    .abandon 96646 >>放弃任务 露营基础：烹饪
    .abandon 97968 >>放弃任务 露营基础：草药学
    .abandon 97965 >>放弃任务 露营基础：急救
    .abandon 97967 >>放弃任务 露营基础：钓鱼
    .abandon 97963 >>放弃任务 露营基础：炼金术
    .abandon 97964 >>放弃任务 露营基础：锻造
    .abandon 97973 >>放弃任务 露营基础：裁缝
    .abandon 98286 >>放弃任务 露营基础：附魔
    .abandon 97969 >>放弃任务 露营基础：制皮
    .abandon 98285 >>放弃任务 露营基础：工程学
    .macro Abandon 101,130722 >>放弃 101
step << Alliance Mage
    .goto 2521,65.4,80.22,10,0
    .goto 2521,65.91,80.58
    >>进入铁匠铺旁的大型石厅，继续深入上层房间，然后右转。
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿纳萨玛斯·以太之风::252373|r 对话。
    .train 145 >>学习 |T135812:0|t[火球术 (等级 3）]
    .train 604 >>学习 |T136006:0|t[魔法抑制]
    .train 597 >>学习 |T133952:0|t[造食术 (等级 2）]
    .train 130 >>学习 |T135992:0|t[缓落术]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
    .money <0.24
    .xp <12,1
step << Alliance
    #completewith next
    +|cRXP_WARN_飞艇可以在其6分钟循环的任何时间到达。当你等待时，完成以下事项：|r
    *向商人出售垃圾并修复你的装备。
    *烹饪食物并获得篝火增益供以后使用。
    *装备升级并选择天赋。
step << Alliance
    #completewith next
    #label Magical City of Dalaran
    .goto 2521,65.82,81.18,15,0
    .goto 2521,65.44,80.46,15,0
    .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Denaaris Stargale::259084|r 对话。
    -- .turnin 94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>接受任务 欢迎来到艾泽拉斯
    .skipgossipid 137530
    .target Halavuul Cragwind::252388
step << Alliance
    #completewith Magical City of Dalaran
    .goto 2521,65.81,83.44
    .zone 1424 >>乘坐飞艇前往达拉然
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_不要提前跳离飞艇，否则你可能会被推离平台|r。
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Denaaris Stargale::259084|r 对话。
    .target Denaaris Stargale::259084
    -- .turnin 94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>接受任务 欢迎来到艾泽拉斯
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师安斯雷姆·鲁因维沃尔::2543|r 对话。
    .accept 94912 >>接受任务 自然之子
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
-- step << Alliance Druid
--     .goto 1453/0,1099.900,-8776.700
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree::5504|r.
--     .turnin 94912 >>Turn in Child of Nature
--     .accept 94914 >>Accept Moonglade
--     .target Sheldras Moontree::5504
-- step << Alliance Druid
--     .goto 1450/1,-2678.600,8020.000
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r.
--     .target Dendrite Starblaze::11802
--     .turnin 94914 >>Turn in Moonglade
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯瑟琳·利兰|r 对话
    >>|cRXP_BUY_购买一个|r |T134335:0|t[闪光的小珠] |cRXP_BUY_和三个|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_从她购买。这是为了一个900xp任务|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Alliance Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_这用于制作|r |T135805:0|t[Basic Campfires] |cRXP_WARN_在船上来升级你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能而不浪费时间|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target 萨尔曼·穆比
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Alliance Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在西部荒野和黑海岸更快交任务：|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target 拍卖师亚克森
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在西部荒野和黑海岸更快交任务：|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师亚克森
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Alliance
    .goto 1453,48.1,88.35,10,0
    .goto 1453,49.36,87.37,10,0
    .goto 1453,48.85,86.94,10,0
    .goto 1453,48.76,87.71,10,0
    .goto 1453,54.8,83.65,25,0
    .goto 1453,53.78,78.72,25,0
    .goto 1453,55.67,75.99,25,0
    .goto 1453,59.9,71.41,25,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根::1748|r 在堡垒内对话
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>交任务 欢迎来到艾泽拉斯
--    .accept 93963 >>Accept Exploring the Alliance
    .accept 98021 >>接受任务 前往哨兵岭的旅程 << !Hunter
--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gilbert Gray::267118|r 对话
    .target Gilbert Gray::267118
    .accept 95065 >>接受任务 Fishin' 时间
    .turnin 95065 >>交任务 Fishin' 时间
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的专业技能书籍中)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的专业技能书籍中)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的专业技能书籍中)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_如果需要，在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救]|r
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >>乘船前往黑海岸
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>交任务 巢穴的命运
step << Horde
    .isOnQuest 93317
    .isQuestComplete 93317
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房屋里与 |cRXP_FRIENDLY_妮雅拉·明火::257006|r 对话。
    .turnin 93317 >>交任务 捕蟹季节
    .target Nyalah Brightfire::257006
step << Warrior Horde
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .turnin 94003 >>交任务 破天号 Bulwark
    .target Seena Skybreaker::252377
step << Warrior Horde
    .isQuestAvailable 93736
    .subzoneskip 16638,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .train 5242 >>学习 |T132333:0|t[战斗怒吼 (等级 2)]
    .train 7384 >>训练 |T132223:0|t[压制]
    .train 7887,1
    .train 72 >>学习 |T132357:0|t[盾击]
    .train 1671,1
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Warrior Horde
    .isQuestAvailable 93736
    .subzoneskip 16638,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希娜·破天者::252377|r 对话。
    .train 1160 >>学习 |Tinterface/icons/ability_warrior_warcry.blp:0|t[挫志怒吼]
    .train 6190,1
    .train 6572 >>学习 |Tinterface/icons/ability_warrior_revenge.blp:0|t[复仇]
    .train 6574,1
    .train 1310185 >>学习 |T136031:0|t[战术掌握]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Horde Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔森·夜风::252379|r 对话。
    .train 1766 >>训练 |T132219:0|t[脚踢]
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Horde
    .isOnQuest 93737
    .isQuestComplete 93737
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里阿尼·夜风::256083|r 对话。
    .turnin 93737 >>交任务 损坏的构造体
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Railee Thriceforged::257422|r 对话。
    .vendor 257422 >>把垃圾物品卖给商人。
    *别卖 |T132832:0|t[小蛋] 和 |T133972:0|t[陆行鸟肉]。 << Horde
    *|cRXP_WARN_之后烹饪会用到它们。|r
    .target Railee Thriceforged::257422
step << Horde
    .isOnQuest 93736
    .isQuestComplete 93736
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩达莉亚·雾凝::254344|r 对话。
    .turnin 93736 >>交任务 Unwelcome 调酒师桑塔基德 <酒类商人>
    .target Endaria Mistgaze::254344
step << Horde
    .isOnQuest 92708
    .isQuestComplete 92708
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿耶莎·晨歌::251968|r 对话。
    .turnin 92708 >>交任务 大冒险
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>放弃任务 大冒险
step << Horde
    .zoneskip 2521,1
    .isQuestAvailable 95350
    .goto 2521,57.921,80.781
    .zone 1412 >>乘坐飞艇前往|cRXP_PICK_莫高雷|r。
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Muln Earthfury::259118|r 对话。
    .target Muln Earthfury::259118
    .accept 94911 >>接受任务 自然之子
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alaana Stormwalker::259119|r 对话。
    .accept 95350 >>接受任务 欢迎来到艾泽拉斯
    .target Alaana Stormwalker::259119
-- step << Horde
--     .isOnQuest 95350
--     -- .subzoneskip 17045,1
--     .goto 1412/1,323.300,-731.200
--     .deathskip >>Jump to die and ress at the |cRXP_PICK_Spirit Healer|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克·符文图腾::3033|r 对话。
    .turnin 94911 >>交任务 自然之子
    .accept 94913 >>接受任务 月光林地
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>进入雷霆崖
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>穿过大桥。
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克·符文图腾::3033|r 对话。
    .turnin 94911 >>交任务 自然之子
    .accept 94913 >>接受任务 月光林地
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克·符文图腾::3033|r 对话。
    .train 8936 >>训练你的职业技能
    .target Turak Runetotem::3033
    .xp <12,1
    .xp >14,1
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉克·符文图腾::3033|r 对话。
    .train 5178 >>训练你的职业技能
    .target Turak Runetotem::3033
    .xp <14,1
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350
    .zoneskip 1454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔::2995|r 对话。
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal::2995
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>进入雷霆崖
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350
    .zoneskip 1454
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔::2995|r 对话。
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格雷什卡::6929|r 对话
    .home >>将你的炉石设置到奥格瑞玛
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨托格::268701|r 对话
    >>|cRXP_WARN_他在建筑物的楼上|r
    .accept 97246 >>接受任务 午餐诱惑
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博斯坦::3368|r 对话
    .turnin 97246 >>交任务 午餐诱惑
    .accept 97249 >>接受任务 最爱的食物
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考吉尔德::3348|r 对话 
    .accept 97242 >>接受任务 耶尔玛克的混合配方
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>前往荣耀谷
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>拾取水中的 |cRXP_PICK_一把香蒲|r 和 |cRXP_PICK_矛草插条|r
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克::3352|r 对话
    .train 13795 >>训练你的职业技能
    .target Ormak Grimshot::3352
    .xp <12,1
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肖祖::10088|r 对话
    .train 24556 >>训练你的宠物技能
    .target Xao'tsu::10088
step << Horde Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹·怒拳::3353|r 对话
    .train 7384 >>训练你的职业技能
    .target Grezz Ragefist::3353
    .xp <12,1
    .xp >14,1
step << Horde Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹·怒拳::3353|r 对话
    .train 1160 >>训练你的职业技能
    .target Grezz Ragefist::3353
    .xp <14,1
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考吉尔德::3348|r 对话
    .turnin 97242 >>交任务 耶尔玛克的混合配方
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶尔玛克::3347|r 对话
    >>|cRXP_WARN_你可能必须等待约10秒才能接受该任务|r
    .accept 97275 >>接受任务 伍特急什么
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伍特::11046|r 对话
    .turnin 97275 >>交任务 伍特急什么
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米吉::268682|r 对话
    .turnin 97249 >>交任务 最爱的食物
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯拉::268684|r 对话 
    .accept 97326 >>接受任务 以石为座
    .target Thra::268684
step << Horde
    .goto 1454/1,-4293.600,1949.900
    >>拾取地上的橙色 |cRXP_PICK_巨石|r
    >>|cRXP_WARN_如果做任务的人很多，就跳过这个任务！没有那么多 |cRXP_PICK_岩石|r 而且它们不会快速刷新|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << Horde
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯拉::268684|r 对话
    .turnin 97326 >>交任务 以石为座
    .target Thra::268684
    .isQuestComplete 97326
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔::4949|r 对话。
    .turnin 95350 >>交任务 欢迎来到艾泽拉斯
    .accept 98024 >>接受任务 十字路口之旅
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳兹格雷尔::3230|r 对话。
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃金::10540|r 对话。
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佐尔·孤树::4047|r 对话
    .accept 1061 >>接受任务石爪之灵
    .target Zor Lonetree::4047
    .xp <13,1
step << Horde Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯::3344|r 对话
    .train 408341 >>训练你的职业技能
    .target Kardris Dreamseeker::3344
    .xp <12,1
    .xp >14,1
step << Horde Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯::3344|r 对话
    .train 8045 >>训练你的职业技能
    .target Kardris Dreamseeker::3344
    .xp <14,1
step << Horde Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克::3328|r 对话
    .train 1766 >>训练你的职业技能
    .target Ormok::3328
    .xp <12,1
    .xp >14,1
step << Horde Rogue
    #optional
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克::3328|r 对话
    .train 1758 >>训练你的职业技能
    .target Ormok::3328
    .xp <14,1
step << Horde Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r皮菲瑞多::5882|cRXP_FRIENDLY_ 对话|r
    .train 145 >>训练你的职业技能
    .target Pephredo::5882
    .xp <12,1
    .xp >14,1
step << Horde Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r皮菲瑞多::5882|cRXP_FRIENDLY_ 对话|r
    .train 1449 >>训练你的职业技能
    .target Pephredo::5882
    .xp <14,1
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >>离开 奥格瑞玛
    .zoneskip Durotar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >>前往剃刀岭
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step << Horde Hunter
    #completewith next
    .subzone 379 >>前往远望哨
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加尔|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target 卡加尔·战痕
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    >>|cRXP_WARN_在等待时做水|r << Mage
    .zoneskip Tirisfal Glades
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >>前往布瑞尔
step << Horde !Hunter
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵特伦斯::1738|r 对话
    .accept 96895 >>接受任务 The Argent 使者
    .target Deathguard Terrence::1738
    .xp >13,1
step << Horde !Hunter
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师乔汉::1518|r 对话
    .accept 445 >>接受任务 给银松森林送信
    .target Apothecary Johaan::1518
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德里克·哈尔森::267009|r 对话
    .turnin 96895 >>交任务 The Argent 使者
    .accept 96897 >>接受任务 诅咒神教
    .accept 96898 >>接受任务 战争的残迹
    .target Hadric Harlson::267009
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,-130.500,1907.800
    >>击杀 |cRXP_ENEMY_黑暗执行者|r 和 |cRXP_ENEMY_黑暗新教徒|r，拾取 |cRXP_LOOT_死灵水晶碎片|r
    >>|cRXP_LOOT_死灵水晶碎片|r |cRXP_WARN_也可以从地上拾取|r
    >>|cRXP_WARN_小心！这些小怪伤害很高。|cRXP_ENEMY_黑暗执行者|r 还拥有即时施放的 50-70 伤害能力|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
    .isOnQuest 96897,96898
step << Horde !Hunter
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德里克·哈尔森::267009|r 对话
    .turnin 96897 >>交任务 诅咒神教
    .turnin 96898 >>交任务 战争的残迹
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
    .isQuestComplete 96897
    .isQuestComplete 96898
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>乘电梯下去到幽暗城
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈克尔·加勒特::4551|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师凯恩::15682|r 对话
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买三个|r |T133884:0|t[鱼人的眼球]
    >>|cRXP_WARN_如果你愿意的话可以跳过，这只是个小捷径|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
    .zoneskip Undercity,1
step << Horde !Hunter
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>从幽暗城下水道离开
    .zoneskip Silverpine Forest
step << Horde !Hunter
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >>前往银松森林
    .zoneskip Silverpine Forest
step << !Hunter
    #optional
    #label Silverpineskip

]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name 杂项
#group RestedXP 无限指南 (联盟) << Alliance
#group RestedXP 无限指南 (部落) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
--     .goto 2521,53.96,38.90
--     .accept 98285 >>Accept Camping 101: Engineering
-- step
--     .goto 2521,53.96,38.90
--     .complete 98285,1 --Raise your engineering skill to 20
-- step -- repeatable
--     .goto 2521,63.80,35.99
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
--     .turnin 93459 >>Turn in More Al'Aketh Ears
--     .target Vayn Moongaze
step
    .goto 2521,59.151,79.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿耶莎·晨歌::251968|r 对话。
    .target Ayessa Dawnsinger::251968
    .turnin 93738 >>交任务 损坏的构造体
    .accept 93746 >>接受任务 强硬的回应
step
    .goto 2521,59.953,57.182
    .complete 93746,1 --|1/1 Confront Belathaan Brightwish
step
    .goto 2521,59.942,56.938
    >>137326
step
    .goto 2521,59.155,79.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿耶莎·晨歌::251968|r 对话。
    .target Ayessa Dawnsinger::251968
    .turnin 93746 >>交任务 强硬的回应
    .accept 92871 >>接受任务 In Service of Zephras
    .accept 93740 >>接受任务血债血偿

step
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟鲁姆·星风::252359|r 对话。
    .train 5232 >>学习 |T1:0|t[野性印记 (等级 2)]
    .train 8924 >>学习 |T1:0|t[月火术 (等级 2)]
    .target Lotheluum Starbreeze::252359

step
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>交任务  火焰的召唤
    .accept 97245 >>接受任务 火焰的召唤
step
    .goto 2521,42.418,69.117
    .complete 97245,1 --|1/1 Kuramaa's Mask
step
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>交任务  火焰的召唤
    .accept 97257 >>接受任务 火焰的召唤
step
    .goto 2521,51.265,85.927
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
step
    .goto 2521,58.312,78.827
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
step
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞萨瑞亚·漫空::252382|r 对话。
    .target Sessaria Skystride::252382
    .turnin 97257 >>交任务  火焰的召唤
]])
