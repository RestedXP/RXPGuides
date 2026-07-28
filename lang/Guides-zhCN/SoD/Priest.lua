if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 苦修 - 3 (艾尔文森林)
#title 苦修

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>击杀 |cRXP_ENEMY_狗头人苦力|r，并从其身上拾取 |T136222:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob 狗头人苦力
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_在北郡修道院内时，在你的聊天框中输入 /跪下|r
    >>|cRXP_WARN_你将获得|r |T135934:0|t[圣光之思] |cRXP_WARN_buff|r
    .cast 410958 >>|cRXP_WARN_在你拥有|r |T136222:0|t[圣光之思] |cRXP_FRIENDLY_增益效果时，|r|cRXP_WARN_使用|r |T135934:0|t[|cRXP_WARN_忧虑助祭的回忆|r]
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 苦修 - 1 (丹莫罗)
#title 苦修


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的|cRXP_PICK_石颚足箱|r，从中拾取|T136222:0|t|cRXP_LOOT_[忧虑助祭的回忆]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_对内部的|cRXP_FRIENDLY_圣光祭坛|r施法目标，即可获得|r |T135934:0|t|T135934:0|t[圣光之思] |cRXP_WARN_增益效果|r
    >>|cRXP_WARN_如果这不起作用，在选中|cRXP_FRIENDLY_圣光祭坛|r的情况下输入/kneel|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >>|cRXP_WARN_使用|r |T136222:0|t|cRXP_LOOT_[忧虑助祭的回忆]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 苦修]
    .aura -410935
    .use 205951
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 苦修 - 2 (幽影谷)
#title 苦修

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_珊达|r 对话
    .accept 77574 >>接受任务 艾露恩之思
    .target 珊达
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >>前往幽影谷的月井
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_到达月井后，在你的聊天框中输入 /下跪|r
    >>|cRXP_WARN_你会获得|r |T136057:0|t[艾露恩之思] |cRXP_WARN_buff|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >>|cRXP_WARN_在你拥有|r |T136222:0|t[艾露恩之思] |cRXP_FRIENDLY_增益效果时，|r|cRXP_WARN_使用|r |T136057:0|t[|cRXP_WARN_忧虑助祭的回忆|r]
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与楼上的 |cRXP_FRIENDLY_珊达|r 对话
    .turnin 77574 >>交任务 艾露恩之思
    .target 珊达
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 苦修 - 2 (杜隆塔尔)
#title 苦修


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
    .accept 77642 >>接受任务 洛阿的智慧
    .target 肯杰
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>前往森金村的 |cRXP_PICK_洛阿祭坛|r 输入 /下跪
    .use 205951 >>与出现的|cRXP_FRIENDLY_蛇神洛阿|r对话，然后使用|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯杰|r 对话
    .turnin 77642 >>交任务 洛阿的智慧
    .target 肯杰
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 苦修 - 2 (提瑞斯法)
#title 苦修


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .accept 77670 >>接受任务 亡灵之思
    .target 黑暗牧师杜斯滕
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地，输入 /下跪
    .use 205951 >>当你获得|T136222:0|t[亡灵之思] buff时，使用|T237569:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r]
    .complete 77670,1 >>学习法术：铭刻手套 - 苦修
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .turnin 77670 >>交任务 亡灵之思
    .target 黑暗牧师杜斯滕

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8 (杜隆塔尔)
#title 裂魂魔

step
    .train 402852,1
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在 |cRXP_PICK_洛阿祭坛|r 前，与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>击杀 |cRXP_ENEMY_巫毒巨魔|r。拾取它们的 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_现在你需要找到一名带有洛阿神灵增益效果的亡灵牧师。你必须在他面前跪下，而他需要对你使用/pray。|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思]
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_在森金墓地跪下|r 以获得 |T237569:0|t[亡者之思] buff
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|T237570:0|t|cRXP_FRIENDLY_遭渎城堡的预言|r |cRXP_WARN_来训练|r |T237570:0|t|T237570:0|t裂魂魔
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 7级 (提瑞斯法林地)
#title 裂魂魔

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 402852,1
    >>击杀|cRXP_ENEMY_血色战士|r或|cRXP_ENEMY_血色传教士|r，拾取他们身上的|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_现在你需要找到一位带有洛阿神灵增益效果的不死族牧师。你需要在他面前跪下，他必须为你/祈祷，才能获得|T237569:0|t|T237569:0|t[亡灵之思]buff。|r
step << Troll
    #completewith next
    .zone Durotar >>前往杜隆塔尔 (乘坐飞艇前往奥格瑞玛)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
step << Undead
    #completewith next
    .zone Durotar >>前往杜隆塔尔 (乘坐飞艇前往奥格瑞玛)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话，以获得 |T136077:0|t[洛阿神灵之思] buff
    *|cRXP_WARN_你也可以找到一位带有|T136077:0|t|T136077:0|t[洛阿神灵之思]增益效果的巨魔牧师。在他面前跪下，他必须为你/pray|r。
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_在森金墓地跪下|r 以获得 |T237569:0|t[亡者之思] buff
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|cRXP_FRIENDLY_遭渎城堡的预言|r |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 13级 (杜隆塔尔)
#title 分担痛苦

step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step
    .train 402854,1
    >>击杀|cRXP_ENEMY_玛卡斯加|r或|cRXP_ENEMY_加祖兹|r（在洞穴内），选择离你最近的那个（路径点会引导你前往最近的目标）。拾取他们身上的|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob 加祖兹
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 6级 (提瑞斯法林地)
#title 分担痛苦

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 402854,1
    >>击杀|cRXP_ENEMY_提瑞斯法农夫|r，并从他们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>在墓地跪下，直到获得 |T237569:0|t|T237569:0|t[亡灵之思] buff
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>前往杜隆塔尔 (乘坐飞艇前往奥格瑞玛)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
    .aura -418459
    >>|cRXP_WARN_你还可以找到一位带有洛阿神灵增益效果的不死族牧师。你需要在他面前跪下，他必须为你/祈祷，才能获得|T237569:0|t|T237569:0|t[亡灵之思]buff。|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 5级 (杜隆塔尔)
#title 虚空疫病

