if GetLocale() ~= "zhCN" then return end
--Skyborne leveling guide: Part 1
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 1-9 Zephras Isle V2
#displayname 1-9 Skyborne V2 << Alliance
#displayname 1-9 Skyborne V2 << Horde
#group RestedXP 无限指南 (联盟) << Alliance
#group RestedXP 无限指南 (部落) << Horde
#subgroup Speedrun 指南 1-20 << Alliance
#subgroup Speedrun 指南 1-22 << Horde
#next 9-13 Zephras Isle V2
#defaultfor Skyborne
#internal

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ailee Farheart::251362|r 对话。
    .accept 92460 >>接受任务 成年
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92460 >>交任务 成年
    .target Rorian the Dayseeker::251361
    .accept 92461 >>接受任务 Harmony in 平衡
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elatrell Featherlight::251368|r 对话。
    .accept 92462 >>接受任务 虫害 Investigation
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
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Juvenile Vuldrens::250873|r。
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>杀死 |cRXP_ENEMY_Pesky Cirrusflies::251169|r。
    *|cRXP_WARN_优先击杀它们|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>杀死 |cRXP_ENEMY_Juvenile Vuldrens::250873|r。
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>练到480+/900XP，以便在交完图腾任务后达到3级。
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elatrell Featherlight::251368|r 对话。
    *|cRXP_WARN_不要使用 |r|T132845:0|t[踏空而行] |cRXP_WARN_因为待会还要用|r。
    .turnin 92462 >>交任务 虫害 Investigation
    .accept 92463 >>接受任务 The Cirrusfly Queen
    .target Elatrell Featherlight::251368
step << Warrior
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Blademaster Ren::251964|r 对话。
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.80,24.05
    >>登上螺旋楼梯，然后 |Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Halaan Hawk Eye::257554|r |cRXP_WARN_在塔顶|r 对话。
    .accept 94414 >>接受任务 The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Halaan Hawk Eye::257554|r 对话。
    *|cRXP_WARN_移动或按ESC取消|r
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Halaan Hawk Eye::257554|r 对话。
    *|cRXP_WARN_移动或按ESC取消|r
    .turnin 94414 >>交任务 The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.65,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Myriaal Mistwake::263113|r 对话。
    .accept 92474 >>接受任务 掉落 With Style
    .target Myriaal Mistwake::263113
step << Skyborne
    #optional
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92461,1 >>交任务 Harmony in 平衡
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>从塔上坠落时，使用 |T132845:0|t[踏空而行] 并瞄准任务发布者。
    *你也可以直接跳跃并在地面上狂按按钮。
    *如果该技能处于冷却中，交任务 Harmony in 平衡 时会跳过此步骤。你可以之后再完成。
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>踏空而行
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92461,1 >>交任务 Harmony in 平衡
    .target Rorian the Dayseeker::251361
    .accept 92464 >>接受任务 元素 Unrest
    .accept 92481 >>接受任务 A Student of the 奥术 << Mage
    .accept 92483 >>接受任务 At 首页 in the Shadows << Rogue
    .accept 92482 >>接受任务 The Way of the 猎人 << Hunter
    .accept 92484 >>接受任务 Embracing the Elements << Shaman
    .accept 92532 >>接受任务 The 战士's Path << Warrior
    .accept 92485 >>接受任务 A Student of 自然 << Druid
--Split so players can complete this later if they used Walk on Air early
step << Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>交任务 掉落 With Style
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92461,1 >>交任务 Harmony in 平衡
    .target Rorian the Dayseeker::251361
    .accept 92464 >>接受任务 元素 Unrest
    .accept 92481 >>接受任务 A Student of the 奥术 << Alliance Mage
    .accept 92483 >>接受任务 At 首页 in the Shadows << Rogue
    .accept 92482 >>接受任务 The Way of the 猎人 << Hunter
    .accept 92484 >>接受任务 Embracing the Elements << Horde Shaman
    .accept 92532 >>接受任务 The 战士's Path << Warrior
    .accept 92485 >>接受任务 A Student of 自然 << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xyton Silverwind::251373|r 对话。
    .turnin 92485 >>交任务 A Student of 自然
    .target Xyton Silverwind::251373
step << Druid
    .money <0.0010
    .xp <1,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xyton Silverwind::251373|r 对话。
    .train 1126 >>训练 |T136078:0|t[野性印记]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .turnin 92481 >>交任务 A Student of the 奥术
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .money <0.0010
    .xp <1,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Windshaper Boro::251374|r 对话
    .target Windshaper Boro::251374
    .turnin 92484 >>交任务 Embracing the Elements
    .accept 92466 >>接受任务 大地的召唤
step << Horde Shaman
    .money <0.0010
    .xp <1,1
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Windshaper Boro::251374|r 对话。
    .train 8017 >>学习 |T136086:0|t[石化武器]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tai'ree Farsight::251376|r 对话。
    .turnin 92482 >>交任务 The Way of the 猎人
    .target Tai'ree Farsight::251376
step << Alliance Rogue/Alliance Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Warrior
    .isNotOnQuest 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.42,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Destin Thriceforged::251364|r 对话。
    .collect 2131,1 >>购买并装备 |T135274:0|t[农夫之剑] << Rogue
    .collect 1194,1 >>购买并装备 |T135276:0|t[损坏的双刃刀] << Warrior
    .vendor 251364 >>出售垃圾物品
    *不要出售 |T133970:0|t[Stringy 肉] 或 |T132889:0|t[亚麻布]。
    .target Destin Thriceforged::251364
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ventaari Brightwish::251487|r 对话。
    .accept 92598 >>接受任务 The Gift of 天穹视界
    .target Ventaari Brightwish::251487
