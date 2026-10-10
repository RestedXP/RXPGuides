if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6级 北郡
#version 1
#group RestedXP 无限指南 (联盟)
#subgroup 速通指南1-20级
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11级 艾尔文森林


step << !Human
    #completewith next
    +你选择的是人类专用的指南，请确保你的选择与你角色出生地一致
step << Mage
    #completewith next
    +请注意，你已选择了法师单体目标指南。单体目标比AOE法师安全得多，但速度也慢得多
step << !Human Mage
    #season 2
    #completewith next
    +在探索赛季中，法师不应在种族初始区域之外开始游戏，因为你将无法在此处获得第一个符文（|T135844:0|t|T135844:0|t[冰枪术]）
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 783 >>接受任务 身边的危机
    .target 维里副队长
step << Warrior
    .goto 1429/0,-75.05,-8872.36,35,0
    >>一直击杀 |cRXP_ENEMY_幼狼|r 直到你拥有价值10铜币以上的垃圾物品
    >>|cRXP_WARN_你会学习|r |T132333:0|t[战斗怒吼] |cRXP_WARN_从而加快前期升级速度|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 丹尼尔修士
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 莱尼·拜舍尔
    .goto 1429/0,-208.40,-8918.35
    .mob 幼狼
step
    #label Within
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 783 >>交任务 身边的危机
    .accept 7 >>接受任务 狗头人的蜡烛
    .target 治安官玛克布莱德
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 5261 >>接受任务 伊根·派特斯金纳
    .target 维里副队长
step
    #label EaganWolves
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 5261 >>交任务 伊根·派特斯金纳
    .accept 33 >>接受任务 林中的群狼
    .target 伊根·派特斯金纳
step << Priest/Mage/Warlock
    #completewith next
    .goto 1429/0,-68.11,-8874.67,40,0
    .goto 1429/0,-112.74,-8901.66
    >>|cRXP_WARN_当你拥有价值50铜币的垃圾物品:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 丹尼尔修士
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
step
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
    >>杀死 |cRXP_ENEMY_狗头人歹徒|r。拾取他们的战利品 |T133736:0|t[|cRXP_LOOT_被啃过的书|r]
    .use 247834 >>|cRXP_WARN_使用|r |T133736:0|t[|cRXP_LOOT_被啃过的书|r] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_重要:在你获得|r |T133736:0|t[|cRXP_LOOT_被啃过的书|r] |cRXP_WARN_掉落后立即交任务|r
    .collect 247834,1,91741,1 -- Nibbled-On Book (1)
    .accept 91741 >>接受任务 被啃过的书
    .complete 7,1 --Kill Kobold Vermin (x10)
    .disablecheckbox
    .mob 狗头人歹徒
step
    #completewith next
    .goto 1429/0,-136.900,-8913.800,10,0
    .goto 1429/0,-176.000,-8880.900,10 >>|cRXP_WARN_前往北郡修道院的 |cRXP_FRIENDLY_帕克斯顿修士|r 处。不必立刻击杀 |cRXP_ENEMY_歹徒|r 或 |cRXP_ENEMY_狼|r|r
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 91741 >>交任务 被啃过的书
    .accept 92124 >>接受任务 书籍 物品栏
    .target Brother Paxton
step
    .goto 1429/0,-182.65,-8881.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔|r 对话
    .turnin 92124 >>交任务 书籍 物品栏
    .target Daniel
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .accept 91743 >>接受任务 鼠辈泛滥
    .target Brother Paxton
step
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
    >>杀死 |cRXP_ENEMY_狗头人歹徒|r。拾取他们的战利品 |cRXP_LOOT_被偷走的书|r
    >>|cRXP_WARN_暂时不用特意去拾取所有的|cRXP_LOOT_ |r被偷走的书|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob 狗头人歹徒
step
    #requires WolfMeatEnd
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .turnin 33,2 >>交任务 林中的群狼 << Warrior/Paladin/Rogue
    .turnin 33,1 >>交任务 林中的群狼 << !Warrior !Paladin !Rogue
    .target 伊根·派特斯金纳
step << Priest/Mage/Warlock
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_再买 10瓶|r |T132794:0|t[清凉的泉水]
    >>|cRXP_WARN_请至少保留 10 铜币，后续要用|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target 丹尼尔修士
step << !Priest !Mage !Warlock !Rogue
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 高德瑞克·洛斯迦
step << Rogue
    #season 0,1
    .goto 1429/0,-104.21,-8909.39--c:Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚努斯·哈默纳克|r 对话
    .vendor 78 >>|cRXP_BUY_如果你钱够的话，|r|cRXP_BUY_购买一把|r |T135650:0|t[简易匕首] |cRXP_BUY_或|r |T132410:0|t[旧手斧]
    --.collect 2139,1 -- Dirk (1)
    --.disablecheckbox
    .target 亚努斯·哈默纳克
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_装备买来的|r |T135650:0|t[简易匕首]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_装备|r |T132410:0|t[旧手斧]
    .use 2134
    .itemcount 2134,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step
    #label CleanupEnd
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 7 >>交任务 狗头人的蜡烛
    .accept 15 >>接受任务 回音山调查行动
    .accept 3100 >>接受任务 简要的信件 << Human Warrior
    .accept 3101 >>接受任务 圣洁信件 << Human Paladin
    .accept 3102 >>接受任务密文信件 << Human Rogue
    .accept 3103 >>接受任务 神圣信件 << Human Priest
    .accept 3104 >>接受任务 雕文信件 << Human Mage
    .accept 3105 >>接受任务 被污染的信件 << Human Warlock
    .accept 92479 >>接受任务 潦草的信件 << Human Hunter
    .target 治安官玛克布莱德

step << Warlock
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 18 >>接受任务 盗贼兄弟会
    .target 维里副队长
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 3105 >>交任务 被污染的信件
    .accept 1598 >>接受任务 失窃的典籍
    .train 348 >>学习 |T135817:0|t[献祭]
    .target 杜希拉·拉萨雷


step << Warlock
    #hardcore
--   .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>打开 |cRXP_PICK_被偷走的书|r。从中拾取 |cRXP_LOOT_虚空灵能|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
--  .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>打开 |cRXP_PICK_被偷走的书|r。从中拾取 |cRXP_LOOT_虚空灵能|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>死亡并在灵魂医者处复活
    >>|cRXP_WARN_如果附近没有|cRXP_ENEMY_ 迪菲亚敌人|r 就跑回去|r
    .target 灵魂医者
step << Warlock
    #season 0,1
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 1598 >>交任务 失窃的典籍
    .target 杜希拉·拉萨雷
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
    .usespell 688

step
    #completewith next
    >>杀死 |cRXP_ENEMY_狗头人|r。拾取他们的战利品 |cRXP_LOOT_被偷走的书|r
    .complete 91743,1 -- Stolen Book (8)
step
    #season 0,1 << Priest/Warrior
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

----Start of 1x train section----




step
    #label xp3
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
    .xp 3+1110 >>|cRXP_WARN_刷怪升级至1110+/1400经验值|r
    >>如果你还需要 |cRXP_ENEMY_被偷走的书|r，击杀 |cRXP_LOOT_狗头人劳工|r 来获取
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob 狗头人劳工
step << !Hunter
    #season 0,1 << Warrior
    #completewith next
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 高德瑞克·洛斯迦
step << Hunter
    .goto 1429/0,-112.800,-8901.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>|cRXP_BUY_购买2组 |r |T132382:0|t[劣质箭]
    .target 丹尼尔修士
step
    #requires xp3
    #label Investigate
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 15 >>交任务 调查营地
    .accept 21 >>接受任务 回音山清剿行动
    .target 治安官玛克布莱德

step
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 91743 >>交任务 鼠辈泛滥
    .accept 91745 >>接受任务 采矿 Consultant
    .target Brother Paxton
step
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .accept 91745 >>接受任务 采矿 Consultant
    .target Brother Paxton

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
    .goto 1429/0,-188.23,-8851.58,12 >>上楼去找 |cRXP_FRIENDLY_凯尔登·布雷门|r
step << Mage
    #season 0,1
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_凯尔登·布雷门|r 对话
    .turnin 3104 >>交任务 雕文信件
    .trainer >>训练你的职业技能
    .target 凯尔登·布雷门
step << Priest
    #optional
    #completewith next
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-193.06,-8870.05,10 >>进屋并下楼去找 |cRXP_FRIENDLY_女牧师安妮塔|r
step << Priest
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 3103 >>交任务 神圣信件
    .trainer >>训练你的职业技能
    .target 女牧师安妮塔
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8907.08,15 >>进屋并下楼去找 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto 1429/0,-186.12,-8907.08,15 >>进屋并下楼去找 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Warrior
    #season 0,1
    .goto 1429/0,-208.40,-8918.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内的楼下与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .turnin 3100 >>交任务 简要的信件
    .trainer >>训练你的职业技能
    .target 莱尼·拜舍尔
step << Paladin
    #season 0,1
    .goto 1429/0,-215.03,-8914.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .turnin 3101 >>交任务 圣洁信件
    .trainer >>训练你的职业技能
    .target 萨缪尔修士
step
    #season 0,1 << Warrior
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .accept 18 >>接受任务 盗贼兄弟会
    .target 维里副队长
step << Hunter
    .goto 1429/0,-242.100,-8884.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尔德林::248415|r 对话
    .target Tordrin Sternblade::248415
    .turnin 92479 >>交任务 潦草的信件
    .trainer >>训练你的职业技能
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .train 172 >>学习 |T136118:0|t[腐蚀术]
    .target 杜希拉·拉萨雷



----End of 1x train section----




step
    #season 0,1
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>击杀 |cRXP_ENEMY_迪菲亚暴徒|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob 迪菲亚暴徒
step << Rogue
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 4 >>刷怪升级到 4 级
step
    #season 0,1
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 18,1 >>交任务 盗贼兄弟会 << Rogue/Warlock
    .turnin 18,2 >>交任务 盗贼兄弟会 << Priest
    .turnin 18,3 >>交任务 盗贼兄弟会 << Warrior
    .turnin 18,4 >>交任务 盗贼兄弟会 << Paladin
    .turnin 18,5 >>交任务 盗贼兄弟会 << Mage
    .turnin 18 >>交任务 盗贼兄弟会 << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >>接受任务 米莉·奥斯沃斯
    .accept 6 >>接受任务 加瑞克·帕德弗特的赏金
    .target 维里副队长
