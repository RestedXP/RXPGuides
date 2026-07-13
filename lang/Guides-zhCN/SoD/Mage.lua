if GetLocale() ~= "zhCN" then return end
if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 冰枪术 - 2 (艾尔文森林)
#title 冰枪术
<< Human Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获取|r |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_因为这是获取|r |T133736:0|t[理解入门] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >>前往艾尔文森林
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>进入北郡修道院
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>上楼去找 |cRXP_FRIENDLY_凯尔登·布雷门|r
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯尔登·布雷门|r 对话
    .accept 77620 >>接受任务 法术研究
    .target 凯尔登·布雷门
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>离开北郡修道院
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>击杀|cRXP_ENEMY_迪菲亚暴徒|r。拾取它们的 |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NNGABIIHGQSU]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob 迪菲亚暴徒
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 冰枪术]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>进入北郡修道院
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>上楼去找 |cRXP_FRIENDLY_凯尔登·布雷门|r
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯尔登·布雷门|r 对话
    .turnin 77620 >>交任务 法术研究
    .target 凯尔登·布雷门
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 冰枪术 - 2 (丹莫罗)
#title 冰枪术

<< Gnome Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获取|r |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_因为这是获取|r |T133736:0|t[理解入门] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >>前往 丹莫罗
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .accept 77667 >>接受任务 法术研究
    .target 玛瑞克·斯托纳尔
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >>离开安威玛尔
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>打开|cRXP_PICK_石颚储物箱|r。拾取|T134939:0|t|cRXP_FRIENDLY_[法术笔记：NNGABIIHGQSU|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 冰枪术]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >>进入安威玛尔
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话
    .turnin 77667 >>交任务 法术研究
    .target 玛瑞克·斯托纳尔
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 冰枪术 - 2 (杜隆塔尔)
#title 冰枪术

<< Troll Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获取|r |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_因为这是获取|r |T133736:0|t[理解入门] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .accept 77643 >>接受任务 法术研究
    .target 迈安
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>进入燃烧刃洞穴
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>前去找 |cRXP_PICK_进水的藏宝箱|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>在洞穴内的水下打开 |cRXP_PICK_浸水的藏宝箱|r。拾取 |T134939:0|t|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 冰枪术]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>退出燃烧刃洞穴
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .turnin 77643 >>交任务 法术研究
    .target 迈安
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 冰枪术 - 2 (提瑞斯法林地)
#title 冰枪术
<< Undead Mage SoD


step
    +|cRXP_WARN_你必须至少达到2级才能获取|r |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_因为这是获取|r |T133736:0|t[理解入门] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 冰枪术] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>进入丧钟镇的礼拜堂
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r 对话
    .accept 77671 >>接受任务 法术研究
    .target 伊莎贝拉
    .xp <2,1
step
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
    >>击杀|cRXP_ENEMY_血色新兵|r。拾取它们的 |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NNGABIIHGQSU]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob 血色新兵
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 冰枪术]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>进入丧钟镇的礼拜堂
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r 对话
    .turnin 77671 >>交任务 法术研究
    .target 伊莎贝拉
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 再生 - 12 (西部荒野)
#title 再生

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到12级才能在西部荒野独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>前往暴风城
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>进入匹斯特的药剂店
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_凯拉·布舍尔|r 对话
    >>|cRXP_BUY_从她那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 凯拉·布舍尔
    .train 401767,1
step
    #completewith next
    .zone Westfall >>前往西部荒野
    .train 401767,1
step
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>击杀 |cRXP_ENEMY_迪菲亚抢劫者|r。拾取它们的 |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸部 - 再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 再生 - 13 (洛克莫丹)
#title 再生

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到13级才能在洛克莫丹独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往铁炉堡
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>进入 |cRXP_FRIENDLY_吉恩|r 的房子
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_吉恩|r 对话
    >>|cRXP_BUY_从她那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 吉恩
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>前往洛克莫丹
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >>进入帐篷
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>打开 |cRXP_PICK_一堆遭窃的书|r。从中拾取 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：NIZHGAES|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸部 - 再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 再生 - 12 (荒芜之地)
#title 再生

<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到12级才能在荒芜之地独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师瓦巴恩|r 对话
    >>|cRXP_BUY_从拍卖行购买一个|r |T134237:0|t[科卡尔宝箱钥匙] |cRXP_BUY_|r
    >>|cRXP_WARN_这会在之后为你节省几分钟|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师斯塔比|r 对话
    >>|cRXP_BUY_从拍卖行购买一个|r |T134237:0|t[科卡尔宝箱钥匙] |cRXP_BUY_|r
    >>|cRXP_WARN_这会在之后为你节省几分钟|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>前往贫瘠之地
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与|cRXP_FRIENDLY_哈拉玛|r 对话
    >>|cRXP_BUY_从他那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔召雷师|r。拾取它们的|T134237:0|t[科卡尔宝箱钥匙]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>打开地上的 |cRXP_PICK_科卡尔的战利品|r。拾取 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：NIZHGAES|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|T132869:0|t[|cRXP_FRIENDLY_法术笔记：NIZHGAES|r] |cRXP_WARN_训练|r |T132869:0|t|T132869:0|t[再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 再生 - 12 (银松森林)
#title 再生
<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到12级才能在银松森林独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>前往幽暗城
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯·莫丹|r 对话
    >>|cRXP_BUY_从他那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>击杀 |cRXP_ENEMY_达拉然学徒|r。拾取它们的 |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：NIZHGAES|r] |cRXP_WARN_训练|r |T132869:0|t[再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 寒冰指 - 10 (艾尔文森林)
#title 寒冰指

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到10级才能在艾尔文森林独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>前往暴风城
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>进入匹斯特的药剂店
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_凯拉·布舍尔|r 对话
    >>|cRXP_BUY_从她那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 凯拉·布舍尔
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>前往艾尔文森林
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>击杀|cRXP_ENEMY_霍格|r。拾取他的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan 霍格
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸甲 - 寒冰指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 寒冰指 - 5 (丹莫罗)
#title 寒冰指
<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到5级才能在丹莫罗独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往铁炉堡
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>进入 |cRXP_FRIENDLY_吉恩|r 的房子
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_吉恩|r 对话
    >>|cRXP_BUY_从她那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 吉恩
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>前往 丹莫罗
    .train 401765,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>击杀|cRXP_ENEMY_菲欧迪|r。拾取它的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    >>|cRXP_WARN_虽然 |cRXP_ENEMY_菲欧迪|r 显示为精英，但他的生命值、伤害和护甲属性与一般的小怪相同|r
    >>|cRXP_WARN_小心，他会施放|r |T132337:0|t[冲锋] |cRXP_WARN_（自身瞬发：提高移动速度3秒，命中后造成35-80点近战伤害。仅可在远程距离施放）|r
    >>|cRXP_WARN_注意：|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_也会从丹莫罗的所有稀有怪物身上掉落，包括|cRXP_ENEMY_瓦加什|r，|cRXP_ENEMY_癞爪|r和|r |cRXP_ENEMY_冰须|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀|cRXP_ENEMY_瓦加什|r。拾取他的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    >>|cRXP_WARN_注意：|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_也会从丹莫罗的所有稀有怪物身上掉落，包括|cRXP_ENEMY_菲欧迪|r，|cRXP_ENEMY_癞爪|r和|r |cRXP_ENEMY_冰须|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob 瓦加什
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸甲 - 寒冰指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 寒冰指 - 8 (提瑞斯法林地)
#title 寒冰指
<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到8级才能在提瑞斯法林地独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>前往幽暗城
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯·莫丹|r 对话
    >>|cRXP_BUY_从他那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>去找 |cRXP_ENEMY_吉尔加|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>击杀|cRXP_ENEMY_吉尔加|r。拾取他的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸甲 - 寒冰指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 寒冰指 - 8 (杜隆塔尔)
#title 寒冰指


step
    +|cRXP_WARN_你应该至少达到8级才能在杜隆塔尔独自获得|r |T133815:0|t[铭刻胸部 - 再生] |cRXP_WARN_|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_霍苏斯|r 对话
    >>|cRXP_BUY_从他那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 霍苏斯
    .train 401765,1
step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>击杀|cRXP_ENEMY_扎拉赞恩|r。拾取他的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob 扎拉赞恩
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>击杀|cRXP_ENEMY_费滋尔·黑爪|r。拾取他的|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob 费索·暗雷
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：IGBHNHZNAI]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸甲 - 寒冰指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 燃尽 - 6 (丹莫罗)
#title 燃尽

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到6级才能在丹莫罗独自获得|r |T132686:0|t[铭刻胸甲 - 燃尽] |cRXP_WARN_|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>前往 丹莫罗
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_寻找其他法师或术士在|cRXP_ENEMY_ 急冻人穴居人|r 附近或在综合聊天中（输入/1进入聊天）|r
    >>|cRXP_WARN_对|r冰冻的石腭怪|cRXP_WARN_ |cRXP_ENEMY_施放|r |T135812:0|t[火球术] ，叠加一层|r |T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层以击杀|cRXP_ENEMY_冰冻的石腭怪|r。拾取它|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：燃尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术说明：燃尽]|r |cRXP_WARN_来学习|r |T132686:0|t[铭刻胸甲 - 燃尽]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 燃尽 - 6 (艾尔文森林)