step << Horde !Warrior !Rogue/Alliance !Warrior !Rogue !Hunter
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Uualia Suncrest::251537|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Hunter !Shaman
    .vendor 251537 >>出售垃圾物品
    *不要出售 |T133970:0|t[Stringy 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
step
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dalia the Collector::251363|r 对话。
    .accept 93552 >>接受任务 Harvesting Windstones
    .target Dalia the Collector::251363
step
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance Hunter/Horde Rogue/Horde Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Hunter/Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.41,23.51
    .collect 1194,1 >>购买并装备 |T135276:0|t[损坏的双刃刀] << Hunter/Horde Warrior
    .collect 2131,1 >>购买并装备 |T135274:0|t[农夫之剑] << Horde Rogue
    .vendor 251364 >>出售垃圾物品
    *不要出售 |T133970:0|t[Stringy 肉] 或 |T132889:0|t[亚麻布]。
    .target Destin Thriceforged::251364
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falorne Fallwind::251371|r 对话。
    .accept 92597 >>接受任务 Reading the Ley Lines
    .target Falorne Fallwind::251371

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yala Windwatcher::249363|r 对话。
    .turnin 92464 >>交任务 元素 Unrest
    .accept 92465 >>接受任务 Agitators
    .target Yala Windwatcher::249363
step << Horde Shaman
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Al'Aketh Converts::251160|r 和 |cRXP_ENEMY_Roiling Winds::251143|r。
    *|cRXP_WARN_优先 |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>在 |cRXP_PICK_Elemental 聚首|r 附近使用 |T1029587:0|t[天穹视界] 以获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>天穹视界
step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计需要击碎约 10 块石头，但最多可能需要 15 块|r。
    *|cRXP_WARN_如果该区域异常拥挤，请选择一个刷新点驻守或在附近的石头间轮流击碎|r。
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
    >>杀死 |cRXP_ENEMY_Al'Aketh Converts::251160|r 和 |cRXP_ENEMY_Roiling Winds::251143|r。
    *拾取它们掉落的 |T1020384:0|t[Signet of Akir]
    *|cRXP_WARN_优先 |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yala Windwatcher::249363|r 对话。
    .turnin 92465 >>交任务 Agitators
    .accept 92469 >>接受任务 返回 to Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>炉石传送到 Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Windshaper Boro::251374|r 对话
    .turnin 92466 >>交任务 大地的召唤
    .accept 92467 >>接受任务 大地的召唤
    .target Windshaper Boro::251374

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计会破坏约10块石头，但你可能需要多达15块|r.
    *|cRXP_WARN_如果该区域异常拥挤，可以驻守一个刷新点或在附近的石头之间轮换|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>杀死 |cRXP_ENEMY_Cirrusfly Queen::251404|r。
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>使用 |T134743:0|t[大地灵契]。
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Minor Manifestation of Earth::251166|r 对话
    .turnin 92467 >>交任务 大地的召唤
    .accept 92468 >>接受任务 大地的召唤
    .target Minor Manifestation of Earth::251166
    .use 6635 -- Earth Sapta
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>跳下山并在墓地复活。
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
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

-- ============================================================================
-- Alliance and Non-Horde-Shaman Branch
-- ============================================================================

step << Alliance/!Shaman
    #optional
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计会破坏约10块石头，但你可能需要多达15块|r.
    *|cRXP_WARN_如果该区域异常拥挤，可以驻守一个刷新点或在附近的石头之间轮换|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yala Windwatcher::249363|r 对话。
    .turnin 92464 >>交任务 元素 Unrest
    .accept 92465 >>接受任务 Agitators
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计会破坏约10块石头，但你可能需要多达15块|r.
    *|cRXP_WARN_如果该区域异常拥挤，可以驻守一个刷新点或在附近的石头之间轮换|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>杀死 |cRXP_ENEMY_Al'Aketh Converts::251160|r 和 |cRXP_ENEMY_Roiling Winds::251143|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>在地上的 |cRXP_WARN_Blue Rift|r 附近使用 |T236219:0|t[阅读魔网] 来获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>在 |cRXP_PICK_Elemental 聚首|r 附近使用 |T1029587:0|t[天穹视界] 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>天穹视界
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
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计会破坏约10块石头，但你可能需要多达15块|r.
    *|cRXP_WARN_如果该区域异常拥挤，可以驻守一个刷新点或在附近的石头之间轮换|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>杀死 |cRXP_ENEMY_Al'Aketh Converts::251160|r 和 |cRXP_ENEMY_Roiling Winds::251143|r。
    *拾取它们获得 |T1020384:0|t[Signet of Akir] << Shaman
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    *|cRXP_WARN_预计会破坏约10块石头，但你可能需要多达15块|r.
    *|cRXP_WARN_如果该区域异常拥挤，可以驻守一个刷新点或在附近的石头之间轮换|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>刷怪至300+/1400经验
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yala Windwatcher::249363|r 对话。
    .turnin 92465 >>交任务 Agitators
    .accept 92469 >>接受任务 返回 to Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>使用炉石传送到 Thendal Village
    .cooldown item,6948,>0 --Hearthstone
step << !Shaman
    #completewith next
    #label Harvesting Windstones2
    #optional
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dalia the Collector::251363|r 对话。
    *|cRXP_WARN_从采矿、草药学或剥皮中选择一个|r。
    .turnin 93552 >>交任务 Harvesting Windstones
    .target Dalia the Collector::251363
step << !Shaman
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dalia the Collector::251363|r 对话。
    *|cRXP_WARN_从采矿、草药学或剥皮中选择一个|r。
    .turnin 93552 >>交任务 Harvesting Windstones
    .target Dalia the Collector::251363
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Akeri Duskblade::251389|r 对话。
    .turnin 92483 >>交任务 At 首页 in the Shadows
    .target Akeri Duskblade::251389
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Blademaster Ren::251964|r 对话。
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .xp <4,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Blademaster Ren::251964|r 对话。
    .turnin 92532 >>交任务 The 战士's Path
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elatrell Featherlight::251368|r 对话。
    .turnin 92463,3 >>交任务 The Cirrusfly Queen
    .target Elatrell Featherlight::251368
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falorne Fallwind::251371|r 对话。
    .turnin 92597 >>交任务 Reading the Ley Lines
    .target Falorne Fallwind::251371
step
    #completewith Turn in Return to Rorian
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>使用 |T4625105:0|t[采矿 for Dummies] |cRXP_WARN_走向任务发布者的途中|r。
    .use 247840 -- Mining for Dummies
step
    #completewith Turn in Return to Rorian
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>使用 |T4624731:0|t[Wild Harvest] |cRXP_WARN_在走向任务给予者时|r。
    .use 247841 -- Wild Harvest
step
    #completewith Turn in Return to Rorian
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>使用 |T4624731:0|t[Pelt Collecting for Beginners] |cRXP_WARN_在走向任务给予者时|r。
    .use 247846 -- Pelt Collecting for Beginners
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Blademaster Ren::251964|r 对话。
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Blademaster Ren::251964|r 对话。
    .turnin 92532 >>交任务 The 战士's Path
    .target Blademaster Ren::251964
step << Horde Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tai'ree Farsight::251376|r 对话
    .train 13163 >>学习 |T132159:0|t[灵猴守护]
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Horde
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92469,1 >>交任务 Rorian
    .accept 92471 >>接受任务 Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Horde Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>交任务 掉落 With Style
step << Horde Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xyton Silverwind::251373|r 对话。
    .train 8921 >>学习 |T136096:0|t[月火术]
    .train 774 >>学习 |T136081:0|t[回春术]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aetheen of the Gales::251366|r 对话。
    .turnin 92471 >>交任务 Aetheen of the Gales
    .accept 92470 >>接受任务 Foul Matriarch
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Windshaper Boro::251374|r 对话
    .turnin 92468 >>交任务 大地的召唤
    .target Windshaper Boro::251374
step << Horde Shaman
    .money <0.01
    .xp <4,1
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Windshaper Boro::251374|r 对话。
    .train 8042 >>学习 |T136026:0|t[大地震击]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ventaari Brightwish::251487|r 对话
    .turnin 92598 >>交任务 天穹视界的礼物
    .target Ventaari Brightwish::251487
step << Alliance Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tai'ree Farsight::251376|r 对话
    .train 13163 >>学习 |T132159:0|t[灵猴守护]
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Alliance
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .turnin 92469,1 >>交任务 Rorian
    .accept 92471 >>接受任务 Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Alliance Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r 对话。
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>交任务 掉落 With Style
step << Alliance Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xyton Silverwind::251373|r 对话。
    .train 8921 >>学习 |T136096:0|t[月火术]
    .train 774 >>学习 |T136081:0|t[回春术]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .money <0.01
    .xp <4,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aetheen of the Gales::251366|r 对话。
    .turnin 92471 >>交任务 Aetheen of the Gales
    .accept 92470 >>接受任务 Foul Matriarch
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valreaa Valewind::257551|r 对话。
    .accept 92473 >>接受任务攻击型野猪人的进犯
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Uualia Suncrest::251537|r 对话
    .collect 277113,1 >>购买 |T133637:0|t[学徒's Herb Pouch]
    -- .macro Buy Herbalism Supplies,133637 >>/run local t={[277113]=1};local m=C_MerchantFrame;for i=1,(m.GetNumItems or GetMerchantNumItems)()do local k=tonumber(((m.GetItemLink or GetMerchantItemLink)(i)or""):match("item:(%d+)"));if t[k]then BuyMerchantItem(i,t[k]);t[k]=nil end end
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Uualia Suncrest::251537|r 对话
    .collect 2901,1 >>购买 |T134708:0|t[矿工锄]
    .collect 277115,1 >>购买 |T133635:0|t[学徒's 采矿 Pack]
    -- .macro Buy Mining Supplies,134708 >>/run local t={[2901]=1,[277115]=1};local m=C_MerchantFrame;for i=1,(m.GetNumItems or GetMerchantNumItems)()do local k=tonumber(((m.GetItemLink or GetMerchantItemLink)(i)or""):match("item:(%d+)"));if t[k]then BuyMerchantItem(i,t[k]);t[k]=nil end end
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Uualia Suncrest::251537|r 对话
    .collect 7005,1 >>购买 |T135637:0|t[剥皮小刀]
    .collect 277114,1 >>购买 |T133634:0|t[学徒's 剥皮 Satchel]
    .macro Buy Skinning Supplies,135637 >>购买剥皮补给
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>出售垃圾物品
    *不要出售 |T133970:0|t[Stringy 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    .collect 2512,1200 << Hunter --Rough Arrow (1200)
    .collect 159,20 >>购买 |T132794:0|t[清凉的泉水] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valreaa Valewind::257551|r 对话。
    .accept 92473 >>接受任务攻击型野猪人的进犯
    .target Valreaa Valewind::257551
step
    #optional
    #completewith Scrawny Usera
    +手动将材料包拖到材料包槽位中。右键点击它会改为放入空的普通背包槽位。
step
    #optional
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .aura 2383 >>施放 |T133939:0|t[无光泽的链甲靴] 来追踪附近的草药
    +|cRXP_WARN_你可以在路上采集草药来为后续任务积累20级草药学。这是可选的，尤其是启动时，所以风险由你的自己承担|r
    .usespell 2383
step
    #optional
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .aura 2580 >>使用 |T136025:0|t[寻找矿物] 来追踪附近的矿物矿床
    +|cRXP_WARN_你可以一路采矿以获得后续任务所需的20采矿。这是可选的，尤其是在刚开始时，所以自担你的风险|r
    .usespell 2580
step
    #optional
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_你可以一路剥皮以获得后续任务所需的20剥皮。这是可选的，尤其是在刚开始时，所以自担你的风险|r
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
    >>击杀 |cRXP_ENEMY_熊::250926|r。拾取它们的 |T132136:0|t[|cRXP_LOOT_Scrawny Ursera 爪击|r]。
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_Ursera Scavengers::250937|r。
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>击杀 |cRXP_ENEMY_Urs'anah::251115|r。拾取他的 |T5840609:0|t[|cRXP_LOOT_Urs'anah的头部|r]。
    .complete 92470,2 --1/1 Head of Urs'anah
    --.macro Sit to Die Faster,134400 >>/sit
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
    >>击杀 |cRXP_ENEMY_Ursera Scavengers::250937|r。
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .macro Sit to Die Faster,134400 >>坐下以更快地死亡
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>死掉后在墓地复活。
    *|cRXP_WARN_在战斗中使用坐下宏，可加快死亡速度|r。
    .macro Sit to Die Faster,134400 >>坐下以更快地死亡
    .target Spirit Healer::6491
step
    #optional
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aetheen of the Gales::251366|r 对话。
    .turnin 92470,1 >>交任务 Foul Matriarch << Warrior/Paladin
    .turnin 92470,2 >>交任务 Foul Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>交任务 Foul Matriarch << Mage
    .turnin 92470,4 >>交任务 Foul Matriarch << Rogue
    .turnin 92470,1 >>交任务 Foul Matriarch << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aetheen of the Gales::251366|r 对话。
    .turnin 92470,1 >>交任务 Foul Matriarch << Warrior/Paladin
    .turnin 92470,2 >>交任务 Foul Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>交任务 Foul Matriarch << Mage
    .turnin 92470,4 >>交任务 Foul Matriarch << Rogue
    .turnin 92470,1 >>交任务 Foul Matriarch << Hunter
    .accept 92472 >>接受任务 The 下一页 Step
    .accept 96638 >>接受任务 The Adventurer
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valreaa Valewind::257551|r 对话。
    .turnin 92473,1 >>交任务攻击型野猪人的进犯
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>出售垃圾物品
    *不要出售 |T133970:0|t[Stringy 肉]、|T132832:0|t[小蛋] 或 |T132889:0|t[亚麻布]。 << Alliance
    *不要出售 |T132832:0|t[小蛋] 或 |T132889:0|t[亚麻布]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valreaa Valewind::257551|r 对话。
    .turnin 92473,1 >>交任务攻击型野猪人的进犯
    .target Valreaa Valewind::257551
step
    #optional
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_装备|r |T135335:0|t[破损的巨剑] << Warrior/Paladin/Hunter
    *|cRXP_WARN_装备|r |T135145:0|t[Novice's Quarterstaff] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_装备|r |T135650:0|t[斥候 Ranger's Dagger] << Mage
    *|cRXP_WARN_装备|r |T133057:0|t[Peacekeeper's Pickhammer] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hanaa Nightwind::252095|r 对话。
    .accept 92544 >>接受任务 Al'Aketh Thugs
    .target Hanaa Nightwind::252095
    .use 258882 << Warrior/Paladin -- Worn Greatsword
    .use 257282 << Druid/Shaman/Priest/Warlock -- Novice's Quarterstaff
    .use 257283 << Mage -- Scout Ranger's Dagger
    .use 257276 << Rogue -- Peacekeeper's Pickhammer
    .use 258882 << Hunter -- Worn Greatsword
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>击杀途中的小怪，如果不会浪费时间的话。
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hanaa Nightwind::252095|r 对话。
    .accept 92544 >>接受任务 Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_Al'Aketh Brutes::251145|r 和 |cRXP_ENEMY_Al'Aketh Neophytes::251448|r。
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #optional
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>击杀 |cRXP_ENEMY_Malduko Cloudcrush::256935|r。
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>前往寺庙的上层
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>击杀 |cRXP_ENEMY_Malduko Cloudcrush::256935|r |cRXP_WARN_在寺庙顶部|r。
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,35.910,33.605
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,35.57,33.84
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
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
    >>击杀 |cRXP_ENEMY_Al'Aketh Brutes::251145|r 和 |cRXP_ENEMY_Al'Aketh Neophytes::251448|r。
    *|cRXP_WARN_刷新|r |T236219:0|t[阅读魔网] |cRXP_WARN_在魔网附近|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #label Grind6
    .xp 5+1740 >>刷怪升级至第5级 1740+/2800xp，到达下一个村庄交任后达到第6级以学习新法术。
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hanaa Nightwind::252095|r 对话。
    .turnin 92544 >>交任务 Al'Aketh Thugs
    .target Hanaa Nightwind::252095

-- ============================================================================
-- First Visit Shen'dar Village
-- ============================================================================

step
    #completewith SkybornePart1End
    #hidewindow
    +可能的龙卷风刷新地点
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.27,76.45,Tornado
    .pin 2521,57.91,75.86,Tornado
    .pin 2521,42.13,39.24,Tornado
    .pin 2521,64,75.79,Tornado
    .pin 2521,52.67,41.92,Tornado
    .pin 2521,68.63,65.95,Tornado
    .pin 2521,48.14,56.56,Tornado
    .pin 2521,54.92,44.76,Tornado
    .pin 2521,39.6,45.11,Tornado
    .pin 2521,58.55,52.75,Tornado
    .pin 2521,47.74,69.57,Tornado
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    #optional
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Windstone crystals|r 沿途来获得生命值和法力恢复剂
    *|cRXP_WARN_如果你看到龙卷风，接触它获得40%的移动速度。造成伤害会移除该效果|r。
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .turnin 92472 >>交任务 下一步
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>沿途击杀 |cRXP_ENEMY_Galestriders::251661|r。从它们身上拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r] 和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]
    *|cRXP_WARN_如果龙卷风速度增益处于活跃状态或附近有龙卷风，避免击杀它们。|r。
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veena Vericloud::254358|r 对话。
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>|cRXP_WARN_为你的职业法术预留 2 银币！|r << Shaman/Druid
    >>|cRXP_WARN_为你的职业法术预留 2 银币！|r << Mage
    .vendor 254358 >>|cRXP_WARN_商人垃圾|r。
    *别卖 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    *别卖 |T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Horde
    *|cRXP_WARN_我们之后需要它们来烹饪|r。
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belandiel Farflight::254360|r 对话。
    .vendor 254360 >>|cRXP_WARN_商人垃圾|r。
    *别卖 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    *别卖 |T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Horde
    *|cRXP_WARN_我们之后需要它们来烹饪|r。
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .turnin 92472 >>交任务 下一步
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .accept 93461 >>接受任务 Welcome to Shen'dar Village << Alliance
    .accept 92514 >>接受任务 Welcome to Shen'dar Village << Horde
    .target Constable Aonda::251523
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .train 143 >>训练 |T135812:0|t[火球术 (级别 2)]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379

-- ============================================================================
-- Alliance Shen'dar Village Introduction Branch
-- ============================================================================

step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathiril Sunlance::251903|r 对话。
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>接受任务 The 高 Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathiril Sunlance::251903|r 对话。
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathiril Sunlance::251903|r 对话。
    .turnin 92596 >>交任务 The 高 Order
    .accept 94413 >>接受任务 A Magical Affront
    .target Rathiril Sunlance::251903
step << Alliance Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >>训练 |T136189:0|t[影袭 (级别 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Alliance Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >> 训练 |T136189:0|t[影袭 (级别 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r and buy any missing materials: |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
--     .collect 6217,1 -- Copper Rod
--     .collect 247786,3 -- Mote of Magic
--     .collect 4470,1 -- Simple Wood
--     .skipgossipid 137558
--     .target Nasalanna Windsinger::257020
--     .money <0.0172
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
--     .skipgossipid 137559
--     .target Nasalanna Windsinger::257020
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .train 7411,3 -- Enchanting Trained
--     >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
--     *|cRXP_WARN_Afterward, enchant your bracers with Stamina if you have a pair equipped|r
--     .collect 6218,1 -- Runed Copper Rod
--     .collect 247789,1 -- Novice's Practice Wand
--     .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
--     .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
-- step << Mage
--     #completewith MageEnchanting
--     .train 7411,3 -- Enchanting Trained
--     +Abandon Enchanting or continue with it.
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r 对话。
    .complete 93461,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r 对话。
    .home >>将你的炉石设置到Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089

-- ============================================================================
-- Horde Shen'dar Village Introduction Branch
-- ============================================================================

step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Illaya Amberwind::251902|r 对话。
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>接受任务 The Windshapers
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Illaya Amberwind::251902|r 对话。
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Illaya Amberwind::251902|r 对话。
    .turnin 92595 >>交任务 The Windshapers
    .accept 94411 >>接受任务 Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aarnor Galestrike::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
    .skipgossipid 136811
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r 对话。
    .complete 92514,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r 对话。
    .home >>将你的炉石设置到Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >>训练 |T136189:0|t[邪恶打击（2级）]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Horde Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >> 训练 |T136189:0|t[邪恶打击（2级）]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Corsan Earthrazer::254088|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r |cRXP_WARN_在房子里|r 对话。
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>训练 |T136006:0|t[愤怒（2级）]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elayaa Easewind::254084|r |cRXP_WARN_在房子里|r 对话。
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    -- #label MageEnchanting
    .goto 2521/2991,1750.100,3279.300,30,0
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .turnin 93461 >>交任务 欢迎来到 Shen'dar 村 << Alliance
    .turnin 92514 >>交任务 欢迎来到 Shen'dar 村 << Horde
    .accept 92517 >>接受任务 犯罪分子
    .target Constable Aonda::251523

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Corsan Earthrazer::254088|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elayaa Easewind::254084|r 对话。
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>训练 |T136006:0|t[愤怒（2级）]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .train 143 >>训练 |T135812:0|t[火球术（2级）]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Druid/Priest/Warlock/Mage
    .money <0.0125
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veena Vericloud::254358|r 对话。
    .collect 1179,5 >>|cRXP_BUY_购买5个|r |T132815:0|t[冰镇牛奶]，|cRXP_BUY_如果买得起就买10个|r
    *不要出售 |T133970:0|t[粗肉]、|T132832:0|t[小蛋]、|T133972:0|t[走禽肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    *不要出售 |T132832:0|t[小蛋]、|T133972:0|t[走禽肉] 或 |T132889:0|t[亚麻布]。 << Horde
    *|cRXP_WARN_我们稍后需要用它们来烹饪|r。
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Teeri Wellwind::251906|r 对话。
    .accept 93319 >>接受任务 被窃的风石
    .accept 92516 >>接受任务 角鹰兽骚扰
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Indari Sunseam::251993|r 对话。
    .accept 92515 >>接受任务 傲爪的问题
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r 对话
    .accept 93951 >>接受任务 一点美美
    .target Taleen Shimmerthread::251991
step << Shaman
    .money <0.0504
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Hunter
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    -- >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 Tephri Thriceforged::257421|cRXP_FRIENDLY_ 对话、购买并装备 |T133053:0|t[木槌棒]|r。
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 Tephri Thriceforged::257421|cRXP_FRIENDLY_ 对话、购买并装备 |T135321:0|t[步兵剑]|r。
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .accept 92553 >>接受任务 补充食品储藏
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .turnin 92553 >>交任务 补充食品储藏
    .target Zerril Softbreeze::251905
step
    .money <0.01
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .train 2550 >>学习 |T133971:0|t[初级烹饪]
    .skipgossipid 137551 --Train me.
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来尽可能多地制作。
    *|cRXP_WARN_如果你邮寄过增益食物给自己，就跳过这一步|r。
    *|cRXP_WARN_大多数增益食物在15分钟内提供5%经验增益。在升级时尽量保持此增益|r。
    *|cRXP_BUY_从|r |cRXP_BUY_Zerril Softbreeze|r |cRXP_FRIENDLY_处购买5-20个|r |T134059:0|t[甜香料] |cRXP_WARN_如果还没有的话|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来制作1个以获得经验增益。
    *|cRXP_WARN_如果你邮寄过增益食物给自己，就跳过这一步|r。
    *|cRXP_WARN_大多数增益食物在15分钟内提供5%经验增益。在升级时尽量保持此增益|r。
    *|cRXP_BUY_从|r |cRXP_BUY_Zerril Softbreeze|r |cRXP_FRIENDLY_处购买5-20个|r |T134059:0|t[甜香料] |cRXP_WARN_如果还没有的话|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +使用下面的 |T132834:0|t[草药烘蛋] 宏制作除了预留给补充食品室的 3 个以外的每个小蛋。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物就跳过这一步|r。
    *|cRXP_WARN_保留至少 3 个 小 道具 用于后面的任务|r
    *|cRXP_WARN_大多数增益食物在 15 分钟内授予击杀经验提升 5%。尝试在升级时保持这个增益的较高持续时间|r。
    *|cRXP_BUY_购买 5-20|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_购买（如果还没有购买的话）|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >>训练 |T136189:0|t[影袭（第 2 级）]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Class Trainer Backup
step << Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >>训练 |T136189:0|t[影袭（第 2 级）]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    #optional
    #completewith BadwindBennicA
    >>击杀 |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_沿途|r。从他们那里获取战利品 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    *|cRXP_WARN_优先击杀它们|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith BadwindBennicA
    >>击杀 |cRXP_ENEMY_Galestriders::251661|r，|cRXP_WARN_沿途顺手击杀|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r] 和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_优先击杀它们|r
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>击杀 |cRXP_ENEMY_High Order Apprentices::257521|r。
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,46.597,38.121
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升移动速度和骑乘移动速度 |cRXP_WARN_30%，持续 30 秒|r。
step
    #optional
    #completewith BadwindBennicB
    >>击杀 |cRXP_ENEMY_Highlands Bandits::251918|r。从他们那里获取战利品 |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r]。
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith next
    #label BadwindBennicA
    >>击杀 |cRXP_ENEMY_"Badwind" Bennic::255534|r。
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>进入洞穴
step << Alliance
    #requires BadwindBennicA
    #completewith next
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,50.59,33.51,20,0
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>击杀 |cRXP_ENEMY_"Badwind" Bennic::255534|r。
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith next 
    >>击杀 |cRXP_ENEMY_Highlands Bandits::251918|r。从他们那里获取战利品 |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r]。
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    .isOnQuest 92517,93319 --The Criminal Element / Pilfered Windstones
    .isQuestNotComplete 92517 --The Criminal Element
    .isQuestNotComplete 93319 --Pilfered Windstones
    .goto 2521/2991,1474.200,3678.200,20,0
    .goto 2521/2991,1453.400,3647.800,20,0
    .goto 2521/2991,1467.500,3619.800,20,0
    .goto 2521/2991,1496.400,3622.700,20,0
    .goto 2521/2991,1577.400,3611.000
    .subzone 16623 >>离开洞穴
step
    .isOnQuest 93319 --Pilfered Windstones
    #hidewindow
    .subzoneskip 16674,1
    .countdown 1 >>1
step
    .isQuestComplete 92517 --The Criminal Element
    .isQuestComplete 93319 --Pilfered Windstones
    .subzoneskip 16674,1
    .subzone 16623 >>死掉后在墓地复活。
    *|cRXP_WARN_如果你即将走出洞穴且身上有增益食物效果，直接跑出去并跳过死亡跳关|r。
    *|cRXP_WARN_在战斗中使用坐下宏，可加快死亡速度|r。
    .macro Sit to Die Faster,134400 >>坐下以更快地死亡
    .target Spirit Healer::6491
step
    .isQuestComplete 92517 --The Criminal Element
    .isQuestComplete 93319 --Pilfered Windstones
    .subzoneskip 16623,1 
    .showwhiledead
    .goto 2521/2991,1634.800,3418.600
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #optional
    #completewith Pilfered Windstone Finish
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith Pilfered Windstone Finish
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label Pilfered Windstone Finish
    #loop
    .goto 2521/2991,1577.400,3611.000,40,0
    .goto 2521/2991,1521.500,3516.300,70,0
    .goto 2521/2991,1471.300,3518.700,60,0
    .goto 2521/2991,1510.100,3608.000,20,0
    .goto 2521/2991,1451.300,3628.200,25,0
    .goto 2521/2991,1460.200,3663.700,25,0
    .goto 2521/2991,1466.700,3695.500,25,0
    .goto 2521/2991,1411.300,3716.800,25,0
    .goto 2521/2991,1413.000,3683.500,25,0
    >>击杀 |cRXP_ENEMY_Highlands Bandits::251918|r。从他们那里获取战利品 |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r]。
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith To Shendalar
    >>击杀 |cRXP_ENEMY_Galestriders::251661|r |cRXP_WARN_沿途|r。
    *拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r] 和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith To Shendalar
    >>击杀 |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_沿途|r。
    *从他们那里获取战利品 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isQuestComplete 92517 << Alliance --The Criminal Element
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话并购买 5 个 |T134059:0|t[甜香料]。
    .vendor 251905 >>把垃圾物品卖给商人
    .collect 2678,5 -- Mild Spices
    *不要出售 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    *不要出售 |T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .train 2550 >>训练 |T133971:0|t[初级烹饪]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isQuestComplete 92517 << Alliance --The Criminal Element
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .turnin 92553 >>交任务"Restocking the Larders"
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92517 << Alliance --The Criminal Element
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +使用下面的 |T132834:0|t[草药烘蛋] 宏尽可能多地制作。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物就跳过这一步|r。
    *|cRXP_WARN_大多数增益食物在 15 分钟内授予击杀经验提升 5%。尝试在升级时保持这个增益的较高持续时间|r。
    *|cRXP_BUY_购买 5-20|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_购买（如果还没有购买的话）|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92517 << Alliance --The Criminal Element
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来制作1个以获得经验加成。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物，请跳过此步|r。
    *|cRXP_WARN_大多数增益食物可以在15分钟内提供5%的击杀经验加成。在升级时尽量保持这个增益的高活跃时间|r。
    *|cRXP_BUY_购买5-20个|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_如果你还没有|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92517 << Alliance --The Criminal Element
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来制作超过为《补充储藏室》保留的3个小蛋之外的每个小蛋。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物，请跳过此步|r。
    *|cRXP_WARN_为后面的任务至少保留3个小蛋|r
    *|cRXP_WARN_大多数增益食物可以在15分钟内提供5%的击杀经验加成。在升级时尽量保持这个增益的高活跃时间|r。
    *|cRXP_BUY_购买5-20个|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_如果你还没有|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋

--Class Trainer Backup Shaman lvl 6
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aarnor Galestrike::254082|r 对话。
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    .train 1757 >>训练 |T136189:0|t[影袭 (级别 2)]
    .train 1776 >>学习 |T132155:0|t[凿击]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Weapon Backup
step << Hunter
    .money <0.0285
    .isQuestAvailable 93036 --Infiltrating the Cult
    .isNotOnQuest 93036 --Infiltrating the Cult
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isQuestAvailable 93036 --Infiltrating the Cult
    .isNotOnQuest 93036 --Infiltrating the Cult
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话并购买并装备一个 |T133053:0|t[木槌棒]。
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isQuestAvailable 93036 --Infiltrating the Cult
    .isNotOnQuest 93036 --Infiltrating the Cult
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话并购买并装备一个 |T135321:0|t[步兵剑]。
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Shaman
    .money <0.0504
    .isQuestAvailable 93036 --Infiltrating the Cult
    .isNotOnQuest 93036 --Infiltrating the Cult
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421

step << Rogue/Warrior/Paladin/Shaman
    #optional
    .isQuestComplete 92517 --The Criminal Element
    .itemcount 2862/3239,<1 --Rough Sharpening Stone / Rough Weightstone
    .itemcount 2835,1 --Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aedi Thriceforged::251913|r 对话。
    *|cRXP_WARN_如果你有锻造外的两个专业且想保留，跳过此步|r。
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .isQuestComplete 92517 --The Criminal Element
    .itemcount 2862/3239,<1 --Rough Sharpening Stone / Rough Weightstone
    .itemcount 2835,1 --Rough Stone
    .train 2018,3 --Blacksmithing Trained
    +打开 |T136241:0|t[锻造] 并制作一个 |T135248:0|t[劣质磨刀石]（用于锐利武器）或 |T135255:0|t[劣质平衡石]（用于钝器），然后应用它。
    *这些石头增加你的武器伤害。
    *如果你想要回专业栏位，之后可以遗忘锻造技能。
    .usespell 2018

-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Teeri Wellwind::251906|r 对话
    .target Teeri Wellwind::251906
    .turnin 93319 >>交任务 Pilfered Windstones

--Weapon Backup
step << Shaman
    .money <0.0504
    .isQuestAvailable 93036 --Infiltrating the Cult
    .isNotOnQuest 93036 --Infiltrating the Cult
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421

-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior


--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Corsan Earthrazer::254088|r 对话
    .train 3127 >> 学习 |T132269:0|t[招架]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elayaa Easewind::254084|r 对话。
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r 对话
    .train 467 >>学习 |T136104:0|t[荆棘术]
    .train 5177 >>训练 |T136006:0|t[愤怒 (级别 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r 对话。
    .train 143 >>训练 |T135812:0|t[火球术 (级别 2)]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .train 1296017 >>训练 |T8188276:0|t[理解卷轴]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step
    #label Turn in The Criminal Element
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话
    .target Constable Aonda::251523
    .turnin 92517,3 >>交任务 The Criminal Element
    .accept 93036 >>接受任务 Infiltrating the Cult
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sania Silverstream::251904|r 对话
    .target Sania Silverstream::251904
    .turnin 93036 >>交任务 Infiltrating the Cult
    .accept 92529 >>接受任务 Falaath Village
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sania Silverstream::251904|r 对话
    .skipgossipid 135874
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 92529 --Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veena Vericloud::254358|r 对话
    .vendor 254358 >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_WARN_如果你可以的话|r。
    *|cRXP_BUY_购买|r更多 |T132382:0|t[Rough 经典怀旧服 道具] << Hunter
    *|cRXP_BUY_最多购买10个|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_从她那里|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_装备包时，确保你的试剂包在专用试剂包栏位|r。
    .collect 2946,1 >>|cRXP_BUY_购买一个|r |T135641:0|t[平衡飞刀]。 << Rogue/Warrior
    *别卖 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Alliance
    *别卖 |T132832:0|t[小 道具]、|T133972:0|t[Strider 肉] 或 |T132889:0|t[亚麻布]。 << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>从山上跳下并使用 |T132845:0|t[踏空而行] 朝着任务给予者飞去。
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Missionary Jasaan::257065|r 对话
    .target Missionary Jasaan::257065
    .turnin 92529 >>交任务 Falaath Village
    .accept 92528 >>接受任务 Among the Faithful
    .use 2454 << Warrior/Rogue -- Elixir of Minor Strength
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sania Silverstream::251904|r 对话
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.497,55.827
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step
    #completewith next
    #label plans
    >>如果另一玩家刚使用了 |cRXP_PICK_Wardrobe|r，他们的对话 |cRXP_WARN_必须在你的开始前完成|r。如果点击后没有对话弹出，请等待片刻并重试。
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .isOnQuest 92528 --Among the Faithful
    .subzoneskip 16636,1 
    .goto 2521,48.74,53.89,15,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Wardrobe|r |cRXP_WARN_二层楼|r。
    *确保 |cRXP_FRIENDLY_Lorthuna|r 和 |cRXP_FRIENDLY_Aanders|r 在交谈之后再继续。
    *如果他们没有交谈，继续点击 |cRXP_PICK_Wardrobe|r。
    .timer 13,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.85,53.91
    >>|cRXP_WARN_等待获得任务奖励后再进行跳跃死亡|r。
    *如果你看到 |cRXP_FRIENDLY_Lorthuna|r 和 |cRXP_FRIENDLY_Aanders|r 在交谈，|cRXP_WARN_你可以手动跳过此步骤，但这样做有风险，可以节省额外时间|r。如果你看不到对话，继续点击 |cRXP_PICK_Wardrobe|r。
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .skipgossipid 136768
step
    .isOnQuest 92528 --Among the Faithful
    .subzoneskip 16636,1 
    .goto 2521/2991,1562.200,2952.000
    *确保 |cRXP_FRIENDLY_Lorthuna|r 和 |cRXP_FRIENDLY_Aanders|r 在交谈之后再继续。如果他们没有交谈，继续点击 |cRXP_PICK_Wardrobe|r。
    .aura -1254832 >>|cRXP_WARN_右键点击|r |T606549:0|t[阿基尔印记] |cRXP_WARN_或使用宏（在使用中物品框架）来移除它|r。
    .macro Remove Mark of Akir,606549 >>移除 阿基尔印记
    .skipgossipid 136768
step
    .isOnQuest 92528 --Among the Faithful
    .subzoneskip 16636,1 
    .goto 2521/2991,1562.200,2952.000
    .subzone 16623 >>死掉后在墓地复活。
    .skipgossipid 136768
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .isOnQuest 92528 --Among the Faithful
    .subzoneskip 16623,1 
    .showwhiledead
    .goto 2521/2991,1634.800,3418.600
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
-- step
--     #completewith
--     .isQuestComplete 92528
--     .goto 2521/2991,1681.700,3322.300
--     .cooldown spell,1259416,>0,1 --Walk on Air
--     .cast 1259416 >>Jump and use |T132845:0|t[Walk on Air] to glide down through the |cRXP_WARN_gap between the two rocks|r.
--     .usespell 1259416
step
    .goto 2521/2991,1716.200,3380.100,25,0
    .goto 2521/2991,1703.900,3310.000,25,0
    .goto 2521,45.67,45.50
    *跳跃到木板的角落，或者直接从侧面进入房屋。
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .turnin 92528,1 >>交任务 Among the Faithful << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>交任务 Among the Faithful << Warrior/Rogue/Palsadin
    .turnin 92528,3 >>交任务 Among the Faithful << Hunter
    .accept 92550 >>接受任务 Havoc in the Highlands
    .accept 93926 >>接受任务 西部瞭望塔
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_装备|r |T454058:0|t[污渍斑斑的仪式匕首] << Mage/Priest/Warlock
    *|cRXP_WARN_装备|r |T7789512:0|t[弧形弯刀] << Warrior/Rogue/Paladin
    *|cRXP_WARN_装备|r |T135493:0|t[风袭短弓] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Danarii Bellowveil::252172|r 对话。
    .accept 92551 >>接受任务 Stolen 补给
    .target Danarii Bellowveil::252172
    .use 257332 << Mage/Priest/Warlock -- Stained Ritual Dagger
    .use 257333 << Warrior/Rogue/Paladin -- Curved Scimitar
    .use 273877 << Hunter -- Windswept Shortbow
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Illaya Amberwind::251902|r 对话。
    .turnin 94411 >>交任务 Meddlesome Mages
    .target Illaya Amberwind::251902
    
--Class Trainer Backup
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aarnor Galestrike::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bounty 可用: Vulgara the Insatiable!|r
    .accept 93318 >>接受任务 WANTED: Vulgara the Insatiable
    .target Bounty Available: Vulgara the Insatiable!
-- step
--     .goto 2521,43.073,46.306
--     .itemcount 2589,5 -- Linen Cloth
--     .money <0.01
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
--     .train 3273 >>Train First Aid
--     .skipgossipid 137555
--     .target Naleeia Tattermend::257018
step
    .goto 2521,43.073,46.306
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naleeia Tattermend::257018|r 对话。
    .train 3273 >>训练 急救
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #optional
    #completewith VulgarasHeadA
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith VulgarasHeadA
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .itemcount 255663,<1 --Windstones
    .goto 2521/2991,1821.700,3268.300,20,0
    .goto 2521/2991,1810.800,3220.500,20,0
    .goto 2521,42.75,52.68
    >>杀死山上的 |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_（8级精英）|r。拾取 |T4218759:0|t[|cRXP_LOOT_Vulgara's 头部|r]。
    *|cRXP_WARN_单独杀死它，找组，或跳过任务|r。
    *|cRXP_WARN_不要使用|r |T132845:0|t[踏空而行] |cRXP_WARN_在此步骤。你稍后会需要它|r。
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #label VulgarasHeadA
    .itemcount 255663,1 --Windstones
    .goto 2521/2991,1821.700,3268.300,20,0
    .goto 2521/2991,1810.800,3220.500,20,0
    .goto 2521,42.75,52.68
    >>杀死山上的 |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_（8级精英）|r。拾取 |T4218759:0|t[|cRXP_LOOT_Vulgara's 头部|r]。
    *|cRXP_WARN_使用你的Windstones来帮助单独击杀它，找组，或跳过任务|r。
    *|cRXP_WARN_不要使用|r |T132845:0|t[踏空而行] |cRXP_WARN_在此步骤。你稍后会需要它|r。
    .use 255663 --Windstones
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    .subzoneskip 16623,1 --Shen'dar Highlands
    .isOnQuest 92550 --Havoc in the Highlands
    .isQuestNotComplete 92550 --Havoc in the Highlands
    .goto 2521/2991,1861.700,2966.800,15,0
    .goto 2521/2991,1841.700,2967.000,10,0
    .goto 2521/2991,1655.100,2955.400
    .cooldown spell,1259416,>0,1 --Walk on Air
    .cast 1259416 >>跳跃并使用 |T132845:0|t[踏空而行] 来滑翔下降到Falaath Village。
    .usespell 1259416
step
    #optional
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_Living Lightning::251662|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_Living Lightning|r 使用一个类似于 雷霆一击 的能力，该能力在单次打击中造成其近战伤害的三倍|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #optional
    #completewith CommanderCyclasHeadA
    >>击杀 |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r。从它们身上拾取 |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar 补给|r]。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Stormcallers|r 会施放|r |T136014:0|t[落雷之云]。|cRXP_WARN_离开云朵，且不要拉到附近的敌人|r。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_Supply Caches|r。
    *|cRXP_WARN_小心地进入房屋。|r|cRXP_ENEMY_Living Lightning|r |cRXP_WARN_和|r |cRXP_ENEMY_Al'Aketh Stormcallers|r |cRXP_WARN_要分别拉|r。
    *根据需要使用你的Windstones来恢复生命值和法力。
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521/2991,1512.800,2949.000,25,0
    .goto 2521/2991,1498.100,2963.700,10,0
    .goto 2521/2991,1487.900,2919.900,30,0
    .goto 2521/2991,1467.300,2875.700,30,0
    .goto 2521,50.38,56.93
    >>击杀 |cRXP_ENEMY_Commander Cyclas::251966|r。从他身上拾取 |T134161:0|t[|cRXP_LOOT_Commander Cyclas's 头部|r]。
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521/2991,1463.400,2857.100,15,0
    .goto 2521/2991,1458.100,2830.900,15,0
    .goto 2521/2991,1481.400,2843.500,15,0
    .goto 2521/2991,1476.800,2875.500,20,0
    .goto 2521/2991,1525.700,2876.600,15,0
    .goto 2521/2991,1569.000,2844.500,40,0
    .goto 2521/2991,1545.600,2944.100,40,0
    +1
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_Living Lightning::251662|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_Living Lightning|r 使用一个类似于 雷霆一击 的能力，该能力在单次打击中造成其近战伤害的三倍|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>击杀 |cRXP_ENEMY_Al'Aketh Stormcallers::252068|r。从它们身上拾取 |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar 补给|r]。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Stormcallers|r 会施放|r |T136014:0|t[落雷之云]。|cRXP_WARN_离开云朵，且不要拉到附近的敌人|r。
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_Supply Caches|r。
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>击杀 |cRXP_ENEMY_Living Lightning::251662|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_Living Lightning|r 使用一个类似于 雷霆一击 的能力，该能力在单次打击中造成其近战伤害的三倍|r。
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    .isOnQuest 93926 --The Western Watch
    .isQuestNotComplete 93926 --The Western Watch
    #completewith next
    .subzone 17674 >>在箭头指示的准确位置死亡，然后在墓地复活。
    .skipgossipid 136768
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde
    .isOnQuest 93926 --The Western Watch
    .isQuestNotComplete 93926 --The Western Watch
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.497,55.827
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
    *|cRXP_WARN_你可以穿过小怪来获得增益，我们很快就会死跳。在获得增益前死亡只是稍微次优|r。
step << Alliance
    .isOnQuest 93926 --The Western Watch
    .isQuestNotComplete 93926 --The Western Watch
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1200 --Attuned
    .goto 2521/2991,1571.300,2805.200,30,0
    .goto 2521/2991,1543.500,2787.400
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    *|cRXP_WARN_你可以穿过小怪来获得增益，我们很快就会死跳。在获得增益前死亡只是稍微次优|r。
    .usespell 1259705
step
    .isOnQuest 93926 --The Western Watch
    .isQuestNotComplete 93926 --The Western Watch
    #loop
    .goto 2521/2991,1552.300,2838.300,10,0
    .goto 2521/2991,1586.100,2809.100,10,0
    .subzone 17674 >>在箭头指示的准确位置死亡，然后在墓地复活。
    .skipgossipid 136768
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    .isOnQuest 93926 --The Western Watch
    .isQuestNotComplete 93926 --The Western Watch
    .subzoneskip 17674,1 
    .showwhiledead
    .goto 2521/2991,1993.600,2589.900
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    *|cRXP_WARN_复活时你可能会被|r Prideclaws::251245|cRXP_ENEMY_ 攻击|r。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #optional
    #completewith Bloody Note
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith Bloody Note
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r 对话。
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Peacekeeper Vaaniel::252155|r。
    .turnin 93926 >>交任务 西部瞭望塔
    .accept 93927 >>接受任务 最后的请求
    .target Peacekeeper Vaaniel::252155
step
    #label Bloody Note
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bloody 注释|r。
    *|cRXP_WARN_保持一个背包空位|r。
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Arvensus Shadowsong|r\n |cRXP_WARN_从远处|r。
    *|cRXP_WARN_保持一个背包空位|r。
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Raani Windgazer|r\n |cRXP_WARN_从远处|r。
    *|cRXP_WARN_保持一个背包空位|r。
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,41.08,64.39
    >>登上螺旋楼梯，然后击杀 |cRXP_ENEMY_Skypriest Aanders::256966|r |cRXP_WARN_在塔顶|r。
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    #completewith next
    #label FirstHippogryphYouth
    #hidewindow
    .complete 92516,1,1 --Hippogryph Youth slain
step
    #completewith FirstHippogryphYouth
    #label RiverJump
    .isOnQuest 92516 --Hippogryph Harassment
    .isQuestNotComplete 92516 --Hippogryph Harassment
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521/2991,1973.600,2682.800,20,0
    .goto 2521/2991,1987.800,2722.400
    .cast 1259416 >>|cRXP_WARN_走路或从塔上跳下时不要使用|r |T132845:0|t[踏空而行]。|cRXP_WARN_留到你到达山那里再用|r。
    .usespell 1259416
step
    #requires RiverJump
    #completewith HippoDown
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #requires RiverJump
    #completewith HippoDown
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #requires RiverJump
    #completewith Hyslain
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Hippogryph Downs|r。
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #requires RiverJump
    #label Hyslain
    #loop
    .goto 2521/2991,2100.800,2847.000,40,0
    .goto 2521/2991,2103.600,2913.600,40,0
    .goto 2521/2991,2190.200,2930.500,40,0
    .goto 2521/2991,2185.100,2848.500,40,0
    .goto 2521/2991,2247.400,2828.700,40,0
    .goto 2521/2991,2192.200,2766.600,40,0
    .goto 2521/2991,2139.800,2794.900,40,0
    >>杀死 |cRXP_ENEMY_Hippogryph Youths::251291|r。
    *|cRXP_WARN_拾取他们身上值钱的出售杂物，以支付武器升级和职业技能训练费用|r。
    *|cRXP_WARN_Hippogryphs 速度极快，如果情况变得危险不要试图超过它们|r。
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
step
    #hidewindow
    #completewith MatriProtec
    #loop
    .goto 2521/2991,2271.100,2955.400,40,0
    .goto 2521/2991,2222.100,3059.100,40,0
    .goto 2521/2991,2201.700,3069.800,25,0
    .goto 2521/2991,2332.300,3053.500,40,0
    .goto 2521/2991,2309.300,2998.400,40,0
    .goto 2521/2991,2271.100,2955.400,40,0
    .goto 2521/2991,2387.500,2932.600,40,0
    +1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Hippogryph Protectors::251284|r 和 |cRXP_ENEMY_Hippogryph Matriarch::251261|r。
    *|cRXP_WARN_拾取他们身上值钱的出售杂物，以支付武器升级和职业技能训练费用|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_Matriarch::251261|r|r
    *|cRXP_WARN_Hippogryphs 速度极快，如果情况变得危险不要试图超过它们|r。
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #label HippoDown
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Hippogryph Downs|r。
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label MatriProtec
    >>杀死 |cRXP_ENEMY_Hippogryph Protectors::251284|r 和 |cRXP_ENEMY_Hippogryph Matriarch::251261|r。
    *|cRXP_WARN_拾取他们身上值钱的出售杂物，以支付武器升级和职业技能训练费用|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_Matriarch::251261|r|r
    *|cRXP_WARN_Hippogryphs 速度极快，如果情况变得危险不要试图超过它们|r。
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261

step << Alliance
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Windshaper Novice Seers::257532|r。
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,300 --Attuned
    .goto 2521,39,47.37
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521/2991,2069.300,3148.300,30,0
    .goto 2521/2991,2014.700,3206.600,40,0
    .goto 2521/2991,2137.300,3225.600,60,0
    >>杀死 |cRXP_ENEMY_Windshaper Novice Seers::257532|r。
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    #completewith Turn in The Adventurer
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith Turn in The Adventurer
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话。
    .turnin 96638 >>交任务 冒险者
    .target Raan Wildwind::263664
    .accept 96101 >>接受任务 壮丽自然
step
    .goto 2521,41.67,44.79
    >>点击 使用中物品 窗口中的宏来坐下。
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>坐下
    .timer 59,完成倒计时 1
step << Alliance
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,20 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_使用"活跃物品"框架中的宏来制作|r |T133685:0|t[Linen Bandages] 和 |T133974:0|t[烧烤狼肉]供后续任务使用。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro First Aid,135966 >>急救
    .macro Cooking,133971 >>烹饪
step
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,20 -- Linen Cloth
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_点击"活跃物品"框架中的宏来制作|r |T133685:0|t[Linen Bandages]供后续任务使用。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro First Aid,135966 >>急救
step << Alliance
    .aura -1289723
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_点击"活跃物品"框架中的宏来制作|r |T133974:0|t[烧烤狼肉]供后续任务使用|r
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Cooking,133971 >>烹饪
step
    .aura -1289723
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .aura 1289723
    >>过程已被取消。请再次使用SIT宏来重新启动。
    *|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    .complete 96101,2 --Gain the Boosted Rest buff
    -- .timer 59,Time until completion 2
    .macro Sit,134400 >>坐下
step << Alliance
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,20 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_使用"活跃物品"框架中的宏来制作|r |T133685:0|t[Linen Bandages] 和 |T133974:0|t[烧烤狼肉]供后续任务使用。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro First Aid,135966 >>急救
    .macro Cooking,133971 >>烹饪
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,20 -- Linen Cloth
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_点击"活跃物品"框架中的宏来制作|r |T133685:0|t[Linen Bandages]供后续任务使用。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro First Aid,135966 >>急救
step << Alliance
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *|cRXP_WARN_点击"活跃物品"框架中的宏来制作|r |T133974:0|t[烧烤狼肉]供后续任务使用|r
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Cooking,133971 >>烹饪
step
    >>|cRXP_WARN_不要移动或跳跃，直到任务完成|r。
    *你可以制作物品并重新上增益，不会丢失任务进度。在此处吃增益食物可获得额外5%的击杀经验。制作或进食时顺便整理背包。
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话。
    .turnin 96101 >>交任务壮丽自然
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .skill mining,<20,1 --Mining skill 20 or higher
    .train 1230161,1 --Lodestone
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97970 >>接受任务 Camping 101: 采矿
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .skill skinning,<20,1 --Skinning skill 20 or higher
    .train 1229517,1 --Camp Chair
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97971 >>接受任务 Camping 101: 剥皮
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 96646 >>接受任务 Camping 101: 烹饪
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .skill herbalism,<20,1 --Herbalism skill 20 or higher
    .train 1229705,1 --Incense Candle
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97968 >>接受任务 Camping 101: 草药学
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .skill firstaid,<20,1 --First Aid skill 20 or higher
    .train 1230117,1 --First Aid Kit
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97965 >>接受任务 Camping 101: 急救
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .train 1229745,1 --Fish Bowl
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97967 >>接受任务 Camping 101: 钓鱼
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .train 1230564,1 --Mana Well
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97963 >>接受任务 Camping 101: 炼金术
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .train 1230171,1 --Sharpening Wheel
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97964 >>接受任务 Camping 101: 锻造
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .train 1263425,1 --Faction Banner << Alliance
    .train 1229504,1 --Faction Banner << Horde
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97973 >>接受任务 Camping 101: 裁缝
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .train 1230643,1 --Enchanted Lute
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 98286 >>接受任务 Camping 101: 附魔
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 1229432,1 --Camp Tent
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Raan Wildwind::263664|r 对话
    .accept 97969 >>接受任务 Camping 101: 制皮
    .target Raan Wildwind::263664
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 3273,3 -- First Aid Trained
    .skill firstaid,<3,1 --First Aid skill 10 or higher
    .goto 2521,43.08,46.31
    >>点击"活跃物品框架"中的宏来制作 |T133685:0|t[Linen Bandages]。
    *|cRXP_WARN_如果你没有足够的亚麻布剩余，跳过此步|r。
    .complete 97965,1 >>完成任务 Camping 101: 急救
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro First Aid,135966 >>急救
step
    #hidewindow
    #completewith FinishFood
    #loop
    .goto 2521/2991,2043.200,3268.600,40,0
    .goto 2521/2991,2125.400,3353.900,40,0
    .goto 2521/2991,2004.100,3461.200,40,0
    .goto 2521/2991,1908.800,3382.900,40,0
    +1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>杀死 |cRXP_ENEMY_Prideclaws::251245|r。拾取 |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r]。
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label FinishFood
    >>杀死 |cRXP_ENEMY_Galestriders::251661|r。拾取 |T133972:0|t[|cRXP_LOOT_Strider 肉|r]和 |T132832:0|t[|cRXP_LOOT_Small 道具|r]。
    *|cRXP_WARN_如果你计划把全部8个Strider 肉和3个小 道具邮寄给自己，跳过此步|r。
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naleeia Tattermend::257018|r 对话 |cRXP_WARN_在塔内|r。
    .turnin 97965 >>交任务 Camping 101: 急救
    .target Naleeia Tattermend::257018
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fenn Fairweather::251992|r 对话
    .turnin 97967 >>交任务 Camping 101: 钓鱼
    .target Fenn Fairweather::251992
step << Horde Shaman
    .money <0.10
    .xp <8,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aarnor Galestrike::254082|r 对话
    .trainer >>训练你的职业技能
    .target Aarnor Galestrike::254082
step
    .train 2366,3 --Herbalism Trained
    .isQuestComplete 97968 --Camping 101: Herbalism
    .isQuestComplete 92516 --Hippogryph Harassment
    .goto 2521,43.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Halassa Fernbreeze::257021|r 对话。
    .turnin 97968 >>交任务 Camping 101: 草药学
    .target Halassa Fernbreeze::257021
step << Rogue
    .money <0.04
    .xp <8,1
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Miriaan Mistblade::254087|r 对话
    *|cRXP_WARN_不要使用|r |T132845:0|t[踏空而行] |cRXP_WARN_在此步骤|r。
    .train 5277 >>训练 |T136205:0|t[闪避]
    .train 6760 >>训练 |T132292:0|t[刺骨 (级别 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r 对话
    .turnin 98286 >>交任务 Camping 101: 附魔
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mendalass Tattermend::257024|r 对话
    .turnin 97971 >>交任务 Camping 101: 剥皮
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话并购买5个 |T134059:0|t[甜香料]
    .vendor 251905 >>把垃圾物品卖给商人
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .turnin 92553 >>交任务"Restocking the Larders"
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 对话
    .turnin 96646 >>交任务 Camping 101: 烹饪
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +使用下面的 |T132834:0|t[草药烘蛋] 宏尽可能多地制作。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物，请跳过此步|r。
    *|cRXP_WARN_大多数增益食物可以在15分钟内提供5%的击杀经验加成。在升级时尽量保持这个增益的高活跃时间|r。
    *|cRXP_BUY_购买5-20个|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_如果你还没有|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来制作1个以获得经验加成。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物，请跳过此步|r。
    *|cRXP_WARN_大多数增益食物可以在15分钟内提供5%的击杀经验加成。在升级时尽量保持这个增益的高活跃时间|r。
    *|cRXP_BUY_购买5-20个|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_如果你还没有|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +使用下方的 |T132834:0|t[草药烘蛋] 宏来制作超过为《补充储藏室》保留的3个小蛋之外的每个小蛋。
    *|cRXP_WARN_如果你已经给自己邮寄了增益食物，请跳过此步|r。
    *|cRXP_WARN_为后面的任务至少保留3个小蛋|r
    *|cRXP_WARN_大多数增益食物可以在15分钟内提供5%的击杀经验加成。在升级时尽量保持这个增益的高活跃时间|r。
    *|cRXP_BUY_购买5-20个|r |T134059:0|t[甜香料] |cRXP_BUY_从|r |cRXP_FRIENDLY_Zerril Softbreeze|r |cRXP_WARN_如果你还没有|r。
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_你可能需要按两次宏|r。
    .macro Herb Baked Egg,132834 >>草药烘蛋
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r 对话
    .turnin 97963 >>交任务 Camping 101: 炼金术
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r 对话
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>交任务 A Little 美美
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r 对话
    .turnin 97973 >>交任务 Camping 101: 裁缝
    .target Taleen Shimmerthread::251991
step << Shaman/Druid
    .money <0.0504
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tephri Thriceforged::257421|r 对话。
    .vendor 257421 >>修理你的装备。
    .target Tephri Thriceforged::257421
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aedi Thriceforged::251913|r 对话
    .turnin 97964 >>交任务 Camping 101: 锻造
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Messana Crestwind::257022|r 对话
    .turnin 97970 >>交任务 Camping 101: 采矿
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Indari Sunseam::251993|r 对话
    .target Indari Sunseam::251993
    .turnin 92515 >>交任务 The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Indari Sunseam::251993|r 对话
    .turnin 97969 >>交任务 Camping 101: 制皮
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Teeri Wellwind::251906|r 对话
    .target Teeri Wellwind::251906
    .turnin 92516 >>交任务 角鹰兽 骚扰
    .turnin 93319 >>交任务 Pilfered Windstones
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Veena Vericloud::254358|r 对话
    .vendor 254358 >>出售废料给商人。|cRXP_BUY_购买最多三个|r |T133634:0|t[棕色小袋] |cRXP_BUY_根据需要|r。
    *|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_BUY_购买|r |T132382:0|t[锋利的箭] << Hunter
    *|cRXP_WARN_装备包时，确保你的试剂包在专用试剂包栏位|r。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    .collect 2515,1000 << Hunter --Sharp Arrows (1000)
    .target Veena Vericloud::254358
step << Warrior
    .money <0.05
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .xp <8,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Corsan Earthrazer::254088|r 对话
    .train 284 >> 训练 |T132282:0|t[英雄级别 Strike (级别 2)]
    .train 1715 >> 训练 |T132316:0|t[断筋]
    .train 6343 >> 学习 |T136105:0|t[雷霆一击]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Danarii Bellowveil::252172|r 对话
    .target Danarii Bellowveil::252172
    .turnin 93318,1 >>交任务 WANTED: Vulgara the Insatiable
step << Druid
    .money <0.04
    .subzoneskip 16624,1 -- Shen'dar Village
    .xp <8,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r 对话。
    .train 339 >>训练 |T136100:0|t[纠缠根须]
    .train 5186 >>训练 |T136041:0|t[治疗 Touch (级别 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.04
    .xp <8,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elayaa Easewind::254084|r 对话。
    .train 5116 >>训练 |T135860:0|t[震荡射击]
    .train 3127 >>学习 |T132269:0|t[招架]
    .train 14260 >>训练 |T132223:0|t[猛禽一击 (级别 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Danarii Bellowveil::252172|r 对话。
    .turnin 92551 >>交任务 Stolen 补给
    .target Danarii Bellowveil::252172
step
    #label SkybornePart1End
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .turnin 92550,3 >>交任务 Havoc in the Highlands
    .turnin 93927 >>交任务 A 拉斯特 Request
    .accept 92701 >>接受任务 To Valanaar << Alliance
    .accept 92579 >>接受任务 To Valanaar << Horde
    .accept 93948 >>接受任务 Deliver the Signet
    .target Constable Aonda::251523
step << Mage
    .money <0.06
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shenaan Spellwind::254086|r 对话
    .train 5143 >> 学习 |T136096:0|t[奥术飞弹]
    .train 205 >> 训练 |T135846:0|t[寒冰箭 (级别 2)]
    .train 118 >> 学习 |T136071:0|t[变形术]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Mage
    .money <0.02
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Shenaan Spellwind::254086|r 对话
    .train 5143 >> 学习 |T136096:0|t[奥术飞弹]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathiril Sunlance::251903|r 对话。
    .turnin 94413 >>交任务 A Magical Affront
    .target Rathiril Sunlance::251903
]])
--Skyborne leveling guide: Part 2
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 9-13 Zephras Isle V2
#displayname 9-13 Skyborne V2 << Alliance
#displayname 9-12 Skyborne V2 << Horde
#group RestedXP 无限指南 (联盟) << Alliance
#group RestedXP 无限指南 (部落) << Horde
#subgroup Speedrun 指南 1-20 << Alliance
#subgroup Speedrun 指南 1-22 << Horde
#next 13-15级 西部荒野 << Alliance !Hunter
#next 14-16级 黑海岸 << Alliance Hunter
#next 12-14级 银松森林 << Horde !Hunter
#next 12-17级 贫瘠之地 << Horde Hunter
#defaultfor Skyborne
#internal

step
    #optional
    .isQuestAvailable 92550,93927 --Havoc in the Highlands; A Last Request
    +|cRXP_WARN_完成1-9 Skyborne指南后再继续。该指南需要第1部分的任务|r。
    .clicknext RestedXP Forever Guide (A)\1-9 Zephras Isle >>点击此处查看1-9 Skyborne指南 << Alliance
    .clicknext RestedXP Forever Guide (H)\1-9 Zephras Isle >>点击此处查看1-9 Skyborne指南 << Horde
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +可能的龙卷风刷新地点
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.27,76.45,Tornado
    .pin 2521,57.91,75.86,Tornado
    .pin 2521,42.13,39.24,Tornado
    .pin 2521,64,75.79,Tornado
    .pin 2521,52.67,41.92,Tornado
    .pin 2521,68.63,65.95,Tornado
    .pin 2521,48.14,56.56,Tornado
    .pin 2521,39.6,45.11,Tornado
    .pin 2521,54.92,44.76,Tornado
    .pin 2521,58.55,52.75,Tornado
    .pin 2521,47.74,69.57,Tornado
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Constable Aonda::251523|r 对话。
    .accept 92701 >>接受任务 To Valanaar << Alliance
    .accept 92579 >>接受任务 To Valanaar << Horde
    .accept 93948 >>接受任务 Deliver the Signet
    .target Constable Aonda::251523
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Windstones
    .use 255663 --Windstones
--here maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.4,58.76
    .cast 1259416 >>从山上跳下来，使用 |T132845:0|t[踏空而行] 飞向所在地区的路标。
    .usespell 1259416
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fenn Fairweather::251992|r 对话
    .turnin 97967 >>交任务 Camping 101: 钓鱼
    .target Fenn Fairweather::251992
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>在路点所在地区死亡
    *|cRXP_WARN_在战斗中使用坐下宏，可加快死亡速度|r。
    *|cRXP_WARN_否则，你可能会被传送到不同的墓地|r
    *|cRXP_WARN_如果直接穿过田野请小心，你很容易死亡|r。
    .macro Sit to Die Faster,134400 >>坐下以更快地死亡
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
-- step << Horde
--     .goto 2521,56.81,61.11
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     *|cRXP_WARN_If a Tornado is nearby, touch it to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
--     .accept 98512 >>Accept Al'Aketh Assassins
--     .target Fendaal Windstone::273017
-- step << Horde
--     #loop
--     .goto 2521,55.27,59.58,35,0
--     .goto 2521,54.58,60.52,35,0
--     .goto 2521,55.93,60.3,35,0
--     .goto 2521,56.04,59.08,35,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
--     .complete 98512,1 --10/10 Al'Aketh Assassin slain
--     .mob Al'Aketh Assassin::254626
-- step << Horde
--     .goto 2521,56.80,61.10
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     .turnin 98512 >>Turn in Al'Aketh Assassins
--     .target Fendaal Windstone::273017
step << Alliance Hunter
    .xp <9,1
    .money <0.1345
    .itemcount 277110,<1 --Zephrali Bow
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>向商人出售垃圾物品，必要时修理
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Hunter
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_装备|r |T7810733:0|t[泽风弓]。
    .use 277110 --Zephrali Bow
step << Alliance Warrior/Alliance Paladin
    .xp <9,1
    .money <0.2151
    .itemcount 277106,<1 --Zephrali Smasher
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7792097:0|t[泽风粉碎者]。
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Warrior/Alliance Paladin
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_装备|r |T7792097:0|t[泽风粉碎者]。
    .use 277106 --Zephrali Smasher
step << Alliance Shaman/Alliance Druid
    .xp <9,1
    .money <0.2176
    .itemcount 277109,<1 --Zephrali Greatstaff
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备|r |T7798447:0|t[泽风巨杖]。
    .collect 277109,1 --Zephrali Greatstaff
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Shaman/Alliance Druid
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_装备|r |T7798447:0|t[泽风巨杖]。
    .use 277109 --Zephrali Greatstaff
step << Alliance Rogue
    .xp <9,1
    .money <0.1727
    .itemcount 277107,<1 --Zephrali Bludgeon
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备|r |T7791298:0|t[泽风大头棒]。
    *如果你能负担且还没买，就购买两把。保存第二把直到你可以双持。
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Rogue
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_装备|r |T7791298:0|t[泽风大头棒]。
    .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nyalah Brightfire::257006|r 对话。
    *|cRXP_WARN_如果看到龙卷风，靠近它可以获得5分钟的40%移速加成。如果造成伤害则效果消失|r。
    .target Nyalah Brightfire::257006
    .accept 93317 >>接受任务 Crab Season
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Donaal Downbreeze::255940|r 对话。
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>设置你的炉石为Valanaar
    .goto 2521,62.180,72.616
-- step -- commented out for now too many vendor steps in a row
--     .isNotOnQuest 92679 -- Blood Tithe
--     .subzoneskip 16638,1 -- Valanaar
--     .isOnQuest 93948 -- Deliver the Signet
--     .goto 2521,62.180,72.616,10,0
--     .goto 2521,61.95,72.84,10,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
--     .vendor 255940 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Donaal Downbreeze::255940
--     .skipgossipid 137078
--     .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #optional
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_在第二层|r 对话。
    .target Alvarion Windfield::252448
    .accept 92679 >>接受任务 鲜血 Tithe
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>上楼
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 |cRXP_FRIENDLY_二楼|r 与 |cRXP_WARN_Alvarion Windfield::252448|r 对话。
    .target Alvarion Windfield::252448
    .accept 92679 >>接受任务 鲜血 Tithe
step << Alliance
    #optional
    #completewith BuggedAcceptedA
    .isNotOnQuest 93949 --Bugged
    +|cRXP_WARN_不要使用|r |T132845:0|t[踏空而行] |cRXP_WARN_直到你接受任务:Bugged|r。
step << Horde
    .isNotOnQuest 94484 --Unnerving Silence
    .subzoneskip 16638,1 --Valanaar
    .isQuestAvailable 93948 --Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>越过山丘。
step << Alliance
    .aura -1259691 --Attuned
    .isNotOnQuest 94484 --Unnerving Silence
    .subzoneskip 16638,1 --Valanaar
    .isQuestAvailable 93948 --Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>越过山丘。
step << Alliance
    .aura 1259691,300 --Attuned
    .isNotOnQuest 94484 --Unnerving Silence
    .subzoneskip 16638,1 --Valanaar
    .isQuestAvailable 93948 --Deliver the Signet
    .cooldown spell,1259705,>0,1 --Read Ley Line
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.9,74.16
    *越过山丘。
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705 --Read Ley Line
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .accept 94484 >>接受任务 Unnerving 默然
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r 对话。
    .accept 94896 >>接受任务 Aid For The Refugees
    .accept 94897 >>接受任务 The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step
    #optional
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .turnin 93948 >>交任务 Deliver the Signet
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
    .goto 2521,66.44,76.4,5 >>爬上塔楼
step
    #requires DeliverTheSignetA
    #label Deliver the Signet
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .turnin 93948 >>交任务 Deliver the Signet
    .target Talaanis Shadowsong::252476
step
    #label BuggedAcceptedA
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92701 >>交任务 To Valanaar << Alliance
    .turnin 92579,3 >>交任务 To Valanaar << Horde
    .accept 92699 >>接受任务 The Supreme Magister << Alliance
    .accept 92700 >>接受任务 The Grand Skyseer << Horde
    .accept 93949 >>接受任务 Bugged << Alliance
    .target Valennia Stormfist::252383

-- ============================================================================
-- Alliance: The Missing Scholar Route
-- ============================================================================

step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>从树上跳下并使用 |T132845:0|t[踏空而行] 朝任务给予者飞去。
    *|cRXP_WARN_如果计时得当，可以在空中取消来落在建筑物内|r
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>取消踏空而行
step << Alliance
    #completewith Unwelcome Visitors
    .aura 1258510
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .turnin 92699 >>交任务 The Supreme Magister
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dondallion 语风号::253204|r 对话。
    .accept 92727 >>接受任务 The 缺失 Scholar
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r 对话。
    .accept 92741 >>接受任务 Unwelcome Visitor
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,67.41,80.46
    .subzone 16626 >>跳下悬崖并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bloodstained Satchel::581822|r
    *|cRXP_WARN_如果有Tornado，使用它快速旅行|r。
    *小心 |cRXP_ENEMY_Ornery Galestrider::251707|r。
    .turnin 92727 >>交任务 The 缺失 Scholar
    .accept 92849 >>接受任务 The 缺失 Scholar
    .target Bloodstained Satchel::581822
    .mob Ornery Galestrider::251707
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r |cRXP_WARN_在洞穴内|r。
    *|cRXP_WARN_避开鸟类，在非战斗状态下点击Fillion，否则会被传送出去|r。
    *|cRXP_WARN_如果有Tornado，使用它快速旅行|r。
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r |cRXP_WARN_在洞穴内|r。
    *|cRXP_WARN_避开鸟类，在非战斗状态下点击Fillion，否则会被传送出去|r。
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>护送 |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r 到安全处。
    *|cRXP_WARN_避开鸟类，在非战斗状态下点击Fillion，否则会被传送出去|r。
    *|cRXP_WARN_如果有鸟攻击你，取消 |T236440:0|t[Saving Fillion Flamebreeze] 光环以避免被传送到场地外|r。
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r 对话。
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>交任务 The 缺失 Scholar 1
    .accept 92850 >>接受任务 The 缺失 Scholar 2
-- step << Alliance
--     #completewith next
--     #label Shriekling Matriarch
--     .goto 2521,51.39,68.2,20,0
--     >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
--     .complete 92850,1 --1/1 Shriekling Matriarch's Head
--     .mob Shriekling Matriarch::253283
step << Alliance
    -- #completewith Shriekling Matriarch
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .goto 2521,51.41,68.9,15,0
    .goto 2521,52.02,65.51,130 >>进入洞穴
step << Alliance
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,52.49,65.97,30,0
    .goto 2521,52.48,66.04
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>击杀 |cRXP_ENEMY_Shriekling Matriarch::253283|r。拾取 |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's 头部|r]。
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .isQuestComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,51.75,66.33,30,0
    .goto 2521,51.05,66.66,20,0
    .goto 2521,51.16,67.53,20,0
    .goto 2521,51.31,68.99,25 >>离开洞穴
step << Alliance
    #completewith FindAameliaWindfieldA
    >>杀死 |cRXP_ENEMY_Windsong Crawlers::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031

-- ============================================================================
-- Horde: The Grand Skyseer Route
-- ============================================================================

-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>从塔上跳下 并使用 |T132845:0|t[踏空而行] 朝路点位置飞行。
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>取消 踏空而行
-- step << Horde Hunter
--     .goto 2521,63.027,77.807
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r 600 |T132382:0|t[Rough Arrows]
--     .collect 2512,600 --Rough Arrow (600)
--     .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,45,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r 对话。
    .turnin 92700 >>交任务 The Grand Skyseer
    .accept 92708 >>接受任务 A Grand Adventure
    .timer 75,剧情事件时长
    .accept 93735 >>接受任务 The 破碎者 构造体 1
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 93735 -- A Grand Adventure
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,59.154,79.783
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344
step << Horde Hunter
    .xp <9,1
    .money <0.1345
    .itemcount 277110,<1 --Zephrali Bow
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>向商人出售垃圾物品，必要时修理
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Hunter
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_装备|r |T7810733:0|t[泽风弓]。
    .use 277110 --Zephrali Bow
step << Horde Warrior
    .xp <9,1
    .money <0.2151
    .itemcount 277106,<1 --Zephrali Smasher
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7792097:0|t[泽风粉碎者]。
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Warrior
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_装备|r |T7792097:0|t[泽风粉碎者]。
    .use 277106 --Zephrali Smasher
step << Horde Shaman/Horde Druid
    .xp <9,1
    .money <0.2176
    .itemcount 277109,<1 --Zephrali Greatstaff
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一把|r |T7798447:0|t[泽风巨杖]。
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Shaman/Horde Druid
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_装备|r |T7798447:0|t[泽风巨杖]。
    .use 277109 --Zephrali Greatstaff
step << Horde Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备|r |T7791298:0|t[泽风大头棒]。
    *如果你能买的话就买两个。
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Rogue
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_装备|r |T7791298:0|t[泽风大头棒]。
    .use 277107 --Zephrali Bludgeon
-- step << Horde
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .target Syriel Nightrain::254345
--     .turnin 97968 >>Turn in Camping 101: Herbalism
step << Hunter Horde
    .money <0.1345
    .itemcount 277110,<1 --Zephrali Bow
    .isOnQuest 93735 -- The Broken Construct
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>向商人出售垃圾物品，必要时修理
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Riaani Nightwind::256083|r 对话。
    .target Riaani Nightwind::256083
    .turnin 93735 >>交任务 The 破碎者 构造体 1
    .accept 93737 >>接受任务 The 破碎者 构造体 2
    .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
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
step << Horde
    --@THIDDI: Not sure if worth it.
    #completewith next
    #label BrokenConstructA
    #hidewindow
    >>|TInterface/cursor/crosshair/interact.blp:20|t在 |cRXP_PICK_洞穴底层|r 点击 |cRXP_WARN_Construct Parts|r。
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Horde
    #completewith BrokenConstructA
    .goto 2521,51.397,68.644,15 >>进入洞穴
step << Horde
    --@THIDDI: Not sure if worth it.
    #requires BrokenConstructA
    #loop
    .goto 2521,51.434,67.603,15,0
    .goto 2521,51.874,67.221,15,0
    .goto 2521,52.933,66.084,15,0
    .goto 2521,53.201,65.424,15,0
    .goto 2521,52.752,64.732,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t在 |cRXP_PICK_洞穴底层|r 点击 |cRXP_WARN_Construct Parts|r。
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave

step << Horde
    #completewith next
    #label BrokenConstructB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_她可能在剧情演出期间在位置间移动。请在路点所在地区等待。|r
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step << Horde
    #completewith BrokenConstructB
    .goto 2521,51.397,68.644,15 >>离开洞穴

-- ============================================================================
-- Shared Route Resumes at Windfield Orchard
-- ============================================================================

step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.94
    --fix loop later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_她可能在剧情演出期间在不同位置之间移动|r。
    *|cRXP_WARN_从远处寻找她或跟随她的对话；箭头只标记大致的所在地区|r。
    *|cRXP_WARN_如果有Tornado，使用它快速旅行|r。
    *|cRXP_WARN_如果走过果园，小心隐身的强盗|r。
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    --fix loop later
    .goto 2521,46.71,81.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_她可能在剧情演出期间在不同位置之间移动|r。
    *|cRXP_WARN_从远处寻找她或跟随她的对话；箭头只标记大致的所在地区|r。
    .turnin 92679 >>交任务 鲜血 Tithe
    .accept 92682 >>接受任务 派上用场
    .accept 92684 >>接受任务 Ornery Ornery Galestriders
    .accept 92683 >>接受任务 Flutterfly Dust
    .target Aamelia Windfield::252800
-- step << Alliance
--     .isOnQuest 92682 -- Make Yourself Useful
--     .isQuestNotComplete 92682 -- Make Yourself Useful
--     .subzoneskip 16663,1 -- Windfield Orchard
--     .goto 2521,45.73,80.86
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    -- #label RipBanditsA
    --fix loop later
    -- #loop
    -- .goto 2521,46.92,81.63,30,0
    -- .goto 2521,48.08,80.63,30,0
    -- .goto 2521,47.43,79.26,30,0
    .goto 2521,46.26,78.04
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Ripe Stormapples|r。
    >>击杀 |cRXP_ENEMY_Hungry Bandits::252802|r |cRXP_WARN_(隐身)|r。
    *猎人小贴士：按Tab键提前选择目标，对他们使用猎人's Mark这样你可以远离并从更远处攻击。 << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,48.416,80.537
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step
    #optional
    #completewith WhatIsMyPurposeA
    >>击杀 |cRXP_ENEMY_Ornery Galestriders::251707|r，拾取它们的 |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r]。
    *|cRXP_WARN_小心|r。|cRXP_ENEMY_Ornery Galestriders|r |cRXP_WARN_使用|r |T132156:0|t[尘雾之云] |cRXP_WARN_来降低你的命中率|r。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #optional
    #completewith WhatIsMyPurposeA
    >>对 |cRXP_ENEMY_Flutterflies::251622|r 持续使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_Flutterfly Dust|r。
    *|cRXP_WARN_如果Flutterfly没有飞走，再对它使用拍子|r << !Mage !Druid
    *|cRXP_WARN_反复施放|r |T136071:0|t[变形术] |cRXP_WARN_并对同一只Flutterfly再次使用拍子以获得额外粉尘|r。 << Mage
    *|cRXP_WARN_施放|r |T136100:0|t[纠缠根须] |cRXP_WARN_并对同一只Flutterfly使用swatter获得额外尘埃|r。 << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Malfunctioning Cyclone 构造体::250929|r 对话。
    .accept 92698 >>接受任务 What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929


-- ============================================================================
-- Windfield Orchard Route Resumes
-- ============================================================================

step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    +1
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_Ornery Galestriders::251707|r，拾取它们的 |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r]。
    *|cRXP_WARN_小心|r。|cRXP_ENEMY_Ornery Galestriders|r |cRXP_WARN_使用|r |T132156:0|t[尘雾之云] |cRXP_WARN_来降低你的命中率|r。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>对 |cRXP_ENEMY_Flutterflies::251622|r 持续使用 |T537768:0|t[扑翼蝶拍]
    >>|TInterface/cursor/crosshair/interact.blp:16|t点击 |cRXP_PICK_Flutterfly Dust|r。
    *|cRXP_WARN_如果Flutterfly没有飞走，再对它使用拍子|r << !Mage !Druid
    *|cRXP_WARN_反复施放|r |T136071:0|t[变形术] |cRXP_WARN_并对同一只Flutterfly再次使用拍子以获得额外粉尘|r。 << Mage
    *|cRXP_WARN_施放|r |T136100:0|t[纠缠根须] |cRXP_WARN_并对同一只Flutterfly使用swatter获得额外尘埃|r。 << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label GalestriderTenderloinA
    >>击杀 |cRXP_ENEMY_Ornery Galestriders::251707|r，拾取它们的 |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r]。
    *|cRXP_WARN_小心|r。|cRXP_ENEMY_Ornery Galestriders|r |cRXP_WARN_使用|r |T132156:0|t[尘雾之云] |cRXP_WARN_来降低你的命中率|r。
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_如果附近有龙卷风，使用它可以更快地旅行|r。
    *|cRXP_WARN_她可能会在剧情演出期间在不同位置间移动|r
    *|cRXP_WARN_从远处寻找她或跟随她的对话；箭头只标记大致所在地区|r
    .turnin 92682 >>交任务 派上用场
    .turnin 92684,3 >>交任务 Ornery Ornery Galestriders
    .turnin 92698 >>交任务 What Is My Purpose?
    .turnin 92683 >>交任务 Flutterfly Dust
    .accept 92685 >>接受任务 The Hills Have 眼睛
    .target Aamelia Windfield::252800

-- ============================================================================
-- Horde Shaman: Call of Fire Detour
-- ============================================================================

step << Horde Shaman
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    .xp 10 >>刷怪练级到 10 级
step << Horde Shaman
    #completewith next
    .hs >>炉石到 Valanaar
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .isQuestAvailable 97243 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Donaal Downbreeze::255940|r 对话。
    .vendor 255940 >>把垃圾物品卖给商人
    .collect 1179,20 >>购买 |T132815:0|t[冰镇牛奶] << Mage/Druid/Priest/Warlock/Paladin/Hunter/Shaman
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sessaria Skystride::252382|r 对话。
    .accept 97243 >>接受任务 火焰的召唤
    .target Sessaria Skystride::252382
step << Horde Shaman
    .money <0.12
    .isQuestAvailable 97243 -- Call of Fire
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sessaria Skystride::252382|r 对话。
    .trainer >>训练你的职业技能
    .target Sessaria Skystride::252382
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .turnin 97243 >>交任务 火焰的召唤
    .accept 97244 >>接受任务 火焰的召唤
    .target Olariaan Swiftburn::268592
step << Horde Shaman
    .isOnQuest 97244 --Call of Fire
    .isQuestNotComplete 97244 --Call of Fire
    .goto 2521,50.8,89.6
    .subzone 16593 >>跳下悬崖并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step << Horde Shaman
    #ignorecorpse
    .isOnQuest 97244 --Call of Fire
    .isQuestNotComplete 97244 --Call of Fire
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>杀死 |cRXP_ENEMY_Skypriest Faladiel::268602|r。拾取他的 |T839910:0|t[|cRXP_LOOT_Faladiel's Heart|r]。
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
step << Horde Shaman
    #completewith next
    .isOnQuest 97244 --Call of Fire
    .isQuestComplete 97244 --Call of Fire
    .goto 2521,62.384,64.393,-1
    .goto 2521,54.99,68.14,-1
    +死亡然后在 |cRXP_FRIENDLY_Spirit 治疗者::6491|r 处复活。
step << Horde Shaman
    .isOnQuest 97244 --Call of Fire
    .isQuestComplete 97244 --Call of Fire
    #ignorecorpse
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>交任务 火焰的召唤
    .accept 97245 >>接受任务 火焰的召唤

-- ============================================================================
-- The Hills Have Eyes: Bandit Hunt
-- ============================================================================

step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,600 --Attuned
    .goto 2521,45.73,80.86
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step
    #completewith next
    #label Bandit Highwaymen
    *如果你没有 |T7791298:0|t[泽风大头棒]，就|cRXP_WARN_装备|r |T7791298:0|t[扑翼蝶拍]。 << Rogue
    >>杀死 |cRXP_ENEMY_Bandit Highwaymen::252820|r。拾取 |T133693:0|t[|cRXP_LOOT_Blood-Stained 强盗 Masks|r]。
    *|cRXP_WARN_小心苹果园里隐形的敌人|r
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
    .use 263329 << Rogue -- Flutterfly Swatter
step
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>向山上走
    *|cRXP_WARN_如果你看到 Tornado，使用它来加速移动|r
step << Horde
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Construct Parts|r。
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>杀死 |cRXP_ENEMY_Bandit Highwaymen::252820|r。拾取 |T133693:0|t[|cRXP_LOOT_Blood-Stained 强盗 Masks|r]。
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Construct Parts|r。
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Kuramaa's Stump|r。
    >>杀死 |cRXP_ENEMY_Kuramaa::268605|r。拾取 |T3549050:0|t[|cRXP_LOOT_Kuramaa's 面罩|r]。
    *|cRXP_WARN_他会击退你并受到额外的火焰伤害|r
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .xp 10 >>刷怪练级到 10 级
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_她可能会在剧情演出期间在不同位置间移动|r
    *|cRXP_WARN_从远处寻找她或跟随她的对话；箭头只标记大致所在地区|r
    .turnin 92685 >>交任务 The Hills Have 眼睛
    .accept 92693 >>接受任务 排名 Our Ground << Alliance
    .target Aamelia Windfield::252800
step
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>跳下山峰并使用 |T132845:0|t[踏空而行] |cRXP_WARN_在空中|r 飞往路径点所在地区。
    .usespell 1259416
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_她可能在剧情演出期间在不同位置之间移动|r。
    *|cRXP_WARN_从远处寻找她或跟随她的对话；箭头只标记大致的所在地区|r。
    *你可以跳下山峰并使用 |T132845:0|t[踏空而行] |cRXP_WARN_在空中|r 飞往路径点所在地区。
    *|cRXP_WARN_小心路上隐形的盗贼|r
    .turnin 92685 >>交任务 The Hills Have 眼睛
    .accept 92693 >>接受任务 排名 Our Ground << Alliance
    .target Aamelia Windfield::252800
step << Alliance
    .goto 2521,46.71,81.94
    >>返回 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 的主要所在地区并与她对话。
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,剧情事件时长
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance
    .goto 2521,47.51,78.44
    >>跟随 |cRXP_FRIENDLY_Aamelia Windfield::252800|r。等待剧情演出。
    *当 Aamelia 停下时，如果你有营火且附近没有的话，就放一个。开始烹饪以提升技能。
    *|cRXP_WARN_任务完成后立即交任务，Aamelia 很快就会跑开|r。
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981 -- Basic Campfire Kit
step << Alliance
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Aamelia Windfield::252800|r 对话。
    *|cRXP_WARN_立即交任务；Aamelia 很快会返回她的原始所在地区|r
    .turnin 92693 >>交任务 排名 Our Ground
    .accept 92703 >>接受任务 Deliver the 新闻
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703 -- Deliver the News
    .goto 2521,48.445,80.591
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step << Horde !Shaman
    #ignorecorpse
    .isOnQuest 92703 --Deliver the News
    .showwhiledead
    .goto 2521,48.823,83.150,-1
    .goto 2521,54.99,68.14,-1
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t死亡然后与 |cRXP_FRIENDLY_Spirit 治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491

-- ============================================================================
-- City: Alliance and Non-Shaman Horde
-- ============================================================================

step << Alliance
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>回到瓦兰纳尔
    .cooldown item,6948,>0 --Hearthstone
-- step << Alliance
--     #completewith Turn in The Missing Scholar
--     .aura 1258510
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_If you find a Tornado, touch it to gain its speed buff|r.
--     *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
-- step
--     .goto 2521,50.33,76.66
--     .goto 2521,54.13,76.3
step << Alliance/Horde Hunter
    .isQuestAvailable 92703 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Donaal Downbreeze::255940|r 对话。
    *|cRXP_BUY_购买|r |T134534:0|t[森林蘑菇] |cRXP_BUY_从他那里|r。|cRXP_BUY_你稍后会用这个来喂养你的|r 宠物 << Hunter
    .vendor 255940 >>把垃圾物品卖给商人
    .collect 1179,20 >>购买 |T132815:0|t[冰镇牛奶] << Mage/Druid/Priest/Warlock/Paladin/Hunter
    .collect 4604,5 << Hunter -- Forest Mushroom
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078

-- ============================================================================
-- Horde Shaman: Call of Fire Finale
-- ============================================================================

step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r 对话。
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>交任务 火焰的召唤
    .accept 97257 >>接受任务 火焰的召唤
    .timer 35,剧情事件时长
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>等待剧情演出。在燃烧的 |cRXP_PICK_火盆|r 处使用 |T135432:0|t[永恒火焰的火把]。
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329 -- Torch of Eternal Flame
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>你大约有5分钟的时间跑回来。
    *|cRXP_WARN_如果附近有龙卷风，使用它可以更快地旅行|r。
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Sessaria Skystride::252382|r 对话。
    .target Sessaria Skystride::252382
    .turnin 97257 >>交任务 火焰的召唤
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- City: Horde Shaman
-- ============================================================================

step << Horde !Hunter
    .isOnQuest 92703 --Deliver the News
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Railee Thriceforged::257422|r 对话。
    .vendor 257422 >>|cRXP_WARN_到商人处丢弃垃圾物品并在需要时维修|r。
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Railee Thriceforged::257422


-- ============================================================================
-- Shared City Tour at Level 10
-- ============================================================================

step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 |cRXP_FRIENDLY_二楼|r 与 |cRXP_WARN_Alvarion Windfield::252448|r 对话。
    .turnin 92703,1 >>交任务 Deliver the 新闻 << Warrior/Shaman/Paladin
    .turnin 92703,2 >>交任务 Deliver the 新闻 << Druid/Priest
    .turnin 92703,3 >>交任务 Deliver the 新闻 << Rogue
    .turnin 92703 >>交任务 Deliver the 新闻 << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step << Warrior/Shaman/Paladin
    #completewith Accept Catching Wind
    .itemcount 277106,<1 << Warrior/Paladin --Zephrali Smasher
    .itemcount 277109,<1 << Shaman --Zephrali Greatstaff
    .equip 16,263312 >>|cRXP_WARN_装备|r |T134435:0|t[插下铲子]。
    .use 263312 --Planting Shovel
step << Druid/Priest
    #completewith Accept Catching Wind
    .itemcount 277109,<1 << Druid --Zephrali Greatstaff
    .itemcount 277108,<1 << Priest --Zephrali Knife
    .equip 16,263314 >>|cRXP_WARN_装备|r |T133057:0|t[屋面锤]。
    .use 263314 --Roofing Hammer
step << Rogue
    #completewith Accept Catching Wind
    .itemcount 277107,<1 --Zephrali Bludgeon
    .equip 16,263313 >>|cRXP_WARN_装备|r |T134520:0|t[可靠的扳手]。
    .use 263313 --Trusty Wrench
step << Alliance
    #completewith Turn in The Missing Scholar
    .aura 1258510
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
    *|cRXP_WARN_如果找到龙卷风，接触它以获得其速度增益|r。
    *|cRXP_WARN_龙卷风速度增益激活时，避免击杀它们|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belann Windwood::256507|r 对话。
    .target Belann Windwood::256507
    .accept 93791 >>接受任务 Speak with Belann
    .turnin 93791 >>交任务 Speak with Belann
    .accept 93797 >>接受任务 Boughs in the Wind
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .target Seena Skybreaker::252377
    .accept 94003 >>接受任务 破天壁垒
step << Warrior
    .money <0.12
    .xp <10,1
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .train 6546 >>学习 |T132155:0|t[撕裂(等级2)]
    .train 2687 >>学习 |T132277:0|t[血性狂暴]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Warrior/Paladin
    .xp <9,1
    .money <0.2151
    .itemcount 277106,<1 --Zephrali Smasher
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房屋内|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7792097:0|t[泽风粉碎者]。
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior/Paladin
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_装备|r |T7792097:0|t[泽风粉碎者]。
    .use 277106 --Zephrali Smasher
step << Shaman/Druid
    .xp <9,1
    .money <0.2176
    .itemcount 277109,<1 --Zephrali Greatstaff
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备|r |T7798447:0|t[泽风巨杖]。
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。 << Druid
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde Druid
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。 << Druid
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Shaman/Druid
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    .equip 16,277109 >>|cRXP_WARN_装备|r |T7798447:0|t[泽风巨杖]。
    .use 277109 --Zephrali Greatstaff
step << Rogue
    .money <0.09
    -- .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .xp <10,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r 对话。
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>训练 |T132147:0|t[双武器]
    -- .train 6770 >>Train |T132310:0|t[Sap]
    .train 5171 >>训练 |T132306:0|t[切割]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Rogue
    .xp <9,1
    .money <0.1727
    .itemcount 277107,<1 --Zephrali Bludgeon
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7791298:0|t[泽风大头棒]。
    *如果你能负担并且还没有购买，就买两个。保存第二个以备你能双持时使用。
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_装备|r |T7791298:0|t[泽风大头棒]。
    .use 277107 --Zephrali Bludgeon
step << Hunter
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .accept 94978 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Hunter
    .money <0.08
    .xp <10,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .train 13165 >>学习 |T136076:0|t[雄鹰守护]
    .train 13549 >>训练 |T132204:0|t[毒蛇钉刺 (级别 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
step << Hunter
    .xp <9,1
    .money <0.1345
    .itemcount 277110,<1 --Zephrali Bow
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一把|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>丢弃垃圾物品并在需要时进行维修。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_装备|r |T7810733:0|t[泽风弓]。
    .use 277110 --Zephrali Bow
step << Horde Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>翻过山峰。
step << Horde Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .accept 94006 >>接受 The Great Ursera 精神。
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>翻过山峰。
step << Alliance Druid
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .accept 94006 >>接受 The Great Ursera 精神。
    .target Lotheluum Starbreeze::252359
step << Druid
    .money <0.12
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .train 16689 >>训练 |T136063:0|t[自然's Grasp]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>训练 |T136081:0|t[孔雀石 (级别 2)]
    .train 5232 >>训练 |T136078:0|t[野性印记 (级别 2)]
    .train 8924 >>训练 |T136096:0|t[月火术 (级别 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359

-- step << Alliance Hunter
--     .goto 2521,63.023,77.803,10,0
--     .goto 2521,66.26,79.90
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
--     .vendor 252390 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat].
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .collect 2515,1000 -- Sharp Arrows
--     .target Antelariaa Cloudgaze::252390

step << Mage
    .money <0.08
    .xp <10,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r 对话
    .train 168 >>训练 |T135843:0|t[霜甲术]
    .train 122 >>训练 |T135848:0|t[护井者索兰尼亚]
    .train 5504 >>训练 |T132794:0|t[经典怀旧服 道具]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>训练 |T132794:0|t[经典怀旧服 道具 (级别 2)]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_如果你没有|r |T134520:0|t[泽风大头棒]，|cRXP_WARN_双持|r |T7791298:0|t[可靠的扳手] |cRXP_WARN_和|r |T7791298:0|t[扑翼蝶拍]。<< Rogue
    .goto 2521,66.21,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r 对话。
    .turnin 92850 >>交任务 The 缺失 Scholar 2。
    .accept 99260 >>接受任务 Fillion's Mission。
    .target Fillion Flamebreeze::253284
    .use 263313 << Rogue -- Trusty Wrench
    .use 263329 << Rogue -- Flutterfly Swatter
step << Alliance
    -- #completewith Protect the Index
    #completewith Accept Catching Wind
    .subzoneskip 16638,1 -- Valanaar
    .aura 1258510
    >>杀死 |cRXP_ENEMY_Skyhoppers::251314|r。
    *|cRXP_WARN_如果你找到龙卷风，接触它可获得速度加成|r。
    *|cRXP_WARN_当获得龙卷风的速度加成时，避免击杀它们|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Rogue
--     .goto 2521,63.027,77.807
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     *|cRXP_BUY_Buy|r 600 |T132382:0|t[Sharp Arrows]
--     .collect 2515,600 --Sharp Arrows (600)
--     .target Antelariaa Cloudgaze::252390
step << Alliance
    #label Accept Catching Wind
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .target Elaadrin Evengale::252475
    .turnin 99260 >>交任务 Fillion's Mission。
    .accept 92840 >>接受任务 捕风

-- ============================================================================
-- Horde Hunter: Taming the Beast 1
-- ============================================================================

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_在最大距离对|r |cRXP_ENEMY_Windsong 海蟹::254588|r |cRXP_WARN_使用|r。
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94978 >>交任务 驯服野兽
    .accept 94979 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_右键点击 |cRXP_ENEMY_Windsong 海蟹::254588|r 的单位框架并点击解散来解散它，否则你将无法驯服|r |cRXP_ENEMY_Ornery Galestrider::251707|r
    *|cRXP_WARN_小心，它被解散后会攻击你|r。
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_对|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_在最大范围|r。
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94979 >>交任务 驯服野兽
    .accept 94013 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_解散你的 |cRXP_ENEMY_Ornery Galestrider::251707|r 右键点击其单位框架并点击解散，否则你将无法驯化|r |cRXP_ENEMY_Vuldren::250874|r。
    *|cRXP_WARN_小心；解散时它会攻击你|r。
step << Horde Hunter
    #loop
    --.goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_对|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_在最大范围|r。
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94013 >>交任务 驯服野兽
    .accept 94050 >>接受任务 训练野兽
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r 对话。
    .turnin 94050 >>交任务  训练野兽
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r 对话。
    .train 4195 >>训练 |T136112:0|t[持久耐力]
    .train 24547 >>训练 |T136094:0|t[自然护甲]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    #sticky
    -- .goto 2521,60.905,69.414,35,0
    -- .goto 2521,58.339,68.476,35,0
    -- .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_对|r Windsong 海蟹::254588|cRXP_WARN_ 施放|cRXP_ENEMY_ |T132164:0|t[经典怀旧服 道具] |r来驯服它|r -- .tame 1997
    *|cRXP_WARN_注释：|r 如果所有螃蟹都是死亡的，那么你也可以驯化一个 |cRXP_ENEMY_Ornery Galestrider::251707|r 直到你找到一只螃蟹。
    .train 2981 >> |cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.mob Windsong Crawler::254588
step << Horde Hunter
    .isOnQuest 93317 --Crab Season
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Railee Thriceforged::257422|r 对话。
    .vendor 257422 >>|cRXP_WARN_到商人处丢弃垃圾物品并在需要时维修|r。
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Railee Thriceforged::257422

-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================

step << Alliance
    .isQuestNotComplete 92840 -- Catching Wind
    .isOnQuest 92840 -- Catching Wind
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,67.41,80.46
    .subzone 16626 >>跳下悬崖并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92840 -- Catching Wind
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance !Hunter
    #completewith Protect the Index
    >>击杀 |cRXP_ENEMY_Windsong Crawlers::254588|r。从它们身上拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance Hunter
    #completewith Protect the Index
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_在最大距离对|r |cRXP_ENEMY_Windsong 海蟹::254588|r |cRXP_WARN_使用|r。
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance
    #optional
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>绕过山峰。
    *|cRXP_WARN_如果附近有龙卷风，接触它可获得40%移动速度提升，持续5分钟。造成伤害会移除此效果|r。
    -- *|cRXP_WARN_Do not use|r |T132845:0|t[Walk on Air] |cRXP_WARN_during this step|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_水晶|r
    -- *|cRXP_WARN_Do not use|r |T132845:0|t[Walk on Air] |cRXP_WARN_during this step|r.
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_树枝|r。
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance Hunter
    .isOnQuest 94978 -- Taming the Beast
    .isQuestNotComplete 94978 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_在最大距离对你的|r |cRXP_WARN_Windsong 海蟹::254588|r |cRXP_ENEMY_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_|r。
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step
    .subzoneskip 16638
    .isQuestComplete 92840 -- Catching Wind
    .isQuestComplete 94978 << Hunter -- Taming the Beast
    .isQuestComplete 93797 << Mage
    .goto 2521/2991,1525.300,2372.000
    .subzone 16626 >>死亡并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step
    .isQuestComplete 92840 -- Catching Wind
    .isQuestComplete 94978 << Hunter -- Taming the Beast
    .isQuestComplete 93797 << Mage
    #ignorecorpse
    .subzoneskip 16626,1 --Gustberry Lowlands
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance Hunter/Alliance Mage
    #completewith SkyhopperMultiClass
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
    *|cRXP_WARN_如果找到龙卷风，接触它以获得其速度增益|r。
    *|cRXP_WARN_龙卷风速度增益激活时，避免击杀它们|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94978 >>交任务 驯服野兽
    .accept 94979 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_右键点击其单位框并点击解散来解散你的|cRXP_ENEMY_ Windsong 海蟹::254588|r，否则你将无法驯服|r |cRXP_ENEMY_Ornery Galestrider::251707|r。
    *|cRXP_WARN_小心；解散时它会攻击你|r。
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_对|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_在最大距离|r。
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94979 >>交任务 驯服野兽
    .accept 94013 >>接受任务 驯服野兽
    .target Quel'ana Quickgale::252389
-- step << Alliance Hunter
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .turnin 97968 >>Turn in Camping 101: Herbalism
--     .target Syriel Nightrain::254345
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_通过右键点击其单位框来解散你的|cRXP_ENEMY_ Ornery Galestrider::251707|r，否则你将无法驯服|r |cRXP_ENEMY_Vuldren::250874|r。
    *|cRXP_WARN_小心，它被解散后会攻击你|r。
step << Alliance Hunter
    .isOnQuest 94013 --Taming the Beast
    .isQuestNotComplete 94013 --Taming the Beast
    .subzoneskip 16638,1
    #label SkyhopperMultiClass
    .goto 2521,57.11,74.49
    .subzone 16626 >> 进入 Gustberry Lowlands
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
    .use 264163 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_对|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_在最大距离|r。
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    #completewith next
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
    *|cRXP_WARN_如果找到龙卷风，接触它以获得其速度增益|r。
    *|cRXP_WARN_龙卷风速度增益激活时，避免击杀它们|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .turnin 94013 >>交任务 驯服野兽
    .accept 94050 >>接受任务 训练野兽
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r 对话。
    .turnin 94050 >>交任务  训练野兽
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r 对话。
    .train 4195 >>训练 |T136112:0|t[持久耐力]
    .train 24547 >>训练 |T136094:0|t[自然护甲]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_对|r Windsong 海蟹::254588|cRXP_WARN_ 施放|cRXP_ENEMY_ |T132164:0|t[经典怀旧服 道具] |r来驯服它|r -- .tame 1997
    *|cRXP_WARN_注释：|r 如果所有螃蟹都已死亡，你也可以改为驯服 |cRXP_ENEMY_Ornery Galestrider::251707|r，直到找到螃蟹。
    .train 2981 >> |cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.mob Windsong Crawler::254588
step << Mage
    #label SkyhopperMultiClass
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belann Windwood::256507|r 对话。
    .turnin 93797 >>交任务 Boughs in the Wind
    .target Belann Windwood::256507
step << Mage
    #loop
    .goto 2521,62.71,77.75,15,0
    .goto 2521,63.06,77.3,20,0
    .goto 2521,62.67,76.59,25,0
    .goto 2521,62.16,75.12,30,0
    .goto 2521,63.03,74.51,30,0
    .goto 2521,63.72,76.13,30,0
    .goto 2521,64.18,78.18,30,0
    .goto 2521,63.19,79.17,30,0
    .goto 2521,64.36,80.69,30,0
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Alliance !Hunter
--     .train 2366,3 -- Herbalism Trained
--     .isQuestComplete 97968 -- Camping 101: Herbalism
--     .goto 2521,57.890,75.514
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
--     .turnin 97968 >>Turn in Camping 101: Herbalism
--     .target Syriel Nightrain::254345
step << Alliance !Mage/Alliance !Hunter
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
    >>击杀 |cRXP_ENEMY_Skyhoppers::251314|r。
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
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- Horde: Branch
-- ============================================================================

-- ============================================================================
-- Horde Bugged Section
-- ============================================================================

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

-- ============================================================================
-- Horde Druid Section
-- ============================================================================

step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.378,74.886,20,0
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>跟随标记离开 Valanaar。
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>从山上跳下并使用 |T132845:0|t[踏空而行] 朝着任务给予者飞去。
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .turnin 94006 >>交任务 The Great Ursera 精神
    .accept 94638 >>接受任务 力量 and Mercy
    .target Urs'endris::255853
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .goto 2521,69.782,61.609
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step << Horde Druid
    #completewith next
    .goto 2521,59.59,66.7,30,0
    >>杀死 |cRXP_ENEMY_Windsong Crawlers::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .goto 2521,59.528,66.902,30,0 << Druid
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    *|cRXP_WARN_如果附近有龙卷风，接触它可获得40%移动速度提升，持续5分钟。造成伤害会移除此效果|r。
    .accept 98512 >>接受任务 Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>击杀 |cRXP_ENEMY_Al'Aketh Assassins::254626|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_ Al'Aketh Assassins|r 使用|r |T132357:0|t[猛击] |cRXP_WARN_将你击倒并|r |T136189:0|t[影袭] |cRXP_WARN_结合近战攻击|r。
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Horde
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    .turnin 98512 >>交任务 Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde Druid
    .goto 2521,54.284,65.803
    >>杀死 |cRXP_ENEMY_Ur'endra::258443|r |cRXP_WARN_在洞穴内|r。
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>击杀 |cRXP_ENEMY_Windsong Crawlers::254588|r。从它们身上拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    *|cRXP_WARN_注释：|r 此任务是 |cRXP_WARN_可选的|r。如果螃蟹争夺过激，可跳过此步骤。
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .subzoneskip 16625,1 -- Windsong Lake
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,52.790,57.628
    .cooldown spell,1259686,>0,1 -- Skysight
    -- .aura 1270893,1800 --Charged
    .cast 1259686 >>使用 |T1029587:0|t[天穹视界] |cRXP_WARN_靠近一个元素聚首|r 来获得 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能]。
    *当 |TInterface/Icons/Ability_Monk_RushingJadeWind:0|t[充能] 激活时，|T1029587:0|t[天穹视界] 提升你的移动速度和骑乘速度 |cRXP_WARN_30%，持续30秒|r。
step << Horde
    --@THIDDI: Not sure if worth it.
    #loop
    .goto 2521,53.029,51.423,35,0
    .goto 2521,53.621,50.493,35,0
    .goto 2521,52.878,49.641,35,0
    .goto 2521,53.129,47.738,35,0
    .goto 2521,52.528,45.922,35,0
    .goto 2521,51.574,46.567,35,0
    .goto 2521,49.511,45.931,35,0
    .goto 2521,49.917,44.806,35,0
    .goto 2521,50.642,44.296,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Construct Parts|r。
    .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
    .mob Windsong Crawler::254588
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>从 |cRXP_WARN_较低的山峰（不是你所在的那个）|r 跳下并使用 |T132845:0|t[踏空而行] 朝任务给予者飞去。
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .target Urs'endris::255853
    .turnin 94638 >>交任务 力量 and Mercy

-- ============================================================================
-- Alliance: Branch
-- ============================================================================

step << Alliance
    .isOnQuest 92840 --Catching Wind
    .goto 2521,65.47,80.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Daeann Steelwind::252479|r 对话。
    .vendor 252479 >>|cRXP_WARN_出售垃圾装备并修理|r。
    .skipgossipid 137531
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Daeann Steelwind::252479
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .turnin 92840 >>交任务 捕风
    .accept 92834 >>接受任务 Avenged Tenfold
    .accept 92860 >>接受任务 In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    .isQuestAvailable 93320 --Tower Defense
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .accept 92709 >>接受任务 A Grand Adventure
    .target Elaadrin Evengale::252475
step << Alliance
    #optional
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_装备|r |T7810733:0|t[时光之弓] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92860 >>交任务 In Service of Zephras
    .turnin 93949 >>交任务 Bugged
    .accept 93320 >>接受任务 塔楼 防御
    .disablecheckbox
    .target Valennia Stormfist::252383
    .use 263404 << Hunter -- Bow of Hours
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>爬上塔楼
    *|cRXP_WARN_如果有龙卷风，使用它可以更快地旅行|r。
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92860 >>交任务 In Service of Zephras
    .turnin 93949 >>交任务 Bugged
    .accept 93320 >>接受任务 塔楼 防御
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>从树上跳下并使用 |T132845:0|t[踏空而行] 朝路径点位置飞去。
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r 对话。
    *|cRXP_WARN_此步骤中不要使用|r |T132845:0|t[踏空而行]。 << Druid
    .accept 94896 >>接受任务 Aid For The Refugees
    .accept 94897 >>接受任务 The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 94897 -- The Fate of a Loved One
    .isOnQuest 93320 -- Tower Defense
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,64,74.06
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step << Alliance
    #completewith next
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r。
    *拾取它们的 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在此处获得进度，但稍后可能需要在其他地点才能完成任务|r。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。如果可以的话打断他们的治疗|r。 << !Rogue
    *Al'Aketh Healers|cRXP_WARN_ 可以治疗自己或他人。如果你无法在他们|cRXP_ENEMY_施放|r前将其击杀，请积蓄能量来打断他们的治疗|r。 << Rogue
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,63.59,73.6,25,0
    .goto 2521,64.4,73.23,30,0
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yorana Windyreed::252378|r 对话。
    *|cRXP_WARN_如果附近有龙卷风，使用它可以更快地旅行|r。
    .turnin 93320,1 >>交任务 塔防建材 << Rogue/Hunter/Druid/Shaman
    .turnin 93320,2 >>交任务 塔防建材 << Mage/Priest/Warlock
    .turnin 93320,3 >>交任务 塔防建材 << Warrior/Paladin
    .accept 92642 >>接受任务 Disrupting Logistics
    .accept 92645 >>接受任务 Breaking the 阿灭
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取它们的 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在此处获得进度，但稍后可能需要在其他地点才能完成任务|r。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #optional
    #completewith Commander Belguilos2
    >>击杀 |cRXP_ENEMY_Al'Aketh Healers::254596|r 和 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。如果可以的话打断他们的治疗|r。 << !Rogue
    *Al'Aketh Healers|cRXP_WARN_ 可以治疗自己或他人。如果你无法在他们|cRXP_ENEMY_施放|r前将其击杀，请积蓄能量来打断他们的治疗|r。 << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>击杀 |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_房屋二楼内|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取它们的 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在此处获得进度，但稍后可能需要在其他地点才能完成任务|r。
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
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r 和 |cRXP_ENEMY_Al'Aketh Healers::254596|r。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。如果可以的话打断他们的治疗|r。 << !Rogue
    *Al'Aketh Healers|cRXP_WARN_ 可以治疗自己或他人。如果你无法在他们|cRXP_ENEMY_施放|r前将其击杀，请积蓄能量来打断他们的治疗|r。 << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>从山上跳下并使用 |T132845:0|t[踏空而行] 朝着任务给予者飞去。
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .target Urs'endris::255853
    .turnin 94006 >>交任务 伟大的乌瑟拉的精神
    .accept 94638 >>接受任务 力量与慈悲
step << Alliance Druid
    .subzoneskip 16593,1
    .isOnQuest 92645 --Breaking the Breaker
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,69.08,61.98
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step << Alliance Druid
    #completewith Commander Belguilos Druid2
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在这里取得进度，但可能稍后在其他地点完成任务|r。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith Commander Belguilos Druid2
    >>击杀 |cRXP_ENEMY_Al'Aketh Healers::254596|r 和 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。如果可以的话打断他们的治疗|r。 << !Rogue
    *Al'Aketh Healers|cRXP_WARN_ 可以治疗自己或他人。如果你无法在他们|cRXP_ENEMY_施放|r前将其击杀，请积蓄能量来打断他们的治疗|r。 << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Commander Belguilos Druid
    >>击杀 |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_房屋二楼内|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>越过山峰
step << Alliance Druid
    #requires Commander Belguilos Druid
    #label Commander Belguilos Druid2
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>击杀 |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_房屋二楼内|r。
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>杀死 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r。
    *拾取 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在这里取得进度，但可能稍后在其他地点完成任务|r。
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
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r 和 |cRXP_ENEMY_Al'Aketh Healers::254596|r。
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。如果可以，昏迷他们的治疗|r。 << !Rogue
    *|cRXP_WARN_|cRXP_ENEMY_Al'Aketh Healers|r 可以治疗自己或他人。集中能量来眩晕他们的治疗，如果你在他们施放前无法击杀他们|r。 << Rogue
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yorana Windyreed::252378|r 对话。
    .turnin 92645,1 >>交任务 破坏阿灭 << Rogue/Hunter/Druid/Shaman
    .turnin 92645,2 >>交任务 破坏阿灭 << Mage/Priest/Warlock
    .turnin 92645,3 >>交任务 破坏阿灭 << Warrior/Paladin
    .turnin 92642 >>交任务 破坏后勤
    .accept 92880 >>接受任务 返回瓦兰纳
    .target Yorana Windyreed::252378
step << Alliance
    #optional
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92880,1 >>交任务 返回瓦兰纳 << Warrior/Paladin
    .turnin 92880,2 >>交任务 返回瓦兰纳 << Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>交任务 返回瓦兰纳 << Hunter/Mage/Druid/Priest/Warlock
    .accept 92881 >>接受任务 拜访长老的请求
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
    .goto 2521,66.44,76.4,5 >>绕过山峰然后爬上塔楼
    *|cRXP_WARN_如果有Tornado，使用它快速旅行|r。
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92880,1 >>交任务 返回瓦兰纳 << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>交任务 返回瓦兰纳 << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>交任务 返回瓦兰纳 << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>接受任务 拜访长老的请求
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .turnin 92881 >>交任务 拜会长老的请求
    .accept 92643 >>接受任务 The Turncoat
    .target Talaanis::252476

-- ============================================================================
-- Level 10+ Non Deathskip Version
-- ============================================================================
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>从树上跳下并使用 |T132845:0|t[踏空而行] 飞向路径点所在地区。
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44,10,0
    .goto 2521,63.96,74.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Belann Windwood::256507|r |cRXP_WARN_在屋内|r 对话。
    .vendor 256507 >>向商人出售垃圾物品，必要时修理
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Hunter Alliance
    .xp <9,1
    .money <0.1345
    .itemcount 277110,<1 --Zephrali Bow
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7810733:0|t[泽风弓]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>向商人出售垃圾物品，必要时修理
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    .equip 18,277110 >>|cRXP_WARN_装备|r |T7810733:0|t[泽风弓]。
    .use 277110 --Zephrali Bow
step << Warrior Alliance/Paladin Alliance
    .xp <9,1
    .money <0.2151
    .itemcount 277106,<1 --Zephrali Smasher
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7792097:0|t[泽风粉碎者]。
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior Alliance/Paladin Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    .equip 16,277106 >>|cRXP_WARN_装备|r |T7792097:0|t[泽风粉碎者]。
    .use 277106 --Zephrali Smasher
step << Rogue Alliance
    .xp <9,1
    .money <0.1727
    .itemcount 277107,<1 --Zephrali Bludgeon
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Falfaan Halfwind::271465|r |cRXP_WARN_在房子里|r 对话。
    >>|cRXP_BUY_购买并装备一件|r |T7791298:0|t[泽风大头棒]。
    *如果你能负担并且还没有购买，就买两个。保存第二个以备你能双持时使用。
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>向商人出售垃圾物品，必要时修理。
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    .equip 16,277107 >>|cRXP_WARN_装备|r |T7791298:0|t[泽风大头棒]。
    .use 277107 --Zephrali Bludgeon
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512 -- Al'Aketh Assassins
--     .isNotOnQuest 98512 -- Al'Aketh Assassins
--     .cooldown spell,1259705,>0,1 -- Read Ley Line
--     .goto 2521,63.96,74.15
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .usespell 1259705


-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================


-- step << Hunter
--     .xp <9,1
--     .money <0.1345
--     .isNotOnQuest 92679 -- Blood Tithe
--     .isQuestAvailable 92679 -- Blood Tithe
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7810733:0|t[Zephrali Bow]
--     .collect 277110,1 --Collect Zephrali Bow
--     .vendor 271465 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Hunter
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277110,1 --Zephrali Bow
--     +|cRXP_WARN_Equip the|r |T7810733:0|t[Zephrali Bow].
--     .use 277110 --Zephrali Bow
-- step << Warrior/Paladin/Shaman/Druid
--     .xp <9,1
--     .money <0.2151
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792097:0|t[Zephrali Smasher].
--     .collect 277106,1 --Zephrali Smasher
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Warrior/Paladin/Shaman/Druid
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277106,1 --Zephrali Smasher
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Zephrali Smasher].
--     .use 277106 --Zephrali Smasher
-- step << Rogue
--     .xp <9,1
--     .money <0.1727
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7791298:0|t[Zephrali Bludgeon].
--     .collect 277107,1 --Zephrali Bludgeon
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Rogue
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277107,1 --Zephrali Bludgeon
--     +|cRXP_WARN_Equip the|r |T7791298:0|t[Zephrali Bludgeon].
--     .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465

-- step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
--     #optional
--     #completewith Al'Aketh Assassins Equip Reminder
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] if you don't have |T7792097:0|t[Zephrali Smasher]. << Paladin
--     +|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] if you don't have |T7792229:0|t[Zephrali Knife]. << Priest/Warlock/Mage
--     +|cRXP_WARN_Equip the|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] if you don't have |T7791298:0|t[Zephrali Bludgeon]. << Rogue
--     .use 257345 << Paladin -- Honed Greathammer
--     .use 257343 << Priest/Warlock/Mage -- Balanced Quarterstaff
--     .use 257346 << Rogue -- Quickblade's Dagger
step << Alliance
    .isNotOnQuest 98512 --Al'Aketh Assassins
    .isQuestAvailable 98512 --Al'Aketh Assassins
    -- .goto 2521,66.49,76.65,8,0
    .goto 2521,68.84,78.42,-1
    .goto 2521,60.74,78.02,-1
    .subzone 16626 >>跳下悬崖并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isNotOnQuest 98512 --Al'Aketh Assassins
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    *|cRXP_WARN_如果附近有龙卷风，接触它可获得5分钟内40%的移动速度提升。造成伤害会移除此效果|r。
    *|cRXP_WARN_装备|r |T7792097:0|t[磨光的巨锤]，如果你没有 |T7792097:0|t[泽风粉碎者]。 << Paladin
    *|cRXP_WARN_装备|r |T7798447:0|t[平衡短杖]，如果你没有 |T7792229:0|t[泽风小刀]。 << Priest/Warlock/Mage
    *|cRXP_WARN_装备|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger]，如果你没有 |T7791298:0|t[泽风大头棒]。 << Rogue
    .accept 98512 >>接受任务 Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance
    #optional
    #completewith Fendaal Windstone
    >>击杀 |cRXP_ENEMY_Al'Aketh Assassins::254626|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_ Al'Aketh Assassins|r 使用|r |T132357:0|t[猛击] |cRXP_WARN_来击倒你，并使用|r |T136189:0|t[影袭] |cRXP_WARN_进行近战攻击|r。
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    #label secluded house
    .goto 2521,56.13,60.26
    >>跟随箭头
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Dead 教徒|r。
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dead 教徒::253372|r 对话。
    .target Dead Cultist::253372
    .turnin 92643 >>交任务 The Turncoat
    .accept 92644 >>接受任务 Unfortunate 新闻
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>击杀 |cRXP_ENEMY_Al'Aketh Assassins::254626|r。
    *|cRXP_WARN_小心：|cRXP_ENEMY_ Al'Aketh Assassins|r 使用|r |T132357:0|t[猛击] |cRXP_WARN_来击倒你，并使用|r |T136189:0|t[影袭] |cRXP_WARN_进行近战攻击|r。
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Fendaal Windstone::273017|r 对话。
    .turnin 98512 >>交任务 Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance Druid
    .goto 2521,54.284,65.803
    >>击杀 |cRXP_ENEMY_Ur'endra::258443|r |cRXP_WARN_在洞穴内|r。
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Alliance Druid
    .isOnQuest 94638 --Strength and Mercy
    .goto 2521,56,64.14,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>从 |cRXP_WARN_下方的山|r 跳下，使用 |T132845:0|t[踏空而行] 飞向任务给予者。 --Walk on Air
    .usespell 1259416 --Walk on Air
step << Alliance Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Urs'endris::255853|r 对话。
    .target Urs'endris::255853
    .turnin 94638 >>交任务 力量 and Mercy
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid2
    >>击杀 |cRXP_ENEMY_Al'Aketh Brawlers::270201|r、|cRXP_ENEMY_Al'Aketh Preachers::253195|r 和 |cRXP_ENEMY_Al'Aketh Pillagers::253511|r |cRXP_WARN_沿途|r。
    *拾取它们的 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
   *|cRXP_WARN_你将在此处获得进度，但稍后可能需要在其他地点才能完成任务|r。
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>击杀 |cRXP_ENEMY_Windsong Crawlers::254588|r |cRXP_WARN_沿途|r。从它们身上拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    #label Windsong Crawler Meat Druid2
    .goto 2521,57.25,60.92,50 >>绕过山脉。
    *|cRXP_WARN_如果有Tornado，使用它快速旅行|r。
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>杀死 |cRXP_ENEMY_Windsong Crawlers::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,54.35,57.87,35,0
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>杀死 |cRXP_ENEMY_Windsong Crawlers::254588|r。拾取 |T133972:0|t[|cRXP_LOOT_Windsong 海蟹 肉|r]。
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================


step << Alliance
    -- #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .subzoneskip 16631 -- Shadowgale Forest
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>越过瀑布，绕过山脉。
    *|cRXP_WARN_如果你看到 Tornado，使用它来加速移动|r
-- step << Horde
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     -- #completewith next
--     .goto 2521,59.444,67.060,45,0 << Druid
--     .goto 2521,58.72,52.77,30 >>Go around the mountains and cross the bridge.
--     *|cRXP_WARN_If you see a Tornado, use it for faster travel|r.


--Vendor Dissappeard Ingame
-- step
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,58.24,51.21,20,0
--     .goto 2521,57.77,52.06
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Zendraas::272045|r.
--     .vendor 272045 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     .skipgossip 272045,1,1,1,2
--     .skipgossipid 141672
--     .target Brother Zendraas::272045
--     --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
--     --1: What trade would that be?
--     --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
--     --2: Show me what you have available for trade.


step << Warrior
    .goto 2521,56.56,50.36
    >>击杀 |cRXP_ENEMY_Zaal 暴风之盾::257196|r。从他身上拾取 |T134959:0|t[|cRXP_LOOT_Skybreaker Bulwark|r]。
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196


-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance
    #completewith Learn
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。
    *从它们身上拾取 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r]。
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    .goto 2521,58.81,46.74,30,0 << Alliance
    .goto 2521,58.81,43.57,40 >>穿过大桥。
step << Horde Druid
    #completewith next
    .goto 2521,59.414,66.946,25,0
    .goto 2521,58.920,55.010,30,0 >>绕过山脉。
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit::251684|r 对话。
    .accept 93159 >>接受任务The Strange Hermit
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>交任务The Strange Hermit
    .accept 93160 >>接受任务The Forest's Bounty
    .accept 93172 >>接受任务Free the Hollows
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .train 1230656,1 --Reagent Bot
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit::251684|r 对话。
    .accept 98285 >>接受任务Camping 101: 工程学
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
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。
    *从它们身上拾取 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r]。
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_Wind Hollows::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #optional
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    *|cRXP_WARN_注释：|r 此任务可选。人多时可以跳过。 << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.23,33.4,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>击杀 |cRXP_ENEMY_Wind Hollows::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,56.61,29.26,20,0
    -- .goto 2521,58.06,28.2,30,0
    -- .goto 2521,57.91,26.83,30,0
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
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
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
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_Wind Hollows::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    *|cRXP_WARN_注释：|r 此任务可选。人多时可以跳过。 << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>击杀 |cRXP_ENEMY_Wind Hollows::251676|r。
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。
    *从它们身上拾取 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r]。
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Seeds|r，|cRXP_WARN_尤其是在树周围|r。
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .target Elegael Thornpaw::257944
    .turnin 94484 >>交任务 Unnerving 默然
    .accept 94485 >>接受任务Tears of the Lady
    .accept 94486 >>接受任务 乱羽 for Binding
    .accept 94487 >>接受任务Unwanted and Unworthy
step
    #optional
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击树上的 |cRXP_PICK_Tear Moss|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #optional
    #completewith Unnerving Silence
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。从它们身上拾取 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    >>击杀 |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r 和 |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r。
    *从它们身上拾取 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] 和 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vayn Moongaze::254151|r 对话。
    .accept 93165 >>接受任务 Mercy Falls on Deaf 耳朵
    .target Vayn Moongaze::254151
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
    >>击杀 |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r 和 |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r。
    *从它们身上拾取 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]、|T133856:0|t[|cRXP_LOOT_Al'Aketh 教徒's 耳朵|r] 和 |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]。 << Alliance
    *从它们身上拾取 |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]。 << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Aketh Cultist's Ear
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
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 93160,1 --8/8 Zephyrseed
    .complete 94485,1 --8/8 Lady's Tear Moss
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。
    *拾取它们的 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r] 和 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。 << Alliance
    *拾取它们的 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Seeds|r，|cRXP_WARN_尤其是在树周围|r。
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #optional
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击树上的 |cRXP_PICK_Tear Moss|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #optional
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击树上的 |cRXP_PICK_Tear Moss|r。
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Seeds|r |cRXP_WARN_特别是在树周围|r。
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit::251684|r 对话。
    .turnin 93160 >>交任务 The Forest's Bounty
    .turnin 93172,1 >>交任务 Free the Hollows << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>交任务 Free the Hollows << Mage/Priest/Warlock
    .turnin 93172,3 >>交任务 Free the Hollows << Warrior/Paladin
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feathers|r].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit::251684|r 对话。
    .turnin 93160 >>交任务 The Forest's Bounty
    .turnin 93172,1 >>交任务 Free the Hollows << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>交任务 Free the Hollows << Mage/Priest/Warlock
    .turnin 93172,3 >>交任务 Free the Hollows << Warrior/Paladin
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Strange Hermit::251684|r 对话。
    .turnin 98285 >>交任务 Camping 101: 工程学
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
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。拾取它们的 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r] 和 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。 << Alliance
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。拾取它们的 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击树上的 |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。拾取它们的 |T1508517:0|t[|cRXP_LOOT_Shriekling 泰爪|r] 和 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。 << Alliance
    >>击杀 |cRXP_ENEMY_Shadowgale Shrieklings::256092|r。拾取它们的 |T132927:0|t[|cRXP_LOOT_Pristine Shriekling 乱羽|r]。
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94485 >>交任务 Tears of the Lady
    .turnin 94487 >>交任务 Unwanted and Unworthy
    .turnin 94486 >>交任务 乱羽 for Binding
    .accept 94488 >>接受任务 血脉的羁绊
    .accept 94489 >>接受任务 The Wounds of 背叛
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>击杀 |cRXP_ENEMY_Commander Haalien::253622|r。拾取他的 |T134161:0|t[|cRXP_LOOT_Severed 头部|r] 和 |T135332:0|t[|cRXP_LOOT_Ripped Missive|r]。
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step << Horde
    #optional
    .isOnQuest 93165 --Mercy Falls on Deaf Ears
    .itemcount 258771,4
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
    >>击杀 |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r 和 |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r。
    *拾取它们的 |T133856:0|t[|cRXP_LOOT_Al'Aketh 教徒's 耳朵|r]。
    .complete 93165,1 --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    #completewith next
    .itemcount 265476,1
    >>在你的背包中使用 |T134332:0|t[Ripped Missive] 来开始任务。
    .accept 94490 >>接受任务 Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    .isOnQuest 93165 << Horde --Mercy Falls on Deaf Ears
    .isQuestComplete 93165 << Horde --Mercy Falls on Deaf Ears
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 |cRXP_FRIENDLY_洞穴入口|r 与 |cRXP_WARN_Vayn Moongaze::254151|r 对话。
    .turnin 93165,1 >>交任务 Mercy Falls on Deaf 耳朵 << Rogue/Hunter/Druid/Shaman
    .turnin 93165,2 >>交任务 Mercy Falls on Deaf 耳朵 << Mage/Priest/Warlock
    .turnin 93165,3 >>交任务 Mercy Falls on Deaf 耳朵 << Warrior/Paladin
    .target Vayn Moongaze::254151
