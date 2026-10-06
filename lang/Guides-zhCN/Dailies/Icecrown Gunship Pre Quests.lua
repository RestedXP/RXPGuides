if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 冰冠冰川破天号解锁每日任务

step
	+注意：冰冠冰川中有多个日常任务需要完成5人组队任务作为前置条件。你必须完成这些组队任务才能解锁后续的日常任务。请按照指南的指示完成所有组队任务
	>>如果你无法完成它们，稍后可以再来尝试
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >>获得银色前线基地的飞行点
step
    .goto IcecrownGlacier,87.5,75.8
	>>飞往银色前线基地，与提里奥·弗丁对话
    .accept 13036 >>接受任务 无上的荣耀
step
    .goto IcecrownGlacier,87.1,75.8
	>>与在你下方的恩塔里对话
    .turnin 13036 >>交任务 无上的荣耀
    .accept 13008 >>接受任务 天灾的战术
step
    .goto IcecrownGlacier,86.8,76.6
	>>与古斯塔夫对话
    .accept 13040 >>接受任务 致命的剧毒
step
    .goto IcecrownGlacier,86.1,75.8
	>>与达弗斯对话
    .accept 13039 >>接受任务 保卫前线基地
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>杀死周围的”被网住的北伐军士兵茧“来释放他们。他们也会给你加Buff并治疗你 << !Paladin
	>>击杀周围的“被网住的北伐军士兵茧”来释放他们。请务必给自己加除王者祝福外的Buff，因为NPC也会给你加Buff并治疗你 << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>击杀该区域内的蛛魔和蜘蛛，并拾取它们的毒针囊
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>回到达弗斯处
    .turnin 13039 >>交任务 保卫前线基地
step
    .goto IcecrownGlacier,86.8,76.6
	>>回到古斯塔夫处
    .turnin 13040 >>交任务 致命的剧毒
step
    .goto IcecrownGlacier,87.1,75.8
	>>回到恩塔里处
    .turnin 13008 >>交任务 天灾的战术
    .accept 13044 >>接受任务 如果还有幸存者……
step
    .goto IcecrownGlacier,87.0,79.0
	>>与本诺比奥斯交谈
    .turnin 13044 >>交任务 如果还有幸存者……
    .accept 13045 >>接受任务 空中救兵
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >>右键点击银色天爪龙以进行骑乘
step
	>>飞往天灾城。使用"抓取被俘虏的北伐军士兵"(1)来救援十字军（一次只能抓取一个），然后飞回到银色前线基地的古斯塔夫处，使用"放下被俘虏的北伐军士兵"(2)来释放他们。使用"翱翔"(3)卡CD以获得更快的速度。
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>飞回提里奥·弗丁处
    .turnin 13045 >>交任务 空中救兵
    .accept 13070 >>接受任务 冷锋逼近
step
    .goto IcecrownGlacier,85.6,76.0
	>>与在小房子里的费泽克对话
    .turnin 13070 >>交任务 冷锋逼近
    .accept 13086 >>接受任务 最后一道防线
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>飞向并进入位于城墙顶部的其中一座炮台
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>使用"银色火炮"(1)在小范围AoE内击杀小怪并恢复法力值。使用"清算炸弹"(2)耗费法力在大范围AoE内击杀小怪。
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>退出炮塔，回到费泽克处
    .turnin 13086 >>交任务 最后一道防线
step
    .goto IcecrownGlacier,86.0,75.8
	>>和你身后的提里奥·弗丁对话
    .accept 13104 >>接受任务 再次前往突破口吧，英雄 << !DK
    .accept 13105 >>接受任务 再次前往突破口吧，英雄 << DK
