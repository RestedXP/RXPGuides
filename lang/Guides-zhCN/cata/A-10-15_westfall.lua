if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 10-15级 西部荒野
#next 15-20级 赤脊山
#defaultfor None
<<Alliance

step
    #completewith WestfallEntry
    .zone 52 >>前往西部荒野
step
    .isOnQuest 26378
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r对话
    .turnin 26378 >>交任务 英雄的召唤：西部荒野！
    .accept 26209 >>接受任务 他们把谋杀案撂我这儿了
	.target Lieutenant Horatio Laine
step
    #label WestfallEntry
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r 对话
    .accept 26209 >>接受任务 他们把谋杀案撂我这儿了
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>与 |cRXP_FRIENDLY_无家可归的暴风城平民|r、|cRXP_FRIENDLY_西部荒野流浪者|r 和 |cRXP_FRIENDLY_暂住者|r 对话
    >>|cRXP_WARN_你必须付钱才能获得线索！|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r 对话
    .turnin 26209 >>交任务 他们把谋杀案撂我这儿了
    .accept 26213 >>接受任务 重要线索：河爪氏族
    .accept 26214 >>接受任务 重要线索：鱼人
	.target Lieutenant Horatio Laine
step
    #completewith next
    >>击杀 |cRXP_ENEMY_河爪斥候|r 和 |cRXP_ENEMY_河爪豺狼人|r。拾取 |cRXP_LOOT_河爪豺狼人线索|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    #loop
    .goto 52,55.51,9.11,0
    .goto 52,56.83,10.35,40,0
    .goto 52,55.82,7.95,40,0
    .goto 52,55.51,9.11,40,0
    .goto 52,53.91,9.68,40,0
    .goto 52,52.37,8.88,40,0
    .goto 52,53.42,11.57,40,0
    .goto 52,56.03,10.85,40,0
    >>击杀 |cRXP_ENEMY_小鱼人智者|r、|cRXP_ENEMY_鱼人海岸行者|r和|cRXP_ENEMY_鱼人袭击者|r。从它们身上拾取|cRXP_LOOT_鱼人线索|r
    .complete 26214,1 --1/1 Murloc Clue
	.mob Murloc Minor Oracle
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    .goto 52,56.46,13.26,0
    .waypoint 52,58.16,10.71,40,0
    .waypoint 52,57.17,15.12,40,0
    .waypoint 52,51.38,15.89,40,0
    .waypoint 52,50.68,14.77,40,0
    .waypoint 52,56.46,13.26,40,0
    >>击杀 |cRXP_ENEMY_河爪斥候|r 和 |cRXP_ENEMY_河爪豺狼人|r。拾取 |cRXP_LOOT_河爪豺狼人线索|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r 对话
    .target Lieutenant Horatio Laine
    .turnin 26213 >>交任务 重要线索：河爪氏族
    .turnin 26214 >>交任务 重要线索：鱼人
    .accept 26215 >>接受任务 拜访“老好人”洛伊
step
    .goto 1436/0,1278.700,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“老好人”洛伊|r 对话
    .target Two-Shoed Lou
    .turnin 26215 >>交任务 拜访“老好人”洛伊
    .accept 26228 >>接受任务 体验生活
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金布·“蜡烛”·麦克哈尼根|r 对话
    .target Jimb "Candles" McHannigan
    .accept 26229 >>接受任务 “我来抢蜡烛！”
step
    .goto 1436/0,1282.800,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞雷斯蒂大妈|r 对话
    .target Mama Celeste
    .accept 26230 >>接受任务 盛宴还是饥荒
step
    #completewith next
    >>击杀 |cRXP_ENEMY_山狗|r。拾取他们的 |cRXP_LOOT_狗尾|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #loop
    .goto 52,51.5,19.8,40,0
    .goto 52,52.3,21.8,40,0
    .goto 52,50.5,22.8,40,0
    .goto 52,50.2,19.8,40,0
    >>拾取地上的 |cRXP_LOOT_新鲜的泥土|r
    .complete 26230,2 --|Fresh Dirt: 5/5
