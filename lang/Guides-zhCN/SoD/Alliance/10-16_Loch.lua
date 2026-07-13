if GetLocale() ~= "zhCN" then return end

if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP 联盟 1-20 级
#name 12-13 丹莫罗 探索赛季
#displayname 12-13 丹莫罗
#next 13-16 洛克莫丹 探索赛季
#defaultfor !NightElf

step << Warrior
    #season 2
    >>|cRXP_WARN_寻找|r |cRXP_FRIENDLY_漫游的剑士|r。|cRXP_WARN_他可能出现在地图上标记的小区域内的任何位置|r
    >>找到他并向他发起决斗。击败他后，他会生成一个小宝箱，打开可获得符文：|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]
    .goto Dun Morogh,52.6,45.0
    .goto Dun Morogh,52.4,47.4,0
    .goto Dun Morogh,52.6,48.8,0
    .goto Dun Morogh,53.6,47.6,0
    .goto Dun Morogh,53.0,46.2,0
    .goto Dun Morogh,55.0,46.6,0
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    #optional
    #completewith next
    .train 403474 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_血之狂暴符文|r] |cRXP_WARN_来学习|r |T136012:0|t[血之狂暴]
    .use 204441
    .itemcount 204441,1
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿土路上行
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob 瓦加什
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target 鲁德拉·冻石
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>击杀|cRXP_ENEMY_瓦加什|r。从他身上拾取|T134419:0|t|T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r << Warrior
    >>击杀|cRXP_ENEMY_瓦加什|r。从他身上拾取|T134939:0|t|T134939:0|t|cRXP_LOOT_[法术笔记：IGBHNHZNAI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_风筝他到农场南边的守卫处。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob 瓦加什
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|T136048:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_来训练|r |T136048:0|t|T136048:0|t[狂怒雷霆]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_试剂供应商|r处购买一个|T135933:0|t|T134939:0|t[理解魔符]才能使用|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：IGBHNHZNAI|r] |cRXP_WARN_训练|r |T236227:0|t[寒冰指]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target 鲁德拉·冻石
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>前往古博拉采掘场，丹莫罗
    .subzoneskip 134
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor 1237 >>|cRXP_BUY_从他那里购买10片|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_需要多少买多少|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_如果需要的话|r|cRXP_BUY_可以从他那里购买5片/杯|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target 卡杉·莫格什
--XX Mud slappers instead
step << Human Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丹克·利刃|r 对话
    .goto Dun Morogh,69.3,55.5
    .train 2581 >>学习采矿专业，开启寻找矿物
    .target 丹克·利刃
    .skill mining,1
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接受任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
    .xp >12,1,QuarryEnd
