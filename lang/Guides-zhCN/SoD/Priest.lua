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
    >>|cRXP_WARN_Type /下跪 in 你的 chatbox while inside of 北郡修道院|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_珊达|r 对话
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
    .accept 77642 >>接受 洛阿的智慧
    .target 肯杰
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>前往 |cRXP_PICK_Loa 祭坛|r (位于 Sen'Jin Village)，输入 /下跪
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
#name 苦修 - 2 (Tirisfal)
#title 苦修


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .accept 77670 >>接受 亡者之思
    .target 黑暗牧师杜斯滕
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地，输入 /下跪
    .use 205951 >>使用 |T136222:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r] 当你获得 |T237569:0|t[亡者之思] buff
    .complete 77670,1 >>学习法术：铭刻手套 - 苦修
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .turnin 77670 >>交还 亡者之思
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
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前，与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>击杀 |cRXP_ENEMY_Voodoo Trolls|r。拾取战利品 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
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
    .aura 418459 >>|cRXP_WARN_在 Sen'jin 墓地跪下|r 以获得 |T237569:0|t[亡者之思] buff
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
#name 裂魂魔 - 7 (提瑞斯法林地)
#title 裂魂魔

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 402852,1
    >>击杀 |cRXP_ENEMY_Scarlet Warriors|r 或 |cRXP_ENEMY_Scarlet Missionaries|r。拾取战利品 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Now you have to find an 亡灵牧师 with a Loa buff. 你 have to kneel before him and he has to /祈祷 for you to get the |T237569:0|t[亡者之思] buff.|r
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
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前，与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
    *|cRXP_WARN_你也可以找一个带有 |T136077:0|t[洛阿神灵之思] buff 的巨魔牧师。在他面前跪下，他需要为你 /祈祷。|r
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_在 Sen'jin 墓地跪下|r 以获得 |T237569:0|t[亡者之思] buff
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
#name 分担痛苦 - 13 (杜隆塔尔)
#title 分担痛苦

step
    #completewith next
    .zone Durotar >>前往杜隆塔尔
step
    .train 402854,1
    >>击杀 |cRXP_ENEMY_马卡斯加|r 或 |cRXP_ENEMY_加祖兹|r（在洞穴内），选择距离你最近的一个（路径点会引导你到最近的那个）。拾取 |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
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
#name 分担痛苦 - 6 (提瑞斯法林地)
#title 分担痛苦

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 402854,1
    >>击杀 |cRXP_ENEMY_Tirisfal Farmers|r。拾取 |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>在墓地跪下直到获得增益 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>前往杜隆塔尔（乘坐飞艇到奥格瑞玛）
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>在 |cRXP_PICK_洛阿神灵祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 对话以获得 |T136077:0|t[洛阿神灵之思] buff
    .aura -418459
    >>|cRXP_WARN_你也可以找到一个亡灵牧师带着洛阿增益。你必须在他面前跪下，他也需要为你祈祷以获得 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT] 增益。|r
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
#name 虚空疫病 - 5 (杜隆塔尔)
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
    .aura 417316 >>在 |cRXP_PICK_Loa 祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 交谈以获得 |T136077:0|t[洛阿神灵之思]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_来学习|r |T237514:0|t[虚空疫病]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 6 (提瑞斯法林地)
#title 虚空疫病

step
    #completewith next
    .zone Tirisfal Glades >>前往提瑞斯法林地
step
    .train 425216,1
    >>击杀 |cRXP_ENEMY_Gillgar|r。拾取他的 |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>在墓地跪下直到获得增益 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT]
step << Troll
    #completewith next
    .zone Durotar >>前往杜隆塔尔（乘坐飞艇到奥格瑞玛）
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>在 |cRXP_PICK_Loa 祭坛|r 前跪下并与 |cRXP_FRIENDLY_毒蛇洛阿神灵|r 交谈以获得 |T136077:0|t[洛阿神灵之思]
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_来学习|r |T237514:0|t[虚空疫病]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 6 (杜隆塔尔)
#title 愈合祷言

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Adventurer's 精神|r 在科卡尔峭壁内对话
    >>|cRXP_WARN_另一个玩家（牧师或萨满祭司）需要点击传送门。拾取|r |cRXP_FRIENDLY_Adventurer's 精神|r |cRXP_WARN_之后获得|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 10 (莫高雷)
#title 愈合祷言

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Adventurer's 精神|r对话，位于Venture Co. 矿场外
    >>|cRXP_WARN_另一个玩家（牧师或萨满祭司）需要点击传送门。拾取|r |cRXP_FRIENDLY_Adventurer's 精神|r |cRXP_WARN_之后获得|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 10 (洛克莫丹)
#title 扭曲信仰

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>击杀 |cRXP_ENEMY_Tunnel Rats|r。拾取它们的 |T237281:0|t[|cRXP_LOOT_供品硬币|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob 坑道鼠斥候
    .mob 坑道鼠地卜师
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_使用|r |T237281:0|t[|cRXP_LOOT_供品硬币|r] |cRXP_WARN_在银流矿洞内的井处以获得|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r] |cRXP_WARN_来学习|r |T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须有一个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，方法是在圣地输入 /下跪，例如 北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹 或 铁炉堡的神秘区|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 14 (西部荒野)
#title 扭曲信仰

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>击杀 |cRXP_ENEMY_不死的劳工|r。拾取它的 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r]
    >>|cRXP_WARN_你必须使用一个神圣法术以击杀|r |cRXP_ENEMY_不死的劳工|r
    >>|cRXP_WARN_不死的劳工|cRXP_ENEMY_ |r可以在金海岸矿洞和詹戈洛德矿洞出现|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r] |cRXP_WARN_来学习|r |T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须有一个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，方法是在圣地输入 /下跪，例如 北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹 或 铁炉堡的神秘区|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲信仰 - 18 (黑海岸)