step
    #loop
    .goto 52,51.6,17.8,50,0
    .goto 52,53.8,20.8,50,0
    .goto 52,50.0,22.4,50,0
    .goto 52,47.0,20.4,50,0
    .goto 52,48.6,16.2,50,0
    >>击杀 |cRXP_ENEMY_山狗|r。拾取他们的 |cRXP_LOOT_狗尾|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #completewith BackOfMine
    .goto 52,53.24,92.20 >>进入詹戈洛德矿洞
step
    #completewith BackOfMine
    >>击杀 |cRXP_ENEMY_狗头人掘地工|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    #completewith BackOfMine
    .goto 52,46.405,19.289
    .cast 79262 >>|cRXP_WARN_在詹戈洛德矿洞后方|r|cRXP_WARN_使用|r |T132762:0|t[“老好人”洛伊的老房子]
    .use 57761
step
    #label BackOfMine
    .goto 52,46.405,19.289
    .complete 26228,1
    .use 57761 >>|cRXP_WARN_等剧情结束|r
step
    #loop
    .goto 52,53.24,92.50,0
    .goto 52,46.40,19.28,50,0
    >>击杀 |cRXP_ENEMY_狗头人掘地工|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金布·“蜡烛”·麦克哈尼根|r 对话
    .target Jimb "Candles" McHannigan
    .turnin 26229 >>交任务 “我来抢蜡烛！”
step
    .goto 1436/0,1278.800,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“老好人”洛伊|r 对话
    .target Two-Shoed Lou
    .turnin 26228 >>交任务 体验生活
    .accept 26232 >>接受任务 洛伊的临别赠言
step
    .goto 1436/0,1282.700,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞雷斯蒂大妈|r 对话
    .target Mama Celeste
    .turnin 26230 >>交任务 盛宴还是饥荒
step
    .goto 1436/0,1334.000,-9861.601
    >>|cRXP_WARN_到农舍后面找 |cRXP_ENEMY_暴徒|r。等剧情演完再把他们杀了|r
    .complete 26232,1 --|Eavesdrop on Thugs.: 1/1
    .mob Thug
step
    .goto 1436/0,1276.100,-9855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r 对话
    .target Lieutenant Horatio Laine
    .turnin 26232 >>交任务 洛伊的临别赠言
    .accept 26236 >>接受任务 萨丁的提醒
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .target Farmer Saldean
    .turnin 26236 >>交任务 萨丁的提醒
    .accept 26237 >>接受任务 日子不好过
step
    .goto 1436/0,1042.100,-10112.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .accept 26241 >>接受任务 杂味炖肉
step
    #completewith next
    >>拾取地上的 |cRXP_LOOT_秋葵|r
    .complete 26241,1 --|Okra: 6/6
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>击杀 |cRXP_ENEMY_看守傀儡|r。拾取 |T133862:0|t[|cRXP_LOOT_看守傀儡之心|r]
    .use 57935 >>|cRXP_WARN_使用|r |T133862:0|t[|cRXP_LOOT_看守傀儡之心|r] |cRXP_WARN_来开始任务|r
    .collect 57935,1,26252,1 -- Harvest Watcher Heart (1)
    .accept 26252 >>接受任务 傀儡之心
    .complete 26237,1 --|Harvest Watcher slain: 10/10
    .mob Harvest Watcher
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>拾取地上的 |cRXP_LOOT_秋葵|r
    .complete 26241,1 --|Okra: 6/6
step
    .goto 1436/0,1055.200,-10128.700
    .accept 26252 >>接受任务 傀儡之心
    .turnin 26237 >>交任务 日子不好过
    .turnin 26252 >>交任务 傀儡之心
    .accept 26257 >>接受任务 它活了！
step
    #completewith next
    >>击杀 |cRXP_ENEMY_血牙野猪|r，拾取 |cRXP_LOOT_血牙野猪肋排|r
    >>击杀 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的|cRXP_LOOT_碎尸鸟肉条|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1283.100,-10164.700
    .use 57954 >>|cRXP_WARN_对|r |cRXP_WARN_过载的麦田傀儡|cRXP_ENEMY_ |r使用 |T133862:0|t[看守傀儡之心] 来控制它|r
    .complete 26257,1 --|Overloaded Harvest Golem enabled: 1/1
    .target Overloaded Harvest Golem