step << !Human Rogue
    #season 2
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>|T133644:0|t|T134327:0|t[搜索] |cRXP_ENEMY_石颚碎颅者|r和|cRXP_ENEMY_石颚碎骨者|r。拾取它们身上的|T134327:0|t|T134327:0|t[|cRXP_LOOT_左上角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob 石腭击颅者
    .mob 石腭断骨者
    .train 398196,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t|T134331:0|t[搜索] |cRXP_ENEMY_黑暗铁炉堡间谍|r。拾取他们身上的|T134327:0|t|T134331:0|t[黑鼠的笔记]和|T134327:0|t|T134327:0|t[|cRXP_LOOT_左下地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob 黑铁间谍
    .train 400094,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t|T134331:0|t[搜索]|cRXP_ENEMY_纯粹黑暗铁矿间谍|r。拾取他们身上的|T134331:0|t|T134331:0|t[黑鼠的笔记]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208205,1
    .mob 黑铁间谍
    .train 400094,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t|T134327:0|t[搜索] |cRXP_ENEMY_纯粹黑暗铁矿间谍|r。从他们身上拾取|T134327:0|t|T134327:0|t[|cRXP_LOOT_左下地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob 黑铁间谍
    .train 398196,1
step <<< !Human Rogue
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
step << !Human Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_在小桥下使用|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_丹莫罗藏宝图|r] |cRXP_WARN_，这将触发一个|cRXP_PICK_埋藏的宝物|r出现|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r，拾取其中的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_速射符文|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << !Human Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t|T134536:0|t[|cRXP_FRIENDLY_速射符文|r] |cRXP_WARN_来训练|r |T134536:0|t|T134536:0|t[速射]
    .use 203991
    .itemcount 203991,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>与|cRXP_FRIENDLY_黑鼠|r对话，获取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << !Human Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step << Dwarf Paladin
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>击杀|cRXP_ENEMY_石颚碎颅者|r和|cRXP_ENEMY_石颚碎骨者|r，从它们身上拾取|T132889:0|t|T132889:0|t[亚麻布] << Dwarf Paladin
    >>|cRXP_WARN_保留|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_用于后续任务|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob 石腭击颅者
    .mob 石腭断骨者
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>击杀 |cRXP_ENEMY_石腭击颅者|r 他们可在掘场里外
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>进入古博拉采掘场
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>击杀掘场里面的 |cRXP_ENEMY_石腭断骨者|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob 石腭断骨者
step << Mage
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_在|cRXP_ENEMY_冰冻石腭怪|r附近或综合频道（在聊天框输入/1）寻找其他法师或术士。如果没人的话，你也可以单刷这个任务|r
    >>|cRXP_WARN_施放|r |T135812:0|t|T135805:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_冰冻的石腭怪|r上，以叠加一层|r |T134939:0|t|T135805:0|t[加热]|cRXP_WARN_。一次性叠加5层以击杀|cRXP_ENEMY_冰冻的石腭怪|r。拾取它获得|r |T134939:0|t|T134939:0|t|cRXP_FRIENDLY_[法术笔记：燃尽]|r
    >>|cRXP_WARN_如果没人帮你，就走进石腭怪的近战范围，对他使用|r |T135820:0|t|T135820:0|t[活体烈焰] |cRXP_WARN_。保持在近战范围内让自己进入战斗，并在冷却时持续使用|r |T135820:0|t|T135820:0|t[活体烈焰] |cRXP_WARN_。大约5-6次施法就能杀死石腭怪。|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step << Mage
    .train 401759 >>|cRXP_WARN_使用|r |T134939:0|t|T132686:0|t|cRXP_FRIENDLY_[法术说明：燃尽]|r |cRXP_WARN_来学习|r |T132686:0|t|T132686:0|t[铭刻胸甲 - 燃尽]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
step << Dwarf Paladin
    #optional
    #label RockjawEnd
    #requires PalaCloth
step
    #label RockjawEnd << !Paladin
    #requires Skullthumpers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    #label QuarryEnd
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>前去找 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target 驾驶员塞克·锤足
step
    .goto Dun Morogh,79.672,36.171
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>击杀|cRXP_ENEMY_癞爪|r。拾取他的战利品 |T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r << Warrior
    >>击杀|cRXP_ENEMY_癞爪|r。从他身上拾取|T134939:0|t|T134939:0|t|cRXP_LOOT_[法术笔记：IGBHNHZNAI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob 癞爪
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|T136048:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_来训练|r |T136048:0|t|T136048:0|t[狂怒雷霆]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_试剂供应商|r处购买一个|T135933:0|t|T134939:0|t[理解魔符]才能使用|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IGBHNHZNAI|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_法术笔记：IGBHNHZNAI|r] |cRXP_WARN_训练|r |T236227:0|t[寒冰指]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    >>|cRXP_WARN_选择|r |T135641:0|t|T135641:0|t工匠匕首|cRXP_WARN_，保留备用|r << Rogue
    .turnin 417 >>交任务 驾驶员的复仇 << !Rogue
    .turnin 417,1 >>交任务 驾驶员的复仇 << Rogue
    .target 驾驶员塞克·锤足
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    >>|cRXP_WARN_选择奖励|r |T135641:0|t[工匠匕首]
    .turnin 417,1 >>交任务 驾驶员的复仇
    .target 驾驶员塞克·锤足
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_将|r |T135641:0|t[工匠匕首] |cRXP_WARN_装备在主手|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #label enterloch
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>穿过隧道前往洛克莫丹
    .zoneskip Loch Modan
step
    #optional
    #completewith lochstart1
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    >>保留你找到的|cRXP_LOOT_香脆蜘蛛肉|r，后续任务会用到
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    >>|cRXP_WARN_收好任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_稍后会用在 |r|T133971:0|t[烹饪] |cRXP_WARN_上|r
step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_寻找|cRXP_FRIENDLY_ 格雷珊·铁炉|r，他在穿过洛克莫丹的道路上来回巡逻。他的巡逻路线标记在你的地图上|r
    >>|cRXP_BUY_从他那里购买一个|r |T237359:0|t|T237359:0|t[怨毒馅饼] |cRXP_BUY_|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_使用|r |T237359:0|t|T132108:0|t[怨毒馅饼] |cRXP_WARN_吃掉它。一旦|r |T134419:0|t|T132108:0|t[凶恶反胃] |cRXP_WARN_减益效果消失，你将获得|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
    .use 208750
    .itemcount 208750,1
step << Dwarf Paladin
    .xp 12
step
    #label lochstart1
    #optional
    .goto 1432,34.405,48.276
    .subzone 144 >>前往塞尔萨玛，洛克莫丹
step
    #completewith lochpatrol3
    .abandon 1338 >>如果你的任务日志中还有 |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r，放弃该任务，否则你稍后将无法接受新任务
step
    #label lochpatrol1
    #completewith lochpatrol2
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入烈酒旅店
    .subzoneskip 2101
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .target 维德拉·壁炉
step << Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与里面的 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor >>|cRXP_BUY_商人垃圾物品，购买最多四个|r |T133634:0|t[棕色小袋] |cRXP_BUY_如果你还需要|r
    .target 雅尼·铁心
step << Dwarf/Gnome
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话，NPC在里面
    .home >>将你的炉石设置为塞尔萨玛
    .target 旅店老板纳克罗·壁炉
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .accept 6387 >>接受任务 荣誉学员
    .target 布洛克·寻石者
step
    #optional
    #label lochpatrol2
step
    #label lochpatrol3
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔

step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .turnin 6387 >>交任务 荣誉学员
    .accept 6391 >>接受任务 飞往铁炉堡
    .target 索格拉姆·伯雷森
step << Hunter
    #sticky
	.goto Loch Modan,33.9,54.0
    .goto Loch Modan,36.6,53.2,0
    .goto Loch Modan,30.0,53.5,0
    .train 172551 >>驯服一只森林潜伏者
    >>|cRXP_WARN_这是矮人猎人最容易获得的高DPS宠物，你最终的目标是用湿地的迅猛龙替换它。|r
    .unitscan 森林潜伏者
step << Human
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fp Thelsamar >>获取塞尔萨玛的飞行路径
step << Dwarf/Gnome
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Ironforge
step << Priest Dwarf
    #season 2
    #completewith end
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    >>|cRXP_WARN_你必须在暴风城大教堂、洛克莫丹或铁炉堡的神秘之地的光明祭坛旁输入/pray，获得2层|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    >>|cRXP_WARN_|T136057:0|t|T136057:0|t|cRXP_PICK_艾露恩的冥想|r增益效果需要由另一位牧师玩家提供，方法是当你使用/kneel跪下时，对方对你使用/pray表情。如果你看到其他牧师带有不同的冥想BUFF，可以请他们为你施加|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Rogue !Human
    #optional
    #completewith next
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>朝楼下|cRXP_FRIENDLY_霍夫丹·黑须|r走去
step << Rogue !Human
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼下的 |cRXP_FRIENDLY_霍夫丹·黑须|r 对话
    .turnin 2218 >>交任务 救赎之路
    .target 霍夫丹·黑须
step << Rogue !Human
    #season 2
    .goto Ironforge,51.913,13.383
    >>打开外面的|cRXP_PICK_脏兮兮的宝箱|r，拾取其中的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_精准符文|r]
    >>|cRXP_WARN_这样做会刷新两个等级10的|cRXP_ENEMY_凶残盗贼|r，它们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
    .zoneskip Ironforge,1
step << Rogue !Human
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_精准符文|r] |cRXP_WARN_来训练|r |T135610:0|t[正中眉心]
    .use 204174
    .itemcount 204174,1