step << Alliance
    .goto 2521,63.80,36.00
    .itemcount 265476,1
    >>在你的背包中使用 |T134332:0|t[Ripped Missive] 来开始任务。
    .accept 94490 >>接受任务 Ripped Missive
    .use 265476 -- Ripped Missive
step
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64.25,31.93
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Druids|r
    .complete 94489,1,2 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Druids|r。
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Druids|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|t在 |cRXP_PICK_洞穴内|r 点击 |cRXP_WARN_Jorel Windsinger|r。
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step << Horde
    .itemcount 265476,1
    >>在你的背包中使用 |T134332:0|t[Ripped Missive] 来开始任务。
    .accept 94490 >>接受任务 Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94489 >>交任务 The Wounds of 背叛
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>离开洞穴
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elegael Thornpaw::257944|r 对话。
    .turnin 94489 >>交任务 The Wounds of 背叛
    .turnin 94490 >>交任务 撕裂的信函
    .turnin 94488 >>交任务 血脉的羁绊
    .accept 94491 >>接受任务 洞穴的命运
    .target Elegael Thornpaw::257944
step << Horde
    .abandon 93165 >>放弃任务 慈悲无人理会

-- ============================================================================
-- City
-- ============================================================================

step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    -- .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>回到瓦兰纳尔
    .cooldown item,6948,>0 --Hearthstone
    .use 6948 -- Hearthstone

