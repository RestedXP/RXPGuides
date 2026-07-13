if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP 联盟 1-20 级
#name 1-7级 寒脊山谷
#next 6-11级 丹莫罗 探索赛季
#displayname 1-7级 寒脊山谷
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +你选择的是侏儒和矮人专用的指南，请确保你的选择与你角色出生地一致
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    .accept 179 >>接受任务 矮人的交易
    .target 斯登·粗臂
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T135975:0|t[衬衣] |cRXP_BUY_，然后从他那里购买|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]|r << Priest
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T132540:0|t[衬衣] 和 |T133745:0|t|T134916:0|t[靴子] |cRXP_WARN_（它们无法铭刻）|r |cRXP_BUY_，然后从他那里购买|T133745:0|t|T133745:0|t[|cRXP_FRIENDLY_论述：殉道|r] 和 |T134916:0|t|T134916:0|t[|cRXP_FRIENDLY_审判圣契|r]|r << Paladin
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T134419:0|t[衬衣] |cRXP_BUY_，然后从他那里购买|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r]|r << Warrior
    >>|cRXP_BUY_出售你的|r |T135005:0|t[衬衣] |cRXP_BUY_，并从他那里购买 |T133733:0|t[|cRXP_FRIENDLY_魔典：邪甲术|r]|r << Warlock
    >>|cRXP_BUY_将垃圾卖给商人，并购买|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_暗影打击符文|r]|r << Rogue
    >>|cRXP_BUY_出售你的|r |T135005:0|t[衬衣] |cRXP_BUY_，并从他那里购买 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：活化烈焰|r]|r << Mage
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T132540:0|t[衬衣]和|T134419:0|t|T133739:0|t[靴子] |cRXP_WARN_（它们无法铭刻）|r |cRXP_BUY_，然后从他那里购买|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_杀戮命令符文|r]和|T133739:0|t|T133739:0|t[|cRXP_FRIENDLY_论述：雄狮之心|r]|r << Hunter
    >>|cRXP_BUY_向商人出售垃圾物品并购买以下所有符文:|r << Warlock
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>你很快就能获得你的其余符文
    .target Rune Broker
    .skipgossip
step << Mage/Hunter/Priest/Paladin/Warrior/Warlock
    #sticky
    #optional
    #label Libram << Paladin
    .equip 18 >>装备|T134916:0|t|T135891:0|t[|cRXP_FRIENDLY_审判圣契|r]，30秒后可使用它来学习|T135891:0|t|T135891:0|t[十字军打击] << Paladin
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 228797 << Warlock --Grimoire of Fel Armor
    .train 402852 >>使用 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r] 来训练 |T237570:0|t[裂魂魔] << Priest
    .train 407798 >>使用|T133745:0|t|T135961:0|t[|cRXP_FRIENDLY_论述：殉道|r]来训练|T135961:0|t|T135961:0|t[殉道圣印]，|cRXP_WARN_并将其作为你的主要圣印使用|r << Paladin
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂乱攻击符文|r] << Warrior
    .train 401768 >>使用|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：活体烈焰|r] << Mage
    .train 410111 >>使用|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_杀戮命令符文|r] << Hunter
    .train 409580 >>使用 |T133739:0|t[|cRXP_FRIENDLY_论述：雄狮之心|r] 来学习 |T132185:0|t[雄狮之心] << Hunter
    .train 403619 >>使用 |T133733:0|t[|cRXP_FRIENDLY_魔典：邪甲术|r] 来学习 |T136156:0|t[邪甲术] << Warlock
    .engrave 7 >>在你的裤子上铭刻 |T236174:0|t[夺命射击] << Hunter
    .engrave 7 >>在裤子上铭刻|T135820:0|t|T135820:0|t[活化烈焰] << Mage
    .engrave 7 >>铭刻 |T237570:0|t[裂魂魔] 在你的裤子上 << Priest
    .engrave 7 >>在你的裤子上铭刻 |T236317:0|t[狂乱攻击] << Warrior
    >>|cRXP_WARN_提示：|r 你可以用|T135812:0|t|T135820:0|t[火球术]拉多只|cRXP_ENEMY_霜狼|r，然后用|T135820:0|t|T135820:0|t[活体烈焰]进行AOE击杀 << Mage
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >>使用|T134916:0|t|T135891:0|t[|cRXP_FRIENDLY_审判圣契|r]学习|T135891:0|t|T135891:0|t[十字军打击]
step << Hunter
    #optional
    #sticky
    .aura 409583 >>记住激活你的 |T132185:0|t[雄狮之心]
step << Warlock
    #optional
    #sticky
    .aura 403619 >>|cRXP_WARN_请记得激活你的|r |T136156:0|t|T136156:0|t[邪甲术]
step << Paladin
    #optional
    #completewith next
    .aura 407798 >>请记得使用|T135961:0|t|T135961:0|t[殉道圣印]作为你的圣印
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>击杀|cRXP_ENEMY_瘦骨嶙峋的幼狼|r，从它们身上拾取|cRXP_LOOT_硬狼肉|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob 蓬毛幼狼
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>刷怪升级到 2 级
    .mob 蓬毛幼狼