---------pt1
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>朝|cRXP_FRIENDLY_参议员巴林·红石|r走去
step << Dwarf/Gnome
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r 对话
    .turnin 291 >>交任务 森内尔的报告
    .target 参议员巴林·红石
step << !Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里购买一个|r |135640:0|t[双刃弯刀] |cRXP_BUY_|r
    .collect 2207,1 --Jambyia
    .target 布雷文·寒钢
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.0
step << Dwarf/Gnome
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高尼尔·石趾|r 对话
    .turnin 6391 >>交任务 飞往铁炉堡
    .accept 6388 >>接受任务 格莱斯·瑟登
    .target 高尼尔·石趾
step << Dwarf/Gnome
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    >>|cRXP_WARN_不要飞到任何地方|r
    .turnin 6388 >>交任务 格莱斯·瑟登
    .accept 6392 >>接受任务 向格雷姆罗克回复
    .target 格莱斯·瑟登
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,24.2,6.8,12 >>前往 |cRXP_FRIENDLY_布兰度尔·铁锤|r
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .accept 2999 >>接受任务圣洁之书
    .trainer >>训练你的职业技能
    .target 布兰度尔·铁锤
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上，前去找 |cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 2999 >>交任务圣洁之书
    .accept 1645 >>接受任务圣洁之书
    .turnin 1645 >>交任务圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_使用|T133739:0|t|T133739:0|t|cRXP_LOOT_[圣洁之书]|r开始任务|r
    .accept 1646 >>接受任务圣洁之书
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 1646 >>交任务圣洁之书
    .accept 1647 >>接受任务圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_约翰·特纳|r 对话
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_在铁炉堡外环巡逻，路线从石火旅店稍远处一直延伸到访客中心稍远处|r
    .turnin 1647 >>交任务圣洁之书
    .accept 1648 >>接受任务圣洁之书
    .turnin 1648 >>交任务圣洁之书
    --.accept 1778 >>Accept The Tome of Divinity
    .unitscan 约翰·特纳