step
    .isOnQuest 94896 -- Aid For The Refugees
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Donaal Downbreeze::255940|r 对话。
    .vendor 255940 >>把垃圾物品卖给商人
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *不要卖出 |T133970:0|t[Stringy 肉]、|T132832:0|t[小 道具] 或 |T133972:0|t[Strider 肉]。 << Alliance
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。 << Horde
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .skipgossipid 137078
    .target Donaal Downbreeze::255940

-- ============================================================================
-- Alliance Class Training
-- ============================================================================

step << Alliance Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .target Seena Skybreaker::252377
    .turnin 94003 >>交任务 破天号壁垒
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
    .money <0.16
    .xp <12,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r 对话。
    .train 1766 >>训练 |T132219:0|t[脚踢]
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Alliance Hunter
    .money <0.08
    .xp <12,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r 对话。
    .train 14281 >>训练 |T132218:0|t[奥术射击 (级别 2)]
    .target Quel'ana Quickgale::252389
step << Alliance Warrior
    .money <0.3
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .train 5242 >>训练 |T132333:0|t[战斗怒吼 (级别 2)]
    .train 7384 >>训练 |T132223:0|t[压制]
    .train 72 >>训练 |T132357:0|t[盾击]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Alliance Hunter/Alliance Rogue/Alliance Warrior
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nyalah Brightfire::257006|r |cRXP_WARN_房子里面|r 对话。
    .turnin 93317 >>交任务 螃蟹季节
    .target Nyalah Brightfire::257006
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .turnin 94491 >>交任务 洞穴的命运
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .money <0.16
    .subzoneskip 16638,1 -- Valanaar
    .xp <12,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r 对话。
    .train 5229 >>训练 |T132126:0|t[激怒]
    .train 8936 >>训练 |T136085:0|t[愈合]
    .target Naeluna Swiftmend::254081

