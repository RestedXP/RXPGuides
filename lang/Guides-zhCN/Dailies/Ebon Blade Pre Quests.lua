if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 黑锋骑士团解锁日常任务

step
    +你已完成黑锋骑士团前置任务链，请使用黑锋骑士团日常任务路线指南来完成日常任务。
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>飞往破天号，是一艘大型联盟飞船在高空中飞行
	>>在船的后左角与萨萨里安对话
    .accept 12887 >>接受任务 乐趣十足
step << Horde
	.goto Icecrown,62.58,45.04
	>>飞往奥格瑞姆之锤，大型部落飞船在高空飞行
	>>在船的前室与库尔迪拉·织亡者对话
    .accept 12892 >>接受任务 乐趣十足
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >>飞往塔顶，对眼魔使用背包里的眼魔发射器，直到它死亡
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>一直飞到地面上的男爵白银级那里，和他对话
    .turnin 12887 >>交任务 乐趣十足 << Alliance
    .turnin 12892 >>交任务 乐趣十足 << Horde
    .accept 12891 >>接受任务 我有一计……
step
	>>击杀食尸鬼并拾取它们的绳索，击杀憎恶并拾取它们的拉鱼钩，击杀教徒并拾取它们的钓竿，击杀亡灵怪物并拾取它们的精华
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>回到西尔弗
    .turnin 12891 >>交任务 我有一计……
    .accept 12893 >>接受任务 解放你的思想
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >>击杀劣尸维尔。并在他的尸体上使用统御之杖
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >>击杀奈丝伍德夫人，在她的尸体上使用统御之杖
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >>击杀跳跃者，在他的尸体上使用统御之杖。他在上层主楼外行走。
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>回到西尔弗
    .turnin 12893 >>交任务 解放你的思想
    .accept 12896 >>接受任务 顽固的敌人 << Alliance
    .accept 12897 >>接受任务 顽固的敌人 << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>>进入建筑并点击将军的武器架，小心，这会刷出精英怪。击杀莱斯班恩将军
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>飞回破天号，与在船的后左角的萨萨里安对话
    .turnin 12896 >>返回交任务顽固的敌人
    .accept 12898 >>接受任务 暗影拱顶
step << Horde
	>>飞回奥格瑞姆之锤，在船的前室与库尔迪拉·织亡者对话
    .turnin 12897 >>交任务 顽固的敌人
    .accept 12899 >>接受任务 暗影拱顶
step
    .goto IcecrownGlacier,42.8,24.9
	>>回到男爵白银级
	.turnin 12898 >>交任务 暗影拱顶 << Alliance
    .turnin 12899 >>交任务 暗影拱顶 << Horde
    .accept 12938 >>接受任务 公爵
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >>开启暗影拱顶飞行点
step
    .goto IcecrownGlacier,44.7,20.3
	>>进入房屋。与兰克拉尔对话
    .turnin 12938 >>交任务 公爵
    .accept 12939 >>接受任务 荣耀的挑战
step
    .goto Icecrown,43.60,25.13
	>>与跳跃者对话，他在帐篷的周围走动
    .accept 12955 >>接受任务 消灭竞争者
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >>从远处使用挑战旗对尤尔丁格斗者，你可以同时挑战多个格斗者，只要你不进入战斗（但每个2人组只能挑战1个怪）
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>飞往野蛮之台
	>>在野蛮之台与丁基、希格里德、奥努森和埃夫雷姆对话，击败他们
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>回到跳跃者
    .turnin 12955 >>交任务 消灭竞争者
step
    .goto IcecrownGlacier,44.7,20.3
	>>进入房屋。与兰克拉尔对话
    .turnin 12939 >>交任务 荣耀的挑战
    .accept 12943 >>接受任务 暗影拱顶裁决令
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >>前往乌弗朗之厅的路线从这里开始
step
    .goto IcecrownGlacier,41.0,23.9
	>>返回野蛮之台，然后进入乌弗朗之厅。与维林对话，他被锁链束缚在里面
    .accept 12949 >>接受任务 夺取钥匙
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >>在领主面前，使用你的背包中的暗影拱顶裁决令。击杀他。
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>返回到野蛮之台。击杀在周围巡逻的教官霍加尔。拾取他的战利品（钥匙）
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>返回乌弗朗之厅。与维林汇合
    .turnin 12949 >>交任务 夺取钥匙
    .accept 12951 >>接受任务 通知男爵
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>退出大厅。返回到男爵白银级
    .turnin 12951 >>交任务 通知男爵
    .daily 12995 >>接受任务 彰显军威
    .accept 13085 >>接受任务 维林回来了
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>与在主干道上巡逻的劣尸维尔对话
    .accept 12992 >>接受任务 干掉那些维库人！
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>>进入建筑。与左边的维林对话
    .turnin 13085 >>交任务 维林回来了
    .accept 12982 >>接受任务 黑锋囚犯