#title 扭曲信仰

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>击杀 |cRXP_ENEMY_Stormscale Myrmidons|r、|cRXP_ENEMY_Stormscale Warriors|r 和 |cRXP_ENEMY_Stormscale Sorceresses|r。拾取它们的 |T236364:0|t[|cRXP_LOOT_碎矛供品|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_使用|r |T236364:0|t[|cRXP_LOOT_碎矛供品|r] |cRXP_WARN_在水下的碎矛图腾处以获得|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士|r] |cRXP_WARN_来学习|r |T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须有一个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，方法是在圣地输入 /下跪，例如 北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹 或 铁炉堡的神秘区|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 10 (丹莫罗)
#title 分担痛苦

step << Priest
    .goto Loch Modan,77.894,62.236
    >>击杀楼下建筑内的 |cRXP_ENEMY_贝尔德队长|r。拾取他的 |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须有一个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，方法是在圣地输入 /下跪，例如 北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹 或 铁炉堡的神秘区|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 分担痛苦 - 6 (艾尔文森林)
#title 分担痛苦

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>击杀 |cRXP_ENEMY_Kobold Miners|r。拾取它们的 |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob 狗头人矿工
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须有一个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，方法是在圣地输入 /下跪，例如 北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹 或 铁炉堡的神秘区|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8 (丹莫罗)
#title 裂魂魔

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>杀死 |cRXP_ENEMY_Frostmane Seers|r。拾取它们获得 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob 霜鬃先知
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r] |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须拥有2个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，通过在神圣区域（如北郡修道院、暴风城大教堂、安威玛尔或洛克莫达尔的光之祭坛、铁炉堡的神秘区）输入/下跪获得|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8 (艾尔文森林)
#title 裂魂魔

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>击杀 |cRXP_ENEMY_Defias 潜行者 Wizards|r。拾取他们的 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r] |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须拥有2个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，在神圣区域输入/下跪，例如北郡修道院、TBC 道具 Cathedral、安威玛尔的Altars of Light、洛克莫丹或铁炉堡的Mystic 结界|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 裂魂魔 - 8 (泰达希尔)
#title 裂魂魔

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往邪石山
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>杀死 |cRXP_ENEMY_Vicious Grells|r、|cRXP_ENEMY_小淘 Sprites|r 和 |cRXP_ENEMY_小影 Sprites|r。拾取他们的 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r] |cRXP_WARN_来训练|r |T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须拥有2个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，通过在神圣区域（如月井、北郡修道院、TBC 道具 Cathedral、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的 Mystic 结界）输入 /下跪 命令来获得|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 愈合祷言 - 6 (艾尔文森林)
#title 愈合祷言

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_加入一个包含另一个牧师或圣骑士的小队，站在 |cRXP_FRIENDLY_冒险者的残骸|r 上；或在综合聊天中寻求圣骑士或牧师的帮助（输入 /1 进入聊天频道）|r
    >>|cRXP_WARN_与|cRXP_FRIENDLY_ 冒险者的残骸|r 交谈在地面上开始仪式，或点击其他玩家的|r |T136223:0|t[精神 Ritual] |cRXP_WARN_（在他们的队伍中）|r
    >>|cRXP_WARN_一个 |cRXP_FRIENDLY_Adventurer's 精神|r 会在完成仪式后出现并死亡。拾取它以获得 |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
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
#name 愈合祷言 - 8 (泰达希尔)
#title 愈合祷言

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_加入一个包含另一个牧师或德鲁伊的小队，站在 |cRXP_FRIENDLY_冒险者的残骸|r 上；或在综合聊天中寻求牧师或德鲁伊的帮助（输入 /1 进入聊天频道）|r
    >>|cRXP_WARN_与|cRXP_FRIENDLY_ 冒险者的残骸|r 交谈在地面上开始仪式，或点击其他玩家的|r |T136223:0|t[精神 Ritual] |cRXP_WARN_（在他们的队伍中）|r
    >>|cRXP_WARN_一个 |cRXP_FRIENDLY_Adventurer's 精神|r 会在完成仪式后出现并死亡。拾取它以获得 |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
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
#name 愈合祷言 - 6 (丹莫罗)
#title 愈合祷言

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_加入一个包含另一个牧师或圣骑士的小队，站在 |cRXP_FRIENDLY_冒险者的残骸|r 上；或在综合聊天中寻求圣骑士或牧师的帮助（输入 /1 进入聊天频道）|r
    >>|cRXP_WARN_与|cRXP_FRIENDLY_ 冒险者的残骸|r 交谈在地面上开始仪式，或点击其他玩家的|r |T136223:0|t[精神 Ritual] |cRXP_WARN_（在他们的队伍中）|r
    >>|cRXP_WARN_一个 |cRXP_FRIENDLY_Adventurer's 精神|r 会在完成仪式后出现并死亡。拾取它以获得 |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .train 402848 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r] |cRXP_WARN_来学习|r |T135944:0|t[愈合祷言]
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
#name 小影 Word: 死亡 - 10 (黑海岸)
#title 小影 Word: 死亡

step << Priest
    .goto Darkshore,30.5,47.5
    >>点击小岛上的 |cRXP_PICK_Remnant|r。拾取它以获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>你现在必须获得两个 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 增益
    >>你必须在下列地点之一处/下跪：a moonwell、北郡修道院、TBC 道具 Cathedral、安威玛尔的Altars of Light、洛克莫丹或铁炉堡的Mystic 结界
    >>为了获得你的第二个 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 增益，你需要在拥有不同的 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 的牧师面前/下跪，他们必须在以你为目标时/祈祷
    .train 402849 >>|cRXP_WARN_一旦你拥有两个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨]|r |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 小影 Word - 死亡 - 12 (洛克莫丹)