step << Paladin
    #season 0,1
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_装备|r |T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #season 0,1
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
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kelsey Fargo::247226|r 对话
    .target Kelsey Fargo::247226
    .turnin 91745 >>交任务 采矿 Consultant
    .accept 91752 >>接受任务 The Big Picture
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kelsey Fargo::247226|r 对话
    .target Kelsey Fargo::247226
    .accept 91752 >>接受任务 The Big Picture
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >>进入回音山矿洞
step
    #completewith KoboldLaborers
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>杀死 |cRXP_ENEMY_Shinyfinder 纳尔弗|r。拾取他的战利品 |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith KoboldLaborers
    .isOnQuest 91743
    >>击杀 |cRXP_ENEMY_狗头人苦力|r 和 |cRXP_ENEMY_狗头人劳工|r。拾取他们的 |cRXP_LOOT_被偷走的书|r
    .complete 91743,1 -- Stolen Book (8)
step
    #label KoboldLaborers
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
    .isOnQuest 91743
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
    >>击杀 |cRXP_ENEMY_狗头人苦力|r 和 |cRXP_ENEMY_狗头人劳工|r。拾取他们的 |cRXP_LOOT_被偷走的书|r
    .complete 91743,1 -- Stolen Book (8)
    .mob 狗头人苦力
    .mob 狗头人劳工
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>杀死 |cRXP_ENEMY_Shinyfinder 纳尔弗|r。拾取他的战利品 |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf

step
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    >>|cRXP_WARN_跳过后续任务|r << !Priest !Mage
    .turnin 3903 >>交任务 米莉·奥斯沃斯
    .accept 3904 >>接受任务 米莉的葡萄 << Priest/Mage
    .target 米莉·奥斯沃斯
step << Rogue
    #season 0,1
    .goto 1429/0,-210.90,-8863.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .turnin 3102 >>交任务密文信件
    .train 1784 >>学习 |T132320:0|t[潜行]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .target 乔里克·克里丹
step << Priest/Mage
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>拾取地上的 |cRXP_PICK_米莉的葡萄|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>击杀 |cRXP_ENEMY_加瑞克·帕德弗特|r，拾取他的 |cRXP_LOOT_头颅|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob 加瑞克·帕德弗特
step
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5 >>刷怪升至等级5
    .mob 迪菲亚暴徒
    --no need for extra grinding. being level 5 and doing the kobold quest chain will get you 6 once you arrive in goldshire
step
    #optional
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
-- .subzoneskip 59,1
step << Priest/Mage
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .turnin 3904 >>交任务 米莉的葡萄
    .accept 3905 >>接受任务 葡萄出货单
    .target 米莉·奥斯沃斯
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 6,2 >>交任务 加瑞克·帕德弗特的赏金 << Warrior/Rogue/Paladin
    .turnin 6,1 >>交任务 加瑞克·帕德弗特的赏金 << !Warrior !Rogue !Paladin
    .target 维里副队长
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .turnin 91752 >>交任务 The Big Picture
    .accept 91758 >>接受任务 跟随那个狗头人
    .target 治安官玛克布莱德
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .accept 91758 >>接受任务 跟随那个狗头人
    .target 治安官玛克布莱德
    .isQuestTurnedIn 91752
step
    #label RestandR
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .turnin 21,1 >>交任务 回音山清剿行动 << Rogue
    .turnin 21,2 >>交任务 回音山清剿行动 << Warrior/Paladin
    .turnin 21,3 >>交任务 回音山清剿行动 << !Warrior !Paladin !Rogue
    .accept 54 >>接受任务 去闪金镇报到
    .accept 96627 >>接受任务 冒险者
    .target 治安官玛克布莱德
step
    #optional
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 91743 >>交任务 鼠辈泛滥
    .accept 91745 >>接受任务 采矿 Consultant
    .target Brother Paxton
step
    #optional
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .accept 91745 >>接受任务 采矿 Consultant
    .target Brother Paxton
step << Priest/Mage
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,10 >>上楼
step << Priest/Mage
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_尼尔斯修士|r 对话
    .turnin 3905,1 >>交任务 葡萄出货单
    .target 尼尔斯修士
step << Priest
    #season 0,1
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .accept 5623 >>接受任务 圣光的恩赐
    .target 女牧师安妮塔
step
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kelsey Fargo::247226|r 对话
    .target Kelsey Fargo::247226
    .turnin 91745 >>交任务 采矿 Consultant
    .accept 91752 >>接受任务 The Big Picture
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kelsey Fargo::247226|r 对话
    .target Kelsey Fargo::247226
    .accept 91752 >>接受任务 The Big Picture
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >>进入回音山矿洞
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>杀死 |cRXP_ENEMY_Shinyfinder 纳尔弗|r。拾取他的战利品 |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .turnin 91752 >>交任务 The Big Picture
    .accept 91758 >>接受任务 跟随那个狗头人
    .target 治安官玛克布莱德
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话，NPC在里面
    .accept 91758 >>接受任务 跟随那个狗头人
    .target 治安官玛克布莱德
    .isQuestTurnedIn 91752
step
    .isOnQuest 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尔德林·茎刃::248415|r 在修道院外对话
    .target Tordrin Sternblade::248415
    .turnin 91758 >>交任务 跟随那个狗头人
    .accept 91772 >>接受任务 Shhh! We're Hunting Kobolds
step
    .isQuestTurnedIn 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尔德林·茎刃::248415|r 在修道院外对话
    .target Tordrin Sternblade::248415
    .accept 91772 >>接受任务 Shhh! We're Hunting Kobolds
step
    #completewith RnR
    .cast 1246031 >>|cRXP_WARN_使用|r |T132995:0|t[狗头人追踪工具包] |cRXP_WARN_在小地图上查看 |cRXP_PICK_狗头人踪迹|r|r
    .use 247970
step
    #completewith RnR
    .isOnQuest 91772
    .goto 1429/0,-46.00,-9044.61,5 >>前往闪金镇途中点击地上的 |cRXP_PICK_狗头人足迹|r
    .use 247970 
    .complete 91772,1 -- Followed Kobold Tracks 6/6
    .disablecheckbox
step
    #label RnR
    .goto 1429/0,-46.00,-9044.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r 对话
    .accept 2158 >>接受任务 休息和放松
    .target 法尔坎·伊森斯泰德
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#name 6-11级 艾尔文森林
#displayname 6-13级 艾尔文森林 << SoD
#next 11-13级 洛克莫丹
#defaultfor Human

step << skip -- removing for now for camp fire buff/questline
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .subzoneskip 87

step
    #completewith CampQuest
    .isOnQuest 91772
    >>前往闪金镇途中点击地上的 |cRXP_PICK_狗头人足迹|r
    .use 247970 >>|cRXP_WARN_使用|r |T132995:0|t[狗头人追踪工具包] |cRXP_WARN_在你的小地图上追踪他们|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_使用|r |T4624731:0|t[荒野采摘] |cRXP_WARN_来提升2点|r |T136065:0|t[草药学] |cRXP_WARN_技能。|r |cRXP_WARN_如果你的专业还没满两个，也可以直接学习|r |T136065:0|t[草药学]
    .itemcount 247841,1 -- Wild Harvest
    .use 247841
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_使用|r |T4625106:0|t[兽皮收集入门] |cRXP_WARN_来提升2点|r |T134366:0|t[剥皮] |cRXP_WARN_技能。|r |cRXP_WARN_如果你的专业还没满两个，也可以直接学习|r |T134366:0|t[剥皮]
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .use 247846
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_使用|r |T4625105:0|t[采矿傻瓜教程] |cRXP_WARN_来提升2点|r |T136248:0|t[采矿] |cRXP_WARN_技能。|r |cRXP_WARN_如果你的专业还没满两个，也可以直接学习|r |T136248:0|t[采矿]
    .itemcount 247840,1 -- Mining for Dummies
    .use 247840

step
    #label CampQuest
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆·萨斯帕里拉|r 对话
    .turnin 96627 >>交任务 冒险者
    .accept 95998 >>接受任务 壮丽自然
    .target Sam Sarsaparilla
step
    .goto 1429/0,-22.99,-9402.40
    >>|cRXP_WARN_在聊天框中输入 "/坐下"，并在营火旁等待一分钟|r
    .complete 95998,1 -- /sit emote in chat 1/1
    .complete 95998,2 -- Gain boosted rest buff 1/1

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆·萨斯帕里拉|r 对话
    .turnin 95998 >>交任务 壮丽自然
    .accept 96626 >>接受任务 露营基础：烹饪
    .accept 97924 >>接受任务 露营基础：剥皮
    .target Sam Sarsaparilla
    .skill skinning,<1,1 -- shows if skinning is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆·萨斯帕里拉|r 对话
    .turnin 95998 >>交任务 壮丽自然
    .accept 96626 >>接受任务 露营基础：烹饪
    .accept 97921 >>接受任务 露营基础：草药学
    .target Sam Sarsaparilla
    .skill herbalism,<1,1 -- shows if herbalism is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆·萨斯帕里拉|r 对话
    .turnin 95998 >>交任务 壮丽自然
    .accept 96626 >>接受任务 露营基础：烹饪
    .accept 97923 >>接受任务 露营基础：采矿
    .target Sam Sarsaparilla
    .skill mining,<1,1 -- shows if mining is >1

--Add turnins for skinning/herb/mining later

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆·萨斯帕里拉|r 对话
    .turnin 95998 >>交任务 壮丽自然
    .accept 96626 >>接受任务 露营基础：烹饪
    .target Sam Sarsaparilla


step
    .isOnQuest 91772
    #loop
    .goto 1429/0,-77.600,-9140.900,55,0
    .goto 1429/0,-44.100,-9246.500,55,0
    .goto 1429/0,8.800,-9327.900,55,0
    .goto 1429/0,66.000,-9374.000,55,0
    >>点击地上绿色的 |cRXP_PICK_狗头人足迹|r
    .use 247970 >>|cRXP_WARN_使用|r |T132995:0|t[狗头人追踪工具包] |cRXP_WARN_在你的小地图上追踪他们|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6

step << Warrior/Rogue/Paladin
    .goto 1429/0,87.87,-9456.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这能让你制作|r |T135255:0|t[劣质平衡石] |cRXP_WARN_使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 铁匠阿古斯