step
	>>前往西北方，与黑锋观察者、塞拉斯、斯帕兹帕特里克对话，然后在房子里与古斯塔夫对话
    .turnin 13104 >>交任务 再次前往突破口吧，英雄 << !DK
    .turnin 13105 >>交任务 再次前往突破口吧，英雄 << DK
    .accept 13118 >>接受任务 净化天灾城
    .accept 13122 >>接受任务 天灾石
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>接受任务 公正堡的基石
    .accept 13135 >>接受任务 危险的能量
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>接受任务 永不安息的亡者
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>在天灾城击杀天灾军团，并拾取它们的天灾石
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >>击杀天灾城中的复生十字军。在他们的尸体上使用你包里的神圣之水来拯救他们的灵魂
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>击杀天灾城中的被遗忘的地下之王
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>击杀主要位于该区域通灵塔内的遗忘高阶祭司
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>击杀该区域中的被遗忘的地下之王
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >>在天灾城击杀复活的十字军，在他们的尸体处使用你的背包中的圣水来解放他们的灵魂
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>在天灾城击杀天灾军团，并拾取它们的天灾石
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>击杀该区域的人型/亡灵/元素小怪，拾取他们的战利品以获得他们的能量
    .complete 13135,1 --Crystallized Energy (8)
step
	>>拾取该区域地上的紫色树桩
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>拾取被毁的精灵建筑周围的小块蓝色大理石
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>击杀该区域的人型/亡灵/元素小怪，拾取他们的战利品以获得他们的能量
    .complete 13135,1 --Crystallized Energy (8)
step
	>>返回黑锋观察者
    .turnin 13130 >>交任务 公正堡的基石
    .turnin 13135 >>交任务 危险的能量
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>交任务 净化天灾城
    .turnin 13122 >>交任务 天灾石
    .accept 13125 >>接受任务 凝固的空气
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>进入小屋
    .turnin 13110 >>交任务 永不安息的亡者
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>进入建筑内部。使用阿彻鲁斯战争号角召唤一名NPC协助你击杀萨尔拉纳克斯
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>进入建筑内。使用阿彻鲁斯战争号角召唤一名NPC协助你击杀亚萨蒙
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>使用阿彻鲁斯战争号角召唤一个NPC协助你击杀塔隆诺克斯
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>返回黑锋观察者
    .turnin 13125 >>交任务 凝固的空气
step
    .goto IcecrownGlacier,82.9,72.8
	>>进入小屋
    .accept 13139 >>接受任务 进入诺森德的冰冷腹地
step
    .goto IcecrownGlacier,86.0,75.8
	>>返回提里奥·弗丁
    .turnin 13139 >>交任务 进入诺森德的冰冷腹地
    .accept 13141 >>接受任务 北伐军之峰的战斗
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>使用背包中的神圣军旗，在骷髅堆处将其插下，并抵御来袭的波次。当死亡使者哈洛夫出现时集中火力击杀它
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>进入小屋
    .turnin 13141 >>交任务 北伐军之峰的战斗
    .accept 13157 >>接受任务 北伐军之峰
step
    .goto IcecrownGlacier,79.8,71.8
	>>返回到你防守旗帜的地方。与提里奥·弗丁对话
    .turnin 13157 >>交任务 北伐军之峰
    .accept 13068 >>接受任务 勇气的传说
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >>开启北伐军之峰飞行点
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>进入塔内，与底层床上的强眉交谈
    .accept 13224 >>接受任务 奥格瑞姆之锤
step << Alliance
    .goto Icecrown,79.44,72.84
	>>进入塔内，与底层床上的伊瓦留斯交谈
    .accept 13225 >>接受任务 破天号
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>飞往破天号，那艘在高空中盘旋的联盟大船。进入玛拉迪正对着的后方大房间，与贾斯汀交谈
    .turnin 13225 >>交任务 破天号
    .accept 13231 >>接受任务 破碎前线
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>找到虔诚的阿布萨兰。他绕着船尾走动，在左右两侧的楼梯上上下下
    .daily 13300 >>接受任务 萨隆邪铁的奴隶
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>登上船尾处的楼梯，与骑士队长德洛斯彻对话
    .daily 13336 >>接受任务 伊米亚之血
    .accept 13341 >>接受任务 协助突袭
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .accept 13296 >>接受任务 前往伊米海姆！
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞往奥格瑞姆之锤，这艘在高空中飞行的巨大部落船只。进入前面的大厅，与掠天者考尔姆·黑痕对话
    .turnin 13224 >>交任务 奥格瑞姆之锤
    .accept 13228 >>接受任务 破碎前线
