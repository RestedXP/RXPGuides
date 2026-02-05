if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance
#name 1-11级 艾尔文森林
#subgroup RestedXP 联盟 1-20 级
#defaultfor Human
#next 12-14级 洛克莫丹 << Warlock
#next 11-12级 洛克莫丹 << !Warlock

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
    +你选择的是人类专用的指南，请确保你的选择与你角色出生地一致
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹恩·温斯洛|r 对话
    .vendor >>|cRXP_WARN_出售你的胸甲、衬衣、裤子和靴子，还有你背包里的食物与水。你一共需要10枚铜币|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .accept 1598 >>接受任务 失窃的典籍
    .train 348 >>学习 |T135817:0|t[献祭]
    .target Drusilla La Salle
step << Warlock
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_闯入迪菲亚营地里的帐篷|r
    >>打开 |cRXP_PICK_被偷走的书|r。并从中拾取 |cRXP_LOOT_虚空灵能|r
    >>|cRXP_WARN_你可以在帐篷内安全地拾取 |cRXP_LOOT_虚空灵能|r！请观看提供的小视频，了解具体操作方法|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>https://www.youtube.com/watch?v=_-KEke9Yeik >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 1598 >>交任务 失窃的典籍
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith ATW
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
    .usespell 688
step << Warlock
    #optional
    #completewith ATW
    .cast 687 >>|cRXP_WARN_施放|r |T136185:0|t[恶魔皮肤]
    .usespell 687
    .aura 687
step
    #completewith DeleteHS
	.destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你暂时还不需要它
step
    #laebl ATW
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 783 >>接受任务 身边的危机
    .target Deputy Willem
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>一直击杀 |cRXP_ENEMY_幼狼|r 直到你拥有价值10铜币以上的垃圾物品
    >>|cRXP_WARN_You will train|r |T132333:0|t[战斗怒吼] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>出售垃圾物品
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .train 6673 >>Train |T132333:0|t[战斗怒吼]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 783 >>交任务 身边的危机
    .accept 7 >>接受任务 狗头人的蜡烛
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 5261 >>接受任务 伊根·派特斯金纳
    .target Deputy Willem
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 5261 >>交任务 伊根·派特斯金纳
    .accept 33 >>Accept 林中的群狼
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_当你拥有价值50铜币的垃圾物品:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
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
	.mob Young Wolf
	.mob Timber Wolf
step
    #label DeleteHS
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
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 33,2 >>Turn in 林中的群狼 << Warrior/Paladin/Rogue
    .turnin 33,1 >>Turn in 林中的群狼 << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_再买 10瓶|r |T132794:0|t[清凉的泉水]
    >>|cRXP_WARN_请至少保留 10 铜币，后续要用|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Godric Rothgar
step << Rogue
    .goto Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚努斯·哈默纳克|r 对话
    .vendor 78 >>|cRXP_BUY_购买一把|r |T135650:0|t[简易匕首] |cRXP_BUY_从他那里，如果钱够|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +|cRXP_WARN_装备买来的|r |T135650:0|t[简易匕首]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 7 >>交任务 狗头人的蜡烛
    .accept 15 >>Accept 回音山调查行动
    .accept 3100 >>接受任务 简要的信件 << Warrior
    .accept 3101 >>接受任务 圣洁信件 << Paladin
    .accept 3102 >>接受任务 密文信件 << Rogue
    .accept 3103 >>接受任务 神圣信件 << Priest
    .accept 3104 >>接受任务 雕文信件 << Mage
    .accept 3105 >>接受任务 被污染的信件 << Warlock
    .target Marshal McBride
step
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
    .mob Kobold Worker
step
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>刷怪达到 1110+／1400 经验
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>出售垃圾物品
    .target Godric Rothgar
step
    #requires xp3
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 15 >>交任务 调查营地
    .accept 21 >>Accept 回音山清剿行动
    .target Marshal McBride
step << Mage
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
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尔登·布雷门|r 在楼上对话
    .turnin 3104 >>交任务 雕文信件
    .trainer >>训练你的职业技能
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>进屋并下楼去找 |cRXP_FRIENDLY_女牧师安妮塔|r
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 3103 >>交任务 神圣信件
    .trainer >>训练你的职业技能
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>进屋并下楼去找 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Warrior
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .turnin 3100 >>交任务 简要的信件
    .trainer >>训练你的职业技能
    .target Llane Beshere
step << Paladin
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .turnin 3101 >>交任务 圣洁信件
    .trainer >>训练你的职业技能
    .target Brother Sammuel
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 18 >>接受任务 盗贼兄弟会
    .target Deputy Willem
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 3105 >>交任务 被污染的信件
    .train 172 >>Train |T136118:0|t[腐蚀术]
    .target Drusilla La Salle
