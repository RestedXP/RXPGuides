if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 1 (艾尔文森林)
#title 乘胜追击

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>前往回音山矿洞内的|cRXP_PICK_狗头人储物箱|r
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>打开地上的 |cRXP_PICK_狗头人的贮藏|r。从中拾取 |T134419:0|t[|cRXP_LOOT_乘胜追击符文|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[乘胜追击符文]|r |cRXP_WARN_来学习|r |T132342:0|t[乘胜追击]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 3 (丹莫罗)
#title 乘胜追击

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>击杀|cRXP_ENEMY_霜鬃巨魔幼崽|r，从它们身上拾取|T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .collect 204806,1
    .mob 霜鬃巨魔新兵
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 3 (幽影谷)
#title 乘胜追击

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。从它们身上拾取 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob 树林蜘蛛
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 10 (艾尔文森林)
#title 血之狂暴

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>与 |cRXP_FRIENDLY_漫游的剑士|r 在艾尔文森林对话
    >>在一场单挑中击败|cRXP_ENEMY_漫游的剑士|r
    >>打开|cRXP_PICK_剑士的奖励|r，它会掉在地上。拾取以获得|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    >>|cRXP_WARN_注释|cRXP_FRIENDLY_：|r漫游的剑士|r 可以在艾尔文森林的任何地方刷新出现
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r] |cRXP_WARN_来学习|r |T136012:0|t[血之狂暴]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 10 (丹莫罗)
#title 血之狂暴

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>与 |cRXP_FRIENDLY_漫游的剑士|r 在丹莫罗对话
    >>在一场单挑中击败|cRXP_ENEMY_漫游的剑士|r
    >>打开|cRXP_PICK_剑士的奖励|r，它会掉在地上。拾取以获得|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r] |cRXP_WARN_来训练|r |T136012:0|t[血之狂暴]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 10 (泰达希尔)
#title 血之狂暴

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>与 |cRXP_FRIENDLY_漫游的剑士|r 在泰达希尔对话
    >>在一场单挑中击败|cRXP_ENEMY_漫游的剑士|r
    >>打开|cRXP_PICK_剑士的奖励|r，它会掉在地上。拾取以获得|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    >>|cRXP_WARN_注释|cRXP_FRIENDLY_：|r漫游的剑士|r 可以在泰达希尔的任何地方生成
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r] |cRXP_WARN_来学习|r |T136012:0|t[血之狂暴]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂怒雷霆 - 6 (艾尔文森林)
#title 狂怒雷霆

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>进入法戈第矿洞
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>击杀 |cRXP_ENEMY_金牙|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob 金牙
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r] |cRXP_WARN_来学习|r |T136048:0|t[狂怒雷霆]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂怒雷霆 - 9 (丹莫罗)
#title 狂怒雷霆

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>杀死 |cRXP_ENEMY_菲欧迪|r。从他身上拾取|T134419:0|t|T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r
    >>|cRXP_WARN_虽然 |cRXP_ENEMY_菲欧迪|r 显示为精英，但他的生命值、伤害和护甲属性与一般的小怪相同|r
    >>|cRXP_WARN_小心，他会施放|r |T132337:0|t[冲锋] |cRXP_WARN_（自身瞬发：提高移动速度3秒，命中后造成35-80点近战伤害。仅可在远程距离施放）|r
    >>|cRXP_WARN_注意：|r |T134419:0|t|T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_也可从丹莫罗的所有稀有怪物身上掉落，包括|cRXP_ENEMY_瓦加什|r、|cRXP_ENEMY_癞爪|r和|r|cRXP_ENEMY_冰须|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀|cRXP_ENEMY_瓦加什|r。从他身上拾取|T134419:0|t|T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r
    >>|cRXP_WARN_注意：|r |T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_也可从丹莫罗的所有稀有怪物身上掉落，包括|cRXP_ENEMY_菲欧迪|r、|cRXP_ENEMY_癞爪|r和|r|cRXP_ENEMY_冰须|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob 瓦加什
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|T136048:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_来训练|r |T136048:0|t|T136048:0|t[狂怒雷霆]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (暴风城)
#title 狂乱攻击

step << Warrior
    #season 2
    .gossipoption 109045 >>与公园旅店内的|cRXP_FRIENDLY_丽芙·布拉德福德|r交谈
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>与|cRXP_ENEMY_斯图阿特|r对话，然后击败他。他会在生命值降至0%时昏倒
    .goto Stormwind City,21.213,62.781
    >>如果|cRXP_ENEMY_斯图阿特|r不在那里，等待他刷新
    .gossipoption 109044 >>击倒|cRXP_FRIENDLY_斯图阿特|r后，再次与|cRXP_ENEMY_莉芙·布拉德福德|r对话，即可获得 |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_使用|r |T134419:0|t|T236317:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] |cRXP_WARN_训练|r |T236317:0|t|T236317:0|t[狂乱攻击]
    >>|cRXP_WARN_注意：根据你的等级，这个任务单刷可能会相当困难。如果需要的话，可以找些帮手。|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (铁炉堡)
