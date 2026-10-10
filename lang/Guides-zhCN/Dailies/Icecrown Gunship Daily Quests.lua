if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 冰冠冰川军舰日常任务路线

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+要解锁所有冰冠冰川炮舰日常任务，你必须先完成前置任务链。请使用冰冠冰川炮舰解锁日常任务指南来解锁所有日常任务
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+要解锁所有冰冠冰川炮舰日常任务，你必须先完成前置任务链。请使用冰冠冰川炮舰解锁日常任务指南来解锁所有日常任务
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>飞往联盟军舰破天号
	>>与骑士队长德洛斯彻， 虔诚的阿布萨兰，高级指挥官加斯汀·巴雷特， 首席技师波尔维克和萨萨里安对话
	>>注意：“决不留情！”是PvP任务，需要在冰冠冰川击杀15名部落玩家。如不想做可以放弃或直接跳过此日常
    .daily 13336 >>接受任务 伊米亚之血
    .daily 13300 >>接受任务 萨隆邪铁的奴隶
	.daily 13233 >>接受任务 决不留情！
    .daily 13292 >>接受任务 偷来的解决方案
    .daily 13289 >>接受任务 你的憎恶伙伴
	.daily 13297 >>接受任务 中和瘟疫
    .daily 13322 >>接受任务 重新考验
    .daily 13323 >>接受任务 从天而“降”
	.daily 13344 >>接受任务 活动窃听器
    .daily 13350 >>接受任务 片刻不得安宁
    .daily 13333 >>接受任务 抢夺急件
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>飞往部落军舰，奥格瑞姆之锤
	>>与战争使者达沃斯·里赫, 凯尔坦修士, 掠天者考尔姆·黑痕, 首席技师考伯克拉和库尔迪拉·织亡者对话
	>>注意：任务 "让他们付出代价！" 是一个PvP任务，需要在冰冠冰川击杀15个联盟玩家，你可以放弃此日常任务
    .daily 13330 >>接受任务 伊米亚之血
    .daily 13302 >>接受任务 萨隆邪铁的奴隶
	.daily 13234 >>接受任务 血的代价！
    .daily 13261 >>接受任务 爆炸油
    .daily 13276 >>接受任务 你的憎恶伙伴
	.daily 13281 >>接受任务 中和瘟疫
    .daily 13357 >>接受任务 重新考验
    .daily 13353 >>接受任务 从天而“降”
	.daily 13365 >>接受任务 活动窃听器
    .daily 13368 >>接受任务 片刻不得安宁
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
	>>在飞行时，射击建筑物上的所有矛炮
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>返回库普
    .turnin 13309 >>交任务 空中突袭
	.isQuestComplete 13309
