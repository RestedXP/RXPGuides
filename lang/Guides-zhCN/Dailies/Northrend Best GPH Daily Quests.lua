if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group RestedXP 诺森德日常任务
#name 最佳日常任务每小时金币收益路线

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+要解锁霍迪尔之子的日常任务，你必须先完成他们在风暴峭壁的任务线。请使用霍迪尔之子解锁日常任务指南来解锁这些日常任务
	.isQuestAvailable 13047
step
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽和安格里姆对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>接受任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >>接受任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔 和冰霜座狼母兽对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>接受任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>与弗约恩之砧、霍迪尔之角和霍迪尔之盔对话
    .daily 12981 >>接受任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>接受任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>接受任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>击杀脆弱的复仇者，并从它们身上拾取冰之精华
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >>在弗约恩之砧附近的暗硫残渣旁使用冰之精华，拾取战利品冻铁碎片
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >>击杀该区域的尼弗莱姆先祖和不安分的霜巨人。对它们的尸体使用背包中的霍迪尔的号角，以解放它们
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>在你的背包中对坠落座狼的尸体使用虚空座狼之牙。跟随虚空冰霜座狼直到其追踪到风铸入侵者，然后击杀它。
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >>对游荡的巨人杀手使用阿恩格里姆之牙，将其伤害至30%或更低生命值，但不要击杀它
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>在你的背包中对坠落座狼的尸体使用虚空座狼之牙。跟随虚空冰霜座狼直到其追踪到风铸入侵者，然后击杀它。
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>击杀冬眠洞穴中的粘性油泥，并拾取它们的油
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽和安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔和贪婪的安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔 和冰霜座狼母兽对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔、冰霜座狼母兽和安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔和贪婪的安格里姆对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>交任务 喂饱安格里姆
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角、霍迪尔之盔 和冰霜座狼母兽对话
    .turnin 12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>交任务 猎杀间谍
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>回到丹尼芬雷
	>>与弗约恩之砧、霍迪尔之角和霍迪尔之盔对话
    .turnin -12981 >>交任务 热与冷
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>交任务 霍迪尔的呼唤
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >>交任务 粘滞清洁
	.goto TheStormPeaks,64.24,59.23
step << Mage
	#completewith next
	.zone Dalaran >>传送至达拉然
	>>飞往冰冠冰川
step << !Mage
	#completewith next
    .hs >>如果炉石绑在达拉然或冰冠冰川附近，就直接炉石回去。
	>>飞往冰冠冰川

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+要解锁所有冰冠冰川炮舰日常任务，你必须先完成前置任务链。请使用冰冠冰川炮舰解锁日常任务指南来解锁所有日常任务
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+要解锁所有冰冠冰川炮舰日常任务，你必须先完成前置任务链。请使用冰冠冰川炮舰前置任务指南来解锁所有日常任务
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>在冰冠冰川，飞往联盟军舰破天号
	>>与骑士队长德洛斯彻， 虔诚的阿布萨兰，高级指挥官加斯汀·巴雷特， 首席技师波尔维克和萨萨里安对话
	>>他们分别位于船的后左方、顶层甲板、中舱和底层甲板
    .daily 13336 >>接受任务 伊米亚之血
    .daily 13300 >>接受任务 萨隆邪铁的奴隶
    .daily 13322 >>接受任务 重新考验
    .daily 13323 >>接受任务 从天而“降”
	.daily 13344 >>接受任务 活动窃听器
    .daily 13333 >>接受任务 抢夺急件
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>在冰冠冰川，飞往部落的炮舰奥格瑞姆之锤
	>>与战争使者达沃斯·里赫, 凯尔坦修士, 掠天者考尔姆·黑痕, 首席技师考伯克拉和库尔迪拉·织亡者对话
	>>他们分别位于前主舱、巡逻顶层甲板和底层甲板
    .daily 13330 >>接受任务 伊米亚之血
    .daily 13302 >>接受任务 萨隆邪铁的奴隶
    .daily 13357 >>接受任务 重新考验
    .daily 13353 >>接受任务 从天而“降”
	.daily 13365 >>接受任务 活动窃听器
    .daily 13331 >>接受任务 盲目的联盟
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>飞往地面指挥官库普（他在地面上 - 不在船上）
    .daily 13309 >>接受任务 空中突袭
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >>右键点击飞行器顶部的炮塔以开始任务
	.isOnQuest 13309
step << Alliance
	>>飞行时射击你看到的所有矛炮使其瘫痪。在此过程中渗透者会掉下来
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>离开飞行器。你会收到一个降落伞。返回库普
    .turnin 13309 >>交任务 空中突袭
	.isQuestComplete 13309
step << Horde
	>>飞往地面指挥官科特亚（他在地面上 - 不在船上）
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>接受任务 空中突袭
step << Horde
	#completewith next
	.vehicle >>右键点击飞行器顶部的炮塔以开始任务
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>飞行时射击你看到的所有矛炮使其瘫痪。在此过程中渗透者会掉下来
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>离开飞行器。你会收到一个降落伞。返回科特亚
    .turnin 13310 >>交任务 空中突袭
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>与小队领袖对话。如果其他人已经开始了此任务，他可能不在这里，复活时间大约为6分钟，他会在库普右侧约10码处复活。如果你不想等待或稍后再检查，可以跳过此步骤
    .daily 13284 >>接受任务 地面突袭
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>击杀遍布伊米海姆的维库人
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>护送部队，如果需要，让部分士兵坦克怪物
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>进入萨隆石矿，与奴隶交谈以解救他们（有时他们可能会攻击你）。
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>击杀遍布伊米海姆的维库人
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>注释：该任务将你标记为PVP，但非常简单。
    .daily 13280 >>接受任务 占山为王
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>右键点击那个看起来像侏儒的机器人
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>使用"跳跃喷气"（3）快速爬上悬崖（无冷却），到达山顶后，使用"放置联盟战斗旗帜"（1）放置旗帜，然后离开载具
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>交任务 占山为王
	.isQuestComplete 13280