step << Warrior/Mage/Warlock/Hunter
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_垃圾卖店然后购买|r |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r] << Warrior
    .vendor >>|cRXP_BUY_垃圾卖店并购买所有重要的AoE符文|r << Mage
    .vendor >>|cRXP_BUY_垃圾卖店并购买以下的所有AoE符文|r << Hunter/Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    >>冰枪术的唯一作用是让你稍后可以交任务 << Mage
    >>|cRXP_WARN_你将在稍后获得剩余的符文|r
    .target Rune Broker
    .skipgossip
step << Warrior/Mage/Hunter
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]来学习|T132342:0|t[乘胜追击]，你很快就会铭刻它 << Warrior
    .train 415936 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：活动炸弹|r] 来学习 |T236220:0|t[活动炸弹] << Mage
    .train 401759 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：燃尽|r] 来学习 |T236207:0|t[燃尽] << Mage
    .train 440858 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：寒冰宝珠|r] 来学习 |T135851:0|t[寒冰宝珠] << Mage
    .train 401760 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：冰枪术|r] 来学习 |T135844:0|t[冰枪术] << Mage
    .train 410121 >>使用 |T134419:0|t[|cRXP_FRIENDLY_奇美拉符文|r] 来学习 |T236176:0|t[奇美拉射击] << Hunter
    .train 410122 >>使用 |T134419:0|t[|cRXP_FRIENDLY_独来独往符文|r] 来学习 |T132266:0|t[独来独往] << Hunter
    .train 416086 >>使用 |T134419:0|t[|cRXP_FRIENDLY_短兵相接符文|r] 来学习 |T132394:0|t[近战专家] << Hunter
    .train 440563 >>使用 |T134419:0|t[|cRXP_FRIENDLY_游击符文|r] 来学习 |T132171:0|t[一击脱离] << Hunter
    .train 415423 >>使用 |T133739:0|t[论述：蝰蛇守护|cRXP_FRIENDLY_] 来学习 |T132160:0|t[蝰蛇守护]|r] << Hunter
    .train 416009 >>使用 |T134419:0|t[|cRXP_FRIENDLY_战术符文|r] 来学习 |T136150:0|t[恶魔战术] << Warlock
    .train 425476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_契约符文|r] 来训练 |T237562:0|t[恶魔契约] << Warlock
    .train 416015 >>使用 |T134419:0|t[|cRXP_FRIENDLY_烧尽符文|r] 来训练 |T135789:0|t[烧尽] << Warlock
    .train 403919 >>使用 |T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r] 来训练 |T236298:0|t[鬼影缠身] << Warlock
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    >>|cRXP_WARN_如果你钱不够的话，额外刷 |cRXP_ENEMY_蓬毛幼狼|r |r
    >>|cRXP_WARN_请保留 10 铜币，后续要用|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 艾德林·怒流
    .xp >6,1
step << !Priest !Mage !Warlock !Warrior !Rogue
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>把垃圾物品卖给商人 << Hunter
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 600发|r |T132384:0|t[轻弹丸] << Hunter
    .vendor >>|cRXP_WARN_出售垃圾物品|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target 艾德林·怒流
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    >>|cRXP_WARN_记得装备这个任务获得的护手，这样你就可以在上面铭刻符文了|r
    .turnin 179 >>交任务矮人的交易
    .accept 233 >>接受任务 寒脊山谷的送信任务
    .accept 3106 >>接受任务 简易符文 << Dwarf Warrior
    .accept 3107 >>接受任务 神圣符文 << Dwarf Paladin
    .accept 3108 >>接受任务 风蚀符文 << Dwarf Hunter
    .accept 3109 >>接受任务 密文符文 << Dwarf Rogue
    .accept 3110 >>接受任务 神圣符文 << Dwarf Priest
    .accept 3112 >>接受任务 简易备忘录 << Gnome Warrior
    .accept 3113 >>接受任务 密文备忘录 << Gnome Rogue
    .accept 3114 >>接受任务 雕文备忘录 << Gnome Mage
    .accept 3115 >>接受任务 被污染的备忘录 << Gnome Warlock
    .target 斯登·粗臂
step << Priest/Paladin/Rogue
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_购买以下所有符文：|r
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>你很快就能获得你的其余符文
    .target Rune Broker
    .skipgossip
step << Priest/Paladin/Rogue
    .train 400101 >>使用 |T134419:0|t[|cRXP_FRIENDLY_暗影步符文|r] 来训练 |T132303:0|t[暗影步] << Rogue
    .train 432301 >>使用 |T134419:0|t[|cRXP_FRIENDLY_犯禁符文|r] 来训练 |T236285:0|t[压倒优势] << Rogue
    .train 400105 >>使用 |T134419:0|t[|cRXP_FRIENDLY_暗影打击符文|r] 来训练 |T132323:0|t[暗影打击] << Rogue
    .train 424984 >>使用 |T134419:0|t[|cRXP_FRIENDLY_军刀猛刺符文|r] 来训练 |T132375:0|t[军刀猛刺] << Rogue
    .train 415922 >>使用 |T134419:0|t[|cRXP_FRIENDLY_豪侠符文|r] 来训练 |T134538:0|t[短枪射击] << Rogue
    .train 431663 >>使用 |T135791:0|t[|cRXP_FRIENDLY_灵智顿悟|r] 来训练 |T136181:0|t[心灵尖刺] << Priest
    .train 425216 >>使用 |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] 训练 |T237514:0|t[虚空疫病] << Priest
    .train 402862 >>使用 |T136222:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r] 来训练 |T237545:0|t[苦修] << Priest
    .train 402849 >>使用 |T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r] 来训练 |T136149:0|t[暗言术：灭] << Priest
    .train 410014 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神圣风暴符文|r] 来训练 |T236250:0|t[神圣风暴] << Paladin
    .train 410008 >>使用|T134419:0|t|T135874:0|t[|cRXP_FRIENDLY_复仇者符文|r]学习|T135874:0|t|T135874:0|t[复仇者之盾] << Paladin
    .train 410013 >>使用 |T134419:0|t[|cRXP_FRIENDLY_正义之锤符文|r] 来学习 |T236253:0|t[正义之锤] << Paladin
    .train 440788 >>使用|T134419:0|t|T236265:0|t[|cRXP_FRIENDLY_正义盾击符文|r]来学习|T236265:0|t|T236265:0|t[正义盾击] << Paladin
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Mage
    #optional
    #sticky
    .engrave 15 >>留意是否有披风掉落。一旦拿到就在上面铭刻|T135851:0|t[寒冰宝珠]
    >>|cRXP_WARN_这个技能过于逆天|r