#title 狂乱攻击

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>与 |cRXP_FRIENDLY_布鲁克·麦须|r 在军事结界处对话
    >>在门口与 |cRXP_ENEMY_布鲁阿特|r 对话，然后击败他。他会在生命值降至0%时昏倒
    >>如果|cRXP_ENEMY_布鲁阿特|r不在那里，等待他刷新
    >>击倒 |cRXP_FRIENDLY_布鲁阿特|r 后，再次与 |cRXP_ENEMY_布鲁克·麦须|r 对话，即可获得 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .train 425447,1 >>|cRXP_WARN_使用|r |T134419:0|t|T236317:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] |cRXP_WARN_训练|r |T236317:0|t|T236317:0|t[狂乱攻击]
    >>|cRXP_WARN_注意：根据你的等级，这个任务单刷可能会相当困难。如果需要的话，可以找些帮手。|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (泰达希尔)
#title 狂乱攻击

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>在多兰纳尔与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    >>在楼上与 |cRXP_ENEMY_西拉尔特|r 对话，然后击败他，他会在0%血量时昏迷
    >>如果 |cRXP_ENEMY_西拉尔特|r 不在那里，等待他刷新
    >>在击败 |cRXP_FRIENDLY_西拉尔特|r 后，再次与 |cRXP_ENEMY_旅店老板凯达米尔|r 对话以获得 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .train 425447,1 >>|cRXP_WARN_使用|r |T134419:0|t|T236317:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] |cRXP_WARN_训练|r |T236317:0|t|T236317:0|t[狂乱攻击]
    >>|cRXP_WARN_注意：根据你的等级，这个任务单刷可能会相当困难。如果需要的话，可以找些帮手。|r
    .use 204716
    .target 旅店老板凯达米尔
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 无尽怒气 - 20 (西部荒野)
#title 无尽怒气

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀|cRXP_ENEMY_老瞎眼|r。拾取他的 |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r]
    >>|cRXP_ENEMY_老瞎眼|r|cRXP_WARN_在长滩上来回巡逻。如果你在长滩上看不到他，就等他刷新在最南边的|cRXP_ENEMY_鱼人|r营地|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r] |cRXP_WARN_来学习|r |T132347:0|t[无尽怒气]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 无尽怒气 - 16 (黑海岸)
#title 无尽怒气

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >>进入悬崖泉的纳迦洞穴
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>击杀 |cRXP_ENEMY_赛多拉克斯女士|r。拾取她的 |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r]
    >>|cRXP_ENEMY_塞多拉克斯女士|r |cRXP_WARN_是一个18级精英怪，周围还有其他怪物。你也可以选择去西部荒野获取，那里要容易得多|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r] |cRXP_WARN_来学习|r |T132347:0|t[无尽怒气]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 8 (艾尔文森林)
#title 毁灭打击

