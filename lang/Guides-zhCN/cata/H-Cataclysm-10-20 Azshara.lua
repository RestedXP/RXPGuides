if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22级 艾萨拉
#displayname 11-22级 艾萨拉 << Goblin/Pandaren
#next 22-27级 灰谷
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >>前往暗影裂口
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >>进入格罗玛什要塞
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >>前往智慧谷
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈达尔|r对话
    .train 61922 >>训练你的职业技能
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷库尔|r对话。
    >>|cRXP_BUY_从他那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target 雷库尔
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎伊|r 对话
    .train 3599 >>训练你的职业技能
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎乌拉|r 对话
    .train 5215 >>训练你的职业技能
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁德|r对话
    .train 5505 >>训练你的职业技能
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提耶利斯|r对话
    .train 8092 >>训练你的职业技能
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 1120 >>训练你的职业技能
    .target 米尔科特
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派雷亚诺|r对话
    .train 82242 >>训练你的职业技能
    .target 派雷亚诺
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >>前往荣誉谷
step << !Goblin
    .goto 1454,66.433,49.292
    >>点击 |cRXP_PICK_酋长的命令板|r
    .accept 28496 >>接受任务 大酋长的命令：艾萨拉！
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基罗|r对话
    .vendor >>出售物品并修理装备
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗纳卡达|r 对话
    .train 71 >>训练你的职业技能
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考鲁|r 对话
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够钱买|T133477:0|t[巨棒]（24银）的话，就把它卖掉 << Orc/Troll
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够钱买|T133477:0|t[巨棒]（25银34铜）的话，就把它卖掉 << Tauren
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够钱买|T133477:0|t[巨棒]（26银67铜）的话，就把它卖掉 << Undead/BloodElf
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够钱买|T133477:0|t[巨棒]（21银34铜）的话，就把它卖掉 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考鲁|r 对话
    >>|cRXP_BUY_购买1把|r |T133477:0|t[巨棒] |cRXP_BUY_从他那里|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_WARN_如果你没有选择增强专精，请跳过此步骤！|r
    .vendor >>出售垃圾物品并修理。如果卖掉武器能凑够钱买|T132938:0|t[右手黄铜指虎]  (19银17铜)和|T132938:0|t[左手黄铜指虎] [19银24铜]，就卖掉武器 << Orc/Troll
    .vendor >>出售垃圾物品并修理。如果卖掉武器能凑够钱买|T132938:0|t[右手黄铜指虎]  (20银24铜)和|T132938:0|t[左手黄铜指虎] [20银31铜]，就卖掉武器 << Tauren
    .vendor >>出售垃圾物品并修理。如果卖掉武器能凑够钱买|T132938:0|t[右手黄铜指虎]  (17银4铜)和|T132938:0|t[左手黄铜指虎] [17银10铜]，就卖掉武器 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_BUY_从他那里购买|r |T132938:0|t[右手黄铜指虎] |cRXP_BUY_和|r |T132938:0|t[左手黄铜指虎] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你没有选择增强专精，请跳过此步骤！|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森度吉安|r对话
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够|T135489:0|t[多层弯弓]（15银76铜）的钱，那就卖掉 << Orc/Troll
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够|T135489:0|t[多层弯弓]（16银64铜）的钱，那就卖掉 << Tauren
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够|T135489:0|t[多层弯弓]（17银52铜）的钱，那就卖掉 << Undead/BloodElf
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你凑够|T135489:0|t[多层弯弓]（14银2铜）的钱，那就卖掉 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target 森度吉安
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森度吉安|r对话
    >>|cRXP_BUY_购买1把|r |T135489:0|t[多层弯弓] |cRXP_BUY_从他那里|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target 森度吉安
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你有足够的钱购买|T135346:0|t[斗士短剑]，那就卖掉；如果钱够的话就买两把（每把18银20铜） << Orc/Troll
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你有足够的钱购买|T135346:0|t[斗士短剑]，那就卖掉；如果钱够的话就买两把（每把20银23铜） << Undead/BloodElf
    .vendor >>出售垃圾物品并修理装备。如果卖掉武器能让你有足够的钱购买|T135346:0|t[斗士短剑]，那就卖掉；如果钱够的话就买两把（每把16银18铜） << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_BUY_购买1把或者2把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +装备|T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +装备|T132938:0|t[右手黄铜指虎]
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +装备|T132938:0|t[左手黄铜指虎]
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +装备 |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +当你到达11级时，装备|T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +装备 |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥玛克|r对话
    .train 1978 >>训练你的职业技能
    .target 奥玛克
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >>从北部出口进入艾萨拉
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格图|r 对话
    .turnin 25648 >>交任务 杜隆塔尔之外
    .accept 14118 >>接受任务 军餐鹿肉
    .accept 14117 >>接受任务 灰谷之眼
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格图|r 对话
    .accept 14118 >>接受任务 军餐鹿肉
    .accept 14117 >>接受任务 灰谷之眼
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉比特|r 对话
    .turnin 25275 >>交任务 向劳工队长报道
    .accept 14129 >>接受任务 逃跑的伐木机！
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉比特|r 对话
    .turnin 28496 >>交任务 大酋长的命令：艾萨拉！
    .accept 14129 >>接受任务 逃跑的伐木机！
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉比特|r 对话
    .accept 14129 >>接受任务 逃跑的伐木机！
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>击杀|cRXP_ENEMY_塔伦迪斯斥候|r。他们处于潜行状态
    >>击杀|cRXP_ENEMY_虚弱的苔蹄雄鹿|r，并从它们身上拾取|cRXP_LOOT_鹿肉块|r
    >>|cRXP_ENEMY_塔伦迪斯侦察兵|r |cRXP_WARN_可能会在你击杀|r |cRXP_ENEMY_虚弱的苔蹄雄鹿|r时偷袭你
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>攻击一台|cRXP_ENEMY_逃跑的伐木机|r。一旦它变成友善状态，骑乘它
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>交任务 逃跑的伐木机！
    .accept 14134 >>接受任务 队长的木料
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>在|r艾萨拉木材堆|cRXP_PICK_处使用|T135437:0|t[收集木材]|r来收集|cRXP_LOOT_木料|r
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>交任务 队长的木料
    .accept 14135 >>接受任务 树上的敌人
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_使用|r |T134427:0|t[电锯]|r |cRXP_WARN_对|r |cRXP_FRIENDLY_艾萨拉树苗|r |cRXP_WARN_，让|r |cRXP_ENEMY_塔伦迪斯狙击手|r |cRXP_WARN_攻击你|r
    >>|cRXP_WARN_使用|r |T134427:0|t[电锯]|r |cRXP_WARN_和|r |T132330:0|t[飞刀]|r |cRXP_WARN_击杀|r |cRXP_ENEMY_塔伦迪斯狙击手|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>交任务 树上的敌人
    .accept 14146 >>接受任务 防守大门！