#title 燃尽

<< Alliance Mage SoD

step
    +|cRXP_WARN_你应该至少达到6级才能在艾尔文森林独自获得|r |T132686:0|t[铭刻胸甲 - 燃尽] |cRXP_WARN_|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>前往艾尔文森林
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_寻找其他法师或术士在|cRXP_ENEMY_ 冰冻渔人|r 附近或在综合聊天中（输入/1进入聊天）|r
    >>|cRXP_WARN_施放|r |T135812:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_冰冻渔人|r上，以叠加一层|r |T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层以击杀|cRXP_ENEMY_冰冻渔人|r。拾取它获得|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：燃尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术说明：燃尽]|r |cRXP_WARN_来学习|r |T132686:0|t[铭刻胸甲 - 燃尽]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 燃尽 - 6 (杜隆塔尔)
#title 燃尽

<< Horde Mage SoD

step
    +|cRXP_WARN_你应该至少达到6级才能在杜隆塔尔独自获得|r |T132686:0|t[铭刻胸甲 - 燃尽] |cRXP_WARN_|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_ 被冻结的螯虾人|r 附近寻找其他法师、术士或萨满，或在综合频道中（输入 /1）|r
    >>|cRXP_WARN_施放|r |T135812:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_被冻结的螯虾人|r上，以叠加一层|r |T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层以击杀|cRXP_ENEMY_被冻结的螯虾人|r。拾取它获得|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：燃尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术说明：燃尽]|r |cRXP_WARN_来学习|r |T132686:0|t[铭刻胸甲 - 燃尽]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 燃尽 - 6 (提瑞斯法林地)
#title 燃尽

<< Horde Mage SoD


step
    +|cRXP_WARN_你应该至少达到6级才能在提瑞斯法林独自获得|r |T132686:0|t[铭刻胸甲 - 燃尽] |cRXP_WARN_|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_寻找其他法师或术士在|cRXP_ENEMY_ 冰冻渔人|r 附近或在综合聊天中（输入/1进入聊天）|r
    >>|cRXP_WARN_施放|r |T135812:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_冰冻渔人|r上，以叠加一层|r |T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层以击杀|cRXP_ENEMY_冰冻渔人|r。拾取它获得|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：燃尽]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术说明：燃尽]|r |cRXP_WARN_来学习|r |T132686:0|t[铭刻胸甲 - 燃尽]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 启迪 - 8 (艾尔文森林)
#title 启迪

<< Alliance Mage SoD


step
    +|cRXP_WARN_你必须至少达到8级才能获取|r |T133815:0|t[铭刻胸部 - 启迪] |cRXP_WARN_因为这是获取|r |T136071:0|t[变形术] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 启迪]之前，你需要先提升更多等级|r
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>前往艾尔文森林
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>进入闪金镇旅馆。上楼
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
    .train 118 >>学习 |T136071:0|t[变形术]
    .target 扎尔迪玛·维夫希尔特
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>对以下奇特的小动物施放 |T136071:0|t[变形术]：|cRXP_ENEMY_瞪羚|r，|cRXP_ENEMY_蛆虫|r，|cRXP_ENEMY_鹦鹉|r，|cRXP_ENEMY_火甲虫|r，|cRXP_ENEMY_山羊|r，|cRXP_ENEMY_幼虫|r 和 |cRXP_ENEMY_猫|r。随后等待剧情演出结束
    >>打开地上的|cRXP_PICK_法术笔记|r。拾取|T134332:0|t|cRXP_LOOT_[阿祖拉学徒笔记]|r
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>使用|T134332:0|t|cRXP_LOOT_[阿祖拉学徒笔记]|r 来创建 |T134332:0|t|cRXP_FRIENDLY_[法术笔记：启迪]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_使用|r |T134332:0|t|cRXP_FRIENDLY_[法术笔记：启迪]|r |cRXP_WARN_来学会|r |T133815:0|t[铭刻胸甲 - 启迪]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 启迪 - 8 (提瑞斯法林地)
#title 启迪

<< Horde Mage SoD