step << Warrior
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135321:0|t[步兵剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_如果你钱的话，|r |cRXP_BUY_购买一把|r |T135421:0|t[小手斧] |cRXP_BUY_或|r |T135641:0|t[卷刃的剑]
    .target 科瑞娜·斯蒂利
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk
    #completewith GSHS
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德温·克里顿|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 安德温·克里顿
--  .money >1.0
step
    .isOnQuest 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .turnin 91772 >>交任务 Shhh! We're Hunting Kobolds
    .accept 62 >>接受任务 法戈第矿洞
    .accept 91775 >>接受任务 书籍返回
    .target 治安官杜汉
step
    .isQuestTurnedIn 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
    .accept 91775 >>接受任务 书籍返回
    .target 治安官杜汉
step
    #label Goldshire
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
    .target 治安官杜汉
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .accept 60 >>接受任务 狗头人的蜡烛
    .target 威廉·匹斯特
step
    #label GSHS
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .turnin 2158,1 >>交任务 休息和放松 << Rogue/Warrior
    .turnin 2158,2 >>交任务 休息和放松 << !Rogue !Warrior
    .home >>将你的炉石设置为闪金镇
    .target 旅店老板法雷

step
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师托马斯|r对话
    >>|cRXP_WARN_如果你没有1银币，或者想稍后再做，就跳过这一步|r
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .turnin 96626 >>交任务 露营基础：烹饪
    .target Tomas
    .money <0.0100
step
    #optional
    .isQuestComplete 96626
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师托马斯|r对话
    .turnin 96626 >>交任务 露营基础：烹饪
    .target Tomas
step
    #optional
    .xp 6 >>刷怪到6级
step << Rogue
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor 151 >>|cRXP_BUY_购买一把|r |T135641:0|t[平衡飞刀]|cRXP_BUY_从他那里，如果钱够|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
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
    .destroy 2947 >>|cRXP_WARN_从你的背包删除|r |T135426:0|t[小飞刀] |cRXP_WARN_，因为不再需要它了|r
    .itemcount 2946,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,-5.63,-9460.26,5 >>下楼
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 在楼下对话
    .trainer >>训练你的职业技能
    .target 玛克西米利安·克洛文
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor 6374 >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target 塞琳娜·达克哈特
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto 1429/0,34.28,-9471.61
    .trainer >>训练你的职业技能
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target 女牧师洁塞塔
    .goto 1429/0,33.14,-9460.75
    .turnin 5623 >>交任务 圣光的恩赐
    .accept 5624 >>接受任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto 1429/0,12.69,-9465.75
    .trainer >>训练你的职业技能
step << Warrior/Rogue
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor 295 >>|cRXP_BUY_购买|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里。直到你的钱剩下 1 银币为止|r << Warrior
    .vendor 295 >>|cRXP_BUY_买够20个|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里。如果钱够|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target 旅店老板法雷
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step
    #requires DeleteOldDaggers << Rogue
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .accept 47 >>接受任务 金砂交易
    .target 雷米
step << Hunter
    .goto 1429/0,75.400,-9480.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Nordun Steadysight|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Nordun Steadysight
    .money <0.0281
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1 --Hornwood Recurve Bow (1)
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森|r 对话
    .trainer >>训练你的职业技能
    .target Josephine Carson
step << Priest
    .goto 1429/0,-135.72,-9514.56
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在|r|cRXP_FRIENDLY_卫兵罗伯兹|r 身上
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target 卫兵罗伯兹
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    .waypoint 1429/0,454.25,-9915.31,40,0
    .waypoint 1429/0,387.26,-9944.94,40,0
    .waypoint 1429/0,372.34,-9912.07,40,0
    .waypoint 1429/0,418.85,-9881.06,40,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob 石牙野猪
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,86,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 石牙野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,86,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 石牙野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 和 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .goto 1429/0,338.47,-9889.69
    .target 波尼斯·斯通菲尔德姑妈
    .accept 88 >>接受任务 公主必须死！
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target 斯通菲尔德妈妈
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
    .isNotOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .isOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_狗头人的蜡烛|r、|cRXP_LOOT_金砂|r 和 |cRXP_LOOT_遗失的书本|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #label NecklaceStart
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
    .target 比利·马科伦
step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .accept 106 >>接受任务 年轻的恋人
    .target 梅贝尔·马科伦
step
    #optional
    #completewith Lovers
    .goto 1429/0,65.28,-10008.20
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
    .isNotOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .isOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_狗头人的蜡烛|r、|cRXP_LOOT_金砂|r 和 |cRXP_LOOT_遗失的书本|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #label Lovers
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r 对话
    .turnin 106 >>交任务 年轻的恋人
    .accept 111 >>接受任务 托米的祖母
    .target 托米·乔·斯通菲尔德
step
    #requires BoarMeatQuest
    #label Pie
    .goto 1429/0,338.47,-9889.69
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
step
    .isNotOnQuest 91775
    #sticky
    #label KoboldEnd1
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .isOnQuest 91775
    #sticky
    #label KoboldEnd2
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_狗头人的蜡烛|r、|cRXP_LOOT_金砂|r 和 |cRXP_LOOT_遗失的书本|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 84 >>交任务 比利的馅饼
    .accept 87 >>接受任务 金牙
    .target 比利·马科伦
step
    .goto 1429/0,181.44,-9842.170,15,0
    .goto 1429/0,149.86,-9793.80
    >>进入法戈第矿洞中较大的开阔区域之一
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 0,1
    .goto 1429,41.732,78.024
    >>击杀 |cRXP_ENEMY_金牙|r。拾取他的 |cRXP_LOOT_波尼斯的项链|r
    >>|cRXP_WARN_小心，他通常会拉到旁边的|cRXP_ENEMY_ |r狗头人矿工|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob 金牙
step
    .isOnQuest 91775
    .goto 1429/0,91.200,-9788.500
    >>在法戈第矿洞内击杀 |cRXP_ENEMY_Nimsy|r，拾取他的 |cRXP_LOOT_Picture 书籍: Fun with Elementals|r
    >>|cRXP_WARN_试着组队完成此步骤。|cRXP_ENEMY_狗头人|r 在洞穴中刷新地非常快|r
    >>|cRXP_WARN_他还会召唤一个 |cRXP_ENEMY_隆鸣者|r 小怪。如果你尝试独自应对，要小心。如果你无法击杀他，跳过此步骤|r
    .complete 91775,1 --|1/1 Picture Book: Fun with Elementals
    .mob Nimsy
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_从现在开始尽量保留一瓶|r |T134829:0|t[初级治疗药水] |cRXP_WARN_，因为之后在罗尔夫的尸体任务中会用到|r
    .subzoneskip 87 --Goldshire
step
    #requires KoboldEnd1
step
    #requires KoboldEnd2
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1140 >>刷怪达到1140+/4500点经验
    .mob 狗头人隧道工
    .mob 狗头人矿工
    .isQuestComplete 91775 -- elite quest
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1815 >>刷怪达到1815+/4500点经验
    .mob 狗头人隧道工
    .mob 狗头人矿工
    .isQuestNotComplete 91775 -- elite quest
step
    #label Goldtooth
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 87 >>交任务 金牙
    .target 波尼斯·斯通菲尔德姑妈
step
    #optional
    #label BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 石牙野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 石牙野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 57 --Fargodeep Mine
step
    #hardcore
    #optional
    #completewith Exchange
    .goto 1429/0,72.81,-9496.23,125 >>返回闪金镇--c:Elwynn Forest,42.140,67.254
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    #label Exchange
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 60 级都很有用|r
    .turnin 47 >>交任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
    .target 雷米
step
    .isQuestComplete 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 91775 >>交任务 书籍返回
    .accept 91777 >>接受任务 精良书籍
    .target 治安官杜汉
step
    .isQuestTurnedIn 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .accept 91777 >>接受任务 精良书籍
    .target 治安官杜汉
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .target 治安官杜汉
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 科瑞娜·斯蒂利
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto 1429/0,94.01,-9464.8900
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
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_如果你有钱的话，|r|cRXP_BUY_购买一把|r |T135421:0|t[小手斧]
    .collect 2490,1 --Collect Tomahawk (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk2
    +|cRXP_WARN_装备|r |T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #requires RogueTomahawk2
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor 54 >>|cRXP_BUY_购买一把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从她那里，如果钱够|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target 科瑞娜·斯蒂利
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .accept 112 >>接受任务 收集海藻
    .target 威廉·匹斯特
step
    #optional
    .xp 8 >>刷怪到8级
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森|r 对话
    .trainer >>训练你的职业技能
    .target Josephine Carson
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Paladin
    #season 0,1
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >>前往旅店楼下
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .target 玛克西米利安·克洛文
    .trainer >>训练你的职业技能
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：火焰箭(等级 2)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .target 塞琳娜·达克哈特
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto 1429/0,34.28,-9471.61
    .trainer >>训练你的职业技能
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target 女牧师洁塞塔
    .turnin 5624 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto 1429/0,12.69,-9465.75
    .trainer >>训练你的职业技能
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target 米歇尔·贝利
    .goto 1429/0,29.35,-9456.790
    .train 3273 >>训练 |T135966:0|t[急救]
step
    #label GoldshireEnd << Priest --Season 2
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor >>|cRXP_WARN_如有需要，购买一个|r |T133634:0|t[棕色小包] |cRXP_WARN_|r
	.target 布洛葛·哈姆菲斯特
    .money <0.1250
step
    #completewith next
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r << !Warrior !Rogue !Paladin !Hunter
    .vendor >>|cRXP_BUY_买够20个|r |T133995:0|t[达拉然奶酪]|cRXP_BUY_从他那里。如果钱够|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_如果钱够，就从他那里|r|cRXP_BUY_购买10块|r |T133995:0|t[达拉然奶酪] |cRXP_BUY_与10杯|r |T132815:0|t[冰镇牛奶] << Paladin/Hunter
    .target 旅店老板法雷
step
    #optional
    #label WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>击杀|cRXP_ENEMY_癞皮狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Mangy Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 54
step
    #optional
    #requires WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>击杀|cRXP_ENEMY_癞皮狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Mangy Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 54


step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾森·玛瑟斯|r 对话
    .accept 99127 >>接受任务 A Net Disaster
    .target Jason Mathers
step
    #softcore
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_李·布朗|r 对话
    .accept 99143 >>接受任务 Bottles and Baubles
    .target Lee Brown
step
    #loop
    .goto 1429,48.5,58.3,40,0
    .goto 1429,47.7,65.9,40,0
    .goto 1429,49.9,66.5,40,0
    >>拾取水中的 |cRXP_PICK_渔网|r 以获取 |cRXP_LOOT_吃了一半的鱼|r
    >>|cRXP_WARN_这些可能不太容易看到|r
    .complete 99127,1 -- Half-Eaten Fish (7)
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾森·玛瑟斯|r 对话
    .turnin 99127 >>交任务 A Net Disaster
    .accept 99128 >>接受任务 Slimy Menace
    .target Jason Mathers
step
    #softcore
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
    >>在地上拾取 |cRXP_PICK_垃圾堆|r 以获得 |cRXP_LOOT_闪亮的垃圾|r。|cRXP_WARN_如果你因为 |cRXP_ENEMY_鱼人|r 太多而无法拾取，跳过此目标|r
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
    .complete 99143,1 -- Shiny Junk (6)
    .disablecheckbox
step
    #hardcore
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
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
step
    #softcore
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
    >>在地上拾取 |cRXP_PICK_垃圾堆|r 以获得 |cRXP_LOOT_闪亮的垃圾|r
    >>|cRXP_WARN_如果你因为太多 |cRXP_ENEMY_渔人|r 而无法拾取，跳过此步骤|r
    .complete 99143,1 -- Shiny Junk (6)
step
    .isQuestComplete 99143
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_李·布朗|r 对话
    .turnin 99143 >>交任务 Bottles and Baubles
    .target Lee Brown
--xx abandon if didnt complete/check routing for potential later turnin
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾森·玛瑟斯|r 对话
    .turnin 99128 >>交任务 Slimy Menace
    .accept 99129 >>接受任务 A Man About a 鱼人
    .target Jason Mathers

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
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto 1429/0,-604.49,-9180.39,15 >>进入玉石矿洞
step
    #label JasperlodeExplore
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>沿中路前进，探察玉石矿洞
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .isOnQuest 91777
    .goto 1429/0,-595.100,-9072.200
    >>杀死 |cRXP_ENEMY_Geosculptor Yip|r。拾取他的战利品 |cRXP_LOOT_Geomancy for Curious Young Wizards|r
    >>|cRXP_WARN_他会召唤三个 |cRXP_ENEMY_拉姆布勒|r。如果你无法击杀他，跳过此步骤|r
    .complete 91777,1 --|1/1 Geomancy for Curious Young Wizards
    .mob Geosculptor Yip
step
    .isOnQuest 91777
    .goto 1429/0,-620.200,-9050.800
    >>击杀 |cRXP_ENEMY_母蜘蛛|r。拾取她的 |cRXP_LOOT_奥术详解：用简单的话解释魔法|r
    >>|cRXP_WARN_她会网人和喷毒。如果你无法击杀她，跳过此步骤|r
    .complete 91777,2 --|1/1 Arcane Explainer: Magical Stuff in Simple Words
    .mob Mother Fang
step
    .isQuestComplete 91777
    #completewith next
    .goto 1429/0,-590.300,-9208.101,10,0
    .goto 1429/0,-508.400,-9249.101,10,0
    .goto 1429/0,-493.900,-9208.000,10,0
    .goto 1429/0,-493.000,-9157.400,18 >>|cRXP_WARN_紧跟这箭头回到北郡上交你刚完成的任务，可以获得一把武器作为奖励|r
step
    .isQuestComplete 91777
    .goto 1429/0,-135.800,-8913.700,10,0
    .goto 1429/0,-186.200,-8874.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士::951|r 对话
    .target Brother Paxton::951
    .turnin 91777 >>交任务 精良 Books
step
    .isQuestTurnedIn 91777
    #completewith Find
    .goto 1429/0,-439.500,-9118.500,25,0
    .goto 1429/0,-468.400,-9147.200,10,0
    .goto 1429/0,-497.100,-9173.000,20 >>|cRXP_WARN_跑回你刚才翻过的山坡，抄近道前往艾尔文森林东部|r
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
step
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >>退出玉石矿洞
    .subzoneskip 54,1
step
    #optional
    #requires ExitJasperlode
    #label WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>击杀|cRXP_ENEMY_灰林狼|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>击杀|cRXP_ENEMY_灰林狼|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith Find
    +|cRXP_WARN_将一只 |cRXP_ENEMY_森林熊幼崽|r 风筝拉至|r |cRXP_FRIENDLY_卫兵托马斯|r
    >>|cRXP_WARN_试图与 |cRXP_FRIENDLY_卫兵托马斯|r 对话，在 |cRXP_ENEMY_森林熊幼崽|r 死在 |cRXP_FRIENDLY_暴风城卫兵|r 的手里之前，这样可获得任务计数|r
    >>|cRXP_WARN_确保对他造成 51% 以上的伤害，以获得击杀判定|r
    .mob 森林熊幼崽
step
    #label Find
    #requires JasperlodeRune << Mage --Season 2
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
    .target 卫兵托马斯
step
    #season 0,1 << Rogue/Priest
    #completewith AcceptBundle
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #optional
    #label WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_森林灰狼|r和|cRXP_ENEMY_觅食的灰狼|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_森林灰狼|r和|cRXP_ENEMY_觅食的灰狼|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #label LostGuards
    .goto 1429/0,-986.35,-9336.06
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #optional
    #label WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #requires WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .accept 5545 >>接受任务 木材危机
    .target 管理员莱琳
step
    #season 0,1 << Rogue
    #optional
    .goto 1429/0,-1355.20,-9469.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 拉里克·费恩
    .subzoneskip 88,1
step
    #optional
    #label WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 86 --Stone Cairn Lake
step
    #optional
    #requires WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith Prowlers
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    >>拾取树根附近地上的 |cRXP_LOOT_一捆木柴|r
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>|cRXP_WARN_站到|cRXP_PICK_罗尔夫的尸体|r上方，然后施放|r |T135954:0|t[圣佑术] |cRXP_WARN_并立刻点击|r |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_完成任务后跑开，重置 |cRXP_ENEMY_鱼人|r|r
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step << Paladin
    #hardcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_小心，|cRXP_ENEMY_鱼人强盗|r 会施放|r |T135915:0|t[喝下初级药水]|cRXP_WARN_，为自己回复 61-68 点生命值|r
    >>|cRXP_WARN_拉小屋前的2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_，拉开距离后快速集火秒掉一只。必要时使用|r|T135954:0|t|T133581:0|t[圣佑术]|cRXP_WARN_和治疗技能。这里很适合用|r|T133581:0|t|T133581:0|t[弹子球]|cRXP_WARN_。击杀一只后跑开脱战重置|r << Paladin
    >>|cRXP_WARN_记住，在|r |T135954:0|t|T135954:0|t[圣佑术] |cRXP_WARN_期间你无法攻击|r << Paladin
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step << !Paladin
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_小心，|cRXP_ENEMY_鱼人强盗|r 会施放|r |T135915:0|t[喝下初级药水]|cRXP_WARN_，为自己回复 61-68 点生命值|r
    >>|cRXP_WARN_施放 |r|T135953:0|t[恢复]|cRXP_WARN_ 和 |r|T135940:0|t[真言术：盾]|cRXP_WARN_然后恢复满法力。拉开小屋前的 2 个 |cRXP_ENEMY_鱼人|r，拉开距离后优先击杀其中一个。击杀后迅速跑开，再击杀另一个|r << Priest
    >>|cRXP_WARN_将小屋前的 2 个|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_引到你面前，拉开距离，并使用|r |T136071:0|t[变形术]|cRXP_WARN_控制其中一个，同时击杀另一个。之后再击杀被|r |T136071:0|t[变形] |cRXP_WARN_的那个|r << Mage
    >>|cRXP_WARN_积攒 100 点怒气。将小屋前的 2 个|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_拉到你面前，拉开距离，对其中一个持续使用|r |T132316:0|t[断筋]|cRXP_WARN_，同时击杀另一个。在你击杀的目标上使用|r |T133581:0|t[弹珠袋]|cRXP_WARN_。击杀一个后，远离并用|r |T132316:0|t[断筋]|cRXP_WARN_重置被风筝的那个|r << Warrior
    >>|cRXP_WARN_将小屋前的 2 个|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_引到你面前，拉开距离，集中击杀其中一个。当两者同时攻击你时，使用|r |T136205:0|t[闪避]|cRXP_WARN_。这是使用|r |T133581:0|t[弹珠袋]|cRXP_WARN_的好时机。击杀一个后，拉开距离并重置另一个|r << Rogue
    >>|cRXP_WARN_拉开小屋前的 2 个|r |cRXP_ENEMY_鱼人|r|cRXP_WARN_，远离后持续对其中一个施放 |r|T136183:0|t[恐惧]|cRXP_WARN_，并尽量在两者身上保持 DoT 效果|r << Warlock
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #optional
    #label WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith BundleOT
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>拾取树根附近地上的 |cRXP_LOOT_一捆木柴|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .turnin 5545 >>交任务 木材危机
    .target 管理员莱琳
step
    #xprate <1.5 << !Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .accept 83 >>接受任务 红色亚麻布
    .target 萨拉·迪博雷恩
step
    #optional
    #label WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith WaterloggedToolbox
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽

step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormin Pelford|r 对话
    .accept 91733 >>接受任务 Downstream
    .target Ormin Pelford
step
    >>在地上拾取 |cRXP_PICK_浸水的锯子|r
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>在地上拾取 |cRXP_PICK_浸水的斧头|r
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>在地上拾取 |cRXP_PICK_浸水的工具箱|r
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .group 3
    .goto 1429/0,-1119.800,-9931.300
    >>杀死 |cRXP_ENEMY_呱呱|r。拾取他的 |T134169:0|t[|cRXP_LOOT_呱呱的头颅|r]
    .use 247826 >>|cRXP_WARN_使用|r |T134169:0|t[|cRXP_LOOT_呱呱的头颅|r] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_他是一个11级的精英怪。如果你无法击杀他，跳过此步骤|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>接受任务 呱呱的头颅
    .mob Croaky
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
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽

step
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] |cRXP_WARN_的掉率非常低。如果没有获得，可忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务 法布隆的地契
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob 迪菲亚强盗
    .isOnQuest 83
step
    #label PrincessC
    .goto 1429/0,-869.87,-9768.10
    >>击杀 |cRXP_ENEMY_公主|r。并拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_会与她的 |r猪类随从|cRXP_ENEMY_ 一起仇恨你|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_还会施放|r |T132368:0|t[冲锋]|cRXP_WARN_，造成高额伤害|r
    >>|cRXP_WARN_在与 |r公主|cRXP_ENEMY_ 交战前，先积攒至 100 点怒气|r << Warrior
    >>|cRXP_WARN_确保 |T136205:0|t[闪避] |cRXP_WARN_已准备就绪。如果你觉得吃力，可以利用围栏并使用投掷武器卡路径来拖延时间|r << Rogue
    >>|cRXP_WARN_准备好使用|r |T134830:0|t[次级治疗药水]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_点击此处查看视频参考|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob 公主
step
    #label DefiasBandits
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-869.87,-9768.10
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob 迪菲亚强盗
    .isOnQuest 83
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .xp <9,1
step
    #label DeliverStart
    .goto 1429/0,-1032.06,-9610.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
    .target 卫兵托马斯
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormin Pelford|r 对话
    .turnin 91733 >>交任务 Downstream
    .target Ormin Pelford
step << Warlock/Warrior/Rogue/Hunter
    .isQuestNotComplete 91740
	.goto 1429/0,-877.85,-9778.98
    .xp 9+3510 >>刷怪达到3510+/6500经验 << Warlock/Hunter
    .xp 9+3420 >>刷怪达到3420+/6500经验 << Warrior/Rogue
step << Warlock/Warrior/Rogue/Hunter
    .isQuestComplete 91740
    #label Level9Grind
	.goto 1429/0,-877.85,-9778.98
    .xp 9+2670 >>刷怪达到2670+/6500点经验 << Warlock/Hunter
    .xp 9+2580 >>刷怪达到2580+/6500点经验 << Warrior/Rogue
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .zoneskip Redridge Mountains
    .xp >10,1 -- shows to 9 and under
--XX not worth deathskipping as a warlock due to having to resumm pet
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 83 >>交任务 红色亚麻布
    .target 萨拉·迪博雷恩
    .isQuestComplete 83
step
    #optional
    #completewith next
    .subzone 798 >>前往赤脊山
step
    #optional
    .isQuestComplete 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Merell Ross::248277|r 对话
    .target Merell Ross::248277
    .turnin 91740 >>交任务 呱呱的头颅
step << !Warlock
    #optional
    #label WolfMeatCooking8
    #requires EVDeathskip
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Warlock
    #label RedridgeS
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>前往赤脊山
step << !Warlock
    #optional
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .xp >10,1 -- shows to 9 and under
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25 >>|cRXP_WARN_小心：沿着主路走，避开沿途的近距离怪物|r
step << !Warlock
    #optional
    .goto 1433/0,-2237.93,-9443.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step
    #optional
    #completewith CollectKelp
    .hs >>使用炉石返回闪金镇
step << Warrior/Rogue
    #optional
    #completewith Escape
    +|cRXP_WARN_注意管理你的金币，尽量为后续前往暴风城保留32银8铜|r << Rogue
    +|cRXP_WARN_注意管理你的金币，因为之后需要为暴风城和铁炉堡保留31银85铜|r << Warrior
    >>|cRXP_WARN_在此之前每次交任务可获得16银50铜|r << Rogue
    >>|cRXP_WARN_在此之前，每次交任务你将获得18银25铜|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    #label CollectKelp
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 112 >>交任务 收集海藻
    .timer 9,收集海藻 剧情
    .accept 114 >>接受任务 梅贝尔的隐形水
    .target 威廉·匹斯特
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto 1429/0,12.52,-9479.85,9 >>前往旅店楼上
step << Warrior/Rogue
    .goto 1429/0,29.35,-9456.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 米歇尔·贝利
step << Rogue
    #optional
    #label RogueOptTrain
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 科瑞恩·塞尔留斯
    .xp <10,1
step
    .goto 1429/0,74.02,-9465.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 39 >>交任务 托马斯的报告
    .turnin 76 >>交任务 玉石矿洞
    .accept 239 >>接受任务 西泉要塞
    .accept 59 >>接受任务 布甲和皮甲 << Warlock
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .target 治安官杜汉
step
    #sticky
    #label GoldshireVendor
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 科瑞娜·斯蒂利
    .money >0.75
step
    .goto 1429/0,87.87,-9456.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .accept 1097 >>接受任务 艾尔默的任务
    .target 铁匠阿古斯
step
    #optional
    #completewith RoughWolfPelts
    .goto 1429/0,-81.900,-9381.800,5 >>前去找房子里的 |cRXP_FRIENDLY_海伦尼·派特斯金纳|r
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91746
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海伦尼·派特斯金纳|r 对话
    .turnin 91746 >>交任务 榆爪的头颅
    .target Helene Peltskinner
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 97924
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海伦尼·派特斯金纳|r 对话
    .turnin 97924 >>交任务 露营基础：剥皮
    .target Helene Peltskinner
step
    #label RoughWolfPelts
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91751
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海伦尼·派特斯金纳|r 对话
    .turnin 91751 >>交任务 粗糙的狼皮
    .target Helene Peltskinner
step << Warlock/Warrior/Hunter
    #requires GoldshireVendor
    #optional
    .xp 10 >>刷怪到10级
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森::251507|r 对话
    .target Josephine Carson::251507
    .accept 94792 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
step << Hunter
    #loop
    .goto 1429/0,28.100,-9768.101,40,0
    .goto 1429/0,-36.100,-9814.500,40,0
    .use 266158 >>|cRXP_WARN_对|r |cRXP_WARN_石皮野猪|r |cRXP_ENEMY_使用|r |T132164:0|t[驯兽棒]
    .complete 94792,1 -- Tame a Rockhide Boar (1)
    .mob Rockhide Boar
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森::251507|r 对话
    .target Josephine Carson::251507
    .turnin 94792 >>交任务 驯服野兽
    .accept 94863 >>接受任务 驯服野兽
step << Hunter
    #loop
    .goto 1429/0,-556.600,-9524.300,40,0
    .goto 1429/0,-626.200,-9430.800,40,0
    .use 266253 >>|cRXP_WARN_对|r |cRXP_WARN_森林灰狼|r |cRXP_ENEMY_使用|r |T132164:0|t[驯兽棒]
    >>|cRXP_WARN_确保你已经解散了之前的|r |cRXP_ENEMY_石皮野猪|r
    .complete 94863,1 -- Tame a Gray Forest Wolf (1)
    .mob Gray Forest Wolf
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森::251507|r 对话
    .target Josephine Carson::251507
    .turnin 94863 >>交任务 驯服野兽
    .accept 94864 >>接受任务 驯服野兽
step << Hunter
    #loop
    .goto 1429/0,-14.600,-9797.800,40,0
    .goto 1429/0,-146.800,-9784.500,40,0
    .goto 1429/0,-325.300,-9844.300,40,0
    .use 266254 >>|cRXP_WARN_对|r |cRXP_WARN_森林熊幼崽|r |cRXP_ENEMY_使用|r |T132164:0|t[驯兽棒]
    >>|cRXP_WARN_确保你已经遣散了你的上一个|r |cRXP_ENEMY_森林灰狼|r
    .complete 94864,1 -- Tame a Young Forest Bear (1)
    .mob 森林熊幼崽
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森::251507|r 对话
    .target Josephine Carson::251507
    .turnin 94864 >>交任务 驯服野兽
    .accept 94793 >>接受任务 训练野兽
step << Hunter
    .goto 1429/0,85.000,-9475.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Isaac Chan::258930|r 对话
    .target Isaac Chan::258930
    .turnin 94793 >>交任务 训练野兽
    .trainer >>训练你的宠物技能
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .accept 1638 >>接受任务 战士的训练
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
    .money <0.5
step << Warrior
    #optional
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    >>|cRXP_WARN_不要学技能，因为你需要为后续存钱|r
    .accept 1638 >>接受任务 战士的训练
    .target 里瑞亚·杜拉克
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .accept 2998 >>接受任务圣洁之书
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >>前往旅店楼下
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 和 |cRXP_FRIENDLY_雷门·玛考特|r 对话
    .trainer >>训练你的职业技能
    .goto 1429/0,-5.36,-9472.760
    .target 玛克西米利安·克洛文
    .accept 1685 >>接受任务 加科因的召唤
    .goto 1429/0,-8.58,-9473.41
    .target 雷门·玛考特
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,18.66,-9476.47,10 >>上楼
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
    .accept 5635 >>接受任务 绝望祷言
    .trainer >>训练你的职业技能
    .target 女牧师洁塞塔
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto 1429/0,34.28,-9471.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
    .trainer >>训练你的职业技能
    .target 扎尔迪玛·维夫希尔特
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_只学习|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[疾跑]|cRXP_WARN_。不要学习其他技能，把金币留到后面使用|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 科瑞恩·塞尔留斯
--XX skip quest, not worth going inside for
step << !Warlock
    #completewith PrincessFinish
    #optional
    .abandon 59 >>放弃任务 布甲和皮甲

step
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .turnin 99129 >>交任务 A Man About a 鱼人
    --.accept 99130 >> Accept An Enticing Offer
    .target 雷米
    --skipping the follow up. terrible drop rates/respawn times

step << skip
    >>在艾尔文森林的农场中拾取 |cRXP_PICK_暮草花瓣|r
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |cRXP_LOOT_一瓶动物血液|r
    .complete 99130,1 -- Duskweed Petal 18/18
    .complete 99130,2 -- Vial of Animal Blood 6/6
    .mob +Stonetusk Boar
step << skip
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .turnin 99130 >>交任务 An Enticing Offer
    .accept 99131 >>接受任务 Baited for 成功
    .target 雷米
sstep << skip
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾森·玛瑟斯|r 对话
    .turnin 99131 >>交任务 Baited for 成功
    .target Jason Mathers



step
    #optional
    #label BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 石牙野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 石牙野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,37.61,-10014.03,50 >>前往马科伦农场
step
    #label Escape
    #requires GoldshireVendor
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .turnin 114 >>交任务 梅贝尔的隐形水
    .target 梅贝尔·马科伦
step
    #label PrincessFinish
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .turnin 88,1 >>交任务 公主必须死！ << Rogue/Hunter
    .turnin 88,2 >>交任务 公主必须死！ << Warrior/Paladin
    .turnin 88,3 >>交任务 公主必须死！ << !Rogue !Hunter !Warrior !Paladin
    .target 斯通菲尔德妈妈
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+4510 >>沿途刷怪，获得4510+/6500经验
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+5110 >>沿途刷怪，获得5110+/6500经验
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto 1429/0,673.96,-9704.45,80 >>前往西泉要塞
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人 << Warlock
    .goto 1429/0,694.29,-9662.790
    .target 瑞尼尔副队长
    >>点击 |cRXP_PICK_通缉布告|r << Warlock
    .accept 176 >>接受任务 通缉：霍格 << Warlock
    .goto 1429/0,683.40,-9667.93 << Warlock
step << Warlock
    #completewith GnollEnd
    >>击杀 |cRXP_ENEMY_河爪豺狼人幼崽|r 和 |cRXP_ENEMY_河爪斥候|r，拾取它们掉落的 |T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_采金日程表|r] |cRXP_WARN_掉率非常低。如果没有获得，可忽略此步骤|r
    >>|cRXP_ENEMY_格拉夫·疾齿|r |cRXP_WARN_为稀有刷新怪，但掉落率为 100%|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
    .unitscan 格拉夫·疾齿
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>击杀 |cRXP_ENEMY_霍格|r。拾取他的 |cRXP_LOOT_人爪|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_可能会在多个位置刷新|r
    >>|cRXP_WARN_持续对 |r霍格|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r，并使用你的常规 DoT 技能将其击杀|r
    >>|cRXP_WARN_如有必要，将他风筝回哨塔，确保你已对其造成至少50%伤害|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan 霍格