#title 小影 Word: 死亡

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >>前往洛克莫丹的莫格罗什要塞
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_目标 |cRXP_FRIENDLY_异端神像|r 来自动/下跪|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_你会获得|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>你现在必须获得两个 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 增益
    >>你必须在下列地点之一处/下跪：a moonwell、北郡修道院、TBC 道具 Cathedral、安威玛尔的Altars of Light、洛克莫丹或铁炉堡的Mystic 结界
    >>为了获得你的第二个 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 增益，你需要在拥有不同的 |T135934:0|t|T136057:0|t[经典怀旧服 道具] 的牧师面前/下跪，他们必须在以你为目标时/祈祷
    .train 402849 >>|cRXP_WARN_一旦你拥有两个|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨]|r |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 小影 Word: 死亡 - 20 (The Barrens)
#title 小影 Word: 死亡

step
    #completewith next
    .zone The Barrens >>前往 The Barrens
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>对 |cRXP_ENEMY_沙漠魅影|r 使用 |T135894:0|t[驱散魔法]。拾取它以获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r]
    *|cRXP_WARN_这是一个绿色幽灵，在周围巡逻。使用 RestedXP 目标宏来锁定它。|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>你现在必须获得两个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益
    >>你必须在下列地点之一的祭坛前 |cRXP_WARN_/下跪|r 并在之后与精神对话：Sen'jin 或 Crossroads |cRXP_WARN_（神社位置标记在你的地图上，你也可以找到任何拥有该增益的牧师来复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>为了获得你的第二个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益，这要求你在拥有 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT] 的亡灵牧师前 |cRXP_WARN_/下跪|r，他们必须在以你为目标时 /祈祷
    .train 402849 >>|cRXP_WARN_一旦你拥有两个|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨]|r |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益
    >>你必须在下列地点之一的祭坛前 |cRXP_WARN_/下跪|r 并在之后与精神对话：Sen'jin 或 Crossroads
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>为了获得你的第二个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益，在墓地处 |cRXP_WARN_/下跪|r 以获得 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT] 增益 |cRXP_WARN_（神社和墓地标记在你的地图上，你也可以找到任何拥有该增益的牧师来复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你拥有两个|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨]|r |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 小影 Word: 死亡 - 24 (银松森林)
#title 小影 Word: 死亡

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .goto Silverpine Forest,65.8,23.6
    >>拾取 |cRXP_PICK_炽蓝丝绸|r 身后的 |cRXP_ENEMY_图勒·鸦爪|r （等级24精英） 以获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r]
    *|cRXP_WARN_卷轴在二楼。组队会更简单。|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>你现在必须获得两个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益
    >>你需要 |cRXP_WARN_/下跪|r 在祭坛前的以下位置之一，然后与灵魂交谈：Sen'jin 或 Crossroads |cRXP_WARN_（神龛的位置在你的地图上标记，你也可以找到任何有该增益的牧师让他们复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>为了获得你的第二个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益，你需要在有 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT] 的亡灵牧师前 |cRXP_WARN_/下跪|r，并且他们在以你为目标时必须 /祈祷
    .train 402849 >>|cRXP_WARN_一旦你有了两个|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r] |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益
    >>你需要 |cRXP_WARN_/下跪|r 在祭坛前的以下位置之一，然后与灵魂交谈：Sen'jin 或 Crossroads
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>为了获得你的第二个 |T237569:0|t|T136077:0|t[经典怀旧服 道具] 增益 |cRXP_WARN_/下跪|r 在墓地以获得 |T237569:0|t[NO TRANSLATION FOUND TO THIS ELEMENT] 增益 |cRXP_WARN_（神龛和墓地在你的地图上标记，你也可以找到任何有该增益的牧师让他们复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你有了两个|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's 帝陨|r] |cRXP_WARN_来学习|r |T136149:0|t[小影 Word: 死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 扭曲命运 - 10 (银松森林)
#title 扭曲命运

step
    #completewith next
    .zone Silverpine Forest >>前往银松森林
step
    .train 425215,1
    >>杀死 |cRXP_ENEMY_Wailing 精神|r。拾取战利品 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士] |cRXP_WARN_来学习|r |T237566:0|t[扭曲命运]
    >>|cRXP_WARN_你必须有|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，通过输入|r /下跪 |cRXP_WARN_在|cRXP_PICK_ Loa 神龛|r (在杜隆塔尔或 The Barrens) 或在另一个有增益的牧师前下跪，当他们为你 /祈祷|r << Troll
    >>你必须有|cRXP_WARN_ |T237569:0|t|T136077:0|t[经典怀旧服 道具] |r增益，通过输入|cRXP_WARN_ /下跪 |r在墓地|cRXP_WARN_ 或在另一个有增益的牧师前下跪，当他们为你 /祈祷|r << Undead
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
#name 扭曲命运 - 10 (The Barrens)
#title 扭曲命运

step
    #completewith next
    .zone The Barrens >>前往贫瘠之地
step
    .train 425215,1
    >>杀死 |cRXP_ENEMY_Razormanes|r。拾取战利品 |T236248:0|t[|cRXP_FRIENDLY_Helping Hand]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob 钢鬃织棘者
    .mob Razormane Hunter
    .mob 钢鬃寻水者
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_找到一个你可以复活的死亡的玩家或宠物（用 |T135955:0|t[Ressurection]）以获得|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士]
    .collect 205905,1
