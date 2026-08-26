if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 怒风之怒 - 4级（暮谷）
#title 怒风之怒

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
    .accept 77571 >>接受任务 卡多雷的圣物
    .trainer >>训练你的职业法术。确保你学会 |T136096:0|t[月火术]
    .target 玛丹特·硬木
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>击杀 |cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。拾取 |T134903:0|t[|cRXP_FRIENDLY_月光神像|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob 小劣魔
    .mob 劣魔
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_月光神像|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>在敌人受到 |T136096:0|t[月火术] |cRXP_WARN_影响时将其击杀 6 次，以获得|r |T237556:0|t[灵感] |cRXP_WARN_层数|r
    >>|cRXP_WARN_一旦你在击杀 6 次后获得了|r |T136116:0|t[灵感勃发] |cRXP_WARN_buff，再次使用你刚刚装备的|r |T134903:0|t[|cRXP_FRIENDLY_月神神像|r] |cRXP_WARN_|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
    .turnin 77571 >>交任务 卡多雷的圣物
    .target 玛丹特·硬木
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 生命之种 - 10级（泰达希尔）
#title 生命之种

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>拾取地上的 |T133941:0|t[|cRXP_LOOT_林地花|r]
    >>|cRXP_WARN_这些散落在泰达希尔各处|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_使用|r |T133941:0|t[|cRXP_LOOT_林地花|r] |cRXP_WARN_来组合成|r |T132767:0|t[林地头冠]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >>前往星风村
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_对|r 木质雕像|cRXP_WARN_ |cRXP_ENEMY_使用|r |T132767:0|t[林地王冠]。这会召唤一个|r |cRXP_ENEMY_失控的自然之灵|r
    >>|cRXP_WARN_你可能需要等待几分钟直到它刷新|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>击杀 |cRXP_ENEMY_不羁的自然之灵|r。拾取 |T134419:0|t[|cRXP_FRIENDLY_自然潜能符文|r]
    >>|cRXP_WARN_这是一个7级精英怪|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_自然潜能符文|r] |cRXP_WARN_来训练|r |T136152:0|t[生命之种]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 生命绽放 - 8级（泰达希尔）
#title 生命绽放

step << Druid
    #sticky
    +|cRXP_WARN_你必须找一个帮手来收集这个符文！这无法独自完成，因为必须有第二名玩家协助点击召唤仪式！|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冒险者的残骸|r 对话
    >>|cRXP_WARN_这会开启召唤仪式，另一名玩家也需要点击它|r
    >>拾取 |cRXP_FRIENDLY_冒险者的残骸|r，以获得 |T134419:0|t[|cRXP_FRIENDLY_生命符文|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_生命符文|r] |cRXP_WARN_来学习|r |T134206:0|t[生命绽放]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 野蛮咆哮 - 20级（黑海岸）
#title 野蛮咆哮

step << Druid
    #season 2
    #sticky
    +注意：你必须达到 20 级才能装备 |T132942:0|t[|cRXP_WARN_野性神像|r]，|cRXP_FRIENDLY_这是学习|r |T236167:0|t[野蛮咆哮] |cRXP_WARN_所必需的|r
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r。拾取她的 |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    >>|cRXP_WARN_注意 |cRXP_ENEMY_蓟熊幼崽|r，它们可以将你击晕2秒|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob 雌蓟熊
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_装备|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_对人型生物造成 20 次来自|r |T132152:0|t[撕扯] |cRXP_WARN_或|r |T132122:0|t[扫击] |cRXP_WARN_的流血伤害，然后再次使用|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r] |cRXP_WARN_以学习|r |T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 野蛮咆哮 - 20级（西部荒野）
#title 野蛮咆哮

step << Druid
    #season 2
    #sticky
    +注意：你必须达到 20 级才能装备 |T132942:0|t[|cRXP_WARN_野性神像|r]，|cRXP_FRIENDLY_这是学习|r |T236167:0|t[野蛮咆哮] |cRXP_WARN_所必需的|r
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>击杀 |cRXP_ENEMY_河爪豺狼人|r，|cRXP_ENEMY_河爪斥候|r 和 |cRXP_ENEMY_混血河爪豺狼人|r。拾取它们的 |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_装备|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_对人型生物造成 20 次来自|r |T132152:0|t[撕扯] |cRXP_WARN_或|r |T132122:0|t[扫击] |cRXP_WARN_的流血伤害，然后再次使用|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r] |cRXP_WARN_以学习|r |T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 阳炎术 - 6级（泰达希尔）
#title 阳炎术