step
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
    .mob Defias Thug
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 18,1 >>交任务 盗贼兄弟会 << Rogue/Warlock
    .turnin 18,2 >>交任务 盗贼兄弟会 << Priest
    .turnin 18,3 >>交任务 盗贼兄弟会 << Warrior
    .turnin 18,4 >>交任务 盗贼兄弟会 << Paladin
    .turnin 18,5 >>交任务 盗贼兄弟会 << Mage
    .turnin 18 >>交任务 盗贼兄弟会
    .accept 3903 >>接受任务 米莉·奥斯沃斯
    .accept 6 >>接受任务 加瑞克·帕德弗特的赏金
    .target Deputy Willem
step << Paladin
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_装备|r |T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #completewith RestandR
    .equip 16,2224 >>装备 |T135641:0|t[民兵匕首]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >>装备 |T135274:0|t[民兵短剑]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>出售垃圾物品
    .target Godric Rothgar
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
    .mob Kobold Laborer
step
    .xp 5 >>刷怪到5级
step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    >>|cRXP_WARN_跳过后续任务|r << !Priest !Mage
    .turnin 3903 >>交任务 米莉·奥斯沃斯
    .accept 3904 >>接受任务 米莉的葡萄 << Priest/Mage
    .target Milly Osworth
step << Rogue
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .turnin 3102 >>交任务 密文信件
    .train 1784 >>学习 |T132320:0|t[潜行]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>拾取地上的 |cRXP_PICK_米莉的葡萄|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>击杀 |cRXP_ENEMY_加瑞克·帕德弗特|r，拾取他的 |cRXP_LOOT_头颅|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step << !Priest !Mage
    #sticky
    .abandon 3904 >>放弃任务 米莉的葡萄
step
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >>刷怪达到 1735+/2800 经验 << Paladin/Warrior/Rogue/Warlock
    .xp 5+1625 >>刷怪达到 1195+/2800 经验 << Mage
    .xp 5+1085 >>刷怪达到 1085+/2800 经验 << Priest
    .mob Defias Thug
step << Priest/Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .turnin 3904 >>交任务 米莉的葡萄
    .accept 3905 >>接受任务 葡萄出货单
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 6,2 >>交任务 加瑞克·帕德弗特的赏金 << Warrior/Rogue/Paladin
    .turnin 6,1 >>交任务 加瑞克·帕德弗特的赏金 << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .turnin 21,1 >>Turn in 回音山清剿行动 << Rogue
    .turnin 21,2 >>Turn in 回音山清剿行动 << Warrior/Paladin
    .turnin 21,3 >>Turn in 回音山清剿行动 << !Warrior !Paladin !Rogue
    .accept 54 >>接受任务 去闪金镇报到
    .target Marshal McBride
step << Priest/Mage
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>上楼
step << Priest/Mage
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_尼尔斯修士|r 对话
    .turnin 3905,1 >>交任务 葡萄出货单
    .target Brother Neals
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r 对话
    .accept 2158 >>接受任务 休息和放松
    .target Falkhaan Isenstrider