step << Horde
	>>飞往地面指挥官科特亚（他在地面上 - 不在船上）
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>接受任务 空中突袭
step << Horde
	#completewith next
	.vehicle >>跑到船上的库卡隆压制炮塔那里，点击它。
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>飞行时对所有炮台射击来使其瘫痪。在此过程中渗透者会陆续出现。
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>交任务 空中突袭
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>与小队领袖对话。如果其他人启动了任务，他可能不在这里，他每约6分钟重生一次
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
	>>与小队领袖对话。如果其他人启动了任务，他可能不在这里，他每约6分钟重生一次
    .daily 13301 >>接受任务 地面突袭
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
	#completewith Mineslave
	>>击杀遍布伊米海姆的维库人
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>护送部队，如果需要，让部分士兵坦克怪物
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
	>>进入萨隆邪铁矿洞。与奴隶对话以救出他们（有时他们可能会攻击你）。
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
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>在破碎前线周围拾取散落在地上的被遗弃的装备碎片。集齐每种装备各一件后，使用背包中的走私溶液（无需等待剧情动画） << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>拾取散落在破碎前线四周地上的废弃的装备碎片。当你集齐每种装备碎片各一个时，使用你背包里的[考伯克拉的爆炸油]（你不需要等待剧情对话结束） << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>击杀该区域内的巨大憎恶，并拾取冷却的憎恶破胆
	.use 43968 >>使用憎恶复活套装，配合背包中的破胆来召唤你能控制的憎恶。让憎恶攻击小怪并吸引仇恨，以此聚集尽可能多的小怪，然后使用"憎恶爆炸"击杀憎恶附近的所有小怪（小怪必须处于战斗状态才能获得功劳）
	>>如果你用完了破胆，去击杀更多巨大憎恶，你一次只能携带1个破胆。
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>击杀该区域的脓疮恐怖并拾取肉巨人脊骨。此任务非常困难。如果需要，请组队或放弃/跳过此项每日任务
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >>使用你的背包中的肉巨人脊骨来制造脓性脊骨液
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >>在冒泡的绿色大锅上使用你的背包中的脓性脊骨液。击杀生成的怪物，并在提示"快速添加液体"时再次使用脊骨液。此任务非常困难。如果需要，请组队或放弃/跳过此项每日任务
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
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
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >>进入奥杜尔撒
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>这个任务非常困难。如果需要请组队，或放弃/跳过该日常任务
	>>在奥鲁塔内部打开箱子，拾取奥鲁麦斯的颅骨、心脏、权杖和长袍
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>这个任务非常困难。如果需要请组队，或放弃/跳过该日常任务
	.use 44476 >>点击背包中的任何物品以将其合并为奥鲁麦斯的残骸
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>这个任务非常困难。如果需要请组队，或放弃/跳过该日常任务
	.use 44480 >>在发光晶体前使用奥鲁麦斯的残骸来召唤他，击杀他
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
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
step << Alliance
	>>飞往空中的小平台，与吉普利·基罗赫斯对话
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>接受任务 静电冲击部队：轰炸
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>与卡伦·诺尔对话乘坐轰炸机。使用护盾充能 (1) 获得100护盾，然后切换到炸弹舱 (5) 并开始轰炸下方的天灾直到所有步兵和队长被击杀。切换到防空炮台 (4) 并开始使用防空火箭 (1) 射击空中的石像鬼。完成后按下离开载具按钮，你将被传送回平台
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>和吉普利·基罗赫斯对话
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>交任务 静电冲击部队：轰炸
	.isQuestComplete 13404
step << Horde
	>>飞到空中的小平台上，与特兹拉交谈
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>接受任务 驾驭波长：轰炸
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>与莉兹对话乘坐轰炸机。使用护盾充能 (1) 获得100护盾，然后切换到炸弹舱 (5) 并开始轰炸下方的天灾直到所有步兵和队长被击杀。切换到防空炮台 (4) 并开始使用防空火箭 (1) 射击空中的石像鬼。完成后按下离开载具按钮，你将被传送回平台
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>与塔兹拉对话
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>交任务 驾驭波长：轰炸
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>返回破天者号。与骑士队长德洛斯彻， 虔诚的阿布萨兰，高级指挥官加斯汀·巴雷特， 首席技师波尔维克和萨萨里安对话
    .turnin -13336 >>交任务 伊米亚之血
    .turnin -13300 >>交任务 萨隆邪铁的奴隶
	.turnin -13233 >>交任务 决不留情！
    .turnin -13292 >>交任务 偷来的解决方案
    .turnin -13289 >>交任务 你的憎恶伙伴
	.turnin -13297 >>交任务 中和瘟疫
    .turnin -13322 >>交任务 重新考验
    .turnin -13323 >>交任务 从天而“降”
	.turnin -13344 >>交任务 活动窃听器
    .turnin -13350 >>交任务 片刻不得安宁
    .turnin -13333 >>交任务 抢夺急件
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>返回奥格瑞姆之锤。与战争使者达沃斯·里赫, 凯尔坦修士, 掠天者考尔姆·黑痕, 首席技师考伯克拉和库尔迪拉·织亡者对话
    .turnin -13330 >>交任务 伊米亚之血
    .turnin -13302 >>交任务 萨隆邪铁的奴隶
	.turnin -13234 >>交任务 血的代价！
    .turnin -13261 >>交任务 爆炸油
    .turnin -13276 >>交任务 你的憎恶伙伴
	.turnin -13281 >>交任务 中和瘟疫
    .turnin -13357 >>交任务 重新考验
    .turnin -13353 >>交任务 从天而“降”
	.turnin -13365 >>交任务 活动窃听器
    .turnin -13368 >>交任务 片刻不得安宁
    .turnin -13331 >>交任务 盲目的联盟
step << Alliance
	+你今天已经完成了所有破天号每日任务 :) 如果愿意的话，记得尝试完成你放弃或跳过的任何组队任务！
step << Horde
	+你今天已经完成了所有奥格瑞姆之锤的每日任务 :) 如果愿意的话，记得尝试完成你放弃或跳过的任何组队任务！
]])