step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_在巨大的树枝上你会看到3个|r |cRXP_ENEMY_月石|r
    >>|cRXP_WARN_对树枝上所有3个|r |cRXP_WARN_月石|r |cRXP_ENEMY_施放|r |T136096:0|t[月火术] |cRXP_WARN_，然后拾取在箭头所在位置生成的宝箱|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r] |cRXP_WARN_来训练|r |T236216:0|t[阳炎术]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 割伤 - 10级（洛克莫丹）
#title 割伤

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与建筑内 |cRXP_FRIENDLY_卡拉·深水|r 对话
    >>|cRXP_BUY_购买一个|r |T237270:0|t[彩鳍鱼食]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >>|cRXP_WARN_对|r 幼年蛇颈龙| |cRXP_WARN_使用|cRXP_ENEMY_ |T237270:0|t[彩鳍鱼食] r |r来获得|r |T134419:0|t[|cRXP_FRIENDLY_割伤符文|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_割伤符文|r] |cRXP_WARN_来学习|r |T132131:0|t[割伤]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 怒风之怒 - 4级（莫高雷）
#title 怒风之怒


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .accept 77648 >>接受任务 牛头人的圣物
    .trainer >>训练你的职业法术。确保你学会 |T136096:0|t[月火术]
    .target 加尔特·迷雾行者
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>拾取|cRXP_PICK_刺背野猪人拾取箱|r 来获得 |T134903:0|t[|cRXP_FRIENDLY_月光神像|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_月光神像|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>在敌人受到 |T136096:0|t[月火术] |cRXP_WARN_影响时将其击杀 6 次，以获得|r |T237556:0|t[灵感] |cRXP_WARN_层数|r
    >>|cRXP_WARN_一旦你在击杀 6 次后获得了|r |T136116:0|t[灵感勃发] |cRXP_WARN_buff，再次使用你刚刚装备的|r |T134903:0|t[|cRXP_FRIENDLY_月光神像|r] |cRXP_WARN_|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 77648 >>交任务 牛头人的圣物
    .target 加尔特·迷雾行者

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 割碎 - 10级（莫高雷）
#title 割碎


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>杀死|cRXP_ENEMY_平原徘徊者|r 和 |cRXP_ENEMY_草原狼前锋|r。拾取它们的 |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼前锋
    .train 410025,1
step
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r]
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_保持50点以上的怒气至少60秒，以学习|r |T132135:0|t[割碎]
step
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_怒熊神像|r] |cRXP_WARN_来学习|r |T132135:0|t[割碎]
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 阳炎术 - 5级（莫高雷）
#title 阳炎术


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>对三个|cRXP_ENEMY_月石|r 施放 |T136096:0|t[月火术]。一个宝箱会在石头之间出现
    >>打开|cRXP_PICK_银月宝箱|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_日灼符文|r] |cRXP_WARN_来训练|r |T236216:0|t[阳炎术]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 生命绽放 - 10级（莫高雷）
#title 生命绽放

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与风险投资公司矿洞外的 |cRXP_FRIENDLY_冒险者的灵魂|r 对话
    >>|cRXP_WARN_另一名玩家需要点击传送门。随后从|r |cRXP_FRIENDLY_冒险者的灵魂|r |cRXP_WARN_身上拾取|r |T134419:0|t[|cRXP_FRIENDLY_生命符文|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_生命符文|r] |cRXP_WARN_来学习|r |T134206:0|t[生命绽放]
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 生命之种 - 8级（莫高雷）
#title 生命之种

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>拾取地上的 |T133941:0|t[|cRXP_LOOT_土拨鼠之花|r]
    >>|cRXP_WARN_这些散落在莫高雷各处|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_使用|r |T133941:0|t[|cRXP_LOOT_土拨鼠之花|r] |cRXP_WARN_来组合成|r |T132767:0|t[土拨鼠之冠]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_对|r 木质雕像|cRXP_WARN_ |cRXP_ENEMY_使用|r |T132767:0|t[林地王冠]。这会召唤一个|r |cRXP_ENEMY_失控的自然之灵|r
    >>|cRXP_WARN_你可能需要等待几分钟直到它刷新|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>击杀 |cRXP_ENEMY_不羁的自然之灵|r。拾取 |T134419:0|t[|cRXP_FRIENDLY_自然潜能符文|r]
    >>|cRXP_WARN_这是一个7级精英怪|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_自然潜能符文|r] |cRXP_WARN_来训练|r |T136152:0|t[生命之种]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 割伤 - 15级（荒芜之地）