step << Warrior
    #season 2
    >>击杀|cRXP_ENEMY_狗头人矿工|r和|cRXP_ENEMY_狗头人隧道工|r，从它们身上拾取|T134168:0|t|T134168:0|t[|cRXP_LOOT_被砍下的狗头人的头|r]
    >>击杀 |cRXP_ENEMY_鱼人|r 和 |cRXP_ENEMY_鱼人士兵|r。拾取 |T134169:0|t[|cRXP_LOOT_被砍下的鱼人的头|r]
    >>击杀|cRXP_ENEMY_河爪幼崽|r和|cRXP_ENEMY_河爪斥候|r。从它们身上拾取|T134163:0|t[|cRXP_LOOT_被砍下的豺狼人的头|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob 狗头人隧道工
    .mob 狗头人矿工
    .mob 金牙
    .mob 鱼人
	.mob 鱼人士兵
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >>前往暴风城
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>与|cRXP_FRIENDLY_维多利亚·伍兹|r对话，上交|T134168:0|t[|cRXP_LOOT_被砍下的狗头人的头|r]，获得|T134455:0|t[怪物猎手的第一个符文碎片]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>与|cRXP_FRIENDLY_维科里亚·伍兹|r对话，上交|T134169:0|t[|cRXP_LOOT_被砍下的鱼人的头|r]，获得|T134455:0|t[怪物猎手的第二个符文碎片]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>与|cRXP_FRIENDLY_维多利亚·伍兹|r对话，上交|T134163:0|t[|cRXP_LOOT_被砍下的豺狼人的头|r]，获得|T134455:0|t[怪物猎手的第三个符文碎片]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_使用任意|r |T134455:0|t[怪物猎人符文碎片] |cRXP_WARN_来制作|r |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_使用|r |T134419:0|t|T135291:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_来训练|r |T135291:0|t|T135291:0|t[毁灭打击]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 6 (泰达希尔)
#title 毁灭打击

step << Warrior
    #season 2
    >>击杀|cRXP_ENEMY_夜刃豹|r或|cRXP_ENEMY_夜刃豹追踪者|r，拾取它们的|cRXP_LOOT_被砍下的老虎的头|r
    >>击杀|cRXP_ENEMY_斯特里吉德猫头鹰|r或|cRXP_ENEMY_斯特里吉德尖啸者|r，拾取它们的|cRXP_LOOT_被砍下的猫头鹰的头|r
    >>击杀|cRXP_ENEMY_蛛网潜伏者|r或|cRXP_ENEMY_蛛网毒牙蜘蛛|r，从它们身上拾取|cRXP_LOOT_被砍下的蜘蛛的头|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob 夜刃捕食者
    .mob Strigid Owl
    .mob 巨翼恶枭
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >>前往达纳苏斯
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_戴尔威娜|r 对话
    >>|cRXP_WARN_交上三颗|cRXP_LOOT_ 砍下来的脑袋|r 之后，你将获得|r |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .train 403475 >>|cRXP_WARN_使用|r |T134419:0|t|T135291:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_来训练|r |T135291:0|t|T135291:0|t[毁灭打击]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 6 (丹莫罗)
#title 毁灭打击

step << Warrior
    #season 2
    >>击杀|cRXP_ENEMY_雪怪|r，从它们身上拾取|cRXP_LOOT_被砍下的雪怪的爪子|r
    >>击杀|cRXP_ENEMY_霜鬃巨魔|r，从它们身上拾取|cRXP_LOOT_被砍下的巨魔的头|r
    >>击杀 |cRXP_ENEMY_石腭穴居人|r。拾取 |cRXP_LOOT_完好的穴居人之心|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob 雪怪幼崽
    .mob 雪怪
    .mob Frostmane Troll
    .mob 霜鬃猎头者
    .mob Frostmane Snowstrider
    .mob 霜鬃先知
    .mob Rockjaw Ambusher
    .mob 石腭击颅者
    .mob 石腭断骨者
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尼·钢关|r 对话
    >>|cRXP_WARN_上交三件物品后，你将获得|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .train 403475 >>|cRXP_WARN_使用|r |T134419:0|t|T135291:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_来训练|r |T135291:0|t|T135291:0|t[毁灭打击]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 2 (杜隆塔尔)
#title 乘胜追击


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .accept 77588 >>接受任务 体能的试炼 << Troll
    .accept 77582 >>接受任务 体能的试炼 << Orc
    .target 弗朗恩
step
    #season 2
    .goto Durotar,43.27,69.51
    >>拾取 |cRXP_PICK_隐藏的宝箱|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    >>|cRXP_WARN_绕过|r |cRXP_ENEMY_萨科斯|r |cRXP_WARN_跳下去拿宝箱|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗朗恩|r 对话
    .turnin 77588 >>交任务 体能的试炼 << Troll
    .turnin 77582 >>交任务 体能的试炼 << Orc
    .target 弗朗恩

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 2 (莫高雷)
#title 乘胜追击


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .accept 77651 >>Accept 深入荆棘
    .target 哈鲁特·雷角
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>拾取 |cRXP_PICK_刺背战利品宝箱|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 77651 >>交任务 深入荆棘
    .target 哈鲁特·雷角

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 乘胜追击 - 2 (提瑞斯法)
#title 乘胜追击

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .accept 77668 >>接受任务 失落的符文
    .target 丹纳尔·斯特恩
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>拾取洞穴内的 |cRXP_PICK_失落的藏宝|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>使用 |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .turnin 77668 >>交任务 失落的符文
    .target 丹纳尔·斯特恩

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂怒雷霆 - 2 (杜隆塔尔)
#title 狂怒雷霆

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>击杀 |cRXP_ENEMY_萨科斯|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob 萨科斯
    .train 403476,1
step
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂怒雷霆 - 10 (提瑞斯法)
#title 狂怒雷霆


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>击杀 |cRXP_ENEMY_吉尔加|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    >>|cRXP_WARN_这是一个7级精英怪|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂怒雷霆符文|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (奥格瑞玛)
#title 狂乱攻击


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_扎姆沙|r 和 |cRXP_FRIENDLY_格鲁阿克|r 对话
    +当|cRXP_ENEMY_格鲁阿克|r 变为敌对状态时将其击杀
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_扎姆沙|r 对话
    >>从她那里获得|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (雷霆崖)
#title 狂乱攻击


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 和 |cRXP_FRIENDLY_穆阿特|r 在灵魂高地对话
    +当 |cRXP_FRIENDLY_穆阿特|r 变为敌对时杀死他
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈塔里|r 对话
    >>从她那里获得|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 狂乱攻击 - 10 (提瑞斯法)
#title 狂乱攻击


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>与|cRXP_FRIENDLY_本尼|r 对话
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>与旅馆楼下的 |cRXP_FRIENDLY_蓝心|r 对话
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>击杀 |cRXP_ENEMY_蓝心|r，然后与楼上的 |cRXP_FRIENDLY_本尼|r 对话
    .gossipoption 110751 >>从她那里获得|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 8 (杜隆塔尔)
#title 毁灭打击


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>击杀 |cRXP_ENEMY_科卡尔苦工|r 和 |cRXP_ENEMY_科卡尔前锋|r。拾取他们的 |cRXP_LOOT_被砍下的半人马的头|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>击杀|cRXP_ENEMY_尘风鹰身人|r，并从它们身上拾取|cRXP_LOOT_被砍下的鹰身人的头|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>击杀 |cRXP_ENEMY_钢鬃野猪人|r。从它们身上拾取|cRXP_LOOT_被砍下的野猪人的头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦希|r 对话
    >>交还你收集的 |cRXP_LOOT_被砍下的巨魔的头|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 8 (莫高雷)
#title 毁灭打击


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>击杀 |cRXP_ENEMY_白鬃豺狼人|r。从它们身上拾取 |cRXP_LOOT_被砍下的豺狼人的头|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan 断矛
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取一颗 |cRXP_LOOT_被砍下的鹰身人的头|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 风怒唤风者
    .mob 风怒鹰身人
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r. 拾取并获得 |cRXP_LOOT_被砍下的野猪人的头|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob 刺背干涉者
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与血蹄村的 |cRXP_FRIENDLY_瓦泰亚|r 对话
    >>交还你收集的 |cRXP_LOOT_被砍下的巨魔的头|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁灭打击 - 8 (提瑞斯法)
#title 毁灭打击


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>击杀|cRXP_ENEMY_夜行蝙蝠|r，从它们身上拾取|cRXP_LOOT_被砍下的蝙蝠的头|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>击杀 |cRXP_ENEMY_腐皮豺狼人|r。从它们身上拾取 |cRXP_LOOT_被砍下的豺狼人的头|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>击杀 |cRXP_ENEMY_渔人|r。拾取他们的 |cRXP_LOOT_被砍下的鱼人的头|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与幽暗城的|cRXP_FRIENDLY_多拉克|r交谈
    >>交还你收集的 |cRXP_LOOT_被砍下的巨魔的头|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 8 (杜隆塔尔)
#title 血之狂暴


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>寻找并与 |cRXP_FRIENDLY_漫游的剑士|r 决斗。拾取他掉落的 |cRXP_PICK_盒子|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    >>|cRXP_ENEMY_他在整个区域巡逻，很难找到。路径点会带你经过他的已知刷新位置|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 8 (莫高雷)
#title 血之狂暴


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>寻找并与 |cRXP_FRIENDLY_漫游的剑士|r 决斗。拾取他掉落的 |cRXP_PICK_盒子|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    >>|cRXP_ENEMY_他在整个区域巡逻，很难找到。路径点会带你经过他的已知刷新位置|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 血之狂暴 - 8 (提瑞斯法)
#title 血之狂暴


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>寻找并与 |cRXP_FRIENDLY_漫游的剑士|r 决斗。拾取他掉落的 |cRXP_PICK_盒子|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    >>|cRXP_ENEMY_他在巴尼尔农场的正东方刷新|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>使用 |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 迅捷打击 - 12 (洛克莫丹)
#title 迅捷打击

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>击杀|cRXP_ENEMY_穴居怪|r，从它们身上拾取|cRXP_LOOT_头骨形晶簇|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob 碎石怪斥候
    .mob 碎石穴居人
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>击杀一名|cRXP_ENEMY_碎石怪击颅者|r
    >>|cRXP_WARN_战斗中它会给你狠狠一击，这将把 |cRXP_LOOT_头骨形晶簇|r 转化为 |r|T236489:0|t[|cRXP_LOOT_开裂的头骨形晶簇|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_使用|r |T236489:0|t|T134419:0|t[|cRXP_LOOT_开裂的头骨形晶簇|r] |cRXP_WARN_获得|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_迅捷打击符文|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_使用|r |T134419:0|t|T132394:0|t[|cRXP_FRIENDLY_迅捷打击符文|r] |cRXP_WARN_训练|r |T132394:0|t|T132394:0|t[迅捷打击]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 无尽怒气 - 15 (荒芜之地)
#title 无尽怒气


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>点击 |cRXP_PICK_部落战旗|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .fly Ratchet >>飞往棘齿城
    .target 迪弗拉克
step
    #completewith next
    .subzone 385 >>前往北方城堡
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>点击 |cRXP_PICK_联盟战旗|r
    >>击杀刷新的 |cRXP_ENEMY_石麦副官|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_无尽怒气符文|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r |T134419:0|t|T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r] |cRXP_WARN_来学习|r |T132347:0|t|T132347:0|t[无尽怒气]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 无尽怒气 - 15 (银松森林)
#title 无尽怒气


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_建议组队，因为你需要击杀一个17级精英怪|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>攻击 |cRXP_ENEMY_被蛛网缠住的受害者|r 并击杀刷新的 |cRXP_ENEMY_迷失的冒险者|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_无尽怒气符文|r]
    >>|cRXP_WARN_你必须快速击杀|r |cRXP_ENEMY_被网住的受害者|r |cRXP_WARN_因为它每几秒就会恢复生命值|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_使用|r |T134419:0|t|T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r] |cRXP_WARN_来学习|r |T132347:0|t|T132347:0|t[无尽怒气]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 迅捷打击 - 20 (黑海岸)