step
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout 勇士] |cRXP_WARN_来学习|r |T237566:0|t[扭曲命运]
    >>|cRXP_WARN_你必须有|r |T237569:0|t|T136077:0|t[经典怀旧服 道具] |cRXP_WARN_增益，通过输入|r /下跪 |cRXP_WARN_在|cRXP_PICK_ Loa 神龛|r (在杜隆塔尔或 The Barrens) 或在另一个有增益的牧师前下跪，当他们为你 /祈祷|r << Troll
    >>你必须有|cRXP_WARN_ |T237569:0|t|T136077:0|t[经典怀旧服 道具] |r增益，通过输入|cRXP_WARN_ /下跪 |r在墓地|cRXP_WARN_ 或在另一个有增益的牧师前下跪，当他们为你 /祈祷|r << Undead
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
#name 虚空疫病 - 6 (艾尔文森林)
#title 虚空疫病

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>进入法戈第矿洞
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>杀死 |cRXP_ENEMY_金牙|r。拾取战利品 |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 金牙
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_来学习|r |T237514:0|t[虚空疫病]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 虚空疫病 - 6 (丹莫罗)
#title 虚空疫病


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>击杀 |cRXP_ENEMY_Leper Gnomes|r. 拾取战利品 |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 麻风侏儒
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_来学习|r |T237514:0|t[虚空疫病]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 恢复增效 - 27 (千针石林)
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
    >>杀死 |cRXP_ENEMY_恐怖图腾袭击者 Geomancers|r, |cRXP_ENEMY_恐怖图腾袭击者 Bandits|r, |cRXP_ENEMY_恐怖图腾袭击者 Reavers|r 和 |cRXP_ENEMY_恐怖图腾袭击者 Stompers|r。拾取战利品 |T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r] |cRXP_WARN_来训练|r |T236254:0|t[恢复增效]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 恢复增效 - 33 (奥特兰克山脉)
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
    >>杀死 |cRXP_ENEMY_Crushridge 莫加尔大王 <食人魔之王>|r 和 |cRXP_ENEMY_Crushridge Brutes|r。拾取战利品 |T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r]
    .collect 213140,1
    .mob 破碎岭食人魔
    .mob 破碎岭蛮兵
step
    .train 425309 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_LOOT_迅捷天途的预言|r] |cRXP_WARN_来训练|r |T236254:0|t[恢复增效]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 新生希望 - 31 (凄凉之地)
#title 新生希望

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >>|cRXP_WARN_你必须|r |T136206:0|t[心灵控制] |cRXP_WARN_已训练才能获得|r |T135923:0|t[新生希望] |cRXP_WARN_符文|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_你必须至少31级才能|r |T136206:0|t[心灵控制] |cRXP_WARN_施放在33级 |cRXP_ENEMY_滑刃海潮女祭司|r 身上|r
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
    >>杀死 |cRXP_ENEMY_Slitherblade Nagas|r。拾取战利品 |T136222:0|t[|cRXP_LOOT_不安的幻象|r]
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
    +|cRXP_WARN_注释： 你只能施放|r |T136206:0|t[心灵控制] |cRXP_WARN_在33级 |cRXP_ENEMY_滑刃海潮女祭司|r 身上。施放在34级的会失败|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >>|cRXP_WARN_对|r |T136206:0|t[心灵控制] |cRXP_WARN_进行施放在|r |cRXP_ENEMY_滑刃海潮女祭司|r
    >>|cRXP_WARN_当它被|r |T136206:0|t[心灵控制]|cRXP_WARN_影响时，以你自己为目标并施放|r |T136077:0|t[经典怀旧服 道具 on the Abyss] |cRXP_WARN_从宠物快捷栏|r
    >>|cRXP_WARN_之后按Escape取消|r |T136206:0|t[心灵控制] |cRXP_WARN_并击杀|r |cRXP_ENEMY_滑刃海潮女祭司|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_LOOT_不安的幻象|r] |cRXP_WARN_来训练|r |T135923:0|t[新生希望]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name Dispersion 40 (荆棘谷)
#title Dispersion

-- Dispersion

step
    .train 425314,1
    >>寻找一个携带 |T132299:0|t[敏锐大师] |cRXP_WARN_符文和|r |T338666:0|t[加尼的护符] |cRXP_WARN_饰品的|r 潜行者，去|cRXP_WARN_ |T133644:0|t[搜索] |r荆棘谷的任何 |cRXP_WARN_Bloodscalp 巨魔|cRXP_ENEMY_ 以获取|r |T237446:0|t[Mysterious 巨魔 炽蓝丝绸]|r。然后法师必须使用|cRXP_WARN_ |T135933:0|t[Comprehension 阿魅] |r来破译它，使其变为|cRXP_WARN_ |T134938:0|t[|cRXP_LOOT_Deciphered 巨魔 炽蓝丝绸|r]|r
    >>|cRXP_WARN_或者从拍卖行购买|r |T237446:0|t[Mysterious 巨魔 炽蓝丝绸]|r 并让法师破译，或者直接购买已经|cRXP_WARN_ |T134938:0|t[|cRXP_LOOT_Deciphered 巨魔 炽蓝丝绸|r]|r
    .use 216880 >>使用 |T134938:0|t[|cRXP_WARN_Deciphered 巨魔 炽蓝丝绸|cRXP_LOOT_] |r来开启任务|r
    >>|cRXP_WARN_你也可以寻找一个牧师来与你分享该任务|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >>接受任务 巨魔卷轴
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>前往 |cFFfa9602荆棘谷|r
    >>|cRXP_WARN_在前往之前确保你有2个活跃的|r |T135934:0|t|T136057:0|t[经典怀旧服 道具] |cRXP_WARN_增益|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>点击 |cRXP_PICK_The 神圣 春水蛾|r。拾取它以获得 |T134712:0|t[|cRXP_LOOT_Holy 春水蛾 Water|r]
    >>|cRXP_WARN_你可能需要击杀 |cRXP_ENEMY_萨克拉希斯|r (level 45 精良) |r守卫在|cRXP_PICK_ 神圣 春水蛾|r 前面
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >>前往祖昆达废墟
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >>|cRXP_WARN_在小喷泉处使用|r |T134712:0|t[|cRXP_LOOT_Holy 春水蛾 Water|r]
    >>|cRXP_WARN_你可能需要击杀 |cRXP_ENEMY_甘祖拉恩|r (level 41) 和他周围的小队 |cRXP_ENEMY_巨魔|r 以到达小喷泉|r
    .use 737
    .mob 甘祖拉恩
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>点击出现的 |cRXP_PICK_喷泉|r。拾取其 |T135975:0|t|cRXP_LOOT_[囚禁憎怨的预言]|r
    .collect 213142,1