-- ============================================================================
-- Shared Turn-ins
-- ============================================================================
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r 对话。
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>交任务 洞穴的命运
step << Horde
    #optional
    .isQuestComplete 94896 --Aid For The Refugees
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r 对话。
    .turnin 94896 >>交任务 援助难民
    .turnin 94897 >>交任务 至亲的命运
    .target Ealaane Nimbuswalker::259012
step << Horde
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r 对话。
    .turnin 94897 >>交任务 至亲的命运
    .target Ealaane Nimbuswalker::259012
step << Horde
    #optional
    .abandon 94896 >>放弃任务 援助难民
step << Alliance
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r 对话。
    .turnin 94896 >>交任务 援助难民
    .turnin 94897 >>交任务 至亲的命运
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #optional
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .turnin 92644,1 >>交任务 不幸的消息 << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>交任务 不幸的消息 << Mage/Priest/Warlock
    .turnin 92644,3 >>交任务 不幸的消息 << Warrior/Paladin
    .accept 94568 >>接受任务 邪教的真正计划
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
    .goto 2521,66.44,76.4,5 >>爬上塔楼
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .turnin 92644,1 >>交任务 不幸的消息 << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>交任务 不幸的消息 << Mage/Priest/Warlock
    .turnin 92644,3 >>交任务 不幸的消息 << Warrior/Paladin
    .accept 94568 >>接受任务 邪教的真正计划
    .target Talaanis Shadowsong::252476