#title 迅捷打击

step << Warrior
    .goto 1439,44.081,20.739
    >>拾取骷髅的眼珠来获得 |T135129:0|t[多节鱼叉]
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_使用|r |T135129:0|t[多节鱼叉] |cRXP_WARN_将|cRXP_ENEMY_ |r帕克斯诺兹|r 的最大血量打到743
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>杀死 |cRXP_ENEMY_帕克斯诺兹|r。拾取他的 |T134419:0|t|cRXP_LOOT_[迅捷打击符文]|r
    >>|cRXP_WARN_小心，他是一个20级精英|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_使用|r |T134419:0|t|T132394:0|t[|cRXP_FRIENDLY_迅捷打击符文|r] |cRXP_WARN_训练|r |T132394:0|t|T132394:0|t[迅捷打击]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 血涌 - 40 (艾泽拉斯)
#title 血涌

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>前往阿拉希高地
step
    #completewith IllegibleReciple
    +|cRXP_WARN_你可能需要组队，因为你必须击杀37级以上的精英怪才能获得|r |T134419:0|t[|cRXP_FRIENDLY_血涌符文|r]
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>在激流堡内击杀 |cRXP_ENEMY_石拳食人魔|r。拾取他们的 |T237451:0|t[|cRXP_LOOT_模糊不清的食谱|r]
    >>|cRXP_WARN_使用|r |T237451:0|t[|cRXP_LOOT_模糊不清的食谱|r] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_或者你也可以在奥特兰克山脉击杀|cRXP_ENEMY_ |r破碎岭食人魔|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>接受任务 人人都会做饭
    .mob 石拳萨满祭司
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob 破碎岭虐待者
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob 破碎岭好战者
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>上山去找 |cRXP_FRIENDLY_斯康克|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯康克|r 对话
    .turnin 79624 >>交任务 人人都会做饭
    .accept 79677 >>接受任务 顺路买点菜
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >>前往法迪尔海湾
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>打开 |cRXP_PICK_密封的桶|r。从中拾取 |cRXP_LOOT_走私者的混合香料|r
    >>|cRXP_WARN_它位于沉船的底部。从最底部的巨大破洞游进去即可找到它|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>击杀 |cRXP_ENEMY_野生狮鹫|r。拾取他们的 |cRXP_LOOT_杂类腰腿肉|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>前往荒芜之地
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >>进入安戈洛要塞
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>点击 |cRXP_PICK_开过口的暗铁酒桶|r。从中拾取 |cRXP_LOOT_沁脾佳酿|r
    >>|cRXP_WARN_保持在最远距离以避免引到|r |cRXP_ENEMY_因弗努斯大使|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>前往悲伤沼泽
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>击杀 |cRXP_ENEMY_死亡狼蛛|r。拾取他们的 |cRXP_LOOT_粘性毒液|r
    >>|cRXP_WARN_它们可以在悲伤沼泽的东南区域找到|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>前往阿拉希高地
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>上山去找 |cRXP_FRIENDLY_斯康克|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯康克|r 对话
    .turnin 79677 >>交任务 顺路买点菜
    .accept 79678 >>接受任务 味道测试
    .timer 23,味道测试 剧情演出
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>在 |cRXP_ENEMY_斯康克|r 吃完饭后击败他
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯康克|r 对话
    .turnin 79678 >>交任务 味道测试
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_血涌符文|r] |cRXP_WARN_来训练|r |T236306:0|t[血涌]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 怒火聚焦 - 35 (阿拉希高地)
#title 怒火聚焦

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_在尝试获取|r |T134419:0|t[|cRXP_LOOT_怒火聚焦符文|r] |cRXP_WARN_之前，建议先寻找额外的队友，因为这需要同时击杀一个35级精英和2个小怪|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >>前往 |cFFfa9602阿拉希高地|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>击杀 |cRXP_ENEMY_枯木巨魔|r。拾取它们的 |T133057:0|t[|cRXP_LOOT_枯木槌|r]
    >>|cRXP_WARN_你也可以从拍卖行购买|r |T133057:0|t[|cRXP_LOOT_枯木锤|r] |cRXP_WARN_|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>进入枯木洞穴
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >>|cRXP_WARN_在洞穴内使用|r |T133057:0|t[|cRXP_LOOT_枯木锤|r] |cRXP_WARN_敲击|cRXP_PICK_铜锣|r|r
    .use 216483 >>|cRXP_WARN_这会召唤一个|cRXP_ENEMY_枯木巨魔|r（35级精英）以及2个额外的怪物|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>击杀|cRXP_ENEMY_枯木巨怪|r。拾取 |T134419:0|t[|cRXP_LOOT_怒火聚焦符文|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_LOOT_怒火聚焦符文|r] |cRXP_WARN_训练|r |T132345:0|t[怒火聚焦]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 援护 - 24 (千针石林)