step << Alliance
	>>返回地面指挥官库普处
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>交任务 地面突袭
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>与小队领袖对话。如果其他人已经开始了此任务，他可能不在这里，复活时间大约为6分钟，如果你不想等待或稍后再检查，可以跳过此步骤
    .daily 13301 >>接受任务 地面突袭
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>击杀遍布伊米海姆的维库人
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>护送部队。如果需要，让部分士兵坦克小怪
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>进入萨隆石矿，与奴隶交谈以解救他们（有时他们可能会攻击你）。
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>击杀遍布伊米海姆的维库人
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>注释：该任务将你标记为PVP，但非常简单。
    .daily 13283 >>接受任务 占山为王
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>右键点击那个看起来像侏儒的机器人
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>使用"跳跃喷气"（3）快速爬上悬崖（无冷却），到达山顶后，使用"放置部落战斗旗帜"（1）放置旗帜，然后离开载具
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
    .turnin 13283 >>交任务 占山为王
	.isQuestComplete 13283
step << Horde
	>>返回地面指挥官科特亚处
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>交任务 地面突袭
	.isQuestComplete 13301
step
	>>前往平台，击杀该区域的苦痛新兵。拾取他们的幻觉宝珠
	.use 44246 >>在你未处于战斗状态时，对该区域的黑暗征服者使用幻象宝珠。
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>使用背包中的镖枪攻击奥格瑞姆之锤的侦察兵（可以在飞行坐骑上使用），拾取他们的尸体获得急件
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>在空中对破天者侦察机使用背包中的SGM-3
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>使用你背包里的稀释过的诅咒教徒滋补剂获得"黑暗洞察"buff。这允许你从该区域击杀的所有人形怪物身上拾取被污染的精华
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >>右键点击你背包里的被污染的精华，将其合成为沸腾的魔质。然后将其扔进大锅中
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >>击杀该区域的5个奴役的仆从（虚空行者）。在他们的尸体上使用虹吸之杖获取黑暗物质
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>点击集合石
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>返回破天者号。与骑士队长德洛斯彻， 虔诚的阿布萨兰，高级指挥官加斯汀·巴雷特， 首席技师波尔维克和萨萨里安对话
    .turnin -13336 >>交任务 伊米亚之血
    .turnin -13300 >>交任务 萨隆邪铁的奴隶
    .turnin -13322 >>交任务 重新考验
    .turnin -13323 >>交任务 从天而“降”
	.turnin -13344 >>交任务 活动窃听器
    .turnin -13333 >>交任务 抢夺急件
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>返回奥格瑞姆之锤。与战争使者达沃斯·里赫, 凯尔坦修士, 掠天者考尔姆·黑痕, 首席技师考伯克拉和库尔迪拉·织亡者对话
    .turnin -13330 >>交任务 伊米亚之血
    .turnin -13302 >>交任务 萨隆邪铁的奴隶
    .turnin -13357 >>交任务 重新考验
    .turnin -13353 >>交任务 从天而“降”
	.turnin -13365 >>交任务 活动窃听器
    .turnin -13331 >>交任务 盲目的联盟

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

step
	+要解锁黑锋骑士团的日常任务，你必须先完成他们在冰冠冰川的任务链。请使用黑锋骑士团解锁日常任务指南
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>从暗影拱顶接受3个日常任务
    >>与白银级对话
	.daily 12995 >>接受任务 彰显军威
	.goto Icecrown,42.84,24.92
	>>与跳跃者对话，他在帐篷周围走动
	.daily 13069 >>接受任务 把它们打下来！
	.goto IcecrownGlacier,43.5,25.0
	>>和劣尸维尔对话，他是一个憎恶，在入口和主建筑之间的路径上巡逻
    .daily 13071 >>接受任务 维尔喜欢火焰！
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>击杀该区域的维库人，对其尸体使用背包中的黑锋旗帜
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>在鱼叉内时，连续使用“速射鱼叉炮”（3）击落巨龙
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >>右键点击一个约尔达始祖龙来骑乘它
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>使用“速度爆发”(1)冷却好了就用，以加快移动速度。使用“攻击尤顿海姆建筑物”(3)将建筑物点燃
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>返回暗影拱顶。与白银级、跳跃者和劣尸维尔对话
	.turnin 12995 >>交任务 彰显军威
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>交任务 把它们打下来！
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>交任务 维尔喜欢火焰！
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>从死亡高地接受3个日常任务
	>>与希塔尔对话
	.daily 12813 >>接受任务 转化尸体
	.goto Icecrown,19.67,48.39
	>>与奥卢克斯对话。他在中间的篝火周围巡逻
    .daily 12838 >>接受任务 收集情报
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>与乌佐对话
    .daily 12815 >>接受任务 禁飞区
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>击杀该区域内的狮鹫骑手，用远程能力击落他们，或将多个聚集在空中后飞下来击杀他们
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>击杀该区域的攻势怪物。对它们的尸体使用背包中的达克门德的药剂
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>击杀冲锋小怪，然后拾取他们的钥匙。使用它们打开先锋军港口周围的宝箱以获取文件
	>>|cff00ecff注意：只打开闪闪发光的宝箱来获取文件。不闪闪发光的宝箱中不包含文件。|r
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>击杀该区域的攻势怪物。对它们的尸体使用背包中的达克门德的药剂
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>返回死亡高地。与乌佐、希塔尔和奥卢克斯对话
    .turnin 12815 >>交任务 禁飞区
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>交任务 转化尸体
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>交任务 收集情报
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
]])