step << Gnome Mage
    .goto Ironforge,27.0,8.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_彬克|r 对话
    .trainer >>训练你的职业技能
    .target Bink
step << Gnome Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_巴瑞姆·贾根斯塔德|r 对话
    >>|cRXP_BUY_购买至少2个|r |T135933:0|t[理解魔符] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_这些是学习符文所需的材料|r
    .collect 211779,2
    .target Barim Jurgenstaad
step << Dwarf/Gnome
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在洛克莫丹更快交任务：|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    >>如果你之前没有练过，就训练投掷和双手锤
    .train 2567 >>训练 投掷武器
    .goto Ironforge,62.237,89.628
    .train 199 >>训练双手锤
    .goto Ironforge,61.177,89.508
    .target 比克斯
    .target 布里维夫·石拳
step << Warrior !Human
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior !Human
    #optional
    #completewith Dirt
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>朝旅店内的|cRXP_FRIENDLY_布鲁克·麦须|r走去
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>与|cRXP_FRIENDLY_布鲁克·麦须|r 对话
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>与|cRXP_FRIENDLY_布鲁亚特|r对话以开始战斗
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r
    >>|cRXP_WARN_击败|cRXP_ENEMY_布鲁阿尔特|r后：|r
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t|T134419:0|t[狂乱攻击符文]
    >>|cRXP_WARN_如果他没有给你|r |T134419:0|t|T134419:0|t狂乱攻击符文|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁阿尔特|r战斗|r
    >>|cRXP_WARN_注意：此任务可能较难独自完成。你可能需要寻求帮助，否则可以稍后在本指南中再来完成|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t[狂乱攻击符文] |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻护腿 - 狂乱攻击]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_铭刻你的|r |T134596:0|t|T134596:0|t|cRXP_LOOT_[裤子]|r |cRXP_WARN_使用|r |T134596:0|t|T134596:0|t[铭刻裤子 - 狂乱攻击]
    .train 425447,3
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>前往 |cRXP_FRIENDLY_贝莉亚·雷岩|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 对话
    .turnin 6086 >>交任务 训练野兽
    .target 贝莉亚·雷岩
