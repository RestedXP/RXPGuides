if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 鬼影缠身 - 3 (艾尔文森林)
#title 鬼影缠身

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>打开地上的 |cRXP_PICK_迪菲亚储物箱|r。从中拾取 |T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r]
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r] |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 鬼影缠身]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 鬼影缠身 - 1 (丹莫罗)
#title 鬼影缠身

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地上的|cRXP_PICK_石颌足箱|r，拾取|T134419:0|t|cRXP_LOOT_[鬼影缠身符文]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_使用|r t|T134419:0|t|cRXP_LOOT_[鬼影缠身符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 鬼影缠身]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 鬼影缠身 - 2 (杜隆塔尔)
#title 鬼影缠身


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳托克|r 对话
    .accept 77586 >>接受任务 失窃的力量
    .target 纳托克
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>拾取|cRXP_PICK_浸水的储物箱|r，获取洞穴内的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_使用|r t|T134419:0|t|cRXP_LOOT_[鬼影缠身符文]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 鬼影缠身]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈安|r 对话
    .turnin 77586 >>交任务 失窃的力量
    .target 纳托克
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 鬼影缠身 - 2 (提瑞斯法林地)
#title 鬼影缠身


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .accept 77672 >>接受任务 失落的符文
    .target 马克希米林
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>拾取洞穴内的 |cRXP_PICK_失落的藏宝|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：NNGABIIHGQSU|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .turnin 77672 >>交任务 失落的符文
    .target 马克希米林


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 灵魂虹吸 - 13 (杜隆塔尔)
#title 灵魂虹吸

step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>对一只小动物使用|T136163:0|t|T134095:0|t[吸取灵魂]，以获得一个|T134095:0|t|T134095:0|t[纯净的灵魂碎片]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>对|cRXP_ENEMY_加兹乌兹|r（洞穴内）使用|T136163:0|t|T134085:0|t[吸取灵魂]，获取|T134085:0|t|T134085:0|t[被污染的灵魂碎片]。|cRXP_WARN_无需击杀他，可从下方吸取|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob 加祖兹
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔马克·血嗥|r 对话
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_使用|r |T134419:0|t|T136169:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r] |cRXP_WARN_来训练|r |T136169:0|t|T136169:0|t[灵魂虹吸]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 灵魂虹吸 - 9 (提瑞斯法林地)
#title 灵魂虹吸

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>对一只小动物使用|T136163:0|t|T134095:0|t[吸取灵魂]，以获得一个|T134095:0|t|T134095:0|t[纯净的灵魂碎片]
step
    .train 403920,1
    >>对|cRXP_ENEMY_蛆眼|r使用|T136163:0|t|T134085:0|t[吸取灵魂]，获取一个|T134085:0|t|T134085:0|t[被污染的灵魂碎片]。|cRXP_WARN_不需要击杀他。|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在幽暗城与 |cRXP_FRIENDLY_登顿·荒途|r 对话
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_使用|r |T134419:0|t|T136169:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r] |cRXP_WARN_来训练|r |T136169:0|t|T136169:0|t[灵魂虹吸]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 恶魔战术 - 4 (提瑞斯法林地)
#title 恶魔战术

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 死去的侍僧|cRXP_FRIENDLY_ 对话。打开|r |T133625:0|t[侍僧的背包]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在旅馆楼上与 |cRXP_FRIENDLY_鲁伯特·鲍什|r 对话。
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target 鲁伯特·鲍什
step
    .train 416009,1
    >>在符文石旁边使用|T133447:0|t|T133447:0|t[能量耗尽的神器]。|cRXP_WARN_之后你有10分钟时间前往幽暗城（查看你的debuff）|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与幽暗城的 |cRXP_FRIENDLY_凯伦丁·哈加尔|r 对话
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target 凯伦丁·哈加尔
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_使用|r |T134419:0|t|T136150:0|t[|cRXP_FRIENDLY_战术符文|r] |cRXP_WARN_来训练|r |T136150:0|t|T136150:0|t[恶魔战术]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 恶魔优雅 - 8 (杜隆塔尔)
#title 恶魔优雅

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>前往杜隆塔尔
step
    #completewith DemonicGraceDurotarSkull
    >>击杀|cRXP_ENEMY_龙虾人|r。拾取它们的|T133571:0|t[龙虾人的腿]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>击杀|cRXP_ENEMY_被诅咒的巨魔|r和|cRXP_ENEMY_巫毒巨魔|r，并从它们身上拾取|T133733:0|t|T133733:0|t[不祥宝典]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>击杀|cRXP_ENEMY_库尔提拉斯人|r，并从他们身上拾取|T133730:0|t|T133730:0|t[库尔提拉斯人的颅骨]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>击杀|cRXP_ENEMY_龙虾人|r，从它们身上拾取|T133571:0|t|T133571:0|t[龙虾人腿肉]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_小心：其他人可能会标记你的恶魔，这意味着你需要重新收集材料|r
    >>进入下水道。在召唤法阵处使用|T133733:0|t[不祥宝典]。击杀|cRXP_WARN_精英怪（可能需要寻求帮助）|r |cRXP_ENEMY_召唤索波兹|r。从它身上拾取|T134419:0|t[|cRXP_FRIENDLY_优雅符文|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r] |cRXP_WARN_来训练|r |T236293:0|t[恶魔优雅]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 恶魔优雅 - 8 (提瑞斯法林地)