#title 援护

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_你必须至少达到24级才能获得|r |T134419:0|t[|cRXP_FRIENDLY_援护符文|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_你必须训练|r |T132357:0|t[盾击] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_援护符文|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_你必须训练|r |T135358:0|t[斩杀] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_援护符文|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_你必须训练|r |T132357:0|t[盾击] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_援护符文|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_在前往千针石林之前，确保你有以下内容（它们的强度无关紧要）|r
    +单手武器
    +盾牌
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >>前往|cFFfa9602千针石林|r 的锈槌挖掘场
step
    #completewith next
    +|cRXP_WARN_确保你已装备好单手武器和盾牌|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_对|r 作战假人|cRXP_WARN_ |cRXP_ENEMY_施放|r |T135358:0|t[斩杀] ，然后移动到下一个|r |cRXP_ENEMY_作战假人|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_对|r 作战假人|cRXP_WARN_ |cRXP_ENEMY_施放|r |T136080:0|t[嘲讽] ，然后移动到下一个|r |cRXP_ENEMY_作战假人|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_对|r |cRXP_WARN_作战假人|r |cRXP_ENEMY_施放|r |T132357:0|t[盾击]
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>打开 |cRXP_PICK_战士的奖励|r 宝箱。拾取 |T134419:0|t[|cRXP_FRIENDLY_援护符文|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_援护符文|r] |cRXP_WARN_来学习|r |T132365:0|t[援护]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 集结呐喊 - 40 (荒芜之地)
#title 集结呐喊

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>前往荒芜之地
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>与荒芜之地的 |cRXP_FRIENDLY_漫游的剑士|r 对话
    >>在决斗中击败 |cRXP_ENEMY_漫游的剑士|r
    >>打开地上他掉落的 |cRXP_PICK_剑士的奖励|r。拾取战利品 |T134419:0|t[|cRXP_FRIENDLY_统领符文|r]
    >>注释|cRXP_WARN_：|cRXP_FRIENDLY_漫游的剑士|r 会在荒芜之地的许多地点刷新|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_统领符文|r] |cRXP_WARN_来学习|r |T132339:0|t[集结呐喊]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 狂暴