step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step
    .train 425216,1
    >>击杀|cRXP_ENEMY_库尔提拉斯水手|r 和 |cRXP_ENEMY_库尔提拉斯水兵|r。拾取他们的 |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯水兵
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话，以获得 |T136077:0|t[洛阿神灵之思] buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t|T237514:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_训练|r |T237514:0|t|T237514:0|t[虚空疫病]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 6级 (提瑞斯法林地)
#title 虚空疫病

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 425216,1
    >>击杀|cRXP_ENEMY_吉尔加|r。从他身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_黑暗意图的记忆|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>在墓地跪下，直到获得 |T237569:0|t|T237569:0|t[亡灵之思] buff
step << Troll
    #completewith next
    .zone Durotar >>前往杜隆塔尔 (乘坐飞艇前往奥格瑞玛)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话，以获得 |T136077:0|t[洛阿神灵之思] buff
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t|T237514:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_训练|r |T237514:0|t|T237514:0|t[虚空疫病]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 6级 (杜隆塔尔)
#title 愈合祷言

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与科卡尔峭壁内的|cRXP_FRIENDLY_冒险者之魂|r对话
    >>|cRXP_WARN_另一个玩家（牧师或萨满祭司）需要点击传送门。拾取|r |cRXP_FRIENDLY_冒险者的灵魂|r |cRXP_WARN_之后获得|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 10级 (莫高雷)
#title 愈合祷言

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与风险投资公司矿洞外的 |cRXP_FRIENDLY_冒险者的灵魂|r 对话
    >>|cRXP_WARN_另一个玩家（牧师或萨满祭司）需要点击传送门。拾取|r |cRXP_FRIENDLY_冒险者的灵魂|r |cRXP_WARN_之后获得|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 10级 (洛克莫丹)
