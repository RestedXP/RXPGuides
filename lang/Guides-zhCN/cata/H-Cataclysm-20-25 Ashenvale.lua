if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27级 灰谷
#next 27-31级 北荆棘谷
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000

step
    #optional
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库格·血滴|r 对话
    .gossipoption 111683 >>飞往莫尔杉壁垒
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .subzoneskip 1703
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13866 >>交任务 去壁垒！
    .accept 13612 >>接受任务 莫尔杉的防御
    .accept 13618 >>接受任务 找到高拉特！
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r对话
    .turnin 28493 >>交任务 大酋长的命令：灰谷
    .accept 13612 >>接受任务 莫尔杉的防御
    .accept 13618 >>接受任务 找到高拉特！
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .accept 13612 >>接受任务 莫尔杉的防御
    .accept 13618 >>接受任务 找到高拉特！
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .accept 13615 >>接受任务 箭壶见底
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪娜|r 对话
    .accept 13613 >>接受任务 救治伤兵
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔特上尉|r 对话
    .fp The Mor'shan Rampart >>获取莫尔杉壁垒飞行路径
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>击杀 |cRXP_ENEMY_灰谷步兵|r 和 |cRXP_ENEMY_灰谷弓箭手|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >>|cRXP_WARN_对|r |cRXP_WARN_受伤的莫尔杉防御者|r |cRXP_FRIENDLY_使用|r |T133690:0|t[医用药膏]
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>拾取地上的 |cRXP_PICK_箭矢|r
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高拉特|r 对话
    .turnin 13618 >>交任务 找到高拉特！
    .accept 13619 >>接受任务 最后的报告
    .target Gorat
step
    #label Skirmishers
    #loop
    .goto 63,68.816,82.328,0
    .waypoint 63,66.454,85.871,50,0
    .waypoint 63,70.033,85.211,50,0
    .waypoint 63,68.816,82.328,50,0
    .waypoint 63,67.731,82.870,50,0
    .waypoint 63,66.784,84.708,50,0
    >>击杀 |cRXP_ENEMY_灰谷步兵|r 和 |cRXP_ENEMY_灰谷弓箭手|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #label MorshanDefenders
    #loop
    .goto 63,66.934,86.130,0
    .waypoint 63,65.370,85.300,20,0
    .waypoint 63,66.934,86.130,20,0
    .waypoint 63,66.813,84.329,20,0
    .waypoint 63,67.587,83.172,20,0
    .waypoint 63,69.001,83.160,20,0
    .waypoint 63,68.994,86.080,20,0
    .waypoint 10,40.760,12.633,20,0
    .waypoint 63,65.280,86.817,20,0
    .use 45001 >>对 |cRXP_FRIENDLY_受伤的莫尔杉防御者|r 使用 |T133690:0|t[医用药膏]
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #loop
    .goto 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2082.40015,1365.00000,15,0
    .waypoint 1440/1,-2105.19995,1352.90002,15,0
    .waypoint 1440/1,-2154.69995,1411.90002,15,0
    .waypoint 1440/1,-2240.50000,1383.09998,15,0
    .waypoint 1440/1,-2280.10010,1393.00000,15,0
    .waypoint 1440/1,-2315.60010,1391.40002,15,0
    .waypoint 1440/1,-2341.69995,1376.00000,15,0
    .waypoint 1440/1,-2344.50000,1410.59998,15,0
    >>拾取地上的 |cRXP_PICK_箭矢|r
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13612 >>交任务 莫尔杉的防御
    .turnin 13619 >>交任务 最后的报告
    .accept 13620 >>接受任务 去找迪娜，立刻出发！
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .turnin 13615 >>交任务 箭壶见底
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪娜|r 对话
    .turnin 13620 >>交任务 去找迪娜，立刻出发！
    .turnin 13613 >>交任务 救治伤兵
    .accept 13621 >>接受任务 高拉特的复仇
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >>|cRXP_WARN_对|r |cRXP_WARN_高拉特|r |cRXP_FRIENDLY_使用|r |T134719:0|t[高拉特的灌魔之血]
    .timer 103,高拉特的复仇 剧情演出
    .use 45023
step
    .goto 63,65.72,82.20
    >>跟随 |cRXP_FRIENDLY_高拉特的灵魂|r 并在 |cRXP_ENEMY_艾伦迪拉德队长|r 出现时击杀他
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13621 >>交任务 高拉特的复仇
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .accept 13628 >>接受任务 有木材吗？
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    >>从他那里获得 |cRXP_LOOT_卡德拉克的缰绳|r
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>召唤坐骑 |cRXP_FRIENDLY_蛮角|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,有木材吗？剧情演出
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈尔卡|r 对话
    .turnin 13628 >>交任务 有木材吗？
    .accept 13640 >>接受任务 资材管理
    .target Gorka