step << Alliance
    #optional
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>与 |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r 对话。
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_等待剧情演出|r。
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_你旁边的|r |cRXP_WARN_Talaanis Shadowsong::252476|r 对话。
    .turnin 94568 >>交任务 邪教的真正计划
    .accept 92640 >>接受任务 生死攸关之时
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>从树上跳下并使用 |T132845:0|t[踏空而行] 飞向路径点所在地区。
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r 对话。
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r 对话。
    .turnin 92741 >>交任务 Unwelcome 访客
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale::252475|r 对话。
    .turnin 92834,1 >>交任务 Avenged Tenfold << Rogue/Hunter/Druid/Shaman
    .turnin 92834,2 >>交任务 Avenged Tenfold << Mage/Priest/Warlock
    .turnin 92834,3 >>交任务 Avenged Tenfold << Warrior/Paladin
    .turnin -92709 >>交任务 A Grand Adventure
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .money <0.24
    .xp <12,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r 对话。
    .train 145 >>训练 |T135812:0|t[火球术 (级别 3)]
    .train 604 >>训练 |T136006:0|t[魔法抑制]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>训练 |T135992:0|t[缓落术]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #optional
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92640,1 >>交任务 Desperate Times << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>交任务 Desperate Times << Warrior/Paladin
    .turnin 92640,3 >>交任务 Desperate Times << Mage/Priest/Warlock
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
    .goto 2521,66.44,76.4,5 >>爬上塔楼
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::252383|r 对话。
    .turnin 92640,1 >>交任务 Desperate Times << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>交任务 Desperate Times << Warrior/Paladin
    .turnin 92640,3 >>交任务 Desperate Times << Mage/Priest/Warlock
    .accept 93065 >>接受任务 准备作战
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>从树上跳下并使用 |T132845:0|t[踏空而行] 飞向路径点所在地区。
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .aura 1259691,1800 --Attuned
    .goto 2521,63.9,74.16
    .cast 1259705 >>|cRXP_WARN_靠近灵力线|r 使用 |T236219:0|t[阅读魔网] 获得 |T135737:0|t[调和]。
    *当 |T135737:0|t[调和] 激活时，|T236219:0|t[阅读魔网] 增加被动法力和生命恢复 |cRXP_WARN_100%持续15秒|r。
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::253844|r 对话。
    *|cRXP_WARN_如果附近有龙卷风，使用它可以更快地旅行|r。
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>交任务 准备作战
    .target Valennia Stormfist::253844