#title 扭曲信仰

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>击杀|cRXP_ENEMY_隧道老鼠|r。从它们身上拾取|T237281:0|t|T237281:0|t[|cRXP_LOOT_供品硬币|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob 坑道鼠斥候
    .mob 坑道鼠地卜师
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_在银溪矿洞内的水井处使用|r |T237281:0|t|T136222:0|t[|cRXP_LOOT_供品硬币|r] |cRXP_WARN_|r |cRXP_WARN_，以获得|r |T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 14级 (西部荒野)
#title 扭曲信仰

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>击杀|cRXP_ENEMY_不死的劳工|r，拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    >>|cRXP_WARN_你必须使用1个神圣法术以击杀|r |cRXP_ENEMY_不死的劳工|r
    >>|cRXP_WARN_不死的劳工|cRXP_ENEMY_ |r会在金海岸矿洞和詹戈洛德矿洞刷新出现|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 18级 (黑海岸)
#title 扭曲信仰

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>击杀|cRXP_ENEMY_暴鳞娜迦战士|r、|cRXP_ENEMY_暴鳞娜迦勇士|r和|cRXP_ENEMY_暴鳞娜迦女巫|r，从它们身上拾取|T236364:0|t|T236364:0|t[|cRXP_LOOT_碎矛供品|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_在水下的碎矛神像处使用|r |T236364:0|t|T136222:0|t[|cRXP_LOOT_碎矛供品|r] |cRXP_WARN_，即可获得|r |T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 10 级(丹莫罗)
#title 分担痛苦

step << Priest
    .goto Loch Modan,77.894,62.236
    >>在建筑内楼下击杀|cRXP_ENEMY_贝尔德船长|r，拾取他身上的|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 6级 (艾尔文森林)
#title 分担痛苦

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>击杀|cRXP_ENEMY_狗头人矿工|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob 狗头人矿工
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8级 (丹莫罗)
#title 裂魂魔

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>击杀|cRXP_ENEMY_霜鬃先知|r，拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob 霜鬃先知
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|cRXP_FRIENDLY_遭渎城堡的预言|r |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel，以获得2层|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8 级(艾尔文森林)
#title 裂魂魔

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>击杀|cRXP_ENEMY_迪菲亚流氓巫师|r，并从它们身上拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|cRXP_FRIENDLY_遭渎城堡的预言|r |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel，以获得2层|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8级 (泰达希尔)
#title 裂魂魔

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往邪石山
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>击杀|cRXP_ENEMY_邪恶小精怪|r、|cRXP_ENEMY_顽皮小精灵|r和|cRXP_ENEMY_暗影小精灵|r，从它们身上拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|cRXP_FRIENDLY_遭渎城堡的预言|r |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须在圣洁区域（如一座月亮井、北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/下跪以获得2层|r |T135934:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 6级 (艾尔文森林)
#title 愈合祷言

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_冒险者遗骸|r旁的牧师或圣骑士组队，或在综合频道（在聊天框输入/1）中寻求圣骑士或牧师的帮助|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_仪式完成后，一个|cRXP_FRIENDLY_冒险者之魂|r会出现并死亡。拾取它获得|r |T135791:0|t|T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 8级 (泰达希尔)
#title 愈合祷言

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_与另一位站在|cRXP_FRIENDLY_冒险者的遗骸|r旁的牧师或德鲁伊组队，或在综合频道中寻求德鲁伊或牧师的帮助（在聊天框输入/1）|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_仪式完成后，一个|cRXP_FRIENDLY_冒险者之魂|r会出现并死亡。拾取它获得|r |T135791:0|t|T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 6级 (丹莫罗)
#title 愈合祷言

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_冒险者遗骸|r旁的牧师或圣骑士组队，或在综合频道（在聊天框输入/1）中寻求圣骑士或牧师的帮助|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_仪式完成后，一个|cRXP_FRIENDLY_冒险者之魂|r会出现并死亡。拾取它获得|r |T135791:0|t|T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_互惠顿悟|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗言术：灭 - 10级（黑海岸）
#title 暗言术：灭

step << Priest
    .goto Darkshore,30.5,47.5
    >>点击小岛上的|cRXP_PICK_捐献光耀残渣|r。拾取以获得|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>你现在必须获得2个|T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想]BUFF
    >>你必须在以下地点之一使用/kneel命令：月井、北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界
    >>为了获得第二个|T135934:0|t|T136057:0|t|T135934:0|t|T136057:0|t[冥想]增益效果，你需要跪在一位与你拥有不同|T135934:0|t|T135934:0|t|T136057:0|t|T136057:0|t[冥想]的牧师面前，并且该牧师必须以你为目标进行/pray
    .train 402849 >>|cRXP_WARN_一旦你同时拥有|r |T135934:0|t|T136057:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_国王陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗言术：灭 - 12级（黑海岸）
#title 暗言术：灭

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >>前往洛克莫丹的莫格罗什要塞
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_选中|cRXP_FRIENDLY_异端神像|r以自动/下跪|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_你将获得|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>你现在必须获得两个 |T135934:0|t|T136057:0|t[冥想] buff
    >>你必须在以下地点之一使用/kneel命令：月井、北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界
    >>为了获得第二个|T135934:0|t|T136057:0|t|T135934:0|t|T136057:0|t[冥想]增益效果，你需要跪在一位与你拥有不同|T135934:0|t|T135934:0|t|T136057:0|t|T136057:0|t[冥想]的牧师面前，并且该牧师必须以你为目标进行/pray
    .train 402849 >>|cRXP_WARN_一旦你同时拥有|r |T135934:0|t|T136057:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_国王陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗言术：灭 - 20级（贫瘠之地）
#title 暗言术：灭

step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>对|T135894:0|t|T135975:0|t[沙漠魅影]使用|cRXP_ENEMY_驱散魔法|r。拾取尸体获得|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r]
    *|cRXP_WARN_这是一只巡逻的绿色幽灵。使用RestedXP目标宏来锁定它。|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想] buff
    >>你必须在祭坛前的以下地点之一|cRXP_WARN_/kneel|r下跪，然后与出现的灵魂对话：森金村或十字路口|cRXP_WARN_（神龛位置已标记在地图上，你也可以找任何带有该增益效果的牧师，让他们复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>要获得第二个|T237569:0|t|T136077:0|t|T237569:0|t|T136077:0|t[冥想]增益效果，你需要/kneel跪在一位拥有|T237569:0|t|T237569:0|t[亡灵之思]的不死族牧师面前，并且该牧师必须在你为目标时使用|cRXP_WARN_/pray|r
    .train 402849 >>|cRXP_WARN_一旦你同时获得|r |T237569:0|t|T136077:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果后，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_王者陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想] buff
    >>你必须在以下地点之一的祭坛前|cRXP_WARN_/kneel|r，然后与出现的灵魂交谈：森金村或十字路口
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>为了获得第二个|T237569:0|t|T136077:0|t|T237569:0|t|T136077:0|t[冥想]增益效果，请在墓地使用|cRXP_WARN_/kneel|r来获取|T237569:0|t|T237569:0|t[亡灵之思]增益|cRXP_WARN_（圣坛和墓地在你的地图上已标记，你也可以找任何拥有该增益的牧师，让他们复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你同时获得|r |T237569:0|t|T136077:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果后，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_王者陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 暗言术：死 - 24级（银松森林）
#title 暗言术：灭

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .goto Silverpine Forest,65.8,23.6
    >>在 |cRXP_PICK_图勒·鸦爪|r（24级精英）身后拾取|cRXP_ENEMY_卷轴|r，以获取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r]
    *|cRXP_WARN_卷轴在二楼，组队会更简单。|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想] buff
    >>你必须在祭坛前的以下地点之一|cRXP_WARN_/kneel|r下跪，然后与出现的灵魂对话：森金村或十字路口|cRXP_WARN_（神龛位置已标记在地图上，你也可以找任何带有该增益效果的牧师，让他们复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>要获得第二个|T237569:0|t|T136077:0|t|T237569:0|t|T136077:0|t[冥想]增益效果，你需要/kneel跪在一位拥有|T237569:0|t|T237569:0|t[亡灵之思]的不死族牧师面前，并且该牧师必须在你为目标时使用|cRXP_WARN_/pray|r
    .train 402849 >>|cRXP_WARN_一旦你同时获得|r |T237569:0|t|T136077:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果后，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_王者陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想] buff
    >>你必须在以下地点之一的祭坛前|cRXP_WARN_/kneel|r，然后与出现的灵魂交谈：森金村或十字路口
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>为了获得第二个|T237569:0|t|T136077:0|t|T237569:0|t|T136077:0|t[冥想]增益效果，请在墓地使用|cRXP_WARN_/kneel|r来获取|T237569:0|t|T237569:0|t[亡灵之思]增益|cRXP_WARN_（圣坛和墓地在你的地图上已标记，你也可以找任何拥有该增益的牧师，让他们复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你同时获得|r |T237569:0|t|T136077:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果后，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_王者陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲命运 - 10级 (银松森林)
#title 扭曲命运

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .train 425215,1
    >>击杀|cRXP_ENEMY_恸哭之灵|r。拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的记忆]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的记忆] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲命运]
    >>|cRXP_WARN_你必须拥有一个|r |T237569:0|t|T136077:0|t|T136077:0|t|T136077:0|t[冥想] |cRXP_WARN_增益效果，通过在|rLoa Shrine|cRXP_WARN_（位于杜隆塔尔或贫瘠之地）前输入|cRXP_PICK_ /kneel |r来获得，或者当其他拥有该增益的牧师对你使用/pray时，在他们面前跪下也可获得|r << Troll
    >>|cRXP_WARN_你必须拥有一个|r |T237569:0|t|T136077:0|t|T136077:0|t|T136077:0|t[冥想] |cRXP_WARN_增益效果，通过在墓地输入|r /kneel |cRXP_WARN_或跪在另一位拥有该增益的牧师面前，当他们对你使用/pray时获得|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲命运 - 10级（贫瘠之地）
#title 扭曲命运

step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 425215,1
    >>击杀|cRXP_ENEMY_刺鬃兽|r，并从它们身上拾取|T236248:0|t|T236248:0|t[|cRXP_FRIENDLY_援手]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob 钢鬃织棘者
    .mob Razormane Hunter
    .mob 钢鬃寻水者
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_找到一个可以复活的死亡玩家或宠物（使用|T135955:0|t|T136222:0|t[复活术]），以获得|r |T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的记忆]
    .collect 205905,1
step
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的记忆] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲命运]
    >>|cRXP_WARN_你必须拥有一个|r |T237569:0|t|T136077:0|t|T136077:0|t|T136077:0|t[冥想] |cRXP_WARN_增益效果，通过在|rLoa Shrine|cRXP_WARN_（位于杜隆塔尔或贫瘠之地）前输入|cRXP_PICK_ /kneel |r来获得，或者当其他拥有该增益的牧师对你使用/pray时，在他们面前跪下也可获得|r << Troll
    >>|cRXP_WARN_你必须拥有一个|r |T237569:0|t|T136077:0|t|T136077:0|t|T136077:0|t[冥想] |cRXP_WARN_增益效果，通过在墓地输入|r /kneel |cRXP_WARN_或跪在另一位拥有该增益的牧师面前，当他们对你使用/pray时获得|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 6级 (艾尔文森林)