#title 恶魔优雅

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>击杀|cRXP_ENEMY_暗皮猎犬|r，拾取它们以获得|T133726:0|t|T133726:0|t[猎犬的颚骨]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob 衰老的黑暗犬
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>击杀|cRXP_ENEMY_暗眼骨法师|r，并从它们身上拾取|T133733:0|t|T133733:0|t[不祥宝典]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>击杀 |cRXP_ENEMY_腐皮豺狼人|r。拾取他们的 |T133730:0|t[豺狼人之血]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>击杀|cRXP_ENEMY_暗皮猎犬|r，拾取它们以获得|T133726:0|t|T133726:0|t[猎犬的颚骨]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob 衰老的黑暗犬
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_小心：其他人可能会标记你的恶魔，这意味着你需要重新收集材料|r
    >>进入下水道。在召唤法阵处使用|T133733:0|t|T134419:0|t[不祥宝典]。击杀|cRXP_WARN_精英怪（可能需要寻求帮助）|r |cRXP_ENEMY_召唤索波兹|r。从它身上拾取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_优雅符文|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_使用|r |T134419:0|t|T236293:0|t[|cRXP_FRIENDLY_优雅符文|r] |cRXP_WARN_来训练|r |T236293:0|t|T236293:0|t[恶魔优雅]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
-- #subgroup Chest << Mage
#subgroup 手套 << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name 混乱之箭 - 8 (提瑞斯法林地) << Warlock
#title 混乱之箭 << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>从材料商人处购买一个（或多个）|T135933:0|t|T135933:0|t[理解魔符]
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>释放|cRXP_ENEMY_冰冻的鱼人|r |cRXP_WARN_使用火焰法术|r。从他身上拾取|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：燃尽|r] << Mage
    >>|cRXP_ENEMY_使用火焰法术|r 解救 |cRXP_WARN_冰冻渔人|r 。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r] << Warlock
    *|cRXP_WARN_在低等级时你无法单独解救它，再找一个术士或法师|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>你需要从材料商人那里购买|T135933:0|t[理解魔符] 来使用该物品 << Mage
    .train 403925 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r] |cRXP_WARN_来训练|r |T236291:0|t[混乱之箭]  << Warlock
    .train 401759 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：燃尽|r] |cRXP_WARN_来训练|r |T236207:0|t[燃尽] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 火焰之湖 - 25 (希尔斯布莱德丘陵)
#title 火焰之湖

step
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵（例如从幽暗城穿过银松森林） << Horde
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵（例如从湿地向北） << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>寻找 |cRXP_FRIENDLY_吉克希尔|r。他在塔伦米尔和南海镇之间巡逻。从他那里 |cRXP_WARN_花1金币|r 购买 |T133709:0|t[爆破炸药]
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>使用 |T133709:0|t[爆破炸药s] 破坏 |cRXP_PICK_碎石|r。拾取地上 |cRXP_PICK_储物箱|r 里的|T134419:0|t[|cRXP_FRIENDLY_唤火之痕符文|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_唤火之痕符文|r] |cRXP_WARN_来训练|r |T135826:0|t[火焰之湖]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#name 烧尽 - 22 (赤脊山)
#title 烧尽

step
    #completewith next
    .zone Redridge Mountains >>前往赤脊山
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>击杀 |cRXP_ENEMY_焚化者加因姆|r |cRXP_WARN_（23级精英怪）|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_烧尽符文|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_烧尽符文|r] |cRXP_WARN_来训练|r |T135789:0|t[烧尽]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 引导大师 - 12 (贫瘠之地)
#title 引导大师

step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 403932,1
    >>|cRXP_WARN_前往荆棘祭坛|r。使用 |T136126:0|t[生命分流] 将生命值降到极低。然后对你的宠物施放 |T136168:0|t[生命通道] 直到自己死亡，即可获得 |T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    *|cRXP_WARN_你死亡后会立刻复活|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 引导大师 - 14 (银松森林)
#title 引导大师

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .train 403932,1
    >>进入所在地区的洞穴。在 |cRXP_ENEMY_嗜虐魔|r 上使用 |T136225:0|t[鲁莽诅咒]。击杀它并拾取它的 |T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影箭雨 - 16 (The Barrens)
#title 暗影箭雨

step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 403936,1
    >>对 |cRXP_ENEMY_鲁格维兹主管|r 使用 |T136163:0|t[吸取灵魂] （|cRXP_ENEMY_监工格里比|r 也可能有效）直到你获得 |T134105:0|t[贪婪之魂]
    *|cRXP_WARN_你不需要标签|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob 鲁格维兹主管
    .mob 监工格里比
step
    .train 403936,1
    >>点击 |cRXP_PICK_饥饿神像|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r] |cRXP_WARN_来训练|r |T136195:0|t[暗影箭雨]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影箭雨 - 18 (银松森林)
