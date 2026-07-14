if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 北郡 探索赛季
#displayname 1-6级 北郡
#version 1
#group RestedXP 联盟 1-20 级
#defaultfor Human
#next 6-12 艾尔文森林 探索赛季
#season 2


step << !Human
    #completewith next
    +你选择的是人类专用的指南，请确保你的选择与你角色出生地一致
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 783 >>接受任务 身边的危机
    .target 维里副队长
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>击杀|cRXP_ENEMY_幼狼|r直到升到2级（4只怪）
    >>一定要拾取它们，你需要15铜来购买符文和训练 << Rogue/Warrior
    >>确保拾取它们，你需要30铜来买手套和符文 << Mage
    >>一定要拾取它们，你需要40铜来购买护腕、学习技能和符文 << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_如果你没有价值30铜的垃圾，就多杀几只狼|r << Mage
    >>|cRXP_WARN_如果你没有价值40铜的垃圾，就多杀几只狼|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_德尔莫特·约翰斯|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>卖掉垃圾，然后购买|T132952:0|t|T132952:0|t[薄布手套]，你很快需要用它来铭刻符文 << Mage
    >>卖掉垃圾，然后购买|T132602:0|t|T132602:0|t[薄布护腕]，你很快需要用它来铭刻符文 << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_垃圾卖店然后购买|r |T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r] << Warrior
    .vendor >>|cRXP_BUY_将垃圾卖给商人，并购买|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_暗影打击符文|r]|r << Rogue
    .vendor >>|cRXP_BUY_购买所有关键AOE符文|r << Mage
    .vendor >>|cRXP_BUY_购买以下所有符文：|r << Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>你很快就能获得你的其余符文
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >>使用|T134419:0|t|T132323:0|t[|cRXP_FRIENDLY_暗影打击符文|r]训练|T132323:0|t|T132323:0|t[暗影打击]，你很快就能铭刻它 << Rogue
    .train 403470 >>使用|T134419:0|t[|cRXP_FRIENDLY_乘胜追击符文|r]来学习|T132342:0|t[乘胜追击]，你很快就会铭刻它 << Warrior
    .train 401768 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：活化烈焰|r] 来学习 |T135820:0|t[活化烈焰] << Mage
    .train 415936 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：活动炸弹|r] 来学习 |T236220:0|t[活动炸弹] << Mage
    .train 401759 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：燃尽|r] 来学习 |T236207:0|t[燃尽] << Mage
    .train 440858 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：寒冰宝珠|r] 来学习 |T135851:0|t[寒冰宝珠] << Mage
    .train 416009 >>使用 |T134419:0|t[|cRXP_FRIENDLY_战术符文|r] 来学习 |T136150:0|t[恶魔战术] << Warlock
    .train 425476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_契约符文|r] 来训练 |T237562:0|t[恶魔契约] << Warlock
    .train 211477 >>使用 |T134419:0|t[|cRXP_FRIENDLY_烧尽符文|r] 来训练 |T135789:0|t[烧尽] << Warlock
    .train 403919 >>使用 |T134419:0|t[|cRXP_FRIENDLY_鬼影缠身符文|r] 来训练 |T236298:0|t[鬼影缠身] << Warlock
    .train 403619 >>使用|T133733:0|t[邪甲术魔典]来学习|T136156:0|t[邪甲术] |cRXP_WARN_并将其作为你的主要护甲法术使用|r << Warlock
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
step << Warlock
    #optional
    #sticky
    .aura 403619 >>|cRXP_WARN_请记得激活你的|r |T136156:0|t|T136156:0|t[邪甲术]
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .accept 77616 >>接受任务 失落的符文
    .turnin 77616 >>交任务 失落的符文
    .goto Elwynn Forest,50.242,42.287
    .mob 幼狼
    .target 莱尼·拜舍尔
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >>装备|T132952:0|t[薄布手套] << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >>在裤子上铭刻|T135820:0|t|T135820:0|t[活化烈焰] << Mage
    .engrave 10 >>在你的手套上铭刻|T236220:0|t|T236220:0|t[活动炸弹] << Mage
    .engrave 5 >>在你的胸甲上铭刻 |T236207:0|t[燃尽] << Mage
    .equip 10 >>装备 |T132938:0|t[无光泽的链甲手套] << Warrior
    .engrave 10 >>在你的手套上铭刻 |T132342:0|t[乘胜追击] << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >>装备 |T132952:0|t[破损的皮手套] << Rogue
    .engrave 10 >>在你的手套上铭刻|T132323:0|t|T132323:0|t[暗影打击] << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >>装备 |T132602:0|t[薄布护腕] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >>在你的胸甲上铭刻|T136150:0|t[恶魔战术] << Warlock
    .engrave 7 >>在你的裤子上铭刻|T237562:0|t|T237562:0|t[恶魔契约] << Warlock
    .engrave 9 >>在你的护腕上铭刻|T135789:0|t|T135789:0|t[烧尽] << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 783 >>交任务 身边的危机
    .accept 7 >>接受任务 狗头人的蜡烛
    .target 治安官玛克布莱德
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 5261 >>接受任务 伊根·派特斯金纳
    .accept 18 >>接受任务 盗贼兄弟会 << Warlock
    .target 维里副队长
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .accept 1598 >>接受任务 失窃的典籍
    .accept 77621 >>接受任务 失窃的力量 << Human
    .turnin 77621 >>交任务 失窃的力量 << Human
    .train 348 >>学习 |T135817:0|t[献祭]
    .target 杜希拉·拉萨雷
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_装备|r |T132961:0|t|T132961:0|t[破布手套]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_为你的|r |T132961:0|t|T236298:0|t[破布手套] |cRXP_WARN_铭刻|r |T236298:0|t|T236298:0|t[鬼影缠身]
    .train 403919,3
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_迪菲亚暴徒|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob 迪菲亚暴徒
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_闯入迪菲亚营地里的帐篷|r
    >>打开 |cRXP_PICK_被偷走的书|r。并从中拾取 |cRXP_LOOT_虚空灵能|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>击杀 |cRXP_ENEMY_迪菲亚暴徒|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob 迪菲亚暴徒
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >>炉石返回到北郡山谷
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 1598 >>交任务 失窃的典籍
    .target 杜希拉·拉萨雷
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 18,1 >>交任务 盗贼兄弟会
    .target 维里副队长
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >>装备 |T135641:0|t[民兵匕首]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T135975:0|t[衬衣] |cRXP_BUY_，然后从他那里购买|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r]|r << Priest
    >>|cRXP_BUY_卖掉你的|r |T135005:0|t|T132540:0|t[衬衣] 和 |T133745:0|t|T134916:0|t[靴子] |cRXP_WARN_（它们无法铭刻）|r |cRXP_BUY_，然后从他那里购买|T133745:0|t|T133745:0|t[|cRXP_FRIENDLY_论述：殉道|r] 和 |T134916:0|t|T134916:0|t[|cRXP_FRIENDLY_审判圣契|r]|r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    >>你很快就能获得你的其余符文
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    #label Libram
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .train 402852 >>使用 |T135975:0|t[|cRXP_FRIENDLY_遭渎城堡的预言|r] 来训练 |T237570:0|t[裂魂魔] << Priest
    .train 407798 >>使用|T133745:0|t|T135961:0|t[|cRXP_FRIENDLY_论述：殉道|r]来训练|T135961:0|t|T135961:0|t[殉道圣印]，|cRXP_WARN_并将其作为你的主要圣印使用|r << Paladin
    .equip 18 >>装备|T134916:0|t|T135891:0|t[|cRXP_FRIENDLY_审判圣契|r]，30秒后可使用它来学习|T135891:0|t|T135891:0|t[十字军打击] << Paladin
    .engrave 7 >>在你的裤子上铭刻 |T237570:0|t[裂魂魔] << Priest