#name 狂暴 - 43 (菲拉斯)


step
    #completewith next
    .zone Feralas >>前往菲拉斯
step
    .goto Feralas,75,35.2,20 >>前往莫沙彻营地北边的戈杜尼前哨站洞穴
    .train 427081,1
step
    .goto Feralas,74.8,24.9
    >>进入洞穴，寻找43级的精英食人魔 奥克奇。击败他以获取 |T134419:0|t[|cRXP_FRIENDLY_狂放符文|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step
    .train 427081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_狂放符文|r] |cRXP_WARN_来学习|r |T132352:0|t[暴怒]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 破坏能手
#name 破坏能手 - 40 (辛特兰)

step
    #completewith next
    .zone The Hinterlands >>前往辛特兰
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>击杀地图西部区域的任何 |cRXP_ENEMY_枯木巨魔|r，直到从他们身上拾取到 |T133054:0|t|cRXP_LOOT_晶体之锤|r
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step
    .equip 16,220912 >>装备|T133054:0|t|cRXP_LOOT_晶体之锤|r 作为主手武器。继续击杀怪物，直到锤子碎裂并变为|T133054:0|t|cRXP_LOOT_破损的晶体之锤|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step
    >>右键点击 |T133054:0|t|cRXP_LOOT_破损的晶体之锤|r 拾取 |T134419:0|t[|cRXP_FRIENDLY_毁灭符文|r]
    .collect 220913,1 --Rune of the Demolition
    .train 427084,1
step
    .train 427084 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁灭符文|r] |cRXP_WARN_来学习|r |T132364:0|t[破坏能手]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#title 血之气息
#name 血之气息 - 50 (灼热峡谷)

step
    #completewith SlagPits
    .zone Searing Gorge >>前往灼热峡谷
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_要完成此任务你需要召唤并击杀一个拥有约1.2万生命值的50级精英魔像。虽然可以单刷但建议组队完成。为了召唤该魔像你需要从灼热峡谷的熔渣之池收集4个部件。不过如果你能找到其他人帮你召唤该首领则无需收集这些部件。在这种情况下你可以直接跳到第13步|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>从这里的洞穴进入熔渣之池
    .train 427076,1
step
    .goto 1427/0,-1257.200,-6764.300
    >>进入洞穴后沿着弯曲的路径前进。|cRXP_LOOT_湮灭者的右臂|r 躺在一堆箱子和木桶旁的地面上
    .collect 221256,1 --Right Arm of the Obliterator 1/1
    .train 427076,1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>跑向并穿过大门
    .train 427076,1
step
    .goto 1427/0,-1303.200,-6461.500,15 >>沿着前方的路径继续前进。在有一个巨大魔像躺在地上的大房间里，沿着坡道前往深坑的上层区域
    .train 427076,1
step
    .goto 1427/0,-1301.900,-6584.700
    >>拾取地上的|cRXP_LOOT_湮灭者的右足|r
    .collect 221258,1 --Right Foot of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1387.200,-6722.700,10 >>前往桥的南端
    .train 427076,1
step
    .goto 1427/0,-1428.600,-6656.800
    >>从桥上跳向熏火龙洞穴。从岩浆池旁边的地上拾取 |T231885:0|t|cRXP_LOOT_毁灭者的左臂|r
    .collect 221257,1 --Left Arm of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1271.900,-6553.500
    >>走到熏火龙洞穴的最深处，从地上拾取|cRXP_LOOT_湮灭者的左足|r
    .collect 221259,1
    .train 427076,1
step
	#completewith next
	+通过跳到脚部后面的岩石上并下线，来进行下线传送
	.link https://youtu.be/oBnDG1AWcxU >>https://youtu.be/oBnDG1AWcxU >> 点击这里参考
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>前往地图上标出的歼灭者头部。使用你收集的零件来召唤|cRXP_ENEMY_歼灭者伊奥达克斯|r 一个50级的精英怪
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1791.400,-6774.900
    >>击杀 |cRXP_ENEMY_毁灭者约达克斯|r 并拾取他的 |T134419:0|t[|cRXP_FRIENDLY_渴血符文|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .train 427076 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_渴血符文|r] |cRXP_WARN_来学习|r |T236276:0|t[血之气息]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#title 警戒
#name 警戒 - 46 (菲拉斯)

step
    #completewith next
    .zone Feralas >>前往菲拉斯
step
    .goto Feralas,77.6,62.0,30 >>前往痛苦深渊，这是菲拉斯的一个异种蝎巢穴。|cRXP_WARN_你需要击杀一个伤害极高的46级精英怪。如果你还没到50级建议寻找队伍|r
    .train 427078,1
step
    .goto Feralas,77.6,62.0
    >>寻找|cRXP_ENEMY_虫巢暴君|r，击杀它并拾取|T134419:0|t[|cRXP_FRIENDLY_看守符文|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427078,1
step
    .train 427078 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_看守符文|r] |cRXP_WARN_来学习|r |T236318:0|t[警戒]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#title 角斗姿态