step
    .goto 1436/0,1460.500,-10221.601
    >>击杀 |cRXP_ENEMY_已充能的收割机|r
    .complete 26257,2 --|Energized Harvest Reaper slain: 25/25
    .mob Energized Harvest Reaper
step
    .isOnQuest 26257
    .exitvehicle >>|cRXP_WARN_退出|r |cRXP_ENEMY_过载的麦田傀儡|r
step
    #loop
    .goto 52,41.4,37.4,60,0
    .goto 52,44.6,40.8,60,0
    .goto 52,47.0,46.0,60,0
    .goto 52,51.2,31.2,60,0
    >>击杀 |cRXP_ENEMY_血牙野猪|r，拾取 |cRXP_LOOT_血牙野猪肋排|r
    >>击杀 |cRXP_ENEMY_小碎尸鸟|r。拾取它们的|cRXP_LOOT_碎尸鸟肉条|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1042.100,-10112.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .turnin 26241 >>交任务 杂味炖肉
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .target Farmer Saldean
    .turnin 26257 >>交任务 它活了！
    .accept 26270 >>接受任务 我们感激不尽
step
    .goto 1436/0,1040.900,-10110.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .turnin 26270 >>交任务 我们感激不尽
    .accept 26266 >>接受任务 人们的希望
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希望·萨丁|r 对话
    .target Hope Saldean
    .turnin 26266 >>交任务 人们的希望
    .accept 26271 >>接受任务 养活饥饿与无助者
step
    .goto 1436/0,1042.800,-10504.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .accept 26371 >>接受任务 葛瑞森船长的传说
step
    .goto 1436/0,1040.600,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .target Captain Danuvin
    .accept 26287 >>接受任务 月溪旅
step
    .goto 1436/0,1045.200,-10508.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_统帅 治安官格里安·斯托曼|r 对话
    .target Marshal Gryan Stoutmantle
    .accept 26286 >>接受任务 保卫西部荒野
step
    #loop
    .goto 52,54.6,44.6,50,0
    .goto 52,55.0,50.6,50,0
    .goto 52,52.2,50.8,50,0
    >>击杀 |cRXP_ENEMY_河爪蛮兵|r、|cRXP_ENEMY_河爪强盗|r 和 |cRXP_ENEMY_河爪草药师|r。从它们身上拾取 |cRXP_LOOT_豺狼人攻击命令|r
    .complete 26287,1 --|Attacking Riverpaw Gnoll slain: 12/12
    .complete 26286,1 --|Gnoll Attack Orders: 1/1
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Herbalist
step
    #loop
    .goto 52,56.91,57.72,20,0
    .goto 52,53.94,57.06,20,0
    .goto 52,52.20,55.75,20,0
    .use 57991 >>|cRXP_WARN_到哨兵岭附近找|r |cRXP_WARN_无家可归的暴风城平民|cRXP_FRIENDLY_|r，给他们用|r |T237329:0|t[杂味炖肉]
    .complete 26271,1 --|Westfall Homeless fed: 20/20
    .target Homeless Stormwind Citizen
    .target West Plains Drifter
    .target Small-time Hustler
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .target Captain Danuvin
    .turnin 26287 >>交任务 月溪旅
    .accept 26288 >>接受任务 詹格·斑皮
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希望·萨丁|r 对话
    .target Hope Saldean
    .turnin 26271 >>交任务 养活饥饿与无助者
step
    .goto 1436/0,1045.000,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_统帅 治安官格里安·斯托曼|r 对话
    .target Marshal Gryan Stoutmantle
    .turnin 26286 >>交任务 保卫西部荒野
    .accept 26289 >>接受任务 寻找密探吉尔妮
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    .target 旅店老板希瑟尔
    .goto 1436/0,1166.400,-10653.200
    .home >>将炉石设置在哨兵岭
    .subzoneskip 108,1