step
    +|cRXP_WARN_你必须至少达到8级才能获取|r |T133815:0|t[铭刻胸部 - 启迪] |cRXP_WARN_因为这是获取|r |T136071:0|t[变形术] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 启迪]之前，你需要先提升更多等级|r
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>前往提瑞斯法林地
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>进入布瑞尔旅馆。上楼
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_凯恩·火歌|r对话
    .train 118 >>学习 |T136071:0|t[变形术]
    .target 凯恩·火歌
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>对 |cRXP_ENEMY_古怪的甜瓜|r 施放 |T136071:0|t[变形术]，然后等待剧情演出
    >>拾取地上的|T134332:0|t|cRXP_LOOT_[药剂师笔记]|r
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>使用 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r 来创建 |T134332:0|t|cRXP_FRIENDLY_[法术笔记：启迪]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_使用|r |T134332:0|t|cRXP_FRIENDLY_[法术笔记：启迪]|r |cRXP_WARN_来学会|r |T133815:0|t[铭刻胸甲 - 启迪]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP符文与书籍指南
<<Alliance Mage SoD
#subgroup 腿部/靴子/头盔
#name Icy Veins/法术强度/深度冻结 - 40 (艾泽拉斯)
#title Icy Veins & 法术强度 & 深度冻结

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >>前往 |cFFfa9602暴风城|r
    .cast 3561 >>|cRXP_WARN_如果你有|r |T134419:0|t[传送符文] 使用 [传送：暴风城]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >>从 |cRXP_FRIENDLY_施法材料、魔法货物、卷轴与药水商人|r 处购买 |T134419:0|t[传送符文]。|cRXP_WARN_ 这将大大缩短你的赶路时间。|r
    >>|cRXP_WARN_如果你不需要，可以手动跳过此步骤。|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >>|cRXP_WARN_检查一下你的银行，看看有没有之前存进去的书籍。|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >>|cRXP_WARN_强烈建议维修装备，因为我们将会死过去|r
    >>|cFFFF0000如果你不想死过去，可以手动跳过此步骤|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>点击位于 |cRXP_PICK_艾尔文森林书架上的 |r 的 |cFFfa9602图书馆书籍|r，以获得 |T133744:0|t[大法师塞欧克瑞图斯的研究日志]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>如果你|cRXP_WARN_在|r|cFFfa9602艾尔文森林|r，步行前往|cFFfa9602西部荒野|r
    .fly Westfall >>如果你|cFFfa9602不在|r|cRXP_WARN_艾尔文森林|r，坐飞机前往|cFFfa9602西部荒野|r |r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>点击 |cRXP_PICK_西部荒野旅店桌子上|r 的 |cFFfa9602侏儒魔典|r 以获得 |T133744:0|t[诺莫瑞根的鲁米：全集]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>|cFFfa9602坐飞机|r 前往 |cRXP_WARN_西部荒野|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>点击 |cRXP_PICK_西部荒野月溪镇小房子的炼金术柜子上|r 的 |cFFfa9602法术书|r 以获得 |T133733:0|t[蛊惑与魅惑。]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>前往 |cFFfa9602暮色森林|r
    .fly Westfall >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602西部荒野|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>点击 |cRXP_PICK_在暮色森林晨光之林墓穴的炼金术桌上|r 的 |cFFfa9602书籍|r 以获得 |T133738:0|t[侵犯人体的罪行。]
    >>|cRXP_WARN_建议跑到地下墓穴的尽头再死。此外，你或许应该考虑组队。|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
    .fly Swamp of Sorrows >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602悲伤沼泽|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>击杀 |cRXP_ENEMY_迷失者猎人|r，|cRXP_ENEMY_失落定居者|r，|cRXP_ENEMY_失落者厨师|r 和 |cRXP_ENEMY_失落者先知|r。拾取它们的 |cRXP_LOOT_|T237379:0|t[锈蚀的笼子钥匙]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>点击 |cRXP_PICK_锈蚀的笼子|r，以获取书籍 |T133742:0|t[守旧者的恶魔宠物照护指南]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>点击 |cRXP_PICK_书籍|r 获得 |T133738:0|t[血红咒法]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>前往|cFFfa9602诅咒之地|r
    .fly Blasted Lands >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602诅咒之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>点击 |cRXP_PICK_书籍|r 获得 |T133736:0|t[咒术师魔典]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>前往 |cFFfa9602荆棘谷|r
    .fly Stranglethorn Vale >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602荆棘谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>点击板凳上的 |cRXP_PICK_研究笔记|r 以获得书籍 |T237162:0|t[蜥蜴：石化何必怕？]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>前往 |cFFfa9602灼热峡谷|r
    .fly Searing Gorge >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602灼热峡谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>点击 |cRXP_PICK_书籍|r 获得 |T133743:0|t[巨石设计录]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>前往 |cFFfa9602灼热峡谷|r
    .fly Searing Gorge >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602灼热峡谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>点击 |cRXP_PICK_书籍|r 获得 |T133743:0|t[巨石设计录]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
    .cast 3562 >>|cRXP_WARN_如果你有|r |T134419:0|t[传送符文] 使用 [传送：铁炉堡]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >>|cRXP_WARN_强烈建议维修装备，因为我们将会死过去|r
    >>|cFFFF0000如果你不想死过去，可以手动跳过此步骤|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>点击 |cRXP_PICK_铁炉堡探险者大厅桌子上|r 的 |cFFfa9602图书馆书籍|r  来获得 |T133744:0|t[大法师安东尼达斯：未删节的自传]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>前往 |cFFfa9602洛克莫丹|r
    .fly Loch Modan >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602洛克莫丹|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>点击 |cRXP_PICK_洛克莫丹旅店桌子上|r 的 |cFFfa9602侏儒魔典|r 以获得 |T133744:0|t[诺莫瑞根的鲁米：全集]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>前往 |cFFfa9602洛克莫丹|r
    .fly Loch Modan >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602洛克莫丹|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>点击 |cRXP_PICK_洛克莫丹精英食人魔洞穴中 |r 的 |cFFfa9602Scroll|r 来获得 |T134938:0|t[巫王的符文]
    >>|cRXP_WARN_建议跑到洞穴的尽头再死。此外，你或许应该考虑组队。|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>死在 |cFF00FF25灵魂医者|r 处并复活 |cRXP_WARN_此外，如果你想节省修复成本，就不要采取死过去的方式|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>前往 |cFFfa9602荒芜之地|r
    .fly >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602荒芜之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>点击书籍 |T134937:0|t[木乃伊：恼人亡灵指南]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>飞往 |cFFfa9602米奈希尔港|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>点击 |cRXP_PICK_在湿地花瓶内的|r 的 |cFFfa9602卷轴|r 以获得 |T237450:0|t[戈阿兹卷轴]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >>|cRXP_WARN_强烈建议维修装备，因为我们将会死过去|r
    >>|cFFFF0000如果你不想死过去，可以手动跳过此步骤|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>坐船前往 |cFFfa9602黑海岸|r。
    .fly Menethil Harbor >>|cFFfa9602如果你还没到的话|r，就飞往 |cRXP_WARN_米奈希尔港|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>在河里淹死并在 |cFF00FF25灵魂医者|r 处复活 |cRXP_WARN_此外，如果你想节省修复成本，就不要采取死过去的方式|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>点击|cRXP_PICK_黑海岸|r 的 |cFFfa9602卷轴|r 以获得 |T237447:0|t[纳萨拉斯年鉴第74卷]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>送死并在 |cFF00FF25灵魂医者|r 处复活
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>前往 |cFFfa9602艾萨拉|r
    .fly Ashenvale >>飞往 |cFFfa9602灰谷|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>点击 |cRXP_PICK_书籍|r 以获得 |T133740:0|t[日常小礼节]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>|cFFfa9602如果没有解锁任何飞行路径|r，就步行前往 |cRXP_WARN_石爪山脉|r
    .fly Stonetalon Mountains >>|cFFfa9602如果没有解锁任何飞行路径|r，就步行前往 |cRXP_WARN_石爪山脉|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>点击|cRXP_PICK_石爪山脉帐篷内木桶上的|r 的 |cFFfa9602卷轴|r 以获得 |T133209:0|t[大地之怒]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
    .fly Desolace >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602凄凉之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>点击 卷轴|cRXP_PICK_ 以获得 |T133733:0|t[恶魔与你]|r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>|cFFfa9602如果你没开飞行路径|r，步行前往 |cRXP_WARN_贫瘠之地|r
    .fly Ratchet >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602棘齿城|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>点击位于 |cRXP_PICK_棘齿城|r |cFFfa9602加兹鲁维|r 旁边的 |cRXP_FRIENDLY_地精魔典|r，以获得 |T133744:0|t[拜克斯坦：论毁灭性魔法]
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>点击位于 |cRXP_PICK_贫瘠之地哀嚎洞穴传送门附近地上|r 的 |cFFfa9602卷轴|r，以获得 |T135142:0|t[梦中人的秘密]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>送死并在 |cFF00FF25灵魂医者|r 处复活
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>点击位于 |cRXP_PICK_贫瘠之地钻井平台顶部的|r |cFFfa9602手册|r 以获得 |T134509:0|t[奥术系统手册]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
    .fly Dustwallow Marsh >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602尘泥沼泽|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>点击 |cRXP_PICK_浸水的书籍|r 以获取书籍 |T133740:0|t[RwlRwlRwlRwl！]。
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
    .fly Thousand Needles >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602千针石林|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>点击帐篷内麻袋旁的 |cRXP_PICK_卷轴|r 以获取书籍 |T133740:0|t[地卜术：真石事实]。
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>前往 |cFFfa9602塔纳利斯|r
    .fly Tanaris >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602塔纳利斯|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>点击 |cRXP_PICK_书籍|r 以获得 |T134941:0|t[海潮贤者的传说]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>前往 |cFFfa9602铁炉堡|r
    .cast 3562 >>|cRXP_WARN_如果你有|r |T135757:0|t[传送符文] 使用 |T134419:0|t[传送：铁炉堡]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >>|cRXP_WARN_如果你没有解锁希尔斯布莱德丘陵的飞行路线，请飞往阿拉希高地。|r
    .disablecheckbox
    .fly Wetlands >>|cRXP_WARN_如果你没有解锁阿拉希高地，请飞往湿地。|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>前往 |cFFfa9602阿拉希高地|r
    .fly Arathi Highlands >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602阿拉希高地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>点击 |cRXP_PICK_卷轴|r 以获得书籍 |T134331:0|t[网罗谎言：神话传说的真面目]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>前往 |cFFfa9602辛特兰|r
    .fly The Hinterlands >>如果你已解锁了飞行点，就做坐飞机去 |cFFfa9602辛特兰|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>点击 |cRXP_PICK_书籍|r 以获得 |T134942:0|t[《剧毒之旅》]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>前往 |cFFfa9602奥特兰克山脉|r
    .fly Alterac Mountains >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602奥特兰克山脉|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>点击塔内木箱上的 |cRXP_PICK_手册|r，以获取书籍 |T133736:0|t[防御魔法入门]。
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>点击 |cRXP_PICK_银松森林安伯米尔主城堡内书架上|r 的 |cFFfa9602书籍|r，以获得 |T134917:0|t[达拉然文摘第23卷]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>前往 |cFFfa9602暴风城|r
    .cast 3561 >>|cRXP_WARN_如果你有|r |T134419:0|t[传送符文] 使用 [传送：暴风城]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_暴风城法师塔|r |cFFfa9602加里昂·温德尔|r 对话
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>交任务 纳萨拉斯年鉴
    .accept 78127 >>交任务 达拉然文摘
    .accept 78142 >>交任务 蛊惑与魅惑
    .accept 78143 >>交任务 梦中人的秘密
    .accept 78145 >>交任务 奥术系统手册
    .accept 78146 >>交任务 戈阿兹卷轴
    .accept 78147 >>交任务 侵犯人体的罪行
    .accept 78148 >>交任务 巫王的符文
    .accept 78149 >>交任务 大地之怒
    .accept 79091 >>交任务 大法师安东尼达斯：未删节的自传
    .accept 79092 >>交任务 大法师塞欧克瑞图斯的研究日志
    .accept 79093 >>交任务 诺莫瑞根的鲁米：全集
    .accept 79094 >>交任务 塔佐的教训
    .accept 79095 >>交任务 药剂师的超自然读本
    .accept 79096 >>交任务 阿塔瑞克：论奥术奇迹
    .accept 79097 >>交任务 拜克斯坦：论毁灭性魔法
    .accept 79535 >>交任务 蜥蜴：石化何必怕？
    .accept 79947 >>交任务 地卜术：真石事实
    .accept 79948 >>交任务 防御魔法入门基础
    .accept 77949 >>交任务 网罗谎言：神话传说的真面目
    .accept 79950 >>交任务 恶魔与你
    .accept 79951 >>交任务 木乃伊：恼人亡灵指南
    .accept 79952 >>交任务 RwlRwlRwlRwl！
    .accept 81947 >>交任务 血红咒法
    .accept 81949 >>交任务 海潮贤者的传说
    .accept 81951 >>交任务 阈值与奥术
    .accept 81952 >>交任务 日常小礼节
    .accept 81953 >>交任务 巨石设计录
    .accept 81954 >>交任务 剧毒之旅
    .accept 81955 >>交任务 金属的思维
    .accept 81956 >>交任务 咒术师魔典
    .accept 79953 >>交任务 守旧者的恶魔宠物照护指南
    .accept 78150 >>交任务 图书馆之友
    .accept 79536 >>交任务 高级图书馆之友
    .accept 82208 >>交任务 高级图书馆之友
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r 对话。
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_存入剩余的书籍。|r
    .target 牛顿·伯恩赛德
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP符文与书籍指南
#subgroup 腿部/靴子
#subgroup 腿部/靴子/头盔
#name Icy Veins/法术强度/深度冻结 - 40 (艾泽拉斯)
#title Icy Veins & 法术强度 & 深度冻结

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>前往 |cFFfa9602奥格瑞玛|r
    .cast 3567 >>|cRXP_WARN_如果你有|r |T134419:0|t[传送符文] 使用 [传送：奥格瑞玛]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >>从 |cRXP_FRIENDLY_施法材料、魔法货物、卷轴与药水商人|r 处购买 |T134419:0|t[传送符文]。|cRXP_WARN_ 这将大大缩短你的赶路时间。|r
    >>|cRXP_WARN_如果你不需要，可以手动跳过此步骤。|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银行职员|r 对话
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_检查一下你的银行，看看有没有之前存进去的书籍。|r
    .target 卡鲁斯
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >>|cRXP_WARN_强烈建议维修装备，因为我们将会死过去|r
    >>|cFFFF0000如果你不想死过去，可以手动跳过此步骤|r