#title 暗影箭雨

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>击杀 |cRXP_ENEMY_洞穴内的|r |cRXP_ENEMY_鸦爪苦工|r 和 |cRXP_WARN_鸦爪守护者|r 。拾取他们的 |T236295:0|t[被折磨的灵魂]
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>使用 |T136126:0|t[生命分流] 一次，然后使用 |T236295:0|t[被折磨的灵魂]。击杀 |cRXP_ENEMY_被折磨的灵魂|r。拾取 |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r] |cRXP_WARN_来训练|r |T136195:0|t[暗影箭雨]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 恶魔变形 - 25 (艾泽拉斯)
#title 恶魔变形

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_建议在团队中完成所有步骤。某些步骤可以单独完成。|r
step
    #completewith next
    .zone Redridge Mountains >>前往赤脊山（例如从棘齿城乘船到藏宝海湾，然后向北跑） << Horde
    .zone Redridge Mountains >>前往赤脊山 << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>在塔顶拾取 |cRXP_PICK_恶魔圣物箱|r 以获得 |T134337:0|t[戴斯宝珠]
    *|cRXP_WARN_小心此处有精英守卫。让你的蓝胖子扛住小怪，然后你去拾取宝箱|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杜安·卡汉|r 对话
    *|cRXP_WARN_如果你正在穿越贫瘠之地，跳过这一步|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>接受任务 索兰鲁克宝珠
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>前往黑海岸（从米奈希尔港乘船） << Alliance
    .zone Darkshore >>前往黑海岸（步行穿过灰谷） << Horde
step
    .train 403938,1
    >>拾取塔顶的|cRXP_PICK_阿尔泰克之枝|r，获得|T135153:0|t[阿尔泰克之枝]
    *|cRXP_WARN_小心。一种方法是死在附近，跳到书架后面，复活（可以把能攻击到你的第一个法系怪先恐惧了），然后拾取物品。|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杜安·卡汉|r 对话
    .goto The Barrens,49.2,57.2
    .accept 1740 >>接受任务 索兰鲁克宝珠
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>前往灰谷
step
    .train 403938,1
    >>杀死黑暗深渊副本入口附近的 |cRXP_ENEMY_暮光侍僧|r。拾取他们的 |cRXP_LOOT_索兰鲁克宝珠的碎片|r
    *|cRXP_WARN_副本内5号Boss前面的 |cRXP_WARN_暮光侍僧|r 也会掉落它们|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>击杀 |cRXP_ENEMY_影牙城堡地下城内的 |r影牙黑暗灵魂|cRXP_WARN_ （击败 |cRXP_ENEMY_席瓦莱恩男爵|r 后往右走）。拾取他们的|r |cRXP_LOOT_索兰鲁克宝珠的大碎片|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杜安·卡汉|r 对话
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>交任务 索兰鲁克宝珠
    .accept 78680 >>接受任务 谣言四起
    .turnin 78680 >>交任务 谣言四起
    .accept 78681 >>接受任务 魔法召唤
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>前往灰谷
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>击杀该区域的|cRXP_ENEMY_恶魔|r。拾取它们身上的|cRXP_LOOT_军团之血|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_如果你和一群术士组队，那么第一个交任务（身上有减益效果）的术士必须站在符文内，对|cRXP_ENEMY_灼热的地狱火|r 完成最后一击。|r
step
    .train 403938,1
    >>与|cRXP_PICK_黑暗仪式石|r 互动
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>交任务 招魂
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>击杀刷新的|cRXP_ENEMY_恶魔|r。|cRXP_WARN_站在符文内|cRXP_ENEMY_， |r引导 |T136163:0|t[吸取灵魂] 将 |r灼热的地狱火|cRXP_WARN_ 进行击杀|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>接受任务 神秘的旅行者
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杜安·卡汉|r 对话获取 |T134419:0|t[|cRXP_FRIENDLY_变形符文|r]
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>交任务 神秘的旅行者
    .turnin 78702 >>交任务 拉泽尔·安德
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_恶魔变形符文|r] |cRXP_WARN_来训练|r |T237558:0|t[恶魔变形]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 协同魔典 - 40 (艾泽拉斯)
#title 协同魔典

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_你必须至少达到30级才能获得|r |T133738:0|t[协同魔典] |cRXP_WARN_符文|r
    .xp >30,1