step << Paladin Dwarf
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>朝旅店内的|cRXP_FRIENDLY_布鲁克·麦须|r走去
    .train 425621,1
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>与|cRXP_FRIENDLY_布鲁克·麦须|r 对话
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>与|cRXP_FRIENDLY_布鲁亚特|r对话以开始战斗
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得预读|r |T135924:0|t|T135924:0|t[十字军圣印] |cRXP_WARN_对他|r
    >>|cRXP_WARN_千万别不小心施放|r |T135906:0|t[力量祝福] |cRXP_WARN_在他身上|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t|T135920:0|t[圣光术] |cRXP_WARN_如果必要的话|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得预读|r |T135924:0|t|T135924:0|t[十字军圣印] |cRXP_WARN_对他|r
    >>|cRXP_WARN_千万别不小心施放|r |T135906:0|t[力量祝福] |cRXP_WARN_在他身上|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t|T135920:0|t[圣光术] |cRXP_WARN_如果必要的话|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_布鲁阿尔特|r后：|r
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t|T134419:0|t[责难符文]
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t|T134419:0|t[责难符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁亚特|r战斗|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin Dwarf
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t责难符文 |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻护腿 - 责难]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin Dwarf
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_铭刻你的|r |T134596:0|t|T134596:0|t|cRXP_LOOT_[裤子]|r 使用|r |T134596:0|t|T134596:0|t[铭刻裤子 - 责难]
    >>|cRXP_WARN_铭记将|r |T134919:0|t|T134919:0|t[责难] |cRXP_WARN_放到你的动作条上|r
    .train 425621,3
-- step << Dwarf/Gnome
--     #label Ride
--     .goto Ironforge,51.521,26.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
--     .fly Loch >> Fly to Loch modan
--     .target Golnir Bouldertoe
step << Dwarf/Gnome
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入矿道地铁
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在矿道地铁的中间平台上与 |cRXP_FRIENDLY_蒙提|r 对话
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target 蒙提
step << Dwarf/Gnome
    >>在矿道地铁中对|cRXP_FRIENDLY_矿道老鼠|r使用|T133942:0|t|T133942:0|t[捕鼠者之笛]
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob 矿道老鼠
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在矿道地铁的中间平台上与 |cRXP_FRIENDLY_蒙提|r 对话
    >>他会在交完第一个任务后进行几秒钟的剧情演出。|cRXP_WARN_如果等待会导致你错过电车，就跳过跟随部分|r
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .timer 11,捕捉矿道老鼠剧情表演
    .accept 6662 >>接受任务 我的兄弟，尼普希
    .target 蒙提
step << Dwarf/Gnome
    #label TramEnd
    >>|cRXP_WARN_搭乘矿道地铁前往暴风城方向|r
    >>|cRXP_WARN_在等待前往暴风城的地铁时，如有需要可提升|r |T135966:0|t|T135966:0|t[急救] |cRXP_WARN_技能等级|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼普希|r 在矿道地铁暴风城一侧的中央平台对话
    .turnin 6662 >>交任务 我的兄弟，尼普希
    .isOnQuest 6662
    .target 尼普希
    .subzoneskip 2257,1 --Deeprun Tram
step << Dwarf/Gnome
    #optional
    #completewith Order
    .zone Stormwind City >>进入暴风城
    .isOnQuest 1338
step << !Human
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .accept 353 >>接受任务 雷矛的包裹
    .target 格瑞曼德·艾尔默
step << Dwarf Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Priest Dwarf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .turnin 5634 >>交任务 绝望祷言
    .target 高阶牧师劳瑞娜
step << Priest Dwarf
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .train 13908 >>训练绝望祷言
    .target 高阶牧师劳瑞娜
step << Warrior !Human
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_伊尔萨·考宾|r 对话
    .trainer >>训练你的职业技能
    .accept 1638 >>接受任务 战士的训练
    .target 伊尔萨·考宾
step << Warrior !Human
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >>进入酒馆
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
    .target 哈里·伯加德
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
    .target 巴特莱比
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>击败|cRXP_ENEMY_巴特莱比|r
    .complete 1640,1 --Beat Bartleby
    .mob 巴特莱比
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
    .target 巴特莱比
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target 哈里·伯加德
step << Warlock !Human
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock !Human
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock !Human
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target 黑暗缚灵者加科因
step << Warlock !Human
    #softcore
    .deathskip >>使用 |T136126:0|t[生命分流] 并站在你旁边的篝火上自杀，然后在 灵魂医者处复活
    .target 灵魂医者
    .isOnQuest 1688
step << Warlock !Human
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>前往艾尔文森林
    .isOnQuest 1688
step << Warlock !Human
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step << Warlock !Human
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step << Warlock !Human
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
step << Warlock !Human
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_小心前进，途中有高等级怪物|r
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
step << Warlock !Human
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step << !Human
    .hs >>炉石返回洛克莫丹
    .cooldown item,6948,>0,1 << !Warlock