#name 角斗姿态 - 45 (塔纳利斯 & 艾萨拉)

step
    #completewith theOldChamp
    +|cRXP_WARN_为了解锁|r |T236541:0|t[角斗姿态] |cRXP_WARN_你需要先击败那两个奖励|r |T132334:0|t[血之狂暴] 和 |T132339:0|t[集结呐喊] |cRXP_WARN_符文的流浪剑客。在继续之前请确保你已经完成了这些。如果你不确定在哪里可以找到他们请使用他们各自的符文指南|r
    +|cRXP_WARN_在进行此任务线时千万不要与任何人组队。目前有报告称组队经常会导致任务卡Bug从而无法完成|r
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>与加基森的 |cRXP_FRIENDLY_费斯巴斯·秘银|r 对话
    .accept 81682 >>接受任务 老冠军
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>前往艾萨拉
step
    .goto Azshara,27,61,40 >>寻找一条通向山顶的路径。它用部落旗帜标记
    .train 416002,1
step
    .goto Azshara,25.4,66.2
    >>与山路顶部的 |cRXP_FRIENDLY_卡金德|r 对话
    .turnin 81682 >>交任务 老冠军
    .accept 81697 >>接受任务 拔牙
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>寻找|cRXP_ENEMY_瑟鲁雷奥斯|r，一条50级的蓝龙。它在湖的北侧巡逻。拾取他的|T251962:0|t|cRXP_LOOT_卡金德之刃|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>回去找|cRXP_FRIENDLY_卡金德|r
    .turnin 81697 >>交任务 拔牙
    .accept 81801 >>接受任务 返回竞技场
    .target Kajind
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
step
    .goto Tanaris,51.6,27.6
    >>回到加基森并与 |cRXP_FRIENDLY_费斯巴斯·秘银|r 对话
    .turnin 81801 >>交任务 返回竞技场
    .accept 81877 >>接受任务 格斗之夜
    .target Fizbuz Mithril
step
    >>在加基森击败|cRXP_ENEMY_卡金德|r
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>在|cRXP_FRIENDLY_费斯巴斯·秘银|r 处交任务
    .turnin 81877 >>交任务 格斗之夜
    .target Fizbuz Mithril
step
    .train 416002 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_角斗士符文|r] |cRXP_WARN_来学习|r |T236541:0|t[角斗姿态]
    .use 220164
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 新鲜的螃蟹腿
#name 新鲜的螃蟹腿 - 55 (燃烧平原)

step
    #completewith next
    .zone Burning Steppes >>前往燃烧平原
step
    .train 440492,1
    .goto Burning Steppes,40.4,33.6
    .aura 459616 >>|cRXP_WARN_在黑石要塞击杀|cRXP_ENEMY_黑石兽人|r，直到获得|r |T132353:0|t[战争律动] |cRXP_WARN_buff|r
    .mob Blackrock Battlemaster
    .mob Blackrock Slayer
    .mob Blackrock Warlock
    .mob Blackrock Sorcerer
step
    .train 440492,1
    .goto Burning Steppes,39.549,27.828
    >>|cRXP_WARN_前往|r|cRXP_PICK_崇尊祭坛|r
    >>|cRXP_WARN_到达后，在聊天框输入"/敬礼"。这将召唤一个|r |cRXP_ENEMY_崇尊勇士|r
    >>击杀 |cRXP_ENEMY_崇尊勇士 |r，然后点击 |cRXP_PICK_崇尊祭坛|r
    .accept 84124 >>接受任务 勇气的传承
    .turnin 84124 >>交任务 勇气的传承
    .mob Revered Champion
step
    .train 440492 >>|cRXP_WARN_使用|r |T133747:0|t[|cRXP_LOOT_第一勇士符文|r] |cRXP_WARN_来学习|r |T237516:0|t[新鲜血肉]
    .use 226680
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 猝死
#name 猝死 - 57 (希利苏斯)

step
    #completewith next
    .zone Silithus >>前往希利苏斯
step
    .train 440494,1
    #loop
    .goto Silithus,55.4,53.2,60,0
    .goto Silithus,47.0,53.6,60,0
    .goto Silithus,45.0,74.0,60,0
    .goto Silithus,44.2,83.4,60,0
    .goto Silithus,33.6,69.2,60,0
    .goto Silithus,41.0,65.2,60,0
    .goto Silithus,34.8,33.6,60,0
    .goto Silithus,31.0,17.2,60,0
    .gossip 228611,2 >>|cRXP_WARN_在整个希利苏斯寻找一名|cRXP_FRIENDLY_ |r漫游的剑士|r
    >>|cRXP_WARN_与 |cRXP_FRIENDLY_漫游的剑士|r 对话。你必须选择中等或困难难度来获得符文|r
    >>|cRXP_WARN_你将被立即传送至一个小型平台上，随后与|r 孔苏|cRXP_ENEMY_ 的战斗将会开始|r
    >>|cRXP_WARN_它将施放看起来像顺劈的技能。当你看到那些动画时快速远离它们|r
    >>|cRXP_WARN_当他施放雷霆践踏时，你必须移动到平台边缘的小突起处，否则你会被击飞|r
    >>|cRXP_WARN_建议你也使用|r |T132342:0|t[乘胜追击] |cRXP_WARN_符文，因为你将在整个战斗中击杀小怪|r
    .unitscan Wandering Swordsman