step
    .train 403938 >>|cRXP_WARN_你必须先获得|r |T237558:0|t[恶魔变形] |cRXP_WARN_符文才能获得|r |T133738:0|t[协同魔典] |cRXP_WARN_符文|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_你必须至少达到30级才能获得|r |T133738:0|t[协同魔典] |cRXP_WARN_符文|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉斯泽尔·安德r|r 对话
    >>|cRXP_WARN_你必须处于|r |T237558:0|t[恶魔变形] |cRXP_WARN_形态下才能看到|r |cRXP_FRIENDLY_拉斯泽尔·安德|r
    .accept 78994 >>接受任务 坚实的基础
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板维尔雷|r 对话
    .home >>将你的炉石设置到棘齿城
    .target 旅店老板维尔雷
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比鲁拉|r 对话
    .home >>将你的炉石设置到陶拉祖营地
    .target 比鲁拉
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r 对话
    .fly Azshara >>飞往艾萨拉
    .target 布拉高克
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧姆萨|r 对话
    .fly Splintertree Post >>飞往碎木岗哨
    .target 欧姆萨·雷角
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_前往灰谷的箭头所在地区|r
    .cast 126 >>|cRXP_WARN_施放|r |T136155:0|t[基尔罗格之眼] |cRXP_WARN_并控制它前往林荫墓地（那个全是60级以上精英怪的区域），寻找一棵|cRXP_PICK_ 暗影枝桠|r 树。林荫墓地各处可能有多个刷新点，理想情况下你需要找到一个附近没有太多精英怪的刷新点，以便你前去拾取|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >>|cRXP_WARN_使用|r |T236874:0|t[隐形药水] |cRXP_WARN_并在大树荫中寻找一颗 |cRXP_PICK_暗影枝桠|r 树。该区域有很多60+级的精英巡逻怪|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_在拾取|cRXP_PICK_ 暗影枝桠|r 之前，脱掉你所有的装备并施放|r |T136121:0|t[防护暗影结界]|cRXP_WARN_。你即将获得一个会造成百分比伤害的极高伤害减益效果。拾取后请做好直接使用炉石回城的准备|r
    >>在大树荫中拾取任意一个 |cRXP_PICK_暗影枝桠|r
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >>使用炉石返回棘齿城 << Alliance
    .hs >>使用炉石返回陶拉祖营地 << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉斯泽尔·安德r|r 对话
    >>|cRXP_WARN_你必须处于|r |T237558:0|t[恶魔变形] |cRXP_WARN_形态下才能看到|r |cRXP_FRIENDLY_拉斯泽尔·安德|r
    .turnin 78994 >>交任务 坚实的基础
    .accept 78914 >>接受任务 灵魂之器
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_收集以下材料并让工程学玩家为你制作一个|r |T133254:0|t[灵魂之器]。|cRXP_WARN_注意，|r |T134133:0|t[黑色硫酸盐] |cRXP_WARN_和|r |T134074:0|t[暗影石] |cRXP_WARN_可以从拍卖行购买，而|r |T134337:0|t[恶魔雕像] |cRXP_WARN_可以从|r 施法材料商|cRXP_FRIENDLY_ 处购买|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_或者你可以直接从拍卖行购买|r |T133254:0|t[灵魂之器]|cRXP_WARN_ |r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >>前往凄凉之地
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉斯泽尔·安德r|r 对话
    >>|cRXP_WARN_你必须处于|r |T237558:0|t[恶魔变形] |cRXP_WARN_形态下才能看到|r |cRXP_FRIENDLY_拉斯泽尔·安德|r
    .turnin 78914 >>交任务 灵魂之器
    .accept 79298 >>接受任务 挑战命运
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >>与 |cRXP_FRIENDLY_拉斯泽尔·安德|r 对话以开始仪式
    .timer 14,挑战命运 剧情演出
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>点击 |cRXP_PICK_重组的戴斯阿尔泰克法杖|r 来召唤 |cRXP_ENEMY_戴斯阿尔泰克|r
    >>|cRXP_WARN_确保你处于满血状态并激活了|r |T136121:0|t[防护暗影结界]，|cRXP_WARN_因为你在引导过程中以及整个战斗期间都会受到伤害|r
    >>击杀 |cRXP_ENEMY_戴斯阿尔泰克|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉斯泽尔·安德r|r 对话
    >>|cRXP_WARN_你必须处于|r |T237558:0|t[恶魔变形] |cRXP_WARN_形态下才能看到|r |cRXP_FRIENDLY_拉斯泽尔·安德|r
    .turnin 79298 >>交任务 挑战命运
    .target Raszel Ander
step
    .train 426445 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_协同符文|r] |cRXP_WARN_来学习|r |T133738:0|t[协同魔典]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 引导大师 - 10 (洛克莫丹)
#title 引导大师

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
    >>|cRXP_BUY_从他那里购买一个|r |T237359:0|t[怨毒馅饼] |cRXP_BUY_|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_使用|r |T237359:0|t[怨毒馅饼] |cRXP_WARN_吃掉它。一旦|r |T132108:0|t[凶恶反胃] |cRXP_WARN_debuff消失，你将获得|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 引导大师 - 15 (黑海岸)
#title 引导大师

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>击杀|cRXP_ENEMY_暗滩狂热者|r。拾取他们的|T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob 暗滩狂热者
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 灵魂虹吸 - 10 (丹莫罗)
#title 灵魂虹吸