step << Horde
	>>接受来自战争使者达沃斯·里赫和凯尔坦修士的任务，他们在楼梯附近和下层甲板走动
    .daily 13302 >>接受任务 萨隆邪铁的奴隶
    .daily 13330 >>接受任务 伊米亚之血
    .accept 13340 >>接受任务 协助突袭
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .accept 13293 >>接受任务 前往伊米海姆！
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>飞往地面指挥官库普（他在地面上）
    .turnin 13341 >>交任务 协助突袭
    .daily 13309 >>接受任务 空中突袭
	>>你可以跳过该每日任务
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >>右键点击飞行器顶部的炮塔以开始任务
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>在飞行时，射击建筑物上的所有矛炮
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>返回库普
    .turnin 13309 >>交任务 空中突袭
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>与小队领袖对话。如果其他人启动了任务，他可能不在这里，他每约6分钟重生一次，位置在库普右边约10码处
	>>你可以跳过这个任务，这只是个日常任务，与其他任务相关联
    .daily 13284 >>接受任务 地面突袭
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>击杀遍布伊米海姆的维库人
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
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
	#completewith next
    .goto Icecrown,57.01,62.53
	>>飞往地面上的弗拉兹尔
    .turnin 13296 >>交任务 前往伊米海姆！
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
	>>点击离开载具按钮
    .turnin 13280 >>交任务 占山为王
	.isQuestComplete 13280
step << Horde
	>>飞向地面指挥官科特亚（他在地面上——不在船上）
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>交任务 协助突袭
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>接受任务 空中突袭
	>>你可以跳过该每日任务
step << Horde
	#completewith next
	.vehicle >>跑到库卡隆压制炮塔那里，点击它。
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>在飞行时射击建筑物上的所有矛炮。在此过程中会有潜伏者掉落。
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>交任务 空中突袭
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>与小队领袖对话。如果其他人启动了任务，他可能不在这里，他每约6分钟重生一次
    .daily 13301 >>接受任务 地面突袭
	>>你可以跳过这个任务，这只是个日常任务，与其他任务相关联
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>击杀遍布伊米海姆的维库人
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>护送部队。
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
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>交任务 前往伊米海姆！
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
	>>点击离开载具按钮
    .turnin 13283 >>交任务 占山为王
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>在破碎前线附近找到一名垂死的士兵并与其对话
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>接受任务 让我解脱吧！
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>在该区域寻找并击杀更多濒死的士兵
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>在破碎前线附近找到一名濒死的狂战士并与其对话
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>接受任务 为我复仇！
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>在该区域寻找并击杀更多濒死的士兵
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，那艘在高空中盘旋的联盟大船 (你可以在地图上看到它)。进入玛拉迪正对着的后方大房间，与贾斯汀交谈
    .turnin 13231 >>交任务 破碎前线
    .turnin 13232 >>交任务 让我解脱吧！
    .accept 13286 >>接受任务 ……所有可能的帮助
    .accept 13290 >>接受任务 请留意一下……
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>找到虔诚的阿布萨兰。他绕着船尾走动，在左右两侧的楼梯上上下下
    .turnin 13300 >>交任务 萨隆邪铁的奴隶
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>登上船尾处的楼梯，与骑士队长德洛斯彻对话
    .turnin 13336 >>交任务 伊米亚之血
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>在船后左角与萨萨里安对话
    .turnin 13286 >>交任务 ……所有可能的帮助
    .accept 13287 >>接受任务 知己知彼
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .turnin 13290 >>交任务 请留意一下……
    .accept 13291 >>接受任务 “借来”的技术
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞往奥格瑞姆之锤，那艘在高空飞行的巨大部落战舰。与前面房间的掠天者考尔姆·黑痕对话
    .turnin 13228 >>交任务 破碎前线
    .turnin 13230 >>交任务 为我复仇！
    .accept 13238 >>接受任务 有价值的帮手？
    .accept 13260 >>接受任务 知根知底
step << Horde
	>>与身边的库尔迪拉对话
    .turnin 13260 >>交任务 知根知底
    .accept 13237 >>接受任务 知己知彼