step
    #completewith Goldshire
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[劣质平衡石] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135321:0|t[步兵剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_WARN_购买一根|r |T133053:0|t[木槌棒]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德温·克里顿|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .accept 60 >>接受任务 狗头人的蜡烛
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .turnin 2158,1 >>交任务 休息和放松 << Rogue/Warrior
    .turnin 2158,2 >>交任务 休息和放松 << !Rogue !Warrior
    .home >>将你的炉石设置为闪金镇
    .target Innkeeper Farley
    --xx subzone not found. check ptr
step
    #optional
    .xp 6 >>刷怪到6级
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor 151 >>|cRXP_BUY_购买一把|r |T135641:0|t[平衡飞刀]|cRXP_BUY_从他那里，如果钱够|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>下楼
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .trainer >>训练你的职业技能
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor 6374 >>|cRXP_BUY_如果钱够，从她那里购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店的楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >>交任务 圣光的恩赐
    .accept 5624 >>接受任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor 295 >>|cRXP_BUY_Buy|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_from him until you're down to 1 Silver|r << Warrior
    .vendor 295 >>|cRXP_BUY_Buy up to 20|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_from him|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .accept 47 >>接受任务 金砂交易
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在|r|cRXP_FRIENDLY_卫兵罗伯兹|r 身上
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
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
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 和 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>接受任务 公主必须死！
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
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
    +|cRXP_WARN_把|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T132889:0|t|cRXP_LOOT_[亚麻布]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
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
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .accept 106 >>接受任务 年轻的恋人
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·马科伦|r 对话
    .vendor >>|cRXP_BUY_能买多少|r |T132815:0|t[冰镇牛奶] |cRXP_WARN_就买多少|r << Priest/Warlock/Mage
    .vendor >>出售垃圾物品 << !Priest !Warlock !Mage
    .target Joshua Maclure
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
    +|T136241:0|t[锻造]|cRXP_WARN_|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_制作为|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T132889:0|t|cRXP_LOOT_[亚麻布]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
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
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r 对话
    .turnin 106 >>交任务 年轻的恋人
    .accept 111 >>接受任务 托米的祖母
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 86 >>交任务 比利的馅饼
    .accept 84 >>接受任务 比利的馅饼
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莱德·斯通菲尔德|r 对话，NPC在里面
    .turnin 111 >>交任务 托米的祖母
    .accept 107 >>接受任务 给威廉·匹斯特的信
    .target Gramma Stonefield
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
    +|cRXP_WARN_把|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T132889:0|t|cRXP_LOOT_[亚麻布]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
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
step
    #sticky
    #label KoboldEnd
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
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 84 >>交任务 比利的馅饼
    .accept 87 >>接受任务 金牙
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>进入法戈第矿洞中较大的开阔区域之一
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto 1429,41.732,78.024
    >>击杀 |cRXP_ENEMY_金牙|r。拾取他的 |cRXP_LOOT_波尼斯的项链|r
    >>|cRXP_WARN_小心，他通常会拉到旁边的|r |cRXP_ENEMY_狗头人矿工|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_从现在开始尽量保留一瓶|r |T134829:0|t[初级治疗药水] |cRXP_WARN_，因为之后在罗尔夫的尸体任务中会用到|r
    .subzoneskip 87 --Goldshire
step
    .isQuestTurnedIn 5624 << Priest
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>刷怪达到 1800+/4500 经验
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Priest
    .isOnQuest 5624
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1460 >>刷怪达到 1460+/4500 经验 << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 87 >>交任务 金牙
    .target "Auntie" Bernice Stonefield
step
    #completewith Exchange
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target Spirit Healer
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 70 级都很有用|r
    .turnin 47 >>交任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135321:0|t[步兵剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一根|r |T133053:0|t[木槌棒]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #optional
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
    .xp <8,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
    .xp <8,1
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .accept 112 >>接受任务 收集海藻
    .target William Pestle
step
    .xp 8 >>刷怪到8级
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target Priestess Josetta
    .turnin 5624 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>训练 |T135966:0|t[急救]
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .target Maximillian Crowe
    .trainer >>训练你的职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：火焰箭(等级 2)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor >>|cRXP_WARN_如有需要，购买一个|r |T133634:0|t[棕色小包] |cRXP_WARN_|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_Buy up to 20|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_from him if you can afford it|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_如果钱够，就从他那里|r|cRXP_BUY_购买10块|r |T133995:0|t[达拉然奶酪] |cRXP_BUY_与10杯|r |T132815:0|t[冰镇牛奶] << Paladin
    .target Innkeeper Farley
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
    .train 853,1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
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
    >>击杀 |cRXP_ENEMY_鱼人|r 和 |cRXP_ENEMY_鱼人士兵|r. 拾取 |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|cRXP_WARN_把|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T132889:0|t|cRXP_LOOT_[亚麻布]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
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
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>进入玉石矿洞
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>沿中路前进，探察玉石矿洞
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r << Warrior/Rogue
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。打卡|cRXP_PICK_破损的箱子|r。拾取里面的 |T135232:0|t|cRXP_LOOT_[劣质的石头]|r 和 |T132889:0|t|cRXP_LOOT_[亚麻布]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|cRXP_WARN_把|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    +|cRXP_WARN_将|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_与|r |T132889:0|t|cRXP_LOOT_[亚麻布]|r |T136241:0|t[锻造]|cRXP_WARN_成|r |T135255:0|t[劣质平衡石] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use the|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_on your current weapon|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use the|r |T135255:0|t[劣质平衡石] |cRXP_WARN_on your current weapon|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >>退出玉石矿洞
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_将一只 |cRXP_ENEMY_森林熊幼崽|r 风筝拉至|r |cRXP_FRIENDLY_卫兵托马斯|r
    >>|cRXP_WARN_试图与 |cRXP_FRIENDLY_卫兵托马斯|r 对话，在 |cRXP_ENEMY_森林熊幼崽|r 死在 |cRXP_FRIENDLY_暴风城卫兵|r 的手里之前，这样可获得任务计数|r
    >>|cRXP_WARN_确保对他造成 51% 以上的伤害，以获得击杀判定|r
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|r |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .accept 5545 >>接受任务 木材危机
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>拾取散发绿光的 |cRXP_LOOT_Bundles of Wood|r on the ground at the base of the trees
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_站到|cRXP_PICK_罗尔夫的尸体|r上方，然后施放|r |T135954:0|t[圣佑术] |cRXP_WARN_并立刻点击|r |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_Run away 和 reset the |cRXP_ENEMY_鱼人|rafter completing the quest|r
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的 |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_鱼人强盗|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r
    >>|cRXP_WARN_施放|r |T135953:0|t[Renew] |cRXP_WARN_and|r |T135940:0|t[Power Word: Shield] |cRXP_WARN_then get full mana. Pull the 2 |cRXP_ENEMY_鱼人|r in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other|r << Priest
    >>|cRXP_WARN_Pull the 2|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_in front of the huts, move away and|r |T136071:0|t[Polymorph]|cRXP_WARN_one whilst killing the other. Kill the|r |T136071:0|t[变形]|cRXP_WARN_one after|r << Mage
    >>|cRXP_WARN_Pool 100 Rage. Pull the 2|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_in front of the huts, move away and keep|r |T132316:0|t[Hamstring]|cRXP_WARN_on one whilst killing the other. Also use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_on the one you're killing. Run away and reset the one being kited with|r |T132316:0|t[Hamstring]|cRXP_WARN_after you've killed one|r << Warrior
    >>|cRXP_WARN_Pull the 2|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_in front of the huts, move away and focus killing one of them. Use|r |T136205:0|t[Evasion]|cRXP_WARN_once they're both attacking you. This is a good opportunity to use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_. Run away and reset once you've killed one|r << Rogue
    >>|cRXP_WARN_Pull the 2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in front of the huts, move away and cast|r |T136183:0|t[恐惧]|cRXP_WARN_on one of them constantly, and try to keep DoTs on both|r << Warlock
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #completewith BundleOT
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>拾取散发绿光的 |cRXP_LOOT_Bundles of Wood|r on the ground at the base of the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .turnin 5545 >>交任务 木材危机
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .accept 83 >>接受任务 红色亚麻布
    .target Sara Timberlain
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
step
    #completewith Deed << !Warlock
    #completewith WarlockPrincess << Warlock
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]|cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务 法布隆的地契
step
    #completewith next
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label WarlockPrincess << Warlock
    .goto Elwynn Forest,69.3,79.0
    >>击杀 |cRXP_ENEMY_公主|r。并拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    >>|cRXP_WARN_Pool 100 Rage before you engage|r |cRXP_ENEMY_公主|r << Warrior
    >>|cRXP_WARN_确保 |T136205:0|t[闪避] |cRXP_WARN_已准备就绪。如果你觉得吃力，可以利用围栏并使用投掷武器卡路径来拖延时间|r << Rogue
    >>|cRXP_WARN_Be ready to use a|r |T134830:0|t[次级治疗药水]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_点击此处查看视频参考|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label Deed << !Warlock
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    >>|cRXP_WARN_你现在不必完成这一步。如果愿意可以跳过，稍后你还会再次回到这里|r << Warlock
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 83 >>交任务 红色亚麻布
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step << !Warlock
    .goto Redridge Mountains,10.76,77.64,0
    .goto Redridge Mountains,10.76,77.64,40,0
    .goto Redridge Mountains,15.79,64.37
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target Ariena Stormfeather
step    
    #completewith ElmoresTask
    .hs >>将炉石使用回夜色镇
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 112 >>交任务 收集海藻
    .timer 9,收集海藻 剧情
    .accept 114 >>接受任务 梅贝尔的隐形水
    .target William Pestle
step << Paladin/Warrior/Rogue
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>训练 |T135966:0|t[急救]
step << Rogue
    #optional
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    >>|cRXP_WARN_如果你现在还没有第二把武器也不用担心，很快就会拿到一把|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 39 >>交任务 托马斯的报告
    .turnin 76 >>交任务 玉石矿洞
    .accept 239 >>接受任务 西泉要塞
    .accept 59 >>接受任务 布甲和皮甲 << Warlock
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .target Marshal Dughan
step
    #label ElmoresTask
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .accept 1097 >>接受任务 艾尔默的任务
    .target Smith Argus
step << Warlock
    #optional
    #completewith WarlockTraining
    .goto Elwynn Forest,44.1,66.0,10 >>Travel 对话 in the Inn
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 和 |cRXP_FRIENDLY_雷门·玛考特|r 对话
    .train 980 >>|T136139:0|t[痛苦诅咒] 
    .train 5782 >>|T136183:0|t[恐惧] 
    .train 6201 >> |T135230:0|t[Create Healthstone (Minor)] 
    .train 696 >>学习 |T136185:0|t[恶魔皮肤 (等级 2)] 
    .train 1120 >>训练 |T136163:0|t[吸取灵魂] 
    .train 707 >>学习 |T135817:0|t[献祭 (等级 2)] 
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >>接受任务 加科因的召唤
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
    .xp <10,1
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .train 980 >>|T136139:0|t[痛苦诅咒]
    .train 5782 >>|T136183:0|t[恐惧]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .xp <8,1
step << Warlock
    #optional
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)]|cRXP_BUY_and|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)]|cRXP_BUY_from her if you can afford it. If not, you can buy it later|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)]|cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)]|cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Priest
    #optional
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
    .accept 5635 >>接受任务 绝望祷言 << Human/Dwarf
    .trainer >>训练你的职业技能
    .target Priestess Josetta
    .xp <10,1
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target Priestess Josetta
    .trainer >>训练你的职业技能
    .xp >10,1
    .xp <9,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .money >1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    >>|cRXP_WARN_暂时不要学习|r |T132277:0|t[血性狂暴] |cRXP_WARN_，你需要把一部分金币留着，很快还要进行其他训练|r
    .trainer >>训练你的职业技能
    .accept 1638 >>战士的训练
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <10,1
step << Warrior
    #optional
    .money <1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .accept 1638 >>战士的训练
    .target Lyria Du Lac
    .xp <10,1
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务 梅贝尔的隐形水
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88 >>交任务 公主必须死！
    .target Ma Stonefield
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 176 >>接受任务 通缉：霍格
    .goto Elwynn Forest,24.548,74.672,-1
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .xp 9.65,1
step << Rogue/Warrior
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .money >0.2600
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
step << !Warlock
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务《物归己用》 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 176 >>接受任务 通缉：霍格
    .goto Elwynn Forest,24.548,74.672,-1