step
    #loop
    .goto 1440/1,-2385.00000,1520.30005,0
    .goto 1440/1,-2437.60010,1554.80005,30,0
    .goto 1440/1,-2417.50000,1496.09998,30,0
    .goto 1440/1,-2385.00000,1520.30005,30,0
    .goto 1440/1,-2373.19995,1467.50000,30,0
    .goto 1440/1,-2383.90015,1405.90002,30,0
    .goto 1440/1,-2323.00000,1496.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_垂头丧气的苦工|r 对话
    >>|cRXP_WARN_跟随并保护他们免受|r |cRXP_ENEMY_灰谷猎手|r |cRXP_WARN_的攻击。当苦工开始砍木头时，|r |cRXP_LOOT_刚切下的木头|r |cRXP_WARN_会出现在地上，请立即拾取|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈尔卡|r 对话
    .turnin 13640 >>交任务 资材管理
    .accept 13651 >>接受任务 需要一点油
    .target Gorka
step
    #completewith next
    >>击杀 |cRXP_ENEMY_尖爪|r 如果他在的话。拾取 |T136063:0|t[|cRXP_LOOT_尖爪的爪子|r] 并使用它来开始任务
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务 尖爪的爪子
    .unitscan 尖爪
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 1440/1,-2566.90015,1799.70007,0
    .waypoint 1440/1,-2514.19995,1700.09998,50,0
    .waypoint 1440/1,-2566.90015,1799.70007,50,0
    .waypoint 1440/1,-2615.00000,1843.20007,50,0
    .waypoint 1440/1,-2497.90015,1864.70007,50,0
    .waypoint 1440/1,-2522.19995,1952.50000,50,0
    .waypoint 1440/1,-2606.50000,1940.30005,50,0
    .waypoint 1440/1,-2615.00000,1855.50000,50,0
    >>击杀 |cRXP_ENEMY_腐烂的泥浆怪|r。拾取 |cRXP_LOOT_自然之油|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈尔卡|r 对话
    .turnin 13651 >>交任务 需要一点油
    .accept 13653 >>接受任务 碎木的危机
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>与 |cRXP_FRIENDLY_戈尔卡|r 对话
    .timer 79,碎木的危机 剧情演出
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>与 |cRXP_FRIENDLY_戈尔卡|r 一起返回莫尔杉农场
    >>|cRXP_WARN_确保你没有骑乘坐骑！|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13653 >>交任务 碎木的危机
    .target Kadrak
    .accept 13712 >>接受任务 雷霆救兵！
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>与 |cRXP_FRIENDLY_卡德拉克|r 对话前往碎木岗哨
    .timer 110,雷霆救兵！ 剧情演出
    >>|cRXP_WARN_这任务可能会出bug！卡住的话就跳过这步|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>抵达碎木岗哨
    >>|cRXP_WARN_这任务可能会出bug！卡住的话就跳过这步|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13712 >>交任务 雷霆救兵！
    .accept 13803 >>接受任务 弱者的血
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .accept 13803 >>接受任务 弱者的血
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>前往碎木岗哨
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fp >>获得碎木岗哨飞行路径
    .target 乌尔格拉
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 对话
    .accept 6503 >>接受任务 灰谷先驱者
    .target 库莱比
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯利斯克|r 对话
    .home >>将你的炉石设置到 碎木岗哨
    .target 旅店老板凯利斯克
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦鲁莎|r 对话
    .accept 26448 >>接受任务 消灭军团
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在洞穴内与 |cRXP_FRIENDLY_杜莱克|r 对话
    .turnin 13803 >>交任务 弱者的血
    .accept 13805 >>接受任务 刺穿他们的心！
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .accept 13801 >>接受任务 死精灵上路
    .target 皮克希尔
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎木攻城车|r 对话
    .accept 13730 >>接受任务 邪火烧身
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>在冥火岭击杀 |cRXP_ENEMY_恶魔|r
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>其中一个 |cRXP_ENEMY_恶魔|r 可能掉落 |T134943:0|t[|cRXP_LOOT_恶魔的计划|r]。使用它来开始任务
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>接受任务 恶魔的计划
    .isQuestTurnedIn 13712
step
    #label FelFires
    #loop
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,30,0
    .waypoint 63,84.297,67.684,30,0
    .waypoint 63,83.339,66.328,30,0
    .waypoint 63,82.818,66.955,30,0
    .waypoint 63,81.928,66.385,30,0
    .waypoint 63,81.788,65.245,30,0
    .waypoint 63,80.768,64.565,30,0
    .waypoint 63,80.654,67.347,30,0
    .waypoint 63,81.829,69.984,30,0
    .use 45478 >>|cRXP_WARN_在绿色火焰上|r |cRXP_WARN_使用|r |T237030:0|t[加强型采集罐]
    .complete 13730,1 --7/7 Fel Fires Siphoned
    .isQuestTurnedIn 13712
step
    #label KillDemons
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,50,0
    .waypoint 63,84.297,67.684,50,0
    .waypoint 63,83.339,66.328,50,0
    .waypoint 63,82.818,66.955,50,0
    .waypoint 63,81.928,66.385,50,0
    .waypoint 63,81.788,65.245,50,0
    .waypoint 63,80.768,64.565,50,0
    .waypoint 63,80.654,67.347,50,0
    .waypoint 63,81.829,69.984,50,0
    >>在冥火岭击杀 |cRXP_ENEMY_恶魔|r
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>击杀 |cRXP_ENEMY_锐爪鹰|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务 尖爪的爪子
    .unitscan 尖爪
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>击杀 |cRXP_ENEMY_灰谷先驱者|r
    >>|cRXP_WARN_他们潜行在树丛附近|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan 灰谷先驱者
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>进入朵丹尼尔兽穴
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>击杀 |cRXP_ENEMY_痛苦的守卫者|r 和 |cRXP_ENEMY_痛苦的德鲁伊|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >>|cRXP_WARN_在洞穴中央|r |cRXP_WARN_使用|r |T134840:0|t[被污染的卡多雷之血]
    .complete 13805,1 --1/1 Forest Heart Corrupted
    .isQuestTurnedIn 13712