step << Horde
	>>与在楼梯附近走来走去的凯尔坦修士对话
    .turnin 13302 >>交任务 萨隆邪铁的奴隶
	.isQuestComplete 13302
step
	>>与战争使者达沃斯·里赫对话。他也在下层甲板巡逻
    .turnin 13330 >>交任务 伊米亚之血
	.isQuestComplete 13330
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .turnin 13238 >>交任务 有价值的帮手？
    .accept 13239 >>接受任务 爆炸油
step << Alliance
	>>返回地面指挥官库普处
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>交任务 地面突袭
	.isQuestComplete 13284
step << Horde
	>>返回地面指挥官科特亚处
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>交任务 地面突袭
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>在破碎前线周围拾取散落在地上的被遗弃的装备碎片。集齐每种装备各一件后，使用背包中的走私溶液（无需等待剧情动画）
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>拾取散落在破碎前线四周地上的废弃的装备碎片。当你集齐每种装备碎片各一个时，使用你背包里的[考伯克拉的爆炸油]（你不需要等待剧情对话结束）
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>击杀该区域中的憎恶、秘法师和死灵法师
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>击杀该区域中的憎恶、秘法师和死灵法师
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>在破碎前线周围拾取散落在地上的被遗弃的装备碎片。集齐每种装备各一件后，使用背包中的走私溶液（无需等待剧情动画）
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>拾取散落在破碎前线四周地上的废弃的装备碎片。当你集齐每种装备碎片各一个时，使用你背包里的[考伯克拉的爆炸油]（你不需要等待剧情对话结束）
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
    .turnin 13287 >>交任务 知己知彼
    .accept 13288 >>接受任务 你的憎恶伙伴
    .accept 13294 >>接受任务 对抗巨人
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .turnin 13291 >>交任务 “借来”的技术
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞往奥格瑞姆之锤，那艘在空中高处飞行的巨大部落战舰，与库尔迪拉在船的前舱室对话
    .turnin 13237 >>交任务 知己知彼
    .accept 13264 >>接受任务 你的憎恶伙伴
	.accept 13277 >>接受任务 对抗巨人
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .turnin 13239 >>交任务 爆炸油
step
    .goto IcecrownGlacier,68.3,61.5
	>>击杀该区域内的巨大憎恶，并拾取冷却的憎恶破胆
	.use 43968 >>使用憎恶复活套装，配合背包中的破胆来召唤你能控制的憎恶。让憎恶攻击小怪并吸引仇恨，以此聚集尽可能多的小怪，然后使用"憎恶爆炸"击杀憎恶附近的所有小怪（小怪必须处于战斗状态才能获得功劳）
	>>如果你用完了破胆，去击杀更多巨大憎恶，你一次只能携带1个破胆。
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>返回奥格瑞姆之锤。与库尔迪拉对话
    .turnin 13264 >>交任务 你的憎恶伙伴
    .accept 13351 >>接受任务 预览
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>返回破天号，与萨萨里安对话
    .turnin 13288 >>交任务 你的憎恶伙伴
    .accept 13315 >>接受任务 预览
step << Alliance
	>>在大墙上方的平台上方飞过路径点
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>在大墙上方的平台上方飞过路径点
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>击杀该区域内的脓液憎恶，拾取它们的脊骨，这个任务难度极高，必要时可以组队完成。
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>击杀该区域内的脓液憎恶，拾取它们的脊骨，这个任务难度极高，必要时可以组队完成。
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞往奥格瑞姆之锤，那艘在空中高处飞行的巨大部落战舰，与库尔迪拉在船的前舱室对话
    .turnin 13351 >>交任务 预览
	.turnin 13277 >>交任务 对抗巨人
    .accept 13355 >>接受任务 无法复制
    .accept 13354 >>接受任务 指挥体系
    .accept 13352 >>接受任务 从天而“降”
	.accept 13279 >>接受任务 化学常识
    .accept 13278 >>接受任务 污染者科普洛斯
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .accept 13379 >>接受任务 绿色科技
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
    .turnin 13315 >>交任务 预览
    .turnin 13294 >>交任务 对抗巨人
    .accept 13318 >>接受任务 从天而“降”
    .accept 13319 >>接受任务 指挥体系
    .accept 13320 >>接受任务 无法复制
    .accept 13295 >>接受任务 化学常识
    .accept 13298 >>接受任务 污染者科普洛斯