step
    .goto 1454,38.66,78.43
    >>点击 |cRXP_PICK_奥格瑞玛墙上|r 的 |cFFfa9602巨石|r  以获得 |T134938:0|t[塔佐的教训]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>|cFFfa9602如果你没开飞行路径|r，步行前往 |cRXP_WARN_贫瘠之地|r
    .fly Ratchet >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602棘齿城|r |cRXP_WARN_|r
    .fly Crossroads >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602十字路口|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>点击位于 |cRXP_PICK_棘齿城|r |cFFfa9602加兹鲁维|r 旁边的 |cRXP_FRIENDLY_地精魔典|r，以获得 |T133744:0|t[拜克斯坦：论毁灭性魔法]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>如果你已经解锁了飞行点，就坐飞机前往|cRXP_WARN_十字路口|r，|cRXP_WARN_否则就步行前往。|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>点击位于 |cRXP_PICK_贫瘠之地哀嚎洞穴传送门附近地上|r 的 |cFFfa9602卷轴|r，以获得 |T135142:0|t[梦中人的秘密]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>送死并在 |cFF00FF25灵魂医者|r 处复活
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>旅行到 |cFFfa9602贫瘠之地|r
    .fly Crossroads >>如果你已经解锁了飞行点，就坐飞机前往|cRXP_WARN_十字路口|r，|cRXP_WARN_否则就步行前往。|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>点击位于 |cRXP_PICK_贫瘠之地钻井平台顶部的|r |cFFfa9602手册|r 以获得 |T134509:0|t[奥术系统手册]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
    .fly Desolace >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602凄凉之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>点击 卷轴|cRXP_PICK_ 以获得 |T133733:0|t[恶魔与你]|r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>|cFFfa9602如果你没开飞行路径|r，步行前往 |cRXP_WARN_贫瘠之地|r
    .fly Ratchet >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602棘齿城|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>前往 石爪山脉|cFFfa9602 如果你在|r贫瘠之地|cFFfa9602，请步行前往|r
    .fly Stonetalon Mountains >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602奧格瑞玛|r 。
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>点击|cRXP_PICK_在石爪山脉|r 的 |cFFfa9602卷轴|r 以获得 |T133209:0|t[大地之怒]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>前往 |cFFfa9602艾萨拉|r
    .fly Ashenvale >>飞往 |cFFfa9602灰谷|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>点击 |cRXP_PICK_书籍|r 以获得 |T133740:0|t[日常小礼节]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>如果你没有飞行路径|cFFfa9602 步行前往 |r黑海岸|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>点击|cRXP_PICK_黑海岸|r 的 |cFFfa9602卷轴|r 以获得 |T237447:0|t[纳萨拉斯年鉴第74卷]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
    .fly Dustwallow Marsh >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602尘泥沼泽|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>点击 |cRXP_PICK_浸水的书籍|r 以获取书籍 |T133740:0|t[RwlRwlRwlRwl！]。
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
    .fly Thousand Needles >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602千针石林|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>点击帐篷内麻袋旁的 |cRXP_PICK_卷轴|r 以获取书籍 |T133740:0|t[地卜术：真石事实]。
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>前往 |cFFfa9602塔纳利斯|r
    .fly Tanaris >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602塔纳利斯|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>点击 |cRXP_PICK_书籍|r 以获得 |T134941:0|t[海潮贤者的传说]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>前往 |cFFfa9602幽暗城|r
    .cast 3563 >>|cRXP_WARN_如果你有|r |T134419:0|t[传送符文] 使用 [传送：幽暗城]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >>|cRXP_WARN_强烈建议维修装备，因为我们将使用死亡跳跃|r
    >>|cFFFF0000如果你不想使用死亡跳跃，可以手动跳过此步骤|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>点击 |cRXP_PICK_提瑞斯法林地布瑞尔|r 的 |cFFfa9602药剂师的会社读本|r，以获得 |T133737:0|t[药剂师的超自然读本]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>|cFFfa9602如果你在|r |cRXP_WARN_提瑞斯法林地|r，步行前往 |cFFfa9602银松森林|r
    .fly Silverpine Forest >>|cFFfa9602如果你在|r |cRXP_WARN_幽暗城|r，乘坐飞机前往 |cFFfa9602银松森林|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>点击 |cRXP_PICK_银松森林|r 的 |cFFfa9602奥术秘密|r，以获得 |T133744:0|t[阿塔瑞克：论奥术奇迹]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>前往 |cFFfa9602银松森林。|r
    .fly Silverpine Forest >>|cFFfa9602如果你在|r |cRXP_WARN_幽暗城|r，乘坐飞机前往 |cFFfa9602银松森林|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>点击 |cRXP_PICK_银松森林安伯米尔主城堡内|r 的 |cFFfa9602书籍|r，以获得 |T134917:0|t[达拉然文摘第23卷]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>前往 |cFFfa9602奥特兰克山脉|r
    .fly Alterac Mountains >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602奥特兰克山脉|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>点击塔内木箱上的 |cRXP_PICK_手册|r，以获取书籍 |T133736:0|t[防御魔法入门]。
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>前往 |cFFfa9602辛特兰|r
    .fly Hinterlands >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602辛特兰|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>点击 |cRXP_PICK_书籍|r 以获得 |T134942:0|t[剧毒之旅]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>前往 |cFFfa9602阿拉希高地|r
    .fly Arathi Highlands >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602阿拉希高地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>点击 |cRXP_PICK_卷轴|r 以获得书籍 |T134331:0|t[网罗谎言：神话传说的真面目]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>前往 |cFFfa9602荒芜之地|r
    .fly >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602荒芜之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>点击书籍 |T134937:0|t[木乃伊：恼人亡灵指南]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>点击 |cRXP_PICK_在湿地花瓶内的|r 的 |cFFfa9602卷轴|r 以获得 |T237450:0|t[戈阿兹卷轴]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>|cFFfa9602坐飞机|r 前往 |cRXP_WARN_西部荒野|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>点击 |cRXP_PICK_西部荒野月溪镇小房子的炼金术柜子上|r 的 |cFFfa9602法术书|r 以获得 |T133733:0|t[蛊惑与魅惑。]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>前往 |cFFfa9602暮色森林|r
    .fly Westfall >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602西部荒野|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>点击 |cRXP_PICK_在暮色森林晨光之林墓穴的炼金术桌上|r 的 |cFFfa9602书籍|r 以获得 |T133738:0|t[侵犯人体的罪行。]
    >>|cRXP_WARN_建议跑到地下墓穴的尽头再死。此外，你或许应该考虑组队。|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
    .fly Swamp of Sorrows >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602悲伤沼泽|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>击杀 |cRXP_ENEMY_迷失者猎人|r，|cRXP_ENEMY_失落定居者|r，|cRXP_ENEMY_失落者厨师|r 和 |cRXP_ENEMY_失落者先知|r。拾取它们的 |cRXP_LOOT_|T237379:0|t[锈蚀的笼子钥匙]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>点击 |cRXP_PICK_锈蚀的笼子|r，以获取书籍 |T133742:0|t[守旧者的恶魔宠物照护指南]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
    .fly Swamp of Sorrows >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602悲伤沼泽|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>点击 |cRXP_PICK_书籍|r 获得 |T133738:0|t[血红咒法]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>前往|cFFfa9602诅咒之地|r
    .fly Blasted Lands >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602诅咒之地|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>点击 |cRXP_PICK_书籍|r 获得 |T133736:0|t[咒术师魔典]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>前往 |cFFfa9602荆棘谷|r
    .fly Stranglethorn Vale >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602荆棘谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>点击板凳上的 |cRXP_PICK_研究笔记|r 以获得书籍 |T237162:0|t[蜥蜴：石化何必怕？]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>前往 |cFFfa9602灼热峡谷|r
    .fly Searing Gorge >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602灼热峡谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>点击 |cRXP_PICK_书籍|r 获得 |T133743:0|t[巨石设计录]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>前往 |cFFfa9602灼热峡谷|r
    .fly Searing Gorge >>如果你已解锁了飞行点，就坐飞机去 |cFFfa9602灼热峡谷|r |cRXP_WARN_|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>点击 |cRXP_PICK_书籍|r 获得 |T133743:0|t[巨石设计录]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>前往 |cFFfa9602幽暗城|r
    .cast 3563 >>|cRXP_WARN_如果你有|r |T135766:0|t[传送符文] 使用 |T134419:0|t[传送：幽暗城]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_在幽暗城魔法区的|r |cFFfa9602欧文·萨德|r 对话
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>交任务 纳萨拉斯年鉴
    .accept 78127 >>交任务 达拉然文摘
    .accept 78142 >>交任务 蛊惑与魅惑
    .accept 78143 >>交任务 梦中人的秘密
    .accept 78145 >>交任务 奥术系统手册
    .accept 78146 >>交任务 戈阿兹卷轴
    .accept 78147 >>交任务 侵犯人体的罪行
    .accept 78148 >>交任务 巫王的符文
    .accept 78149 >>交任务 大地之怒
    .accept 79094 >>交任务 塔佐的教训
    .accept 79095 >>交任务 药剂师的超自然读本
    .accept 79096 >>交任务 阿塔瑞克：论奥术奇迹
    .accept 79097 >>交任务 拜克斯坦：论毁灭性魔法
    .accept 79535 >>交任务 蜥蜴：石化何必怕？
    .accept 79947 >>交任务 地卜术：真石事实
    .accept 79948 >>交任务 防御魔法入门基础
    .accept 77949 >>交任务 网罗谎言：神话传说的真面目
    .accept 79950 >>交任务 恶魔与你
    .accept 79951 >>交任务 木乃伊：恼人亡灵指南
    .accept 79952 >>交任务 RwlRwlRwlRwl！
    .accept 81947 >>交任务 血红咒法
    .accept 81949 >>交任务 海潮贤者的传说
    .accept 81951 >>交任务 阈值与奥术
    .accept 81952 >>交任务 日常小礼节
    .accept 81953 >>交任务 巨石设计录
    .accept 81954 >>交任务 剧毒之旅
    .accept 81955 >>交任务 金属的思维
    .accept 81956 >>交任务 咒术师魔典
    .accept 79953 >>交任务 守旧者的恶魔宠物照护指南
    .accept 78150 >>交任务 图书馆之友
    .accept 79536 >>交任务 高级图书馆之友
    .accept 82208 >>交任务 高级图书馆之友
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银行职员|r 对话
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_存入剩余的书籍。|r
    .target 卡鲁斯
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 活火 - 6 (艾尔文森林)
#title 活火

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>前往 |cFFfa9602艾尔文森林|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>击杀|cRXP_ENEMY_狗头人地质学家|r并拾取|cRXP_LOOT_|T134939:0|t|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 401768 >>|cRXP_WARN_使用|r|T134939:0|t|T135820:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r] |cRXP_WARN_学习|r |T135820:0|t|T135820:0|t[活化烈焰]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 活火 - 7 (丹莫罗)
#title 活火

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>前往 |cFFfa9602丹莫罗|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>击杀|cRXP_ENEMY_霜鬃暗影法师|r和|cRXP_ENEMY_霜鬃先知|r以获取|cRXP_LOOT_|T134939:0|t|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob 霜鬃先知
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 401768 >>|cRXP_WARN_使用|r|T134939:0|t|T135820:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r] |cRXP_WARN_学习|r |T135820:0|t|T135820:0|t[活化烈焰]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 活火 - 6 (杜隆塔尔)
#title 活火

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>前往 |cFFfa9602杜隆塔尔|r
step
    .train 401768,1
    >>在尘风洞穴内击杀|cRXP_ENEMY_燃烧刃氏族的兽人|r，并从它们身上拾取|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>在骷髅石洞穴内击杀 |cRXP_ENEMY_火刃氏族兽人|r。拾取他们的 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob 火刃狂热者
    .mob 火刃学徒
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 401768 >>|cRXP_WARN_使用|r|T134939:0|t|T135820:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r] |cRXP_WARN_学习|r |T135820:0|t|T135820:0|t[活化烈焰]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 活火 - 6 (提瑞斯法林地)
#title 活火

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>前往 |cFFfa9602提瑞斯法林地|r
step
    .train 401768,1
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
    >>杀死 |cRXP_ENEMY_血色人类|r。拾取它们的 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 401768 >>|cRXP_WARN_使用|r|T134939:0|t|T135820:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r] |cRXP_WARN_学习|r |T135820:0|t|T135820:0|t[活化烈焰]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 奧术冲击 - 18 (灰谷)