step << Warlock
    #label GnollEnd
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .isOnQuest 11
step << Warlock
    .goto 1429/0,694.29,-9662.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 11 >>交任务 悬赏河爪豺狼人
    .target 瑞尼尔副队长
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >>沿途刷怪，获得4575+/6500经验
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >>沿途刷怪，获得5175+/6500经验
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>放弃任务 收货人
step << !Hunter
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >>前往西部荒野
step << !Hunter
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .turnin 184 >>交任务 法布隆的地契
    .goto 1436/0,918.42,-9851.50
    .target 农夫法布隆
    .accept 151 >>接受任务 老马布兰契
    .accept 36 >>接受任务 杂味炖肉
    .goto 1436/0,919.47,-9853.13
	.target 弗娜·法布隆
    .isOnQuest 184
step << !Hunter
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .goto 1436/0,918.42,-9851.50
    .target 农夫法布隆
    .accept 151 >>接受任务 老马布兰契
    .accept 36 >>接受任务 杂味炖肉
    .goto 1436/0,919.47,-9853.13
	.target 弗娜·法布隆
step << !Hunter
    #optional
    #completewith next
    +|cRXP_WARN_暂时不要拾取任何|r |T134059:0|t[|cRXP_PICK_一袋燕麦|r] |cRXP_WARN_除非你给自己寄了大容量背包，因为你需要为接下来的环节保留背包空间|r
    .isOnQuest 151