step << Paladin
    #optional
    #completewith Vermin
    .aura 407798 >>请记得使用|T135961:0|t|T135961:0|t[殉道圣印]作为你的圣印
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >>使用|T134916:0|t|T135891:0|t[|cRXP_FRIENDLY_审判圣契|r]学习|T135891:0|t|T135891:0|t[十字军打击]
step << Paladin
    #optional
    #requires LibramLearn
    #completewith PalaQ
    .engrave 10 >>|cRXP_WARN_留意是否有|r |T132952:0|t|T135891:0|t[手套] |cRXP_WARN_掉落。|r |cRXP_WARN_为其铭刻|r |T135891:0|t|T135891:0|t[十字军打击]
    >>如果你没找到，最终会通过职业任务获得它们
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 5261 >>交任务 伊根·派特斯金纳
    .accept 33 >>接受任务 林中的群狼
    .target 伊根·派特斯金纳
step << Rogue
    #completewith next
    >>在前往训练师的路途中击杀|cRXP_ENEMY_狼|r和|cRXP_ENEMY_狗头人歹徒|r
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob 幼狼
	.mob Timber Wolf
    .mob 狗头人歹徒
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .accept 77618 >>接受任务 三度失窃
    .turnin 77618 >>交任务 三度失窃
    .train 1784 >>训练|T132320:0|t|T135131:0|t[潜行]，你需要用它来使用|T135131:0|t|T135131:0|t[暗影打击]
    .target 乔里克·克里丹
step << Mage
    #optional
    #sticky
    .engrave 15 >>留意是否有披风掉落。一旦拿到就在上面铭刻|T135851:0|t[寒冰宝珠]
    >>|cRXP_WARN_这个技能过于逆天|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_当你拥有价值50铜币的垃圾物品:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 丹尼尔修士
step << Paladin
    #label Vermin
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人歹徒|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob 狗头人歹徒
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>击杀 |cRXP_ENEMY_幼狼|r 和 |cRXP_ENEMY_森林狼|r。拾取他们的 |cRXP_LOOT_硬狼肉|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob 幼狼
	.mob Timber Wolf
step << !Priest !Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>击杀 |cRXP_ENEMY_狗头人歹徒|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob 狗头人歹徒
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>刷怪达到 720+/1400经验
    .mob 幼狼
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 33,2 >>交任务 林中的群狼 << Warrior/Paladin/Rogue
    .turnin 33,1 >>交任务 林中的群狼 << !Warrior !Paladin !Rogue
    .target 伊根·派特斯金纳
step << Paladin
    #optional
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    +|cRXP_WARN_刷 |cRXP_ENEMY_狗头人歹徒|r 或 |cRXP_ENEMY_狼|r， 并出售垃圾直到你至少有93铜币|r
    .money >0.0093
    .mob 狗头人歹徒
    .mob 幼狼
	.mob Timber Wolf
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >>刷怪达到1060+/1400经验
    .mob 幼狼
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    >>|cRXP_WARN_早期使用盾牌加单手武器升级会快得多，因为前期盾牌符文非常强力。|r
    >>|cRXP_BUY_向商人出售垃圾，并购买|r |T134955:0|t[小盾牌]
    .collect 17184,1 --Small Shield (1)
    .target Godrick Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚努斯·哈默纳克|r 对话
    >>|cRXP_WARN_早期使用盾牌加单手武器升级会快得多，因为前期盾牌符文非常强力。|r
    >>|cRXP_BUY_向商人出售垃圾，并购买|r |T133485:0|t[短棍]
    .collect 2130,1 --Club (1)
    .target 亚努斯·哈默纳克
step << Paladin
    .equip 16,2130 >>装备 |T133485:0|t[短棍]
    .equip 17,17184 >>装备 |T134955:0|t[小盾牌]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    +|cRXP_WARN_刷怪并卖掉垃圾，直到你拥有1银|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >>|cRXP_WARN_装备|r |T132543:0|t|T132543:0|t[柔软的毛边鞋]，稍后你将用它来铭刻符文
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_德尔莫特·约翰斯|r 对话
    >>如果钱不够同时买这两样东西|cRXP_WARN_（60铜）|r，就多杀几只|cRXP_ENEMY_狼|r
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    >>卖掉垃圾，然后购买|T132495:0|t|T132952:0|t[薄布腰带]和|T132952:0|t|T132952:0|t[薄布手套]，你很快会用到它们来铭刻符文
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_再买 10瓶|r |T132794:0|t[清凉的泉水]
    >>|cRXP_WARN_请至少保留 10 铜币，后续要用|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 丹尼尔修士
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_购买以下所有符文：|r
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
step << Priest/Paladin
    .train 431663 >>使用 |T135791:0|t[|cRXP_FRIENDLY_灵智顿悟|r] 来训练 |T136181:0|t[心灵尖刺] << Priest
    .train 425216 >>使用 |T136222:0|t[|cRXP_FRIENDLY_黑暗意图的回忆|r] 训练 |T237514:0|t[虚空疫病] << Priest
    .train 402862 >>使用 |T136222:0|t[|cRXP_FRIENDLY_忧虑助祭的回忆|r] 来训练 |T237545:0|t[苦修] << Priest
    .train 402849 >>使用 |T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r] 来训练 |T136149:0|t[暗言术：灭] << Priest
    .train 410014 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神圣风暴符文|r] 来训练 |T236250:0|t[神圣风暴] << Paladin
    .train 410008 >>使用|T134419:0|t|T135874:0|t[|cRXP_FRIENDLY_复仇者符文|r]学习|T135874:0|t|T135874:0|t[复仇者之盾] << Paladin
    .train 410013 >>使用 |T134419:0|t[|cRXP_FRIENDLY_正义之锤符文|r] 来学习 |T236253:0|t[正义之锤] << Paladin
    .train 440788 >>使用|T134419:0|t|T236265:0|t[|cRXP_FRIENDLY_正义盾击符文|r]来学习|T236265:0|t|T236265:0|t[正义盾击] << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_留意任何可以装备的|r |T132624:0|t|T133762:0|t[胸甲]|cRXP_WARN_、|r |cRXP_WARN_或|r |T133762:0|t|T133762:0|t[披风] |cRXP_WARN_|r
    .engrave 5 >>将|T236250:0|t|T236250:0|t[神圣风暴]铭刻在你的胸部装备上
    .engrave 15 >>将|T236265:0|t|T236265:0|t[正义盾击]附魔到你的披风上
step << Priest/Paladin
    .use 6070 << Paladin --Wolfskin Bracers
    .equip 9 >>装备上|T132604:0|t|T132604:0|t[狼皮护腕] << Paladin
    .engrave 6 >>在你的腰带上铭刻 |T136181:0|t[心灵尖刺] << Priest
    .engrave 8 >>在你的靴子上铭刻|T237514:0|t|T237514:0|t[虚空疫病] << Priest
    .engrave 10 >>在你的手套上铭刻 |T136149:0|t[暗言术：灭] << Priest
    .engrave 7 >>在裤子上铭刻|T135874:0|t|T135874:0|t[复仇者之盾] << Paladin
    .engrave 9 >>在你的护腕上铭刻|T236253:0|t|T236253:0|t[正义之锤] << Paladin