step << !Warlock !Human
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>从他那里购买|T133745:0|t|T135961:0|t|cRXP_LOOT_[论述：殉道]|r，使用它学习|T135961:0|t|T135961:0|t[殉道圣印] << Paladin
    >>从他那里购买 |T133739:0|t|cRXP_LOOT_[论述：雄狮之心]|r，然后使用它学习 |T132185:0|t[雄狮之心] << Hunter
    .collect 226401,1 << Hunter
    .collect 226398,1 << Paladin
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>如果你有多余的钱，可以从米尔顿那里购买另外两本《圣约》以备后用 << Paladin
    >>如果你有很多闲钱，也可以从他那里购买 |T133739:0|t|cRXP_LOOT_[论述：蝰蛇守护]|r << Hunter
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .money <5
step << !Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与里面的 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor >>|cRXP_BUY_商人垃圾物品，购买最多四个|r |T133634:0|t[棕色小袋] |cRXP_BUY_如果你还需要|r
    .target 雅尼·铁心
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP 联盟 1-20 级
#name 13-16 洛克莫丹 探索赛季
#displayname 13-16 洛克莫丹
#next 16-17 西部荒野 探索赛季
#defaultfor !NightElf

step << Hunter
#optional
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_沃罗克 维罗克·乱枪|r 对话
    >>|cRXP_BUY_购买1把|r |T135613:0|t[猎人火枪] |cRXP_BUY_如果钱够|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .turnin 6392 >>交任务 向格雷姆罗克回复
    .target 布洛克·寻石者
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。登上顶楼
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .accept 267 >>接受任务 穴居人的威胁
    .target 拉格弗斯上尉

step
#completewith next
    .goto Loch Modan,30.0,68.4,0
    .goto Loch Modan,30.0,68.4,30,0 >>前往碎石怪之谷
    .subzoneskip 923
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>击杀|cRXP_ENEMY_穴居怪|r，从它们身上拾取|cRXP_LOOT_头骨形晶簇|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob 碎石怪斥候
    .mob 碎石穴居人
    .train 425443,1