step << !Hunter
    #sticky
    #label Fields
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .accept 9 >>接受任务 清理荒野
    .target Farmer Saldean
step << !Hunter
    .goto 1436/0,1042.11,-10112.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔玛·萨丁|r 对话，NPC在里面
    .turnin 36 >>交任务 杂味炖肉
    .accept 38 >>接受任务 杂味炖肉
    .accept 22 >>接受任务 猪肝馅饼
    .target 萨尔玛·萨丁
step << !Hunter
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5775 >>刷怪达到5775+/6500经验
    .subzoneskip 108
step << !Hunter
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5410 >>刷怪达到5410+/6500经验
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>刷怪到5360+/8800经验
--XX 625+210+85+800 = 1720 x2 = 3440
step << skip
    #softcore
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
-- .subzoneskip 108
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_治安官格里安·斯托曼|r 和 |cRXP_FRIENDLY_丹努文队长|r 对话 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话 << Hunter
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .accept 12 >>接受任务 西部荒野人民军 << !Hunter
    .goto 1436/0,1045.22,-10508.800
    .target +Gryan Stoutmantle
    .accept 102 >>接受任务 西部荒野的豺狼人 << !Hunter
    .goto 1436/0,1041.93,-10511.20 << !Hunter
    .target +Captain Danuvin << !Hunter