step << Warlock
    #completewith next
    >>|cRXP_WARN_对任何小生物 |r施放|cRXP_WARN_ |T136163:0|t[吸取灵魂] 来获得一个|r |T134095:0|t[|cRXP_LOOT_纯净的灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>击杀建筑内部下层的 |cRXP_ENEMY_贝尔德队长|r。拾取他的 |T134085:0|t[|cRXP_LOOT_被污染的灵魂碎片|r]
    >>|cRXP_WARN_确保他在你也对他使用|r |T136163:0|t[吸取灵魂] |cRXP_WARN_时死亡|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_对任何小生物 |r施放|cRXP_WARN_ |T136163:0|t[吸取灵魂] 来获得一个|r |T134095:0|t[|cRXP_LOOT_纯净的灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加克里克·虚节|r 对话来获得 |T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r] |cRXP_WARN_来训练|r |T136169:0|t[灵魂虹吸]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 灵魂虹吸 - 10 (艾尔文森林)
#title 灵魂虹吸

step << Warlock
    #completewith next
    >>|cRXP_WARN_对任何小生物 |r施放|cRXP_WARN_ |T136163:0|t[吸取灵魂] 来获得一个|r |T134095:0|t[|cRXP_LOOT_纯净的灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>击杀 |cRXP_ENEMY_霍格|r。拾取他的 |T134085:0|t[|cRXP_LOOT_被污染的灵魂碎片|r]
    >>|cRXP_WARN_确保他在你也对他使用|r |T136163:0|t[吸取灵魂] |cRXP_WARN_时死亡|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob 霍格
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_对任何小生物 |r施放|cRXP_WARN_ |T136163:0|t[吸取灵魂] 来获得一个|r |T134095:0|t[|cRXP_LOOT_纯净的灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆地下室与 |cRXP_FRIENDLY_达米安·凯恩|r 对话来获得 |T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸符文|r] |cRXP_WARN_来训练|r |T136169:0|t[灵魂虹吸]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 恶魔战术 - 1 (艾尔文森林)
#title 恶魔战术

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>拾取 |cRXP_FRIENDLY_死亡的侍僧|r 以获得 |T133625:0|t[|cRXP_LOOT_助祭的背包|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_使用|r |T133625:0|t[|cRXP_LOOT_助祭的背包|r] |cRXP_WARN_来获得一个|r |T133447:0|t[|cRXP_LOOT_来历不明的神器|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 在闪金镇旅馆地下室对话来获得 |T133447:0|t[|cRXP_LOOT_能量耗尽的神器|r]
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target 玛克西米利安·克洛文
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_在|r 死亡的侍僧|cRXP_LOOT_ |r的所在地使用|cRXP_WARN_ |T133447:0|t[|cRXP_FRIENDLY_能量耗尽的神器|r] |r来获得|cRXP_WARN_ |T136008:0|t[血祭]debuff|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话来获得 |T134419:0|t[|cRXP_FRIENDLY_战术符文|r]
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target 黑暗缚灵者加科因
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_战术符文|r] |cRXP_WARN_来学习|r |T136150:0|t[恶魔战术]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 恶魔优雅 - 10 (艾尔文森林)
#title 恶魔优雅

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>击杀 |cRXP_ENEMY_狗头人地卜师|r。拾取他们的 |T133733:0|t[|cRXP_LOOT_不祥魔典|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_豺狼人之血|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>击杀 |cRXP_ENEMY_癞皮狼|r、|cRXP_ENEMY_森林灰狼|r 和 |cRXP_ENEMY_觅食的灰狼|r。拾取他们的 |cRXP_LOOT_狼的颚骨|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 418065 >>|cRXP_WARN_使用|r |T133733:0|t[|cRXP_LOOT_不祥魔典|r] |cRXP_WARN_来召唤|r |cRXP_ENEMY_索波兹|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >>击杀 |cRXP_ENEMY_索波兹|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r] |cRXP_WARN_来训练|r |T236293:0|t[恶魔优雅]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 恶魔优雅 - 10 (丹莫罗)
#title 恶魔优雅

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>杀死 |cRXP_ENEMY_霜鬃暗法师|r。拾取他们的 |T133733:0|t[|cRXP_LOOT_不祥魔典|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>击杀 |cRXP_ENEMY_雪怪幼崽|r 和 |cRXP_ENEMY_雪怪|r。拾取他们的 |cRXP_LOOT_雪怪之血|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob 雪怪幼崽
    .mob 雪怪
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>在丹莫罗击杀 |cRXP_ENEMY_狼|r。拾取它们的 |cRXP_LOOT_狼的颚骨|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob 冬狼
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >>|cRXP_WARN_使用|r |T133733:0|t[|cRXP_LOOT_不祥魔典|r] |cRXP_WARN_来召唤|r |cRXP_ENEMY_索波兹|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >>击杀 |cRXP_ENEMY_索波兹|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r] |cRXP_WARN_来训练|r |T236293:0|t[恶魔优雅]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗影箭雨 - 16 (黑海岸)
#title 暗影箭雨

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>击杀 |cRXP_ENEMY_被憎恨的德玛尼斯|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_暗影箭符文|r] |cRXP_WARN_来训练|r |T136195:0|t[暗影箭雨]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 混乱之箭 - 8 (丹莫罗)
#title 混乱之箭

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>击杀 |cRXP_ENEMY_被冰冻的穴居人|r。拾取它的 |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r]
    >>|cRXP_WARN_注意：为了打破冰块，你必须以极快的速度连续使用多个火焰法术对其进行攻击|r
    >>|cRXP_WARN_施放|r |T135817:0|t[献祭] |cRXP_WARN_并使用你的 小鬼 一起攻击它。你需要另一个术士或法师的协助来摧毁它|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r] |cRXP_WARN_来训练|r |T236291:0|t[混乱之箭]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 混乱之箭 - 8 (艾尔文森林)
#title 混乱之箭

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>击杀 |cRXP_ENEMY_冰冻渔人|r。拾取它的 |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r]
    >>|cRXP_WARN_注意：为了打破冰块，你必须以极快的速度连续使用多个火焰法术对其进行攻击|r
    >>|cRXP_WARN_施放|r |T135817:0|t[献祭] |cRXP_WARN_并使用你的 小鬼 一起攻击它。你需要另一个术士或法师的协助来摧毁它|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_混乱之箭符文|r] |cRXP_WARN_来训练|r |T236291:0|t[混乱之箭]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 祈告 - 35 (阿拉希高地)