step << Alliance
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .accept 13383 >>接受任务 “借来”的技术
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >>进入通往莫德雷萨内部的大门。它在第二层，由瘟疫恶魔守卫
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >>对包中的绿色沸腾大锅使用脊骨脓液。击杀刷新的怪物，并在提示“即将添加液体”时再次使用脊骨脓液。此任务难度极高，如有需要请组队完成。
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>在莫德雷萨中杀死蝎虫污染者科普罗斯。这个任务非常困难，如果需要的话，组队完成。
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>前往墙壁上方的平台，击杀该区域的苦痛新兵。拾取他们的幻觉宝珠
	.use 44246 >>在你未处于战斗状态时，对该区域的黑暗征服者使用幻象宝珠。
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>击杀在大帐篷内的工头法埃迪斯
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >>对奥杜尔萨外面的坩埚使用分离的药瓶
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>在大型帐篷下击杀监督者萨维林和杰昆。然后飞上一层，在（大型帐篷下的）维拉杰处将其击杀
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>飞往空中的小平台，与吉普利·基罗赫斯对话
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>交任务 吉普利·基罗赫斯
	.accept 13380 >>接受任务 委以重任
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>与卡伦·诺尔对话乘坐轰炸机。使用护盾充能 (1) 获得100护盾，然后切换到炸弹舱 (5) 并开始轰炸下方的天灾直到所有步兵和队长被击杀。切换到防空炮台 (4) 并开始使用防空火箭 (1) 射击空中的石像鬼。完成后按下离开载具按钮，你将被传送回平台
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>和吉普利·基罗赫斯对话
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>交任务 委以重任
step << Horde
	>>飞到空中的小平台上，与特兹拉交谈
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>交任务 绿色科技
    .accept 13373 >>接受任务 边缘科学的益处
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>与莉兹对话乘坐轰炸机。使用护盾充能 (1) 获得100护盾，然后切换到炸弹舱 (5) 并开始轰炸下方的天灾直到所有步兵和队长被击杀。切换到防空炮台 (4) 并开始使用防空火箭 (1) 射击空中的石像鬼。完成后按下离开载具按钮，你将被传送回平台
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>与塔兹拉对话
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>交任务 边缘科学的益处
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
    .turnin 13318 >>交任务 从天而“降”
    .turnin 13319 >>交任务 指挥体系
    .turnin 13295 >>交任务 化学常识
    .turnin 13298 >>交任务 污染者科普洛斯
    .accept 13342 >>接受任务 活动窃听器
    .accept 13345 >>接受任务 需要更多情报
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .turnin 13320 >>交任务 无法复制
    .accept 13321 >>接受任务 重新考验
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞到奥格瑞姆之锤，那是部落在高空中飞行的巨型战舰。进入前方的大房间，与科利特拉交谈
	.turnin 13352 >>交任务 从天而“降”
    .turnin 13354 >>交任务 指挥体系
    .turnin 13279 >>交任务 化学常识
    .turnin 13278 >>交任务 污染者科普洛斯
    .accept 13358 >>接受任务 活动窃听器
    .accept 13366 >>接受任务 需要更多情报
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .turnin 13355 >>交任务 无法复制
    .accept 13356 >>接受任务 重新考验
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>使用你背包里的稀释过的诅咒教徒滋补剂获得“黑暗洞察”buff。这允许你从该区域击杀的所有人形怪物身上拾取被污染的精华
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >>击杀该区域的5个奴役的仆从（虚空行者）。在他们的尸体上使用虹吸之杖获取黑暗物质
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>点击集合石
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >>进入奥杜尔撒内部
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>击杀该区域的教徒研究员，拾取他们掉落的战利品(研究页面)
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >>点击你背包中的一个研究页面，将它们合并成论文
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >>右键点击你背包里的被污染的精华，将其合成为沸腾的魔质。然后将其扔进大锅中
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
    .turnin 13342 >>交任务 活动窃听器
    .turnin 13345 >>交任务 需要更多情报
    .accept 13346 >>接受任务 片刻不得安宁
    .accept 13332 >>接受任务 构建路障
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>从飞船中部的楼梯下去（在守备官玛尔拉德身后），然后从第一段楼梯两侧的任意一侧楼梯继续向下，进入轮机室。与首席技师波尔维克对话
    .turnin 13321 >>交任务 重新考验
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞到奥格瑞姆之锤，那是部落在高空中飞行的巨型战舰。进入前方的大房间，与科利特拉交谈
    .turnin 13358 >>交任务 活动窃听器
	.turnin 13366 >>交任务 需要更多情报
    .accept 13367 >>接受任务 片刻不得安宁
    .accept 13306 >>接受任务 构建路障