step << Mage/Hunter/Priest
    .equip 10 >>装备 |T132939:0|t[驯狼手套] << Hunter
    .equip 10 >>装备上|T132940:0|t|T132940:0|t[驯兔手套] << Mage
    .use 6171 << Hunter --Wolf Handler Gloves
    .use 719 << Mage --Rabbit Handler Gloves
    .engrave 10 >>在你的手套上铭刻 |T236176:0|t[奇美拉射击] << Hunter
    .engrave 7 >>在裤子上铭刻|T135820:0|t|T135820:0|t[活化烈焰] << Mage
    .engrave 10 >>在你的手套上铭刻|T236220:0|t|T236220:0|t[活动炸弹] << Mage
    .engrave 5 >>在你的胸甲上铭刻 |T236207:0|t[燃尽] << Mage
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Hunter
    #sticky
    #optional
    >>|cRXP_WARN_留意是否有任何|r胸甲/腰带/披风|cRXP_WARN_掉落|r|cRXP_WARN_。装备它们并铭刻相应的符文|r
    .engrave 5 >>在你的 |T132266:0|t[胸甲] 上铭刻 |T132724:0|t[独来独往]
    .engrave 6 >>在你的 |T132394:0|t[腰带] 上铭刻 |T132513:0|t[近战专家]
    .engrave 15 >>在你的 |T132171:0|t[披风] 上铭刻 |T133771:0|t[一击脱离]
step << Paladin
    #completewith next
    +击杀更多|cRXP_ENEMY_霜狼|r或|cRXP_ENEMY_穴居怪|r，直到你拥有价值88铜币的垃圾物品。|cRXP_WARN_你很快需要用这些钱购买武器|r
    .money >0.0088
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
step << !Hunter !Mage
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>进入安威玛尔 << Rogue/Warlock/Paladin
    .goto 1426,28.939,68.387,12 >>进入安威玛尔 << !Rogue !Warlock !Paladin
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r 对话，NPC在里面
    .turnin 3107 >>交任务 神圣符文 << Dwarf
    .accept 77657 >>接受任务 圣光的圣物 << Dwarf
    .turnin 77657 >>交任务 圣光的圣物 << Dwarf
    .target 布罗莫斯·格鲁诺尔
step << Paladin
    .goto Dun Morogh,28.79,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦德尔·哈金|r对话
    >>|cRXP_WARN_早期使用盾牌加单手武器升级会快得多，因为前期盾牌符文非常强力。|r
    >>|cRXP_BUY_向商人出售垃圾，并购买|r |T134955:0|t[小盾牌]
    .collect 17184,1 --Small Shield (1)
    .target 格伦德尔·哈金
step << Paladin
    .goto Dun Morogh,28.66,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_雷布莱德·寒椅|r 对话
    >>|cRXP_WARN_早期使用盾牌加单手武器升级会快得多，因为前期盾牌符文非常强力。|r
    >>|cRXP_BUY_向商人出售垃圾，并购买|r |T133485:0|t[短棍]
    .collect 2130,1 --Club (1)
    .target Rybrad Coldbank
step << Paladin
    #sticky
    >>|cRXP_WARN_留意任何你能装备的|r |T132624:0|t|T132602:0|t[胸甲]|cRXP_WARN_、|r |T133762:0|t|T132602:0|t[护腕] |cRXP_WARN_或|r |T133762:0|t|T133762:0|t[披风] |cRXP_WARN_装备|r
    .engrave 5 >>将|T236250:0|t|T236250:0|t[神圣风暴]铭刻在你的胸部装备上
    .engrave 9 >>在你的护腕上铭刻|T236253:0|t|T236253:0|t[正义之锤]
    .engrave 15 >>将|T236265:0|t|T236265:0|t[正义盾击]附魔到你的披风上