#title 祈告

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_建议你额外找些队友来获取|r |T134419:0|t[|cRXP_LOOT_祈告符文|r] |cRXP_WARN_，因为需要在激流堡击杀精英怪|r
step
    .train 426443,1
    .zone Arathi Highlands >>前往阿拉希高地
step
    .train 426443,1
    #completewith next
    .subzone 324 >>前往斯托姆加德要塞
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>击杀|cRXP_ENEMY_辛蒂咒术师|r。从它们身上拾取|T348282:0|t[|cRXP_LOOT_咒术师坠饰|r]
    >>在引导|T136163:0|t[吸取灵魂]时击杀一只|cRXP_ENEMY_虚空行者爪牙|r，即可获得|T132885:0|t[|cRXP_LOOT_虚空之魂|r]
    .collect 213573,10
    .collect 213572,1
    .mob 辛迪加咒术师
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >>|cRXP_WARN_进入暴风城要塞下层的大房子，上到二楼|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >>|cRXP_WARN_在楼梯上漂浮的|r |cRXP_LOOT_虚空棱镜|r 旁边 |cRXP_WARN_使用|r |T348282:0|t[|cRXP_PICK_咒术师的挂坠|r] |cRXP_WARN_，会召唤一只36级精英|cRXP_ENEMY_虚空探索者|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>杀死 |cRXP_ENEMY_虚空搜寻者|r。拾取它的 |T134419:0|t[|cRXP_LOOT_祈告符文|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_LOOT_祈告符文|r] |cRXP_WARN_来学习|r |T136133:0|t[祈告]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 堕落之舞 - 35 (凄凉之地)
#title 堕落之舞

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>前往凄凉之地
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>点击地上的 |cRXP_ENEMY_鲁莽的术士|r。拾取他的 |T236297:0|t[烈火活祭]
    >>|cRXP_WARN_这是一个稀有敌人，有可能不会出现|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_施放|r |T135818:0|t[地狱烈焰] |cRXP_WARN_将自身生命值降至70%以下。随后|r |T236297:0|t[硝硫雕刻] |cRXP_WARN_会转化为|r |T134419:0|t[|cRXP_FRIENDLY_堕落符文|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_堕落符文|r] |cRXP_WARN_来学习|r |T236295:0|t[堕落之舞]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 堕落之舞 - 35 (Stranglethorn)
#title 堕落之舞

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>前往荆棘谷
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>点击地面上的|cRXP_ENEMY_鲁莽的术士|r。搜刮尸体获得|T236297:0|t[硝硫雕刻]
    >>|cRXP_WARN_这是一个稀有敌人，有可能不会出现|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_施放|r |T135818:0|t[地狱烈焰] |cRXP_WARN_将自身生命值降至70%以下。随后|r |T236297:0|t[硝硫雕刻] |cRXP_WARN_会转化为|r |T134419:0|t[|cRXP_FRIENDLY_堕落符文|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_堕落符文|r] |cRXP_WARN_来学习|r |T236295:0|t[堕落之舞]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 暗影烈焰 - 40 (凄凉之地)
#title 暗影烈焰


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>前往凄凉之地 |cRXP_WARN_强烈建议组建一只至少3人的小队。|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_点击祭坛以召唤|r |cRXP_ENEMY_女魅魔塞娜|r|cRXP_WARN_，但请务必提前使用|r |T136121:0|t[防护暗影结界]|cRXP_WARN_，|r |T136190:0|t[牺牲]|cRXP_WARN_和|r |T136160:0|t[灵魂链接]|r |cRXP_WARN_|r |cFFFF0000，因为你在引导过程中会受到大量伤害，且该伤害无法被治疗|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_点击祭坛以召唤|r |cRXP_ENEMY_女魅魔塞娜|r|cRXP_WARN_，但请务必提前使用|r |T136121:0|t[防护暗影结界]|cRXP_WARN_和|r |T136190:0|t[牺牲] |cRXP_WARN_|r |cFFFF0000，因为你在引导过程中会受到大量伤害，且该伤害无法被治疗|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>击杀 |cRXP_ENEMY_女魅魔塞娜|r。拾取她的 |T134419:0|t[|cRXP_FRIENDLY_暗影烈焰符文|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_暗影烈焰符文|r] |cRXP_WARN_来学习|r |T236302:0|t[暗影烈焰]
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 献祭光环
#name 献祭光环 - 40 (灰谷)

step
    #completewith next
    .zone Ashenvale >>前往灰谷
step
    .goto Ashenvale,93.5,38.0,100 >>前往你的地图上标记的灰谷梦魇进犯区域
    .train 431758,1
step
    >>击杀传送门外的恶魔，直到获得下方列出的所有三个物品
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_梦焚之火|r 由 |cRXP_ENEMY_骇火小鬼|r 掉落
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_梦誓之角|r 由 |cRXP_ENEMY_烬火梦誓者|r 掉落
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_逐梦獠牙|r 由 |cRXP_ENEMY_逐梦猎犬|r 掉落
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
    .train 431758,1
step
    .cast 447537 >>右键点击来自你的背包的任何物品以将其组合，并获得 |T134419:0|t[|cRXP_FRIENDLY_献祭光环符文|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
    .train 431758,1
step
    .train 431758 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_献祭光环符文|r] |cRXP_WARN_来学习|r |T135802:0|t[献祭光环]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 召唤恶魔卫士