step
    #loop
    .goto 63,76.929,74.847,0
    .waypoint 63,75.394,75.203,15,0
    .waypoint 63,75.842,76.211,15,0
    .waypoint 63,76.208,75.300,15,0
    .waypoint 63,76.929,74.847,15,0
    .waypoint 63,77.356,75.219,15,0
    .waypoint 63,77.359,75.949,15,0
    .waypoint 63,76.722,75.943,15,0
    .waypoint 63,77.401,74.644,15,0
    >>完成击杀 |cRXP_ENEMY_痛苦的守卫者|r 和 |cRXP_ENEMY_痛苦的德鲁伊|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>击杀 |cRXP_ENEMY_锐爪鹰|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务 尖爪的爪子
    .unitscan 尖爪
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 63,74.504,72.562,0
    .waypoint 63,74.504,72.562,30,0
    .waypoint 63,71.936,73.893,30,0
    .waypoint 63,71.127,73.817,30,0
    .waypoint 63,71.392,72.955,30,0
    .waypoint 63,71.921,70.364,30,0
    .waypoint 63,72.913,70.286,30,0
    .waypoint 63,73.638,70.814,30,0
    .waypoint 63,74.243,69.532,30,0
    .waypoint 63,75.577,70.316,30,0
    .waypoint 63,74.493,72.447,30,0
    >>完成击杀 |cRXP_ENEMY_灰谷先驱者|r
    >>|cRXP_WARN_他们潜行在树丛附近|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan 灰谷先驱者
    .isQuestTurnedIn 13712
step
    #loop
    .goto 1440/1,-2557.50000,1751.50000,0
    .waypoint 1440/1,-2525.19995,1684.30005,40,0
    .waypoint 1440/1,-2557.50000,1751.50000,40,0
    .waypoint 1440/1,-2578.90015,1805.80005,40,0
    .waypoint 1440/1,-2494.19995,1868.70007,40,0
    .waypoint 1440/1,-2416.10010,1835.40002,40,0
    .waypoint 1440/1,-2387.90015,1787.09998,40,0
    .waypoint 1440/1,-2480.90015,1737.70007,40,0
    >>击杀 |cRXP_ENEMY_尖爪|r，并拾取他的 |T136063:0|t[|cRXP_LOOT_锐爪鹰的爪子|r]，使用它来接取任务
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>接受任务 尖爪的爪子
    .unitscan 尖爪
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >>使用炉石返回碎木岗哨
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .turnin 13801 >>交任务 死精灵上路
    .target 皮克希尔
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13805 >>交任务 刺穿他们的心！
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>接受任务 凶讯使者
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德拉克|r 对话
    .turnin 13805 >>交任务 刺穿他们的心！
    .accept 13808 >>接受任务 不可能是真的任务
    .accept 13848 >>接受任务 凶讯使者
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎木攻城车|r 对话
    .turnin 13730 >>交任务 邪火烧身
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎木攻城车|r 对话
    .turnin 13730 >>交任务 邪火烧身
    .accept 13751 >>接受任务 谁都别告诉！
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库莱比|r 对话
    .turnin 6503 >>交任务灰谷先驱者
    .target 库莱比
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦鲁莎|r 对话
    .turnin 26448 >>交任务 消灭军团
    .turnin 26447 >>交任务 恶魔的计划
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦鲁莎|r 对话
    .turnin 26448 >>交任务 消灭军团
    .target Valusha
    .isQuestTurnedIn 13712
--step
    --.goto 63,73.16,60.10
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    --.accept 26449 >>Accept Never Again!
    --.target Valusha
    --.isQuestTurnedIn 26447
    --Not worth doing

    --Could go straight to Zoram Strand from here. The 13751 chain is bad xp/hr (13751/13797/13798/13841/13842)