step
    #completewith GnollEnd
    >>击杀 |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for the |T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_采金日程表|r]|cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    >>|cRXP_ENEMY_格拉夫·疾齿|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    .isOnQuest 11
    #completewith next
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
    .isOnQuest 176
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
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_can spawn in multiple locations|r
    >>|cRXP_WARN_你可以风筝他到守卫塔。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    .isOnQuest 11
    #completewith next
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .isOnQuest 176
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
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_can spawn in multiple locations|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r continously and use your regular DoTs to kill him|r
    >>|cRXP_WARN_你可以风筝他到守卫塔。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .isOnQuest 11
    #label GnollEnd
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
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior/Rogue
    .money >0.2600
    +击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r
    >>|cRXP_WARN_刷怪直到你拥有价值 26 银币的可出售物品/金币。这些钱用于学习投掷武器、双手锤和双手剑技能，同时还需要购买一把 3 级投掷武器，并且很快要飞往暴风城|r
    >>|cRXP_WARN_当你有足够金币后，手动跳过此步骤|r
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
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_Choose the|r |cRXP_WARN_装备 |T134583:0|t[|cRXP_FRIENDLY_暴风城卫兵护腿|r]|cRXP_WARN_as your reward. You will get a 2H Mace very soon|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >>交任务 通缉：霍格
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >>交任务 收货人
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 11 >>交任务 悬赏河爪豺狼人
    .target Deputy Rainer
    .isQuestComplete 11
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .turnin 184 >>交任务 法布隆的地契
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >>接受任务 杂味炖肉
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .accept 36 >>接受任务 杂味炖肉
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔玛·萨丁|r 对话，NPC在里面
    >>|cRXP_WARN_暂时不要接受其他任务|r
    .turnin 36 >>交任务 杂味炖肉
    .target Salma Saldean