step << Human
    #optional
    .goto 1436/0,1055.27,-10128.70
    .xp 10 >>刷怪练级到 10 级
step
    .goto 1436/0,1021.60,-10500.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .accept 6181 >>接受任务 快捷的消息 << Human
    .target 军需官刘易斯
    .isQuestAvailable 6181 << Human
step << Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .turnin 6181 >>交任务 快捷的消息
    .accept 6281 >>接受任务 前往暴风城
    .target 索尔
step
    #label FlySW
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step
    #season 0,1 << Paladin
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_我们选择的奖励是|r |T132383:0|t[爆破火箭] |cRXP_WARN_它能造成不错的伤害，还可以用于"仇恨分离"，非常实用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考。这是一个简短却非常有价值的教学视频|r
    .target 摩根·匹斯特
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target 萨尔曼·穆比
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target 萨尔曼·穆比
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior/Rogue
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习单手剑和法杖 << Warlock/Mage
    .trainer >>学习单手剑 << Rogue
    .trainer >>学习法杖 << Priest
    .trainer >>学习双手剑 << Warrior/Paladin
    .target 吴平
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
    .money <0.55 << Rogue
step << Warlock/Mage
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习法杖
    .target 吴平
step << Priest/Mage/Warlock
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_WARN_如果你钱够的话，购买以下物品：|r
    >>|T134711:0|t[初级巫师之油] |cRXP_WARN_和|r |T133906:0|t[烤鼠尾鱼]
    >>|cRXP_WARN_顺便看看有没有当前或稍后可用的高DPS的|r |T132317:0|t[法杖] |cRXP_WARN_升级装备|r
    >>|cRXP_WARN_这些物品能在前期带来大幅DPS提升。如果你不想做或不能做，就跳过这一步|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target 拍卖师亚克森
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_从他那里购买一把|r |T132402:0|t[短柄斧] |cRXP_BUY_到达11级后装备上|r
    .collect 853,1 -- Hatchet (1)
    .target 冈瑟尔·维勒
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp >11,1
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T132402:0|t[短柄斧]
    .collect 853,1 -- Hatchet (1)
    .target 冈瑟尔·维勒
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp <11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_从他那里购买一把|r |T132402:0|t[短柄斧] |cRXP_BUY_到达11级后装备上|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    >>|cRXP_WARN_务必保留 6 银币，用于之后的训练|r
    .collect 853,1 -- Hatchet (1)
    .target 冈瑟尔·维勒
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp >11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T132402:0|t[短柄斧]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    >>|cRXP_WARN_务必保留 6 银币，用于之后的训练|r
    .collect 853,1 -- Hatchet (1)
    .target 冈瑟尔·维勒
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_装备|r |T132402:0|t[短柄斧]
    .use 853
    .itemcount 853,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
    .bindlocation 16509
step << Hunter
    .goto 1453/0,702.700,-8791.800
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r对话
    >>|cRXP_BUY_购买并装备1把|r |T135489:0|t[多层弯弓]
    .collect 2507,1
    .target Lina Stover
    .money <0.1664
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1453/0,702.700,-8791.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黎娜·斯图瓦|r对话
	.vendor >>|cRXP_BUY_购买 6 组|r |T132382:0|t[锋利的箭] |cRXP_BUY_并销毁所有剩余的|r |T132382:0|t[劣质箭]
    .target Lina Stover
step << Hunter
    #completewith next
    .equip 18,2507 >>|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1 --Hornwood Recurve Bow (1)


----Warlock Elwynn Voidwalker Section Start----
step << Warlock
    #optional
    #completewith GakinStart
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    #xprate >1.59
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 705 >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 689 >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1685 >>交任务 加科因的召唤
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target 黑暗缚灵者加科因
step << Warlock skip
    #softcore
    .deathskip >>使用 |T136126:0|t[生命分流] 并站在你旁边的篝火上自杀，然后在 |cRXP_FRIENDLY_灵魂医者|r 处复活
    .target 灵魂医者
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >>离开暴风城
step << Warlock
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >>前往金雾村
step << Warlock
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >>交任务 通缉：霍格
    .turnin 123 >>交任务 收货人
    .target 治安官杜汉
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >>交任务 通缉：霍格
    .target 治安官杜汉
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_装备|r |T135145:0|t[平衡长棍]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    #label BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>击杀|cRXP_ENEMY_石皮野猪|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>击杀|cRXP_ENEMY_石皮野猪|r。从它们身上拾取|T133970:0|t|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #completewith SChoker
    .subzone 62 >>前往布莱克威尔南瓜地
    .isOnQuest 1688
step << Warlock
    #optional
    #completewith SChoker
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] |cRXP_WARN_的掉率非常低。如果没有获得，可忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务 法布隆的地契
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto 1429/0,-911.52,-9735.70,0
    .goto 1429/0,-921.93,-9812.08,0
    .waypoint 1429/0,-911.52,-9735.70,60,0
    .waypoint 1429/0,-828.22,-9733.39,60,0
    .waypoint 1429/0,-831.69,-9823.65,60,0
    .waypoint 1429/0,-921.93,-9812.08,60,0
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob 迪菲亚强盗
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto 1429/0,-932.35,-9806.53
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step << Warlock
    #optional
    #label WolfMeatCooking9
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r，拾取它们身上的 |T133970:0|t|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有狼即可|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Warlock
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
    .turnin 83 >>交任务 红色亚麻布
    .target 萨拉·迪博雷恩
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
    .target 萨拉·迪博雷恩
step << Warlock
    #optional
    #completewith Gnolls
    #label SoulShards
    >>|cRXP_WARN_沿途刷怪升级。在抵达赤脊山前，确保你至少有2个|r |T134075:0|t|T136163:0|t[|cRXP_LOOT_灵魂碎片|r]|cRXP_WARN_——通过|r |T136163:0|t|T136163:0|t[|cRXP_FRIENDLY_吸取灵魂|r]在怪物即将死亡时使用
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>前往赤脊山
step << Warlock
    #label Gnolls
    #requires SoulShards
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
    .target 卫兵帕克
step << Warlock
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25,0
    .goto 1433/0,-2238.00,-9443.69,25 >>前往湖畔镇
    >>|cRXP_WARN_沿主路行进，避开沿途的近距离怪物|r
    .target 菲尔顿副队长
step << Warlock
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
step << Warlock
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
step << Warlock
    #completewith TheBinding
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    #optional
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <12,1
step << Warlock
    #label TheBinding
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务誓缚
    .target 黑暗缚灵者加科因
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈环] |cRXP_WARN_召唤 |r虚空行者|cRXP_ENEMY_|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob 虚空行者
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target 黑暗缚灵者加科因
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >>交任务誓缚


----Warlock Elwynn Voidwalker Section End----