step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在洞穴内与 |cRXP_FRIENDLY_杜莱克|r 对话
    .turnin 13751 >>交任务 谁都别告诉！
    .accept 13797 >>接受任务 肮脏的种子
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>拾取分散在洞穴各处的 |cRXP_PICK_新鲜碎石|r 以获取 |cRXP_LOOT_大块矿石|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜莱克|r 对话
    .turnin 13797 >>交任务 肮脏的种子
    .accept 13798 >>接受任务 毁灭之雨
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >>|cRXP_WARN_爬上塔楼，用|r |T134569:0|t[被诅咒的矿石] |cRXP_WARN_瞄准|r |cRXP_ENEMY_暴怒的古树|r |cRXP_WARN_和|r |cRXP_ENEMY_暗夜精灵攻击部队|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜莱克|r 对话
    .turnin 13798 >>交任务 毁灭之雨
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎木攻城车|r 对话
    .accept 13841 >>接受任务 难辞其咎
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_在冒烟的火盆处使用你的|r |T133639:0|t[秘密信号粉末]
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科罗克|r 对话
    .turnin 13808 >>交任务 不可能是真的任务
    .accept 13815 >>接受任务 伐木
    .accept 13865 >>接受任务 脏活
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>击杀 |cRXP_ENEMY_灰谷斥候|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >>|cRXP_WARN_使用你的|r |T132399:0|t[碎木伐木斧] |cRXP_WARN_砍倒|r |cRXP_FRIENDLY_灰谷橡树|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>击杀 |cRXP_ENEMY_保卫者恩多兰|r、|cRXP_ENEMY_守卫者阿尔米隆|r 和 |cRXP_ENEMY_保卫者多里纳|r
    .goto 63,85.46,56.04
    .complete 13865,1 --1/1 Protector Endolar slain
    .goto 63,85.74,57.97
    .complete 13865,3 --1/1 Protector Arminon slain
    .goto 63,85.36,60.68
    .complete 13865,2 --1/1 Protector Dorinar slain
    .mob Protector Endolar
    .mob Protector Arminon
    .mob Protector Dorinar
step
    #questguide
    #label ChopSomeTrees
    .goto 63,86.51,54.67
    .use 45807 >>|cRXP_WARN_使用你的|r |T132399:0|t[碎木伐木斧] |cRXP_WARN_砍倒|r |cRXP_FRIENDLY_灰谷橡树|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>完成击杀 |cRXP_ENEMY_灰谷斥候|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >>前往屠魔峡谷
step
    #questguide
    .goto 63,89.75,76.72
    >>击杀 |cRXP_ENEMY_戈加农|r。拾取他的 |cRXP_LOOT_烈焰之锋|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>击杀 |cRXP_ENEMY_搜寻者迪亚索鲁斯|r。拾取 |cRXP_LOOT_搜寻者的魔化长矛|r。
    >>|cRXP_WARN_他就在进入洞穴后遇到的第一座桥的对面|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科罗克|r 对话
    .use 45710 >>|cRXP_WARN_在冒烟的火盆处使用你的|r |T133639:0|t[秘密信号粉末] |cRXP_WARN_来召唤|r |cRXP_FRIENDLY_科罗克|r
    .turnin 13815 >>交任务 伐木
    .turnin 13865 >>交任务 脏活
    .accept 13870 >>接受任务 尽善尽美
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战歌伐木营地与 |cRXP_FRIENDLY_监工古尔萨克|r 对话
    .turnin 13870 >>交任务 尽善尽美
    .accept 13871 >>接受任务 保安！
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>跑出去左转，杀掉跳出来袭击你的 |cRXP_ENEMY_刺客|r
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_监工古尔萨克|r 对话
    .turnin 13871 >>交任务 保安！
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者曼纳林|r 对话
    .accept 13873 >>接受任务 茜拉尔的遗愿
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者古塔尔|r 对话
    .turnin 13873 >>交任务 茜拉尔的遗愿
    .accept 13875 >>接受任务 古塔尔的请求
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>拾取地上的 |cRXP_PICK_带刺的血盅花|r
    >>|cRXP_WARN_沿着通往碎木岗哨的道路走，可以找到很多|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>使用 |T134892:0|t[兽人发辫] 来制造 |cRXP_LOOT_血盅花饰带|r
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_碎木攻城车|r 对话
    .turnin 13875 >>交任务 古塔尔的请求
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦鲁莎|r 对话
    .turnin 26449 >>交任务 绝不再会了！
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛克·奥卡尔|r 对话
    .accept 13806 >>接受任务 恶魔使命
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .accept 6441 >>接受任务 萨特之角
    .target 皮克希尔
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>北行前往萨提纳尔
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>击杀 |cRXP_ENEMY_萨特|r, 拾取 |cRXP_LOOT_角|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|t点击紫色的 |cRXP_FRIENDLY_仪式宝石|r
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>完成击杀 |cRXP_ENEMY_冷心萨特|r。拾取 |cRXP_LOOT_萨特之角|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮克希尔|r 对话
    .turnin 6441 >>交任务萨特之角
    .target 皮克希尔
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛克·奥卡尔|r 对话
    .turnin 13806 >>交任务 恶魔使命
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .gossipoption 111682 >>飞往佐拉姆海岸
    .timer 165,佐拉姆海岸，灰谷
    .target 乌尔格拉
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .gossipoption 111682 >>飞往佐拉姆海岸
    .timer 165,佐拉姆海岸，灰谷
    .target 乌尔格拉
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>前往佐拉姆加前哨站
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .fp >>获得佐拉姆加前哨站的飞行点
    .target 安德鲁克
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官恐牙|r 对话
    .turnin 13848 >>交任务 凶讯使者
    .accept 13890 >>接受任务 别让火灭了
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达格鲁·怒锤|r 对话
    .accept 13883 >>接受任务 破船一艘
    .accept 26890 >>接受任务 阿库麦尔水晶
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .accept 6442 >>接受任务 佐拉姆海岸的纳迦
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店助理度朗|r 对话
    .home >>将你的炉石绑定在佐拉姆加前哨站
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格拉什|r 对话
    >>|cRXP_WARN_这将开始一个护送任务。小心，任务难度较高|r
    .accept 6641,1 >>接受任务鞭笞者沃尔沙
    .target 穆格拉什