step << Paladin
    #optional
    #completewith next
    .equip 16,2130 >>装备 |T133485:0|t[短棍]
    .equip 17,17184 >>装备 |T134955:0|t[小盾牌]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    >>|cRXP_WARN_你现在还不需要训练法术，它们的效果不如符文|r
    .accept 1599 >>接受任务 开端
    .turnin 3115 >>交任务 被污染的备忘录 << Gnome
    .accept 77666 >>接受任务 失窃的力量 << Gnome
    .turnin 77666 >>交任务 失窃的力量 << Gnome
    .target 阿拉玛尔·格里姆
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话，NPC在里面
    .turnin 3106 >>交任务 简易符文 << Dwarf
    .turnin 3112 >>交任务 简易备忘录 << Gnome
    .accept 77655 >>接受任务 失落符文 << Dwarf
    .turnin 77655 >>交任务 失落的符文 << Dwarf
    .accept 77656 >>接受任务 失落的符文 << Gnome
    .turnin 77656 >>交任务 失落的符文 << Gnome
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 斯兰·库尔曼
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_索姆·哈格林|r 对话
    .turnin 3109 >>交任务 密文符文 << Dwarf
    .turnin 3113 >>交任务 密文备忘录 << Gnome
    .accept 77658 >> Accept Thrice Stolen << Dwarf
    .turn in 77658 >>in 77658 >> 交任务三度失窃 << Dwarf
    .accept 77659 >>接受任务 三度失窃 << Gnome
    .turnin 77659 >>交任务 三度失窃 << Gnome
    .train 1784 >>学习 |T132320:0|t[潜行]
    .target 索姆·哈格林
step << Priest/Rogue
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    >>如果钱不够同时买这两样东西|cRXP_WARN_（60铜）|r，就多杀几只|cRXP_ENEMY_狼|r << Priest
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>出售装备给商人并购买 |T132495:0|t[薄布腰带] 和 |T132543:0|t[薄布靴]，你很快需要用到它们来铭刻符文 << Priest
    >>将垃圾卖给商人，然后购买|T132495:0|t|T132602:0|t[薄布腰带]和|T132602:0|t|T132602:0|t[薄布护腕]，你很快就要用它们来铭刻符文 << Rogue
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 << Priest --Thin Cloth Shoes (1)
    .collect 3600,1 << Rogue --Thin Cloth Bracers (1)
    .target 德南·弗卡特
step << Rogue
    .equip 6 >>装备 |T132495:0|t[薄布腰带]
    .equip 9 >>装备 |T132602:0|t[薄布护腕]
    .equip 10 >>装备 |T132952:0|t[破损的皮手套]
    .engrave 6 >>在你的腰带上铭刻|T132303:0|t|T132303:0|t[暗影步]
    .engrave 9 >>在你的护腕上铭刻|T236285:0|t|T236285:0|t[压倒优势]
    .engrave 10 >>在你的手套上铭刻 |T132375:0|t[军刀猛刺]
    .use 3599 --Thin Cloth Belt
    .use 3600 --Thin Cloth Bracers
    .use 2125 --Cracked Leather Gloves
step << Rogue
    #optional
    #sticky
    .engrave 15 >>留意任何披风掉落。一旦获得，就在上面铭刻|T134538:0|t|T134538:0|t[短枪射击]
    >>|cRXP_WARN_这是非常强大的斩击能力|r
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    >>|cRXP_WARN_训练|r |T135987:0|t|T135987:0|t[真言术：韧] |cRXP_WARN_因为你很快会在职业任务中用到它|r << Dwarf
    .turnin 3110 >>交任务 神圣符文 << Dwarf
    .accept 77661 >>接受任务 圣光之思 << Dwarf
    .turnin 77661 >>交任务 圣光之思 << Dwarf
    .target 布兰斯托克·卡德尔
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_装备|r |T132961:0|t[破布手套]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_为你的|r |T132961:0|t|T133816:0|t[破布手套]铭刻|r |T133816:0|t|T133816:0|t[铭刻手套 - 鬼影缠身] << Warlock
    .train 403919,3 << Warlock
step << Priest/Paladin
    .engrave 6 >>在你的腰带上铭刻 |T136181:0|t[心灵尖刺] << Priest
    .engrave 8 >>在你的靴子上铭刻|T237514:0|t|T237514:0|t[虚空疫病] << Priest
    .engrave 10 >>在你的手套上铭刻 |T136149:0|t[暗言术：灭] << Priest
    .engrave 7 >>在裤子上铭刻|T135874:0|t|T135874:0|t[复仇者之盾] << Paladin
    .engrave 10 >>在你的手套上铭刻 |T135891:0|t[十字军打击] << Paladin
step << Warlock
    .goto Dun Morogh,28.77,66.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>|cRXP_BUY_出售垃圾，并购买|r |T132602:0|t[薄布护腕] |cRXP_BUY_和|r |T132543:0|t[薄布靴]|cRXP_BUY_，你很快需要用到它们来铭刻符文|r << Warlock
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .collect 2117,1 << Warlock --Thin Cloth Shoes (1)
    .target 德南·弗卡特