step << Priest/Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>击杀 |cRXP_ENEMY_狗头人歹徒|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob 狗头人歹徒
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>刷怪达到 720+/1400经验
    .mob 幼狼
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue !Paladin
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 高德瑞克·洛斯迦
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人贩卖垃圾物品并购买你需要的所有 |T134419:0|t|cRXP_WARN_[符文]|r|r
    >>确保你已经购买了|T134939:0|t|T134939:0|t[|cRXP_FRIENDLY_法术笔记：冰枪术|r]，你将用它来交一个额外的任务
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >>使用 |T134939:0|t[|cRXP_FRIENDLY_法术笔记：冰枪术|r] 来学习 |T135844:0|t[冰枪术]
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 7 >>交任务 狗头人的蜡烛
    .accept 15 >>接受任务 回音山调查行动
    .accept 3100 >>接受任务 简要的信件 << Warrior
    .accept 3101 >>接受任务 圣洁信件 << Paladin
    .accept 3102 >>接受任务密文信件 << Rogue
    .accept 3103 >>接受任务 神圣信件 << Priest
    .accept 3104 >>接受任务 雕文信件 << Mage
    .accept 3105 >>接受任务 被污染的信件 << Warlock
    .target 治安官玛克布莱德




----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>上楼去找 |cRXP_FRIENDLY_凯尔登·布雷门|r
step << Mage
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_凯尔登·布雷门|r 对话
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>交任务 雕文信件
    .accept 77620 >>接受任务 法术研究 << Human
    .turnin 77620 >>交任务 法术研究 << Human
    .trainer >>训练你的职业技能
    .target 凯尔登·布雷门
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>进屋并下楼去找 |cRXP_FRIENDLY_女牧师安妮塔|r
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 3103 >>交任务 神圣信件
    .accept 77619 >>接受任务 圣光之思 << Human
    .turnin 77619 >>交任务 圣光之思 << Human
    .trainer >>训练你的职业技能，|cRXP_WARN_如果学不起就跳过，反正你主要会使用符文技能|r
    .target 女牧师安妮塔
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .turnin 3100 >>交任务 简要的信件
    .accept 77616 >>接受任务 失落的符文 << Human
    .turnin 77616 >>交任务 失落的符文 << Human
    .train 100 >>学习 |T132337:0|t[冲锋]
    .target 莱尼·拜舍尔
step << Paladin
    #xprate >1.59
    #season 2
    #label PalaQ
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .turnin 3101 >>交任务 圣洁信件
    .accept 77617 >>接受任务 圣光的圣物 << Human
    .turnin 77617 >>交任务 圣光的圣物 << Human
    >>|cRXP_WARN_如果有多余的钱，可以花在|r |T135906:0|t|T135959:0|t[力量祝福]、|T135029:0|t|T135959:0|t[审判] |cRXP_WARN_或者|r |T135029:0|t|T135029:0|t[胸甲] |cRXP_WARN_上（如果还没学会的话）。建议优先购买胸甲|r
    .target 萨缪尔修士
step << Paladin
    #optional
    #completewith RestandR
    .use 2385 --Tarnished Chain Gloves
    .equip 10 >>装备|T132938:0|t|T132938:0|t|cRXP_LOOT_[无光泽的链甲手套]|r，如果你还没找到其他手套的话
    .engrave 10 >>|cRXP_WARN_铭刻|r |T132938:0|t|T135891:0|t|cRXP_LOOT_[无光泽的链甲手套]|r |cRXP_WARN_上|r |T135891:0|t|T135891:0|t[十字军打击] << Paladin
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >>离开北郡修道院
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 18 >>接受任务 盗贼兄弟会
    .target 维里副队长
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人贩卖垃圾物品并购买你需要的所有 |T134419:0|t|cRXP_WARN_[符文]|r|r
    .target Rune Broker
    .skipgossip
step
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>击杀 |cRXP_ENEMY_狗头人劳工|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob 狗头人劳工
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .turnin 3102 >>交任务密文信件
    .target 乔里克·克里丹
step << !Warlock
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>击杀 |cRXP_ENEMY_迪菲亚暴徒|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob 迪菲亚暴徒
step
    #optional
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 18,1 >>交任务 盗贼兄弟会 << Rogue
    .turnin 18,2 >>交任务 盗贼兄弟会 << Paladin
    .turnin 18,2 >>交任务 盗贼兄弟会 << Priest
    .turnin 18,3 >>交任务 盗贼兄弟会 << Warrior
    .turnin 18,5 >>交任务 盗贼兄弟会 << Mage
    .turnin 18 >>交任务 盗贼兄弟会 << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target 维里副队长
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >>装备 |T135641:0|t[民兵匕首]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >>装备|T133052:0|t|T133052:0|t[民兵之锤]
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >>装备 |T135274:0|t[民兵短剑]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>进屋并下楼去找 |cRXP_FRIENDLY_女牧师安妮塔|r
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .accept 5623 >>接受任务 圣光的恩赐
    .target 女牧师安妮塔
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_萨缪尔修士|r 在楼下对话
    .turnin 77617 >>交任务 圣光的圣物
    .trainer >>训练你的职业技能
    .target 萨缪尔修士
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_装备|r |T132938:0|t|T132938:0|t|cRXP_LOOT_[无光泽的链甲手套]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 15 >>交任务 调查营地
    .accept 21 >>接受任务 回音山清剿行动
    .target 治安官玛克布莱德
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>离开北郡修道院
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 3105 >>交任务 被污染的信件
    .train 172 >>学习 |T136118:0|t[腐蚀术]
    .target 杜希拉·拉萨雷



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_符文贩子|r 对话
    >>|cRXP_WARN_千万不要把能穿的装备卖给商人|r
    .vendor >>|cRXP_BUY_向商人贩卖垃圾物品并购买你想要的所有 |T134419:0|t|cRXP_WARN_[符文]|r|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>进入回音山矿洞
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>击杀 |cRXP_ENEMY_狗头人苦力|r 在回音山矿洞里面
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob 狗头人苦力
step
	#softcore
    #completewith next
    .deathskip >>死亡并在北郡的灵魂医者处复活
    .target 灵魂医者
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >>放弃任务 米莉的葡萄
step
    #xprate >1.49
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >>刷怪达到1205+/2800经验 << Paladin/Warrior
    .xp 5+1040 >>刷怪达到1040+/2800经验 << !Paladin !Warrior !Priest
    .xp 5+875 >>刷怪达到 875+/2800 经验 << Priest
    .mob 迪菲亚暴徒
step
    #optional
    #softcore
    #completewith #label RestandR
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .turnin 21,1 >>交任务 回音山清剿行动 << Rogue
    .turnin 21,2 >>交任务 回音山清剿行动 << Warrior/Paladin
    .turnin 21,3 >>交任务 回音山清剿行动 << !Warrior !Paladin !Rogue
    .accept 54 >>接受任务 去闪金镇报到
    .target 治安官玛克布莱德
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .accept 5623 >>接受任务 圣光的恩赐
    .target 女牧师安妮塔
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r 对话
    .accept 2158 >>接受任务 休息和放松
    .target 法尔坎·伊森斯泰德
]])