step << Rogue
    #xprate <1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_只训练|r |T132147:0|t|T132307:0|t[双武器] |cRXP_WARN_和|r |T132307:0|t|T132307:0|t[疾跑]
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 夜行者奥斯伯
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target 夜行者奥斯伯
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    .train 1766 >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <14,1
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_装备|r |T135346:0|t|T135346:0|t[卷刃的剑] |cRXP_WARN_在你的副手|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_如果你现在还没学会|r |T132147:0|t|T132147:0|t[双持] |cRXP_WARN_，别担心，之后需要时再买一把武器就行|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #label Continue
    .goto 1453/0,382.02,-8702.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r 对话
    .turnin 6281 >>交任务 前往暴风城
    .accept 6261 >>接受任务 杜加尔·朗德瑞克 << !Hunter
    .target 奥斯瑞克·斯图恩
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
    .target 哈里·伯加德
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
    .target 巴特莱比
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>攻击 |cRXP_ENEMY_巴特莱比|r。他会在1% 生命值时投降
    .complete 1640,1 --Beat Bartleby
    .mob 巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target 巴特莱比
    .goto 1453/0,389.07,-8604.43
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target 哈里·伯加德
step << Priest
    #optional
    #completewith Prayer
    .goto 1453/0,809.52,-8579.22,20 >>进入暴风城大教堂
step << Priest
    #optional
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5635 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .isOnQuest 5635
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 5634 >>交任务 绝望祷言
    .train 8092 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .train 13908,3
step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 1097 >>交任务 艾尔默的任务
    .accept 353 >>接受任务 雷矛的包裹
    .target 格瑞曼德·艾尔默
step << Warrior
    #season 0,1
    #optional
    #completewith DeeprunEnter
    +|cRXP_WARN_原地待命|r |T132363:0|t|T132282:0|t[破甲攻击] |cRXP_WARN_拖到动作条上并持续使用，这比使用|r |T132282:0|t|T132282:0|t[英勇打击]更有效
step << Warrior/Paladin/Rogue
    #optional
    .goto 1453/0,624.15,-8431.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯塔·深炉|r 对话
    .collect 2901,1,432,1 >>|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]|cRXP_BUY_从她那里|r
    >>|cRXP_WARN_你之后会学习|r |T134708:0|t|T134708:0|t[采矿] |cRXP_WARN_的|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>进入矿道地铁
    .zoneskip Ironforge
step << skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
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
    .zone Ironforge >>进入铁炉堡
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >>前往 |cRXP_FRIENDLY_比尔班·飞钳|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    >>|cRXP_WARN_确保你保留20银70铜以备后用|r
    .train 2687 >>训练你的职业技能
    .target 比尔班·飞钳
    .xp <10,1
    .xp >12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>进入木材线武器店建筑
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 2567 >>训练 投掷武器
    .goto 1455/0,-1205.65,-5042.12
    .target 比克斯
    .train 199 >>学习双手锤
    .goto 1455/0,-1197.27,-5041.49
    .target 布里维夫·石拳
step << Warrior
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target 布雷文·寒钢
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target 布雷文·寒钢
    .xp >10+7405,1
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
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
step << Mage/Paladin
    #optional
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-928.40,-4635.61,20,0 << Paladin
    .goto 1455/0,-931.8,-4627.59,20,0 << Mage
    .goto 1455/0,-928.40,-4614.51,12 >>前去找 |cRXP_FRIENDLY_丁克|r << Mage
    .goto 1455/0,-896.47,-4601.65,12 >>前往 |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
step << Mage
    .goto 1455/0,-928.40,-4614.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_丁克|r 对话
    .train 122 >>训练你的职业技能
    .target 丁克
step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话，NPC在里面
    .train 633 >>训练你的职业技能
    .target 布兰度尔·铁锤
step << skip -- for dungeon route only
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r 对话
    .home >>将你的炉石设置为铁炉堡
    .target 旅店老板洛雷·火酒
    .bindlocation 1537
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹快速交任务并提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_BUY_技能：|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
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
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1426,53.47,35.02
    >>离开铁炉堡
    .zone Dun Morogh >>前往 丹莫罗
--logout skip - remove if logout skips re-added
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架::1376|r 对话 
    .target Beldin Steelgrill::1376
    .accept 96408 >>接受任务 A Visitor to 丹莫罗
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 老峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 老峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>沿土路上行
    .isQuestAvailable 314
step
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难请点击这里|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob 瓦加什
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
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target 鲁德拉·冻石
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
    .mob 瓦加什
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target 鲁德拉·冻石
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 大峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 大峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin -96408 >>交任务 A Visitor to 丹莫罗
    .accept 96392 >>接受任务 Farsen's Watch
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话查看他的远视
    >>|cRXP_WARN_目标完成后你可以取消远视|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_按ESC键取消远视|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_目标完成后你可以取消远视|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_按ESC键取消远视|r
    .turnin 96392 >>交任务 Farsen's Watch
    .accept 96390 >>接受任务 防患于未然
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target 厨师格瑞姆
step << !Human
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_如果需要的话|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_如果需要的话|r << !Warrior !Rogue
    .target 卡杉·莫格什
    .xp >15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .goto 1426/0,-1579.96,-5714.73
    .target 参议员梅尔·圣石
    .accept 432 >>接受任务 该死的穴居人！
    .goto 1426/0,-1600.30,-5726.590
    .target 工头乔尼·石眉
step << Warrior/Paladin/Rogue
    .goto 1426/0,-1612.12,-5697.89
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丹克·利刃|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    >>|cRXP_WARN_该物品用于|r |T136241:0|t[锻造] |cRXP_WARN_可制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_和|r |T135255:0|t[劣质平衡石] |cRXP_WARN_用来提高你的武器伤害|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .target 丹克·利刃
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    .goto 1426/0,-1679.89,-5728.88,40,0
    .goto 1426/0,-1675.95,-5597.22,25,0
    .goto 1426/0,-1679.89,-5728.88
    >>击杀 |cRXP_ENEMY_石腭击颅者|r 和 |cRXP_ENEMY_石腭断骨者|r 。它们在洞穴里
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob 石腭断骨者
step
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .goto 1426/0,-1600.30,-5726.590
    .target 工头乔尼·石眉
    .turnin 433 >>交任务 公众之仆
    .goto 1426/0,-1579.96,-5714.73
    .target 参议员梅尔·圣石
step << !Warrior !Rogue !Paladin !Hunter
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r
    .target 卡杉·莫格什
    .xp >15,1
step
    #completewith OII
    >>击杀 |cRXP_ENEMY_石腭伏击者|r，并拾取他们的 |T132621:0|t[|cRXP_LOOT_空火药桶|r]
    .use 268548 >>|cRXP_WARN_使用|r |T132621:0|t[|cRXP_LOOT_空火药桶|r] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_注释：这个物品掉落率很低。如果你在完成了|r 黑铁间谍|cRXP_ENEMY_ 任务时还没有找到它，请跳过此步骤|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >>接受任务 被偷走的炸药粉
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>击杀 |cRXP_ENEMY_黑铁间谍|r，并拾取他们的 |T237385:0|t[|cRXP_LOOT_黑铁地图|r]
    .use 274268 >>|cRXP_WARN_使用|r |T237385:0|t[|cRXP_LOOT_黑铁地图|r] |cRXP_WARN_来开始任务|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>接受任务 Underground Map
    .mob 黑铁间谍
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin 96390 >>交任务 防患于未然
    .turnin 96391 >>交任务 Underground Map
    .accept 96393 >>接受任务 旧铁炉堡入侵
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .turnin 95213 >>交任务 被偷走的炸药粉
    .accept 95214 >>接受任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .accept 95214 >>接受任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>击杀 |cRXP_ENEMY_石腭伏击者|r。拾取它们的 |cRXP_LOOT_被偷走的炸药粉|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .turnin 95214 >>交任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target 驾驶员塞克·锤足
step
    .goto 1426/0,-2121.76,-5064.70
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step
    .goto 1426/0,-2087.19,-5096.51
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob 癞爪
step
    #label Revenge
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .turnin 417,1 >>交任务 驾驶员的复仇 << Rogue
    .turnin 417 >>交任务 驾驶员的复仇 << !Rogue
    .target 驾驶员塞克·锤足
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_将|r |T135641:0|t[工匠匕首] |cRXP_WARN_装备在副手|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto 1426/0,-2354.62,-4898.20,25 >>穿过隧道前往洛克莫丹
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#name 11-13级 洛克莫丹
#displayname 13-15级 洛克莫丹 << SoD
#next 13-15级 西部荒野 << !Hunter
#next 14-16级 黑海岸 << Hunter
#defaultfor Human

step -- dont delete
    #label NormalRouteStart
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>出售物品并修理装备
    .target 高索·布鲁姆
step
    .goto 1432/0,-2676.82,-4825.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    >>|cRXP_WARN_先别接受卡尔·雷矛的订单|r
    .turnin 353 >>交任务 雷矛的包裹
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step
    #optional
    #label BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
step
    #optional
    #requires BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144
step
    #optional
    #completewith ThelsamarFirst
    >>击杀|cRXP_ENEMY_老黑熊|r。从它们身上拾取|T134027:0|t|T134027:0|t|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r。从它们身上拾取|T134342:0|t|T134342:0|t|cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的|T134437:0|t |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    .subzoneskip 144
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >>前往塞尔萨玛，洛克莫丹
    .isQuestAvailable 1339
step
    #requires Thelsamar
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦希尔德·暗爪|r 对话
    .accept 86667 >>接受任务 困于风雪
    .target Grenhild Darktalon
step
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .target 维德拉·壁炉
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target 维德拉·壁炉
    .isQuestComplete 418
step
    #optional
    #completewith StormpikeO
    .abandon 1338 >>放弃 卡尔·雷矛的订单。这是为了解锁 雷矛山地兵的任务，该任务在交付时可免费获得 550 点经验值
step
    #completewith next
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor 1682 >>|cRXP_BUY_需要的话可以从她那里|r|cRXP_BUY_购买最多2个|r |T133634:0|t[棕色小包]
    .target 雅尼·铁心
step << !Warrior !Rogue !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话
    .vendor 6734 >>|cRXP_BUY_购买|r |T132815:0|t|T132815:0|t[冰镇牛奶]|cRXP_BUY_。瞄准大约20个|r
    .target 旅店老板纳克罗·壁炉
    .xp >15,1
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fp Thelsamar >>获取塞尔萨玛的飞行路径
    .target 索格拉姆·伯雷森
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>|cRXP_WARN_沿着土路跑上去，然后跳进地堡|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .accept 267 >>接受任务 穴居人的威胁
    .target 拉格弗斯上尉