step << Alliance !Hunter !Rogue !Warrior
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nyalah Brightfire::257006|r 在 |cRXP_WARN_房屋内|r 对话。
    .turnin 93317 >>交任务 Crab Season
    .target Nyalah Brightfire::257006

-- ============================================================================
-- Discovery/Leveling Test Route Alliance
-- ============================================================================

step << Alliance
    .goto 2521,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist|r 对话。
    .accept 92947 >>接受任务 Making Our 移动
    .target Valennia Stormfist
step << Alliance
    #completewith next
    #label Al'Aketh Guardian
    .goto 2521,59.58,66.41,30,0
    .goto 2521,58.98,60.8,30,0
    >>杀死 |cRXP_ENEMY_Al'Aketh 守护者|r。
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
step << Alliance
    #completewith Al'Aketh Guardian
    .goto 2521,59.1,52.83,80 >>过桥
step << Alliance
    #requires Al'Aketh Guardian
    #loop
    .goto 2521,59.78,52.23,40,0
    .goto 2521,60.08,51.67,40,0
    .goto 2521,61.05,52.26,40,0
    .goto 2521,62.75,52.56,40,0
    .goto 2521,62.25,49.01,40,0
    .goto 2521,63.14,48.55,40,0
    .goto 2521,64.03,46.25,40,0
    .goto 2521,59.91,49.6,40,0
    >>杀死 |cRXP_ENEMY_Al'Akeths|r。
    *|cRXP_WARN_优先击杀 |cRXP_ENEMY_守护者|r|r
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
    .mob Al'Aketh Blademaster
    .mob Al'Aketh Spiritcaller
step << Alliance
    #completewith next
    #label Hyusaa Quickbreeze
    .goto 2521,61.98,50.42,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hyusaa Quickbreeze|r 对话。
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith Hyusaa Quickbreeze
    .goto 2521,63.79,50.55,80 >>登上楼梯前往 |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
step << Alliance
    #requires Hyusaa Quickbreeze
    .goto 2521,63.79,50.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hyusaa Quickbreeze|r 对话。
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .turnin 92947 >>交任务 Making Our 移动
    .accept 93958 >>接受任务 内部圣殿
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith next
    #label The Inner Sanctum
    .goto 2521,65.35,50.33,30,0
    .goto 2521,66.91,50.05,30,0
    .goto 2521,66.85,50.56,10,0
    .goto 2521,66.83,49.89,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::253590|r 对话。
    .target Valennia Stormfist::253590
    .turnin 93958 >>交任务 内部圣殿
    .accept 93835 >>接受任务 Confront Lorthuna
    .disablecheckbox
step << Alliance
    #completewith The Inner Sanctum
    .goto 2521,66.14,49.15,30 >>登上螺旋楼梯
step << Alliance
    #requires The Inner Sanctum
    .goto 2521,65.191,50.352
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Valennia Stormfist::253590|r 对话。
    .target Valennia Stormfist::253590
    .turnin 93958 >>交任务 内部圣殿
    .accept 93835 >>接受任务 Confront Lorthuna
step << Alliance
    .subzoneskip 16679,1
    .goto 2521,65.55,50.35
    .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step << Alliance
    .subzoneskip 16630,1
    .goto 2521,69.11,51.19,10,0
    .goto 2521,69.6,51.64,10,0
    .goto 2521,70.04,51.63,10,0
    .goto 2521,71.24,51.04,10,0
    .goto 2521,74.17,52.57,290 >>绕过高原，乘坐气流前往 |cRXP_FRIENDLY_Elaadrin Evengale|r
    *|cRXP_WARN_如果气流未激活，等待 其出现|r
step << Alliance
    .subzoneskip 16630,1
    #completewith next
    .gossipoption 137230 >>与 |cRXP_FRIENDLY_Elaadrin Evengale|r 对话以开始该活动。
    .timer 117,RP
    *|cRXP_WARN_另一名玩家可能已经开始了|r
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,74.16,52.54,25,0
    .goto 2521,74.48,53.92,25,0
    .goto 2521,75.07,53.15
    >>跟随 |cRXP_FRIENDLY_Elaadrin Evengale|r。击杀 |cRXP_ENEMY_男爵 Anvillaxx|r 以及攻击你的 |cRXP_ENEMY_Malevolent Storms|r。
    .complete 93835,1 --1/1 Confront Lorthuna
    .skipgossipid 137230
    .mob Baron Anvillaxx
    .mob Malevolent Storm