step
    .goto IcecrownGlacier,44.7,20.4
	>>与兰克拉尔对话
    .turnin 12943 >>交任务 暗影拱顶裁决令
    .accept 13084 >>接受任务 破坏尤顿海姆
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>击杀该区域内的维库人并拾取他们的笼子钥匙。从背包中取出黑锋旗帜，在他们的尸体上使用。点击约顿海姆各处笼子上的掠夺钥匙
	>>燃烧约顿海姆各处找到的旗帜
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>返回暗影拱顶。与在主干道上巡逻的劣尸维尔对话
    .turnin 12992 >>交任务 干掉那些维库人！
    .daily 13071 >>接受任务 维尔喜欢火焰！
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>>进入建筑。与左边的维林对话
    .turnin 12982 >>交任务 黑锋囚犯
step
    .goto IcecrownGlacier,44.7,20.4
	>>与兰克拉尔对话
    .turnin 13084 >>交任务 破坏尤顿海姆
step
    .goto IcecrownGlacier,42.9,24.9
    >>返回白银级
	.turnin 12995 >>交任务 彰显军威
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>与白银级对话
    .accept 12806 >>接受任务 全速赶往死亡高地！
step
    .goto IcecrownGlacier,43.5,25.0
	>>与跳跃者交谈，他在帐篷周围走动
    .daily 13069 >>接受任务 把它们打下来！
step
    .goto IcecrownGlacier,27.9,33.2
	>>进入位于中央的尤顿海姆快速火焰镳枪之一。
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
    .goto IcecrownGlacier,19.5,48.1
	>>解散龙坐骑。然后前往死亡高地。这是一个位于海平面和山顶中间的小平台。与埃雷特对话
    .turnin 12806 >>交任务 全速赶往死亡高地！
    .accept 12807 >>接受任务 迄今为止的故事……
step
    .goto IcecrownGlacier,19.5,48.1
	>>再次与高级指挥官埃雷特对话
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>交任务 迄今为止的故事……
    .accept 12810 >>接受任务 血染大海
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >>开启死亡高地飞行路径
step
	>>与希塔尔对话
    .daily 12813 >>接受任务 转化尸体
    .goto Icecrown,19.67,48.39
	>>与奥卢克斯对话。他在中间的篝火周围巡逻
    .daily 12838 >>接受任务 收集情报
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>可选。你可以跳过或完成这2个每日任务
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>击杀该区域的攻势怪物。对它们的尸体使用背包中的达克门德的药剂
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>击杀先锋军怪物，然后拾取它们的钥匙。使用钥匙打开先锋军港口各处的箱子，获取文件
	>>箱子掉落文件的概率并非100%
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
	#requires transformedcorpse
	.use 40551 >>在离海岸约30-90码处的海中击杀饥饿的巨鲨。从你的背包中取出戈尔膀胱，在他们的尸体上使用
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>返回死亡高地。与埃雷特对话
    .turnin 12810 >>交任务 血染大海
    .accept 12814 >>接受任务 你需要狮鹫
    .goto IcecrownGlacier,19.6,48.1
step
	>>与奥卢克斯对话。他在中间的篝火周围巡逻
    .turnin -12838 >>交任务 收集情报
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>与希塔尔对话
    .turnin -12813 >>交任务 转化尸体
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>>击杀该区域的先锋军狮鹫骑士，并拾取他们的先锋军狮鹫缰绳
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>返回死亡高地，使用你的普通坐骑。到达任务给予者后，使用狮鹫缰绳，然后使用“交还狮鹫” (1) 来交付。
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>与乌佐·唤亡者对话
    .turnin 12814 >>交任务 你需要狮鹫
    .daily 12815 >>接受任务 禁飞区
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>击杀该区域内的狮鹫骑士。用远程能力击杀他们，或在空中聚集多个然后俯冲击杀。如果聚集太多，不要被他们从背后击中，否则会被击下坐骑。
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>返回死亡高地。与乌佐对话
    .turnin 12815 >>交任务 禁飞区
step
    >>返回暗影拱顶，与跳跃者和劣尸维尔对话
    .turnin -13069 >>交任务 把它们打下来！
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>交任务 维尔喜欢火焰！
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +你已完成黑锋骑士团前置任务链。请使用Ebon Blade日常任务路线指南来完成日常任务。注意有些任务可能因之前已完成而今天不可用
	.isQuestTurnedIn 12814
]])