step
    .train 440494,1
    >>|cRXP_WARN_击败 |cRXP_ENEMY_孔苏|r
    >>|cRXP_WARN_它将施放看起来像[顺劈]的技能。当你看到那些动画时快速远离它们|r
    >>|cRXP_WARN_当他施放雷霆践踏时，你必须移动到平台边缘的小突起处，否则你会被击飞|r
    >>|cRXP_WARN_一旦你成功了，接受并交任务|r
    .accept 84317 >>接受任务 午夜无明
    .turnin 84317 >>交任务 午夜无明
    .mob Titanic Watcher
step
    .train 440494 >>|cRXP_WARN_使用|r |T133739:0|t[|cRXP_LOOT_永恒流浪者的洞见|r] |cRXP_WARN_来学习|r |T132346:0|t[猝死]
    .use 226679
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 震荡波
#name 震荡波 - 60 (艾泽拉斯)

step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
step
    .train 440496,1
    .goto Tanaris,59.2,91.5
    >>|cRXP_WARN_沿着海岸线前往塔纳利斯南部|r
    >>点击地上的 |cRXP_PICK_半埋的机甲|r 和 |cRXP_PICK_暗门|r
    .accept 84135 >>接受任务 迷滩机器人
    .turnin 84135 >>交任务 迷滩机器人
    .accept 84137 >>接受任务 机械罗曼史
step
    .train 440496,1
    #completewith next
    .cast 459613 >>|cRXP_WARN_使用|r |T134731:0|t[制导浮力加速器] |cRXP_WARN_来提升游泳速度，持续4分钟。|r
    .use 226856
step
    .train 440496,1
    >>|cRXP_WARN_注释：此步骤没有箭头！|r
    >>|cRXP_WARN_你现在必须向南游到那座偏远的小岛并与|cRXP_FRIENDLY_ 塞巴斯蒂安·尤尔根斯|r 对话。你必须游过疲劳水域才能到达他身边。朝岛上的钻井平台方向游去即可找到他|r
    .turnin 84137 >>交任务 机械罗曼史
    .accept 84138 >>接受任务 冷淡之谊
    .target Sebastian Jurgens
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>前往冬泉谷
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_努米|r 对话
    .turnin 84138 >>交任务 冷淡之谊
    .accept 84146 >>接受任务 红口袋，蓝受心
    .target Numi
step
    #completewith next
    .zone Burning Steppes >>前往燃烧平原
step
    .train 440496,1
    .goto Burning Steppes,52.955,24.374
    >>点击地上的 |cRXP_PICK_大红口袋|r
    .turnin 84146 >>交任务 红口袋，蓝受心
    .accept 84211 >>接受任务 偷猎者窝点
    .target Red Bag
step
    .train 440496,1
    #loop
    .goto Burning Steppes,47.0,27.2,45,0
    .goto Burning Steppes,46.4,21.4,45,0
    .goto Burning Steppes,52.95,24.37,45,0
    >>击杀 |cRXP_ENEMY_黑石私运商|r 和 |cRXP_ENEMY_萨弗隆私运者|r。拾取它们的 |cRXP_LOOT_垂直复合补片加装器|r 和 |cRXP_LOOT_黄铜配制耐热法兰|r
    .complete 84211,1
    .complete 84211,2
    .mob Blackrock Bootlegger
    .mob Sulfuron Smuggler
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>前往冬泉谷
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_努米|r 对话
    .turnin 84211 >>交任务 偷猎者窝点
    .accept 84212 >>接受任务 返程长票
    .target Numi
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
step
    .train 440496,1
    >>|cRXP_WARN_再次返回南方远岛找 |cRXP_FRIENDLY_塞巴斯迪安·尤根斯|r|r
    .turnin 84212 >>交任务 返程长票
    .accept 84213 >>接受任务 朝来隙往
    .target Sebastian Jurgens
step
    .train 440496,1
    .zone Westfall >>|cRXP_WARN_跟随 |cRXP_FRIENDLY_塞巴斯迪安·尤根斯|r 到传送器。他会将你传送到西部荒野|r << Alliance
    .zone Tirisfal Glades >>|cRXP_WARN_跟随 |cRXP_FRIENDLY_塞巴斯迪安·尤根斯|r 到传送器。他会将你传送到提瑞斯法林地|r << Horde
    .target Sebastian Jurgens
step
    .train 440496,1
    >>|cRXP_WARN_找一个小队来帮你！你必须至少有一个坦克和一个治疗！|r
    >>与 |cRXP_FRIENDLY_塞巴斯迪安·尤根斯|r 对话来召唤 |cRXP_ENEMY_麦田傀儡V000-A|r
    >>击杀 |cRXP_ENEMY_麦田傀儡V000-A|r
    .complete 84213,1
    .mob Harvest Golem V000-A
step
    .train 440496,1
    >>点击地上的 |cRXP_PICK_机械臂|r
    .turnin 84213 >>交任务 朝来隙往
step
    .train 440496 >>|cRXP_WARN_使用|r |T133738:0|t[|cRXP_LOOT_预感与战斗远见|r] |cRXP_WARN_来学习|r |T236312:0|t[震荡波]
    .use 226678
]])