step
    #completewith next
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .accept 6181 >>接受任务 快捷的消息
    .target Quartermaster Lewis
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_与旅店老板对话|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买最多 20 条|r |T133918:0|t[长嘴泥鳅]
    .collect 4592,20 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
    .zoneskip Westfall,1
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .turnin 6181 >>交任务 快捷的消息
    .accept 6281 >>接受任务 前往暴风城
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target Thor
step << Rogue
    #optional
    .abandon 123 >>交任务 收货人
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_我们选择的奖励是|r |T132383:0|t[爆破火箭] |cRXP_WARN_它能造成不错的伤害，还可以用于"仇恨分离"，非常实用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考。这是一个简短却非常有价值的教学视频|r
    .target Morgan Pestle
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>Train 1h Swords 和 Staves << Warlock/Mage
    .trainer >>学习单手剑 << Rogue
    .trainer >>学习锤类武器 << Priest
    .trainer >>学习双手剑 << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    >>|cRXP_WARN_务必保留 6 银币，用于之后的训练|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    >>|cRXP_WARN_务必保留 6 银币，用于之后的训练|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    .equip 16,851 >>|cRXP_WARN_Equip the|r |T135346:0|t[斗士短剑] |cRXP_WARN_in your mainhand|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2494 >>|cRXP_WARN_Equip the|r |T135641:0|t[卷刃的剑]|cRXP_WARN_in your offhand|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .isOnQuest 1685
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1685 >>交任务 加科因的召唤
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target Gakin the Darkbinder
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target Gakin the Darkbinder
step << Warlock
    #completewith WLHoggerEnd
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_灵魂医者|r by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .zoneskip Stormwind City,1
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>前往金雾村
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_Choose the|r |T135145:0|t[平衡长棍]
    .turnin 176 >>交任务 通缉：霍格
    .turnin 123 >>交任务 收货人
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_Choose the|r |T135145:0|t[平衡长棍]
    .turnin 176 >>交任务 通缉：霍格
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Equip the|r |T135145:0|t[平衡长棍]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    .subzone 62 >>前往暴风城大教堂内，与 the Brackwell Pumpkin Patch
    .isOnQuest 1688
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_苏伦娜·凯尔东|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
    .turnin 83 >>交任务 红色亚麻布
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith TheBinding
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
    >>|cRXP_WARN_Grind en-route. Make sure you have at least 2|r |T134075:0|t[灵魂碎片]|cRXP_WARN_by using|r 训练 |T136163:0|t[Drain Soul]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_途中注意躲避怪物|r
    .turnin 244 >>交任务 豺狼人的入侵
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_Use the|r |T133292:0|t[血石颈环] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>消灭那些试图阻止仪式的 |cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务 誓缚
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_萨尤斯|r 对话
    >>|cRXP_WARN_你必须预留 20 银币，用于在铁炉堡学习双手锤和投掷武器技能！|r
    .trainer >>训练你的职业技能
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >>接受任务 战士的训练
    .target Ilsa Corbin
    .train 6546,1
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25奥斯瑞克·斯图恩|r 对话
    .turnin 6281 >>交任务 前往暴风城
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击 |cRXP_ENEMY_巴特莱比|r. He will submit at 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >>进入 Stormwind Cathedral
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5635 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Priest/Dwarf Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5634 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto Stormwind City,51.192,17.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉尔曼·石手|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    >>|cRXP_WARN_该物品用于|r |T136241:0|t[锻造] |cRXP_WARN_可制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_和|r |T135255:0|t[劣质平衡石] |cRXP_WARN_用来提高你的武器伤害|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .target Gelman Stonehand
    .train 2018,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step << Warrior/Paladin/Rogue
    #optional
    #completewith EnterIF
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << Warrior/Paladin/Rogue
    #optional
    .goto Stormwind City,51.021,16.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布鲁克·石衣|r 对话
    .collect 2901,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[矿工锄]|cRXP_BUY_from her|r
    .target Brooke Stonebraid
    .train 2575,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 1097 >>交任务 艾尔默的任务
    .accept 353 >>接受任务 雷矛的包裹
    .target Grimand Elmore