#title 奧术冲击

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>前往 |cFFfa9602灰谷|r
step
    .aura 430139,1 >>|cRXP_WARN_在|r |cRXP_WARN_紫色水晶|r |cRXP_PICK_旁边施放|r |T136116:0|t[奥爆] |cRXP_WARN_以获得|r |T135734:0|t[奥术充能] |cRXP_WARN_buff|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_在|r |cRXP_WARN_紫色水晶|r |cRXP_PICK_旁边施放|r |T136116:0|t[奥爆] |cRXP_WARN_以获得另外一层|r |T135734:0|t[奥术充能] |cRXP_WARN_buff|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_在|r |cRXP_WARN_紫色水晶|r |cRXP_PICK_旁边施放|r |T136116:0|t[奥爆] |cRXP_WARN_以获得另外一层|r |T135734:0|t[奥术充能] |cRXP_WARN_buff|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 401757 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：奥术冲击|r] |cRXP_WARN_来训练|r |T135820:0|t[奥术冲击]
    .use 211691
step
    #optional
    .destroy 211777 >>摧毁 |T133737:0|t[纳迦手稿]。你不再需要它了
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 活动炸弹 - 11 (洛克莫丹)
#title 活动炸弹

<< Alliance Mage SoD


step
    +|cRXP_WARN_你应该至少达到11级才能在洛克莫丹独自获得|r |T236220:0|t[活动炸弹] |cRXP_WARN_|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>前往铁炉堡
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>进入 |cRXP_FRIENDLY_吉恩|r 的房子
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_吉恩|r 对话
    >>|cRXP_BUY_从她那里购买一个或多个|r |T135933:0|t[理解魔符] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target 吉恩
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>前往洛克莫丹
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>击杀|cRXP_ENEMY_碎石怪先知|r 并拾取它们的|cRXP_LOOT_|T134939:0|t[嚼过的法术笔记]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_啃过的法术笔记|r] 来学习 |T236220:0|t[活动炸弹]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 活动炸弹 - 18 (西部荒野)
#title 活动炸弹

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>从 |cRXP_FRIENDLY_材料商人|r 购买一个或多个 |T135933:0|t[理解魔符]
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>前往 |cFFfa9602西部荒野|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>击杀 |cRXP_ENEMY_看守傀儡|r 并拾取 |cRXP_LOOT_|T132996:0|t[备用收割机零件]|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>击杀 |cRXP_ENEMY_Dust Devils|r 拾取 |cRXP_LOOT_|T132842:0|t[元素之核]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>使用 |T132996:0|t[备用收割机零件]|r| 创建 |T133000:0|t[原型引擎]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>找一个 |cRXP_FRIENDLY_收割傀儡原型机|r 并对其使用 |T133000:0|t[原型引擎]。继续击杀 |cRXP_ENEMY_收割傀儡原型机|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_啃过的法术笔记|r] 来学习 |T236220:0|t[活动炸弹]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 活动炸弹 - 17 (银松森林)
#title 活动炸弹

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>前往 |cFFfa9602银松森林。|r
step
    .train 415936,1
    >>击杀 |cRXP_ENEMY_在芬里斯岛|r 的 |cFFfa9602腐皮豺狼人|r。拾取它们的 |T134173:0|t[会说话的头颅]。|cRXP_WARN_在你的背包中点击它|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>接受任务 支离破碎
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>与|cRXP_PICK_浅墓|r 互动
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>交任务 支离破碎
    .accept 461 >>接受任务 密室
    .target Shallow Grave