step
    >>击杀 |cRXP_ENEMY_詹格·斑皮|r
    >>击杀 |cRXP_ENEMY_河爪秘法师|r
    >>击杀 |cRXP_ENEMY_河爪监工|r
    .complete 26288,3 --|Jango Spothide slain: 1/1
    .mob +Jango Spothide
    .goto 52,62.255,76.449
    .complete 26288,1 --|Riverpaw Mystic slain: 5/5
    .mob +Riverpaw Mystic
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
    .complete 26288,2 --|Riverpaw Taskmaster slain: 5/5
    .mob +Riverpaw Taskmaster
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    .target Agent Kearnen
    .turnin 26289 >>交任务 寻找密探吉尔妮
    .accept 26290 >>接受任务 高塔的秘密
step
    #completewith next
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .subzone 5289 >>前往摩特维克之塔
step
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .cast 79528 >>|cRXP_WARN_在摩特维克之塔内|r|cRXP_WARN_使用|r |T134724:0|t[遮蔽药水]
    .use 58112 >>|cRXP_WARN_跑过塔楼前面的 |cRXP_ENEMY_佣兵|r。一旦你与他们进入战斗，|cRXP_FRIENDLY_密探吉尔妮|r 就会攻击他们|r
step
    .goto 52,70.543,74.060
    >>|cRXP_WARN_前往塔顶，等剧情演出结束|r
    .complete 26290,1
step
    #completewith next
    +|cRXP_WARN_退出摩特维克之塔|r
    .subzoneskip 5289,1
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    .target Agent Kearnen
    .turnin 26290 >>交任务 高塔的秘密
    .accept 26291 >>接受任务 月溪镇的大麻烦
step
    #completewith next
    .hs >>炉石到哨兵岭
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.300,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官格里安·斯托曼|r 对话
    .target Marshal Gryan Stoutmantle
    .turnin 26291 >>交任务 月溪镇的大麻烦
    .accept 26292 >>接受任务 到月溪镇去！
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .target Captain Danuvin
    .turnin 26288 >>交任务 詹格·斑皮
step
    .goto 1436/0,1543.000,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔佩上尉|r 对话
    .target Captain Alpert
    .turnin 26292 >>交任务 到月溪镇去
    .accept 26295 >>接受任务 宣传
step
    #completewith MoonbrookThugs
    >>拾取墙上的 |cRXP_LOOT_神秘的宣传书|r
    >>拾取木桶上的 |cRXP_LOOT_情报手册|r
    >>拾取地上的 |cRXP_LOOT_月溪镇时报|r
    >>在房子楼上拾取 |cRXP_LOOT_秘密日记|r
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>击杀 |cRXP_ENEMY_月溪镇暴徒|r。拾取 |T237277:0|t[|cRXP_LOOT_红头巾|r]
    .use 58117 >>|cRXP_WARN_使用|r |T237277:0|t[|cRXP_LOOT_红头巾|r] |cRXP_WARN_来开始任务|r
    .collect 58117,1,26296,1 -- Red Bandana (1)
    .disablecheckbox
    .accept 26296 >>接受任务 搜证
    .mob Moonbrook Thug
step
    #label MoonbrookThugs
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>击杀 |cRXP_ENEMY_月溪镇暴徒|r。拾取 |cRXP_LOOT_红头巾|r
    .complete 26296,1 -- Red Bandana (6)
    .mob Moonbrook Thug
step
    >>拾取墙上的 |cRXP_LOOT_神秘的宣传书|r
    >>拾取木桶上的 |cRXP_LOOT_情报手册|r
    >>拾取地上的 |cRXP_LOOT_月溪镇时报|r
    >>在房子楼上拾取 |cRXP_LOOT_秘密日记|r
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔佩上尉|r 对话
    .target Captain Alpert
    .turnin 26296 >>交任务 搜证
    .turnin 26295 >>交任务 宣传
    .accept 26297 >>接受任务 崭新的一天
step
    .goto 1436/0,1484.400,-11020.000
    >>|cRXP_WARN_前往月溪镇中心，等待剧情演出结束|r
    .complete 26297,1 --|Information from Moonbrook Rally gathered: 1/1
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔佩上尉|r 对话
    .target Captain Alpert
    .turnin 26297 >>交任务 崭新的一天
    .accept 26319 >>接受任务 揭开秘密