step
    #completewith EnterIF
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入 Deeprun Tram
    .zoneskip Ironforge
step
    #optional
    >>|cRXP_WARN_乘坐矿道地铁前往铁炉堡方向|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[急救] |cRXP_WARN_while waiting for the Tram to Ironforge if needed|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[急救] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
    >>|cRXP_WARN_施放|r |T136221:0|t[Summon Voidwalker]|cRXP_WARN_and|r |T135230:0|t[Create Healthstone]|cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，你可在地深矿道铁炉堡站台的中央平台上找到他
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target Monty
    .skill firstaid,<1,1
step
    #optional
    >>|cRXP_WARN_乘坐矿道地铁前往铁炉堡方向|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[急救] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
    >>|cRXP_WARN_施放|r |T136221:0|t[Summon Voidwalker]|cRXP_WARN_and|r |T135230:0|t[Create Healthstone]|cRXP_WARN_while waiting for the Tram to Ironforge if needed|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，你可在地深矿道铁炉堡站台的中央平台上找到他
    .accept 6661 >>接受任务《物归己用》 捕捉矿道老鼠
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on |cRXP_ENEMY_矿道老鼠|r inside the Deeprun Tram|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话，在地深矿道内
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .target Monty
step
    #label EnterIF
    .zone Ironforge >>离开铁炉堡
step << skip
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>https://www.youtube.com/watch?v=M_tXROi9nMQ >> 点击这里查看在地铁内进行登出跳过的方法
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>离开铁炉堡
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>进入 Timberline Arms building
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 2567 >>训练 投掷武器
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>学习双手锤
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
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
    #completewith Rudra
    .goto 1455,61.356,88.398,6 >>离开木材线武器店建筑