step
    #completewith next
    .goto 76,27.00,76.76,50 >>返回奥格瑞玛后门
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_使用你的|r |T134427:0|t[电锯]|r|cRXP_WARN_、|r |T132330:0|t[飞刀|r |cRXP_WARN_和|r |T133716:0|t[榴弹发射器|r |cRXP_WARN_击杀|r |cRXP_ENEMY_塔伦迪斯袭击者|r
    >>|cRXP_WARN_如果你失去了你的伐木机，骑乘1台|r |cRXP_FRIENDLY_备用伐木机|r |cRXP_WARN_作为替代|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>交任务 防守大门！
    .accept 14155 >>接受任务 砍大树
step
    .goto 76,21.506,75.870
    >>击杀西边的 |cRXP_ENEMY_塔伦迪斯古树|r
    >>|cRXP_WARN_如果你失去了你的伐木机，骑乘1台|r |cRXP_FRIENDLY_备用伐木机|r |cRXP_WARN_作为替代|r
    >>|cRXP_WARN_施放|r |T132489:0|t[续能] |cRXP_WARN_如果你的|cRXP_FRIENDLY_切割机|r生命值过低时|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>击杀|cRXP_ENEMY_塔伦迪斯斥候|r。他们处于潜行状态
    >>击杀|cRXP_ENEMY_虚弱的苔蹄雄鹿|r，并从它们身上拾取|cRXP_LOOT_鹿肉块|r
    >>|cRXP_ENEMY_塔伦迪斯侦察兵|r |cRXP_WARN_可能会在你击杀|r |cRXP_ENEMY_虚弱的苔蹄雄鹿|r时偷袭你
    >>|cRXP_WARN_如果你此时尚未接近完成，请跳过此步骤|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格拉比特|r 对话
    .turnin 14155 >>交任务 砍大树
    .accept 14162 >>接受任务 向霍扎克汇报
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格图|r 对话
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>接受任务 上层精灵归来？
    .turnin 14127 >>交任务 上层精灵归来？
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格图|r 对话
    .turnin 14117 >>交任务 灰谷之眼
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格图|r 对话
    .turnin 14127 >>交任务 上层精灵归来？
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>放弃任务 军餐鹿肉
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>放弃任务 灰谷之眼
step
    #completewith Horzak1
    .subzone 4830 >>前往奥格瑞玛火箭车换乘站
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅琳妮|r 对话
    .turnin 14128 >>交任务 上层精灵归来？
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍扎克|r 和 |cRXP_FRIENDLY_工头菲斯克|r 对话
    .turnin 14162 >>交任务 向霍扎克汇报
    .accept 14161 >>接受任务 灭除蜥蜴
    .accept 14165 >>接受任务 冷若岩石
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>接受任务 达成指标
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>向西前往山麓露天矿场
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>拾取 |cRXP_FRIENDLY_山麓矿工|r
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>带着 |cRXP_FRIENDLY_山麓矿工|r 回到奥格瑞玛火箭车换乘站
    >>|cRXP_WARN_注意执行此操作时无法骑乘或变身！|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍扎克|r 对话
    .turnin 14165 >>交任务 冷若岩石
    .accept 14190 >>接受任务 完美的棱镜
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>拾取地上的|cRXP_PICK_铁锭|r和|cRXP_PICK_铁料堆|r，获取|cRXP_LOOT_山麓铁矿|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>击杀|cRXP_ENEMY_灰石蜥蜴|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>击杀|cRXP_ENEMY_塔伦迪斯破坏者|r。从他们身上拾取|cRXP_LOOT_水晶坠饰|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>点击|cRXP_PICK_总部无线电|r
    .turnin 14190 >>交任务 完美的棱镜
    .accept 14192 >>接受任务 棱镜的粉碎
step
    .goto 76,20.03,69.97
    >>点击|cRXP_PICK_武器柜|r
    .turnin 14192 >>交任务 棱镜的粉碎
    .accept 14194 >>接受任务 重塑血肉
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >>|cRXP_WARN_使用|r |T249182:0|t[血肉重塑器] |cRXP_WARN_在|r |cRXP_FRIENDLY_山麓矿工|r身上
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>击杀|cRXP_ENEMY_灰石蜥蜴|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>拾取地上的|cRXP_PICK_铁锭|r和|cRXP_PICK_铁料堆|r，获取|cRXP_LOOT_山麓铁矿|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>前往奥格瑞玛火箭车换乘站
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费斯克|r 对话
    .turnin 14197 >>交任务 达成指标
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍扎克|r 对话
    .turnin 14161 >>交任务 灭除蜥蜴
    .turnin 14194 >>交任务 重塑血肉
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃塞斯特|r 对话
    .accept 14468 >>接受任务 天降美差
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>向北前往凄凉山
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫洛托夫|r 对话
    .turnin 14468 >>交任务 天降美差
    .accept 14469 >>接受任务 接过同志的包
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格利克斯|r 对话
    .accept 14470 >>接受任务 军事突破
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希兹|r 对话
    .accept 14471 >>接受任务 一级准备
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>拾取地面上的|cRXP_FRIENDLY_死亡士兵|r以获得|cRXP_LOOT_军事补给品|r
    >>|cRXP_WARN_小心|r |cFFEB144C地雷|r|cRXP_WARN_。踩到会被弹飞|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>击杀 |cRXP_ENEMY_军阀克雷利安|r。在地上拾取战利品 |cRXP_LOOT_SFG|r
    .complete 14470,1 --Warlord Krellian (1)
    .mob +Warlord Krellian
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>拾取地面上的|cRXP_FRIENDLY_死亡士兵|r以获得|cRXP_LOOT_军事补给品|r
    >>|cRXP_WARN_小心|r |cFFEB144C地雷|r|cRXP_WARN_。踩到会被弹飞|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格利克斯|r 对话
    .turnin 14470 >>交任务 军事突破
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫洛托夫|r 对话
    .turnin 14469 >>交任务 接过同志的包
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >>骑上 |cRXP_FRIENDLY_锈水财阀迫击炮|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_使用|r |T252172:0|t[迫击炮炮弹] |cRXP_WARN_击杀|r |cRXP_ENEMY_怒鳞进攻者|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希兹|r 对话
    .turnin 14471 >>交任务 一级准备
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格利克斯|r 对话
    .accept 14472 >>接受任务 正中面门！
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >>|cRXP_WARN_使用你的|r |T133032:0|t[SFG] |cRXP_WARN_来击杀|r |cRXP_ENEMY_被奴役的亚考罗克之子|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格利克斯|r 对话
    .turnin 14472 >>交任务 正中面门！
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫洛托夫|r 对话
    .accept 24452 >>接受任务 收益性考察
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>前往埃达拉斯废墟的中心
    .use 49701 >>|cRXP_WARN_使用你的|r |T133866:0|t[隐形力场生成器] |cRXP_WARN_来变为隐形|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫洛托夫|r 对话
    .turnin 24452 >>交任务 收益性考察
    .accept 24453 >>接受任务 私聊
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>前往奥格瑞玛火箭车换乘站
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃塞斯特|r 对话
    .turnin 24453 >>交任务 私聊
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_喀斯特|r 对话
    .accept 14202 >>接受任务 调查湖畔
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅琳妮|r 对话
    .accept 14201 >>接受任务 一沙一世界
    .target Malynea Skyreaver
step
    #completewith next
    >>拾取地面上的|cRXP_PICK_远古碎岩堆|r，获取|cRXP_LOOT_重见天日的神器|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>在 |cRXP_FRIENDLY_地精勘测员小格雷德|r 进行勘测时，保护她免受来袭的 |cRXP_ENEMY_仇恨之影|r 攻击
    .use 48655 >>|cRXP_WARN_如果需要的话，使用你的|r |T133015:0|t[勘测员的信标] |cRXP_WARN_召唤一个新的|r |cRXP_FRIENDLY_地精勘测员|r |cRXP_WARN_|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>拾取地面上的|cRXP_PICK_远古碎岩堆|r，获取|cRXP_LOOT_重见天日的神器|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_喀斯特|r 对话
    .turnin 14202 >>交任务 调查湖畔
    .accept 14209 >>接受任务 黏糊糊的发动机
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅琳妮|r 对话
    .turnin 14201 >>交任务 一沙一世界
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>点击 |cRXP_FRIENDLY_克拉伯尼克的推土机|r
    >>击杀出现的 |cRXP_ENEMY_灵质|r，并拾取其掉落的 |cRXP_LOOT_样本|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_喀斯特|r 对话
    .turnin 14209 >>交任务 黏糊糊的发动机
    .accept 14423 >>接受任务 推土驱魔术
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_使用|r |T135619:0|t[圣佑信号枪] |cRXP_WARN_靠近|r |cRXP_FRIENDLY_克拉伯尼克的推土机|r
    .timer 34,推土驱魔术 剧情RP
    >>当 |cRXP_ENEMY_克拉伯尼克的推土机|r 变为敌对时，攻击它
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_喀斯特|r 对话
    .turnin 14423 >>交任务 推土驱魔术
    .accept 14424 >>接受任务 再来点科学
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在门纳尔湖与 |cRXP_FRIENDLY_卡莱莎|r 对话
    .aura 67704 >>|cRXP_WARN_接受她给予的|r |T136223:0|t[亡者的回忆] |cRXP_WARN_buff|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师瑟维恩|r 对话
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>交任务 亡者的回忆
    .accept 14216 >>接受任务 萨希恩之石的传说
step << skip
    .goto 76,35.57,75.31
    >>在湖底拾取 |cRXP_PICK_远古石酒桶|r，获得 |cRXP_LOOT_萨森石|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅琳妮|r 对话
    .turnin 14216 >>交任务 萨希恩之石的传说
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>乘坐升降机上升到平台
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锈水火箭管理员|r对话
    .gossipoption 112430 >>乘坐火箭车前往南部火箭车终点站
    .timer 41,南部火箭车终点站
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14424 >>交任务 再来点科学
    .accept 14308 >>接受任务 科学发火了
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯莫科斯|r 对话
    .accept 14258 >>接受任务 炮轰纳迦
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>拾取地上的 |cRXP_PICK_地精迫击炮弹|r
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >>|cRXP_WARN_使用|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_瞄准火焰和|r |cRXP_FRIENDLY_研究实习生|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特维斯特克|r 对话
    .accept 14322 >>接受任务 悲剧的科学！悲剧！
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_九号实验品|r对话
    .accept 14408 >>接受任务 九号实验品的计划
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >>|cRXP_WARN_使用|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_瞄准火焰和|r |cRXP_FRIENDLY_研究实习生|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_四号实验体|r|cRXP_WARN_（红色迅猛龙），它可以一击秒杀你。|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>点击 |cRXP_PICK_秘密实验室扩音器|r
    .turnin 14308 >>交任务 科学发火了
    .accept 14310 >>接受任务 总结段错误：卸除核心
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>点击 |cRXP_PICK_反应堆控制控制台|r，开始护送任务
    >>护送小车回到南部火箭车终点站
    .use 49132 >>|cRXP_WARN_当|r |T133037:0|t[X-21型火焰消除器] |cRXP_WARN_瞄准|r |cRXP_FRIENDLY_巨型实验室地精|r |cRXP_WARN_时，在他身上着火时使用|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14310 >>交任务 总结段错误：卸除核心
    .accept 14370 >>接受任务 神秘的艾萨莱特水晶
    .accept 14371 >>接受任务 巨型茶点
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>点击 |cRXP_PICK_大门门铃|r
    >>杀死出现的 |cRXP_ENEMY_变异地精|r，拾取 |cRXP_LOOT_火箭蓝图|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>击杀|cRXP_ENEMY_迷雾之翼峭壁居民|r，拾取它们的|cRXP_LOOT_尸体|r
    >>击杀|cRXP_ENEMY_静电充能角鹰兽|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>从地面拾取|cRXP_PICK_艾萨莱特水晶矿层|r以获得|cRXP_LOOT_艾萨莱特水晶样本|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>击杀|cRXP_ENEMY_迷雾之翼峭壁居民|r，拾取它们的|cRXP_LOOT_尸体|r
    >>击杀|cRXP_ENEMY_静电充能角鹰兽|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_九号实验品|r对话
    .turnin 14408 >>交任务 九号实验品的计划
    .accept 14422 >>接受任务 飞向外太空的迅猛龙
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>在秘密实验室中打开5个|cRXP_PICK_标本笼|r
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>返回 |cRXP_FRIENDLY_九号实验品|r
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_九号实验品|r对话
    .turnin 14422 >>交任务 飞向外太空的迅猛龙
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特维斯特克|r 对话
    .turnin 14322 >>交任务 悲剧的科学！悲剧！
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14370 >>交任务 神秘的艾萨莱特水晶
    .turnin 14371 >>交任务 巨型茶点
    .accept 14377 >>接受任务 亲近巨人
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格蒙刚|r对话
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14377 >>交任务 亲近巨人
    .accept 14385 >>接受任务 艾萨莱特水晶实验一号
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .accept 14383 >>接受任务 废墟海岸的邪恶侏儒
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>前往废墟海岸
step
    #completewith next
    >>击杀|cRXP_ENEMY_网枪侏儒|r、|cRXP_ENEMY_电击侏儒|r和 |cRXP_ENEMY_宾汉姆·加基斯宾|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>拾取|cRXP_LOOT_超大块泻药|r
    >>|cRXP_WARN_乘坐电梯前往|r |cRXP_ENEMY_宾汉姆·加基斯宾|r |cRXP_WARN_所在的建筑上层|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>完成击杀|cRXP_ENEMY_网枪侏儒|r、|cRXP_ENEMY_电击侏儒|r和 |cRXP_ENEMY_宾汉姆·加基斯宾|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格蒙刚|r对话
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14385 >>交任务 艾萨莱特水晶实验一号
    .accept 14388 >>接受任务 艾萨莱特水晶实验二号
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .aura 68710 >>缩小成老鼠
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_火箭老鼠|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格蒙刚|r对话
    >>|cRXP_WARN_使用|r |T132328:0|t[跑啊] |cRXP_WARN_来提高你的移动速度|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>完成拾取地上的 |cRXP_PICK_地精迫击炮炮弹|r
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞里|r 对话
    .turnin 14388 >>交任务 艾萨莱特水晶实验二号
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .turnin 14383 >>交任务 废墟海岸的邪恶侏儒
    .accept 24458 >>接受任务 整装待发
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯莫科斯|r 对话
    .turnin 14258 >>交任务 炮轰纳迦
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格|r 对话
    .accept 14262 >>接受任务 刮鳞破肠
    .accept 14267 >>接受任务 调查海洋祭坛
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>前往风暴悬崖
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>击杀 |cRXP_ENEMY_恶鞭怒雷武士|r 和 |cRXP_ENEMY_恶鞭唤海者|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>点击 |cRXP_PICK_纳迦能量石|r
    .turnin 14267 >>交任务 调查海洋祭坛
    .accept 14270 >>接受任务 钥石碎片
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>拾取地上的|cRXP_LOOT_钥石碎片|r
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>点击 |cRXP_PICK_纳迦能量石|r
    .turnin 14270 >>交任务 钥石碎片
    .accept 14271 >>接受任务 向图卡斯汇报
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>击杀 |cRXP_ENEMY_恶鞭怒雷武士|r 和 |cRXP_ENEMY_恶鞭唤海者|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格·图卡斯|r对话
    .turnin 14262 >>交任务 刮鳞破肠
    .turnin 14271 >>交任务 向图卡斯汇报
    .accept 14295 >>接受任务 海的姐妹
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格·图卡斯|r对话
    .turnin 14271 >>交任务 向图卡斯汇报
    .accept 14295 >>接受任务 海的姐妹
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格·图卡斯|r对话
    .turnin 14271 >>交任务 向图卡斯汇报
    .accept 14295 >>接受任务 海的姐妹
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>击杀|cRXP_ENEMY_希莉丝拉女士|r
    >>|cRXP_WARN_点击在平台顶部的|r |cRXP_FRIENDLY_希莉丝拉的能量石头|r |cRXP_WARN_来削弱她|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>击杀|cRXP_ENEMY_薇丝拉女士|r
    >>|cRXP_WARN_点击在平台顶部的|r |cRXP_FRIENDLY_薇丝拉的能量石头|r |cRXP_WARN_来削弱她|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格·图卡斯|r对话
    .turnin 14295 >>交任务 海的姐妹
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"天旋地转"费利兹|r对话
    .gossipoption 111876 >>乘坐飞行前往锈水港
    .timer 59,整装待发 剧情RP
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r对话
    .trainer >>训练你的职业技能
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“点火器”菲兹|r 对话
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾沃·邪指|r 对话
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_修女金筛|r 对话
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>点击建筑内的|cRXP_PICK_清扫战场招募海报|r
    .accept 14478 >>接受任务 鱼肚行动
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里米·油指|r对话
    .home >>设置你的炉石在锈水港
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史丁奇·剃刀|r 对话
    .trainer >>训练你的职业技能
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r对话
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在楼上的 |cRXP_FRIENDLY_全能战士NX-01型|r 对话
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提莫|r对话
    .accept 14407 >>接受任务 艾萨拉的蓝龙
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布利尼克·菲兹福斯|r对话
    .turnin 24458 >>交任务 整装待发
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官莫洛托夫|r 对话
    .turnin 14478 >>交任务 鱼肚行动
    .accept 24455 >>接受任务 快速部署
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德索图小队长|r 对话
    .turnin 24455 >>交任务 快速部署
    .accept 14479 >>接受任务 人手多的是
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_火箭|r
    .timer 38,人手多的是 剧情RP
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉克卡斯|r对话
    .accept 24437 >>接受任务 先到先得
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德雷克斯中尉|r对话
    .turnin 14479 >>交任务 人手多的是
    .accept 24435 >>接受任务 扫尾
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫特军曹|r对话
    .accept 24436 >>接受任务 天使降临
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>击杀 |cRXP_ENEMY_恶鞭纳迦|r 和 |cRXP_ENEMY_恶鞭海妖|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_使用|r |T135619:0|t[神圣信号枪] |cRXP_WARN_对|r |cRXP_FRIENDLY_受伤的士兵|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_在南方宝塔使用|r |T132485:0|t[占地之旗] |cRXP_WARN_|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_在“大高塔”处使用|r |T132485:0|t[占地之旗]
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_在北部观景台|r |cRXP_WARN_使用|r |T1324855:0|t[占地之旗]
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>击杀 |cRXP_ENEMY_恶鞭纳迦|r 和 |cRXP_ENEMY_恶鞭海妖|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_使用|r |T135619:0|t[神圣信号枪] |cRXP_WARN_对|r |cRXP_FRIENDLY_受伤的士兵|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫特军曹|r对话
    .turnin 24436 >>交任务 天使降临
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德雷克斯中尉|r对话
    .turnin 24435 >>交任务 扫尾
    .accept 24448 >>接受任务 战地提拔
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉克卡斯|r对话
    .turnin 24437 >>交任务 先到先得
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托克队长|r对话
    .turnin 24448 >>交任务 战地提拔
    .accept 14487 >>接受任务 仍在跳动的心
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽尔克斯中士|r对话
    .accept 14480 >>接受任务 灭绝
    .accept 14484 >>接受任务 七寸
    .accept 14485 >>接受任务 还少个钟摆
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托拉·哈罗崔克|r对话
    .accept 14486 >>接受任务 货物买办
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_使用|r |T134286:0|t[地精小队信号弹] |cRXP_WARN_召唤|r |cRXP_FRIENDLY_地精|r |cRXP_WARN_，它们将协助你完成后续任务|r
    .use 49629
step
    #completewith LordKassarus
    >>摧毁|cRXP_PICK_恶鞭符文石|r
    >>|cRXP_FRIENDLY_反谍臭气弹|r |cRXP_WARN_会在符文石处安放炸药。防御|r |cRXP_ENEMY_恶鞭纳迦|r的进攻，保护他
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>拾取地上的|cRXP_LOOT_上层精灵的铭文石板|r
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>击杀|cRXP_ENEMY_恶鞭督军|r和|cRXP_ENEMY_恶鞭女巫|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>拾取地上的|cRXP_LOOT_亚考罗克的精华|r
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>击杀|cRXP_ENEMY_卡萨鲁斯领主|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>摧毁|cRXP_PICK_恶鞭符文石|r
    >>|cRXP_FRIENDLY_反谍臭气弹|r |cRXP_WARN_会在符文石处安放炸药。防御|r |cRXP_ENEMY_恶鞭纳迦|r的进攻，保护他
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>拾取地上的|cRXP_LOOT_上层精灵的铭文石板|r
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>击杀|cRXP_ENEMY_恶鞭督军|r和|cRXP_ENEMY_恶鞭女巫|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽尔克斯中士|r对话
    .turnin 14480 >>交任务 灭绝
    .turnin 14484 >>交任务 七寸
    .turnin 14485 >>交任务 还少个钟摆
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托拉·哈罗崔克|r对话
    .turnin 14486 >>交任务 货物买办
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托克队长|r对话
    .turnin 14487 >>交任务 仍在跳动的心
    .accept 24449 >>接受任务 离岸
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_军用旋翼机|r
    .timer 32,离岸 剧情RP
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_狂人大叔|r 对话
    .turnin 24449 >>交任务 离岸
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷|r对话
    .turnin 14407 >>交任务 艾萨拉的蓝龙
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷|r对话
    .accept 14130 >>接受任务 各色朋友
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>前往 |cRXP_FRIENDLY_厄格尔罗|r
    >>|cRXP_WARN_你可以在接下来的5分钟内在水面行走|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄格尔罗|r对话
    .turnin 14130 >>交任务 各色朋友
    .accept 14131 >>接受任务 先提提神
    .accept 14132 >>接受任务 没礼貌！
    .accept 14323 >>接受任务 吸水
    .target Ergll
step
    #completewith VileSplashers
    >>拾取地上的|cRXP_PICK_卡菲植物|r以获得|cRXP_LOOT_卡菲豆子|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>击杀|cRXP_ENEMY_玛克里尼掘地者|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>击杀|cRXP_ENEMY_邪恶水花|r，拾取它们的|cRXP_LOOT_微温水滴|r
    >>|cRXP_ENEMY_邪恶飞溅者|r |cRXP_WARN_在靠近时会立即死亡。|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>交任务 吸水
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_在|r |T135231:0|t[饱胀的艾萨拉海绵] |cRXP_WARN_处使用|r |cRXP_PICK_沸水领主之石|r
    >>击杀出现的|cRXP_ENEMY_沸水领主|r，拾取它的|cRXP_LOOT_沸水之球|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>击杀|cRXP_ENEMY_玛克里尼掘地者|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>拾取地上的|cRXP_PICK_卡菲植物|r以获得|cRXP_LOOT_卡菲豆子|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>击杀|cRXP_ENEMY_玛克里尼掘地者|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄格尔罗|r对话
    .turnin 14131 >>交任务 先提提神
    .turnin 14132 >>交任务 没礼貌！
    .turnin 14324 >>交任务 好多热水
    .accept 14345 >>接受任务 被淘汰者
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄格尔罗|r对话
    .turnin 14131 >>交任务 先提提神
    .turnin 14132 >>交任务 没礼貌！
    .accept 14324 >>接受任务 好多热水
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_在|r |T135231:0|t[饱胀的艾萨拉海绵] |cRXP_WARN_处使用|r |cRXP_PICK_沸水领主之石|r
    >>击杀出现的|cRXP_ENEMY_沸水领主|r，拾取它的|cRXP_LOOT_沸水之球|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄格尔罗|r对话
    .turnin 14324 >>交任务 好多热水
    .accept 14345 >>接受任务 被淘汰者
    .timer 198,乘坐海龟
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄格尔罗|r对话
    .vehicle >>乘坐海龟前往北方火箭车换乘站
    .timer 198,乘坐海龟
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>等待直到你到达北方火箭车换乘站
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_厄格尔罗|r |cRXP_WARN_再次对话以乘坐海龟，如果这没有自动发生|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索纳塔·火舞|r对话
    .turnin 14345 >>交任务 被淘汰者
    .accept 14340 >>接受任务 打扮整齐
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_安多瑞尔·誓日|r 对话
    .accept 14428 >>接受任务 珀风的手记
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Haggrum 血拳|r对话
    .accept 14431 >>接受任务 黑喉裂谷
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>击杀|cRXP_ENEMY_塔伦迪斯生物学家|r，拾取他们身上的|cRXP_LOOT_黑喉情报|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈格鲁姆·血拳|r 对话
    .turnin 14431 >>交任务 黑喉裂谷
    .accept 14432 >>接受任务 苦酒
    .accept 14433 >>接受任务 另类的外交
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>击杀 |cRXP_ENEMY_博学者珀风|r，拾取她的 |cRXP_LOOT_珀风的手记|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>点击|cRXP_PICK_高等占卜石头|r
    .turnin 14428 >>交任务 珀风的手记
    .accept 14429 >>接受任务 奥术解构
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>击杀|cRXP_ENEMY_见习调查员|r和|cRXP_ENEMY_见习照明师|r，从他们身上拾取|cRXP_LOOT_调和过的符文石|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>点击|cRXP_PICK_低级占卜石头|r
    .turnin 14429 >>交任务 奥术解构
    .accept 14430 >>接受任务 构造体黑客
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术构造体|r对话
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>前往 |cRXP_FRIENDLY_大法师克希雷姆的影像|r
    .use 49201 >>|cRXP_WARN_使用你的|r |T133131:0|t[肮脏的巫师帽]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r对话
    .turnin 14340 >>交任务 打扮整齐
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨库尔·铁颅|r 对话
    .accept 14250 >>接受任务 可再生资源
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔·罗伯索尼克|r对话
    .accept 14249 >>接受任务 剪羽毛
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夸尔拉·破笛|r 对话
    .accept 14263 >>接受任务 浪费百里香
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>拾取地面上的 |cRXP_LOOT_活怒百里香|r
    >>|cRXP_WARN_拾取|r 它们会使你获得 |T135791:0|t[生命盛怒] |cRXP_WARN_buff，持续60 秒|r (+20%伤害输出和承受，叠加至5层)
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>击杀 |cRXP_ENEMY_雷云角鹰兽|r，并拾取它们掉落的 |cRXP_LOOT_完美雷云羽毛|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_将|r |T135735:0|t[神谕者护腿] |cRXP_WARN_放在|r |cRXP_ENEMY_巴伯亚|r |cRXP_WARN_的前面，使其跑进去|r
    >>在 |cRXP_LOOT_活化玄武岩|r 爆炸后，拾取地面上的它
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>拾取地面上的 |cRXP_LOOT_活怒百里香|r
    >>|cRXP_WARN_拾取|r 它们会使你获得 |T135791:0|t[生命盛怒] |cRXP_WARN_buff，持续60 秒|r (+20%伤害输出和承受，叠加至5层)
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>击杀 |cRXP_ENEMY_雷云角鹰兽|r，并拾取它们掉落的 |cRXP_LOOT_完美雷云羽毛|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夸尔拉·破笛|r对话
    .turnin 14263 >>交任务 浪费百里香
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔·罗伯索尼克|r对话
    .turnin 14249 >>交任务 剪羽毛
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨库尔·铁颅|r对话
    .turnin 14250 >>交任务 可再生资源
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特蕾莎·塔叶|r对话
    .accept 14230 >>接受任务 体力劳动
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r对话
    .accept 14226 >>接受任务 脚下的麻烦
    .target Image of Archmage Xylem
step
    #completewith next
    >>击杀 |cRXP_ENEMY_被变形的蟑螂|r
    >>|cRXP_WARN_让|r |cRXP_FRIENDLY_私人奥术助手|r |cRXP_WARN_对|r |cRXP_WARN_雷加斯萨特|r|cRXP_ENEMY_,|r |cRXP_WARN_雷加斯潜行者|r |cRXP_ENEMY_和|r |cRXP_WARN_雷加斯唤魔者|r |cRXP_ENEMY_施放|r |T294474:0|t[变虫术]
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>拾取地上的 |cRXP_PICK_被盗的手册|r 获得 |cRXP_LOOT_护法师手册|r
    >>|cRXP_WARN_该区域有多个|r |cRXP_PICK_被盗的手册|r |cRXP_WARN_。只有|r |cRXP_FRIENDLY_绿色的|r |cRXP_WARN_那本包含|r |cRXP_LOOT_护法师手册|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>击杀 |cRXP_ENEMY_被变形的蟑螂|r
    >>|cRXP_WARN_让|r |cRXP_FRIENDLY_私人奥术助手|r |cRXP_WARN_对|r |cRXP_WARN_雷加斯萨特|r|cRXP_ENEMY_,|r |cRXP_WARN_雷加斯潜行者|r |cRXP_ENEMY_和|r |cRXP_WARN_雷加斯唤魔者|r |cRXP_ENEMY_施放|r |T294474:0|t[变虫术]
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>返回 |cRXP_FRIENDLY_大法师克希雷姆|r 的营地
    >>|cRXP_WARN_让你的|r |cRXP_FRIENDLY_私人奥术助手|r |cRXP_WARN_施放|r |T135750:0|t[返回营地]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特蕾莎·塔叶|r对话
    .turnin 14230 >>交任务 体力劳动
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r 对话
    .turnin 14226 >>交任务 脚下的麻烦
    .accept 14413 >>接受任务 学习之巅
    .timer 30,学习之巅 剧情演出
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r 对话
    .turnin 14413 >>交任务 学习之巅
    .accept 14296 >>接受任务 当心脚下
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_保持移动以避免被击落悬崖！如果掉下去就游回|r |cRXP_FRIENDLY_大法师克希雷姆的影像|r |cRXP_WARN_重新尝试|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>点击第一个 |cRXP_PICK_能量导管|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>点击第二个 |cRXP_PICK_能量导管|r
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>点击第三个 |cRXP_PICK_能量导管|r
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>点击第四个 |cRXP_PICK_能量导管|r
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>点击第五个 |cRXP_PICK_能量导管|r
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>点击第六个 |cRXP_PICK_能量导管|r
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_移动到白色圆圈以向上移动|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r对话
    .turnin 14296 >>交任务 当心脚下
    .accept 24478 >>接受任务 冰霜试炼
    .accept 14300 >>接受任务 火焰试炼
    .accept 24479 >>接受任务 暗影试炼
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>点击在地上的 |cRXP_PICK_冰霜传送门区域|r，然后点击传送门
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>通过跑过小浮冰云来收集20层 |T252270:0|t[冰之精华]
    >>|cRXP_WARN_避免旋转冰爆和地上的蓝色圆圈。你会失去一层|r |T252270:0|t[冰之精华]|cRXP_WARN_ 当每次被击中时|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>进入传送门
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>点击在地上的 |cRXP_PICK_火焰传送门区域|r，然后点击传送门
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>通过在圆圈间移动并避开火焰，收集10层 |T252268:0|t[火焰之舞]
    >>|cRXP_WARN_做到这一点的最简单方法是模仿|r |cRXP_FRIENDLY_达尔文|r |cRXP_WARN_的移动|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>进入传送门
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>点击在地上的 |cRXP_PICK_暗影传送门区域|r，然后点击传送门
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>点击|cRXP_PICK_紫色石头|r开始试炼
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>通过将|cRXP_ENEMY_哀恸之魂|r风筝到地面上的紫色圈内，收集20层|T252272:0|t[暗影诱饵]
    >>|cRXP_WARN_避免被|r |cRXP_ENEMY_哭泣之魂|r|cRXP_WARN_击中。当它们攻击你时，你会失去层数|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>点击传送门
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r对话
    .turnin 24478 >>交任务 冰霜试炼
    .turnin 14300 >>交任务 火焰试炼
    .turnin 24479 >>交任务 暗影试炼
    .accept 14299 >>接受任务 克希雷姆疯人院
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师克希雷姆的影像|r对话
    .gossipoption 111896 >>请他打开通往他塔楼的传送门
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>点击传送门
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔安娜|r对话
    .turnin 14299 >>交任务 克希雷姆疯人院
    .accept 14389 >>接受任务 难道不是很明显吗？
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>点击传送门
step
    .goto 76,27.798,40.448
    >>找到 |cRXP_FRIENDLY_安娜拉|r 和|cRXP_FRIENDLY_艾索雷苟斯|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>交任务 难道不是很明显吗？
    .accept 14390 >>接受任务 好事多磨
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾索雷苟斯|r对话
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>交任务 好事多磨
    .accept 14391 >>接受任务 扭转局面
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜拉|r对话
    .gossipoption 111889 >>返回生者世界
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>击杀|cRXP_ENEMY_塔伦迪斯使者|r，拾取他们身上的|cRXP_LOOT_使者的长袍|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>拾取地上的|cRXP_LOOT_石南根特酿|r
    >>|cRXP_ENEMY_黑爪熊怪|r |cRXP_WARN_也有几率掉落|r |cRXP_LOOT_石南根特酿|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>拾取地面上的|cRXP_PICK_重要文件|r，获取|cRXP_LOOT_黑喉会面日程|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>击杀|cRXP_ENEMY_塔伦迪斯使者|r，拾取他们身上的|cRXP_LOOT_使者的长袍|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>拾取地上的|cRXP_LOOT_石南根特酿|r
    >>|cRXP_ENEMY_黑爪熊怪|r |cRXP_WARN_也有几率掉落|r |cRXP_LOOT_石南根特酿|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>前往北方火箭车换乘站
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈格鲁姆·血拳|r对话
    .turnin 14432 >>交任务 苦酒
    .turnin 14433 >>交任务 另类的外交
    .accept 14435 >>接受任务 黑喉离间计
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈格鲁姆·血拳|r对话
    .turnin 14432 >>交任务 苦酒
    .turnin 14433 >>交任务 另类的外交
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_安多瑞尔·誓日|r 对话
    .turnin 14430 >>交任务 构造体黑客
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_在|r |T132671:0|t[哈格鲁姆的烟坑] |cRXP_WARN_使用|r |cRXP_PICK_假扮大使|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_安多瑞尔·誓日|r 对话
    .gossipoption 111853 >>传送至黑喉要塞
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_安多瑞尔·誓日|r 对话
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>在杀出黑喉要塞的路上，击杀|cRXP_ENEMY_黑喉战士|r和|cRXP_ENEMY_黑喉萨满|r
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >>离开黑喉要塞
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈格鲁姆·血拳|r对话
    .turnin 14435 >>交任务 黑喉离间计
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>乘坐升降机上升到平台
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锈水火箭管理员|r对话
    .gossipoption 112443 >>乘坐火箭前往北端火箭站终点
    .timer 51,北方火箭公路终点站
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>前往火箭平台的顶部
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锈水火箭管理员|r对话
    .gossipoption 112442 >>乘坐火箭前往北端火箭站终点
    .timer 83,北方火箭公路终点站
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布利兹·爆裂弹|r 对话
    .fp >>获得痛苦海岸飞行点
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷|r对话
    .turnin 14391 >>交任务 扭转局面
    .accept 24467 >>接受任务 黑色的末日
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰里科斯·熔光|r对话
    .accept 14297 >>接受任务 提前解放
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬诺·布拉斯诺金|r对话
    .accept 14261 >>接受任务 冰冰冷
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>击杀|cRXP_ENEMY_暮光屠龙者|r、|cRXP_ENEMY_暮光亵渎者|r和|cRXP_ENEMY_暗色龙兽|r。从它们身上拾取|T134245:0|t[|cRXP_LOOT_铁铸钥匙|r]
    >>使用|T134245:0|t[铁铸钥匙]打开|cRXP_PICK_暮光牢笼|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>对|cRXP_ENEMY_暗影龙|r使用你的 |T133146:0|t[低温装置16号]
    >>|cRXP_WARN_这会几乎瞬间杀死他们|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>击杀 |cRXP_ENEMY_暮光领主卡特娜拉|r
    >>|cRXP_WARN_别管|r |cRXP_ENEMY_玛里希恩|r|cRXP_WARN_，他之后会被|r |cRXP_FRIENDLY_卡雷苟斯|r |cRXP_WARN_杀掉|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卡雷苟斯|r对话
    .turnin 24467 >>交任务 黑色的末日
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>击杀|cRXP_ENEMY_暮光屠龙者|r、|cRXP_ENEMY_暮光亵渎者|r和|cRXP_ENEMY_暗色龙兽|r。从它们身上拾取|T134245:0|t[|cRXP_LOOT_铁铸钥匙|r]
    >>使用|T134245:0|t[铁铸钥匙]打开|cRXP_PICK_暮光牢笼|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>对|cRXP_ENEMY_暗影龙|r使用你的 |T133146:0|t[低温装置16号]
    >>|cRXP_WARN_这会几乎瞬间杀死他们|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬诺·布拉斯诺金|r对话
    .turnin 14261 >>交任务 冰冰冷
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰里科斯·熔光|r对话
    .turnin 14297 >>交任务 提前解放
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾索雷苟斯|r对话
    .accept 14392 >>接受任务 再见吾爱，还有米诺鱼
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>释放 |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    .target 洛甘纳尔
step
    #completewith next
    .hs >>炉石返回到锈水港
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r对话
    .trainer >>训练你的职业技能
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“点火器”菲兹|r 对话
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾沃·邪指|r 对话
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_修女金筛|r 对话
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史丁奇·剃刀|r 对话
    .trainer >>训练你的职业技能
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r对话
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在楼上的 |cRXP_FRIENDLY_全能战士NX-01型|r 对话
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索纳塔·火舞|r对话
    .turnin 14392 >>交任务 再见吾爱，还有米诺鱼
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗恩|r 对话
    .accept 24497 >>接受任务 再次空降
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_钢之翼|r
    .timer 130,再次空降 剧情RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_移除|r |T135992:0|t[降落伞] |cRXP_WARN_buff，以免到达时飞入河流|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡乌格|r对话
    .turnin 24497 >>交任务 再次空降
    .accept 14462 >>接受任务 我的头呢？
    .accept 24433 >>接受任务 让他们心惧胆寒
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .fly Southern Rocketway >>飞往南部火箭车终点站
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>乘坐升降机上升到平台
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_锈水火箭管理员|r对话
    .gossipoption 112434 >>乘坐火箭车前往南部火箭车终点站
    .timer 35,南部火箭车终点站
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>前往瓦罗莫克
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡乌格|r对话
    .accept 14462 >>接受任务 我的头呢？
    .accept 24433 >>接受任务 让他们心惧胆寒
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_安多瑞尔·誓日|r对话
    .accept 24434 >>接受任务 特种天兵
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .accept 14475 >>接受任务 落地！
    .target Kroum
step
    #completewith next
    >>击杀|cRXP_ENEMY_塔伦迪斯哨兵|r、|cRXP_ENEMY_塔伦迪斯防御者|r和|cRXP_ENEMY_塔伦迪斯博学者|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_掷弹兵队长斯莫科斯|r对话
    .target Bombardier Captain Smooks
    .turnin 14475 >>交任务 落地！
    .accept 14476 >>接受任务 遥控引爆
step
    .goto 76,15.02,74.28
    >>对地面使用|cRXP_PICK_爆破炸药1|r
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>对地面使用|cRXP_PICK_爆破炸药2|r
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>对地面使用|cRXP_PICK_爆破炸药3|r
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_掷弹兵队长斯莫科斯|r对话
    .turnin 14476 >>交任务 遥控引爆
    .accept 14477 >>接受任务 摁开关！
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>点击 |cRXP_PICK_地精起爆器|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>击杀|cRXP_ENEMY_塔伦迪斯哨兵|r、|cRXP_ENEMY_塔伦迪斯防御者|r和|cRXP_ENEMY_塔伦迪斯博学者|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史莉琪|r 对话
    .turnin 14462 >>交任务 我的头呢？
    .accept 14464 >>接受任务 一闪必杀
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_跟着史莉琪爬上塔楼|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>击杀|cRXP_ENEMY_格伦沃德队长|r。拾取他的 |cRXP_LOOT_头|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>击杀|cRXP_ENEMY_塔伦迪斯哨兵|r、|cRXP_ENEMY_塔伦迪斯防御者|r和|cRXP_ENEMY_塔伦迪斯博学者|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>点击|cRXP_PICK_博学者的召唤石头|r
    .turnin 24434 >>交任务 特种天兵
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>点击|cRXP_PICK_博学者的召唤石头|r
    .gossipoption 111875 >>传送回到瓦罗莫克
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .turnin 14477 >>交任务 摁开关！
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级掷弹兵海克尔|r对话
    .accept 24430 >>接受任务 遮天蔽日
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_落地的双足飞龙|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_使用|r |T133709:0|t[投掷炸弹] |cRXP_WARN_摧毁|r |cRXP_ENEMY_塔伦迪斯飞刃投掷者|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_使用|r |T133709:0|t[投掷炸弹] |cRXP_WARN_摧毁|r |cRXP_ENEMY_命令中心|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_使用|r |T133709:0|t[投掷炸弹] |cRXP_WARN_摧毁|r |cRXP_ENEMY_塔伦迪斯飞刃投掷者|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>飞回到 |cRXP_FRIENDLY_初级掷弹兵海克尔|r 附近
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级掷弹兵海克尔|r对话
    .turnin 24430 >>交任务 遮天蔽日
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡乌格|r对话
    .turnin 24433 >>交任务 让他们心惧胆寒
    .turnin 14464 >>交任务 一闪必杀
    .accept 24439 >>接受任务 征服艾萨拉
    .target Chawg
step
    .goto 76,9.15,72.82
    >>击杀在建筑第二层的|cRXP_ENEMY_指挥官加罗迪努斯|r
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>点击|cRXP_PICK_博学者的召唤石头|r
    .gossipoption 111875 >>传送回到瓦罗莫克
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡乌格|r对话
    .turnin 24439 >>交任务 征服艾萨拉
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .accept 24463 >>接受任务 探查灰谷
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗格|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛奇萨|r对话
    .train 33388 >>训练初级骑术
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥古纳罗|r对话
	.vendor >>|cRXP_BUY_如果收藏中还没有坐骑，从他那里购买一只|r |T132224:0|t[狼] |cRXP_BUY_|r
	.target 奥古纳罗
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·万金|r 对话
	.vendor >>|cRXP_BUY_如果你还没有坐骑的话，从他那里购买一只|r |T134237:0|t[三角小龙] |cRXP_BUY_|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .home >>将你的炉石绑定在奥格瑞玛
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Sen'Jin Village >>飞往森金村
    .target 多拉斯
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖尼尔|r对话
	.vendor >>|cRXP_BUY_如果你的收藏中还没有坐骑，从他那里购买|r |T132253:0|t[迅猛龙]
	.target 祖尼尔
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>乘坐飞艇前往提瑞斯法林地
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_撒迦利亚·普斯特|r对话
	.vendor >>|cRXP_BUY_如果你的收藏中还没有坐骑，从他购买1匹|r |T132264:0|t[骸骨战马]
	.target 撒迦利亚·普斯特
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>前往幽暗城
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>点击 |cRXP_PICK_传送宝珠|r 前往银月城
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>离开银月城
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维奈丝特拉|r对话
	.vendor >>|cRXP_BUY_如果你的收藏中还没有坐骑，从她那里购买|r |T132227:0|t[陆行鸟]
	.target 维奈丝特拉
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 多拉斯
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>乘坐电梯离开雷霆崖
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈布·爪蹄|r对话
	.vendor >>|cRXP_BUY_如果你的收藏中还没有坐骑，从她那里购买|r |T132243:0|t[科多兽]
	.target 哈布·爪蹄
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .train 5784 >>训练 |T136103:0|t[地狱战马]
    .target 米尔科特
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托莫|r 对话
    .train 34769 >>学习 |T136103:0|t[召唤军马] << BloodElf
    .train 69820 >>学习 |T132245:0|t[召唤日行者科多兽] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>使用炉石返回奥格瑞玛
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森度吉安|r对话
    >>|cRXP_BUY_从他那里购买|r |T135423:0|t[大型战斧]
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target 森度吉安
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_BUY_从他那里购买|r |T132941:0|t[右手利爪] |cRXP_BUY_和|r |T132941:0|t[左手利爪]|r
    >>|cRXP_WARN_如果你没有选择增强专精，请跳过此步骤！|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_BUY_购买一把|r |T135419:0|t[长剑] |cRXP_BUY_从他那里。在21级时装备它|r
    >>|cRXP_WARN_购买|r |T135342:0|t[波刃短剑] |cRXP_WARN_（如果你有刺杀或窃密专精）|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索玛|r 对话
    >>|cRXP_BUY_购买1把|r |T135419:0|t[长剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_购买|r |T135342:0|t[波刃短剑] |cRXP_WARN_（如果你有刺杀或窃密专精）|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_装备|r |T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +装备 |T132941:0|t[右手利爪]
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +装备 |T132938:0|t[左手利爪]
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_装备|r |T135419:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_装备|r |T135342:0|t[波刃短剑]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Valormok >>飞往瓦罗莫克
    .target 多拉斯
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>穿过大桥进入灰谷
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库格·血滴|r对话
    .turnin 24463 >>交任务 探查灰谷
    .accept 13866 >>接受任务 到农场去！
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库格·血滴|r对话
    .gossipoption 111683 >>飞往莫尔杉壁垒
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>放弃任务 艾萨拉的蓝龙
    ]])