step << Alliance
    .goto 2521,75.09,53.25
    .subzoneskip 16630,1
    .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale|r 对话。
    .turnin 93835 >>交任务Confront Lorthuna
    .accept 94369 >>接受任务 The Fate of Zephras
    .target Elaadrin Evengale
step << Alliance
    #completewith next
    #label Fate of Zephras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong|r 对话。
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>交任务 The Fate of Zephras
    .accept 93089 >>接受任务 What Comes 下一页
    .target Talaanis Shadowsong
step << Alliance
    #completewith Fate of Zephras
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>爬上塔楼
step << Alliance
    #requires Fate of Zephras
    .goto 2521,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Talaanis Shadowsong|r 对话。
    .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>交任务 The Fate of Zephras
    .accept 93089 >>接受任务 What Comes 下一页
    .target Talaanis Shadowsong
step << Alliance
    .isOnQuest 93089 --What Comes Next
    .goto 2521,66.47,76.66,8,0
    .goto 2521,66.63,79.95
    .cast 1259416 >>从山上跳下并使用 |T132845:0|t[踏空而行] 朝着任务给予者飞去。
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale|r 对话。
    .turnin 93089 >>交任务 What Comes 下一页
    .accept 94946 >>接受任务 The Magical 城市 of 达拉然
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale|r 对话。
    .accept 92709 >>接受任务 A Grand Adventure
    .timer 70,剧情演出对话
    .target Elaadrin Evengale
step << Alliance
    *及时返回 |cRXP_FRIENDLY_Elaadrin Evengale|r，在计时器结束前到达她身旁。
    .complete 92709,1 --1/1 Listen to Elaadrin
    .mob skyhopper
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Elaadrin Evengale|r 对话。
    .turnin 92709 >>交任务 A Grand Adventure
    .target Elaadrin Evengale
--UNUSED likely train in sw/og because of portal from quest before takes you near zeppelin

-- step << Warrior
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train your level 14 class spells
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
--     .xp <14,1
-- step << Warrior
--     .money <0.45
--     .isQuestAvailable 94491 -- The Fate of the Den
--     .subzoneskip 16638,1 -- Valanaar
--     .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
--     .train 6574,1 -- Revenge (Rank 2) Not Trained
--     .xp <14,1
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
--     .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
--     .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
-- step << Rogue
--     .goto 2521,59.55,73.3,30,0
--     .goto 2521,59.91,72.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1758 >>Train your level 14 class spells
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .xp <14,1
-- step << Hunter
--     .goto 2521,59.571,72.639
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
--     .train 1513 >>Train your level 14 class spells
--     .skipgossipid 136808
--     .target Quel'ana Quickgale::252389
--     .xp <14,1
-- step << Shaman
--     .goto 2521,58.313,78.499
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
--     .train 8045 >>Train your level 14 class spells
--     .skipgossipid 136811
--     .target Sessaria Skystride::252382
--     .xp <14,1
-- step << Druid
--     .goto 2521,63.99,75.09
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
--     .train 5178 >>Train your level 14 class spells
--     .skipgossipid 136805
--     .target Lotheluum Starbreeze::252359
--     .xp <14,1

step << Horde
    >>放弃所有剩余的"Camping 101"任务。
    *点击"可用物品"窗口中的宏以一次放弃所有任务。
    .abandon 97970 >>放弃任务 Camping 101: 采矿
    .abandon 97971 >>放弃任务 Camping 101: 剥皮
    .abandon 96646 >>放弃任务 Camping 101: 烹饪
    .abandon 97968 >>放弃任务 Camping 101: 草药学
    .abandon 97965 >>放弃任务 Camping 101: 急救
    .abandon 97967 >>放弃任务 Camping 101: 钓鱼
    .abandon 97963 >>放弃任务 Camping 101: 炼金术
    .abandon 97964 >>放弃任务 Camping 101: 锻造
    .abandon 97973 >>放弃任务 Camping 101: 裁缝
    .abandon 98286 >>放弃任务 Camping 101: 附魔
    .abandon 97969 >>放弃任务 Camping 101: 制皮
    .abandon 98285 >>放弃任务 Camping 101: 工程学
    .abandon 93318 >>放弃任务 WANTED: Vulgara the Insatiable
    .macro Abandon 101,130722 >>放弃任务101
step << Alliance
    #completewith Magical City of Dalaran
    >>放弃所有剩余的"Camping 101"任务。
    *点击"可用物品"窗口中的宏以一次放弃所有任务。
    .abandon 97970 >>放弃任务 Camping 101: 采矿
    .abandon 97971 >>放弃任务 Camping 101: 剥皮
    .abandon 96646 >>放弃任务 Camping 101: 烹饪
    .abandon 97968 >>放弃任务 Camping 101: 草药学
    .abandon 97965 >>放弃任务 Camping 101: 急救
    .abandon 97967 >>放弃任务 Camping 101: 钓鱼
    .abandon 97963 >>放弃任务 Camping 101: 炼金术
    .abandon 97964 >>放弃任务 Camping 101: 锻造
    .abandon 97973 >>放弃任务 Camping 101: 裁缝
    .abandon 98286 >>放弃任务 Camping 101: 附魔
    .abandon 97969 >>放弃任务 Camping 101: 制皮
    .abandon 98285 >>放弃任务 Camping 101: 工程学
    .abandon 93318 >>放弃任务 WANTED: Vulgara the Insatiable
    .abandon 92709 >>放弃任务 A Grand Adventure
    .macro Abandon 101,130722 >>放弃任务101

-- ============================================================================
-- Alliance Discovery
-- ============================================================================

-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale

step << Alliance
    #optional
    #completewith next
    +|cRXP_WARN_飞艇可以在其6分钟周期中的任何时间到达。当你等待时，完成以下任务:|r
    *向商人出售垃圾物品并修复你的装备
    *烹饪食物并获得篝火增益以供后续使用
    *装备升级并选择天赋
step << Alliance
    #optional
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Denaaris Stargale::259084|r 对话
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>接受任务 Welcome to 艾泽拉斯
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #label LeaveZephrasIsle
    #completewith Magical City of Dalaran
    .zoneskip 1416 -- Alterac Mountains
    .goto 2521,65.81,83.44
    .zone 1424 >>乘飞艇前往达拉然城
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_不要提前跳下飞艇，因为你可能会被推下平台|r
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Denaaris Stargale::259084|r 对话
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>接受任务 Welcome to 艾泽拉斯
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师安斯雷姆·鲁因|r 对话
    .accept 94912 >>接受任务 Child of 自然
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step << Alliance Druid
    .goto 1453/0,1100.200,-8776.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .target Sheldras Moontree::5504
    .turnin 94912 >>交任务 Child of 自然
    .accept 94914 >>接受任务 月光林地
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯瑟琳·利兰|r 对话
    >>|cRXP_BUY_购买一个|r |T134335:0|t[闪光的小珠] |cRXP_BUY_和三个|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_从她那里。这是为了一个900经验任务|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_这用来在船上制作|r |T135805:0|t[Basic Campfires] |cRXP_WARN_来提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能而不浪费时间|r
    >>|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
step << Alliance Hunter
    #ah
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品以在西部荒野和黑海岸快速交任务:|r
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
    .target Auctioneer Jaxon::15659
step << Alliance Hunter
    #ah
    #optional
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品以在西部荒野和黑海岸快速交任务:|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon::15659

-- for discovery route
-- step << Alliance Mage
--     .goto 1453/0,885.34,-9006.15
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin::5497|r.
--     .trainer >>Train your class spells
--     .target Elsharin::5497
step << Alliance
    -- .goto 1453,48.1,88.35,10,0
    -- .goto 1453,49.36,87.37,10,0
    -- .goto 1453,48.85,86.94,10,0
    -- .goto 1453,48.76,87.71,10,0
    -- .goto 1453,54.8,83.65,25,0
    -- .goto 1453,53.78,78.72,25,0
    -- .goto 1453,55.67,75.99,25,0
    -- .goto 1453,59.9,71.41,25,0

    .goto 1453/0,888.000,-9027.101,9,0
    .goto 1453/0,867.400,-9005.500,8,0
    .goto 1453/0,877.300,-9008.900,8,0
    .goto 1453/0,864.000,-9001.300,8,0
    .goto 1453/0,811.900,-8993.200,20,0
    .goto 1453/0,780.500,-8975.800,20,0
    .goto 1453/0,770.500,-8947.200,20,0
    .goto 1453/0,789.900,-8907.400,20,0
    .goto 1453/0,755.500,-8878.500,20,0
    .goto 1453/0,715.500,-8843.300,20,0
    .goto 1453/0,675.600,-8782.601,20,0
    .goto 1453/0,629.700,-8759.800,20,0
    .goto 1453/0,603.400,-8765.500,20,0
    .goto 1453/0,573.500,-8737.800,20,0
    .goto 1453/0,552.500,-8742.000,20,0
    .goto 1453/0,527.700,-8703.500,20,0
    .goto 1453/0,552.600,-8656.900,20,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话 |cRXP_WARN_在城堡内|r。
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>交任务 Welcome to 艾泽拉斯
    .accept 93963 >>接受任务 Exploring the 联盟
    .accept 98021 >>接受任务 Journey to 哨兵岭 << !Hunter



--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Gilbert Gray|r 对话
    .target Gilbert Gray::267118
    .accept 95065 >>接受任务 Fishin' 时间
    .turnin 95065 >>交任务 Fishin' 时间
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的 专业技能 书籍中)|r
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
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的 专业技能 书籍中)|r
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
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[烹饪用火] |cRXP_WARN_(在你的 专业技能 书籍中)|r
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
    >>|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
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
    >>|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
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
    >>|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_，以便之后在暮色森林完成一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_如果需要，在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救]|r
    .zone Darkshore >> 乘船前往黑海岸
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> 乘船前往黑海岸

-- ============================================================================
-- Horde Leaving Zephras Isle
-- ============================================================================

step << Horde
    #optional
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nyalah Brightfire::257006|r 在 |cRXP_WARN_房屋内|r 对话。
    .turnin 93317 >>交任务 Crab Season
    .target Nyalah Brightfire::257006
step << Horde Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .turnin 94003 >>交任务 破天号壁垒
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.3
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .train 5242 >>训练 |T132333:0|t[战斗怒吼 (级别 2)]
    .train 7384 >>训练 |T132223:0|t[压制]
    .train 72 >>训练 |T132357:0|t[盾击]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.45
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .xp <14,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seena Skybreaker::252377|r 对话。
    .train 1160 >>训练 |Tinterface/icons/ability_warrior_warcry.blp:0|t[挫志怒吼]
    .train 6572 >>训练 |Tinterface/icons/ability_warrior_revenge.blp:0|t[复仇]
    .train 1310185 >>训练 |T136031:0|t[战术掌握]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Rogue
    .money <0.16
    .xp <12,1
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r 对话。
    .train 1766 >>训练 |T132219:0|t[脚踢]
    .train 3127 >>学习 |T132269:0|t[招架]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Horde
    #optional
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Riaani Nightwind::256083|r 对话。
    .turnin 93737 >>交任务 The 破碎者 构造体
    .target Riaani Nightwind::256083
step << Horde
    #optional
    .isQuestTurnedIn 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Riaani Nightwind::256083|r 对话。
    .accept 93738 >>接受任务 The 破碎者 构造体
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Railee Thriceforged::257422|r 对话。
    .vendor 257422 >>|cRXP_WARN_到商人处丢弃垃圾物品并在需要时维修|r。
    *不要卖出 |T132832:0|t[小 道具] 和 |T133972:0|t[Strider 肉]。
    *|cRXP_WARN_我们稍后需要它们用于烹饪|r。
    .target Railee Thriceforged::257422
step << Horde
    #optional
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Endaria Mistgaze::254344|r 对话。
    .turnin 93736 >>交任务 Unwelcome 调酒师桑塔基德 <酒类商人>
    .target Endaria Mistgaze::254344
step << Horde
    #optional
    .isOnQuest 93738 --The Broken Construct
    .goto 2521,59.149,79.773
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r 对话。
    .turnin 93738 >>交任务 The 破碎者 构造体
    .target Ayessa Dawnsinger::251968
step << Horde
    #optional
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r 对话。
    .turnin 92708 >>交任务 A Grand Adventure
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>放弃任务 A Grand Adventure
step << Horde
    #label LeaveZephrasIsle
    .zoneskip 2521,1 -- Zephras Isle
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>乘飞艇前往 |cRXP_PICK_Mulgore|r。
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Muln Earthfury::259118|r 对话。
    .target Muln Earthfury::259118
    .accept 94911 >>接受任务 Child of 自然
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Alaana Stormwalker::259119|r 对话。
    .accept 95350 >>接受任务 Welcome to 艾泽拉斯
    .target Alaana Stormwalker::259119
step << Horde
    #ignorecorpse
    .isOnQuest 95350 --Welcome to Azeroth
    .subzoneskip 17045,1 -- Skywatcher Plateau
    .goto 1412/1,323.300,-731.200
    .subzone 1638 >>跳下悬崖并在 |cRXP_FRIENDLY_精神治疗者::6491|r 重生。
step << Horde
    .isOnQuest 95350 --Welcome to Azeroth
    .subzoneskip 1638,1
    .goto 1456/1,-74.900,-981.700
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_精神治疗者::6491|r 对话。
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak Runetotem::3033|r 对话。
    .turnin 94911 >>交任务 Child of 自然
    .accept 94913 >>接受任务 月光林地
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>进入雷霆崖。
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak Runetotem::3033|r 对话。
    .turnin 94911 >>交任务 Child of 自然
    .accept 94913 >>接受任务 月光林地
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .xp <12,1
    .xp >14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak Runetotem::3033|r 对话。
    .train 8936 >>训练你的职业技能
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .xp <14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Turak Runetotem::3033|r 对话。
    .train 5178 >>训练你的职业技能
    .target Turak Runetotem::3033
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tal::2995|r 对话。
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal::2995
step << Horde
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .accept 5722 >> 接受任务 寻找背包
    .accept 5723 >> 接受任务 试探敌人
    .target Rahauro
    .dungeon RFC
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>进入雷霆崖。
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Tal::2995|r 对话。
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal::2995
step << Horde
    .goto 1454/1,-4439.41,1633.87--c:Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Innkeeper Gryshka::6929|r 对话。
    .home >> 将你的炉石绑在铁炉堡
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thatog::268701|r 对话。
    >>|cRXP_WARN_他在建筑二楼|r
    .accept 97246 >>接受任务 Meal Appeal
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Borstan::3368|r 对话。
    .turnin 97246 >>交任务 Meal Appeal
    .accept 97249 >>接受任务 Favorite 食物
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kor'geld::3348|r 对话。
    .accept 97242 >>接受任务 耶尔玛克's Medley
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
    >>在水中拾取 |cRXP_PICK_Handful of Cattails|r 和 |cRXP_PICK_Speargrass Cuttings|r
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .xp <12,1
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormak Grimshot::3352|r 对话。
    .train 13795 >> 训练你的职业技能
    .target Ormak Grimshot::3352
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Xao'tsu::10088|r 对话。
    .train 24556 >> 训练你的宠物技能
    .target Xao'tsu::10088
step << Horde Warrior
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz Ragefist::3353|r 对话。
    .train 7384 >> 训练你的职业技能
    .target Grezz Ragefist::3353
step << Horde Warrior
    #optional
    .xp <14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grezz Ragefist::3353|r 对话。
    .train 1160 >> 训练你的职业技能
    .target Grezz Ragefist::3353
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kor'geld::3348|r 对话。
    .turnin 97242 >>交任务 耶尔玛克's Medley
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Yelmak::3347|r 对话。
    >>|cRXP_WARN_你可能需要等待大约10秒才能接受该任务|r
    .accept 97275 >>接受任务 伍特's the Rush
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Whuut::11046|r 对话
    .turnin 97275 >>交任务伍特的惶急
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Migi::268682|r 对话
    .turnin 97249 >>交任务最喜欢的食物
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thra::268684|r 对话
    .accept 97326 >>接受任务岩石到休息处
    .target Thra::268684
step << Horde
    .isOnQuest 97326 -- Rocks to Rests
    .goto 1454/1,-4293.600,1949.900
    >>|cRXP_PICK_在地上|r拾取橙色 |cRXP_WARN_Rocks|r
    >>|cRXP_WARN_如果竞争激烈，跳过此任务！没有那么多 |cRXP_PICK_岩石|r，它们刷新速度较慢|r
    .complete 97326,1 --|8/8 Smooth Boulder
step << Horde
    .isQuestComplete 97326 -- Rocks to Rests
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thra::268684|r 对话
    .turnin 97326 >>交任务岩石到休息处
    .target Thra::268684
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thrall::4949|r 对话。
    .turnin 95350 >>交任务欢迎来到艾泽拉斯
    .accept 98024 >>接受任务 十字路口之旅
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    .dungeon !RFC
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Thrall::4949|r 对话。
    .turnin 95350 >>交任务欢迎来到艾泽拉斯
    .accept 98024 >>接受任务 十字路口之旅
    --.accept 93739 >>Accept Exploring the Horde
    .accept 5726 >>接受任务 隐藏的敌人
    .target Thrall::4949
    .dungeon RFC
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nazgrel::3230|r 对话。
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vol'jin::10540|r 对话。
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .xp <13,1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Zor Lonetree::4047|r 对话
    .accept 1061 >>接受任务石爪之灵
    .target Zor Lonetree::4047
step << Horde Shaman
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r 对话
    .train 408341 >> 训练你的职业技能
    .target Kardris Dreamseeker::3344
step << Horde Shaman
    #optional
    .xp <14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r 对话
    .train 8045 >> 训练你的职业技能
    .target Kardris Dreamseeker::3344
step << Horde Rogue
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormok::3328|r 对话
    .train 1766 >> 训练你的职业技能
    .target Ormok::3328
step << Horde Rogue
    #optional
    .xp <14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormok::3328|r 对话
    .train 1758 >> 训练你的职业技能
    .target Ormok::3328
step << Horde Mage
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Pephredo::5882|r 对话
    .train 145 >> 训练你的职业技能
    .target Pephredo::5882
step << Horde Mage
    #optional
    .xp <14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Pephredo::5882|r 对话
    .train 1449 >> 训练你的职业技能
    .target Pephredo::5882
step << Horde
    #completewith next
    .zone Durotar >> 离开 奥格瑞玛
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> 前往剃刀岭
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Takrin Pathseeker::3336|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> 前往远望哨
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kargal 战斗之痕::3337|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>登上飞艇塔
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    >>|cRXP_WARN_在等待时做水|r << Mage
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> 前往布瑞尔
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Deathguard Terrence::1738|r 对话
    .accept 96895 >>接受任务银色使者
    .target Deathguard Terrence::1738
step << Horde !Hunter
    #label DeliverytoSPF
    .xp >13,1
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Apothecary Johaan::1518|r 对话
    .accept 445 >>接受任务 给银松森林送信
    .target Apothecary Johaan::1518
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hadric Harlson::267009|r 对话
    .turnin 96895 >>交任务银色使者
    .accept 96897 >>接受任务诅咒神教
    .accept 96898 >>接受任务战争的残留
    .target Hadric Harlson::267009
step << Horde !Hunter
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
    .goto 1420/0,-130.500,1907.800
    >>击杀 |cRXP_ENEMY_Dark Enforcers::275437|r 和 |cRXP_ENEMY_Dark Neophytes|r。拾取他们身上的 |cRXP_LOOT_Necrotic 水晶 碎片|r
    >>|cRXP_LOOT_Necrotic 水晶 碎片|r |cRXP_WARN_也可以在地上拾取|r
    >>|cRXP_WARN_小心！这些小怪攻击力很强。|cRXP_ENEMY_Dark Enforcers::275437|r还会即时施放造成50-70伤害的技能|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer::275437
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step << Horde !Hunter
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Hadric Harlson::267009|r 对话
    .turnin 96897 >>交任务诅咒神教
    .turnin 96898 >>交任务战争的残留
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> 乘电梯下去到幽暗城
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Michael Garrett::4551|r 对话
    .fp Undercity >> 获得幽暗城的飞行路径
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .zoneskip Undercity,1
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Auctioneer Cain::15682|r 对话
    >>|cRXP_BUY_购买三个|r |T133884:0|t[鱼人眼睛] |cRXP_BUY_从拍卖行|r
    >>|cRXP_WARN_如果你愿意的话可以跳过，这只是个小捷径|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
step << Horde !Hunter
    .zoneskip Silverpine Forest
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> 从幽暗城下水道离开
step << Horde !Hunter
    #label Entersilverpine
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> 前往银松森林
]])