step
    #completewith LitLightHouse
    >>击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob 怒尾巫师
step
    .goto 63,9.66,27.64
    >>跟随 |cRXP_FRIENDLY_穆格拉什|r。到达后点击 |cRXP_PICK_纳迦火盆|r
    >>|cRXP_WARN_将会刷新一波波的|r |cRXP_ENEMY_纳迦|r |cRXP_WARN_。一旦|r |cRXP_ENEMY_海潮领主沃尔夏兹|r |cRXP_WARN_出现，要小心，他攻击力很高|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob 鞭笞者沃尔沙
step
    #completewith next
    >>从海底拾取 |cRXP_LOOT_沉没的金属碎片|r
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>击杀 |cRXP_ENEMY_魔尾多头蛇|r。拾取他们的 |cRXP_LOOT_脂块|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>完成从海底拾取 |cRXP_LOOT_沉没的金属碎片|r
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >>前往佐拉姆加前哨站的熔炉
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_将|r |T237338:0|t[魔尾多头蛇脂块] |cRXP_WARN_练成|r |cRXP_LOOT_魔尾多头蛇之油|r
    >>|cRXP_WARN_你需要到佐拉姆加前哨站的熔炉才能进行这个操作|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达格鲁·怒锤|r 对话
    .turnin 13883 >>交任务 破船一艘
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>前往灯塔顶部点燃火焰
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>完成击杀 |cRXP_ENEMY_佐拉姆海岸的纳迦|r。拾取他们的 |cRXP_LOOT_头颅|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob 怒尾巫师
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官恐牙|r 对话
    .turnin 13890 >>交任务 别让火灭了
    .accept 13920 >>接受任务 你走之前……
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战歌信使|r 对话
    .turnin 6641 >>交任务鞭笞者沃尔沙
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 6442 >>交任务佐拉姆海岸的纳迦
    .accept 13901 >>接受任务 绝望深渊
    .target Marukai
step
    #loop
    .goto 1440/1,394.10001,3549.50000,0
    .waypoint 1440/1,682.60004,3480.60010,50,0
    .waypoint 1440/1,584.60004,3343.60010,50,0
    .waypoint 1440/1,394.10001,3549.50000,50,0
    .waypoint 1440/1,558.50000,3604.00000,50,0
    .waypoint 1440/1,661.20001,3772.90015,50,0
    .waypoint 1440/1,643.00000,3932.40015,50,0
    >>击杀 |cRXP_ENEMY_野鹿|r。拾取它们的 |cRXP_LOOT_肉排|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>跳入黑暗深渊
    .subzoneskip 5517
step
    #completewith next
    >>从墙上拾取 |cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>击杀 |cRXP_ENEMY_黑暗深渊海潮祭司|r
    .complete 13901,1 --6/6 Blackfathom Tide Priestesses slain
    .mob 黑暗深渊海潮祭司
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>完成拾取 |cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >>炉石回到佐拉姆岗哨
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官恐牙|r 对话
    .turnin 13920 >>交任务 你走之前……
    .accept 13923 >>接受任务 到地狱咆哮岗哨去
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛鲁凯|r 对话
    .turnin 13901 >>交任务 绝望深渊
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达格鲁·怒锤|r 对话
    .turnin 26890 >>交任务  阿库麦尔的精华
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德鲁克|r 对话
    .gossipoption 111691 >>飞往地狱咆哮岗哨
    .target 安德鲁克
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉卡|r 对话
    .fp >>获取地狱咆哮岗哨飞行路径
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板林卡莎|r 对话
    .home >>将你的炉石设置在地狱咆哮岗哨
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 13923 >>交任务 到地狱咆哮岗哨去
    .accept 13936 >>接受任务 愚蠢的特维德
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉恩·阿玛卡|r 对话
    .accept 216 >>接受任务 蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特维德|r 对话
    .turnin 13936 >>交任务 愚蠢的特维德
    .accept 13942 >>接受任务 给我们把炸弹弄好
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .accept 13943 >>接受任务 喘息的空间
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米苏瓦|r 对话
    .accept 6462 >>接受任务巨魔符咒
    .target 米苏瓦
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>击杀 |cRXP_ENEMY_阿斯特兰纳军官|r 和 |cRXP_ENEMY_阿斯特兰纳步兵|r
    >>拾取地上的 |cRXP_PICK_月光粘土|r
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>击杀 |cRXP_ENEMY_蓟皮熊怪|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>进入蓟皮要塞
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>在地上拾取 |cRXP_PICK_巨魔箱|r，以获得 |cRXP_LOOT_巨魔护符|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与洞穴深处的 |cRXP_FRIENDLY_鲁尔|r 对话。这将开始一个护送任务
    .accept 6482 >>接受任务鲁尔的自由
    .target 鲁尔·雪蹄