step
    .train 415936,1
    >>点击位于 |cRXP_PICK_城堡内左上角塔楼里（上第一段楼梯后往左走）|r 的 |cRXP_WARN_布满灰尘的书架|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>交任务 密室
    .accept 491 >>接受任务 给比索的魔杖
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>前往 |cFFfa9602幽暗城|r（如果你已经解锁了幽暗城的飞行点，可以先用死过去的方式回瑟伯切尔，再从那里飞过去）
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比索·埃斯沙德|r 对话
    .goto Undercity,83.8,16.2
    .turnin 491 >>交任务 给比索的魔杖
    .accept 78277 >>接受任务 一份谢礼
    .turnin 78277 >>交任务 一份谢礼
    .train 415936 >>|cRXP_WARN_交任务后你将自动学会该符文|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 手套
#name 活动炸弹 - 20 (贫瘠之地)
#title 活动炸弹

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_你必须学习|r |T135736:0|t[闪现术] |cRXP_WARN_来获得|r |T236220:0|t[活动炸弹] |cRXP_WARN_符文|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从|r |cRXP_BUY_材料商人|r |cRXP_FRIENDLY_购买一个或多个 |T135933:0|t[理解魔符]|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>旅行到 |cFFfa9602贫瘠之地|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_对着墙上的|r |cRXP_PICK_铭刻雕像|r |cRXP_WARN_使用闪现，可获得|r |T236168:0|t[无步之路] |cRXP_WARN_增益效果|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_施放|r |T135736:0|t[闪现术] |cRXP_WARN_逐一踩上绿色圆圈。最后，使用闪现术撞向|r |cRXP_PICK_铭刻雕像|r |cRXP_WARN_进行练习|r |T236220:0|t[活动炸弹]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#title 法术冰霜箭/霜火之箭
#name 法术冰霜箭/霜火之箭 - 37 (荆棘谷)

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_从|r |cRXP_BUY_材料商人|r |cRXP_FRIENDLY_购买一个或多个 |T135933:0|t[理解魔符]|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从|r |cRXP_BUY_材料商人|r |cRXP_FRIENDLY_购买一个或多个 |T135933:0|t[理解魔符]|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>前往 |cFFfa9602荆棘谷|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>击杀|cRXP_ENEMY_劈颅秘法师|r。从他们身上拾取|T134939:0|t|cRXP_LOOT_法术笔记：NFASHBHIGSAUAGJINUN|r和|T134939:0|t|cRXP_LOOT_法术笔记：JSHHUZUAAHOIINNG|r
    .collect 213127,1
    .collect 217161,1
    .mob 劈颅秘法师
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_从 |r |cRXP_BUY_材料商人|cRXP_FRIENDLY_ |r购买一个或者多个 |T135933:0|t[理解魔符] 来解读符文 |r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_从 |r |cRXP_BUY_材料商人|cRXP_FRIENDLY_ |r购买一个或者多个 |T135933:0|t[理解魔符] 来解读符文 |r
    .collect 211779,1