step
    .train 425314 >>|cRXP_WARN_使用|r |T135975:0|t|cRXP_LOOT_[囚禁憎怨的预言]|r |cRXP_WARN_来学习|r |T237563:0|t[Dispersion]
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
#name Pain Suppression - 32 (艾泽拉斯)
#title Pain Suppression

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>前往 |cFFfa9602提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >>进入 血色修道院 地下城：墓地
step
    >>点击 |cRXP_PICK_墓碑|r 在Headless Horseman的刷新位置[=所在地区] 以收集 |cRXP_LOOT_|T136222:0|t[Graveyard Echo]|r |cRXP_WARN_强烈建议组建5人团队完成此步骤。|r
    .link https://imgur.com/a/lqRc0i6 >>https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_点击此处查看图片参考。|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>前往阿拉希高地
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>点击 |cRXP_PICK_坟墓|r 以收集 |cRXP_LOOT_|T136222:0|t[Arathi Echo]|r 位于Go'sheks农场最大的建筑物旁边。
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>前往尘泥沼泽
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>点击 |cRXP_PICK_墓碑|r 以收集 |cRXP_LOOT_|T136222:0|t[Theramore Echo]|r 位于联盟墓地附近。
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>点击 |cRXP_PICK_坟墓|r 以收集 |cRXP_LOOT_|T136222:0|t[Swamp Echo]|r 位于湖边树旁。
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>前往 |cFFfa9602提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >>进入 血色修道院 地下城：图书馆 |cRXP_WARN_强烈建议为后续步骤组建5人团队。|r
step
    .train 402855,1
    .cast 437054 >>在战士雕像前使用 |T136222:0|t[Swamp Echo]。
    .use 215425
step
    .train 402855,1
    .cast 437053 >>在法师雕像前使用 |T136222:0|t[Arathi Echo]。
    .use 215428
step
    .train 402855,1
    .cast 436952 >>在圣骑士雕像前使用 |T136222:0|t[Theramore Echo]。
    .use 215425
step
    .train 402855,1
    .cast 437055 >>在牧师雕像前使用 |T136222:0|t[Graveyard Echo]。
    .use 215426
step
    .train 402855 >>点击房间中央的橙色遗迹以获得 |T135791:0|t|cRXP_FRIENDLY_[Apocryphal Epiphany]|r，使用它来学习 |T135936:0|t[Pain Suppression]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 经典怀旧服 道具
#name 虚空之眼 - 50 (艾泽拉斯)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>前往 Hinterlands
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>点击 |cRXP_PICK_|T236407:0|tGlowing Eye|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>前往诅咒之地
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>点击 |cRXP_PICK_|T236407:0|tPulsating Eye|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>前往灼热峡谷
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>点击 |cRXP_PICK_|T236407:0|tVibrating Eye|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>点击 |cRXP_PICK_|T236407:0|tBaleful Eye|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>点击 |cRXP_PICK_|T236407:0|tBurning Eye|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>点击 |cRXP_PICK_|T236407:0|tOozing Eye|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>前往费伍德森林
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>点击 |cRXP_PICK_|T236407:0|tPiercing Eye|r
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
    .accept 82316,1 >>接受任务 NO TRANSLATION FOUND TO THIS ELEMENT
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 (塔纳利斯)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在塔纳利斯的晚上9点至早上6点之间获得|r |T135981:0|t[圣光涌动] |cRXP_WARN_符文。|r
    +当你想在这个时间段之外获得符文时，可以查看 荆棘谷。
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>前往塔纳利斯
    .train 431669,1
step
    .train 431669,1
    >>击杀 |cRXP_ENEMY_Echo of a 失落之魂|r |cRXP_WARN_使用 神圣 或 奧术 法术/魔杖|r。拾取战利品来获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想增益：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 (悲伤沼泽)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在|r |T135981:0|t[圣光涌动] |cRXP_WARN_符文于晚上9点到早上6点之间在 悲伤沼泽获得。|r
    +当你想在这个时间段之外获得符文时，可以查看 荆棘谷。
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>前往悲伤沼泽
    .train 431669,1
step
    .train 431669,1
    >>击杀 |cRXP_ENEMY_Echo of a 失落之魂|r |cRXP_WARN_使用 神圣 或 奧术 法术/魔杖|r。拾取战利品来获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想增益：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 (辛特兰)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在|r |T135981:0|t[圣光涌动] |cRXP_WARN_符文于晚上9点到早上6点之间在 辛特兰获得。|r
    +当你想在这个时间段之外获得符文时，可以查看 荆棘谷。
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>前往辛特兰
    .train 431669,1
step
    .train 431669,1
    >>击杀 |cRXP_ENEMY_Echo of a 失落之魂|r |cRXP_WARN_使用 神圣 或 奧术 法术/魔杖|r。拾取战利品来获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想增益：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 (荆棘谷) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_该灵魂仅在鲜血 月光事件后才会生成。你也可以禁用该事件并跑至路径点位置。|r
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 431669,1
step
    .train 431669,1
    >>击杀 |cRXP_ENEMY_Echo of a 失落之魂|r |cRXP_WARN_使用 神圣 或 奧术 法术/魔杖|r。拾取战利品来获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想增益：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#title 圣光涌动
#name 圣光涌动 - 40 (荆棘谷) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在|r |T135981:0|t[圣光涌动] |cRXP_WARN_符文于晚上9点到早上6点之间获得。|r
    +当你想在这个时间段之外获得符文时，可以查看 荆棘谷 2。
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷
    .train 431669,1
step
    .train 431669,1
    >>击杀 |cRXP_ENEMY_Echo of a 失落之魂|r |cRXP_WARN_使用 神圣 或 奧术 法术/魔杖|r。拾取战利品来获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_你需要两个冥想增益：寻找一个有多个增益的牧师，在他面前下跪，然后等待他为你祈祷。|r
    .train 431669 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of the Lost Tribe|r] |cRXP_WARN_来训练|r |T135981:0|t[圣光涌动]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title 联结治疗
#name 联结治疗 - 58 (西瘟疫之地和东瘟疫之地)
#next 牧师 种族天赋 - 60 (艾泽拉斯)