step
    .goto 63,40.68,33.21,20,0
    .goto 63,40.29,32.25,20,0
    .goto 63,39.41,31.00,20,0
    .goto 63,38.28,30.68,20,0
    .goto 63,37.39,32.74,30,0
    .goto 63,37.30,34.49,30,0
    .goto 63,38.73,36.86,50,0
    .goto 63,38.35,38.55
    >>护送 |cRXP_FRIENDLY_鲁尔|r 离开 蓟皮村
    >>|cFFFCDC00小心！当你走到洞穴半程时会刷出3只|r |cRXP_ENEMY_蓟皮复仇者|r |cFFFCDC00在蓟皮村村门口还会再刷出3只|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target 鲁尔·雪蹄
step
    .goto 63,39.45,36.62
    >>完成击杀 |cRXP_ENEMY_蓟皮熊怪|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 13943 >>交任务 喘息的空间
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉恩·阿玛卡|r 对话
    .turnin 216 >>交任务蓟皮熊怪的麻烦
    .target 卡拉恩·阿玛卡
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特维德|r 对话
    .turnin 13942 >>交任务 给我们把炸弹弄好
    .accept 13944 >>接受任务 小身材有大脾气
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米苏瓦|r 对话
    .turnin 6462 >>交任务巨魔符咒
    .target 米苏瓦
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_在破损的马车处|r |cRXP_WARN_使用|r |T133711:0|t[特维德的速成炸药]
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 13944 >>交任务 小身材有大脾气
    .accept 13947 >>接受任务 轰炸阿斯特兰纳！
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉卡|r 对话
    .gossipoption 111697 >>乘坐驭风者轰炸阿斯特兰纳
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>对 |cRXP_ENEMY_阿斯特兰纳哨兵|r 和 |cRXP_ENEMY_阿斯特兰纳投刃车|r 使用 |T133711:0|t[投掷炸药]
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    .cast vehicle,65481 >>vehicle,65481 >>|cRXP_WARN_使用|r |T136011:0|t[返回基地] |cRXP_WARN_飞回地狱咆哮岗哨|r
    .subzoneskip 4691
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 13947 >>交任务 轰炸阿斯特兰纳！
    .accept 13958 >>接受任务 情况危急！
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特维德|r 对话
    .accept 13974 >>接受任务 特维德的小包裹
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布萝克|r 对话
    .accept 13879 >>接受任务 雷鸣峰
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>前往雷鸣峰
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯提克瓦|r 对话
    .turnin 13879 >>交任务 雷鸣峰
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿克塔努斯|r 对话
    .accept 13884 >>接受任务 把火灭了
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_岩核|r 对话
    .accept 13880 >>接受任务 热岩浆
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_如果你失去了你的|r |cRXP_FRIENDLY_冰涌水元素|r|cRXP_WARN_，与|r |cRXP_FRIENDLY_阿克塔努斯|r |cRXP_WARN_再对话以获得另一个|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>击杀 |cRXP_ENEMY_熔岩狂暴者|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,30,0
    .waypoint 1440/1,-1165.50000,2678.50000,30,0
    .waypoint 1440/1,-1048.50000,2761.10010,30,0
    .waypoint 1440/1,-1122.09998,2828.30005,30,0
    .waypoint 1440/1,-1247.30005,2860.00000,30,0
    .waypoint 1440/1,-1300.80005,2733.19995,30,0
    .waypoint 1440/1,-1323.30005,2631.60010,30,0
    .use 46352 >>|cRXP_WARN_对|r |cRXP_WARN_熔岩裂缝|r |cRXP_PICK_使用|r |T237588:0|t[大地的赠礼]
    .complete 13880,1 --8/8 Lava fissures filled
step
    #questguide
    #label LavaRagers
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,50,0
    .waypoint 1440/1,-1165.50000,2678.50000,50,0
    .waypoint 1440/1,-1048.50000,2761.10010,50,0
    .waypoint 1440/1,-1122.09998,2828.30005,50,0
    .waypoint 1440/1,-1247.30005,2860.00000,50,0
    .waypoint 1440/1,-1300.80005,2733.19995,50,0
    .waypoint 1440/1,-1323.30005,2631.60010,50,0
    >>完成击杀 |cRXP_ENEMY_熔岩狂暴者|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿克塔努斯|r 对话
    .turnin 13884 >>交任务 把火灭了
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_岩核|r 对话
    .turnin 13880 >>交任务 热岩浆
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_气旋|r 对话
    .accept 13888 >>接受任务 漩涡
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次与 |cRXP_FRIENDLY_气旋|r 对话来挑战 |cRXP_ENEMY_元素勋爵玛格玛萨|r
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>击杀 |cRXP_ENEMY_元素勋爵玛格玛萨|r
    >>|cRXP_WARN_卡CD|r|cRXP_WARN_使用|r |T252174:0|t[晴空霹雳] |cRXP_WARN_和|r |T236154:0|t[漩涡复仇]
    >>当受到 |T135833:0|t[君主献祭]|cRXP_WARN_ 效果时，使用|r |T135817:0|t[灭火] |cRXP_WARN_来解除它|r
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯提克瓦|r 对话
    .turnin 13888 >>交任务 漩涡
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >>前往银风避难所
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .turnin 2 >>交任务尖爪的爪子
    .accept 13967 >>接受任务 消减牧群的……数量？
    .target 塞娜尼·雷心
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .accept 13967 >>接受任务 消减牧群的……数量？
    .target 塞娜尼·雷心
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驯风者舒舍克|r 对话
    .fp >>获得银风避难所飞行路径
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗洛兹|r 对话
    .turnin 13974 >>交任务 特维德的小包裹
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔坎上尉|r 对话
    .accept 25 >>接受任务 兔死狗烹
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗洛兹|r 对话
    .accept 13977 >>接受任务 大规模生产
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗姆拉|r 对话
    .accept 26416 >>接受任务 那么，来丛林吧
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血卫士阿尔多·石雨|r 对话
    .accept 25945 >>接受任务 我们来是做一件，也许是两件事的……
    .target Blood Guard Aldo Rockrain
    --Stonetalon Breadcrumb