step
    .goto 1436/0,1512.500,-10917.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_智者索拉留斯|r 对话
    .target Thoralius the Wise
    .turnin 26319 >>交任务 揭开秘密
    .accept 26320 >>接受任务 过去的影像
step
    #completewith next
    .goto 1415,40.85,81.98,15,0
    .goto 1415,40.92,81.99,15,0
    .goto 1415,40.90,82.18,10,0
    .goto 1415,40.77,82.58,15,0
    .goto 1415,40.48,82.44,5 >>进入死亡矿井，进副本
step
    .isOnQuest 26320
    .cast 79586 >>|cRXP_WARN_在死亡矿井副本内|r|cRXP_WARN_使用|r [焚香炉]
    .timer 155,过去的影像 剧情RP
    .use 58147
step
    .use 58147 >>|cRXP_WARN_等剧情结束|r
    .complete 26320,1 -- Vision of the Past uncovered 1/1
step
    #completewith next
    .hs >>炉石到哨兵岭
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.100,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官格里安·斯托曼特尔|r 对话
    .target Marshal Gryan Stoutmantle
    .turnin 26320 >>交任务 过去的影像
    --.accept 26322 >>Accept Rise of the Brotherhood
    --.timer 105,Rise of the Brotherhood RP
step << skip -- quest isn't needed for loremaster
    >>|cRXP_WARN_等剧情结束|r
    .complete 26322,1 -- Rise of the Brotherhood witnessed 1/1
step
    .goto 1436/0,2110.100,-10514.500
    >>击杀海岸沿线的 |cRXP_ENEMY_鱼人|r。拾取 |T134269:0|t[|cRXP_LOOT_杉德尔船长的藏宝图|r]
    .use 1357 >>|cRXP_WARN_使用|r |T134269:0|t[|cRXP_LOOT_杉德尔船长的藏宝图|r] |cRXP_WARN_来开始任务|r
    .collect 1357,1,26353,1 -- Captain Sanders' Treasure Map (1)
    .accept 26353 >>接受任务 杉德尔船长的宝藏
    .mob Murloc Hunter
    .mob Murloc Warrior
step
    .goto 1436/0,2110.100,-10514.500
    >>点击地上的 |cRXP_PICK_船长的手提箱|r
    .turnin 26353 >>交任务 杉德尔船长的宝藏
    .accept 26354 >>接受任务 杉德尔船长的宝藏
step
    .goto 1436/0,1598.700,-10514.800
    >>点击地上的 |cRXP_PICK_破桶|r
    .turnin 26354 >>交任务 杉德尔船长的宝藏
    .accept 26355 >>接受任务 杉德尔船长的宝藏
step
    .goto 1436/0,1594.700,-9797.400
    >>点击地上的 |cRXP_PICK_旧罐子|r
    .turnin 26355 >>交任务 杉德尔船长的宝藏
    .accept 26356 >>接受任务 杉德尔船长的宝藏
step
    #completewith next
    .goto 52,25.97,16.90,20 >>游向小岛
step
    .goto 1436/0,2107.700,-9794.300
    >>点击地上的 |cRXP_PICK_上锁的箱子|r
    .turnin 26356 >>交任务 杉德尔船长的宝藏
step
    #completewith next
    .subzone 115 >>前往西部荒野灯塔
step
    .goto 1436/0,1949.100,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .target Captain Grayson
    .turnin 26371 >>交任务 葛瑞森船长的传说
    .accept 26348 >>接受任务 海岸尚不安全
    --.accept 26347 >>Accept Keeper of the Flame
    .accept 26349 >>接受任务 海岸上的威胁
step
    #completewith next
    >>击杀 |cRXP_ENEMY_潮行鱼人|r 和 |cRXP_ENEMY_鱼人智者|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r |cRXP_WARN_会沿海岸巡逻|r
    .complete 26349,1 --|Scale of Old Murk-Eye: 1/1
    .unitscan Old Murk-Eye
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>击杀 |cRXP_ENEMY_潮行鱼人|r 和 |cRXP_ENEMY_鱼人智者|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    .goto 1436/0,1949.000,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .target Captain Grayson
    .turnin 26348 >>交任务 海岸尚不安全
    .turnin 26349 >>交任务 海岸上的威胁
]])