RXPGuides.RegisterGuide([[
#classic
#season 2
#version 1
<< Alliance
#group RestedXP 联盟 1-20 级
#name 6-12 艾尔文森林 探索赛季
#displayname 6-12 艾尔文森林
#next 12-13 丹莫罗 探索赛季
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >>前往金雾村
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
    .target 治安官杜汉
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
    .target 治安官杜汉
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135321:0|t[步兵剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_WARN_购买一根|r |T133053:0|t[木槌棒]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这能让你制作|r |T135255:0|t[劣质平衡石] |cRXP_WARN_使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 铁匠阿古斯
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德温·克里顿|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 安德温·克里顿
--  .money >1.0
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .accept 60 >>接受任务 狗头人的蜡烛
    .target 威廉·匹斯特
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .turnin 2158,1 >>交任务 休息和放松 << Rogue/Warrior
    .turnin 2158,2 >>交任务 休息和放松 << !Rogue !Warrior
    .home >>将你的炉石设置为闪金镇
    .target 旅店老板法雷
step
    #optional
    .xp 6 >>刷怪到6级
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor 151 >>|cRXP_BUY_购买一把|r |T135641:0|t[平衡飞刀]|cRXP_BUY_从他那里，如果钱够|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target 布洛葛·哈姆菲斯特
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
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>下楼
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .trainer >>训练你的职业技能
    .target 玛克西米利安·克洛文
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor 6374 >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target 塞琳娜·达克哈特
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target 女牧师洁塞塔
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >>交任务 圣光的恩赐
    .accept 5624 >>接受任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target 米歇尔·贝利
    .train 3273 >>训练 |T135966:0|t[急救]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor 295 >>|cRXP_BUY_购买|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里。直到你的钱剩下 1 银币为止|r << Warrior
    .vendor 295 >>|cRXP_BUY_买够20个|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target 旅店老板法雷
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .accept 47 >>接受任务 金砂交易
    .target 雷米
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在|r|cRXP_FRIENDLY_卫兵罗伯兹|r 身上
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target 卫兵罗伯兹
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob 石牙野猪
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>留意|cRXP_FRIENDLY_流浪剑客|r。如果找到他，可以发起决斗，获胜后将获得|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]符文
    >>|cRXP_WARN_他有多个刷新点，同一时间只会出现在其中一个位置。|r
    >>|cRXP_WARN_在这个等级你很可能无法单挑他，如果周围没人帮忙就跳过这一步，等你升到10级后再回来看看他是否还在|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 和 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话 << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话 << !Rogue
    .accept 85 >>接受任务 丢失的项链
    .goto Elwynn Forest,34.486,84.253
    .target 波尼斯·斯通菲尔德姑妈
    .accept 88 >>接受任务 公主必须死！ << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target 斯通菲尔德妈妈 << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|cRXP_WARN_把|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |T135232:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T135232:0|t|cRXP_LOOT_[亚麻布]|r |T132889:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135255:0|t[劣质平衡石] << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
    .target 比利·马科伦
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .accept 106 >>接受任务 年轻的恋人
    .target 梅贝尔·马科伦
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·马科伦|r 对话
    .vendor >>|cRXP_BUY_能买多少|r |T132815:0|t[冰镇牛奶] |cRXP_WARN_就买多少|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_出售垃圾物品|r << !Priest !Warlock !Mage
    .target 乔舒·马科伦
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|cRXP_WARN_把|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |T135232:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T135232:0|t|cRXP_LOOT_[亚麻布]|r |T132889:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135255:0|t[劣质平衡石] << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r 对话
    .turnin 106 >>交任务 年轻的恋人
    .accept 111 >>接受任务 托米的祖母
    .target 托米·乔·斯通菲尔德
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 86 >>交任务 比利的馅饼
    .accept 84 >>接受任务 比利的馅饼
    .target 波尼斯·斯通菲尔德姑妈
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莱德·斯通菲尔德|r 对话，NPC在里面
    .turnin 111 >>交任务 托米的祖母
    .accept 107 >>接受任务 给威廉·匹斯特的信
    .target 米莱德·斯通菲尔德
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|cRXP_WARN_把|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |T135232:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T135232:0|t|cRXP_LOOT_[亚麻布]|r |T132889:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135255:0|t[劣质平衡石] << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>击杀|cRXP_ENEMY_狗头人矿工|r和|cRXP_ENEMY_狗头人隧道工|r，从它们身上拾取|T134168:0|t|T134168:0|t|cRXP_LOOT_[被砍下的狗头人的头]|r
    >>|cRXP_WARN_这是解锁|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_所需的三件物品之一，供你后续抵达暴风城时使用|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob 狗头人隧道工
    .mob 狗头人矿工
    .mob 金牙
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #completewith Exchange
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>|T133644:0|t|T134327:0|t搜索|cRXP_ENEMY_狗头人矿工|r和|cRXP_ENEMY_狗头人隧道工|r。从他们身上拾取|T134327:0|t|T134327:0|t|cRXP_LOOT_右上角地图碎片|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t|T133644:0|t[潜行] |cRXP_WARN_状态才能使用|r |T133644:0|t|T133644:0|t[搜索]
    >>|cRXP_ENEMY_注意：|r |cRXP_WARN_所有|r |T134327:0|t|T134536:0|t[|cRXP_LOOT_地图碎片|r] |cRXP_WARN_步骤都是为了解锁|r |T134536:0|t|T134536:0|t[速射] |cRXP_WARN_符文。|r |cRXP_WARN_该符文在升级过程中有用但非必需，解锁毒药后（约22级）便会过时。如果你不急于获得该符文，想节省短期时间，可以跳过所有这些步骤。|r
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob 狗头人矿工
    .mob 狗头人隧道工
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #completewith BernicesNecklace
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 84 >>交任务 比利的馅饼
    .accept 87 >>接受任务 金牙
    .target 比利·马科伦
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>击杀|cRXP_ENEMY_狗头人矿工|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    >>|cRXP_WARN_现在不必特意去刷它，你稍后还可以获得这个符文|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob 狗头人矿工
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>进入法戈第矿洞中较大的开阔区域之一
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>击杀 |cRXP_ENEMY_金牙|r。拾取他的 |cRXP_LOOT_波尼斯的项链|r << !Warrior !Priest
    >>击杀|cRXP_ENEMY_金牙|r。从他身上拾取|cRXP_LOOT_波尼斯的项链|r和|T134419:0|t|T134419:0|t|cRXP_LOOT_[狂怒雷霆符文]|r << Warrior
    >>击杀|cRXP_ENEMY_金牙|r。从他身上拾取|cRXP_LOOT_波尼斯的项链|r和|T136222:0|t|T136222:0|t|cRXP_LOOT_[黑暗意图的回忆]|r << Priest
    >>|cRXP_WARN_小心，他通常会拉到旁边的|cRXP_ENEMY_ |r狗头人矿工|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob 金牙
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>完成击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step << Rogue
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    .xp 9+2000 >>击杀狗头人直到你达到9级并拥有2000点经验值。
    >>|cRXP_WARN_如果你离得不远，可以先交金牙任务，但刷怪效率更高|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|T136048:0|t|cRXP_LOOT_[狂怒雷霆符文]|r |cRXP_WARN_学习|r |T136048:0|t|T136048:0|t[狂怒雷霆]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_你必须通过在北郡修道院或暴风城大教堂等神圣区域输入/kneel来获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t|T237514:0|t|cRXP_LOOT_[黑暗意图的回忆]|r |cRXP_WARN_学习|r |T237514:0|t|T237514:0|t[虚空疫病]
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >>死亡并在闪金镇的灵魂医者处复活
    .target 灵魂医者
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_跳到洞穴内的碎木机、漂浮原木、箱子或矿车灯上，然后登出再登入来执行登出跳过|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >>返回闪金镇
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 60 级都很有用|r
    .turnin 47 >>交任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
    .target 雷米
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_如果可能的话，在闪金镇找一个带有其他|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r的牧师
    >>|cRXP_WARN_输入 /kneel，然后让另一位牧师在你跪下时对你输入 /pray，即可获得他们的|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果，你可以在之后使用|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .target 治安官杜汉
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 科瑞娜·斯蒂利
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135321:0|t[步兵剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target 科瑞娜·斯蒂利
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_如果买得起的话，就从她那里再买一把|r |T135641:0|t|T135641:0|t[卷刃的剑] |cRXP_BUY_|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >>打开角色面板，在手套上铭刻|T132304:0|t|T132304:0|t[|cRXP_FRIENDLY_毁伤|r]。这是目前打怪最强的符文。
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一根|r |T133053:0|t[木槌棒]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    >>|cRXP_WARN_训练|r |T135949:0|t|T133815:0|t[纯净术] |cRXP_WARN_以尽快获得|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 神盾] |cRXP_WARN_尽快|r
    .train 1152 >>训练 |T135949:0|t|T135949:0|t[纯净术]
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .accept 112 >>接受任务 收集海藻
    .target 威廉·匹斯特
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .target 玛克西米利安·克洛文
    .trainer >>训练你的职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：火焰箭(等级 2)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target 塞琳娜·达克哈特
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target 女牧师洁塞塔
    .turnin 5624 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target 米歇尔·贝利
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>训练 |T135966:0|t[急救]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor >>|cRXP_WARN_如有需要，购买一个|r |T133634:0|t[棕色小包] |cRXP_WARN_|r
	.target 布洛葛·哈姆菲斯特
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_买够20个|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里。如果钱够|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_如果钱够，就从他那里|r|cRXP_BUY_购买10块|r |T133995:0|t[达拉然奶酪] |cRXP_BUY_与10杯|r |T132815:0|t[冰镇牛奶] << Paladin
    .target 旅店老板法雷
    .money < 0.1
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>击杀|cRXP_ENEMY_鱼人进军|r和|cRXP_ENEMY_鱼人激流行者|r。从它们身上拾取|T134169:0|t|T134169:0|t|cRXP_LOOT_[被砍下的鱼人的头]|r
    >>|cRXP_WARN_这是解锁|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_所需的三个物品之一，在你10级到达暴风城时使用|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob 鱼人士兵
	.mob 鱼人
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #completewith JasperlodeExplore
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t|T134269:0|t搜索|cRXP_ENEMY_鱼人蒸汽行者|r和|cRXP_ENEMY_鱼人进军|r。从它们身上拾取|T134269:0|t|T134269:0|t|cRXP_LOOT_[右下角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t|T133644:0|t[潜行] |cRXP_WARN_状态才能使用|r |T133644:0|t|T133644:0|t[搜索]
    >>|cRXP_ENEMY_注意：|r |cRXP_WARN_所有|r |T134327:0|t|T134536:0|t[|cRXP_LOOT_地图碎片|r] |cRXP_WARN_步骤都是为了解锁|r |T134536:0|t|T134536:0|t[速射] |cRXP_WARN_符文。|r |cRXP_WARN_该符文在升级过程中有用但非必需，解锁毒药后（约22级）便会过时。如果你不急于获得该符文，想节省短期时间，可以跳过所有这些步骤。|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob 鱼人士兵
    .mob 鱼人
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>击杀 |cRXP_ENEMY_鱼人|r 和 |cRXP_ENEMY_鱼人士兵|r. 拾取 |cRXP_LOOT_水晶藻叶|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob 鱼人
	.mob 鱼人士兵
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>击杀 狗头人隧道工 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 狗头人隧道工 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob 狗头人矿工
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|cRXP_WARN_把|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |T135232:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T135232:0|t|cRXP_LOOT_[亚麻布]|r |T132889:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135255:0|t[劣质平衡石] << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step << Priest
    #sticky
    #label SharedPainTwo
    #completewith JasperlodeExplore
    .goto Elwynn Forest,40.6,81.8
    >>击杀|cRXP_ENEMY_狗头人矿工|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob 狗头人矿工
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>进入玉石矿洞
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>击杀|cRXP_ENEMY_狗头人地卜师|r。从它们身上拾取|T134939:0|t|T134939:0|t|cRXP_LOOT_[法术笔记：IULAOYIHTEN]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>沿中路前进，探察玉石矿洞
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>击杀|cRXP_ENEMY_狗头人矿工|r，从它们身上拾取|T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob 狗头人矿工
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_落难救世主的回忆|r] |cRXP_WARN_来学习|r |T136160:0|t[分担痛苦]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>击杀 狗头人隧道工 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 狗头人隧道工 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob 狗头人矿工
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|cRXP_WARN_把|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |T135232:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T136241:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T135232:0|t|cRXP_LOOT_[亚麻布]|r |T132889:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_在你的武器上|r|cRXP_WARN_使用|r |T135255:0|t[劣质平衡石] << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_施放|r |T135949:0|t|T135949:0|t[纯净术] |cRXP_WARN_在|cRXP_FRIENDLY_受伤的冒险者|r身上|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_对|cRXP_FRIENDLY_受伤的冒险者|r施放|r|T135949:0|t|T134419:0|t[纯净术] |cRXP_WARN_后与他对话，即可获得|r|T134419:0|t|T134419:0|t[神盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T133815:0|t神盾符文 |cRXP_WARN_学习|r |T133815:0|t|T133815:0|t[铭刻胸甲 - 神盾]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_使用|r |T134939:0|t|T135820:0|t|cRXP_LOOT_[法术笔记：IULAOYIHTEN]|r |cRXP_WARN_学习|r |T135820:0|t|T135820:0|t[活体烈焰]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >>离开玉石矿洞
    .subzoneskip 54,1
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>击杀|cRXP_ENEMY_迪菲亚流浪巫师|r，并从他们身上拾取|T135975:0|t|T135975:0|t|cRXP_LOOT_[遭渎城堡的预言]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t|T237570:0|t|cRXP_LOOT_[遭渎城堡的预言]|r |cRXP_WARN_学习|r |T237570:0|t|T237570:0|t[裂魂魔]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel，以获得2层|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|t|T134327:0|t[搜索] |cRXP_ENEMY_河爪斥候|r和|cRXP_ENEMY_河爪幼崽|r。拾取它们身上的|T134327:0|t|T134327:0|t[|cRXP_LOOT_左下角地图碎片]|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_ENEMY_注意：|r |cRXP_WARN_所有|r |T134327:0|t|T134536:0|t[|cRXP_LOOT_地图碎片|r] |cRXP_WARN_步骤都是为了解锁|r |T134536:0|t|T134536:0|t[速射] |cRXP_WARN_符文。|r |cRXP_WARN_该符文在升级过程中有用但非必需，解锁毒药后（约22级）便会过时。如果你不急于获得该符文，想节省短期时间，可以跳过所有这些步骤。|r
    >>|cRXP_WARN_如果你决定跳过获取符文，可以暂时不去赤脊山，直接使用炉石或死亡传送返回闪金镇。|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob 河爪豺狼人前锋
    .mob 矮小的河爪豺狼人
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    .vendor >>出售垃圾物品并修理装备
    .target 拉里克·费恩
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t|T134327:0|t|cRXP_ENEMY_迪菲亚|r使用搜索。从他们身上拾取|T134327:0|t|T134327:0|t|cRXP_LOOT_左上地图碎片|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_注意：此物品也可从艾尔文森林的其他|cRXP_ENEMY_迪菲亚|r成员处获得|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob 迪菲亚强盗
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
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
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_在箭头位置使用|r |T134269:0|t|T134269:0|t[|cRXP_LOOT_艾尔文藏宝图|r] |cRXP_WARN_。这会触发一个|cRXP_PICK_埋藏的宝藏|r出现|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>打开|cRXP_PICK_埋藏的宝藏|r，拾取其中的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_速射符文|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t|T134536:0|t[|cRXP_FRIENDLY_速射符文|r] |cRXP_WARN_来训练|r |T134536:0|t|T134536:0|t[速射]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_小心：沿着主路走，避开沿途的近距离怪物|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >>使用炉石返回闪金镇
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 112 >>交任务 收集海藻
    .timer 9,收集海藻 剧情
    .accept 114 >>接受任务 梅贝尔的隐形水
    .target 威廉·匹斯特
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 米歇尔·贝利
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 科瑞恩·塞尔留斯
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 76 >>交任务 玉石矿洞
    .accept 239 >>接受任务 西泉要塞
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .target 治安官杜汉
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 科瑞娜·斯蒂利
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .accept 1097 >>接受任务 艾尔默的任务
    .target 铁匠阿古斯
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >>刷怪到10级
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    >>|cRXP_WARN_不要学技能，因为你需要为后续存钱|r
    .accept 1638 >>接受任务 战士的训练
    .target 里瑞亚·杜拉克
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .accept 2998 >>接受任务圣洁之书
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 和 |cRXP_FRIENDLY_雷门·玛考特|r 对话
    .trainer >>训练你的职业技能
    .goto Elwynn Forest,44.392,66.240
    .target 玛克西米利安·克洛文
    .accept 1685 >>接受任务 加科因的召唤
    .goto Elwynn Forest,44.485,66.268
    .target 雷门·玛考特
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>上楼
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
    .accept 5635 >>接受任务 绝望祷言
    .trainer >>训练你的职业技能
    .target 女牧师洁塞塔
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
    .trainer >>训练你的职业技能
    .target 扎尔迪玛·维夫希尔特
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 科瑞恩·塞尔留斯
--XX skip quest, not worth going inside for
step
    #completewith PrincessFinish
    #optional
    .abandon 59 >>放弃任务 布甲和皮甲
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>奔跑时留意|cRXP_FRIENDLY_流浪剑客|r。如果找到他，可以发起决斗，获胜后将获得|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]符文
    >>|cRXP_WARN_他有多个刷新点，且同一时间只会出现在其中一个位置。如果他不在这里，请跳过此步骤。|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>前往马科伦农场
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .turnin 114 >>交任务 梅贝尔的隐形水
    .target 梅贝尔·马科伦
step
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 87 >>交任务 金牙
    .turnin 88 >>交任务 公主必须死！ << Rogue
    .target 波尼斯·斯通菲尔德姑妈
step
    #optional
    #completewith next
    .abandon 88 >>放弃任务 公主必须死！ 因为你还没有完成任务
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>检查标记位置是否有|cRXP_FRIENDLY_流浪剑客|r。如果他在那里，向他发起决斗，获胜后将获得|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]符文
    >>|cRXP_WARN_他有多个刷新点，且同一时间只会出现在其中一个位置。如果他不在这里，请跳过此步骤。|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >>前往西泉要塞


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .target 瑞尼尔副队长
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。从它们身上拾取|T132889:0|t|T132889:0|t[亚麻布]。你很快需要10个用于任务
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .isOnQuest 11
    .isQuestAvailable 1644

----Start of Warrior Gnoll Head section----


step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .target 瑞尼尔副队长
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>检查标记位置是否有|cRXP_FRIENDLY_流浪剑客|r。如果他在那里，向他发起决斗，获胜后将获得|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]符文
    >>|cRXP_WARN_他有多个刷新点，且同一时间只会出现在其中一个位置。如果他不在这里，请跳过此步骤。|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>检查标记位置是否有|cRXP_FRIENDLY_流浪剑客|r。如果他在那里，向他发起决斗，获胜后将获得|T132334:0|t|T132334:0|t[|cRXP_FRIENDLY_血之狂暴|r]符文
    >>|cRXP_WARN_他有多个刷新点，且同一时间只会出现在其中一个位置。如果他不在这里，请跳过此步骤。|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #xprate >1.49
    #season 2
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
    >>击杀|cRXP_ENEMY_河爪幼崽|r和|cRXP_ENEMY_河爪斥候|r。从它们身上拾取|T134163:0|t|T134163:0|t[|cRXP_LOOT_被砍下的豺狼人的头|r]
    >>|cRXP_WARN_这是解锁|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r] |cRXP_WARN_所需的三个物品之一，在你10级到达暴风城时使用|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .goto Elwynn Forest,24.234,74.450
    .target 瑞尼尔副队长
    >>点击 |cRXP_PICK_通缉布告|r << Warlock
    .accept 176 >>接受任务 通缉：霍格 << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>跑路时击杀 |cRXP_ENEMY_河爪豺狼人幼崽|r 和 |cRXP_ENEMY_河爪斥候|r，拾取它们掉落的 |T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_采金日程表|r] |cRXP_WARN_掉率非常低。如果没有获得，可忽略此步骤|r
    >>|cRXP_ENEMY_格拉夫·疾齿|r |cRXP_WARN_为稀有刷新怪，但掉落率为 100%|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
    .unitscan 格拉夫·疾齿
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
    >>击杀 |cRXP_ENEMY_霍格|r。拾取他的 |cRXP_LOOT_人爪|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_可能会在多个位置刷新|r
    >>|cRXP_WARN_持续对 |r霍格|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r，并使用你的常规 DoT 技能将其击杀|r
    >>|cRXP_WARN_在霍格即将死亡时，使用|r |T136163:0|t|T134085:0|t[吸取灵魂] |cRXP_WARN_。如果他在该效果影响下死亡，你将获得一个|r |T136169:0|t|T134085:0|t[被污染的灵魂碎片] |cRXP_WARN_，用于解锁|r |T136169:0|t|T136169:0|t[灵魂虹吸]符文
    >>|cRXP_WARN_如果未能获得灵魂碎片或霍格未刷新，请跳过此步骤。该符文强度一般。|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan 霍格
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>放弃任务 收货人
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往西部荒野
step
    #xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .turnin 184 >>交任务 法布隆的地契
    .goto Westfall,59.95,19.35
    .target 农夫法布隆
    .accept 36 >>接受任务 杂味炖肉
    .goto Westfall,59.92,19.42
	.target 弗娜·法布隆
    .isOnQuest 184
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .accept 36 >>接受任务 杂味炖肉
    .goto Westfall,59.92,19.42
	.target 弗娜·法布隆
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
step << !Paladin !Warlock
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔玛·萨丁|r 对话，NPC在里面
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .turnin 36 >>交任务《 前往熔光镇》 杂味炖肉
    .target 萨尔玛·萨丁
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .accept 9 >>接受任务 清理荒野
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >>刷怪达到5410+/6500经验
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>刷怪到5360+/8800经验
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >>游过河到西部荒野
step
    #softcore
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .target 格里安·斯托曼
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .accept 6181 >>接受任务 快捷的消息 << Human
    .target 军需官刘易斯
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    >>|cRXP_BUY_从她那里购买最多20个|r |T133918:0|t|T133918:0|t[长嘴泥鳅] |cRXP_BUY_。这是非常便宜的5级食物|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target 旅店老板希瑟尔
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .accept 153 >>接受任务 红色皮质面罩
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .turnin 6181 >>交任务 快捷的消息
    .accept 6281 >>接受任务 前往暴风城
    .target 索尔
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t|T134419:0|t搜索|cRXP_ENEMY_迪菲亚斥候|r获取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_军刀猛刺符文|r]
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_由于你等级不足，|r |T133644:0|t|T133644:0|t[搜索] |cRXP_WARN_极有可能失败。若失败，跳过此步骤，飞往暴风城。稍后在洛克莫丹即可完成|r
    >>|cRXP_WARN_不要引到|cRXP_ENEMY_迪菲亚斯考特|r，否则它会|r |T132331:0|t|T132320:0|t[消失] |cRXP_WARN_并消失3-5分钟。务必提前进入|r |T132320:0|t|T132320:0|t[潜行] |cRXP_WARN_状态！|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚斯斥候|r会在山丘上刷新|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_军刀猛刺符文|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯蒂芬妮·特纳|r 对话
    .turnin 1643 >>交任务圣洁之书
    .accept 1644 >>接受任务圣洁之书
    .turnin 1644 >>交任务圣洁之书
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_选择|r |T132383:0|t[爆破火箭] 作为奖励。|cRXP_WARN_它能造成不错的伤害，还可以用于"仇恨分离"，非常实用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考。这是一个简短却非常有价值的教学视频|r
    .target 摩根·匹斯特
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习单手剑和法杖 << Warlock
    .trainer >>学习法杖 << Priest
    .trainer >>学习双手剑 << Warrior/Paladin
    .target 吴平
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习法杖
    .target 吴平
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 2998 >>交任务圣洁之书
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_圣洁之书|r] 来激发任务|r
    .accept 1642 >>接受任务圣洁之书
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1642 >>交任务圣洁之书
    .accept 1643 >>接受任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 19834 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 647 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯蒂芬妮·特纳|r 对话
    .turnin 1643 >>交任务圣洁之书
    .accept 1644 >>接受任务圣洁之书
    .turnin 1644 >>交任务圣洁之书
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 705 >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 689 >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1685 >>交任务 加科因的召唤
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target 黑暗缚灵者加科因
step << Warlock
    #softcore
    .deathskip >>使用 |T136126:0|t[生命分流] 并站在你旁边的篝火上自杀，然后在 |cRXP_FRIENDLY_灵魂医者|r 处复活
    .target 灵魂医者
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>离开暴风城
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>前往金雾村
step << Warlock
    #optional
    #completewith LockGoldshireEnd
    >>在灵魂医者附近寻找任何|cRXP_ENEMY_小动物|r。对它施放|T136163:0|t|T134095:0|t[吸取灵魂]，以获得一个|T134095:0|t|T134095:0|t[纯净的灵魂碎片]
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_选择|r |T135145:0|t[平衡长棍]
    .turnin 176 >>交任务 通缉：霍格
    .turnin 123 >>交任务 收货人
    .target 治安官杜汉
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_选择|r |T135145:0|t[平衡长棍]
    .turnin 176 >>交任务 通缉：霍格
    .target 治安官杜汉
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_前往闪金镇旅店的地下室|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|T134419:0|t与|cRXP_FRIENDLY_达米安·凯恩|r交谈。完成对话，用灵魂碎片换取|T134419:0|t|T134419:0|t[灵魂虹吸符文]
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >>使用 |T134419:0|t[灵魂虹吸符文] 来学习 |T136169:0|t[灵魂虹吸]
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_装备|r |T135145:0|t[平衡长棍]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_沿途刷怪升级。尝试提升你的|r |T135145:0|t|T135145:0|t[平衡长棍] |cRXP_WARN_技能等级|r
    .subzone 62 >>前往布莱克威尔南瓜地
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] |cRXP_WARN_的掉率非常低。如果没有获得，可忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务 法布隆的地契
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
    >>|cRXP_WARN_沿途刷怪。通过施放|r |T134075:0|t[吸取灵魂]，确保你至少拥有 2 个 |T136163:0|t[灵魂碎片]|cRXP_WARN_|r
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_途中注意躲避怪物|r
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_沿主路行进，避开沿途的近距离怪物|r
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step << Warlock
    .hs >>将炉石设为暴风城，如果技能在冷却中则跳过此步骤，直接使用飞行路线
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
    .zoneskip Stormwind City
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务誓缚
    .target 黑暗缚灵者加科因
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈环] |cRXP_WARN_召唤 |r虚空行者|cRXP_ENEMY_|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob 虚空行者
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target 黑暗缚灵者加科因
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务誓缚