step << Warrior
    #season 2
    #sticky
    #label geode2
    #requires Geode
    .goto Loch Modan,33.2,73.8,0,0
    >>攻击 |cRXP_ENEMY_碎石怪击颅者|r
    >>|cRXP_WARN_战斗中击中你后，会将|cRXP_LOOT_头骨形晶簇|r转化为|r|T236489:0|t|T236489:0|t[|cRXP_LOOT_开裂的头骨形晶簇|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8,0,0
    #season 2
    #sticky
    #requires geode2
    .use 208848 >>|cRXP_WARN_使用|r |T236489:0|t|T134419:0|t[|cRXP_LOOT_开裂的头骨形晶簇|r] |cRXP_WARN_获得|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_迅捷打击符文|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Mage
    #sticky
    #completewith next
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
step << Mage
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>击杀|cRXP_ENEMY_碎石先知|r并从它们身上拾取|cRXP_LOOT_|T134939:0|t|T134939:0|t[嚼过的法术笔记]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step << Mage
    #season 2
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_材料商人|r 那里购买|T135933:0|t[理解魔符] 来使用该物品。
    .train 415936 >>|T134939:0|t|T236220:0|t[|cRXP_FRIENDLY_嚼过的法术笔记|r]学习|T236220:0|t|T236220:0|t[活动炸弹]
    .train 415936,1
    .use 208854
step
#loop
    .goto Loch Modan,34.7,71.6,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
step
    #requires geode2 << Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target 拉格弗斯上尉
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
step << !Human
    #completewith Algaz
    .hs >>炉石到塞尔萨玛
    .cooldown item,6948,>0
    .subzoneskip 924,1--valley of kings

step
    #optional
    #completewith Algaz2
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    >>保留你找到的|cRXP_LOOT_香脆蜘蛛肉|r，后续任务会用到
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    >>|cRXP_WARN_收好任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_稍后会用在 |T133971:0|t[烹饪] |cRXP_WARN_上|r
    >>|cRXP_WARN_不必特意现在完成这个任务，你很快会回到洛克莫丹|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>前往奥加兹岗哨
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >>进入地堡。登上顶楼
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin -353 >>交任务 雷矛的包裹
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step
    #label Algaz2
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
step
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .disablecheckbox
    .complete 307,1 -- Miners' Gear (4)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    #optional
    #completewith RatEar
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    >>保留你找到的|cRXP_LOOT_香脆蜘蛛肉|r，后续任务会用到
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .target 巡山人雷矛
step << Mage
    #season 2
    #sticky
    #completewith next
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,35.48,16.82,0
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    >>|cRXP_ENEMY_隧道老鼠|r |cRXP_WARN_会刷新在洛克莫丹各处。查看世界地图了解它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step << Mage
    #season 2
    #label Loch1
    .goto Loch Modan,50.7,23.9,200 >>前往湖北部岛屿上
    .train 401767,1
step << Mage
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >>进入岛屿东侧的帐篷
    .train 401767,1
step << Mage
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>打开 |cRXP_PICK_一堆遭窃的书|r。从中拾取 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：NIZHGAES|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_FRIENDLY_[法术笔记：NIZHGAES]|r |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸部 - 再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Paladin/Warrior
    #label BuyMace
    #optional
    #completewith RatEar
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔伦·安德玛|r 对话
    >>|cRXP_BUY_从他处购买|r |T133476:0|t[重型尖刺钉锤] |cRXP_BUY_（如果有货的话）|r
    >>|cRXP_WARN_不要购买|r |T133053:0|t[铁木槌] ，|cRXP_WARN_如果|r |T133476:0|t[重型尖刺钉锤] |cRXP_WARN_不在那里。你很快会在暴风城获得更好的武器|r
    >>|cRXP_WARN_如果你买不起，但离目标金额不远，可以在附近的|cRXP_ENEMY_隧道老鼠|r身上刷钱，直到攒够为止|r
    >>|cRXP_WARN_动作要快，否则其他玩家可能会在你之前买下它|r
    >>|cRXP_WARN_如果你不想这样做，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #label RatEar
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    >>|cRXP_ENEMY_隧道老鼠|r |cRXP_WARN_会刷新在洛克莫丹各处。查看世界地图了解它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob 老黑熊
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob 山猪
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob 森林潜伏者
step
    #season 2
    .xp 16-4650
step
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step
    #label ratcatching
    #sticky
    #loop
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .target 维德拉·壁炉
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>交任务 塞尔萨玛血肠
step << Human
    #requires ratcatching
    .hs >>将炉石使用回暴风城
step << !Human
    #requires ratcatching
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_雷格努斯·雷石|r 对话 << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话 << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >>训练你的职业技能
    .target 雷格努斯·雷石 << Hunter
    .target 比尔班·飞钳 << Warrior
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>朝旅店内的|cRXP_FRIENDLY_布鲁克·麦须|r走去
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>与|cRXP_FRIENDLY_布鲁克·麦须|r 对话
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>与|cRXP_FRIENDLY_布鲁亚特|r对话以开始战斗
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r
    >>|cRXP_WARN_击败|cRXP_ENEMY_布鲁阿尔特|r后：|r
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t|T134419:0|t[狂乱攻击符文]
    >>|cRXP_WARN_如果他没有给你|r |T134419:0|t|T134419:0|t狂乱攻击符文|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁阿尔特|r战斗|r
    >>|cRXP_WARN_注意：此任务可能较难独自完成。你可能需要寻求帮助，否则可以稍后在本指南中再来完成|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t[狂乱攻击符文] |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻护腿 - 狂乱攻击]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_铭刻你的|r |T134596:0|t|T134596:0|t|cRXP_LOOT_[裤子]|r |cRXP_WARN_使用|r |T134596:0|t|T134596:0|t[铭刻裤子 - 狂乱攻击]
    .train 425447,3
step << !Human
    .goto Ironforge,78.00,51.40
    .zone Stormwind City >>进入矿道地铁，乘坐地铁前往暴风城
    .isQuestTurnedIn 6662
step << !Human
    .goto Ironforge,78.00,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 在地铁铁炉堡一侧对话，然后和 |cRXP_FRIENDLY_尼普希|r 在暴风城一侧对话
    .zone Stormwind City >>进入矿道地铁，乘坐地铁前往暴风城
    .accept 6662 >>接受任务 我的兄弟，尼普希
    >>乘坐地铁前
    .turnin 6662 >>交任务 我的兄弟，尼普希
    >>乘坐地铁后
    .isQuestAvailable 6662
    .target 蒙提
    .target 尼普希
]])