#name 召唤恶魔卫士 - 10 (艾泽拉斯)

step
    #completewith next
    +|cRXP_WARN_为了获得这个符文，你需要先找到一只|r |T236294:0|t|cRXP_FRIENDLY_探险小鬼|r。|cRXP_WARN_如果你还没有，请对怪物施放|r |T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r。|cRXP_WARN_该法术的每次伤害跳跃（Tick）都有几率让你获得一个|r |T133257:0|t|cRXP_LOOT_探险之魂|r。|cRXP_WARN_使用它来学会如何召唤你的|r |T236294:0|t|cRXP_FRIENDLY_探险小鬼|r
step
    +前往下方的一个区域。符文可以从任何区域获得，但更高级的区域会从你的探险小鬼提供更好的奖励
    >>贫瘠之地
    >>西部荒野
    >>黑海岸
    >>银松森林
    >>灰谷
    >>赤脊山
    >>悲伤沼泽
    >>凄凉之地
    >>菲拉斯
    >>艾萨拉
    >>诅咒之地
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>在地图上标记的位置寻找 |cRXP_FRIENDLY_邪能传送门|r。一旦找到，请站在传送门旁召唤你的 |T236294:0|t|cRXP_FRIENDLY_探险小鬼|r 并与其对话。小鬼会开始探索传送门，你将获得一个 |T136164:0|t|cRXP_FRIENDLY_小鬼特勤|r buff。大约 10-20 分钟后，你的小鬼将会回到你身边，或者你可以重新召唤它并再次与其对话，以交付一个可重复的任务，奖励 |T133639:0|t|cRXP_LOOT_异界奇珍|r。打开它你将获得战利品，并有几率获得 |T134419:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r]。继续寻找裂隙并拾取宝藏，直到你找到它为止
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0

    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 431756 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r] |cRXP_WARN_学习|r |T136216:0|t[召唤恶魔卫士]
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#title 恶疾
#name 恶疾 - 40 (菲拉斯)

step
    #completewith next
    .zone Feralas >>前往菲拉斯
step
    .goto Feralas,69.6,43.3
    >>前往莫沙彻营地以西的标记所在地区。寻找一名躺在树旁的 |cRXP_ENEMY_病死的恐怖图腾萨满祭司|r。在尸体旁边你会发现一个 |cRXP_PICK_恐怖图腾箱子|r。拾取以获得 |T133291:0|t|cRXP_LOOT_恐怖图腾项链|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    .goto 1444/1,695.400,-4920.300,20 >>前往通向木爪巢穴山丘的上山小路
    .train 431743,1
step
    .goto 1444/1,831.200,-4851.000,20 >>沿着火把标记的小路上去
    .train 431743,1
step
    .goto 1444/1,826.500,-4725.100
    >>沿着营地的右侧边缘走，前往|cRXP_ENEMY_病死的木爪秘法师|r。在他的旁边你会发现一个|cRXP_PICK_木爪包|r，拾取其中的|T135139:0|t|cRXP_LOOT_破损的木爪法杖|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step
    >>使用 |T135139:0|t|cRXP_LOOT_破损的木爪法杖|r，将其与 |T133291:0|t|cRXP_LOOT_恐怖图腾项链|r 合成为 |T135153:0|t|cRXP_LOOT_病态自然法杖|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step
    .goto Feralas,72.6,50.8
    >>寻找一个正在沉睡的|cRXP_ENEMY_患病的森林行者|r，使用你的|T135153:0|t|cRXP_LOOT_病态自然法杖|r 将其唤醒。击败他并拾取|T134419:0|t[|cRXP_FRIENDLY_恶疾符文|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step
    .train 431743 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_恶疾符文|r] |cRXP_WARN_来学习|r |T136227:0|t[恶疾]
    .use 220617
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 屠戮
#name 屠戮 - 55 (艾泽拉斯)

step
    #completewith next
    .zone Burning Steppes >>前往燃烧平原
step
    #loop
    .goto Burning Steppes,93.2,59.0,55,0
    .goto Burning Steppes,72.2,31.6,55,0
    .goto Burning Steppes,69.0,26.4,55,0
    .goto Burning Steppes,59.8,65.0,55,0
    .goto Burning Steppes,36.4,60.8,55,0
    .goto Burning Steppes,24.2,64.6,55,0
    .goto Burning Steppes,37.6,42.2,55,0
    >>|cRXP_WARN_寻找 |cRXP_PICK_邪能裂隙|r。这些是可以在整个区域出现的传送门|r
    >>|cRXP_WARN_与 |cRXP_PICK_裂隙|r 对话并让你的 |cRXP_FRIENDLY_探险小鬼|r 穿过 |cRXP_PICK_裂隙|r，等待小鬼返回并带回|r |T135222:0|t[|cRXP_LOOT_军团传送门调谐器|r]
    >>|cRXP_WARN_你可能需要重复几次，直到它返回并带来|r |T135222:0|t[|cRXP_LOOT_军团传送门调谐器|r]
    .collect 224806,1
    .train 440922,1
    .skipgossip