step
    .train 415948 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：NFASHBHIGSAUAGJINUN|r] |cRXP_WARN_来训练|r |T135780:0|t[法术冰霜箭]
    .train 401762 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：JSHHUZUAAHOIINNG|r] |cRXP_WARN_来训练|r |T236217:0|t[霜火之箭]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 炽热连击 - 32 (奥特兰克山脉)
#title 炽热连击

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >>|cRXP_WARN_你必须已学习|r |T135826:0|t[烈焰风暴] |cRXP_WARN_以获得|r |T236218:0|t[炽热连击] |cRXP_WARN_符文|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >>前往奥特兰克山脉
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_在斯坦恩布莱德铁匠铺建筑的两个风箱上 |r施放|cRXP_WARN_ |T135826:0|t[烈焰风暴]。当其中一个风箱开始发出红光并燃烧时，对第二个风箱再次施放|r |T135826:0|t[烈焰风暴] |cRXP_WARN_将其点燃。这将触发|cRXP_ENEMY_古代火元素|r的刷新|r
    >>击杀|cRXP_ENEMY_古代火元素|r。拾取|T134939:0|t[|cRXP_LOOT_法术笔记：炽热连击|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：炽热连击|r] |cRXP_WARN_来训练|r |T236218:0|t[炽热连击]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 炽热连击 - 37 (阿拉希高地)
#title 炽热连击

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >>前往阿拉希高地
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>击杀 |cRXP_ENEMY_烈焰流放者|r。拾取他们的 |T134939:0|t[|cRXP_LOOT_法术笔记：炽热连击|r]
    >>|cRXP_WARN_注意：据玩家反馈，该物品的掉率相对较低。你可以考虑改去奥特兰克山脉获取它|r
    .collect 213113,1
    .mob 烈焰流放者
step
    .train 401749 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：炽热连击|r] |cRXP_WARN_来训练|r |T236218:0|t[炽热连击]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 凝时恩护 - 30 (千针石林)
#title 凝时恩护

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_确保至少多组一个 |cFF69CCF0法师|r 朋友！接下来的部分无法单人完成！|r
step
    .train 425189,1
    .zone Thousand Needles >>前往千针石林
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>击杀|cRXP_ENEMY_加拉克掠夺者|r，|cRXP_ENEMY_加拉克虐待者|r 和 |cRXP_ENEMY_加拉克狂怒者|r。拾取它们的|cRXP_LOOT_山狮笼钥匙|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +打开|cRXP_PICK_山狮牢笼|r，释放|cRXP_ENEMY_焚烧的千针石林山狮|r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>击杀|cRXP_ENEMY_灼热千针石林山狮|r。拾取她的|T134943:0|t[|cRXP_LOOT_不完整的法术笔记|r]
    >>|cRXP_WARN_你只能使用冰霜法术来削弱它，使其能够受到伤害|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>击杀|cRXP_ENEMY_雄性风巢飞龙|r。拾取|T134938:0|t[|cRXP_LOOT_不完整的法术笔记|r]
    >>|cRXP_WARN_你只能使用冰霜法术来削弱它，使其能够受到伤害|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>击杀|cRXP_ENEMY_灼烧的尖啸的游荡者|r。拾取|T134937:0|t[|cRXP_LOOT_不完整的法术笔记|r]
    >>|cRXP_WARN_你只能使用冰霜法术来削弱它，使其能够受到伤害|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_使用|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_不完整的法术笔记|r] |cRXP_WARN_制作|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：凝时恩护|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：凝时恩护|r |cRXP_WARN_来训练|r |T135729:0|t[凝时恩护]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 时空畸体 - 42 (艾泽拉斯)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>前往菲拉斯
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>击杀 |cRXP_ENEMY_祖卡什的爪牙|r。拾取它们的 |T237070:0|t[祖卡什虫脂]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>前往辛特兰
step
    .train 429306,1
    >>击杀 |cRXP_ENEMY_枭兽|r。拾取它们的 |cRXP_LOOT_|T132914:0|t[枭兽的松果腺]|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>前往塔纳利斯