#title 割伤

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>前往遗忘之池
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>拾取地上的|cRXP_PICK_被遗弃的钳嘴龟巢|r，获取|T294479:0|t[|cRXP_LOOT_被抛弃的钳嘴龟的蛋|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>前往甜水绿洲
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>打开地上的|cRXP_PICK_空荡荡的钳嘴龟的巢|r 以获得|T134419:0|t[|cRXP_FRIENDLY_割伤符文|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_割伤符文|r] |cRXP_WARN_来学习|r |T132131:0|t[割伤]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 野蛮咆哮 - 15级（荒芜之地）
#title 野蛮咆哮

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +注意：你必须达到 20 级才能装备 |T132942:0|t[|cRXP_WARN_野性神像|r]，|cRXP_FRIENDLY_这是学习|r |T236167:0|t[野蛮咆哮] |cRXP_WARN_所必需的|r
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔召雷师|r。拾取它们的|T134237:0|t[|cRXP_LOOT_科卡尔宝箱钥匙|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>打开一个|cRXP_PICK_科卡尔的战利品|r 箱子以获取|T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >>|cRXP_WARN_装备|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_对人型生物造成 20 次来自|r |T132152:0|t[撕扯] |cRXP_WARN_或|r |T132122:0|t[扫击] |cRXP_WARN_的流血伤害，然后再次使用|r |T132942:0|t[|cRXP_FRIENDLY_野性神像|r] |cRXP_WARN_以学习|r |T236167:0|t[野蛮咆哮]
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 狂暴 - 28级（千针石林）
#title 狂暴

step
    #optional
    +|cRXP_WARN_你必须至少达到28级来学习|r |T236149:0|t[狂暴]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >>|cRXP_WARN_你必须已学习|r |T132117:0|t[挑战咆哮] |cRXP_WARN_以获得|r |T236149:0|t[狂暴] |cRXP_WARN_符文|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>前往千针石林
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >>|cRXP_WARN_站在|cRXP_PICK_野蛮塑像|r 雕像旁可获得|r |T134912:0|t[野蛮塑像] |cRXP_WARN_buff|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >>|cRXP_WARN_进入|r |T132276:0|t[熊形态] |cRXP_WARN_并施放|r |T132117:0|t[挑战咆哮] |cRXP_WARN_以召唤|r |cRXP_ENEMY_扎恩基|r |cRXP_WARN_（28级精英）|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>击杀 |cRXP_ENEMY_扎恩基|r。拾取其 |T134912:0|t[|cRXP_FRIENDLY_非难神像|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >>装备 |T134912:0|t[|cRXP_FRIENDLY_非难神像|r]
    .use 213594
step
    #title 获得5层 |T237556:0|t[积累灵感]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >>|cRXP_WARN_施放|r |T132117:0|t[挑战咆哮] |cRXP_WARN_嘲讽至少 2 个敌人，并在它们带有|r |T132117:0|t[挑战咆哮] |cRXP_WARN_debuff 时击杀其中一个。这将使你获得一层|r |T237556:0|t[积累灵感] |cRXP_WARN_buff。重复此操作 5 次，直到你获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    *|cRXP_WARN_建议你先与一个小怪战斗并将其打到即将死亡，然后拉来第二个并施放|r |T132117:0|t[挑战咆哮]|cRXP_WARN_，然后击杀低生命值的小怪。如果你死亡，你将失去所有|r |T237556:0|t[积累灵感] |cRXP_WARN_的层数|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >>|cRXP_WARN_使用|r |T134912:0|t[|cRXP_FRIENDLY_非难神像|r] |cRXP_WARN_来训练|r |T236149:0|t[狂暴]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 迷梦 - 33级（凄凉之地）
#title 迷梦

step
    #completewith next
    .train 410060,1
    .zone Desolace >>前往凄凉之地
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>杀死 |cRXP_ENEMY_科卡尔怪|r 并从他们身上拾取 |T134187:0|t[干燥的种荚]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>在水中游泳，等待豆荚变成|T134208:0|t[萨特草球茎]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>点击 |cRXP_PICK_砂质壤土|r 来播种以学习 |T136090:0|t[迷梦]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 滋养 - 35级（艾泽拉斯）
#title 滋养

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>前往尘泥沼泽
step
    .train 410059,1
    >>杀死 |cRXP_ENEMY_腐烂的古树|r。拾取 |T134217:0|t[腐烂的种子]。|cRXP_WARN_在你的背包中点击它|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >>接受任务 失落的古树
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>使用 |T135758:0|t[传送：月光林地]
step
    #completewith next
    +|cRXP_WARN_你必须严格遵守接下来的每一项指引。死亡、切换位面、接受召唤、使用传送或获得“无荣誉目标”buff都可能导致任务失败（你会失去该Buff），因此请勿使用任何前往争夺中地区的飞行点。|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥洛凯|r 对话
    *|cRXP_WARN_接受下一个任务将开启 一个1小时的倒计时。请确保你在这整整一个小时内能够专心完成。|r
    .turnin 79348 >>交任务 失落的古树
    .accept 79377 >>接受任务 失落的树苗
    .timer 3600,喝水持续时间
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德拉尔|r 对话
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>飞往奥伯丁
    .target 辛德拉尔
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港。|cRXP_WARN_在船开始移动后小退，等待40秒后再重新登录|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>前往阿拉希高地。|cRXP_WARN_不要坐飞机|r
step << Alliance
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>前往奥特兰克山脉。|cRXP_WARN_不要坐飞机|r
step << Alliance
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>沿着路线前往西瘟疫之地
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r 对话
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>飞往暴风城
    .target 比比尔法兹
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>前往逆风小径
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>沿着路线前往悲伤沼泽
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>沿着路线前往荆棘谷
step << Alliance
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑟恩·草风|r 对话
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>飞往雷霆崖
    .target 布瑟恩·草风
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>飞往棘齿城
    .target 塔尔
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >>乘船前往藏宝海湾。|cRXP_WARN_在船开始移动后小退，等待40秒后再重新登录|r
step << Horde
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>向北穿过暮色森林和逆风小径进入悲伤沼泽。|cRXP_WARN_避开夜色镇|r
step << Horde
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷依克|r 对话
    .fly Undercity >>飞往幽暗城
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_离开幽暗城，前往银松森林并游过湖泊到奥特兰克山脉|r
step << Horde
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>跑到阿拉希高地。
step << Horde
    .train 410059,1
    >>在 |cRXP_FRIENDLY_古树树苗|r 上使用 |T132852:0|t[艾露恩之水]
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>使用 |T135758:0|t[传送：月光林地]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥洛凯|r 对话
    .turnin 79377 >>交任务 失落的树苗
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>使用 |T134419:0|t[|cRXP_FRIENDLY_滋养符文|r] 来学习 |T236162:0|t[滋养]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#name 百花齐放 - 45级（艾泽拉斯）

step
    #optional
    .train 431468,1
    .train 2728 >>|cRXP_WARN_你必须已经学习了|r |T135952:0|t[解除诅咒] |cRXP_WARN_才能获得|r |T134222:0|t[百花齐放] |cRXP_WARN_符文|r
step
    #optional
    .train 431468,1
    .train 8946 >>|cRXP_WARN_你必须已经学习了|r |T136067:0|t[消毒术] |cRXP_WARN_才能获得|r |T134222:0|t[百花齐放] |cRXP_WARN_符文|r
step
    #optional
    .train 431468,1
    .train 16914 >>|cRXP_WARN_你必须已经学习了|r |T136018:0|t[飓风] |cRXP_WARN_才能获得|r |T134222:0|t[百花齐放] |cRXP_WARN_符文|r
step
    #optional
    .train 431468,1
    .train 740 >>|cRXP_WARN_你必须已经学习了|r |T136107:0|t[宁静] |cRXP_WARN_才能获得|r |T134222:0|t[百花齐放] |cRXP_WARN_符文|r
step
    #optional
    .train 431468,1
    .train 768 >>|cRXP_WARN_你必须已经学习了|r |T132115:0|t[猎豹形态] |cRXP_WARN_才能获得|r |T134222:0|t[百花齐放] |cRXP_WARN_符文|r
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔内的 |cRXP_FRIENDLY_提里修斯|r |cRXP_WARN_对话|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>接受任务 守护者的智慧
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>点击 |cRXP_PICK_守护神龛|r 来获得 |T132145:0|t[守望者的义务] buff
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>跟随以下步骤来获得 |T236157:0|t[守望者印记] buff
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>攻击一个 |cRXP_ENEMY_戈杜尼术士|r。|cRXP_WARN_等待他们对你施放|r |T136121:0|t[缩小] |cRXP_WARN_。|r
    .cast 2728 >>|cRXP_WARN_使用|r |T135952:0|t[解除诅咒] |cRXP_WARN_来移除|r |T136121:0|t[缩小] |cRXP_WARN_debuff|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>攻击一只 |cRXP_ENEMY_祖卡什异种蝎|r。|cRXP_WARN_等待他们对你施放|r |T136016:0|t[毒药] |cRXP_WARN_。|r
    .cast 526 >>|cRXP_WARN_使用|r |T135952:0|t[消毒术] |cRXP_WARN_来移除|r |T136016:0|t[毒药] |cRXP_WARN_debuff|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_点击或跑向|r |cRXP_PICK_守护神龛|r |cRXP_WARN_来召唤|cRXP_ENEMY_ |r树人化身|r
    >>击杀 |cRXP_ENEMY_树人化身|r。
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>前往艾萨拉（传送月光林地 -> 艾萨拉飞行点）
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>点击 |cRXP_PICK_野兽神龛|r
    *|cRXP_WARN_如果该步骤未自动完成，请手动跳过|r
step
    .train 431468,1
    >>击杀|cRXP_ENEMY_阿帕罗之嗣|r |cRXP_WARN_（使用近战技能，进入猎豹或熊形态）|r。拾取获得|T134338:0|t[|cRXP_LOOT_圣洁雄鹿之心|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_在|r |cRXP_LOOT_野兽神龛|r |cRXP_WARN_旁边使用|r |T134338:0|t[|cRXP_PICK_圣洁雄鹿之心|r] |cRXP_WARN_来召唤|r |cRXP_ENEMY_角鹰兽化身|r
    .train 431468,1
step
    .train 431468,1
    >>击杀 |cRXP_ENEMY_角鹰兽化身|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>前往辛特兰
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>点击山顶的 |cRXP_PICK_月光神龛|r
    *|cRXP_WARN_如果该步骤未自动完成，请手动跳过|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_使用|r |T136107:0|t[宁静]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_使用|r |T136018:0|t[飓风]
step
    .train 431468,1
    >>击杀 |cRXP_WARN_枭兽化身|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔内的 |cRXP_FRIENDLY_提里修斯|r |cRXP_WARN_对话|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>交任务 守护者的智慧
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>使用 |T134419:0|t[|cRXP_FRIENDLY_百花齐放符文|r] 来学习 |T134222:0|t[百花齐放]

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 烈风 - 40级（菲拉斯）

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>前往菲拉斯
step
    #label NamidaGrimtotem
    .train 431451,1
    >>击杀 |cRXP_ENEMY_纳米达·恐怖图腾|r。拾取她的 |T134419:0|t[|cRXP_FRIENDLY_疾风狂岚符文|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_疾风狂岚符文|r] |cRXP_WARN_来训练|r |T236154:0|t[烈风]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#name 艾露恩之火 - 45级（艾萨拉）

step
    #completewith next
    .zone Azshara >>前往艾萨拉
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>点击 |cRXP_PICK_旅行者的背包|r 来拾取 |T236229:0|t[|cRXP_LOOT_战地医疗包|r] 和 |T133741:0|t[|cRXP_LOOT_科尔达拉的日志|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>拾取3个 |T134218:0|t[|cRXP_PICK_萨特草样本|r]
    .collect 221019,3
step
    >>|cRXP_WARN_使用|r |T236229:0|t[|cRXP_LOOT_战地医疗包|r] |cRXP_WARN_将样本混合成|r |T236868:0|t[萨特草酊剂]
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>寻找一个带有 |T136134:0|t[萨特腐蚀] debuff的 |cRXP_ENEMY_雷首角鹰兽|r
    *|cRXP_WARN_如果它带有该减益效果，就会释放出一片绿色毒云|r。
    .cast 2637 >>对 |cRXP_ENEMY_雷首角鹰兽|r 使用 |T136090:0|t[休眠]
    .mob Thunderhead Hippogryph
step
    .train 416051,1
    >>|cRXP_WARN_对 |r雷首角鹰兽|cRXP_WARN_ |cRXP_ENEMY_使用|r |T236868:0|t[萨特草酊剂] 来移除|r |T136134:0|t[萨特腐蚀] |cRXP_WARN_debuff|r 并获得 |T134419:0|t[|cRXP_FRIENDLY_月亮女神符文|r]
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hippogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_疾风狂岚符文|r] |cRXP_WARN_来训练|r |T236163:0|t[艾露恩之火]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 强化树皮术 - 44级（塔纳利斯）

step
    #optional
    .train 431449,1
    .train 22812 >>|cRXP_WARN_你必须已经学习了|r |T136097:0|t[树皮术] |cRXP_WARN_训练过以获得|r |T136097:0|t[强化树皮术] |cRXP_WARN_符文|r
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>击杀|cRXP_ENEMY_灌木露水收集者|r和|cRXP_ENEMY_灌木塑根者|r，拾取它们身上的|T136061:0|t[|cRXP_LOOT_狂怒蹒跚者神像|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_装备|r |T136061:0|t[|cRXP_FRIENDLY_狂怒蹒跚者神像|r]
    .train 431449,1
step
    .aura 408828 >>在|T136097:0|t[树皮术]|cRXP_WARN_效果影响下，使用自然法术（例如：愤怒）击杀五个敌人|r
    *在敌人低血量时使用|T136097:0|t[树皮术]|cRXP_WARN_，并用愤怒或其他自然法术将其击杀|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >>|cRXP_WARN_使用|r |T136061:0|t[|cRXP_FRIENDLY_狂怒蹒跚者神像|r] |cRXP_WARN_来学习|r |T136097:0|t[强化树皮术]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 强化横扫 - 50级（安戈洛环形山）
#title 强化横扫

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>前往安戈洛环形山
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>杀死 |cRXP_ENEMY_暴掠龙|r，|cRXP_ENEMY_狩猎暴掠龙|r 和 |cRXP_ENEMY_毒皮暴掠龙|r。拾取它们的 |T134912:0|t[|cRXP_FRIENDLY_女猎手神像|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >>装备 |T134912:0|t[|cRXP_FRIENDLY_女猎手神像|r]
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title 获得5层 |T237556:0|t[积累灵感]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >>|cRXP_WARN_攻击|cRXP_ENEMY_暴掠龙|r，将其血量削减至约5-10%，并确保对其叠满5星连击点数|r
    >>|cRXP_WARN_一旦它们的血量降至 5-10%，施放|r|T136090:0|t[休眠]|cRXP_WARN_，然后变形为|r|T132115:0|t[猎豹形态]|cRXP_WARN_并施放|r|T132127:0|t[凶猛撕咬]|cRXP_WARN_将其击杀，以此获得一层|r|T237556:0|t[积累灵感]
    >>|cRXP_WARN_重复此过程5次|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >>|cRXP_WARN_使用 |r |T134912:0|t[|cRXP_FRIENDLY_女猎手神像|r] |cRXP_WARN_来训练 |r |T134296:0|t[强化横扫]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 生命之树 - 50级（费伍德森林）
#title 生命之树

step
    #completewith next
    .train 439767,1
    .zone Felwood >>前往费伍德森林
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_与费伍德森林北部的|r |cRXP_FRIENDLY_复仇的小精灵|r |cRXP_WARN_对话，然后跟随它穿过碧火小径，并击杀它所经过路上的所有|cRXP_ENEMY_ |r萨特|r
    >>|cRXP_WARN_复仇的小精灵|cRXP_FRIENDLY_有多个刷新位置。如果你看到其他德鲁伊已经带着|r复仇的小精灵|cRXP_FRIENDLY_|r，你可以协助他们，同样能获得任务进度|r
    >>完成后，|cRXP_FRIENDLY_复仇的小精灵|r 会把 |cRXP_PICK_小精灵的赐福|r 掉落在地上。拾取它以获得 |T134419:0|t[|cRXP_FRIENDLY_世界之树符文|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_世界之树符文|r] |cRXP_WARN_来学习|r |T132145:0|t[生命之树]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 星辰坠落 - 60级（冬泉谷）
#title 星辰坠落

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>前往冬泉谷
    >>|cRXP_WARN_请注意，获取该符文你需要击杀一只 58 级的精英怪。建议邀请好友来协助你|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>杀死 |cRXP_ENEMY_阿克泰利斯|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_坠落星辰符文|r]
    >>|cRXP_WARN_注意， |cRXP_ENEMY_阿克泰利斯|r 是一个 58 级精英怪。考虑邀请朋友帮助你|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_坠落星辰符文|r] |cRXP_WARN_来学习|r |T236168:0|t[星辰坠落]
]])