step
    #completewith next
    .zone Blasted Lands >>前往诅咒之地
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224806 >>|cRXP_WARN_在一个 |r邪能之疤|cRXP_LOOT_ 上 |r使用|cRXP_WARN_ |T135222:0|t[|cRXP_PICK_军团传送门调谐器|r] ，这将把它变成|r |cRXP_PICK_异界之门|r
    >>|cRXP_WARN_与 |cRXP_PICK_异界之门|r 对话并让你的 |cRXP_FRIENDLY_探险小鬼|r 穿过它，等待它返回并带来|r |T134429:0|t[|cRXP_LOOT_传送门调谐器调谐器|r]
    >>|cRXP_WARN_你可能需要重复几次，直到它返回并带来|r |T134429:0|t[|cRXP_LOOT_传送门调谐器调谐器|r]
    .collect 224912,1
    .train 440922,1
    .skipgossip
step
    .use 224912 >>|cRXP_WARN_使用|r |T134429:0|t[|cRXP_LOOT_传送门调谐器调谐器|r] |cRXP_WARN_将其变成|r |T135224:0|t[|cRXP_LOOT_超载的传送门调谐器|r]
    .collect 224893,1
    .train 440922,1
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224893 >>|cRXP_WARN_在一个 |r邪能之疤|cRXP_LOOT_ 上 |r使用|cRXP_WARN_ |T135224:0|t[|cRXP_PICK_超载的传送门调谐器|r] ，这将使其变红|r
    >>|cRXP_WARN_与其对话并让你的 |cRXP_FRIENDLY_探险小鬼|r 穿过它，等待它带回来|r |T134419:0|t[|cRXP_FRIENDLY_屠戮符文|r]
    .collect 225686,1
    .train 440922,1
    .skipgossip
step
    .train 440922 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_屠戮符文|r] |cRXP_WARN_来学习|r |T135808:0|t[灭杀]
    .use 225686
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 混沌标记
#name 混沌标记 - 50 (西瘟疫之地)

step
    #completewith next
    .zone Western Plaguelands >>前往 西瘟疫之地
step
    #loop
    .goto Western Plaguelands,50.6,77.6
    >>|cRXP_WARN_直到你获得3个|r 染疫的灵魂碎片|cRXP_WARN_ 为止，对|cRXP_ENEMY_ |r骷髅剥皮者|r |cRXP_LOOT_施放|r |T136163:0|t[吸取灵魂]
    .collect 225929,3
    .mob Skeletal Flayer
    .train 440924,1
step
    .goto Western Plaguelands,43.361,84.143 << Alliance
    .goto Tirisfal Glades,83.035,72.631 << Horde
    >>|cRXP_WARN_在冰风岗向|cRXP_LOOT_ 普拉吉克·窃碎|r 交付|cRXP_FRIENDLY_ 染疫的灵魂碎片|r 以获得|r |T134419:0|t[|cRXP_FRIENDLY_混沌标记符文|r] << Alliance
    >>|cRXP_WARN_在冰风岗向|cRXP_LOOT_ 普拉吉克·窃碎|r 交付|cRXP_FRIENDLY_ 染疫的灵魂碎片|r 以获得|r |T134419:0|t[|cRXP_FRIENDLY_混沌标记符文|r] << Horde
    .collect 225688,1
    .target Pixi Pilfershard << Alliance
    .target Prazik Pilfershard << Horde
    .train 440924,1
step
    .train 440924 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_混沌标记符文|r] |cRXP_WARN_来学习|r |T136226:0|t[混沌标记]
    .use 225688
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 地狱火护甲
#name 地狱火护甲 - 55 (诅咒之地)

step
    #completewith next
    .zone Blasted Lands >>前往诅咒之地
    >>|cRXP_WARN_请确保你已经训练了以下技能，并考虑组织一个治疗者，因为你需要击杀一个56级精英怪|r
    >>|T134131:0|t[强效法术石]
    >>|T136121:0|t[防护暗影结界]
    >>|T136190:0|t[牺牲] |cRXP_WARN_你的|r |T136221:0|t[虚空行者]
step
    .train 440926,1
    #loop
    .goto Blasted Lands,65.31,32.63,20,0
    .goto Blasted Lands,68.050,28.667
    >>击杀任意 |cRXP_ENEMY_魔誓怪|r。拾取它们的 |cRXP_LOOT_魔誓便签|r
    .collect 227658,1
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
    .mob Shadowsworn Enforcer
    .mob Shadowsworn Warlock
    .mob Shadowsworn Dreadweaver
step
    .train 440926,1
    .goto Blasted Lands,68.050,28.667
    >>前往洞穴的后方 |cRXP_PICK_祭坛|r
    >>|cRXP_WARN_在点击|cRXP_PICK_ 祭坛|r 之前，请确保你已使用|r |T134131:0|t[强效法术石]|cRXP_WARN_，|r |T136121:0|t[防护暗影结界]|cRXP_WARN_和|r |T136190:0|t[牺牲]|cRXP_WARN_，因为在点击|cRXP_PICK_ 祭坛|r 并召唤|cRXP_ENEMY_ 赫利亚斯|r 的过程中，你将承受大量伤害。|cRXP_ENEMY_ 赫利亚斯|r 是一个56级精英|r
    >>击杀 |cRXP_ENEMY_赫利亚斯|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_地狱火护甲符文|r]
    .collect 225687,1
    .mob Heliath
step
    .train 440926 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_地狱火护甲符文|r] |cRXP_WARN_来学习|r |T236418:0|t[地狱火护甲]
    .use 225687
]])