step << Alliance
    #completewith next
    .zone Stormwind City >>前往暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .accept 84320 >> Accept Lost Heirloom
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 对话
    .accept 84405 >>接受任务 遗失的传家宝
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >>前往西瘟疫之地
step
    .goto Western Plaguelands,51.9,82.4,50 >>前往位于 悔恨岭 旁边的大型地下墓穴
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_进入地下墓穴并向左走。向下走并在你的右边小壁龛中寻找一个小木箱。从中拾取战利品来获得|r |T133299:0|t[|cRXP_PICK_Family 传家宝|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_前往地下墓穴底部。从|r |T133741:0|t[|cRXP_PICK_Family Records|r] |cRXP_WARN_在右边的 书架 和|r |T133735:0|t[|cRXP_PICK_幸存者日志|r] |cRXP_WARN_在左边的桌子上拾取战利品|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 84320 >> Turn in Lost Heirloom
    .accept 84321 >>接受任务 圣光的圣物
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 对话
    .turnin 84405 >>交任务 遗失的传家宝
    .accept 84406 >> Accept Relic of Light
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_下个任务需要你在精英区域拾取物品。虽然可以单刷，但如果你等级较低或装备不足，建议找人帮忙。|r
    .zone Western Plaguelands >>返回 西瘟疫之地
step
    .goto Western Plaguelands,48.2,21.7,50 >>前往 壁炉谷, |cRXP_WARN_注意这是一个精英区域|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_进入位于 壁炉谷 的 议政厅 并与位于讲台上的|r |cRXP_PICK_Scarlet Ledger|r |cRXP_WARN_交互。小心该区域内充满精英小怪|r
    .turnin 84406 >> Turn in Relic of Light << Horde
    .turnin 84321 >>交任务 圣光遗物 << Alliance
    .accept 84322 >>接受任务 血色研究
step
    #completewith next
    >>|cRXP_WARN_下一个任务需要你从精英区域拾取物品。虽然可以单人完成，但如果你等级较低或装备不足，建议寻找队友协助。|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,77.5,81.7,50 >>前往提尔之手号，|cRXP_WARN_记住这是一个精英区域|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|T237537:0|t|cRXP_WARN_该符文位于提尔之手号，如果你现在不想获得它就跳过此步骤|r
    >>|cRXP_WARN_如果你想获得它，前往你的地图上标记的建筑的图书馆翼，寻找书架顶部的一本书。拾取它以获得该符文。记住你无法在战斗中拾取它|r
    >>|cRXP_WARN_你可以清除房间里的所有小怪，或者死在书旁边，在小怪的视线盲区内复活以拾取符文，而无需击杀任何东西|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神圣专精符文|r] 来学习 |T237537:0|t[神圣专精]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_回车钟塔并前往顶层。与位于那里的锁定箱子交互|r
    .turnin 84322 >>交任务 血色研究
    .accept 84323 >>接受任务 其中的奖品
