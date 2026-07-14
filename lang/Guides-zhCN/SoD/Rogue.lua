if GetLocale() ~= "zhCN" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影之击 - 3 (艾尔文森林)
#title 暗影之击

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_打开地上的|cRXP_PICK_迪菲亚储物箱|r，从中拾取|r |T134419:0|t|T134419:0|t|cRXP_LOOT_[暗影打击符文]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|T132291:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_学习|r |T132291:0|t|T132291:0|t[暗影打击]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影之击 - 3 (丹莫罗)
#title 暗影之击

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >>进入霜鬃巨魔洞穴
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>前去找里面的|cRXP_PICK_霜鬃战利品箱|r
step
    .goto Dun Morogh,30.773,80.063
    >>打开地上的 |cRXP_PICK_Frostmane 战利品 道具|r。拾取它来获得 |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影之击 - 3 (幽影谷)
#title 暗影之击

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_沿着奥达希尔树的斜坡向上前进，然后跳到屋顶上|r
    >>|cRXP_WARN_该 |cRXP_PICK_Idol|r 位于屋顶顶部|r
    >>打开 |cRXP_PICK_Idol|r。拾取它来获得 |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r
    >>|cRXP_WARN_如果你难以跳上屋顶，试着在向下跑坡道时跳过栏杆|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 拔枪射击 - 8 (艾尔文森林)