step << Warrior/Warlock
    .equip 10 >>装备 |T132938:0|t[无光泽的链甲手套] << Warrior
    .engrave 10 >>在你的手套上铭刻 |T132342:0|t[乘胜追击] << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >>装备 |T132602:0|t[薄布护腕] << Warlock
    .equip 10 >>装备 |T132543:0|t[薄布靴] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .use 2117 << Warlock --Thin Cloth Shoes
    .engrave 5 >>在你的胸甲上铭刻|T136150:0|t[恶魔战术] << Warlock
    .engrave 7 >>在你的裤子上铭刻|T237562:0|t|T237562:0|t[恶魔契约] << Warlock
    .engrave 9 >>在你的护腕上铭刻|T135789:0|t|T135789:0|t[烧尽] << Warlock
    .engrave 8 >>在你的靴子上铭刻|T236302:0|t|T236302:0|t[暗影烈焰] << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r 对话
    .turnin 233 >>交任务 寒脊山谷的送信任务
    .accept 234 >>接受任务 寒脊山谷的送信任务
    .target 塔林·锐眼
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>刷怪达到 1130+／1400 经验
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >>刷怪达到995+/1400经验
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 234 >>交任务 寒脊山谷的送信任务
    .accept 182 >>接受任务 巨魔洞穴
    .target 格瑞林·白须
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step << Hunter/Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>击杀 |cRXP_ENEMY_霜鬃巨魔幼崽|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob 霜鬃巨魔新兵
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>刷怪升级到 4 级
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >>进入巨魔洞穴
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>杀死洞穴内的|cRXP_ENEMY_霜鬃巨魔新兵|r，并从它们身上拾取|cRXP_LOOT_羽毛护符|r
    >>|cRXP_WARN_你正在倒计时中，请勿离开或下线|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Hunter/Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_确保你在卖东西后至少留1银币，因为你需要用它来学习|r |T132204:0|t|T132204:0|t[毒蛇钉刺] << Hunter
    .hs >>炉石回安威玛尔
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    #label EnterAnvilmar
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_你有5分钟时间返回安威玛尔，在|r |T132791:0|t[德南的热酒] |cRXP_WARN_失效之前|r
    .goto 1426,28.939,68.387,20 >>进入安威玛尔
step << Hunter
    #optional
    #completewith HTraining
    #requires EnterAnvilmar
    .goto Dun Morogh,28.77,66.37,0
    .vendor >>|cRXP_BUY_考虑从安威玛尔内的|cRXP_FRIENDLY_杜南·法卡特|r购买缺失的装备部件，以便在上面雕刻|T134419:0|t|T134419:0|t|cRXP_WARN_[符文]|r|r
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话，NPC在里面
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .vendor >>把垃圾物品卖给商人
    .target 德南·弗卡特
    .isQuestAvailable 317
step << Hunter
    #season 2
    #label HTraining
    .goto Dun Morogh,29.175,67.455
    .target 索加斯·格瑞姆森
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索加斯·格瑞姆森|r 对话
    .turnin 3108 >>交任务 风蚀符文 << Dwarf
    .accept 77660 >>接受任务 穿越洞穴 << Dwarf
    .turnin 77660 >>交任务 穿越洞穴 << Dwarf
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r 对话，NPC在里面
    >>|cRXP_WARN_如果你还没找到|r |T132624:0|t|T132602:0|t[胸甲]|cRXP_WARN_或|r |T132602:0|t|T132602:0|t[护腕] |cRXP_WARN_，就去安威玛尔里的商人那里买，别把钱花在训练技能上。符文比你能买到的技能更强|r
    .trainer >>训练你的职业技能
    .target 布罗莫斯·格鲁诺尔
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    .turnin 1599 >>交任务开端
    .target 阿拉玛尔·格里姆
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r 对话
    .turnin 170 >>交任务 新的威胁
    .target 巴尔林·霜锤
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Hunter
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>击杀 |cRXP_ENEMY_霜鬃巨魔幼崽|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob 霜鬃巨魔新兵
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
    .target 格瑞林·白须
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target 诺里斯·激流
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_在|cRXP_LOOT_|T132791:0|t[德南的热酒] 失效之前，你有5分钟时间去获得|r格瑞林·白须的日记|r 然后|cRXP_WARN_返回安威玛尔|r
    >>|cRXP_WARN_无需担心任务失败，你可以重试|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>进入霜鬃巨魔洞穴
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>往里走，与|cRXP_ENEMY_冷酷的格瑞克尼尔|r对话
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>击杀 |cRXP_ENEMY_冷酷的格瑞克尼尔|r，他在里面。拾取他的 |cRXP_LOOT_格瑞林·白须的日记|r
    >>|cRXP_WARN_尽量确保卖东西后身上有2银币。你很快需要用它来学习技能。|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob 冷酷的格瑞克尼尔