#title 虚空疫病

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>进入法戈第矿洞
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>击杀|cRXP_ENEMY_金牙|r。从他身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 金牙
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_训练|r |T237514:0|t[虚空疫病]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 6级 (丹莫罗)
#title 虚空疫病


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>击杀|cRXP_ENEMY_麻风侏儒|r，拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 麻风侏儒
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_训练|r |T237514:0|t[虚空疫病]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 恢复增效 - 27级 (千针石林)
#title 恢复增效


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>前往|cFFfa9602千针石林|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>击杀|cRXP_ENEMY_恐怖图腾地卜师|r、|cRXP_ENEMY_恐怖图腾强盗|r、|cRXP_ENEMY_恐怖图腾抢夺者|r和|cRXP_ENEMY_恐怖图腾践踏者|r，从它们身上拾取|T135975:0|t|T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_使用|r |T135975:0|t|T236254:0|t[|cRXP_LOOT_迅捷天途的预言|r] |cRXP_WARN_来训练|r |T236254:0|t|T236254:0|t[恢复增效]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 恢复增效 - 33级 (奥特兰克山脉)
#title 恢复增效

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>前往 |cFFfa9602奥特兰克山脉|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>击杀|cRXP_ENEMY_破碎岭食人魔|r和|cRXP_ENEMY_破碎岭蛮兵|r，从它们身上拾取|T135975:0|t|T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r]
    .collect 213140,1
    .mob 破碎岭食人魔
    .mob 破碎岭蛮兵
step
    .train 425309 >>|cRXP_WARN_使用|r |T135975:0|t|T236254:0|t[|cRXP_LOOT_迅捷天途的预言|r] |cRXP_WARN_来训练|r |T236254:0|t|T236254:0|t[恢复增效]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 新生希望 - 31级 (凄凉之地)
#title 新生希望

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >>|cRXP_WARN_你必须已经学会|r |T136206:0|t|T135923:0|t[精神控制] |cRXP_WARN_才能获得|r |T135923:0|t|T135923:0|t[新生希望] |cRXP_WARN_符文|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_你必须至少达到31级|r才能对33级的|cRXP_WARN_滑刃潮汐女祭司|cRXP_ENEMY_使用|T136206:0|t|T136206:0|t[精神控制] |r|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>击杀|cRXP_ENEMY_滑刃纳迦|r，并从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_LOOT_不安的幻象|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +|cRXP_WARN_注意：你只能对等级33的|r |T136206:0|t|T136206:0|t[精神控制] |cRXP_WARN_施放于|cRXP_ENEMY_滑刃潮汐女祭司|r。对等级34的目标施放将会失败|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >>|cRXP_WARN_施放|r |T136206:0|t|T136206:0|t[精神控制] |cRXP_WARN_对一个|r |cRXP_ENEMY_滑刃潮汐女祭司|r
    >>|cRXP_WARN_在受到|r |T136206:0|t|T136077:0|t[精神控制]|cRXP_WARN_效果影响时，将目标选为自己，并从宠物动作条上施放|r |T136077:0|t|T136077:0|t[深渊之思] |cRXP_WARN_|r
    >>|cRXP_WARN_随后按下ESC键取消|r |T136206:0|t|T136206:0|t[精神控制] |cRXP_WARN_并击杀|r |cRXP_ENEMY_滑刃潮汐女祭司|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >>|cRXP_WARN_使用|r |T136222:0|t|T135923:0|t[|cRXP_LOOT_不安的幻象|r] |cRXP_WARN_训练|r |T135923:0|t|T135923:0|t[新生希望]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 消散 40级（荆棘谷）
#title 消散

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_找一名带有|r|T132299:0|t[敏锐大师] |cRXP_WARN_符文和|r|T338666:0|t[加尼的护符] |cRXP_WARN_饰品的潜行者，在荆棘谷对任意|r血顶巨魔|cRXP_WARN_使用|cRXP_ENEMY_|T133644:0|t[搜索] |r以获得|r|T237446:0|t[神秘的巨魔卷轴]|cRXP_WARN_。随后需要一名法师使用|r|T135933:0|t[理解魔符] |cRXP_WARN_将其解读，使其变为|T134938:0|t[|cRXP_LOOT_解译的巨魔卷轴|r]|r
    >>|cRXP_WARN_或者直接从拍卖行购买|r |T237446:0|t|T134938:0|t[神秘的巨魔卷轴]|r |cRXP_WARN_，找法师将其破译，或者直接购买已破译的 |T134938:0|t|T134938:0|t[|cRXP_LOOT_解译的巨魔卷轴|r]|r
    .use 216880 >>|cRXP_WARN_使用|T134938:0|t[|cRXP_LOOT_解译的巨魔卷轴|r] 开始这个任务|r
    >>|cRXP_WARN_你也可以找一名牧师与你分享该任务|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >>接受任务 巨魔卷轴
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>前往 |cFFfa9602荆棘谷|r
    >>|cRXP_WARN_前往该处前，确保身上有2层活跃的|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_buff|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>点击|cRXP_PICK_圣泉|r。拾取 |T134712:0|t[|cRXP_LOOT_圣泉之水|r]
    >>|cRXP_WARN_你可能需要击杀守卫在|cRXP_ENEMY_圣泉|r前的|r萨克拉希斯|cRXP_PICK_（45级稀有）|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >>前往祖昆达废墟
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >>|cRXP_WARN_在|r小喷泉处|T134712:0|t使用[|cRXP_LOOT_圣泉之水|r]|cRXP_WARN_|r
    >>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_甘祖拉恩|r（等级41）和他周围的一小群|cRXP_ENEMY_巨魔|r才能到达那个小喷泉|r
    .use 737
    .mob 甘祖拉恩
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>点击出现的|cRXP_PICK_喷泉|r，拾取其中的|T135975:0|t|T135975:0|t|cRXP_LOOT_[囚禁憎怨的预言]|r
    .collect 213142,1