----Warlock Elwynn Voidwalker Section End----


step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>与|cRXP_FRIENDLY_维多利亚·伍兹|r对话，上交|T134168:0|t|T134455:0|t[|cRXP_LOOT_被砍下的狗头人的头|r]，获得|T134455:0|t|T134455:0|t[怪物猎手的第一个符文碎片]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>与|cRXP_FRIENDLY_维科里亚·伍兹|r交谈，上交|T134169:0|t|T134455:0|t[|cRXP_LOOT_被砍下的鱼人的头|r]，获得|T134455:0|t|T134455:0|t[怪物猎手的第二个符文碎片]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>与|cRXP_FRIENDLY_维多利亚·伍兹|r交谈，上交|T134163:0|t|T134455:0|t[|cRXP_LOOT_被砍下的豺狼人的头|r]，获得|T134455:0|t|T134455:0|t[怪物猎手的第三个符文碎片]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_使用任意|r |T134455:0|t|T134419:0|t[怪物猎人符文碎片] |cRXP_WARN_来制作|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_毁灭打击符文|r]
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
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r 对话
    .turnin 6281 >>交任务 前往暴风城
    .accept 6261 >>接受任务 杜加尔·朗德瑞克
    .target 奥斯瑞克·斯图恩
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保训练后身上至少还剩24银。你需要这些钱在铁炉堡买一把枪，才能使用你的符文。|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 夜行者奥斯伯
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保训练后身上至少还剩24银。你需要这些钱在铁炉堡买一把枪，才能使用你的符文。|r
    .train 1766 >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <12,1
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
    .target 哈里·伯加德
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
    .target 巴特莱比
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击 |cRXP_ENEMY_巴特莱比|r。他会在1% 生命值时投降
    .complete 1640,1 --Beat Bartleby
    .mob 巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target 巴特莱比
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target 哈里·伯加德
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >>进入暴风城大教堂
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5635 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5634 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>进入暴风城矮人区的屠夫巷
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_上楼进入房屋|r
    >>打开|cRXP_PICK_脏兮兮的宝箱|r，拾取其中的|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_精准符文|r]
    >>|cRXP_WARN_这样做会刷新两个等级10的|cRXP_ENEMY_凶残盗贼|r，它们会攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t|T135610:0|t[|cRXP_FRIENDLY_精准符文|r] |cRXP_WARN_训练|r |T135610:0|t|T135610:0|t[正中眉心]
    .use 204174
    .itemcount 204174,1
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话 << Alliance
    >>从他那里购买|T133745:0|t|T135961:0|t|cRXP_LOOT_[论述：殉道]|r，使用它学习|T135961:0|t|T135961:0|t[殉道圣印] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话 << Alliance
    >>如果你有多余的钱，可以从米尔顿那里购买另外两本《圣约》以备后用 << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 1097 >>交任务 艾尔默的任务
    .accept 353 >>接受任务 雷矛的包裹
    .target 格瑞曼德·艾尔默
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯塔·深炉|r 对话
    .collect 2901,1,432,1 >>|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]|cRXP_BUY_从她那里|r
    >>|cRXP_WARN_你之后会学习|r |T134708:0|t|T134708:0|t[采矿] |cRXP_WARN_的|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入矿道地铁
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_乘坐矿道地铁前往铁炉堡方向|r
    >>|cRXP_WARN_在等待前往铁炉堡的地铁时，如有需要提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 技能|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    >>|cRXP_WARN_在等待前往铁炉堡的地铁时，如有需要可施放|r |T136221:0|t[召唤虚空行者]|cRXP_WARN_ 并制作 |r|T135230:0|t[治疗石]|cRXP_WARN_|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，你可在地深矿道铁炉堡站台的中央平台上找到他
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target 蒙提
step
    #xprate <1.59
    >>|cRXP_WARN_对 |r矿道老鼠|cRXP_WARN_ 使用 |cRXP_ENEMY_|T133942:0|t[捕鼠者长笛]|r在矿道地铁内|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob 矿道老鼠
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，在地深矿道内
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .target 蒙提
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_乘坐矿道地铁前往铁炉堡方向|r
    >>|cRXP_WARN_在等待前往铁炉堡的地铁时，如有需要提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 技能|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    >>|cRXP_WARN_在等待前往铁炉堡的地铁时，如有需要可施放|r |T136221:0|t[召唤虚空行者]|cRXP_WARN_ 并制作 |r|T135230:0|t[治疗石]|cRXP_WARN_|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，你可在地深矿道铁炉堡站台的中央平台上找到他
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target 蒙提
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_对 |r矿道老鼠|cRXP_WARN_ 使用 |cRXP_ENEMY_|T133942:0|t[捕鼠者长笛]|r在矿道地铁内|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob 矿道老鼠
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，在地深矿道内
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .target 蒙提
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_如果需要，利用等地铁的时间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r << Rogue/Warrior/Paladin
    .zone Ironforge >>乘坐矿道地铁前往铁炉堡