--XXSOD xpgate for early 6 training?
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|T133816:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_学习|r |T133816:0|t|T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>离开霜鬃巨魔洞穴
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .target 格瑞林·白须
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    >>|cRXP_WARN_如果任务失败，请跳过此步骤|r
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .vendor >>把垃圾物品卖给商人
    .target 德南·弗卡特
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .accept 3365 >>接受任务 归还酒杯
    .vendor >>把垃圾物品卖给商人
    .target 德南·弗卡特
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>放弃任务 热酒快递. 你很快会重新接受它
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|T133816:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_学习|r |T133816:0|t|T133816:0|t[铭刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_装备一对|r |T132952:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有或拾取到一对|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_铭刻你的|r |T132952:0|t|T133816:0|t|cRXP_LOOT_[手套]|r使用|r |T133816:0|t|T133816:0|t[铭刻手套 - 暗影打击]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 和 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .accept 3364 >>接受任务 热酒快递
    .goto Dun Morogh,24.980,75.963
    .target 诺里斯·激流
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .goto Dun Morogh,25.075,75.715
    .target 格瑞林·白须
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
--  .vendor >> Vendor Trash
    .target 德南·弗卡特
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .trainer >>训练你的职业技能
    .target 玛瑞克·斯托纳尔
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .accept 77667 >>接受任务 法术研究 << Gnome
    .turnin 77667 >>交任务 法术研究 << Gnome
    .trainer >>训练你的职业技能
    .target 玛瑞克·斯托纳尔
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索姆·哈格林|r 对话
    .turnin 3113 >>交任务 密文备忘录 << Gnome
    .turnin 3109 >>交任务 密文符文 << Dwarf
    .train 1784 >>学习 |T132320:0|t[潜行]
    .trainer >>训练你的职业技能
    .target 索姆·哈格林
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    .accept 5626 >>接受任务 圣光的恩赐 << Dwarf
    .target 布兰斯托克·卡德尔
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    .turnin 3106 >>交任务 简易符文 << Dwarf
    .turnin 3112 >>交任务 简易备忘录 << Gnome
    .trainer >>训练你的职业技能
    .target 斯兰·库尔曼
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    >>如果有2银币的话，也训练|T132155:0|t|T132155:0|t[撕裂]
    .train 100,1 << Warrior --Charge
    .target 斯兰·库尔曼





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 玛瑞克·斯托纳尔
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .accept 77667 >>接受任务 法术研究 << Gnome
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 玛瑞克·斯托纳尔
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_法术笔记：NNGABIIHGQSU]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 冰枪术]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 77667 >>交任务 法术研究
    .target 玛瑞克·斯托纳尔
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_装备|r |T132961:0|t[破布手套]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_给你的|r |T132961:0|t|T133816:0|t[破布手套]铭刻|r |T133816:0|t|T133816:0|t[铭刻手套 - 冰枪术]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索姆·哈格林|r 对话
    .turnin 3113 >>交任务 密文备忘录 << Gnome
    .turnin 3109 >>交任务 密文符文 << Dwarf
    .train 1784 >>学习 |T132320:0|t[潜行]
    .target 索姆·哈格林
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .target 布兰斯托克·卡德尔
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    .turnin 3106 >>交任务 简易符文 << Dwarf
    .turnin 3112 >>交任务 简易备忘录 << Gnome
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 斯兰·库尔曼
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    .turnin 77655 >>交任务 失落的符文 << Dwarf
    .turnin 77656 >>交任务 失落的符文 << Gnome
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 斯兰·库尔曼




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r 对话
    .turnin 170 >>交任务 新的威胁
    .target 巴尔林·霜锤
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .target 格瑞林·白须
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target 诺里斯·激流
step << Mage
    #completewith next
    .hs >>使用你的炉石
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r对话
    .turnin 77657 >>交任务 圣光的圣物
    .target 布罗莫斯·格鲁诺尔
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索加斯·格瑞姆森|r 对话
    .turnin 77660 >>交任务 穿越洞穴
    .target 索加斯·格瑞姆森
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >>放弃任务圣光的圣物，因为你已经装备了一双|T132938:0|t[手套] << Paladin
    .abandon 77660 >>放弃任务穿越洞穴，因为你已经装备了一双|T132952:0|t[手套] << Hunter
step
    .goto Dun Morogh,29.47,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人贩卖垃圾物品并购买你需要的所有 |T134419:0|t|cRXP_WARN_[符文]|r|r
    .target Rune Broker
    .skipgossip