step
    #label DefenseStart
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>前往南门小径隧道外地面上的积雪处
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_在雪地上使用|r |T1387609:0|t[陶瓷罐] |cRXP_WARN_来收集|r |T1387609:0|t[雪罐]
    .complete 86667,1 -- Jar of Snow 1/1
step
    #optional
    #label BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #sticky
    #label BoarBearSpider
    >>击杀|cRXP_ENEMY_老黑熊|r。从它们身上拾取|T134027:0|t|T134027:0|t|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r。从它们身上拾取|T134342:0|t|T134342:0|t|cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的|T134437:0|t |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #completewith MinerGear
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的|T133854:0|t |cRXP_LOOT_坑道鼠耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    .goto 1432/0,-3146.73,-4837.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Norric Lochthane|r 对话
    .turnin 86667 >>交任务 困于风雪
    .target Norric Lochthane
step
    #requires BoarBearSpider
    #label SilverStream
    #completewith MinerGear
    .goto 1432/0,-2972.96,-4835.187,20 >>进入银泉矿洞，沿途击杀|cRXP_ENEMY_狗头人|r 获取 |T133854:0|t[|cRXP_LOOT_耳朵|r]
step
    #label MinerGear
    .goto 1432/0,-2984.82,-4902.33
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    >>|cRXP_WARN_若想暂时跳过此任务，可等到等级更高时再来完成|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    #label BuyMace
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔伦·安德玛|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133476:0|t|T133053:0|t[重型尖刺钉锤] |cRXP_BUY_或|r |T133053:0|t|T133053:0|t[铁木槌] |cRXP_BUY_（如果有货的话）|r
    >>|cRXP_WARN_如果买不起，就去附近的|cRXP_ENEMY_坑道鼠|r那里刷钱，直到攒够为止|r
    >>|cRXP_WARN_动作要快，否则其他玩家可能会在你之前买下它|r
    >>|cRXP_WARN_如果你不想这样做，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target 尼尔伦·安德玛
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_装备|r |T133476:0|t|T133476:0|t[重型尖刺钉锤]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_装备|r |T133053:0|t|T133053:0|t[铁木槌]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |T133854:0|t|cRXP_LOOT_耳朵|r
    >>|cRXP_WARN_确保你身上有10个|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_用于后续的圣骑士职业任务|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    #optional
    #completewith StormpikeDelivery
    >>击杀|cRXP_ENEMY_老黑熊|r。从它们身上拾取|T134027:0|t|T134027:0|t|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r。从它们身上拾取|T134342:0|t|T134342:0|t|cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的|T134437:0|t |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target 高索·布鲁姆
step << Human
    #label StormpikeDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .target 巡山人雷矛
step
    #optional
    #label BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #loop
    >>击杀|cRXP_ENEMY_老黑熊|r。从它们身上拾取|T134027:0|t|T134027:0|t|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r。从它们身上拾取|T134342:0|t|T134342:0|t|cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的|T134437:0|t |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto 1432/0,-2735.74,-4684.34,0
    .goto 1432/0,-2782.63,-4770.80,0
    .goto 1432/0,-3080.53,-5100.08,0
    .waypoint 1432/0,-2735.74,-4684.34,90,0
    .waypoint 1432/0,-2846.07,-4682.50,90,0
    .waypoint 1432/0,-2782.63,-4770.80,90,0
    .waypoint 1432/0,-2835.04,-4976.83,90,0
    .waypoint 1432/0,-2915.03,-5044.89,90,0
    .waypoint 1432/0,-3080.53,-5100.08,90,0
    .mob 老黑熊
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto 1432/0,-3041.92,-5129.51,0
    .goto 1432/0,-2815.73,-5147.91,0
    .goto 1432/0,-2782.63,-4903.25,0
    .waypoint 1432/0,-3041.92,-5129.51,90,0
    .waypoint 1432/0,-3017.09,-5219.65,90,0
    .waypoint 1432/0,-2815.73,-5147.91,90,0
    .waypoint 1432/0,-2757.81,-4952.91,90,0
    .waypoint 1432/0,-2782.63,-4903.25,90,0
    .mob 山猪
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto 1432/0,-2873.66,-4789.19,0
    .goto 1432/0,-2926.07,-5232.53,0
    .goto 1432/0,-3069.5,-5078.01,0
    .waypoint 1432/0,-2873.66,-4789.19,90,0
    .waypoint 1432/0,-2766.08,-4866.45,90,0
    .waypoint 1432/0,-2926.07,-5232.53,90,0
    .waypoint 1432/0,-2992.27,-5055.93,90,0
    .waypoint 1432/0,-3069.5,-5078.01,90,0
    .mob 森林潜伏者
step
    #completewith FlintTinder
    .subzone 144 >>回到塞尔萨玛
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
    .isQuestComplete 416
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入烈酒旅店
step
    .isQuestComplete 418
    #label FlintTinder
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target 维德拉·壁炉
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
    .isQuestComplete 416
step
    .goto 1432/0,-2747.60,-5530.540
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_石牙|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    >>|cRXP_WARN_这是一个超级刷怪点，你无需离开这里|r
    >>|cRXP_WARN_确保你身上有10个|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_用于后续的圣骑士职业任务|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob 碎石穴居人
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob 碎石怪斥候
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob 碎石穴居人
    .mob 碎石怪斥候
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>|cRXP_WARN_沿着土路跑上去，然后跳进地堡|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target 拉格弗斯上尉
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
    .isQuestComplete 224

step << Warlock
    #optional
    #completewith next
    .goto 1432/0,-2747.60,-5530.540,0
    +刷|cRXP_ENEMY_穴居人|r直到你拥有价值75银79铜的灰色物品/金币
    .money >0.7579
step << Warlock
    #optional
    .goto 1432/0,-2747.60,-5530.540
    .xp 14 >>刷怪到14级
    >>|cRXP_WARN_如果你计划在铁炉堡打领主大厅副本，可以飞往铁炉堡并跳过此步骤|r

step << !Warrior
    #optional
    .goto 1432/0,-2747.60,-5530.540
    +继续刷 |cRXP_ENEMY_穴居人|r 直到你的 |T134414:0|t[炉石] 准备好
    .cooldown item,6948,<1
    .mob 碎石穴居人
    .mob 碎石怪斥候

step << Human Warrior -- flying IF to train thrown before going westfall/darkshore
    #completewith next
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Ironforge
step << Human Warrior
    #optional
    .goto 1455/0,-1203.78,-5041.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比克斯|r 对话
    .train 2567 >>训练 投掷武器
    .target 比克斯
step << Human Warrior
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    .goto 1455/0,-1234.65,-5035.67
    .trainer >>训练你的职业技能
    .target 比尔班·飞钳
    .zoneskip Ironforge,1

step -- dont delete
    #label NormalRouteEnd

step
    .hs >>炉石回到暴风城
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Westfall

step << Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_这个是用来|r在船上制作 |cRXP_WARN_|T135805:0|t[基础营火]，以便在不浪费时间的情况下提升你的 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target 萨尔曼·穆比
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在西部荒野和黑海岸更快交任务：|r
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
    .target 拍卖师亚克森
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在西部荒野和黑海岸更快交任务：|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师亚克森
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock/Mage/Rogue/Priest/Warrior/Paladin
    #optional
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习单手剑和法杖 << Warlock/Mage
    .trainer >>学习单手剑 << Rogue
    .trainer >>学习法杖 << Priest
    .trainer >>学习双手剑 << Warrior/Paladin
    .target 吴平
step
    .isOnQuest 6261
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .turnin 6261 >>交任务 杜加尔·朗德瑞克
    .target 杜加尔·朗德瑞克
    .xp <15,1
step << Warlock/Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_BUY_从她那里|r购买1把|cRXP_BUY_ |T135468:0|t[烟尘魔杖]|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_BUY_购买1根|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_从她那里 或者查看拍卖行购买|r |T135144:0|t[强效魔法杖]
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_等你达到15级时|r记得装备|cRXP_WARN_ |T135468:0|t[烟尘魔杖] |r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto 1453/0,1035.96,-8974.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133738:0|t|T133738:0|t[吞噬暗影（等级1）] |cRXP_BUY_和|r |T133738:0|t|T133738:0|t[牺牲（等级1）] |cRXP_BUY_如果买得起的话。如果不行，可以之后再买|r
    .target 斯巴克尔
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>前往法师塔
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>前往暴风城大教堂
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_圣洁之书|r] 来激发任务|r
    .accept 1642 >>接受任务圣洁之书
    .use 6775
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1642 >>交任务圣洁之书
    .accept 1643 >>接受任务圣洁之书
    .target 达索瑞恩·拉尔
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto 1453/0,862.89,-8519.61
    .trainer >>训练你的职业技能
    .target 乔舒修士
step << !Hunter
    #label HumbleBeginnings
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .accept 399 >>接受任务 童年的记忆
    .target 巴隆斯·阿历克斯顿
    .xp >15,1 -- shows to 14 and under
step
    .goto 1453/0,600.07,-8427.22
    .target 弗伦·长须
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑞娜·麦肯达|r 对话
    .trainer >>训练你的宠物技能
    .target 卡瑞娜·麦肯达
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Human Paladin
    .goto 1453/0,613.66,-8832.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯蒂芬妮·特纳|r 对话
    .turnin 1643 >>交任务圣洁之书
    .target Stephanie Turner
    .accept 1644 >>接受任务圣洁之书
    .turnin 1644 >>交任务圣洁之书
    .accept 1780 >>接受任务圣洁之书
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_如果买得起，就从她那里买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_，或者你也可以从拍卖行买更好/更便宜的|r
    >>|cRXP_WARN_当你达到14级时装备它们|r
    .collect 2027,2 --Scimitar
    .target 玛尔达·维勒
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_如果买得起，从她那里买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_即可|r
    >>|cRXP_WARN_当你达到14级时装备它们|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1

--Hunter going Darkshore, rest Westfall
step << Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_凯瑟琳·利兰|r 对话
    >>|cRXP_BUY_从她那里购买一个|r |T134335:0|t[闪光的小珠] |cRXP_BUY_和三个|r |T134324:0|t[夜色虫] |cRXP_BUY_这是一个900点经验值的任务|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉尔伯特·格雷::267118|r 对话
    .target Gilbert Gray::267118
    .accept 95065 >>接受任务 钓鱼时间
    .turnin 95065 >>交任务 钓鱼时间
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_如果需要，在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救]|r
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >>乘船前往黑海岸
]])