step
    .goto Eastern Plaguelands,83.6,78.2
    >>在提尔之手号击杀任何猩红小怪。从它们身上拾取 |T134245:0|t[|cRXP_LOOT_Artifact Storage 钥匙|r]
    >>|cRXP_WARN_你可以跳过收集密钥，找一个锁定技能175+的盗贼为你打开箱子。如果你更想找盗贼而不是刷钥匙，跳过此步骤|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>使用 |T134245:0|t[|cRXP_LOOT_Artifact Storage 钥匙|r] 来打开 |T133876:0|t[|cRXP_LOOT_Puzzle 箱子|r] 或者让盗贼用撬锁为你打开。从中拾取 |T132874:0|t[|cRXP_LOOT_Shard of Light|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 84323 >>交任务 箱中之物
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回奥格瑞玛
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 对话
    .turnin 84323 >>交任务 The Prize Within
    .target Dietrich Praice
step
    .train 402853 >>使用 |T135791:0|t[|cRXP_FRIENDLY_Jubilant Epiphany|r] 来学习 |T135883:0|t[|cRXP_FRIENDLY_联结治疗|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#title Vampiric Touch
#name Vampiric Touch - 60（屠魔峡谷 地下城）

step
    #completewith next
    >>该符文从屠魔峡谷最终首领处掉落，符文为 |T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r]（SoD新增地下城）
    .zone Felwood >>|cRXP_WARN_要进入此地下城，你需要先完成一个短任务来获得饰品。前往费伍德森林来开始该任务|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r 对话
    .accept 84384 >>接受任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>旅行到冬泉谷
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>寻找位于永望镇北边的 |cRXP_ENEMY_狂暴 Owlbeasts|r。击杀它们并拾取 |T237413:0|t[|cRXP_LOOT_Owlbeast Pineal Glands|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >>返回费伍德森林
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r 对话
    .turnin 84384 >>交任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +将 |T136232:0|t[|cRXP_FRIENDLY_Shadowtooth Illusion 结界|r] 装备到你的任意饰品栏位。你需要装备它才能进入地下城
    .use 228172
    .itemcount 228172,<1
step
    >>|T135978:0|t|cRXP_WARN_该符文从屠魔峡谷（SoD新增地下城）的最终首领处掉落。当你前往灰谷时开始寻找队伍|r
    >>如果你在飞行，飞往艾萨拉的Talendris Point而非阿斯特兰纳，这离地下城入口更近 << Alliance
    .zone Ashenvale >>前往灰谷
step
    .goto Ashenvale,84.5,75.0,50 >>前往屠魔峡谷地下城的入口
step
    >>清除地下城。|T135791:0|t[|cRXP_FRIENDLY_Aperitive Epiphany|r]（用于学习|T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r]）从地下城最终首领|cRXP_ENEMY_地狱咆哮的幻灵|r掉落。|cRXP_WARN_确保你从他那里拾取符文！|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >>使用|T135791:0|t[|cRXP_FRIENDLY_Aperitive Epiphany|r]来学习|T135978:0|t[|cRXP_FRIENDLY_Vampiric Touch|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP符文与书籍指南
#subgroup 额外
#title 牧师 种族天赋
#name 牧师 种族天赋 - 60 (艾泽拉斯)


step
    #completewith next
    >>|cRXP_WARN_额外的牧师能力是服务器级解锁。这意味着如果有人已经在你的服务器上完成了，你可以跳过整个任务链并直接前往卡拉赞来学习你的新种族能力。如果不是这样，你可以使用下面的指南成为为你的服务器解锁它的人！|r
    .zone Deadwind Pass >>前往逆风小径
step
    .goto Deadwind Pass,40.8,78.4
    >>前往卡拉赞附近的小神殿
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t在卡拉赞旁的神龛处与|cRXP_FRIENDLY_神圣彻悟|r对话，选择你想要的种族能力
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
    >>|cRXP_WARN_要交此链中的第一个任务，你还需要4个|r |T134855:0|t[|cRXP_LOOT_Stratholme 神圣 Water|r] |cRXP_WARN_加上从拍卖行购买的其他材料。找个队伍来运行斯坦索姆（亡灵）地下城|r
    >>|cRXP_WARN_进入后，寻找并拾取散落在副本各处的Supply 超充能电池。它们可能包含神圣 Water，但也可能是诱饵，会生成麻烦的敌人|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >>前往暴风城
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>从拍卖行购买6个|T133682:0|t[|cRXP_LOOT_Heavy 符文布 Bandages|r]、4个|T134834:0|t[|cRXP_LOOT_Major 治疗 Potions|r]和8个|T132834:0|t[|cRXP_LOOT_Giant 道具|r]。你需要这些物品以及你之前收集的|T134855:0|t[|cRXP_LOOT_Stratholme 神圣 Water|r]来完成这个任务链的第一个任务
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target 拍卖师亚克森
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与|cRXP_FRIENDLY_高阶牧师劳瑞娜|r对话
    .accept 84324 >>接受任务 外交手段
    .turnin 84324 >>交任务
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>前往奥格瑞玛
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨苏恩|r 对话
    >>从拍卖行购买6件 |T133682:0|t[|cRXP_LOOT_Heavy 符文布 Bandages|r]、4件 |T134834:0|t[|cRXP_LOOT_Major 治疗 Potions|r] 和 8件 |T132834:0|t[|cRXP_LOOT_Giant 道具|r]。你将在这条任务链的第一个任务中需要它们，连同你已经收集的 |T134855:0|t[|cRXP_LOOT_Stratholme 神圣 Water|r]。
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_迪特里希·普雷斯|r在精神谷对话
    .accept 84408 >>接受任务 外交手段
    .turnin 84408 >>交任务 Diplomatic Overtures
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_对于任务的下一部分，你需要找到一个也在此任务链中的对立阵营牧师来推进进度|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_旅行至位于EPL的|r |cRXP_FRIENDLY_神龛 of Cooperation|r。|cRXP_WARN_与对立阵营的牧师互相伤害，然后使用你从之前任务的奖励中获得的|r |T134918:0|t[|cRXP_FRIENDLY_Altruist 结界|r] |cRXP_WARN_物品相互治疗|r
    >>如果操作正确，|cRXP_FRIENDLY_神龛 of Cooperation|r 会给你提供一个任务，接受任务
    .accept 84325 >>接受任务 Shrine of Cooperation << Alliance
    .accept 84410 >>接受任务 << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >>返回暴风城
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>从拍卖行购买2件 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r]、2件 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] 和 3件 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r]。你很快就需要它们来交任务。这些物品可能很贵。
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target 拍卖师亚克森
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 84325 >>交任务
    .accept 84326 >>接受任务
    .turnin 84326 >>交任务
    .accept 84327 >>接受任务 外交任务
    .target 高阶牧师劳瑞娜
step << Horde
    #completewith next
    .zone Orgrimmar >>返回至奥格瑞玛
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨苏恩|r 对话
    >>从拍卖行购买2个|T134459:0|t[|cRXP_LOOT_Arcanite Bars|r]、2个|T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r]和3个|T134132:0|t[|cRXP_LOOT_Blue Sapphires|r]。你很快就需要它们来交任务。这些物品可能很贵
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 在精神谷对话
    .turnin 84410 >>交任务 Shrine of Cooperation
    .accept 84411 >>接受任务 Diplomat 环
    .turnin 84411 >>交任务 Diplomat 环
    .accept 84412 >>接受任务 外交任务
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名敌对阵营的牧师，让他们在你站在暴风城大门旁时对你使用他们的|r |T133396:0|t[|cFF0070FFDiplomat 环|r] |cRXP_WARN_。这会使城市卫兵不再攻击你，让你安全地进入敌方的首都|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营的玩家仍然可以攻击你！|r
    .zone Elwynn Forest >>前往暴风城大门
step << Horde
    .goto Stormwind City,38.8,26.6
    >>让敌对阵营的牧师对你使用他们的 |T133396:0|t[|cFF0070FFDiplomat 环|r]，这样城镇卫兵就不会攻击你，前往暴风城大教堂。|cRXP_WARN_你仍然可以被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 84412 >>交任务 Diplomatic Mission
    .accept 84413 >>接受任务
    .target 高阶牧师劳瑞娜
step << Alliance
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一个敌对阵营的牧师并让他们使用|r |T133396:0|t[|cFF0070FFDiplomat 环|r] |cRXP_WARN_对你，当你站在奥格瑞玛大门旁边时。这会使城镇卫兵停止攻击你，让你安全地进入敌方的首都|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营玩家仍然可以攻击你！|r
    .zone Durotar >>前往奧格瑞玛的大门
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>让敌对阵营的牧师对你使用他们的 |T133396:0|t[|cFF0070FFDiplomat 环|r]，这样城市卫兵就不会攻击你，然后前往精神谷。 |cRXP_WARN_你仍然可以被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 对话
    .turnin 84327 >>交任务 外交任务
    .accept 84328 >>接受任务 修复碎片
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_开始为厄运之槌西地下城寻找团队，下一个任务中需要击杀|r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_，他是地下城的Boss之一|r
    .zone Feralas >>前往菲拉斯