step
    #label Observations
    >>与|cRXP_FRIENDLY_巡山人泰洛斯|r和|cRXP_FRIENDLY_汉兹·跳链|r交谈
    .turnin 282 >>交任务 森内尔的观察站
    .accept 420 >>接受任务 森内尔的观察站
    .goto Dun Morogh,33.484,71.841
    .target 巡山人萨鲁斯
    .accept 2160 >>接受任务 塔诺克的补给品
    .goto Dun Morogh,33.85,72.24
    .target 汉兹·跳链
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>穿过寒脊山小径
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP 联盟 1-20 级
#name 6-11级 丹莫罗 探索赛季
#displayname 7-12级 丹莫罗
#next 12-13级 丹莫罗 探索赛季
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>在前往卡拉诺斯的途中击杀|cRXP_ENEMY_石鬃野猪|r。拾取它们获取|T133970:0|t|T133970:0|t|cRXP_LOOT_[野猪肉块]|r和|cRXP_LOOT_猪排|r
    >>|cRXP_WARN_收好你在任务（贝尔丁的补给）中获得的|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_你稍后会在升级|r |T133971:0|t[烹饪]|cRXP_WARN_中需要|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 420 >>交任务 森内尔的观察站
    .accept 287 >>接受任务 霜鬃巨魔要塞--2.5x xp, should be lvl7 here
    .target 森内尔·白须
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .trainer >>训练你的职业技能
    .target 吉姆瑞兹·黑轮
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .accept 384 >>接受任务 啤酒烤猪排
    .target 拉格纳·雷酒
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔诺克·霜锤|r 对话
    .turnin 2160,1 >>交任务 塔诺克的补给品 << Warrior/Rogue
    .turnin 2160,2 >>交任务 塔诺克的补给品 << !Warrior !Rogue
    .target 塔诺克·霜锤
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷格·比尔姆|r 对话
    >>|cRXP_WARN_Buy the|r |T135641:0|t[平衡飞刀]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target 克雷格·比尔姆
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>删除包里的|T135426:0|t[小飞刀] 你已不再需要它了
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室里与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .trainer >>训练你的职业技能
    .train 921 >>务必训练|T133644:0|t|T133644:0|t|cRXP_PICK_搜索|r，之后获取符文时会用到
    .target 霍格拉尔·巴坎
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .trainer >>训练你的职业技能
    .target 玛济斯·石衣
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target 阿扎尔·战锤
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .accept 5625 >>接受任务 圣光之衣
    .target 马克萨恩·安沃尔
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>施放|T135929:0|t|T135987:0|t[次级治疗术]（等级2），然后对门外的|cRXP_FRIENDLY_巡山人多尔夫|r施放|T135987:0|t|T135987:0|t[真言术：韧]
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target 巡山人多尔夫
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .turnin 5625 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
    .target 马克萨恩·安沃尔
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .home >>将你的炉石设置到雷酒酿制厂
    .vendor >>|cRXP_BUY_能买多少|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_就买多少|r << Mage
    .target 旅店老板贝尔姆
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_旅店老板贝尔姆|r 对话
    >>向他购买|T132800:0|t|T132800:0|t[|cRXP_LOOT_狂想麦酒|r]
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target 拉格纳·雷酒
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 格兰尼斯·快斧
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这能让你制作|r |T135255:0|t[劣质平衡石] |cRXP_WARN_使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 托格努斯·燧火
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r 对话
    .accept 400 >>接受任务 贝尔丁的工具
    .target 萨雷克·暗岩
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_爬上卡拉诺斯旅店的屋顶，然后跳到大酒桶顶部。跟随箭头方向|r
    >>打开|cRXP_PICK_生锈的锁箱|r。从中拾取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_杀手符文|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r |T134419:0|t|T236280:0|t[|cRXP_FRIENDLY_杀手符文|r] |cRXP_WARN_训练|r |T236280:0|t|T236280:0|t[暗影杀手]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    >>|cRXP_WARN_在途中请勿击杀任何 |cRXP_ENEMY_黑熊幼崽|r |r
    .accept 317 >>接受任务 贝尔丁的补给
    .target 驾驶员贝隆·风箱
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    .accept 313 >>接受任务 灰色洞穴
    .target 驾驶员迪恩·石轮
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r 和 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    .turnin 400 >>交任务 贝尔丁的工具
    .goto Dun Morogh,50.443,49.092
    .target 贝尔丁·钢架
    .accept 5541 >>接受任务 海格纳的弹药
    .goto Dun Morogh,50.084,49.420
    .target 罗斯洛·鲁治
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_亚尔·锤石|r 对话
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target 亚尔·锤石
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>击杀|cRXP_ENEMY_野猪|r。拾取它们的|T134026:0|t[丹莫罗猪肉]
    .collect 208192,1
    .mob 峭壁野猪
    .mob 老峭壁野猪
    .mob 大峭壁野猪
    .mob 有伤疤的峭壁野猪
    .train 425762,1
step
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取它们的 |cRXP_LOOT_厚熊皮|r
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob 黑熊幼崽
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    #optional
    #completewith EvershineEnd
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .turnin 317 >>交任务 贝尔丁的补给
    .accept 318 >>接受任务 艾沃沙酒
    .target 驾驶员贝隆·风箱
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor 1247 >>|cRXP_BUY_从他那里买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少就买多少|r
    .target 旅店老板贝尔姆
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .trainer >>训练你的职业技能
    .target 吉姆瑞兹·黑轮
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    .vendor 6328 >>|cRXP_BUY_如果买得起，就购买|r |T133738:0|t|T133738:0|t[魔典：火球术（等级2）] |cRXP_BUY_；如果暂时买不起，可以以后再买|r
    .target 吉姆瑞兹·黑轮
    .money <0.100
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>击杀|cRXP_ENEMY_霜鬃先知|r，并从它们身上拾取|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob 霜鬃先知
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]
    >>|cRXP_WARN_你必须在暴风城大教堂、洛克莫丹或铁炉堡的神秘之地的光明祭坛旁输入/pray，获得2层|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    >>|cRXP_WARN_|T136057:0|t|T136057:0|t|cRXP_PICK_艾露恩的冥想|r增益效果需要由另一位牧师玩家提供，方法是当你使用/kneel跪下时，对方对你使用/pray表情。如果你看到其他牧师带有不同的冥想BUFF，可以请他们为你施加|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>杀死 |cRXP_ENEMY_霜鬃先知|r。拾取它们的 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r]
    .collect 203752,1
    .mob 霜鬃先知
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>你需要从|cRXP_FRIENDLY_试剂供应商|r处购买一个|T135933:0|t[理解魔符]才能使用|T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN]|r
    .train 401768 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：IULAOYIHTEN|r] |cRXP_WARN_来学习|r |T135820:0|t[活化烈焰]
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]
    .collect 2901,1 --Mining Pick (1)
    .target 罗斯洛·鲁治
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_亚尔·锤石|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target 亚尔·锤石
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_从他那里|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target 旅店老板贝尔姆
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target 拉格纳·雷酒
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >>刷怪升级到6级
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    >>|cRXP_WARN_如果钱不够，在卡拉诺斯周围刷怪赚钱。这个法术后面做符文时会用到。|r
    .target 格瑞夫

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>前往灰色洞穴
    .isOnQuest 313
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>击杀 |cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r。拾取他们的 |cRXP_LOOT_雪怪的鬃毛|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob 雪怪
    .mob 雪怪幼崽
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_弹药箱|r。拾取 |cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>前去找 |cRXP_FRIENDLY_海格纳·重枪|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    >>|cRXP_BUY_从他那里购买一把|r |T135611:0|t|T135611:0|t[精制短枪]|cRXP_BUY_|r
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .turnin 5541 >>交任务 海格纳的弹药
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target 海格纳·重枪
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    .turnin 5541 >>交任务 海格纳的弹药
    .target 海格纳·重枪
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .accept 312 >>接受任务 马克格拉恩的干肉
    .target 图德拉·马克格拉恩