step
    .train 425314 >>|cRXP_WARN_使用|r |T135975:0|t|T237563:0|t|cRXP_LOOT_[囚禁憎怨的预言]|r |cRXP_WARN_来训练|r |T237563:0|t|T237563:0|t[消散]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫米特·奈辛瓦里|r 对话
    .turnin 79731 >>交任务 巨魔卷轴
    .target 赫米特·奈辛瓦里
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 痛苦压制 - 32级 (艾泽拉斯)
#title 痛苦压制

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>前去 |cFFfa9602提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >>进入血色修道院地下城：墓地
step
    >>点击无头骑士刷新点附近的|cRXP_PICK_墓碑|r，收集|cRXP_LOOT_|T136222:0|t|T136222:0|t[墓地的回响]|r |cRXP_WARN_强烈建议组满5人队伍来完成此步骤。|r
    .link https://imgur.com/a/lqRc0i6 >>https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_点击此处查看图片参考。|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>前往阿拉希高地
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>点击|cRXP_PICK_水之墓穴|r，收集戈舍克农场最大建筑旁的|cRXP_LOOT_|T136222:0|t|T136222:0|t[阿拉希的回响]|r。
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>前往尘泥沼泽
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>点击|cRXP_PICK_墓碑|r拾取位于联盟墓地附近的|cRXP_LOOT_|T136222:0|t|T136222:0|t[塞拉摩的回响]|r。
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>点击|cRXP_PICK_水之墓穴|r收集位于湖边树旁的|cRXP_LOOT_|T136222:0|t|T136222:0|t[沼泽的回响]|r。
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>前往 |cFFfa9602提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >>进入血色修道院副本：图书馆 |cRXP_WARN_强烈建议组满5人队伍进行后续步骤。|r
step
    .train 402855,1
    .cast 437054 >>在战士雕像前使用|T136222:0|t|T136222:0|t[沼泽的回响]。
    .use 215425
step
    .train 402855,1
    .cast 437053 >>在法师雕像前使用|T136222:0|t|T136222:0|t[阿拉希的回响]。
    .use 215428
step
    .train 402855,1
    .cast 436952 >>在圣骑士雕像前使用|T136222:0|t|T136222:0|t[塞拉摩的回响]。
    .use 215425
step
    .train 402855,1
    .cast 437055 >>在牧师雕像前使用|T136222:0|t|T136222:0|t[墓地的回响]。
    .use 215426
step
    .train 402855 >>点击房间中央的橙色捐献光耀残渣，获取|T135791:0|t|T135936:0|t|cRXP_FRIENDLY_[伪仿顿悟]|r，使用它来学习|T135936:0|t|T135936:0|t[痛苦压制]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 虚空之眼 - 50 级(艾泽拉斯)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>前往辛特兰
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t发光的眼睛|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>前往诅咒之地
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t脉动的眼球|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>前往灼热峡谷
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t震颤之眼|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t不祥之眼|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t燃烧之眼|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t渗出的眼睛|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>前往费伍德森林
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>点击|cRXP_PICK_|T236407:0|t|T236407:0|t穿刺之眼|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>前往艾萨拉
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>目标 |cRXP_FRIENDLY_洞悉神龛|r
    .emote KNEEL,223590
    .accept 82316,1 >>接受任务 寻找七只眼……
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40级 (塔纳利斯)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在塔纳利斯晚上9点到早上6点之间获得|r |T135981:0|t|T135981:0|t[圣光涌动] |cRXP_WARN_符文。|r
    +如果你想在这个时间段之外获取符文，可以去荆棘谷看看。
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 431669,1
step
    .train 431669,1
    >>使用神圣或奥术法术/魔杖击杀|cRXP_ENEMY_失落灵魂的回响|r |cRXP_WARN_|r ，然后拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_失落部族的预言|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想buff：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t|T135981:0|t[|cRXP_FRIENDLY_失落部族的预言|r] |cRXP_WARN_来训练|r |T135981:0|t|T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 级(悲伤沼泽)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在悲伤沼泽的晚上9点到早上6点之间获得|r |T135981:0|t|T135981:0|t[圣光涌动] |cRXP_WARN_符文。|r
    +如果你想在这个时间段之外获取符文，可以去荆棘谷看看。
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>前往悲伤沼泽
    .train 431669,1
step
    .train 431669,1
    >>使用神圣或奥术法术/魔杖击杀|cRXP_ENEMY_失落灵魂的回响|r |cRXP_WARN_|r ，然后拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_失落部族的预言|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想buff：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t|T135981:0|t[|cRXP_FRIENDLY_失落部族的预言|r] |cRXP_WARN_来训练|r |T135981:0|t|T135981:0|t[圣光涌动]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 级(辛特兰)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在辛特兰的晚上9点到早上6点之间获得|r |T135981:0|t|T135981:0|t[圣光涌动] |cRXP_WARN_符文。|r
    +如果你想在这个时间段之外获取符文，可以去荆棘谷看看。
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>前往辛特兰
    .train 431669,1
step
    .train 431669,1
    >>使用神圣或奥术法术/魔杖击杀|cRXP_ENEMY_失落灵魂的回响|r |cRXP_WARN_|r ，然后拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_失落部族的预言|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想buff：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t|T135981:0|t[|cRXP_FRIENDLY_失落部族的预言|r] |cRXP_WARN_来训练|r |T135981:0|t|T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 级(荆棘谷) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_灵魂只有在鲜血之月事件结束后才会刷新。你也可以关闭该事件，然后直接跑到路径点位置|r。
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 431669,1
step
    .train 431669,1
    >>使用神圣或奥术法术/魔杖击杀|cRXP_ENEMY_失落灵魂的回响|r |cRXP_WARN_|r ，然后拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_失落部族的预言|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想buff：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t|T135981:0|t[|cRXP_FRIENDLY_失落部族的预言|r] |cRXP_WARN_来训练|r |T135981:0|t|T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 级(荆棘谷) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在晚上9点到早上6点之间获得|r |T135981:0|t|T135981:0|t[圣光涌动] |cRXP_WARN_符文。|r
    +如果你想在这个时间段之外获取符文，可以去荆棘谷2看看。
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 431669,1
step
    .train 431669,1
    >>使用神圣或奥术法术/魔杖击杀|cRXP_ENEMY_失落灵魂的回响|r |cRXP_WARN_|r ，然后拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_失落部族的预言|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想buff：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 联结治疗