step << Horde
	>>前往船的下层甲板，与首席技师考伯克拉对话
    .turnin 13356 >>交任务 重新考验
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>在陨落英雄谷，使用背包中的路障搭设工具，对准出现的紫色光晕使用
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>这个任务非常困难，如果需要可以组队完成
	>>在奥鲁塔内部打开箱子，拾取奥鲁麦斯的颅骨、心脏、权杖和长袍
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>这个任务非常困难，如果需要可以组队完成
	.use 44476 >>点击背包中的任何物品以将其合并为奥鲁麦斯的残骸
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>这个任务非常困难，如果需要可以组队完成
	.use 44480 >>在发光晶体前使用奥鲁麦斯的残骸来召唤他，击杀他
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
    .turnin 13346 >>交任务 片刻不得安宁
    .turnin 13332 >>交任务 构建路障
	.accept 13337 >>接受任务 铁墙壁垒
	.accept 13334 >>接受任务 溅血的旗帜
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞到奥格瑞姆之锤，那是部落在高空中飞行的巨型战舰。进入前方的大房间，与科利特拉交谈
    .turnin 13367 >>交任务 片刻不得安宁
    .turnin 13306 >>交任务 构建路障
	.accept 13312 >>接受任务 铁墙壁垒
	.accept 13307 >>接受任务 溅血的旗帜
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>击杀该区域的天灾转化者
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>这个任务非常困难，如果需要可以组队完成
	.use 44186 >>飞到阳台，然后在格姆克尔之珠处使用背包中的扭曲符文。击杀邪恶的格姆克尔
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>击杀该区域的天灾旗帜携带者和被转化英雄
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>飞往破天号，这艘在空中高处飞行的联盟战舰，与位于船左后角的萨萨里安对话
	.turnin 13334 >>交任务 溅血的旗帜
	.turnin 13337 >>交任务 铁墙壁垒
	>>进入破天号上玛尔拉德面对的大房间，与贾斯汀对话
	.accept 13314 >>接受任务 获取情报
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>使用背包中的镖枪攻击奥格瑞姆之锤的侦察兵（可以在飞行坐骑上使用），拾取他们的尸体获得急件
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>进入破天号上玛尔拉德面对的大房间，与贾斯汀对话
	.turnin 13314 >>交任务 获取情报
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>飞到奥格瑞姆之锤，那是部落在高空中飞行的巨型战舰。进入前方的大房间，与科利特拉交谈
	.turnin 13312 >>交任务 铁墙壁垒
	.turnin 13307 >>交任务 溅血的旗帜
step << Horde
	>>与你旁边的考尔姆·黑痕对话
	.accept 13313 >>接受任务 遮挡天空
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>在空中对破天者侦察机使用背包中的SGM-3
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>>飞往奥格瑞姆之锤，它是一个高空中飞行的部落战舰。进入前面的大房间。与考尔姆·黑痕对话
	.turnin 13313 >>交任务 遮挡天空
step
	+如果你跳过或未完成本指南中的任何任务，请重新开始并完成它们，请点击齿轮图标返回到冰冠冰川飞空艇解锁日常任务指南
	>>如果你已完成所有任务，可以开始使用冰冠冰川飞空艇日常任务路线，请注意，某些任务今天可能不可用，因为你可能已经完成了一些日常任务
]])