step
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_等|cRXP_ENEMY_冰须|r 巡逻出洞穴。一旦他离开洞穴， 你就可以偷偷进入并打开|r |cRXP_PICK_马克格拉恩的储肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>尝试完成从洞穴外的野猪身上拾取|T133972:0|t|T133972:0|t[|cRXP_LOOT_猪排|r]。|cRXP_WARN_如果那里没有的话就跳过此步骤|r
    >>|cRXP_WARN_确保你已经拾取了 |T134026:0|t|T134026:0|t[丹莫罗猪肉]。|cRXP_WARN_现在你需要用它来获取一个符文|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .turnin 312 >>交任务 马克格拉恩的干肉
    .target 图德拉·马克格拉恩
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>在洞穴内的尸体旁使用|T134026:0|t|T134026:0|t[丹莫罗猪肉]召唤|cRXP_ENEMY_乔鲁尔|r
    >>击杀|cRXP_ENEMY_乔鲁尔|r，从他身上拾取|T134419:0|t|T134419:0|t|cRXP_LOOT_[侧翼符文]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r |T134419:0|t|T132175:0|t|cRXP_LOOT_[侧翼符文]|r |cRXP_WARN_来训练|r |T132175:0|t|T132175:0|t[侧翼打击]
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>前往烈酒村
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r
    .collect 1179,20
    .target 基格·吉布恩
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 对话
    .turnin 318 >>交任务《 前往熔光镇》 艾沃沙酒
    .goto Dun Morogh,30.190,45.726
    .target 雷杰德·麦酒
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>对|cRXP_ENEMY_沙沙作响的灌木丛|r施放|T132212:0|t[猎人印记]
    >>杀死刷新的 |cRXP_ENEMY_钢鬃偷猎者|r。拾取他的 |T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>使用|T134419:0|t[|cRXP_FRIENDLY_神射手符文|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>击杀|cRXP_ENEMY_麻风侏儒|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 麻风侏儒
    .train 425216,1
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>击杀|cRXP_ENEMY_麻风侏儒|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob 麻风侏儒
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] |cRXP_WARN_训练|r |T237514:0|t[虚空疫病]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t|T134269:0|t[搜索]|cRXP_ENEMY_麻风侏儒|r。从他们身上拾取|T134269:0|t|T134269:0|t[|cRXP_LOOT_右下角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob 麻风侏儒
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>沿着洞口坡道上行，然后跳入霜鬃巨魔要塞
    .isOnQuest 287
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>击杀洞穴里的 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step << Rogue
    #season 2
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    #completewith ShimmerweedCollect
    >>|T133644:0|t|T134327:0|t[搜索]|cRXP_ENEMY_霜鬃巨魔|r。从他们身上拾取|T134327:0|t|T134327:0|t[|cRXP_LOOT_右上角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob 霜鬃先知
    .mob 霜鬃猎头者
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_跳入洞穴里的小死胡同|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >>在卡拉诺斯死亡并复活
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_和一杯|r |T132800:0|t[雷霆麦酒]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target 旅店老板贝尔姆
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target 拉格纳·雷酒
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 287 >>交任务 霜鬃巨魔要塞
    .accept 291 >>接受任务 森内尔的报告
    .target 森内尔·白须
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .trainer >>训练你的职业技能
    .accept 6064 >>接受任务 驯服野兽 << Dwarf
    .target 格瑞夫
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_对 |r大峭壁野猪|cRXP_WARN_ 使用|r |T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob 大峭壁野猪
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6064 >>交任务 驯服野兽
    .accept 6084 >>接受任务 驯服野兽
    .target 格瑞夫
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob 雪豹
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6084 >>交任务 驯服野兽
    .accept 6085 >>接受任务 驯服野兽
    .target 格瑞夫
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_使用|r |T132164:0|t[驯服之仗] |cRXP_WARN_对|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob 冰爪熊
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6085 >>交任务 驯服野兽
    .accept 6086 >>接受任务 训练野兽
    .target 格瑞夫
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室里与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .accept 2218 >>接受任务 救赎之路
    .target 霍格拉尔·巴坎
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target 阿扎尔·战锤
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 格兰尼斯·快斧
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .train 118 >>学习 |T136071:0|t[变形术]
    .target 玛济斯·石衣
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 马克萨恩·安沃尔
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆诺·普尔|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 萨姆诺·普尔
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    .turnin 313 >>交任务 灰色洞穴
    .target 驾驶员迪恩·石轮
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_持续刷怪，直到你拥有价值10银30铜的垃圾物品|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>前往铁炉堡
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 或 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .trainer >>如果你已主队，或有人帮忙，现在就击杀 |cRXP_ENEMY_瓦加什|r。然后找 |cRXP_FRIENDLY_布里维夫·石拳|r 学习双手锤。要不然的话找 |cRXP_FRIENDLY_比克斯|r 学习投掷。如果你不确定需要学习哪一个的话就选择投掷
    .target 比克斯
    .target 布里维夫·石拳
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target 布雷文·寒钢
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