#name 联结治疗 - 58 级(西瘟疫之地和东瘟疫之地)
#next 牧师种族天赋 - 60级 (艾泽拉斯)

step << Alliance
    #completewith next
    .zone Stormwind City >>前往暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .accept 84320 >>接受任务 遗失的传家宝
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .accept 84405 >>接受任务 遗失的传家宝
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >>前往 西瘟疫之地
step
    .goto Western Plaguelands,51.9,82.4,50 >>前往悔恨岭旁边的大型地穴
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_进入地下墓穴并向左走，向下走并在你的右边小壁龛中寻找一个小木箱。从中拾取战利品来获得|r |T133299:0|t[|cRXP_PICK_传家宝|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_前往地窖底部。从右侧的书架上拾取|r |T133741:0|t|T133735:0|t[|cRXP_PICK_家族谱系|r] |cRXP_WARN_，再从左侧的桌子上拾取|r |T133735:0|t|T133735:0|t[|cRXP_PICK_幸存者日记|r] |cRXP_WARN_|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .turnin 84320 >>交任务 遗失的传家宝
    .accept 84321 >>接受任务 圣光的圣物
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .turnin 84405 >>交任务 遗失的传家宝
    .accept 84406 >>接受任务 圣光的圣物
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_下一个任务需要你从一个精英区域拾取一件物品。单人完成是可行的，但如果你等级较低或装备不够好，建议找人帮忙。|r
    .zone Western Plaguelands >>返回西瘟疫之地
step
    .goto Western Plaguelands,48.2,21.7,50 >>前往壁炉谷，|cRXP_WARN_请注意这是精英区域|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_进入壁炉谷的市政厅，与讲台上的|r |cRXP_PICK_血色账簿|r |cRXP_WARN_互动。注意该区域遍布精英怪物|r
    .turnin 84406 >>交任务 圣光遗物 << Horde
    .turnin 84321 >>交任务 圣光遗物 << Alliance
    .accept 84322 >>接受任务 血色研究
step
    #completewith next
    >>|cRXP_WARN_下一个任务需要你从一个精英区域拾取一件物品。单人完成是可行的，但如果你等级较低或装备不够好，建议找人帮忙。|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,77.5,81.7,50 >>前往提尔之手，|cRXP_WARN_请注意这是精英区域|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_符文|r |T237537:0|t|T237537:0|t[神圣专精] |cRXP_WARN_同样位于提尔之手，如果现在不想获取可以跳过此步骤|r
    >>|cRXP_WARN_如果想要获得它，前往地图上标记的建筑图书馆区域，寻找书架顶部的一本书。拾取它即可获得符文。请注意，你无法在战斗中拾取它。|r
    >>|cRXP_WARN_你可以清光房间里的所有怪物，或者死在书旁边，然后在一个怪物视线之外的位置释放灵魂，这样就能在不杀任何怪的情况下拾取符文|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >>使用|T134419:0|t|T237537:0|t[|cRXP_FRIENDLY_神圣专精符文|r]来训练|T237537:0|t|T237537:0|t[神圣专精]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_进入钟楼并前往顶层。与那里的上锁箱子互动|r
    .turnin 84322 >>交任务 血色研究
    .accept 84323 >>接受任务 匣中珍宝
step
    .goto Eastern Plaguelands,83.6,78.2
    >>击杀提尔之手的所有血色怪物。从它们身上拾取|T134245:0|t|T134245:0|t[|cRXP_LOOT_神器仓库钥匙|r]
    >>|cRXP_WARN_你可以跳过刷钥匙的步骤，找个开锁技能175+的潜行者，他们也能帮你打开箱子。如果你更愿意找潜行者而不是刷钥匙，就跳过这一步。|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>使用|T134245:0|t|T133876:0|t[|cRXP_LOOT_神器仓库钥匙|r]打开|T132874:0|t|T133876:0|t[|cRXP_LOOT_谜之匣|r]，或者让盗贼用开锁技能帮你打开。从中拾取|T132874:0|t|T132874:0|t[|cRXP_LOOT_圣光碎片|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .turnin 84323 >>交任务 匣中珍宝
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .turnin 84323 >>交任务 匣中珍宝
    .target Dietrich Praice
step
    .train 402853 >>使用|T135791:0|t|T135883:0|t[|cRXP_FRIENDLY_欣悦顿悟|r]训练|T135883:0|t|T135883:0|t[|cRXP_FRIENDLY_联结治疗|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 吸血鬼之触
#name 吸血鬼之触 - 60 (屠魔峡谷地下城)

step
    #completewith next
    >>|T135978:0|t[|cRXP_FRIENDLY_吸血鬼之触符文|r] 由探索赛季新增地下城恶魔之陨峡谷的最终首领掉落
    .zone Felwood >>|cRXP_WARN_要进入此地下城，你需要先完成一个短任务来获得饰品，前往费伍德森林来开始该任务|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r对话
    .accept 84384 >>接受任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>前往冬泉谷
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>在永望镇以北寻找|cRXP_ENEMY_狂暴的枭兽|r。击杀它们并拾取|T237413:0|t|T237413:0|t[|cRXP_LOOT_枭兽松果腺|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >>返回费伍德森林
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r对话
    .turnin 84384 >>交任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +将|T136232:0|t|T136232:0|t[|cRXP_FRIENDLY_影齿幻象结界|r]装备到任意饰品栏中。必须装备它才能进入地下城
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_|T135978:0|t[|r吸血鬼之触|cRXP_FRIENDLY_] |r符文|cRXP_WARN_ 由探索赛季新增地下城恶魔之陨峡谷的最终首领掉落。在你前往灰谷时，就可以开始寻找该副本的队伍了|r
    >>如果你在飞行，请直接飞往艾萨拉的塔伦迪斯据点，而不是阿斯特兰纳。那里离副本入口更近 << Alliance
    .zone Ashenvale >>前往灰谷
step
    .goto Ashenvale,84.5,75.0,50 >>前往屠魔峡谷地下城的入口
step
    >>通关副本。|T135791:0|t|T135978:0|t[|cRXP_FRIENDLY_畅导顿悟|r] 可习得|T135978:0|t|T135978:0|t[|cRXP_FRIENDLY_吸血鬼之触|r]，由副本最终首领|cRXP_ENEMY_地狱咆哮的幻影|r掉落。|cRXP_WARN_记得拾取他身上的符文！|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >>使用|T135791:0|t|T135978:0|t[|cRXP_FRIENDLY_畅导顿悟|r]训练|T135978:0|t|T135978:0|t[|cRXP_FRIENDLY_吸血鬼之触|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 额外
#title 牧师种族天赋
#name 牧师种族天赋 - 60 级(艾泽拉斯)


step
    #completewith next
    >>|cRXP_WARN_额外的牧师能力是服务器级解锁，这意味着如果有人已经在你的服务器上完成了，你可以跳过整个任务链并直接前往卡拉赞来学习你的新种族能力。如果不是这样，你可以使用下面的指南成为为你的服务器解锁它的人！|r
    .zone Deadwind Pass >>前往逆风小径
step
    .goto Deadwind Pass,40.8,78.4
    >>前往卡拉赞附近的小神殿
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与卡拉赞旁的神龛处的|cRXP_FRIENDLY_神圣感知|r对话，选择你想要的种族技能
    .target Divine Apprehension
step
    #completewith PreQStart
    +这是牧师种族能力服务器级解锁的任务链开端。|cRXP_WARN_很有可能在你的服务器上已经完成了，你不需要下面的内容。只有在你想尝试该任务链或知道它还没有被解锁时才继续|r
step
    #completewith QStart
    +|cRXP_WARN_要开始此任务，你需要之前完成了奖励|r |T135883:0|t[|cRXP_FRIENDLY_联结治疗|r]|cRXP_WARN_的任务链。你可以在披风符文部分找到它的指南|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_要交这个任务链的第一个任务，你需要4个|r |T134855:0|t|T134855:0|t[|cRXP_LOOT_斯坦索姆圣水|r] |cRXP_WARN_，此外还需要其他材料，这些材料可以从拍卖行购买。找一个队伍去刷斯坦索姆（亡灵区）副本|r
    >>|cRXP_WARN_进入副本后，寻找并拾取散落在地面上的补给箱。这些箱子可能装有圣水，但也可能是陷阱，会生成难以对付的敌人。|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >>前往暴风城
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>从拍卖行购买6 |T133682:0|t|T134834:0|t[|cRXP_LOOT_厚符文布绷带|r]、4 |T132834:0|t|T134855:0|t[|cRXP_LOOT_特效治疗药水|r]和8 |T132834:0|t|T132834:0|t[|cRXP_LOOT_巨蛋|r]。这些物品将与你已收集的|T134855:0|t|T134855:0|t[|cRXP_LOOT_斯坦索姆圣水|r]一起，用于该任务链的第一个任务
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target 拍卖师亚克森
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .accept 84324 >>接受任务 外交手段
    .turnin 84324 >>交任务 外交手段
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨苏恩|r 对话
    >>从拍卖行购买6 |T133682:0|t|T134834:0|t[|cRXP_LOOT_厚符文布绷带|r]、4 |T132834:0|t|T134855:0|t[|cRXP_LOOT_特效治疗药水|r]和8 |T132834:0|t|T132834:0|t[|cRXP_LOOT_巨蛋|r]。这些物品将与你已收集的|T134855:0|t|T134855:0|t[|cRXP_LOOT_斯坦索姆圣水|r]一起，用于该任务链的第一个任务
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .accept 84408 >>接受任务 外交手段
    .turnin 84408 >>交任务 外交手段
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_对于任务的下一部分，你需要找到一个也在此任务链中的对立阵营牧师来推进进度|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_前往位于东瘟疫之地的|r |cRXP_FRIENDLY_合作神殿|r|cRXP_WARN_。与对立阵营的牧师互相造成伤害，然后使用|r |T134918:0|t|T134918:0|t[|cRXP_FRIENDLY_利众结界|r] |cRXP_WARN_（通过提交上一个任务获得的物品）来治疗彼此|r
    >>如果操作正确，|cRXP_FRIENDLY_合作神殿|r会提供一个任务，接受它
    .accept 84325 >>接受任务 合作神龛 << Alliance
    .accept 84410 >>接受任务 合作神龛 << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>从拍卖行购买2个|T134459:0|t|T134086:0|t[|cRXP_LOOT_奥金锭|r]、2个|T134132:0|t|T134086:0|t[|cRXP_LOOT_山脉之血|r]和3个|T134132:0|t|T134132:0|t[|cRXP_LOOT_蓝宝石|r]。你很快需要这些物品来交任务，它们可能价格不菲
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target 拍卖师亚克森
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .turnin 84325 >>交任务 合作神龛
    .accept 84326 >>接受任务 外交之戒
    .turnin 84326 >>交任务 外交之戒
    .accept 84327 >>接受任务 外交任务
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回至奥格瑞玛
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨苏恩|r 对话
    >>从拍卖行购买2个|T134459:0|t|T134086:0|t[|cRXP_LOOT_奥金锭|r]、2个|T134132:0|t|T134086:0|t[|cRXP_LOOT_山脉之血|r]和3个|T134132:0|t|T134132:0|t[|cRXP_LOOT_蓝宝石|r]。你很快需要这些物品来交任务，它们可能价格不菲
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .turnin 84410 >>交任务 合作神龛
    .accept 84411 >>接受任务 外交之戒
    .turnin 84411 >>交任务 外交之戒
    .accept 84412 >>接受任务 外交任务
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名对立阵营的牧师，让他在你站在暴风城城门旁时，对你使用|r |T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r] |cRXP_WARN_。这样城市卫兵就不会再攻击你，让你安全进入敌方主城|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营玩家仍然可以攻击你！|r
    .zone Elwynn Forest >>前往暴风城的大门
step << Horde
    .goto Stormwind City,38.8,26.6
    >>让对立阵营的牧师对你使用|T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r]，这样城市卫兵就不会攻击你，然后前往暴风城大教堂。|cRXP_WARN_你仍然可能被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .turnin 84412 >>交任务 外交任务
    .accept 84413 >>接受任务 修复碎片
    .target 高阶牧师劳瑞娜
step << Alliance
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名对立阵营的牧师，让他在你站在奥格瑞玛城门旁时，对你使用|r |T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r] |cRXP_WARN_。这样城市卫兵就不会再攻击你，让你安全进入敌方主城|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营玩家仍然可以攻击你！|r
    .zone Durotar >>前往奧格瑞玛的大门
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>让对立阵营的牧师对你使用|T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r]，这样城市卫兵就不会攻击你，然后前往灵魂之谷。|cRXP_WARN_你仍可能被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .turnin 84327 >>交任务 外交任务
    .accept 84328 >>接受任务 修复碎片
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_开始为厄运之槌西副本寻找队伍，因为下一个任务需要击杀|r |cRXP_ENEMY_卡兰德里斯的魔法师|r |cRXP_WARN_副本中的一个首领|r
    .zone Feralas >>前往菲拉斯
step
    .goto Feralas,59.1,43.2,100 >>前往厄运之槌地区
step
    .goto Feralas,60.4,30.2
    >>进入厄运之槌西区，击杀|cRXP_ENEMY_卡兰德里斯的魔导师|r。从他身上拾取书籍|T133737:0|t|T133737:0|t[|cRXP_LOOT_应用神学|r]。他位于副本的幽灵区域
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名对立阵营的牧师，让他在你站在暴风城城门旁时，对你使用|r |T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r] |cRXP_WARN_。这样城市卫兵就不会再攻击你，让你安全进入敌方主城|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营玩家仍然可以攻击你！|r
    .zone Elwynn Forest >>前往暴风城的大门
