if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP 诺森德日常任务
#subgroup 阵营日常任务
#wotlk
#cata
#name 黑锋骑士团日常任务路线

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
	>>在鱼叉内时，连续使用"速射鱼叉炮"（3）击落巨龙
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
	>>使用"速度爆发"(1)冷却好了就用，以加快移动速度。使用"攻击尤顿海姆建筑物"(3)将建筑物点燃
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
step
	+你今天已经完成了所有黑锋骑士团的日常任务 :) 记得在打巫妖王之怒副本时穿上他们的战袍，可以获得额外声望哦！
]])