step
    .goto Feralas,59.1,43.2,100 >>前往厄运之槌地区
step
    .goto Feralas,60.4,30.2
    >>前往厄运之槌西并击杀 |cRXP_ENEMY_Magister Kalendris|r。从他身上拾取 |T133737:0|t[|cRXP_LOOT_Applied Divinity|r]。他位于地下城的幽灵区域
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一个敌对阵营的牧师并让他们使用|r |T133396:0|t[|cFF0070FFDiplomat 环|r] |cRXP_WARN_对你，当你站在暴风城大门旁边时。这会使城镇卫兵停止攻击你，让你安全地进入敌方的首都|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营的玩家仍然可以攻击你！|r
    .zone Elwynn Forest >>前往暴风城的大门
step << Horde
    .goto Stormwind City,38.8,26.6
    >>让敌对阵营的牧师对你使用他们的 |T133396:0|t[|cFF0070FFDiplomat 环|r]，这样城市卫兵就不会攻击你，然后前往暴风城大教堂。 |cRXP_WARN_你仍然可以被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你到任务给予者，否则你会失去外交豁免权增益|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在暴风城大教堂与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 84413 >>交任务
    .accept 84329 >>接受任务
    .target 高阶牧师劳瑞娜
step << Alliance
    #completewith next
    >>|cRXP_WARN_要完成此任务，你需要再次找到一名敌对阵营的牧师，让他们使用他们的|r |T133396:0|t[|cFF0070FFDiplomat 环|r] |cRXP_WARN_在你站在奧格瑞玛大门旁时对你使用。这会使城市卫兵不再攻击你，让你安全地进入敌方的首都|r
    >>|cRXP_WARN_请记住，在PvP服务器上，敌对阵营的玩家仍然可以攻击你！|r
    .zone Durotar >>前往奥格瑞玛的大门
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>让敌对阵营的牧师对你使用 |T133396:0|t[|cFF0070FFDiplomat 环|r]，这样城镇卫兵就不会攻击你，前往精神谷。|cRXP_WARN_你仍然可以被其他玩家攻击！|r
    >>|cRXP_WARN_敌对阵营的牧师必须护送你去任务给予者，否则你将失去外交豁免权加成|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在精神谷与 |cRXP_FRIENDLY_迪特里希·普雷斯|r 对话
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
#name 灵魂守护 - 60 (斯坦索姆)

step
    #completewith next
    >>|cRXP_WARN_为了完成这个符文，你需要在斯坦索姆地下城内完成几个任务（包括生存和死亡的方面）。开始寻找一个队伍|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .goto Eastern Plaguelands,47.8,24.2
    >>前往斯坦索姆
    >>|cRXP_WARN_请仔细阅读本章节，因为这个符文任务有点不寻常|r
    >>为了获得符文，你需要从斯坦索姆中的首领那里收集3个精华。拥有精华的首领是|cRXP_WARN_RANDOM AND DIFFERENT EVERY DUNGEON ID|r。为了知道你的副本中哪些首领有精华，你需要找到位于副本生者区血色十字军建筑内柱子上的线索
    >>为了收集精华，你需要3个|T134799:0|t[|cRXP_LOOT_Stratholme 小影 Jars|r]，这些掉落自副本内的[|cRXP_PICK_Postbox Parcels|r]。要首先打开[|cRXP_PICK_Postboxes|r]，你需要击杀|cRXP_ENEMY_Stratholme Courier|r来获得|T134237:0|t[|cRXP_LOOT_Postbox Keys|r]
    >>一旦收集了所有精华，你必须返回那些有线索的柱子，并用对应的精华激活它们。这会在它们旁边生成一个球体，你必须拾取它来获得符文
    +|cRXP_WARN_阅读完上面的内容后点击这里查看更多关于哪条线索对应哪个首领的详情。如果需要，你可以随时回到这一步|r
step
    >>|cRXP_WARN_以下是线索及其对应的首领：|r
    >>在死亡的一方与侍从和冰法术同在的凡人 = 苍白的玛勒基
    >>一个被诅咒守卫塔的幽灵，无法从财富或权力中获得安慰 = Baroness Anastari
    >>被重新发现的远古王国，用一个主人换取另一个 = Nerub'enkan
    >>由血肉构成的科学罪恶，被遗弃者精英追捕 = 吞咽者拉姆斯登
    >>人民寄希望于他在其最困难之时领导 = Magistrate Barthilas
    >>邪恶恶意的拥护者，庞大的恐怖守卫其宫殿 = 瑞文戴尔男爵
    >>神圣的狂热净化罪恶，然而一个影子潜伏其中 = 巴纳扎尔
    >>硫磺气味弥漫房间。这个狂热者用轰鸣声向你问好 = 火炮大师Willey
    +|cRXP_WARN_如果你想查看完成任务的推荐有效步骤顺序，请点击这里。如果需要，你可以随时回到这一步重新阅读线索|r
step
    >>|cRXP_WARN_完成此任务的有效步骤顺序如下：|r
    >>1. 从副本的生者区开始
    >>2. 拾取三个[|cRXP_PICK_Postbox Parcels|r]来获得|T134799:0|t[|cRXP_LOOT_Stratholme 小影 Jars|r]，罐子是独特的，所以让不同的玩家各拾取一个
    >>3. 前往柱子房间，找出在你的副本ID中哪些首领有精华
    >>4. 在通过副本的过程中收集所有精华
    >>5. 返回柱子房间并用其精华激活每一个
    >>6. 拾取生成的球体来获得你的符文
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >>使用|T135791:0|t[|cRXP_FRIENDLY_Oneiric Epiphany|r]来学习|T135948:0|t[|cRXP_FRIENDLY_灵魂守护|r]
    .use 228124
]])