step << Horde
    .goto Stormwind City,38.8,26.6
    >>让对立阵营的牧师对你使用|T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r]，这样城市卫兵就不会攻击你，然后前往暴风城大教堂。|cRXP_WARN_你仍然可能被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .turnin 84413 >>交任务 修复碎片
    .accept 84329 >>接受任务 集会召集
    .target 高阶牧师劳瑞娜
step << Alliance
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名对立阵营的牧师，让他在你站在奥格瑞玛城门旁时，对你使用|r |T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r] |cRXP_WARN_。这样城市卫兵就不会再攻击你，让你安全进入敌方主城|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营玩家仍然可以攻击你！|r
    .zone Durotar >>前往奥格瑞玛的大门
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>让对立阵营的牧师对你使用|T133396:0|t|T133396:0|t[|cFF0070FF外交官之戒|r]，这样城市卫兵就不会攻击你，然后前往灵魂之谷。|cRXP_WARN_你仍可能被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r对话
    .turnin 84328 >>交任务 修复碎片
    .accept 84329 >>接受任务 议会集结
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >>前往逆风小径
step
    .goto Deadwind Pass,40.8,78.4
    >>前往位于卡拉赞旁边的小神殿
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦丝拉·炉心|r 在卡拉赞旁边的小神殿对话
    .turnin 84329 >>交任务 议会集结