step
    .train 429306,1
    >>击杀 |cRXP_ENEMY_祖尔法拉克僵尸|r。拾取它们的 |cRXP_LOOT_|T237132:0|t[法拉基莎草纸]|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_在幽暗城的魔法区的|r |cFFfa9602欧文·萨德|r 对话
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_暴风城法师塔|r |cFFfa9602加里昂·温德尔|r 对话
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 15 (西部荒野)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往暴风城
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往幽暗城
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往西部荒野
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r 并拾取 |cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 35 (凄凉之地)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往达纳苏斯
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往奥格瑞玛
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >>前往凄凉之地
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r 并拾取 |cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 45 (菲拉斯)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往达纳苏斯
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往奥格瑞玛
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >>前往菲拉斯
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 45 (艾萨拉)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往达纳苏斯
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往奥格瑞玛
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >>前往艾萨拉
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 35 (诅咒之地)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>>前往暴风城
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往幽暗城
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >>前往诅咒之地
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 15 (Barrens)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往达纳苏斯
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往奥格瑞玛
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往西部荒野
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 15 (黑海岸)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>前往达纳苏斯
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>前往奥格瑞玛
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >>前往黑海岸
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 15 (银松森林)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >>前往铁炉堡
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往幽暗城
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>前往西部荒野
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 35 (悲伤沼泽)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往暴风城
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往幽暗城
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >>前往悲伤沼泽
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r并拾取|cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 护腕（怨火之箭）
#name 怨火之箭 - 28 (赤脊山)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>前往暴风城
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>前往幽暗城
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买一个|r |T134945:0|t[空间修复卷轴]。|cRXP_WARN_或者你也可以让附魔师为你制作一张。|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >>前往赤脊山
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>在 |cRXP_FRIENDLY_传送门|r 使用 |cRXP_PICK_空间修复卷轴|r 来召唤一个 |cRXP_ENEMY_邪能入侵者|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>击杀|cRXP_ENEMY_邪能入侵者|r 并拾取 |cRXP_LOOT_|T134939:0|t[法术笔记：IULAOYIHTEN]|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t[怨火之箭]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 过热 - 55 (西瘟疫之地)
#title 过热

step
    .train 401764,1
    .zone Western Plaguelands >>前往西瘟疫之地
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_使用火焰系法术解冻|r|cRXP_FRIENDLY_冰霜法师学徒|r|cRXP_WARN_。千万别杀它们！|r
    >>|cRXP_WARN_随后对他们施放|r|T136082:0|t[解除次级诅咒]|cRXP_WARN_，然后与他们对话即可获得|r|T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_撕碎的法术笔记|r]
    >>|cRXP_WARN_对西瘟疫之地的各个农场中的为每一位 |cRXP_FRIENDLY_冰霜法师学徒|r 重复此操作|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >>|cRXP_WARN_使用任意|r|T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t|cRXP_LOOT_撕碎的法术笔记|r|cRXP_WARN_将其组合成|r|T134939:0|t|cRXP_LOOT_法术笔记：过热|r
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：过热|r] |cRXP_WARN_来训练|r |T135813:0|t[过热]
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 寒冰宝珠 - 55 (费伍德森林/冬泉谷)
#title 寒冰宝珠

step
    #completewith next
    .train 440858,1
    .zone Felwood >>前往费伍德森林
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>击杀|cRXP_ENEMY_死木复仇者|r 和 |cRXP_ENEMY_死木萨满祭司|r。拾取它们的 |T237446:0|t[|cRXP_LOOT_神秘的达纳苏斯卷轴|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>|cRXP_WARN_使用|r |T135933:0|t[|cRXP_LOOT_理解魔符|r] |cRXP_WARN_对|r |T237446:0|t[|cRXP_LOOT_神秘的达纳苏斯卷轴|r] |cRXP_WARN_进行解读，将其转化为|r |T134937:0|t[|cRXP_LOOT_解译的达纳苏斯卷轴|r]
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_对|r 卡利克斯·暗绿|cRXP_LOOT_ 使用|r |T134937:0|t[|cRXP_WARN_破译的达纳苏斯卷轴|cRXP_FRIENDLY_]，|r并接受他的任务|r
    >>|cRXP_FRIENDLY_卡利克斯·暗绿|r |cRXP_WARN_会在附近活动|r
    .accept 84369 >>接受任务 治疗治疗者
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>击杀|cRXP_ENEMY_铁木践踏者|r。拾取|cRXP_LOOT_反常药剂|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >>前往冬泉谷
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡利克斯·暗绿|r 对话
    >>|cRXP_WARN_交任务后需要击杀 |cRXP_ENEMY_卡利克斯·暗绿|r|r
    .turnin 84369 >>交任务 治疗治疗者
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>击杀 |cRXP_ENEMY_狂怒的阴影|r。拾取 |T134939:0|t[|cRXP_LOOT_法术便笺：寒冰宝珠|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：寒冰宝珠|r] |cRXP_WARN_来训练|r |T135851:0|t[寒冰宝珠]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP符文与书籍指南
#subgroup 披风
#name 奥术弹幕 - 60 (艾泽拉斯)
#title 奥术弹幕

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >>前往西瘟疫之地
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>拾取费尔斯通农场农舍楼上的 |cRXP_LOOT_亡灵马铃薯|r
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>拾取通灵学院的 |cRXP_LOOT_通灵术基础入门|r
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >>前往西瘟疫之地
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>拾取 |cRXP_LOOT_圣光研究录|r
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>拾取 |cRXP_LOOT_骑士与女士|r 书籍
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>拾取 |cRXP_LOOT_天灾：亡灵祸害还是误解所致？|r 书籍
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >>前往灼热峡谷或燃烧平原并进入黑石山
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_顺着铁链滑下去，然后前往黑石深渊入口|r
    >>在地上拾取 |cRXP_LOOT_岩浆还是熔岩？|r 书籍
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >>前往冬泉谷
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>在架子上拾取 |cRXP_LOOT_炸他个稀巴烂！|r
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >>前往费伍德森林
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_前往木喉要塞隧道。请注意，如果你与木喉要塞的声望未达到冷淡或以上，熊怪会攻击你|r
    >>在地上拾取 |cRXP_LOOT_北卡利姆多——全方位指南|r 书籍
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰·斯内克威瑟|r 对话  << Horde
    .accept 84395 >>交任务 亡灵马铃薯
    .accept 84402 >>交任务 通灵术基础入门
    .accept 84398 >>交任务 圣光研究录
    .accept 84400 >>交任务 骑士与女士
    .accept 84401 >>交任务 《天灾：亡灵祸害还是误解所致？》
    .accept 84396 >>交任务 《岩浆还是熔岩？》
    .accept 84399 >>交任务 《炸他个稀巴烂！》
    .accept 84397 >>交任务 《北卡利姆多——全方位指南》
    .target 詹妮亚·坎农 << Alliance
    .target 奥兰·斯内克威瑟 << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰·斯内克威瑟|r 对话 << Horde
    >>|cRXP_WARN_如果你无法接受此任务，请确保你已获得Icy Veins/法术强度/深度冻结的符文，因为这是那些符文的延续且是必需的|r
    .accept 84394 >>接受任务 高级图书馆之友
    .turnin 84394 >>交任务 高级图书馆之友
    .target 詹妮亚·坎农 << Alliance
    .target 奥兰·斯内克威瑟 << Horde
]])