step
    .zone Ironforge >>进入铁炉堡
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>前往 |cRXP_FRIENDLY_比尔班·飞钳|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    >>|cRXP_WARN_确保你保留20银70铜以备后用|r
    .train 2687 >>训练你的职业技能
    .target 比尔班·飞钳
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    >>|cRXP_WARN_确保你保留20银70铜以备后用|r
    .train 5242 >>训练你的职业技能
    .target 比尔班·飞钳
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>进入木材线武器店建筑
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 2567 >>训练 投掷武器 << Warrior
    .goto Ironforge,62.237,89.628
    .target 比克斯
    .train 199 >>训练双手锤 << Warrior
    .train 266 >>学习枪械 << Rogue
    .goto Ironforge,61.177,89.508
    .target 布里维夫·石拳
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target 布雷文·寒钢
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼下与 |cRXP_FRIENDLY_萨古斯·雷拳|r 对话
    >>|cRXP_BUY_购买|r |T135613:0|t[猎人火枪] 和 |T132384:0|t[重弹丸] |cRXP_BUY_从他那里|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target 萨古斯·雷拳
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼下与 |cRXP_FRIENDLY_萨古斯·雷拳|r 对话
    >>|cRXP_BUY_购买|r |T135611:0|t[精制短枪] 和 |T132384:0|t[重弹丸] |cRXP_BUY_从他那里|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target 萨古斯·雷拳
    .itemcount 2511,<1
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target 布雷文·寒钢
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >>离开木材线武器店建筑
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>朝旅店内的|cRXP_FRIENDLY_布鲁克·麦须|r走去
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>与|cRXP_FRIENDLY_布鲁克·麦须|r 对话
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>与|cRXP_FRIENDLY_布鲁亚特|r对话以开始战斗
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得预读|r |T135924:0|t|T135924:0|t[十字军圣印] |cRXP_WARN_对他|r << Paladin
    >>|cRXP_WARN_不要意外对他施放|r |T135906:0|t|T135906:0|t[力量祝福] |cRXP_WARN_ |r << Paladin
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t|T135920:0|t[圣光术] |cRXP_WARN_如果必要的话|r << Paladin
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r << Warrior
    >>|cRXP_WARN_尝试使用|r |T132316:0|t|T132324:0|t[|cRXP_FRIENDLY_断筋|r] |cRXP_WARN_和|r |T132324:0|t|T132324:0|t[|cRXP_FRIENDLY_投掷|r]来风筝他 << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心他施放|r |T132939:0|t|T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得预读|r |T135924:0|t|T135924:0|t[十字军圣印] |cRXP_WARN_对他|r << Paladin
    >>|cRXP_WARN_不要意外对他施放|r |T135906:0|t|T135906:0|t[力量祝福] |cRXP_WARN_ |r << Paladin
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t|T135920:0|t[圣光术] |cRXP_WARN_如果必要的话|r << Paladin
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，如果有/需要的话使用|r |T133688:0|t|T133688:0|t[绷带]|cRXP_WARN_ |r << Warrior
    >>|cRXP_WARN_击败|cRXP_ENEMY_布鲁阿尔特|r后：|r
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t|T134419:0|t[责难符文] << Paladin
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t|T134419:0|t[责难符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁亚特|r战斗|r << Paladin
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t|T134419:0|t[狂乱攻击符文] << Warrior
    >>|cRXP_WARN_如果他没有给你|r |T134419:0|t|T134419:0|t狂乱攻击符文|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁阿尔特|r战斗|r << Warrior
    >>|cRXP_WARN_注意：此任务可能难以独自完成。请寻求帮助，否则后续指南中会要求你重新完成|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t责难符文 |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻护腿 - 责难]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_铭刻你的|r |T134596:0|t|T134596:0|t|cRXP_LOOT_[裤子]|r |cRXP_WARN_使用|r |T134596:0|t|T134596:0|t[铭刻裤子 - 责难]
    >>|cRXP_WARN_铭记将|r |T134919:0|t|T134919:0|t[责难] |cRXP_WARN_放到你的动作条上|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r |T134419:0|t|T134596:0|t[狂乱攻击符文] |cRXP_WARN_学习|r |T134596:0|t|T134596:0|t[铭刻护腿 - 狂乱攻击]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_铭刻你的|r |T134596:0|t|T134596:0|t|cRXP_LOOT_[裤子]|r |cRXP_WARN_使用|r |T134596:0|t|T134596:0|t[铭刻裤子 - 狂乱攻击]
    .train 425447,3
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,26.8,8.6,12 >>前去找 |cRXP_FRIENDLY_丁克|r << Mage
    .goto Ironforge,23.131,6.143,12 >>前往 |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_丁克|r 对话
    .train 122 >>训练你的职业技能
    .target 丁克
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_丁克|r 对话
    .train 145 >>训练你的职业技能
    .target 丁克
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_丁克|r 对话
    .train 1460 >>训练你的职业技能
    .target 丁克
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话，NPC在里面
    .train 633 >>训练你的职业技能
    .target 布兰度尔·铁锤
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 19834 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 647 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_退出铁炉堡并开始向东前往瓦加什|r
step
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
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_跳到|cRXP_PICK_邮箱|r顶端，然后通过登出再登入执行一次登出跳过|r
    .isQuestAvailable 314
    ]])