step << Warrior
    .money <0.06
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r
    >>|cRXP_WARN_如果你的钱不够也没关系|r
    .train 6546 >>学习 |T132155:0|t[Rend (Rank 2)]
    .train 2687 >>学习 |T132277:0|t[血性狂暴]
    .target Bilban Tosslespanner
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target Gryth Thurden
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 交谈
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹更快完成交付任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .isQuestAvailable 418
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step
    .goto Ironforge,18.14,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
    .home >>将你的炉石设置为铁炉堡
    .target Innkeeper Firebrew
    .bindlocation 1537
step
    #optional
    #completewith Dirt
    .goto 1426,53.47,35.02
    >>离开铁炉堡
    .zone Dun Morogh >>前往暴风城大教堂内，与 Dun Morogh
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿土路上行
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难请点击这里|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob Vagash
step << Warrior/Rogue
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target Rudra Amberstill
step
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_风筝他到农场南边的守卫处。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target Rudra Amberstill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25参议员梅尔·圣石|r 和 |cFF00FF25工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接受任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25丹克·利刃|r 对话
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>击杀 |cRXP_ENEMY_石腭击颅者|r 和 |cRXP_ENEMY_石腭断骨者|r 对话，NPC在里面 the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >>交任务 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor >>|cRXP_BUY_Buy up to 20|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_from him|r
    .target Kazan Mogosh
    .xp >15,1
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25厨师格瑞姆|r 对话
    .train 2550 >>Train |T133971:0|t[烹饪]
    .target Cook Ghilm
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>点击地上的 |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step
    .goto Dun Morogh,78.97,37.14
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .turnin 417,1 >>交任务 驾驶员的复仇 << Rogue
    .turnin 417 >>交任务 驾驶员的复仇 << !Rogue
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the 飞往 洛克莫丹
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance
#name 11-12级 洛克莫丹 << !Warlock
#name 12-14级 洛克莫丹 << Warlock
#subgroup RestedXP 联盟 1-20 级
#defaultfor Human
#next 12-14 黑海岸 << Warlock
#next 12-14 黑海岸 << !Warlock

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 353 >>交任务 雷矛的包裹
    .accept 307 >>接受任务 污秽的爪子 << Warlock/Mage/Rogue
    .target Mountaineer Stormpike
step << !Warlock !Mage !Rogue
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step << Warlock/Mage/Rogue
    #optional
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .turnin 418 >>交任务 塞尔萨玛血肠
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    .abandon 1338 >>放弃 卡尔·雷矛的订单。这是为了解锁 雷矛山地兵的任务，该任务在交付时可免费获得 550 点经验值
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_to use for leveling|r |T133971:0|t[烹饪]|cRXP_WARN_later|r
    .subzoneskip 144
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    .subzone 144 >>前往萨兰纳尔
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor 1682 >>|cRXP_BUY_需要的话可以从她那里|r|cRXP_BUY_购买最多2个|r |T133634:0|t[棕色小包]
    .target Yanni Stoutheart
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话
    .vendor 6734 >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_. Aim to have about 20|r << Rogue
    .vendor 6734 >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_and|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_. Aim to have about 10|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_and 20|r |T132815:0|t[冰镇牛奶] << Mage/Warlock
    .target Innkeeper Hearthstove
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    #label StormpikeO
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
    .target Mountaineer Kadrell
step << Warlock/Mage/Rogue
    #optional
    #completewith SilverStream
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
step << Warlock/Mage/Rogue
    #completewith SilverStream
    >>击杀 |cRXP_ENEMY_Tunnel Rats|r。拾取他们的 |cRXP_LOOT_Tunnel Rat Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>进入磨坊 Stream Mine
step << Warlock/Mage/Rogue
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_Miners' League Crates|r。拾取他们的 |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    .complete 307,1 -- Miners' Gear (4)
step << Warlock/Mage/Rogue
    #optional
    #completewith FilthyMountaineer
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Warlock/Mage/Rogue
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>击杀 |cRXP_ENEMY_Tunnel Rats|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target Gothor Brumn
step << Warlock/Mage/Rogue
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .target Mountaineer Stormpike
step << Warlock/Mage/Rogue
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
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
    .mob +Mountain Boar
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
    .mob +Forest Lurker
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
step << Warlock/Mage/Rogue
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
    .target Mountaineer Kadrell
    .turnin 416 >>交任务 狗头人的耳朵
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fp Thelsamar >>获取塞尔萨玛的飞行路径
    .target Thorgrum Borrelson
step << !Warlock
    .hs >>将炉石使用回铁炉堡
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << !Warlock
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>沿土路上行，然后跳入地堡
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .accept 267 >>接受任务 穴居人的威胁
    .target Captain Rugelfuss