#title 速射

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|t|T134327:0|t[搜索] |cRXP_ENEMY_河爪斥候|r和|cRXP_ENEMY_河爪幼崽|r。拾取它们身上的|T134327:0|t|T134327:0|t[|cRXP_LOOT_左下角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob 河爪豺狼人前锋
    .mob 矮小的河爪豺狼人
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Kobold Miners|r 和 |cRXP_ENEMY_Kobold Tunnelers|r。拾取它们来获得 |T134327:0|t[|cRXP_LOOT_上方-右地图碎片|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob 狗头人矿工
    .mob 狗头人隧道工
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Defias|r。拾取它们的 |T134327:0|t[|cRXP_LOOT_Top-左 Map Piece]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_注意：此物品也可从艾尔文森林的其他|cRXP_ENEMY_迪菲亚|r成员处获得|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob 迪菲亚强盗
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Murloc Foragers|r 和 |cRXP_ENEMY_Murloc Lurkers|r。拾取它们来获得 |T134269:0|t[|cRXP_LOOT_下方-右地图碎片|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_注释：这也可以从在艾尔文森林的任何其他 |cRXP_ENEMY_鱼人|r 获得|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob 鱼人士兵
    .mob 鱼人
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_使用任意|r |T134327:0|t|T134269:0|t[|cRXP_LOOT_地图碎片]|r |cRXP_WARN_将其组合成|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_艾尔文藏宝图|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_在箭头位置使用|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_艾尔文藏宝图|r] |cRXP_WARN_。这会触发一个|cRXP_PICK_埋藏的宝藏|r出现|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开 |cRXP_PICK_Buried 宝物|r。拾取它的战利品 |T134419:0|t[|cRXP_FRIENDLY_Rune of 经典怀旧服 道具|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t|T134536:0|t[|cRXP_FRIENDLY_速射符文|r] |cRXP_WARN_来训练|r |T134536:0|t|T134536:0|t[速射]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 拔枪射击 - 8 (丹莫罗)
#title 拔枪射击

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Dark Iron Spies|r。拾取他们的战利品 |T134327:0|t[|cRXP_LOOT_Bottom-左 Map Piece]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob 黑铁间谍
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t|T134327:0|t[搜索]|cRXP_ENEMY_霜鬃巨魔|r。从他们身上拾取|T134327:0|t|T134327:0|t[|cRXP_LOOT_右上角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob 霜鬃猎头者
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t|T134327:0|t[搜索] |cRXP_ENEMY_石颚碎颅者|r和|cRXP_ENEMY_石颚碎骨者|r。拾取它们身上的|T134327:0|t|T134327:0|t[|cRXP_LOOT_左上角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob 石腭击颅者
    .mob 石腭断骨者
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t|T134269:0|t[搜索]|cRXP_ENEMY_麻风侏儒|r。从他们身上拾取|T134269:0|t|T134269:0|t[|cRXP_LOOT_右下角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob 麻风侏儒
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用任意|r |T134327:0|t|T134269:0|t[|cRXP_LOOT_地图碎片]|r |cRXP_WARN_将其组合成|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_丹莫罗藏宝图|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_在小桥下使用|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_丹莫罗藏宝图|r] |cRXP_WARN_，这将触发一个|cRXP_PICK_埋藏的宝物|r出现|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开 |cRXP_PICK_Buried 宝物|r。拾取它的战利品 |T134419:0|t[|cRXP_FRIENDLY_Rune of 经典怀旧服 道具|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t|T134536:0|t[|cRXP_FRIENDLY_速射符文|r] |cRXP_WARN_来训练|r |T134536:0|t|T134536:0|t[速射]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 拔枪射击 - 8 (泰达希尔)
#title 拔枪射击

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往邪石山
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>击杀|cRXP_ENEMY_凶残的劣魔|r、|cRXP_ENEMY_捣蛋精灵|r和|cRXP_ENEMY_暗影精灵|r。从它们身上拾取|T134327:0|t|T134327:0|t[|cRXP_LOOT_左下角地图碎片]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>击杀|cRXP_ENEMY_木精|r，拾取它们身上的|T134327:0|t|T134327:0|t[|cRXP_LOOT_右上角地图碎片]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob 林精践踏者
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>击杀或|T133644:0|t|T134327:0|t[搜索]|cRXP_ENEMY_瘤背豺狼人|r，从它们身上拾取|T134327:0|t|T134327:0|t[|cRXP_LOOT_左上角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob 瘤背伏击者
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>杀死或 |T133644:0|t[搜索] |cRXP_ENEMY_Bloodfeather Harpies|r。拾取它们来获得 |T134327:0|t[|cRXP_LOOT_上方-左地图碎片|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用任意|r |T134327:0|t|T134269:0|t[|cRXP_LOOT_地图碎片]|r |cRXP_WARN_将其组合成|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_泰达希尔藏宝图|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_在鲁瑟兰村的树干内使用|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_泰达希尔藏宝图|r]|cRXP_WARN_，这将触发一个|cRXP_PICK_埋藏的宝物|r出现|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r，拾取其中的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_速射符文|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t|T134536:0|t[|cRXP_FRIENDLY_速射符文|r] |cRXP_WARN_来训练|r |T134536:0|t|T134536:0|t[速射]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 暗影屠杀 - 1 (艾尔文森林)
#title 暗影杀手

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_使用屋外的板条箱跳上屋顶，然后跑到烟囱后面|r
    >>打开|cRXP_PICK_生锈的锁箱|r。从中拾取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_杀手符文|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r] |cRXP_WARN_来学习|r |T236280:0|t[暗影杀手]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 暗影屠杀 - 1 (丹莫罗)
#title 暗影杀手

step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_爬上卡拉诺斯旅店的屋顶，然后跳到巨大啤酒桶顶部。跟随箭头|r
    >>打开 |cRXP_PICK_Rusty Lockbox|r。拾取它获得 |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r] |cRXP_WARN_来学习|r |T236280:0|t[暗影杀手]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 弱点射击 - 8 (暴风城)
#title 弱点射击

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>进入暴风城矮人区的切喉小巷
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_上楼进入房屋|r
    >>打开 |cRXP_PICK_Dusty 胸部|r。从中拾取 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_这样做会生成两个10级 |cRXP_ENEMY_Cut-throat Muggers|r，他们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_来训练|r |T135610:0|t[经典怀旧服 道具]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 弱点射击 - 8 (铁炉堡)
#title 弱点射击

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>打开 |cRXP_PICK_Dusty 胸部|r。从中拾取 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_这样做会生成两个10级 |cRXP_ENEMY_Cut-throat Muggers|r，他们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_来训练|r |T135610:0|t[经典怀旧服 道具]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 弱点射击 - 8 (泰达希尔)
#title 弱点射击

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>|T133644:0|t杀死或搜索 |cRXP_ENEMY_Gnarlpine 探路者|r 和 |cRXP_ENEMY_Gnarlpine Avengers|r。拾取他们的 |T134241:0|t[|cRXP_LOOT_Gnarlpine Stash 钥匙]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>打开 |cRXP_PICK_Gnarlpine Stash|r。拾取其中的 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_来训练|r |T135610:0|t[经典怀旧服 道具]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 刃舞 - 10 (西部荒野)
#title 刃舞

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Defias|r 遍布西部荒野。拾取它们来获得 |T133463:0|t[|cRXP_LOOT_Discreet Envelope|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>打开 |cRXP_PICK_Discreet Envelope|r。拾取它来获得 |T134237:0|t[|cRXP_LOOT_Equipment Stash 钥匙|r]
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>前往死亡矿井的后入口
    >>打开 |cRXP_PICK_Equipment Stash|r。拾取它来获得 |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r] |cRXP_WARN_来训练|r |T132350:0|t[刃舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 刃舞 - 16 (丹莫罗)
#title 刃舞

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Dark Iron Spies|r。拾取它们来获得 |T133875:0|t[|cRXP_LOOT_Dark Iron Lockbox|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob 黑铁间谍
    .train 400099,1
step << Rogue
    #season 2
    >>打开 |T133875:0|t[|cRXP_LOOT_Dark Iron Lockbox|r]。拾取它来获得 |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r]
    >>|cRXP_WARN_注释|r：你必须拥有 |T136058:0|t[开锁] |cRXP_WARN_来自你的训练师才能打开它|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r] |cRXP_WARN_来训练|r |T132350:0|t[刃舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 刃舞 - 16 (黑海岸)
#title 刃舞

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >>进入悬崖泉的纳迦洞穴
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>杀死 |cRXP_ENEMY_Stormscale Sirens|r 和 |cRXP_ENEMY_雷鳞御浪者|r。拾取它们来获得 |T134242:0|t[|cRXP_LOOT_Cliffspring 钥匙|r]
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>打开洞穴内的 |cRXP_PICK_Cliffspring 胸部|r。拾取它来获得 |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_刃舞符文|r] |cRXP_WARN_来训练|r |T132350:0|t[刃舞]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 毁伤 - 5 (艾尔文森林)
#title 经典怀旧服 道具

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[搜索] |cRXP_ENEMY_加瑞克·帕德弗特|r 获得 |T134331:0|t[阿刨的注释]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 203723,1 -- Cutty's Note (1)
    .mob 加瑞克·帕德弗特
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>在北郡山谷墙的正南方与 |cRXP_FRIENDLY_阿刨|r 对话
    >>他会给你 |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 经典怀旧服 道具 - 8 (丹莫罗)
#title 经典怀旧服 道具

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Dark Iron Spies|r。拾取他们的战利品 |T134331:0|t[Blackrat's 注释]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208205,1 --Blackrat's Note (1)
    .mob 黑铁间谍
    .train 400094,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>与 |cRXP_FRIENDLY_Blackrat|r 对话以获得 |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 军刀猛刺 - 12 (西部荒野)
#title 军刀猛刺

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[搜索] |cRXP_ENEMY_Defias 斥候|r 获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 军刀猛刺 - 12 (洛克莫丹)
#title 军刀猛刺

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >>|cRXP_WARN_登上洛克莫丹大坝的墙体，小心地下到大坝中央的平台上。跟随箭头|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>打开岩架上的 |cRXP_PICK_Stonemason's Toolbox|r。拾取其中的 |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >>点击 |cRXP_PICK_Escape 绳子|r 返回顶部
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 军刀猛刺 - 1 (黑海岸)
#title 军刀猛刺

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>游到有灯塔的小岛上
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>打开树干内的 |cRXP_PICK_Lighthouse Stash|r。拾取其中的 |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影之击 - 2 (杜隆塔尔)
#title 暗影之击


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .accept 77592 >>接受任务 悬崖之上 << Troll
    .accept 77583 >>接受任务 悬崖之上 << Orc
    .target 鲁瓦格
step
    #season 2
    .goto Durotar,43.27,69.51
    >>打开 |cRXP_PICK_Hidden Cache|r。拾取其中的 |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r
    >>|cRXP_WARN_绕过|r |cRXP_ENEMY_萨科斯|r |cRXP_WARN_跳下来到达宝箱|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁瓦格|r 对话
    .turnin 77592 >>交任务 悬崖之上 << Troll
    .turnin 77583 >>交任务 悬崖之上 << Orc
    .target 鲁瓦格
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影之击 - 2 (Tirisfal)
#title 暗影之击


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大卫|r 对话
    .accept 77669 >>接受任务 血色符文
    .target 大卫·提亚斯
step
    #season 2
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>杀死或扒窃 |cRXP_ENEMY_Scarlet Converts|r。拾取其中的 |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob 血色信徒
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大卫|r 对话
    .turnin 77669 >>交任务 血色符文
    .target 大卫·提亚斯
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 致命酝酿 - 25 (银松森林)
#title 致命酝酿


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>在银松森林点击 |cRXP_PICK_Dead 掉落|r
    .accept 78261 >>接受任务谢尔索斯号角
step
    #season 2
    #completewith next
    .zone 209 >>进入影牙城堡
    >>|cRXP_WARN_你必须单独完成下一部分！组队会阻止你获得所需的钥匙|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>潜行经过 |cRXP_ENEMY_雷希戈尔|r，与 |cRXP_FRIENDLY_亡灵哨兵阿达曼特|r 交谈，然后使用 |T132331:0|t[经典怀旧服 道具]。他会为你打开大门
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>潜行经过 |cRXP_ENEMY_雷希戈尔|r，与 |cRXP_FRIENDLY_巫师阿克鲁比|r 交谈，然后使用 |T132331:0|t[经典怀旧服 道具]。他会为你打开大门
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>对 |cRXP_ENEMY_戈梅拉|r 使用 |T133644:0|t[搜索] 获得 |T134243:0|t[|cRXP_LOOT_Sister's Half-钥匙|r]
    >>|cRXP_WARN_她位于底层的餐厅|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>对 |cRXP_ENEMY_戈菲尔|r 使用 |T133644:0|t[搜索] 获得 |T134244:0|t[|cRXP_LOOT_Brother's Half-钥匙|r]
    >>|cRXP_WARN_他位于第二层，在餐厅上方|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>对 |cRXP_ENEMY_戈梅拉|r 使用 |T133644:0|t[搜索] 获得 |T134243:0|t[|cRXP_LOOT_Sister's Half-钥匙|r]
    >>|cRXP_WARN_她位于底层的餐厅|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>返回外面的庭院并进入 兽栏。将两把钥匙结合以获得 |T237379:0|t[|cRXP_LOOT_双子钥匙|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>打开兽栏里的 |cRXP_PICK_Ornamented 胸部|r 获得 |cRXP_LOOT_Horn of Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>在银松森林点击 |cRXP_PICK_Dead 掉落|r
    .turnin 78261 >>交任务谢尔索斯号角
step
    #season 2
    #completewith next
    +|cRXP_WARN_你现在需要进入一个主城接收来自 *C* 的邮件|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .fly Undercity >>飞往幽暗城
    .target 卡洛斯·拉佐克
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>前往南海镇
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>飞往铁炉堡
    .target 达尔拉·哈瑞斯
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_进入幽暗城。检查你的邮箱中来自 *C* 的信件|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_进入铁炉堡。检查你的邮箱中来自 *C* 的信件。如果你在另一个主城执行，跳过此步骤|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_打开你的邮箱查看来自 *C* 的邮件（一旦送达）。准备好后飞回 Silverpine|r << Horde
    +|cRXP_WARN_打开你的邮箱查看来自 *C* 的邮件（一旦送达）。准备好后飞回南海镇，然后前往 Silverpine|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fly The Sepulcher>>飞往瑟伯切尔
    .target 迈克尔·加勒特
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Southshore >>飞往南海镇
    .target 格莱斯·瑟登
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>前往银松森林
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>在银松森林点击 |cRXP_PICK_Dead 掉落|r 获得 |T134419:0|t[|cRXP_FRIENDLY_致命阴谋符文|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of 致命酝酿|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 经典怀旧服 道具 - 10 (杜隆塔尔)
#title 经典怀旧服 道具


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>击杀或对 |cRXP_ENEMY_Kul Tiras Sailors|r 和 |cRXP_ENEMY_Kul Tiras Marines|r 使用 |T133644:0|t[搜索]。拾取他们的 |T134327:0|t[|cRXP_LOOT_Top-右 Map Piece|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
    .train 400095,1
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
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Razormane Quilboars|r 和 |cRXP_ENEMY_Razormane Scouts|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Bottom-右 Map Piece|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Hexed Trolls|r 和 |cRXP_ENEMY_Voodoo Trolls|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Bottom-左 Map Piece|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >>前往 骷髅石
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Burning Blade Orcs|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Top-左 Map Piece|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob 火刃狂热者
    .mob 火刃学徒
    .train 400095,1
step
    #season 2
    .use 207108 >>使用 |T134327:0|t[|cRXP_LOOT_Map Pieces|r] 来创建 |T134269:0|t[|cRXP_LOOT_杜隆塔尔藏宝图|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>在回音群岛最南方使用 |T134269:0|t[|cRXP_LOOT_杜隆塔尔藏宝图|r]
    >>拾取生成的 |cRXP_PICK_Buried 宝物|r 宝箱以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 经典怀旧服 道具|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_经典怀旧服 道具符文|r] |cRXP_WARN_来训练|r |T134536:0|t[经典怀旧服 道具]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 经典怀旧服 道具 - 10 (Tirisfal)
#title 经典怀旧服 道具


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Tirisfal Farmers|r 和 |cRXP_ENEMY_Tirisfal Farmhands|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Top-左 Map Piece|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Scarlet Warriors|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Top-右 Map Piece|r]
    >>|cRXP_WARN_Tirisfal 中的任何 Scarlet Humanoid 都能掉落 Map Piece|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Rot 隐藏 Gnolls|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Bottom-左 Map Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
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
    >>击杀或使用 |T133644:0|t[搜索] 对 |cRXP_ENEMY_Murlocs|r。拾取他们的 |T134327:0|t[|cRXP_LOOT_Bottom-右 Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>使用 |T134327:0|t[|cRXP_LOOT_Map Pieces|r] 来创建 |T134269:0|t[|cRXP_LOOT_提瑞斯法藏宝图|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>在桥下方使用 |T134269:0|t[|cRXP_LOOT_提瑞斯法藏宝图|r]
    >>拾取生成的 |cRXP_PICK_Buried 宝物|r 宝箱以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 经典怀旧服 道具|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_经典怀旧服 道具符文|r] |cRXP_WARN_来训练|r |T134536:0|t[经典怀旧服 道具]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 暗影杀手 - 10 (杜隆塔尔)
#title 暗影杀手


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>前往 尘风洞穴 东边的跳跃点
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>拾取 |cRXP_PICK_Rusty Lockbox|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r]
    >>|cRXP_WARN_你必须跳跃才能到达宝箱|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r] |cRXP_WARN_来学习|r |T236280:0|t[暗影杀手]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 暗影杀手 - 10 (Tirisfal)
#title 暗影杀手


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>前往阿加曼德磨坊的地下室
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>击杀 |cRXP_ENEMY_Wailing Ancestors|r 和 |cRXP_ENEMY_Rotting Ancestors|r。从他们身上拾取 |T134245:0|t[|cRXP_LOOT_Agamand 圣物 Coffer 钥匙|r]
    >>|cRXP_WARN_小心！这个地下室的小怪会动态刷新！|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>打开 |cRXP_PICK_Relic Coffer|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_杀手符文|r] |cRXP_WARN_来学习|r |T236280:0|t[暗影杀手]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 经典怀旧服 道具 - 8 (Tirisfal)
#title 经典怀旧服 道具


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>对 |cRXP_ENEMY_派瑞恩队长|r 使用 |T133644:0|t[搜索] 来获得 |T133385:0|t[|cRXP_LOOT_血色军官玺戒|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>前往 布瑞尔城镇大厅
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>使用 |T133385:0|t[|cRXP_LOOT_血色军官玺戒|r] 来创建 |T134328:0|t[|cRXP_LOOT_伪造的血色备忘录|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加米尔·诺瑞|r 对话来获得 |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r] |cRXP_WARN_来学习|r |T132304:0|t[经典怀旧服 道具]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 经典怀旧服 道具 - 10 (杜隆塔尔)
#title 经典怀旧服 道具


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >>前往尘风洞
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>对 |cRXP_ENEMY_Burning Blade Thugs|r 使用 |T133644:0|t[搜索] 来获得 |T134331:0|t[|cRXP_LOOT_来自 Ba'so 的注释|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ba'so|r 对话来获得 |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    >>|cRXP_WARN_他处于隐身状态!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r] |cRXP_WARN_来学习|r |T132304:0|t[经典怀旧服 道具]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 经典怀旧服 道具 - 8 (Tirisfal)
#title 经典怀旧服 道具


    --Rune of Between the Eyes

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
    >>对 |cRXP_ENEMY_Vile Fin Murlocs|r 使用 |T133644:0|t[搜索] 来获得 |T134241:0|t[|cRXP_LOOT_Shipwreck Cache 钥匙|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>拾取 |cRXP_PICK_Shipwreck Cache|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_来训练|r |T135610:0|t[经典怀旧服 道具]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 经典怀旧服 道具 - 8 (奥格瑞玛)
#title 经典怀旧服 道具


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>拾取 |cRXP_PICK_Dusty 胸部|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_它位于 暗巷区 的上层|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_来训练|r |T135610:0|t[经典怀旧服 道具]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 刃舞 - 15 (The Barrens)
#title 刃舞


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>对 |cRXP_ENEMY_Southsea Brigands|r 使用 |T133644:0|t[搜索] 来获得 |T132761:0|t[|cRXP_LOOT_Buccaneer's Matchbox|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>点击 Powder Keg。拾取 |cRXP_PICK_Southsea 战利品 Stash|r 来获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 刃舞|r]
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 刃舞|r] |cRXP_WARN_来训练|r |T132350:0|t[刃舞]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 军刀猛刺 - 15 (The Barrens)
#title 军刀猛刺


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_你的开锁技能必须至少达到80才能获得这个符文！|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>战利品 |cRXP_PICK_Stable Hand's Trunk|r 在马厩顶部以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    >>|cRXP_WARN_沿着山坡向上跑，然后跳到城堡城墙顶部。从那里你可以跳到马厩顶部|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r] |cRXP_WARN_来训练|r |T132375:0|t[军刀猛刺]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 军刀猛刺 - 15 (Silverpine)
#title 军刀猛刺

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>战利品 |cRXP_PICK_锈锈 胸部|r 靠近影牙城堡入口以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r]
    >>|cRXP_WARN_使用|r |T132307:0|t[疾跑] |cRXP_WARN_然后从桥上跳向宝箱|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 军刀猛刺|r] |cRXP_WARN_来训练|r |T132375:0|t[军刀猛刺]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#title 暗影步
#name 暗影步 - 30 (银松森林)

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .train 400101,1
    >>点击 |cRXP_PICK_死亡 掉落|r 地上的宝箱
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>接受任务 Bhossca之眼
step
    #completewith next
    .zone Tirisfal Glades >>旅行前往提瑞斯法林地的血色修道院
step
    >>|cRXP_WARN_打开|r |cRXP_PICK_Supply Locker|r |cRXP_WARN_在马厩内部以获得|r |T132665:0|t[血色新兵的制服]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >>进入血色修道院: |cRXP_WARN_Graveyard|r 地下城 |cRXP_WARN_独自|r
step
    >>对 |cRXP_ENEMY_血色占卜师|r 使用 |T133644:0|t[搜索] 以获得 |T134241:0|t[斯克利尔's 钥匙]
    >>|cRXP_WARN_利用|r |T132289:0|t[扰乱] |cRXP_WARN_来避免被发现|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>进入血色修道院: |cRXP_WARN_Library|r 地下城 |cRXP_WARN_独自|r
step
    #completewith next
    +|cRXP_WARN_跑向最后一个Boss前的走廊|r
step
    >>战利品 |cRXP_PICK_Personal Letterbox|r 在左边以获得 |T134331:0|t[|cRXP_LOOT_Confidential Message|r]
    .use 210955 >>|cRXP_WARN_使用|r |T132665:0|t[血色新兵的制服] |cRXP_WARN_来使NPC中立|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >>进入血色修道院: |cRXP_WARN_Graveyard|r 地下城 |cRXP_WARN_独自|r
step
    >>|cRXP_WARN_前往地下城内的室外区域，寻找位于右左两堵墙之间的长椅|r
    *|cRXP_WARN_在两边|r 使用 /坐下 （可在隐身时进行）在长椅上直到表情 |cRXP_WARN_"你 hear the sound of stone moving"|r 出现在聊天框。
    *之后前往靠近 |cRXP_WARN_右墙|r 的墓穴并打开 |cRXP_PICK_Stone Coffer|r 以获得 |T134242:0|t[Reliquary 钥匙]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>进入血色修道院: |cRXP_WARN_Library|r 地下城 |cRXP_WARN_独自|r
step
    #completewith next
    +|cRXP_WARN_跑向 "Gallery of Treasures"|r
step
    >>战利品 |cRXP_PICK_Padlocked Reliquary|r 在左边的第一个房间里以获得 |T134331:0|t[|cRXP_LOOT_Eye of Bhossca|r]
    .use 210955 >>|cRXP_WARN_使用|r |T132665:0|t[血色新兵的制服] |cRXP_WARN_来使NPC中立|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .train 400101,1
    >>点击 |cRXP_PICK_死亡 掉落|r 地上的宝箱
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>交任务 Bhossca之眼
step
    #completewith next
    +|cRXP_WARN_你现在需要进入一个主城来接收来自*C*的邮件|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .fly Undercity >>飞往幽暗城
    .target 卡洛斯·拉佐克
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>跑向南海镇
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>飞往铁炉堡
    .target 达尔拉·哈瑞斯
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_进入幽暗城。检查邮箱中来自*C*的信件|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_进入铁炉堡。检查邮箱中来自*C*的信件。如果你在另一个主城进行此操作，则跳过此步骤|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_打开邮箱并读取来自*C*的邮件。准备好后飞回Silverpine|r << Horde
    +|cRXP_WARN_打开邮箱并读取来自*C*的邮件。飞回南海镇，当准备好后前往Silverpine|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fly The Sepulcher>>飞往瑟伯切尔
    .target 迈克尔·加勒特
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Southshore >>飞往南海镇
    .target 格莱斯·瑟登
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>前往银松森林
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>点击 |cRXP_PICK_死亡 掉落|r 宝箱以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of 暗影步|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 暗影步|r] |cRXP_WARN_来学会|r |T132303:0|t[暗影步]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 飞镖投掷 - 30 (悲伤沼泽)
#title 飞镖投掷

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_你必须学会|r |T136162:0|t[解除陷阱] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_刺客符文|r]
    .collect 5060,1 >>|cRXP_WARN_你还需要|r |T134065:0|t[Thieves' 工具]
step
    #completewith next
    .zone Swamp of Sorrows >>前往悲伤沼泽
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_施放|r |T136162:0|t[解除陷阱] |cRXP_WARN_在|r |cRXP_PICK_飞镖陷阱|r |cRXP_WARN_树上|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>战利品 |cRXP_PICK_Conspicuous Cache|r 已生成以获得 |T134419:0|t[|cRXP_FRIENDLY_刺客符文|r]|r
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_刺客符文|r] |cRXP_WARN_来学会|r |T132330:0|t[飞镖投掷]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 敏锐大师 - 34 (荆棘谷)
#title 敏锐大师

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_你必须将你的|r |T136058:0|t[开锁] |cRXP_WARN_提升到至少125以获得|r |T132299:0|t[敏锐大师] |cRXP_WARN_符文|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >>进入库存仓库 (库尔森的洞窟)
step
    .train 425103,1
    #completewith next
    >>对|cRXP_ENEMY_Kurzen 皇家灰卫精英|r和|cRXP_ENEMY_Kurzen Subchiefs|r施放|T133644:0|t[搜索]以获得|cRXP_LOOT_营地囚笼钥匙|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>打开|cRXP_PICK_Kurzen Supply 恐惧哨兵的王庭重靴|r。拾取其中的|cRXP_LOOT_库尔森斗士制服|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[搜索]|cRXP_ENEMY_Kurzen 皇家灰卫精英|r和|cRXP_ENEMY_Kurzen Subchiefs|r以获得|cRXP_LOOT_营地囚笼钥匙|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >>退出洞穴。前往塔外的|cRXP_FRIENDLY_温德尔·玛瑟斯|r
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温德尔·玛瑟斯|r 在塔楼对话
    >>|cRXP_WARN_他大约3分钟后复活|r
    .destroy 216616 >>将|cRXP_LOOT_营地囚笼钥匙|r交给他
    .destroy 216617 >>将|cRXP_LOOT_库尔森斗士制服|r交给他
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>前往藏宝海湾
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿兰萨斯船长|r 对话
    >>她将给你|T133640:0|t[|cRXP_LOOT_阿兰萨斯船长的奖赏|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>打开|T133640:0|t[|cRXP_LOOT_阿兰萨斯船长的奖赏|r]获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r]和|T338666:0|t[|cRXP_FRIENDLY_加尼的护符|r]
    >>|cRXP_WARN_不要销毁|r |T338666:0|t[|cRXP_FRIENDLY_加尼的护符|r] |cRXP_WARN_因为它用于获取未来的符文|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_来训练|r |T132299:0|t[敏锐大师]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#title 闪转腾挪
#name 闪转腾挪 - 27 (千针石林)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_你必须将你的|r |T136058:0|t[开锁] |cRXP_WARN_升至至少45才能获得|r |T134919:0|t[闪转腾挪] |cRXP_WARN_符文|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >>进入伊索克营地的大帐篷
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>打开|cRXP_PICK_Sizable Stolen 保险箱|r。拾取其中的|T132597:0|t[|cRXP_LOOT_Large 保险箱|r]
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_对|r |T136058:0|t[|cRXP_WARN_Large 保险箱|r] |cRXP_LOOT_施放|r |T132597:0|t[开锁] |cRXP_WARN_来解锁它|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >>打开|T132597:0|t[|cRXP_LOOT_Large 保险箱|r]。拾取其中的|T132597:0|t[|cRXP_LOOT_Medium 保险箱|r]
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_对|r |T136058:0|t[|cRXP_WARN_Medium 保险箱|r] |cRXP_LOOT_施放|r |T132597:0|t[开锁] |cRXP_WARN_来解锁它|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >>打开|T132597:0|t[|cRXP_LOOT_Medium 保险箱|r]。拾取其中的|T132597:0|t[|cRXP_LOOT_Small 保险箱|r]
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_对|r |T136058:0|t[|cRXP_WARN_Small 保险箱|r] |cRXP_LOOT_施放|r |T132597:0|t[开锁] |cRXP_WARN_来解锁它|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >>打开|T132597:0|t[|cRXP_LOOT_小保险箱|r]。拾取战利品|T134419:0|t[|cRXP_FRIENDLY_左拳符文|r]
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_左拳符文|r] |cRXP_WARN_来训练|r |T134919:0|t[闪转腾挪]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP符文与书籍指南
 #subgroup 经典怀旧服 道具
 #title 专注攻击
 #name 专注攻击 - 34 (辛特兰)

 step
    >>|cRXP_WARN_你将需要|r |T136175:0|t[致盲] |cRXP_WARN_和|r |T133587:0|t[Blinding Powder] |cRXP_WARN_来获得|r |T236274:0|t[专注攻击] |cRXP_WARN_符文|r
    .train 2094 >>训练 |T136175:0|t[致盲]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>前往 |cFFfa9602辛特兰|r
step
    .goto The Hinterlands,72.76,52.91
    >>对|cRXP_ENEMY_Vilebranch 面罩|r施放|T136175:0|t[致盲],然后从|cRXP_PICK_蝙蝠的宝物|r中拾取|T134419:0|t[|cRXP_FRIENDLY_聚焦符文|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_聚焦符文|r] |cRXP_WARN_来训练|r |T236274:0|t[专注攻击]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 投机取巧
#name 投机取巧 - 40 (塔纳利斯)

step
    .train 921 >>|cRXP_WARN_你需要训练|r |T133644:0|t[搜索] |cRXP_WARN_来获得|r |T236285:0|t[投机取巧] |cRXP_WARN_符文|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_旅行到|r |cFFfa9602塔纳利斯|r
step
    #completewith next
    .subzone 1336 >>前往失落码头湾
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_对|r |cRXP_WARN_Southsea 海盗|r |cRXP_ENEMY_和|r |cRXP_WARN_南海海盗|r |cRXP_ENEMY_施放|r |T133644:0|t[搜索] |cRXP_WARN_直到你获得|r |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>打开|T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r并拾取|T133302:0|t|cRXP_LOOT_Precious Medalion|r
    .collect 221370,1 -- Precious Medalion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>与|cRXP_FRIENDLY_加贝|r对话来获得|T134419:0|t[|cRXP_FRIENDLY_犯禁符文|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_犯禁符文|r] |cRXP_WARN_来训练|r |T236285:0|t[投机取巧]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 卡纳基
#name 卡纳基 - 45 (诅咒之地)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_你必须将你的|r |T136058:0|t[开锁] |cRXP_WARN_升至至少225来获得|r |T236268:0|t[卡纳基] |cRXP_WARN_符文|r
step
    #completewith next
    .zone Blasted Lands >>前往|cFFfa9602诅咒之地|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>前往巨槌要塞前面的塔顶
step
    .goto Blasted Lands,45.27,16.52
    >>打开|cRXP_PICK_Abandoned Cache|r。击杀刷出的|cRXP_ENEMY_残忍的失落者|r(等级46)
    >>拾取战利品|T134419:0|t[|cRXP_FRIENDLY_Rune of 卡纳基|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of 卡纳基|r] |cRXP_WARN_来训练|r |T236268:0|t[卡纳基]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 经典怀旧服 道具
#title 盗贼的尊严
#name 盗贼的尊严 - 45 (艾泽拉斯)

step
    #optional
    .xp 45 >>|cRXP_WARN_你需要达到45级才能获得此符文|r
step
    #optional
    .train 400101 >>|cRXP_WARN_你必须已学习|r |T132303:0|t[暗影步] |cRXP_WARN_才能获得此符文|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_你必须已学习|r |T236270:0|t[致命酝酿] |cRXP_WARN_才能获得此符文|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_要开始此符文的任务，你需要先完成"拉文霍德庄园"任务以了解Ravenholdt盗贼阵营。要接受该任务，请与|r |cRXP_FRIENDLY_夜行者奥斯伯|r |cRXP_WARN_in TBC 道具|r << Alliance
    +|cRXP_WARN_为了开始此符文的任务，你需要完成"拉文霍德庄园"任务来了解Ravenholdt盗贼阵营。为了获得它，请与|r |cRXP_FRIENDLY_奥莫克|r |cRXP_WARN_在奥格瑞玛交谈|r << Horde
    .accept 6681 >>接受任务 拉文霍德庄园 << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>与 |cRXP_FRIENDLY_奥莫克|r 对话来获得 |T133460:0|t[|cRXP_LOOT_优美的信件|r]。使用它来接受任务
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>接受任务 Ravenholdt Manor
    .target 奥莫克
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>前往 拉文霍德庄园
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>朝 |cRXP_PICK_箱子|r 移动
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_法拉德|r 对话
    .turnin 6681 >>交任务 拉文霍德庄园
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_旅行到任何主要城市|r
    >>达纳苏斯
    >>铁炉堡
    >>暴风城
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_前往任意主城|r
    >>幽暗城
    >>雷霆崖
    >>奥格瑞玛
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_查看你的邮箱中来自 *法拉德* 的信件|r
    >>|cRXP_WARN_准备好后跳过此步骤|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>旅行至 |cFFfa9602希尔斯布莱德丘陵|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>前往 拉文霍德庄园
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_法拉德|r 对话
    .accept 80526 >>接受任务 愚弄我两次
    .turnin 80526 >>交任务 愚弄我两次
    .accept 80411 >>接受任务 卡兹多尔的护符
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>前往塔纳利斯
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>进入祖尔法拉克
    >>|cRXP_WARN_你不能在队伍中完成此符文的任务|r
step
    .goto Tanaris,38.69,20.20
    >>打开 |cRXP_PICK_Clay Vessels|r 以获得 |T134799:0|t[|cRXP_LOOT_Vile Concoctions|r]
    >>|cRXP_WARN_它们位于 祖尔法拉克 的巨魔帐篷中|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_朝|r |cRXP_ENEMY_Antu'sul的|r |cRXP_WARN_洞穴移动|r
step
    >>在大锅上使用 |T134799:0|t[|cRXP_LOOT_Vile Concoction|r]。|cRXP_WARN_不会破坏你的隐身|r
    >>趁老板分心时，拾取 |cRXP_PICK_Antu'Sul's Satchel|r 来获得 |T133724:0|t[|cRXP_LOOT_Offering of 骸骨|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_朝向 |cRXP_ENEMY_巫医祖穆拉恩|r 在墓地移动|r
step
    >>在 |cRXP_LOOT_巫医祖穆拉恩|r 旁边的大锅上使用你的第二个 |T134799:0|t[|cRXP_ENEMY_Vile Concoction|r]。|cRXP_WARN_不会破坏你的隐身|r
    >>趁他分心时，拾取 |cRXP_PICK_Zum'rahs Satchel|r 来获得 |T136232:0|t|cRXP_LOOT_亡者结界|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>装备刚刚拾取的 |T136232:0|t|cRXP_LOOT_亡者结界|r 饰品
    >>|cRXP_WARN_这将显示哪个|r |cRXP_PICK_浅墓|r |cRXP_WARN_需要被拾取|r
step
    >>拾取显示为蓝色光环的 |cRXP_PICK_浅墓|r 来获得 |T236304:0|t|cRXP_LOOT_Offering of Flesh|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>使用你刚刚收集的 |T236304:0|t[|cRXP_LOOT_Offering of Flesh|r] 与 |T133724:0|t[|cRXP_LOOT_Offering of 骸骨|r] 结合成 |T236305:0|t[|cRXP_LOOT_Blood 魔法 精华|r]
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>前往金字塔楼梯的底部并向你的右侧看。在墙的一侧你会看到一个小石块。跳跃到它上面，然后走到边缘
    >>在右侧的第二个木制阳台上，你会找到 |cRXP_PICK_Sandfury Cache|r。拾取它来获得 |T237274:0|t[|cRXP_LOOT_Hollow Emblem|r]
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>使用你刚刚拾取的 |T237274:0|t|cRXP_LOOT_Hollow Emblem|r 与 |T236305:0|t[|cRXP_LOOT_Blood 魔法 精华|r] 结合成 |T133572:0|t[|cRXP_LOOT_Emblem of 鲜血 魔法|r]
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>爬上楼梯到达金字塔顶部并拾取 |cRXP_PICK_受咒战箱|r 来获得 |T133313:0|t[|cRXP_LOOT_Talisman of Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>返回拉文霍德庄园
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_法拉德|r 对话
    .turnin 80411 >>Turn in The Talisman of Kazdor
    .accept 80453 >>Accept Best Laid Plans
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地下室与 |cRXP_FRIENDLY_萨恩·刀链|r 对话
    .turnin 80453 >>Turn in Best Laid Plans
    .accept 80454 >>Accept One Last Drop
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .goto Silverpine Forest,47.114,70.974
    >>点击 |cRXP_PICK_死亡 掉落|r chest
    .turnin 80454 >>Turn in One Last Drop
    .accept 80455 >>Accept Biding Our Time
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往 |cFFfa9602希尔斯布莱德丘陵|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>进入 拉文霍德庄园
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_法拉德|r 对话
    .turnin 80455 >>Turn in Biding Our Time
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Coterie|r] |cRXP_WARN_来训练|r |T236275:0|t[盗贼的尊严]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 猩红风暴
#name 猩红风暴 - 60 (西瘟疫之地)

step
    .train 415918,1
    .zone Western Plaguelands >>前往西瘟疫之地
step
    .train 415918,1
    #completewith next
    .subzone 190 >>前往壁炉谷
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>击杀或 |T133644:0|t[搜索] |cRXP_ENEMY_Scarlet Workers|r。拾取战利品 |cRXP_LOOT_Toolbox 钥匙|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>打开 |cRXP_PICK_Scarlet Toolbox|r。拾取 |cRXP_LOOT_Rusty Crowbar|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>前往壁炉谷中央的塔顶。打开那里的 |cRXP_PICK_Marked 恐惧哨兵的王庭重靴|r。拾取 |T133640:0|t[|cRXP_LOOT_Hidden Bundle|r] 并打开它来拾取 |T134237:0|t[|cRXP_LOOT_Safe 箱子 钥匙|r]
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>前往壁炉谷第二座塔中层（位于城市北侧）。使用 |T134237:0|t[|cRXP_LOOT_Safe 箱子 钥匙|r] 打开 [|cRXP_PICK_Belavus' Safe 箱子|r] 并拾取 |T134419:0|t[|cRXP_FRIENDLY_Rune of the 经典怀旧服 道具|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the 经典怀旧服 道具|r] |cRXP_WARN_来训练|r |T135315:0|t[经典怀旧服 道具]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 刀扇
#name 刀扇 - 55 (冬泉谷)

step
    .train 436609,1
    .zone Winterspring >>旅行到冬泉谷
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>打开 |cRXP_PICK_Wooden 胸部|r。拾取 |T134419:0|t[|cRXP_FRIENDLY_万刀符文|r]
    >>|cRXP_WARN_打开 |cRXP_PICK_Wooden 胸部|r 时，按照以下顺序选择选项:|r
    >>|cRXP_WARN_霜刃豹|r
    >>|cRXP_WARN_Owl|r
    >>|cRXP_WARN_Bear|r
    >>|cRXP_WARN_Owl|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_万刀符文|r] |cRXP_WARN_来训练|r |T236273:0|t[刀扇]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 短枪射击
#name 短枪射击 - 60 (东瘟疫之地)

step
    .train 415922,1
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>打开遍布 Try's Hand 的 |cRXP_LOOT_Scarlet Footlockers|r，直到拾取到 |cRXP_LOOT_Sending Signal|r
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_接下来的步骤中，你必须按正确的顺序点击四个 |cRXP_PICK_Sending Pillars|r。点击一个后，你会被随机传送到不同的地方。在点击下一个之前，确保你在正确的所在地区！|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>点击第一个 |cRXP_PICK_Sending 柱子|r |cRXP_WARN_在圣光之愿礼拜堂后面|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>点击第二个 |cRXP_PICK_Sending 柱子|r |cRXP_WARN_在达隆郡|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>点击第三个 |cRXP_PICK_Sending 柱子|r |cRXP_WARN_在北谷|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>点击第四个 |cRXP_PICK_Sending 柱子|r |cRXP_WARN_在恐惧谷|r
step
    .train 415922,1
    >>|cRXP_WARN_进入房屋|r
    >>打开地上的 |cRXP_PICK_Adon's Trunk|r。拾取战利品 |T134419:0|t[|cRXP_LOOT_Rune of the Swashbuckler|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Swashbuckler|r] |cRXP_WARN_来训练|r |T134538:0|t[短枪射击]
]])