step
    +完成上述任务应该完成此任务线，并在全服范围内解锁训练来自其他种族的种族牧师能力
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 灵魂守护
#name 灵魂守护 - 60级 (斯坦索姆)

step
    #completewith next
    >>|cRXP_WARN_为了完成这个符文，你需要在斯坦索姆地下城内完成几个任务（包括生存和死亡的方面）。开始寻找一个队伍|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,47.8,24.2
    >>进入斯坦索姆
    >>|cRXP_WARN_请仔细阅读本章节，因为这个符文任务有点不寻常|r
    >>要获得该符文，你需要从斯坦索姆的BOSS身上收集3个精华。携带精华的BOSS是|cRXP_WARN_每次副本ID随机且不同|r。要了解本次副本中哪些BOSS携带精华，你需要寻找位于副本活人侧血色建筑内柱子上的线索
    >>要收集精华，你需要3个|T134799:0|t|T134237:0|t[|cRXP_LOOT_斯坦索姆暗影罐|r]，它们由副本内的[|cRXP_PICK_邮箱包裹|r]掉落。要打开[|cRXP_PICK_邮箱|r]，首先需要击杀|cRXP_ENEMY_斯坦索姆信使|r，从他身上获取|T134237:0|t|T134237:0|t[|cRXP_LOOT_邮箱钥匙|r]
    >>一旦你收集了所有精华，就必须返回带有线索的石柱处，使用与提示对应的精华激活它们。这会召唤出一个球体，你需要拾取它来获得符文
    +|cRXP_WARN_阅读完上面的内容后点击这里查看更多关于哪条线索对应哪个首领的详情，如果需要，你可以随时回到这一步|r
step
    >>|cRXP_WARN_以下是线索及其对应的首领：|r
    >>此人身处死者之中，与侍僧和冰霜法术为伴 = 苍白的玛勒基
    >>被诅咒守卫高塔的幽灵，财富与权力无法带来慰藉 = 安娜丝塔丽男爵夫人
    >>古老王国重见天日，只是换了一个主人 = 奈鲁布恩坎
    >>由血肉构成的科学罪恶，被遗弃者精英追捕 = 吞咽者拉姆斯登
    >>人民寄希望于他在其最困难之时领导 = 巴瑟拉斯镇长
    >>邪恶恶意的拥护者，庞大的恐怖守卫其宫殿 = 瑞文戴尔男爵
    >>神圣的狂热净化罪恶，然而一个影子潜伏其中 = 巴纳扎尔
    >>硫磺气味弥漫房间。这个狂热者用轰鸣声向你问好 = 炮手威利
    +|cRXP_WARN_如果你想查看完成任务的推荐有效步骤顺序，请点击这里。如果需要，你可以随时回到这一步重新阅读线索|r
step
    >>|cRXP_WARN_完成此任务的有效步骤顺序如下：|r
    >>1. 从该地下城的活人区开始
    >>2. 搜刮三个[|cRXP_PICK_邮箱包裹|r]以获得|T134799:0|t[|cRXP_LOOT_斯坦索姆阴影之瓮|r]。这些罐子是唯一物品，因此需要由不同的玩家各拾取一个
    >>3. 清理小怪直到抵达基座房间，在你的副本ID中找出哪些首领拥有这些精华
    >>4. 在打副本的过程中收集所有精华
    >>5. 返回基座房间，并使用对应的精华激活每一个基座
    >>6. 拾取生成的球体来获得你的符文
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >>使用|T135791:0|t|T135948:0|t[|cRXP_FRIENDLY_梦谵顿悟|r]来训练|T135948:0|t|T135948:0|t[|cRXP_FRIENDLY_灵魂守护|r]
    .use 228124
]])