step
    #loop
    .goto 1440/1,-1432.70007,2296.40015,0
    .waypoint 1440/1,-1405.90002,2233.69995,50,0
    .waypoint 1440/1,-1432.70007,2296.40015,50,0
    .waypoint 1440/1,-1569.30005,2259.90015,50,0
    .waypoint 1440/1,-1581.09998,2184.90015,50,0
    .waypoint 1440/1,-1530.30005,2218.90015,50,0
    >>击杀 |cRXP_ENEMY_黑喉熊怪|r。拾取它们的 |cRXP_LOOT_耳饰|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .turnin 13967 >>交任务 消减牧群的……数量？
    .accept 6621 >>接受任务 污林之王
    .target 塞娜尼·雷心
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .turnin 2 >>交任务尖爪的爪子
    .turnin 13967 >>交任务 消减牧群的……数量？
    .accept 6621 >>接受任务 污林之王
    .target 塞娜尼·雷心
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .turnin 13967 >>交任务 消减牧群的……数量？
    .accept 6621 >>接受任务 污林之王
    .target 塞娜尼·雷心
step
    .goto 63,56.37,63.54
    .use 16972 >>|cRXP_WARN_在图腾丘上使用|r |T237588:0|t[大地的赠礼] |cRXP_WARN_并保护它免受来袭的|r |cRXP_ENEMY_黑喉熊怪|r
    >>在 |cRXP_ENEMY_穆戈特酋长|r 出现时击杀他。从 |cRXP_PICK_图腾篮|r 中拾取 |cRXP_LOOT_穆戈特的图腾|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>击杀 |cRXP_ENEMY_水元素|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob 污浊的水元素