step << Warlock
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,27.33,56.70
    +Grind |cRXP_ENEMY_穴居人|r until you have 71s 50c worth of vendor trash/money, then turnin the quests
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>击杀 ，直到 9600+/11400xp
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>沿土路上行，然后跳入地堡
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target Captain Rugelfuss
    .isQuestComplete 267
step << Warlock
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >>击杀 to 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .hs >>将炉石使用回铁炉堡
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << Warlock
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Paladin
    #optional
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Brandur Ironhammer
    .xp <12,1
step << Rogue
    #optional
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r 对话
    .trainer >>训练你的职业技能
    .target Fenthwick
    .xp <12,1
step << Warrior
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
    .xp <12,1
step << Mage/Priest/Warlock
#ah
    #sticky
    #label AH1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_Buy a|r |T135144:0|t[强效魔法杖] |cRXP_BUY_if it costs less than 30s 6c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step
#ah
    #sticky
    #label AH2
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #sticky
    #label AH3
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #requires AH1
step
    #requires AH2
step
    #requires AH3
step << Mage/Priest/Warlock
    #optional
    +|cRXP_WARN_Equip the|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp <13,1
step << Priest/Warlock/Mage
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼下的 |cRXP_FRIENDLY_哈瑞克·石鼓|r 对话
    >>|cRXP_BUY_Buy a|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_from him|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Remember to equip the|r |T135468:0|t[烟尘魔杖] |cRXP_WARN_later when you reach level 15|r
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话
    .trainer >>训练你的职业技能
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor >>|cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)]|cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)]|cRXP_BUY_if you can afford it|r
    .target Jubahl Corpseseeker
step << Priest
    #optional
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话
    .trainer >>训练你的职业技能
    .target Toldren Deepiron
    .xp <12,1
step << Mage
    #optional
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丁克|r 对话
    .trainer >>训练你的职业技能
    .target Dink
    .xp <12,1
step
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>离开铁炉堡
step
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>前往暴风城大教堂内，与 the Dun Morogh -> Wetlands deathskip spot
step
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >>继续沿着山路前进，前往死亡跳过位置
step
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >>Run straight off the edge to the north and drop down. Die and respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    #completewith next
    .goto Wetlands,11.95,50.24,80 >>朝米奈希尔港游，直到上岸
    .subzoneskip 150 --Menethil Harbor
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与军营底楼的 |cRXP_FRIENDLY_尼尔·奥雷|r 对话
    .vendor 1448 >>|cRXP_WARN_Buy a|r |T133024:0|t[青铜管]|cRXP_BUY_from him (if it's up)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>离开米奈希尔城堡
    .subzoneskip 2103,1 --Menethil Keep
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_谢尔雷|r 交谈
    .fp Wetlands >>获取塞尔萨玛的飞行路径
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德温·晨光|r 对话，NPC在里面
    .vendor 1453 >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往暴风城大教堂内，与 the dock for the boat to Auberdine
    .zoneskip Darkshore
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_在等待前往黑海岸的船时|r|cRXP_WARN_提升你的|r |T135966:0|t[急救]
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>乘船前往黑海岸
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南（联盟版）
<< Alliance Warlock
#name 12-14 黑海岸
#subgroup RestedXP 联盟 1-20 级
#defaultfor Human Warlock
#next 14-20秘血岛

step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r 对话
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接受任务 钓鱼世家
    .turnin 1141 >>交任务 钓鱼世家
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    >>|cRXP_WARN_从他那里|r|cRXP_WARN_购买最多 20 条|r |T133918:0|t[长嘴泥鳅]
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>下楼 toward |cRXP_FRIENDLY_维兹班恩·曲针|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fp Auberdine >>获取鹰巢山飞行路径
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>击杀 |cRXP_ENEMY_小潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹幼崽|r。拾取他们的 |cRXP_LOOT_Crawler Legs|r
    >>你可能需要下水才能获得它们
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_搁浅的海洋生物|r.拾取地上的 it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[萨纳瑞恩的希望] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It can be used from any range as long as you have one targeted|r
    >>==如果附近没有熊，请不要使用该任务物品== 
    >>你可能会浪费陷阱，导致该任务无法完成！如果发生这种情况，你需要返回任务给予者那里再领取一个新的陷阱
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>朝着 Furbolg Camp 的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >>交任务 传声盒827号
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务 熊怪的威胁
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >>放弃任务 传声盒411号。无需完成此任务
step
    #optional
    #sticky
    .abandon 4681 >>交任务 搁浅的巨兽. You won't complete this quest
step
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[急救] |cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>乘船前往秘蓝岛
]])