step
    .goto 1440/1,-1079.70007,1994.20007
    >>击杀 |cRXP_ENEMY_泰德雷斯|r，并拾取她的 |T136222:0|t[|cRXP_LOOT_被污染的水球|r]。使用它来开启任务
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>接受任务 被污染的水元素
    .mob 泰德雷斯
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>完成击杀 |cRXP_ENEMY_水元素|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob 污浊的水元素
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头金科斯|r 对话
    .turnin 13977 >>交任务 大规模生产
    .accept 13980 >>接受任务 他们在那儿！
    .accept 13983 >>接受任务 自掘坟墓
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>击杀 |cRXP_ENEMY_乌桑戈斯|r，并拾取他的 |T132941:0|t[|cRXP_LOOT_乌桑戈斯的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_他会在附近稍微巡逻|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>接受任务 乌萨苟斯的爪子
    .unitscan 乌萨苟斯
    .use 16303
step
    #completewith next
    >>击杀 |cRXP_ENEMY_灰谷刺客|r
    .use 46776 >>|cRXP_WARN_它们处于潜行状态！使用|r |T133023:0|t[金科斯的侦测镜] |cRXP_WARN_来发现它们|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-589.79999,2194.10010,40,0
    .waypoint 1440/1,-628.10004,2297.69995,40,0
    >>拾取地上的 |cRXP_PICK_青铜齿轮|r、|cRXP_PICK_锁定螺栓|r 和 |cRXP_PICK_铜板|r
    .complete 13983,1 --3/3 Bronze Cog
    .complete 13983,3 --5/5 Locking Bolt
    .complete 13983,2 --3/3 Copper Plating
step
    #label KillAssassins
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-685.79999,2128.40015,40,0
    .waypoint 1440/1,-726.40002,2037.50000,40,0
    >>完成击杀 |cRXP_ENEMY_灰谷刺客|r
    .use 46776 >>|cRXP_WARN_它们处于潜行状态！使用|r |T133023:0|t[金科斯的侦测镜] |cRXP_WARN_来发现它们|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>击杀 |cRXP_ENEMY_乌桑戈斯|r，并拾取他的 |T132941:0|t[|cRXP_LOOT_乌桑戈斯的爪子|r]，使用它来接取任务
    >>|cRXP_WARN_他会在附近稍微巡逻|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>接受任务 乌萨苟斯的爪子
    .unitscan 乌萨苟斯
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头金科斯|r 对话
    .turnin 13980 >>交任务 他们在那儿！
    .turnin 13983 >>交任务 自掘坟墓
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞娜尼·雷心|r 对话
    .turnin 6621 >>交任务 污林之王
    .target 塞娜尼·雷心
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔坎上尉|r 对话
    .turnin 25 >>交任务 兔死狗烹
    .turnin 23 >>交任务 乌萨苟斯的爪子
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >>前往林中树居
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨格|r 对话
    .turnin 13958 >>交任务 情况危急！
    .accept 13962 >>接受任务 僵局
    .target Thagg
step
    #completewith next
    >>击杀 |cRXP_ENEMY_夏杜布拉|r，并拾取她的 |T132225:0|t[|cRXP_LOOT_夏杜布拉的头颅|r]，使用它来接取任务
    >>|cRXP_ENEMY_萨杜布拉|r 在附近小范围巡逻
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务猎影的头
	.unitscan 猎影
    .use 16304
step
    .goto 63,62.04,51.41
    >>击杀建筑顶楼的|cRXP_ENEMY_守护者奥达努斯|r
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>击杀 |cRXP_ENEMY_夏杜布拉|r，并拾取她的 |T132225:0|t[|cRXP_LOOT_夏杜布拉的头颅|r]，使用它来接取任务
    >>|cRXP_ENEMY_猎影|r 会在建筑周围巡逻
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>接受任务猎影的头
	.unitscan 猎影
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨格|r 对话
    .turnin 13962 >>交任务 僵局
    .target Thagg
step
    #completewith FlytoSP
    .hs >>使用炉石返回地狱咆哮岗哨
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>前往地狱咆哮岗哨
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高戈斯上尉|r 对话
    >>|cRXP_WARN_他会在周围巡逻|r
    .turnin 24 >>交任务猎影的头
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉卡|r 对话
    .fly Splintertree Post >>飞往碎木岗哨
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅玛|r 对话
    .turnin 6482 >>交任务鲁尔的自由
    .target 雅玛·雪蹄
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马斯托克·维尔西斯|r 对话
    .accept 1918 >>接受任务 被污染的水元素
    .turnin 1918 >>交任务被污染的水元素
    .target 马斯托克·维尔西斯
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>放弃任务 沙普塔隆的爪子，因为之后已经交不了了
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 乌尔格拉
    .zoneskip Orgrimmar
step << Rogue Cata/Warlock Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >>前往暗影裂口
step << Shaman Cata/Druid Cata/Paladin Cata/Warrior Cata/Hunter Cata/Priest Cata
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >>前往智慧谷
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈达尔|r 对话
    .trainer >>训练你的职业技能
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷库尔|r 对话。
    .vendor >>|cRXP_BUY_储备|r |T132273:0|t[毒药]
    .target 雷库尔
step << Shaman Cata
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎伊|r 对话
    .trainer >>训练你的职业技能
    .target Sahi Cloudsinger
step << Druid Cata
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎乌拉|r 对话
    .trainer >>训练你的职业技能
    .target Shalla Whiteleaf
step << Mage Cata
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尤塞尔奈|r 对话
    .trainer >>训练你的职业技能
    .target Uthel'nay
step << Mage Cata
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_观星者吉拉吉|r 对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .train 3563 >>学习 |T135766:0|t[传送：幽暗城]
    .train 3566 >>学习 |T135765:0|t[传送：雷霆崖]
    .train 32272 >>学习 |T135761:0|t[传送：银月城]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage Cata
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍苏斯|r 对话
    .collect 17031,20 >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 1 组|r |T134419:0|t[传送符文]
    .target 霍苏斯
step << Priest Cata
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知利瓦萨|r 对话
    .trainer >>训练你的职业技能
    .target Seer Liwatha
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔科特|r 对话
    .trainer >>训练你的职业技能
    .target 米尔科特
step << Paladin Cata
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者阿托莫|r 对话
    .trainer >>训练你的职业技能
    .target Sunwalker Atohmo
step << Hunter Cata
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺希·平原行者|r 对话
    .trainer >>训练你的职业技能
    .target Nohi Plainswalker
step << Warrior Cata
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳胡·怒蹄|r 对话
    .trainer >>训练你的职业技能
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在格罗姆什堡垒内与 |cRXP_FRIENDLY_伊崔格|r 对话
    .turnin 13841 >>交任务 难辞其咎
    .accept 13842 >>接受任务 将功赎罪
    .target 伊崔格
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .home >>将你的炉石设置到奥格瑞玛
    .target 旅店老板格雷什卡
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Splintertree Post >>飞往碎木岗哨
    .target 多拉斯
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在洞穴内与 |cRXP_FRIENDLY_杜莱克|r 对话
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>跟随 |cRXP_ENEMY_杜莱克|r 直到他变成敌对，然后击杀他
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >>使用炉石返回奥格瑞玛
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>飞往奥格瑞玛
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌尔格拉|r 对话
    .target 乌尔格拉
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊崔格|r 对话
    .turnin 13842 >>交任务 将功赎罪
    .target 伊崔格
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博特|r 对话
    .turnin 26416 >>交任务 那么，来丛林吧
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博特|r 对话
    .accept 26417 >>接受任务 北荆棘谷：覆灭的帝国
    .target Bort
    .isQuestTurnedIn 26416
    .isNotOnQuest 28688
    ]])
