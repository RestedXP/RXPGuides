if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 11
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 提瑞斯法林地
#next 6-12级 提瑞斯法林地

step << !Undead
    #completewith next
    +|cRXP_WARN_你选择的是为亡灵准备的攻略。建议你选择与你起始区域相同的初始区域攻略|r
step
    #completewith Zombies
	.destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了
step
    #completewith next
    .goto 1420/0,1675.90,1645.00,8,0
    .goto 1420/0,1665.51,1645.00,8,0
    .goto 1420/0,1667.77,1679.04,10 >>从地穴跑出来，朝 |cRXP_FRIENDLY_摩尔多|r 方向前进
step
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .accept 363 >>接受任务 突然醒来
    .target 送葬者摩尔多
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto 1420/0,1646.08,1750.44,0 << Warrior/Warlock
    .goto 1420/0,1681.32,1719.710,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0 << Priest/Mage
    .goto 1420/0,1718.38,1799.24,40,0 << Priest/Mage
    .goto 1420/0,1669.12,1869.73,40,0 << Priest/Mage
    +|cRXP_WARN_击杀 |cRXP_ENEMY_食腐狼幼崽|r 和 |cRXP_ENEMY_夜行蝙蝠|r。拾取它们的掉落，直到你拥有价值60铜币的可出售物品（包括你的护甲）|r << Mage
    +|cRXP_WARN_击杀 |cRXP_ENEMY_食腐狼幼崽|r 和 |cRXP_ENEMY_夜行蝙蝠|r。拾取它们的掉落，直到你拥有价值50铜币的可出售物品（包括你的护甲）|r << Priest
    +|cRXP_WARN_击杀 |cRXP_ENEMY_食腐狼幼崽|r 和 |cRXP_ENEMY_夜行蝙蝠|r，拾取它们的掉落，直到你拥有价值10铜币的可出售物品（包括你的护甲）|r << Warrior/Warlock
    .mob 食腐狼幼崽
    .mob 夜行蝙蝠
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto 1420/0,1577.39,1860.09,8 >>进入建筑内
step << Priest/Mage
    #label Vendor
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .vendor >>把垃圾物品卖给商人
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target 乔舒·基恩
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_温雅·玛山德|r 和 |cRXP_FRIENDLY_暗影牧师萨维斯|r 对话 << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 对话 << Mage
    .accept 1470 >>接受任务 控制小鬼 << Warlock
    .goto 1420/0,1633.42,1836.9 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >>交任务 突然醒来
    .accept 364 >>接受任务 无脑的僵尸
    .target 暗影牧师萨维斯
    .goto 1420/0,1639.75,1843.220
step << Warlock/Mage
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 对话
    .accept 376 >>接受任务 被诅咒者
    .goto 1420/0,1638.85,1847.74
    .target 新兵艾尔雷斯
    .xp <2,1
step << Mage
    #requires Percing
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r 对话
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .target 伊莎贝拉
step << Warlock
    #label Vendor
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉|r对话
    .vendor >>把垃圾物品卖给商人
    .target 凯拉·斯密瑟
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .train 348 >>学习 |T135817:0|t[献祭]
    .target 马克希米林
step << !Warlock !Mage
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 对话
    .turnin 363 >>交任务 突然醒来
    .accept 364 >>接受任务 无脑的僵尸
    .target 暗影牧师萨维斯
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 对话
    .accept 376 >>接受任务 被诅咒者
    .goto 1420/0,1638.85,1847.74
    .target 新兵艾尔雷斯
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 阿基班德·卡瓦
    .money >0.1
step << Warrior
    #label Training1
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 丹纳尔·斯特恩
step << Warlock
    #requires Piercing
    #loop
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    >>击杀 |cRXP_ENEMY_断骨骷髅|r。拾取他们的 |cRXP_LOOT_断骨骷髅的颅骨|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob 断骨骷髅
step << Warlock
    #completewith next
    +|cRXP_WARN_击杀 |cRXP_ENEMY_无脑的僵尸|r 和 |cRXP_ENEMY_悲惨的僵尸|r。拾取它们的掉落物，直到你获得价值 25 铜币的可出售物品(包括你的护甲)|r
    .mob 无脑的僵尸
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target 乔舒·基恩
    .isOnQuest 1470
step << Warlock
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温雅|r 对话
    .turnin 1470 >>交任务 控制小鬼
    .target 温雅·玛山德
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
	.goto 1420/0,1599.99,1910.1,0
	.goto 1420/0,1599.99,1910.1,40,0
	.goto 1420/0,1646.53,1913.11,40,0
	.goto 1420/0,1637.04,1963.72,40,0
	.goto 1420/0,1644.72,1979.99,40,0
	.goto 1420/0,1626.19,1987.52,40,0
	.goto 1420/0,1596.37,1974.87,40,0
	.goto 1420/0,1548.92,1939.02,40,0
	.goto 1420/0,1546.66,1923.36,40,0
	.goto 1420/0,1523.62,1937.82,40,0
	.goto 1420/0,1508.26,1943.84,40,0
	.goto 1420/0,1519.1,1914.92,40,0
	.goto 1420/0,1517.29,1892.33,40,0
	.goto 1420/0,1529.04,1880.58,40,0
    >>击杀 |cRXP_ENEMY_无脑的僵尸|r 和 |cRXP_ENEMY_悲惨的僵尸|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob 无脑的僵尸
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_击杀 |cRXP_ENEMY_无脑的僵尸|r 和 |cRXP_ENEMY_悲惨的僵尸|r。拾取它们的掉落物，直到你获得价值 33铜币的可出售物品(包括你的护甲)|r
    .mob 无脑的僵尸
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>把垃圾物品卖给商人
    .target 乔舒·基恩
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>把垃圾物品卖给商人
    .target 乔舒·基恩
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 和 |cRXP_FRIENDLY_艾尔雷斯|r 对话 << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r, |cRXP_FRIENDLY_艾尔雷斯|r,和|cRXP_FRIENDLY_马克希米林|r对话 << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r, |cRXP_FRIENDLY_艾尔雷斯|r, 和|cRXP_FRIENDLY_伊莎贝拉|r对话 << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r, |cRXP_FRIENDLY_艾尔雷斯|r, 和|cRXP_FRIENDLY_杜斯滕|r对话 << Priest
    .turnin 364 >>交任务 无脑的僵尸
    .accept 3095 >>接受任务 简易卷轴 << Warrior
    .accept 3096 >>接受任务 密文卷轴 << Rogue
    .accept 3097 >>接受任务 神圣卷轴 << Priest
    .accept 3098 >>接受任务 雕文卷轴 << Mage
    .accept 3099 >>接受任务 被污染的卷轴 << Warlock
    .accept 98601 >>接受任务 艰难的道路 << Paladin
    .accept 3901 >>接受任务 断骨骷髅
    .target 暗影牧师萨维斯
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .accept 376 >>接受任务 被诅咒者
    .target 新兵艾尔雷斯
    .goto 1420/0,1638.85,1847.74
    .turnin 3099 >>交任务 被污染的卷轴 << Warlock
    .goto 1420/0,1636.59,1839.01 << Warlock
    .target 马克希米林 << Warlock
    .turnin 3098 >>交任务 雕文卷轴 << Mage
    .goto 1420/0,1635.23,1847.44 << Mage
    .target 伊莎贝拉 << Mage
    .turnin 3097 >>交任务 神圣卷轴 << Priest
    .target 黑暗牧师杜斯滕 << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step << Paladin
    .goto 1420/0,1628.400,1837.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉米斯·锤手|r 对话
    .turnin 98601 >>交任务 艰难的道路
    .accept 90902 >>接受任务 重拾圣光
    .target Aramis Hammerhand
    --90902 only 85xp, not worth doing
step << Paladin
    #completewith XPcheck
    >>|cRXP_WARN_对|r |cRXP_WARN_受伤的亡灵卫兵|r |cRXP_FRIENDLY_施放|r |T135920:0|t[圣光术]
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.6,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target 乔舒·基恩
    .isOnQuest 364
step
    #loop
    .goto 1420/0,1482.50,2126.70,0
    .goto 1420/0,1713.41,1828.76,40,0
    .goto 1420/0,1701.21,1858.290,40,0
    .goto 1420/0,1695.78,1908.29,40,0
    .goto 1420/0,1692.62,1927.88,40,0
    .goto 1420/0,1673.64,1984.51,40,0
    .goto 1420/0,1633.88,2040.24,40,0
    .goto 1420/0,1604.96,2073.08,40,0
    .goto 1420/0,1584.17,2098.08,40,0
    .goto 1420/0,1548.92,2079.71,40,0
    .goto 1420/0,1482.50,2126.70,40,0
    >>击杀 |cRXP_ENEMY_食腐狼幼崽|r 和 |cRXP_ENEMY_蓬毛食腐狼|r。拾取他们的 |cRXP_LOOT_食腐狼爪子|r
    >>击杀 |cRXP_ENEMY_夜行蝙蝠|r 和 |cRXP_ENEMY_癞皮夜行蝙蝠|r。拾取他们的 |cRXP_LOOT_夜行蝙蝠翅膀|r
    >>|cRXP_WARN_尽量避免与 |cRXP_ENEMY_癞皮夜行蝙蝠|r 战斗，因为它们比 |cRXP_ENEMY_夜行蝙蝠|r 更难击杀|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob 食腐狼幼崽
    .mob 蓬毛食腐狼
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob 夜行蝙蝠
    .mob 癞皮夜行蝙蝠
step
    #loop
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    >>击杀 |cRXP_ENEMY_断骨骷髅|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob 断骨骷髅
step
    #label XPcheck
    #optional
    #loop
    .goto 1420/0,1595.47,1985.41,30,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.8,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.1,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    .xp 3+895 >>刷怪达到895+/1400经验 << Paladin
    .xp 3+940 >>刷怪达到940+/1400经验 << Warrior/Rogue
    .xp 3+980 >>刷怪达到980+/1400经验 << !Warrior !Rogue !Paladin
    .mob 无脑的僵尸
    .mob Wretched Zombie
step << Paladin
    .goto 1420/0,1593.500,1876.400
    >>|cRXP_WARN_对|r |cRXP_WARN_受伤的亡灵卫兵|r |cRXP_FRIENDLY_施放|r |T135920:0|t[圣光术]
    .complete 90902,1 --|5/5 Injured Deathguard healed
    .target Injured Deathguard
step << Mage/Warlock/Priest/Paladin
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << !Paladin
    >>|cRXP_WARN_不要让你的钱低于 1 银币|r << Mage/Warlock/Priest
    .vendor >>把垃圾物品卖给商人
    .target 乔舒·基恩
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 和 |cRXP_FRIENDLY_艾尔雷斯|r 对话
    .turnin 3901 >>交任务 断骨骷髅
    .target 暗影牧师萨维斯
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.220
    .turnin 376 >>交任务 被诅咒者
    .accept 6395 >>接受任务 玛拉的遗愿
    .target 新兵艾尔雷斯
    .goto 1420/0,1638.85,1847.74
step << Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 阿基班德·卡瓦
    .money >0.1
    .isOnQuest 90902
step
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉米斯·锤手|r 对话
    .turnin 90902 >>交任务 重拾圣光 << Paladin
    .accept 91208 >>接受任务 接受现实 << Paladin
    .accept 91209 >>接受任务 继续训练 << Paladin
    .accept 98389 >>接受任务 黑暗中的一盏灯
    .target Aramis Hammerhand
step << Paladin
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉米斯·锤手|r 对话
    .train 20271 >>学习 |T135959:0|t[审判]
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .target Aramis Hammerhand
    .money <0.02
step << Paladin
    #optional
    .goto 1420/0,1628.300,1837.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉米斯·锤手|r 对话
    .train 20271 >>学习 |T135959:0|t[审判]
    .target Aramis Hammerhand
    .money <0.01
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .train 589 >>训练你的职业技能
    .target 黑暗牧师杜斯滕
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .train 2052 >>学习 |T135929:0|t[次级治疗术 等级 2 ]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .target 黑暗牧师杜斯滕
    .money <0.02
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .train 1243 >>学习 |T135987:0|t[真言术：韧]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .target 黑暗牧师杜斯滕
    .money <0.011
step << Priest
    #optional
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .target 黑暗牧师杜斯滕
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .train 172 >>学习 |T136118:0|t[腐蚀术]
    .target 马克希米林
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r 对话
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 伊莎贝拉
step
    .goto 1420/0,1616.71,1842.92,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r 和 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .accept 3902 >>接受任务 捡破烂
    .goto 1420/0,1604.96,1860.70
    .target 亡灵卫兵萨尔坦
    .accept 380 >>接受任务 夜行蜘蛛洞穴
    .goto 1420/0,1580.56,1848.95
    .target 执行官阿伦
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 阿基班德·卡瓦
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .turnin 3095 >>交任务 简易卷轴
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 丹纳尔·斯特恩
    .money <0.02
 step << Warrior
    #optional
    #label Training2
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .turnin 3095 >>交任务 简易卷轴
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 丹纳尔·斯特恩
    .money <0.01
step << Rogue
    #optional
    #label Training2
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大卫|r 对话
    .turnin 3096 >>交任务 密文卷轴
    .target 大卫·提亚斯
step << Rogue/Warrior/Paladin
    .goto 1420/0,1577.100,1854.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔特·梅森|r 在楼上对话
    >>|cRXP_BUY_购买一把|r |T134708:0|t|T134708:0|t[矿工锄] |cRXP_BUY_从他|r |cRXP_BUY_那里|r
    .train 2575 >>学习 |T136248:0|t[采矿]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target Walter Mason
step
    #loop
	.goto 1420/0,1570.61,1898.35,0
	.goto 1420/0,1570.61,1898.35,12,0
	.goto 1420/0,1550.73,1897.75,12,0
	.goto 1420/0,1547.12,1891.42,12,0
	.goto 1420/0,1541.69,1867.93,12,0
	.goto 1420/0,1506.45,1892.33,12,0
	.goto 1420/0,1536.27,1937.21,12,0
	.goto 1420/0,1551.64,1936.31,12,0
	.goto 1420/0,1593.66,1985.11,12,0
	.goto 1420/0,1598.63,1970.95,12,0
	.goto 1420/0,1600.89,1953.78,12,0
	.goto 1420/0,1617.16,1956.49,12,0
    >>打开地上的 |cRXP_PICK_装备箱|r，拾取其中的 |cRXP_LOOT_搜刮来的物资|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step << Paladin
    .goto 1420/0,1782.400,1914.700
    >>与 |cRXP_FRIENDLY_受惊的圣骑士|r 对话，当她变得敌对时击杀她
    .complete 91208,1 --|1/1 Offer aid to the Frightened Paladin
    .skipgossip
    .mob Frightened Paladin
step
    #label NightWebStart
    #loop
	.goto 1420/0,1680.42,2110.43,0
	.goto 1420/0,1680.42,2110.43,40,0
	.goto 1420/0,1685.84,2149.6,40,0
	.goto 1420/0,1711.6,2157.43,40,0
	.goto 1420/0,1750.01,2135.14,40,0
	.goto 1420/0,1782.54,2117.36,40,0
	.goto 1420/0,1754.98,2080.91,40,0
	.goto 1420/0,1756.79,2047.77,40,0
	.goto 1420/0,1731.93,2044.16,40,0
	.goto 1420/0,1709.79,2048.07,40,0
	.goto 1420/0,1692.62,2074.28,40,0
    >>击杀 |cRXP_ENEMY_小夜行蜘蛛|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob 小夜行蜘蛛
step
    #loop
	.goto 1420/0,1756.79,2082.12,0
	.goto 1420/0,1756.79,2082.12,25,0
	.goto 1420/0,1749.1,2058.02,25,0
	.goto 1420/0,1774.41,2012.83,25,0
	.goto 1420/0,1805.59,2054.7,25,0
	.goto 1420/0,1799.71,2091.15,25,0
	.goto 1420/0,1815.98,2137.85,25,0
	.goto 1420/0,1790.23,2150.5,25,0
    >>在洞穴入口附近击杀 |cRXP_ENEMY_小夜行蜘蛛|r
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob 小夜行蜘蛛
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.050,30 >>进入洞穴内部
step
    #completewith next
    >>攻击 |cRXP_ENEMY_被网住的被遗忘者|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #loop
    .goto 1420/0,1918.11,2043.86,0
    .goto 1420/0,1844.45,2042.050,30,0
    .goto 1420/0,1876.08,2043.56,20,0
    .goto 1420/0,1898.68,2020.06,20,0
    .goto 1420/0,1940.70,2006.80,20,0
    .goto 1420/0,1983.63,2032.71,20,0
    .goto 1420/0,1953.80,2079.40,20,0
    .goto 1420/0,1918.11,2043.86,20,0
    >>击杀洞穴里的 |cRXP_ENEMY_夜行蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob 夜行蜘蛛
step
    .goto 1420/0,1921.500,2046.500
    >>攻击 |cRXP_ENEMY_被网住的被遗忘者|r
    .complete 98389,1 --|6/6 Webbed Forsaken freed
    .mob Webbed Forsaken
step
    #softcore
    #completewith Scavenging
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto 1420/0,1628.91,1882.99,30 >>|cRXP_WARN_在洞穴内执行跳过操作：跳上切割机、水井或卡在墙上的木板，然后退出并重新登录|r
    >>|cRXP_WARN_或者，返回丧钟镇|r
step
    #label Scavenging
    .goto 1420/0,1604.96,1860.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔坦|r 对话
    .turnin 3902 >>交任务 捡破烂
    .target 亡灵卫兵萨尔坦
step
    #label NightWebH
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 380 >>交任务 夜行蜘蛛洞穴
    .accept 381 >>接受任务 血色十字军
    .target 执行官阿伦
step
    .goto 1420/0,1628.400,1837.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉米斯·锤手|r 对话
    .turnin 91208 >>交任务 接受现实 << Paladin
    .turnin 98389 >>交任务 黑暗中的一盏灯
    .target Aramis Hammerhand
step << Rogue/Warrior/Paladin
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 阿基班德·卡瓦
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·基恩|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>把垃圾物品卖给商人
    .target 乔舒·基恩
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
	.goto 1420/0,1400.71,1766.71,0
	.goto 1420/0,1400.71,1766.71,40,0
	.goto 1420/0,1385.80,1744.11,40,0
	.goto 1420/0,1368.17,1728.15,40,0
	.goto 1420/0,1342.42,1741.40,40,0
	.goto 1420/0,1313.95,1735.08,40,0
	.goto 1420/0,1320.28,1752.25,40,0
	.goto 1420/0,1314.85,1765.80,40,0
	.goto 1420/0,1294.07,1780.56,40,0
	.goto 1420/0,1283.67,1817.02,40,0
	.goto 1420/0,1289.55,1841.72,40,0
	.goto 1420/0,1286.84,1877.27,40,0
	.goto 1420/0,1333.38,1868.53,40,0
	.goto 1420/0,1364.56,1867.93,40,0
	.goto 1420/0,1383.54,1866.72,40,0
	.goto 1420/0,1368.17,1831.48,40,0
	.goto 1420/0,1341.06,1790.51,40,0
	.goto 1420/0,1364.56,1784.18,40,0
    >>击杀 |cRXP_ENEMY_血色新兵|r 和 |cRXP_ENEMY_血色信徒|r。拾取他们的 |cRXP_LOOT_血色十字军臂章|r
    >>|cRXP_WARN_暂时不要击杀|cRXP_ENEMY_迈文·考加尔|r |r
    >>|cRXP_WARN_如果可以的话，尽量避免 |cRXP_ENEMY_血色新兵|r，因为他们会施放 |r|T135843:0|t[霜甲术] |cRXP_WARN_(会降低你的攻击速度)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob 血色新兵
    .mob 血色信徒
step
    .goto 1420/0,1375.40,1979.69
    >>击杀 |cRXP_ENEMY_塞缪尔|r，拾取他的 |cRXP_LOOT_塞缪尔的遗骸|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob 塞缪尔·菲普斯
step
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    .goto 1420/0,1624.84,1876.96
	>>点击地上的 |cRXP_PICK_玛拉的坟墓|r
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 对话 << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 和 |cRXP_FRIENDLY_杜斯滕|r 对话 << Priest
    .turnin 6395 >>交任务 玛拉的遗愿
    .target 新兵艾尔雷斯
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1638.85,1847.74
    .accept 5651 >>接受任务 黑暗的恩赐 << Priest
    .target 黑暗牧师杜斯滕 << Priest
    .goto 1420/0,1627.55,1848.65 << Priest
step
    #sticky
    #label ScarletC
    .goto 1420/0,1580.56,1848.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 381 >>交任务 血色十字军
    .accept 382 >>接受任务 十字军信使
    .target 执行官阿伦
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基巴德|r 对话
    .vendor >>把垃圾物品卖给商人
    .target 阿基班德·卡瓦
step
    #requires ScarletC
    .goto 1420/0,1383.99,1764.30
    >>击杀 |cRXP_ENEMY_梅文|r，拾取他的 |cRXP_LOOT_血色十字军文件|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob 迈文·考加尔
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 382 >>交任务 十字军信使
    .accept 383 >>接受任务 重要情报
    .accept 96656 >>接受任务 冒险者
    .target 执行官阿伦
step
    #loop
    .goto 1420/0,1493.34,2044.76,50,0
    .goto 1420/0,1436.41,2133.93,50,0
    .goto 1420/0,1369.08,2124.89,50,0
    .goto 1420/0,1327.05,2048.68,50,0
    .goto 1420/0,1338.35,1939.93,50,0
	.goto 1420/0,1400.71,1766.71,50,0
	.goto 1420/0,1385.80,1744.11,50,0
	.goto 1420/0,1368.17,1728.15,50,0
	.goto 1420/0,1342.42,1741.40,50,0
	.goto 1420/0,1313.95,1735.08,50,0
	.goto 1420/0,1320.28,1752.25,50,0
	.goto 1420/0,1314.85,1765.80,50,0
	.goto 1420/0,1294.07,1780.56,50,0
	.goto 1420/0,1283.67,1817.02,50,0
	.goto 1420/0,1289.55,1841.72,50,0
	.goto 1420/0,1286.84,1877.27,50,0
	.goto 1420/0,1333.38,1868.53,50,0
	.goto 1420/0,1364.56,1867.93,50,0
	.goto 1420/0,1383.54,1866.72,50,0
	.goto 1420/0,1368.17,1831.48,50,0
	.goto 1420/0,1341.06,1790.51,50,0
	.goto 1420/0,1364.56,1784.18,50,0
	.goto 1420/0,1400.71,1766.71,50,0
    .xp 5+1940 >>刷怪达到1940+/2800经验 << !Paladin
    .xp 5+1850 >>刷怪达到1850+/2800经验 << Paladin
step
    .goto 1420/0,1305.36,2127.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔文|r 对话
    .accept 8 >>接受任务 潜行者的交易
    .target 卡尔文·蒙泰古

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-12级 提瑞斯法林地
#displayname 6-13级 提瑞斯法林地 << Paladin
#version 11
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 银松森林；12-17 贫瘠之地

step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_西米尔|r对话
    .accept 365 >>接受任务 悲伤之地
    .target Deathguard Simmer
step
    #loop
    .goto 1420/0,496.96,2256.54,0
    .goto 1420/0,1191.04,2198.10,0
    .goto 1420/0,1191.04,2198.10,40,0
    .goto 1420/0,1133.65,2177.31,40,0
    .goto 1420/0,1063.61,2201.710,40,0
    .goto 1420/0,945.22,2127.00,40,0
    .goto 1420/0,824.57,2092.36,40,0
    .goto 1420/0,740.97,2112.24,40,0
    .goto 1420/0,660.09,2196.29,40,0
    .goto 1420/0,571.07,2251.42,40,0
    .goto 1420/0,496.96,2256.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛尔多|r 对话
    >>|cRXP_WARN_他是一个在通往布瑞尔的道路上巡逻的憎恶|r
    .accept 5481 >>接受任务 葛尔多的任务
    .unitscan Gordo
step << Priest
    .goto 1420/0,656.92,2164.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博文|r 对话
    .train 3908 >>训练|T136249:0|t|T132889:0|t[裁缝]。积攒你的|T132889:0|t|T132889:0|t[亚麻布]。这将让你稍后能制作一根魔杖
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处复活，或者跑回布瑞尔
    .target 灵魂医者
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵巴塞洛缪|r 对话
    >>|cRXP_WARN_他可能在墓地的周围巡逻|r
    .accept 86784 >>接受任务 棍棒和骨头
    .target Deathguard Bartholomew
step
    #completewith next
    >>在布瑞尔附近树下拾取地面上的 |cRXP_PICK_干枯的树枝|r
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>接受任务 腐烂的爪子
    .target 亡灵卫兵迪林格尔
step
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>在布瑞尔附近树下拾取地面上的 |cRXP_PICK_干枯的树枝|r
    .complete 86784,1 --|6/6 Dry Branch
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃莉诺·沙克尔顿|r 对话
    .turnin 86784 >>交任务 棍棒和骨头
    .turnin 96656 >>交任务 冒险者
    .accept 96607 >>接受任务 壮丽自然
    .target Eleanor Shackleton
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_在篝火处输入 /坐下 并等待1分钟，直到你获得"营地福利"buff|r
    .complete 96607,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>坐下
    .timer 59, RP
    .complete 96607,2 --|Gain the Boosted Rest buff
step
    .goto 1420/0,445.400,2166.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃莉诺·沙克尔顿|r 对话
    .turnin 96607 >>交任务 壮丽自然
    .target Eleanor Shackleton
    .accept 96658 >>接受任务 露营基础：烹饪
    --.accept 97959 >>Accept Camping 101: Mining
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .accept 367 >>接受任务 新的瘟疫
    .target 药剂师乔汉
    .xp <6,1
step
    .goto 1420/0,296.600,2278.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官塞加德|r 对话
    .turnin 383 >>交任务 重要情报
    .accept 427 >>接受任务 与血色十字军的战争
    .accept 99141 >>接受任务 耐心
    .accept 99134 >>接受任务 训诫
    .target 执行官塞加德
step
    #completewith Claws
    .use 286176 >>|cRXP_WARN_将|r |T133490:0|t[执行官的"激励棒"] |cRXP_WARN_用于布瑞尔内外任意|cRXP_FRIENDLY_ 亡灵卫兵|r身上|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step << Rogue
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_温特斯夫人|r |cRXP_BUY_对话，并|r|cRXP_BUY_从她那里购买一把|r |T135421:0|t[增重飞斧]
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target 温特斯夫人
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (3银 81铜). 如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_装备|r |T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后金币足够购买 |T135321:0|t[步兵剑](5银10铜)，就一并出售;如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135321:0|t[步兵剑]
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .complete 91209,1 --|1/1 Report to Shari Stilwell in Brill
    .turnin 91209 >>交任务 继续训练
    .target Shari Stilwell
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 679 >>训练 |T626003:0|t[神圣打击]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>清理杂物，把灰色物品都卖掉。如果卖掉你的武器能凑够买 |T133053:0|t[木槌棒] 的钱（6 银 66 铜），就一起卖了。若钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利佛|r|cRXP_BUY_对话. 购买1根|r |T133053:0|t[木槌棒] |cRXP_BUY_从他那里|r
    .collect 2493,1,404,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Claws
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    .turnin 8 >>交任务 潜行者的交易
    .home >>将炉石设置在布瑞尔
    .target 旅店老板瑞尼
    .bindlocation 2119
step
    #optional
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    .turnin 8 >>交任务 潜行者的交易
    .target 旅店老板瑞尼
    .isOnQuest 8
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉|r 对话
    .train 2550 >>学习烹饪
    .turnin 96658 >>交任务 露营基础：烹饪
    .target William Pickman
    .money <0.001
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莉丝|r 对话
    >>|cRXP_FRIENDLY_格莉丝|r |cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接受任务 死亡之寒
    .target 格莉丝·戴玛
    .xp <7,1
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
    .turnin 5651 >>交任务 黑暗的恩赐
    .accept 5650 >>接受任务 黑暗之衣
	.train 591 >>影袭 |T135924:0|t[惩击]
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .train 2052 >>学习 |T135929:0|t[次级治疗术 等级 2 ]
    .target Dark Cleric Beryl
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_凯恩|r 对话
    .train 143 >>学习 |T135812:0|t[火球术]
    .train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 凯恩·火歌
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 3127 >>学习 |T132269:0|t[招架]
    .target 奥斯蒂尔·德·蒙
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_玛瑞恩|r 对话
    .train 1757 >>背刺 |T136189:0|t[影袭]
    .target 马里恩·考尔
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_吉娜·朗恩|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[魔典:血契]|cRXP_BUY_从她那里|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>把垃圾物品卖给商人
    .target 吉娜·朗恩
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 695 >>学习 |T136197:0|t[暗影箭]
    .train 1454 >>学习 |T136126:0|t[生命分流]
    .target 鲁伯特·鲍什
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 695 >>学习 |T136197:0|t[暗影箭]
    .target 鲁伯特·鲍什
step << Priest/Warlock
    .goto 1420/0,242.55,2284.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范斯|r 对话
    .train 7411 >>训练 |T136244:0|t[附魔]
    >>|cRXP_WARN_结合|r |T136249:0|t|T136249:0|t[裁缝] |cRXP_WARN_，你之后就能制作魔杖了|r
    .target Vance Undergloom
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Mage/Priest/Paladin
    >>|cRXP_BUY_从她那里购买|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_购买|r |T132815:0|t|T134532:0|t[冰镇牛奶] |cRXP_BUY_和|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_从她那里|r << Warlock
    .collect 1179,15,367,1 << Mage/Priest/Paladin --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target 旅店老板瑞尼
step
    .goto 1420/0,84.900,2023.500
    >>与 |cRXP_FRIENDLY_亡灵卫兵克里斯托弗|r 对话
    >>|cRXP_WARN_选择“我需要一份给执行官塞加德的报告”|r
    .complete 99141,2 --|1/1 Kristof's Report
    .skipgossipid 142730
    .target Deathguard Kristof
step
    .goto 1420/0,77.200,2026.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舍伦尼·洛巴尔特|r 对话
    .accept 97558 >>接受任务 被遗忘者的皮
    .target Shelene Rhobart
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .accept 367 >>接受任务 新的瘟疫
    .target 药剂师乔汉
step << Priest
    .goto 1420/0,359.14,2436.99
    >>对|cRXP_FRIENDLY_死亡守卫凯尔|r施放|T135929:0|t|T135987:0|t[次级治疗术]和|T135987:0|t|T135987:0|t[真言术：韧]
    >>|cRXP_WARN_此任务需要次级治疗术（等级2）|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Gordo2
    >>拾取地上的 |cRXP_PICK_阴暗草|r
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith Pumkpins
    >>击杀|cRXP_ENEMY_黑暗犬|r。拾取它们的|cRXP_LOOT_血|r和|cRXP_LOOT_皮|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob 衰老的黑暗犬
step
    #label Claws
    #loop
    .goto 1420/0,655.12,2120.98,0
    .goto 1420/0,550.28,2315.28,50,0
    .goto 1420/0,622.58,2322.51,50,0
    .goto 1420/0,678.16,2319.80,50,0
    .goto 1420/0,716.12,2282.15,50,0
    .goto 1420/0,682.23,2218.58,50,0
    .goto 1420/0,670.48,2128.81,50,0
    .goto 1420/0,595.47,2134.53,50,0
    .goto 1420/0,613.54,2082.72,50,0
    .goto 1420/0,655.12,2120.98,50,0
    >>击杀|cRXP_ENEMY_腐烂的死者|r和|cRXP_ENEMY_被蹂躏的尸体|r，拾取它们的|cRXP_LOOT_爪|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label Gordo2
    #loop
    .goto 1420/0,496.96,2256.54,40,0
    .goto 1420/0,571.07,2251.42,40,0
    .goto 1420/0,660.09,2196.29,40,0
    .goto 1420/0,740.97,2112.24,40,0
    .goto 1420/0,824.57,2092.36,40,0
    .goto 1420/0,945.22,2127.00,40,0
    .goto 1420/0,1063.61,2201.710,40,0
    .goto 1420/0,1133.65,2177.31,40,0
    .goto 1420/0,1191.04,2198.10,40,0
    .goto 1420/0,1191.04,2198.10,0
    .goto 1420/0,496.96,2256.54,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛尔多|r 对话
    >>|cRXP_WARN_他是一个在通往布瑞尔的道路上巡逻的憎恶|r
    >>|cRXP_WARN_选择“我需要一份给执行官塞加德的报告”|r
    .complete 99141,3 --|1/1 Gordo's Report
    .target Gordo
    --.gossipoption 142737
step
    #label GloomWeed
    #loop
    .goto 1420/0,1246.17,2311.97,0
    .goto 1420/0,1025.65,2110.43,0
    .goto 1420/0,1246.17,2311.97,50,0
    .goto 1420/0,1025.65,2110.43,50,0
    >>完成拾取地上的|cRXP_PICK_阴暗草|r
    .complete 5481,1 --Gloom Weed (3)
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3组|r |T132889:0|t|T135139:0|t[亚麻布]|cRXP_WARN_。这些将用于稍后制作一个|r |T135139:0|t|T135139:0|t[次级魔法杖] |cRXP_WARN_|r
    >>|cRXP_WARN_如果你不想做这个任务，或者打算以后从拍卖行购买，请跳过此步骤|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_开始收集3组|r |T132889:0|t|T135139:0|t[亚麻布]|cRXP_WARN_。这些将用于稍后制作一个|r |T135139:0|t|T135139:0|t[次级魔法杖] |cRXP_WARN_|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #label Pumkpins
    #loop
    .goto 1420/0,1378.12,2328.54,0
    .goto 1420/0,1352.36,2265.88,50,0
    .goto 1420/0,1377.66,2328.54,50,0
    .goto 1420/0,1402.06,2359.27,50,0
    .goto 1420/0,1448.16,2336.67,50,0
    .goto 1420/0,1438.21,2303.84,50,0
    .goto 1420/0,1471.20,2283.65,50,0
    .goto 1420/0,1378.12,2328.54,50,0
    >>拾取田野里的 |cRXP_LOOT_南瓜|r
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith Tescort
    >>击杀 |cRXP_ENEMY_血色战士|r
    >>|cRXP_WARN_注意，他们在做出防御姿态动画后的8秒内，招架几率提高50%|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    .goto 1420/0,1587.700,2439.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与 |cRXP_FRIENDLY_巴雷斯·晨石|r 对话
    >>|cRXP_WARN_这将开启一个护送任务|r
    >>|cRXP_WARN_小心！在塔顶你可以轻易同时激怒3个 |cRXP_ENEMY_血色战士|r|r
    .accept 99144,1 >>接受任务 寻求庇护
    .target Bareth Dawnstone
step
    #label Tescort
    .goto 1420/0,1268.000,2368.200
    >>护送 |cRXP_FRIENDLY_巴雷斯·晨石|r 离开索利丹农场
    .complete 99144,1 --
    .target Bareth Dawnstone
step
    #loop
    .goto 1420/0,1597.27,2290.28,0
    .goto 1420/0,1509.16,2351.13,50,0
    .goto 1420/0,1512.77,2299.02,50,0
    .goto 1420/0,1597.27,2290.28,50,0
    .goto 1420/0,1676.80,2316.79,50,0
    .goto 1420/0,1681.78,2354.14,50,0
    .goto 1420/0,1649.69,2405.66,50,0
    .goto 1420/0,1632.07,2436.690,50,0
    .goto 1420/0,1580.56,2487.00,50,0
    .goto 1420/0,1509.16,2473.14,50,0
    .goto 1420/0,1492.44,2395.11,50,0
    .goto 1420/0,1509.16,2351.13,50,0
    >>击杀 |cRXP_ENEMY_血色战士|r
    >>|cRXP_WARN_注意，他们在做出防御姿态动画后的8秒内，招架几率提高50%|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #loop
    .goto 1420/0,1238.600,2424.900,0
    .goto 1420/0,1238.600,2424.900,60,0
    .goto 1420/0,1204.800,2543.000,60,0
    .goto 1420/0,1122.600,2396.800 ,60,0
    >>击杀|cRXP_ENEMY_黑暗犬|r。拾取它们的|cRXP_LOOT_黑暗犬的血液|r 和 |cRXP_LOOT_夜行犬皮|r
    .complete 367,1 --Darkhound Blood (5)
    .complete 97558,2 --|6/6 Darkhound Hide
    .mob 衰老的黑暗犬
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>炉石返回布瑞尔，提瑞斯法林地
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>返回布瑞尔
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #softcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍兰德|r 对话
    >>|cRXP_WARN_他在墓地的周围巡逻|r
    .turnin 5481 >>交任务 葛尔多的任务
    .accept 5482 >>接受任务 末日草
    .target Junior Apothecary Holland
step
    #optional
    #completewith MetaBook
    .use 286176 >>|cRXP_WARN_对布瑞尔镇内及周边的任意|r 亡灵卫兵|cRXP_WARN_ |cRXP_FRIENDLY_|r使用|r |T133490:0|t[执行官的“激励棒”]
    .complete 99134,1 --|5/5 Deathguards motivated
step
    .goto 1420/0,403.300,2287.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r 对话
    >>|cRXP_WARN_选择“我需要一份给执行官塞加德的报告”|r
    .turnin 404 >>交任务 腐烂的爪子
    .accept 426 >>接受任务 磨坊告急
    .complete 99141,1 --|1/1 Dillinger's Report
    .target 亡灵卫兵迪林格尔
    .skipgossipid 142723
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师乔汉|r 对话
    .turnin 367 >>交任务 新的瘟疫
    .turnin 365 >>交任务 悲伤之地
    .accept 368 >>接受任务 新的瘟疫
    .accept 407 >>接受任务 悲伤之地
    .target +Apothecary Johaan
step
    .goto 1420/0,347.600,2265.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗莱·安尼斯|r 对话
    .accept 95314 >>接受任务 影谷的绿色饮剂
    .target Carolai Anise
    .xp <7,1
step << Mage
    #label MetaBook
    >>在书架上拾取 |cRXP_PICK_书籍|r
    .collect 208185,1 --The Apothecary's Metaphysical Primer (x1
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_对布瑞尔镇内及周边的任意|r 亡灵卫兵|cRXP_WARN_ |cRXP_FRIENDLY_|r使用|r |T133490:0|t[执行官的“激励棒”]
    .complete 99134,1 --|5/5 Deathguards motivated
step
    #label BrillTurnin1
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞加德|r 对话
    .turnin 427 >>交任务 与血色十字军的战争
    .accept 370 >>接受任务 与血色十字军的战争
    .turnin 99141 >>交任务 耐心耗尽
    .turnin 99134 >>交任务 训诫
    .target 执行官塞加德
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_摧毁|r |T133490:0|t[执行官的“激励棒”] |cRXP_WARN_，因为你已经不再需要它了|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯吉斯|r、|cRXP_FRIENDLY_统计布告|r 和 |cRXP_FRIENDLY_塞弗伦|r 在建筑物内对话
    .accept 374 >>接受任务 死亡证明
    .target +Deathguard Burgess
    .goto 1420/0,280.06,2270.70
    .accept 398 >>接受任务 悬赏：蛆眼
    .goto 1420/0,288.64,2285.46
    .accept 358 >>接受任务 盗墓贼
    .target +Magistrate Sevren
    .goto 1420/0,265.15,2305.94
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .turnin 99144 >>交任务 寻求庇护
    .train 853 >>训练你的职业技能
    .target Shari Stilwell
    .xp <8,1
step
    #optional << Paladin
    .goto 1420/0,311.900,2250.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .turnin 99144 >>交任务 寻求庇护
    .target Shari Stilwell
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
    .turnin 5650 >>交任务 黑暗之衣
    .train 591 >>影袭 |T135924:0|t[惩击]
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .target Dark Cleric Beryl
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莉丝|r 对话
    >>|cRXP_FRIENDLY_格莉丝|r |cRXP_WARN_在旅馆的二楼|r
    .accept 375 >>接受任务 死亡之寒
    .target 格莉丝·戴玛
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_凯恩|r 对话
    .train 205 >>训练你的职业技能
    .target 凯恩·火歌
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 284 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_玛瑞恩|r 对话
    .train 6760 >>训练你的职业技能
    .target 马里恩·考尔
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 980 >>训练你的职业技能
    .target 鲁伯特·鲍什
    .xp <8,1
step
    .goto 1420/0,243.200,2288.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉|r 对话
    .train 2550 >>学习烹饪
    .turnin 96658 >>交任务 露营基础：烹饪
    .target William Pickman
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_妮拉|r 对话
    >>|cRXP_WARN_尽量在等待的时候（比如等飞艇）完成这些任务|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .target Nurse Neela
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。卖掉你的武器之后如果够的话，就购买一把|T135641:0|t[卷刃的剑] （3银 81铜）。如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉你的武器之后够钱买一把 |T135321:0|t[步兵剑]（5银10铜），那就果断卖掉；如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135321:0|t[步兵剑]
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 679 >>学习 |T626003:0|t[Holy Strike]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>清理杂物，把灰色物品都卖掉。如果卖掉你的武器能凑够买 |T133053:0|t[木槌棒] 的钱（6 银 66 铜），就一起卖了。若钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利佛|r|cRXP_BUY_对话。|r |cRXP_BUY_从他那里购买一根|r |T133053:0|t[木槌棒]
    .collect 2493,1,367,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith Doomweed
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    .goto 1420/0,270.12,2253.23--c:Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_ 与|r |cRXP_FRIENDLY_温特斯夫人|r 对话
    >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_BUY_从|r |cRXP_FRIENDLY_她那里|r
    .collect 4496,1,5482,1 --Small Brown Pouch (1)
    .target 温特斯夫人
    .money <0.05
step
    #hardcore
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级药剂师霍兰德|r 对话
    >>|cRXP_WARN_他在墓地的周围巡逻|r
    .turnin 5481 >>交任务 葛尔多的任务
    .accept 5482 >>接受任务 末日草
    .target Junior Apothecary Holland
step << Rogue/Warrior
    #optional
    #loop
    .goto 1420/0,482.50,1951.07,0
    .goto 1420/0,403.42,2085.73,50,0
    .goto 1420/0,413.36,1979.99,50,0
    .goto 1420/0,482.50,1951.07,50,0
    .goto 1420/0,560.22,1901.06,50,0
    .goto 1420/0,645.63,1961.92,50,0
    .goto 1420/0,750.46,1993.55,50,0
    .goto 1420/0,869.76,2003.79,50,0
    .goto 1420/0,950.64,2039.040,50,0
    .goto 1420/0,1068.13,1975.47,50,0
    >>击杀 |cRXP_ENEMY_夜行蝙蝠|r。拾取它们的 |cRXP_LOOT_破烂的皮革|r 和 |cRXP_LOOT_夜行蝙蝠翼|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .disablecheckbox
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #optional
    #label DuskbatTrophy1
    #loop
    .goto 1420/0,482.50,1951.07,0
    .goto 1420/0,403.42,2085.73,50,0
    .goto 1420/0,413.36,1979.99,50,0
    .goto 1420/0,482.50,1951.07,50,0
    .goto 1420/0,560.22,1901.06,50,0
    .goto 1420/0,645.63,1961.92,50,0
    .goto 1420/0,750.46,1993.55,50,0
    .goto 1420/0,869.76,2003.79,50,0
    .goto 1420/0,950.64,2039.040,50,0
    .goto 1420/0,1068.13,1975.47,50,0
    .xp 7+3260 >>刷怪达到 3260+/4500 经验
--XX 700 (375)+540 (367)
step << Rogue/Warrior
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿比盖恩|r 对话
    >>|cRXP_BUY_从她那里购买1个|r |T132891:0|t[粗线] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Rogue/Warrior
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莉丝|r 对话
    .turnin 375 >>交任务 死亡之寒
    .target 格莉丝·戴玛
    .isQuestComplete 375
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 284 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_玛瑞恩|r 对话
    .train 6760 >>训练你的职业技能
    .target 马里恩·考尔
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后你的金币足够购买一把|T135641:0|t[卷刃的剑] （3银 81铜）。如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Doomweed
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉你的武器之后够钱买一把 |T135321:0|t[步兵剑]（5银10铜），那就果断卖掉；如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135321:0|t[步兵剑]
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Doomweed
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #completewith next
    >>在地上拾取|cRXP_PICK_末日草|r
    >>|cRXP_WARN_在豺狼人区域的树木附近可以找到它们|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto 1420/0,537.18,2555.98,0
    .goto 1420/0,488.83,2642.44,40,0
    .goto 1420/0,561.13,2596.65,40,0
    .goto 1420/0,597.73,2514.11,40,0
    .goto 1420/0,537.18,2555.98,40,0
    .goto 1420/0,483.40,2514.41,40,0
    >>击杀|cRXP_ENEMY_溃烂的盗墓贼|r，从他们身上拾取|cRXP_LOOT_脓液|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>击杀|cRXP_ENEMY_溃烂的藏尸者|r，拾取它们的|cRXP_LOOT_脓液|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto 1420/0,435.96,2754.51,0
    .goto 1420/0,426.92,2802.10,30,0
    .goto 1420/0,437.31,2754.20,30,0
    .goto 1420/0,467.14,2699.08,30,0
    .goto 1420/0,500.57,2669.85,30,0
    .goto 1420/0,543.95,2670.46,30,0
    .goto 1420/0,536.72,2627.68,30,0
    .goto 1420/0,562.48,2568.63,30,0
    .goto 1420/0,534.92,2587.01,30,0
    .goto 1420/0,476.62,2572.55,30,0
    .goto 1420/0,399.35,2544.23,30,0
    .goto 1420/0,374.95,2612.01,30,0
    .goto 1420/0,396.19,2676.18,30,0
    .goto 1420/0,435.96,2754.51,30,0
    >>在地上拾取|cRXP_PICK_末日草|r
    >>|cRXP_WARN_在豺狼人区域的树木附近可以找到它们|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #completewith MaggotEye
    >>击杀|cRXP_ENEMY_溃烂的藏尸者|r，拾取它们的|cRXP_LOOT_脓液|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>击杀 |cRXP_ENEMY_蛆眼|r。拾取他的 |cRXP_LOOT_爪子|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>击杀|cRXP_ENEMY_溃烂的藏尸者|r，拾取它们的|cRXP_LOOT_脓液|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto 1420/0,332.48,2862.35,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>击杀|cRXP_ENEMY_腐皮豺狼人|r，拾取|cRXP_LOOT_防腐剂|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    #label MurlocVins
    #loop
    .goto 1420/0,342.87,2998.22,0
    .goto 1420/0,350.10,2962.37,50,0
    .goto 1420/0,342.87,2998.22,50,0
    .goto 1420/0,293.16,2974.12,50,0
    .goto 1420/0,254.75,2951.820,50,0
    .goto 1420/0,188.33,2950.02,50,0
    .goto 1420/0,65.42,2927.12,50,0
    .goto 1420/0,-15.92,2964.78,50,0
    .goto 1420/0,-49.36,3040.39,50,0
    >>击杀 |cRXP_ENEMY_邪鳍鱼人|r。拾取它们的 |cRXP_LOOT_邪鳍鱼人的鳞片|r 和 |cRXP_LOOT_邪鳍鱼人皮|r
    >>|cRXP_ENEMY_邪鳍污水鱼人|r |cRXP_WARN_不会掉落|r |cRXP_LOOT_邪鳍鱼人皮|r
    .complete 368,1 --Vile Fin Scale (5)
    .complete 97558,3 --|3/3 Vile Fin Murloc Skin
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #loop
    .goto 1420/0,138.300,2829.600,0
    .goto 1420/0,138.300,2829.600,50,0
    .goto 1420/0,121.200,2727.400,50,0
    .goto 1420/0,127.500,2601.800,50,0
    .goto 1420/0,211.400,2545.500,50,0
    .goto 1420/0,146.300,2408.000,50,0
    .goto 1420/0,94.600,2312.100,50,0
    .goto 1420/0,39.900,2248.100,50,0
    .goto 1420/0,-137.100,2206.000,50,0
    .goto 1420/0,-190.800,2387.700,50,0
    >>击杀 |cRXP_ENEMY_夜行蝙蝠|r。拾取它们的 |cRXP_LOOT_破烂的皮革|r 和 |cRXP_LOOT_夜行蝙蝠翼|r
    .complete 375,1 --Duskbat Pelt (5)
    .complete 97558,1 --|8/8 Duskbat Wing Membrane
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith Brill3
    .hs >>炉石返回布瑞尔，提瑞斯法林地
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #completewith Brill3
    .subzone 159 >>返回布瑞尔
    .subzoneskip 159
    .cooldown item,6948,<0
step << skip
    #softcore
    #completewith Brill3
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒曼|r 对话
    .accept 354 >>接受任务 阿加曼德家族
    .accept 362 >>接受任务 闹鬼的磨坊
    .target 库勒曼·法席恩
step
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿比盖恩|r 对话
    >>|cRXP_BUY_从她那里购买1个|r |T132891:0|t[粗线] |cRXP_BUY_|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞加德|r 对话
    .turnin 398 >>交任务 悬赏：蛆眼
    .target 执行官塞加德
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执政官塞弗伦|r 对话
    .turnin 358 >>交任务 盗墓贼
    .accept 405 >>接受任务 流浪的巫妖 << Mage/Warlock
    .accept 359 >>接受任务 亡灵卫兵的职责
    .target Magistrate Sevren
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莉丝|r 对话
    .turnin 375 >>交任务 死亡之寒
    .target 格莉丝·戴玛
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
	.train 139 >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_凯恩|r 对话
    .train 205 >>训练你的职业技能
    .target 凯恩·火歌
    .xp <8,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 284 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <8,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_玛瑞恩|r 对话
    .train 6760 >>训练你的职业技能
    .target 马里恩·考尔
    .xp <8,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 980 >>训练你的职业技能
    .target 鲁伯特·鲍什
    .xp <8,1
step << Rogue/Warrior
    .goto 1420/0,240.29,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_妮拉|r 对话
    >>|cRXP_WARN_尽量在等待的时候（比如等飞艇）完成这些任务|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .target Nurse Neela
step
    #label Brill3
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Mage/Priest/Paladin
    >>|cRXP_BUY_从她那里购买|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_|r << Warrior/Rogue
    >>|cRXP_BUY_购买|r |T132815:0|t|T134532:0|t[冰镇牛奶] |cRXP_BUY_和|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_从她那里|r << Warlock
    .collect 1179,20,426,1 << Mage/Priest/Paladin --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock/Paladin
    .target 旅店老板瑞尼
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 853 >>训练你的职业技能
    .target Shari Stilwell
    .xp <8,1
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后你的金币足够购买一把|T135641:0|t[卷刃的剑] （3银 81铜）。如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135641:0|t[卷刃的剑]
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉你的武器之后够钱买一把 |T135321:0|t[步兵剑]（5银10铜），那就果断卖掉；如果钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_对话并|r|cRXP_BUY_从他那里购买一把|r |T135321:0|t[步兵剑]
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0510
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Paladin
    .goto 1420/0,311.600,2250.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 679 >>学习 |T626003:0|t[Holy Strike]
    .target Shari Stilwell
    .xp <6,1
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·德沃尔|r 对话
    .vendor >>清理杂物，把灰色物品都卖掉。如果卖掉你的武器能凑够买 |T133053:0|t[木槌棒] 的钱（6 银 66 铜），就一起卖了。若钱还不够，稍后再回来购买
    .target 奥利弗·德沃尔
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_奥利佛|r|cRXP_BUY_对话。|r |cRXP_BUY_从他那里购买一根|r |T133053:0|t[木槌棒]
    .collect 2493,1,354,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Paladin
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << skip --Rogue/Warrior
    #softcore
    .goto 1420/0,308.08,2246.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_伊莉莎·考伦|r 对话
    .vendor >>修理你的武器
    .target Eliza Callen
step
    .goto 1420/0,76.000,2026.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舍伦尼·洛巴尔特|r 对话
    .turnin 97558 >>交任务 被遗忘者的皮
    .target Shelene Rhobart
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林奈|r 对话
    .turnin 359 >>交任务 亡灵卫兵的职责
    .accept 360 >>接受任务 向塞弗伦回报
    .accept 356 >>接受任务 巡查后方
    .target Deathguard Linnea
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .turnin 368 >>交任务 新的瘟疫
    .accept 369 >>接受任务 新的瘟疫
    .target 药剂师乔汉
step
    #label DoomedWeed
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍兰德|r 对话
    >>|cRXP_WARN_他在墓地的周围巡逻|r
    .turnin 5482 >>交任务 末日草
    .accept 99142 >>接受任务 墓穴杂草
    .target Junior Apothecary Holland
step
    #label AgamandStart
    .goto 1420/0,882.41,2511.1,100,0
    .goto 1420/0,892.80,2520.74
    .subzone 157 >>向西北方向前往阿加曼德磨坊
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t|T134939:0|t[|cRXP_LOOT_萨尔曼的信件|r] |cRXP_WARN_可能从这些怪物身上掉落。如果掉落，请接受任务|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接受任务 未寄出的信件
    .use 2839
step
    #completewith ThurmanGregor
    >>击杀 |cRXP_ENEMY_士兵|r 和 |cRXP_ENEMY_暗眼骷髅法师|r。拾取他们的 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_颅骨|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>击杀 |cRXP_ENEMY_代弗林|r。拾取他的 |cRXP_LOOT_遗骸|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,803.78,2752.40
    >>击杀 |cRXP_ENEMY_妮萨|r。拾取她的 |cRXP_LOOT_残骸|r。她可能在建筑物内
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>击杀 |cRXP_ENEMY_萨尔曼·阿加曼德|r 和 |cRXP_ENEMY_格里高·阿加曼德|r。拾取它们的 |cRXP_LOOT_遗骸|r
    >>|cRXP_WARN_他们会在周围巡逻|r
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #label MillsOverun
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>击杀 |cRXP_ENEMY_士兵|r 和 |cRXP_ENEMY_暗眼骷髅法师|r。拾取他们的 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_颅骨|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.2,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .xp 9+3840 >>刷怪达到4320+/6500经验
    .itemcount 2839,<1 --A Letter to Yvette (0)
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.2,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .xp 9+3360 >>刷怪达到3360+/6500经验
    .itemcount 2839,1 --A Letter to Yvette (1)
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>返回布瑞尔
step
    #softcore
    #completewith FoodandWater2
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto 1420/0,403.42,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>交任务 磨坊告急
    .target 亡灵卫兵迪林格尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊维特|r 和 |cRXP_FRIENDLY_库勒曼|r 对话
    .turnin 361 >>交任务 未寄出的信件
    .target +Yvette Farthing
    .goto 1420/0,250.69,2252.920
    .turnin 354 >>交任务 阿加曼德家族
    .turnin 362 >>交任务 闹鬼的磨坊
    .accept 355 >>接受任务 与塞弗伦交谈
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .isOnQuest 361
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒曼|r 对话
    .turnin 354 >>交任务 阿加曼德家族
    .turnin 362 >>交任务 闹鬼的磨坊
    .accept 355 >>接受任务 与塞弗伦交谈
    .target 库勒曼·法席恩
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执政官塞弗伦|r 对话
    .turnin 360 >>交任务 向塞弗伦回报
    .turnin 355 >>交任务 与塞弗伦交谈
    .target Magistrate Sevren
    .xp >10,1 --turnin later if lvl 10 already
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>放弃任务 老兵犹塞克
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>放弃任务 防御之道
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .trainer >>训练你的职业技能
    .accept 1818 >>接受任务《物归己用》 迪林格尔
    .target 奥斯蒂尔·德·蒙 << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_埃格隆·卡加尔|r 在旅馆内对话
    .accept 1478 >>接受任务 哈加尔的召唤
    .target Ageron Kargal
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 707 >>训练你的职业技能
    .target 鲁伯特·鲍什
step << Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马里恩|r 在旅馆内对话
    .trainer >>训练你的职业技能
    .accept 1885 >>接受任务 米奈特·卡加德
    .target 马里恩·考尔
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 在旅馆内对话
    .accept 1881 >>接受任务 安娜斯塔西娅
    .target 凯恩·火歌
step
    #label FoodandWater2
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Mage/Priest/Shaman
    >>|cRXP_BUY_从她那里购买|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_|r <<Warrior/Rogue
    >>|cRXP_BUY_购买|r |T132815:0|t|T134532:0|t[冰镇牛奶] |cRXP_BUY_和|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_从她那里|r << Warlock
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target 旅店老板瑞尼
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>交任务《 前往熔光镇》 迪林格尔
    .accept 1819 >>接受任务《物归己用》 切割者奥拉格
    .target 亡灵卫兵迪林格尔
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_点击地面上的骷髅头。这将召唤出|r |cRXP_ENEMY_尤拉格。|r |cRXP_WARN_击杀他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob 切割者奥拉格
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>交任务《 前往熔光镇》 切割者奥拉格
    .accept 1820 >>接受任务《物归己用》 库勒曼
    .target 亡灵卫兵迪林格尔
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵特伦斯|r 对话
    .accept 96895 >>接受任务 银色使者
    .target Deathguard Terrence
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .accept 91282 >>接受任务 第二个家
    .trainer >>训练你的职业技能
    .target Shari Stilwell
step << Warlock
    #completewith next
    .goto 1420/0,240.75,1877.57,20 >>进入幽暗城
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>乘电梯下去到幽暗城
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_凯伦丁|r 对话
    .turnin 1478 >>交任务 哈加尔的召唤
    .accept 1473 >>接受任务 虚空中的生物
step << Warlock
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_比索|r 对话
    .turnin 405 >>交任务 流浪的巫妖
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>从幽暗城下水道离开
    .zoneskip Tirisfal Glades
step << Warlock
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>拾取 |cRXP_PICK_派瑞恩的箱子|r 中的 |T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto 1420/0,770.80,1762.79,40,0
	.goto 1420/0,763.57,1820.93,40,0
	.goto 1420/0,721.54,1857.38,40,0
	.goto 1420/0,694.88,1848.04,40,0
	.goto 1420/0,641.56,1800.45,40,0
	.goto 1420/0,651.05,1748.93,40,0
	.goto 1420/0,685.39,1741.70,40,0
	.goto 1420/0,727.42,1742.31,40,0
    >>击杀|cRXP_ENEMY_佩林队长|r、|cRXP_ENEMY_血色狂热者|r和|cRXP_ENEMY_血色传教士|r。从他们身上拾取|cRXP_LOOT_血色徽记之戒|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>拾取地上的 |cRXP_PICK_派瑞恩的箱子|r 中的 |T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #completewith UCHome
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >>从下水道进入幽暗城
    .zoneskip Undercity
step << Rogue
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战争军需区的|r|cRXP_FRIENDLY_阿基巴德|r交谈
    .train 201 >>学习单手剑
    .target 阿基巴德
step << Warrior/Rogue
    .goto 1458/0,335.37,1638.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗姆|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
    >>|cRXP_WARN_这将使你能够从矿点中获得|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r|cRXP_WARN_，从而制作|r |T135248:0|t[磨刀石]|cRXP_WARN_(使武器伤害 +2，持续 30 分钟)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto 1458/0,329.04,1641.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎拉|r 对话
    >>|cRXP_BUY_从|r|cRXP_BUY_莎拉|r处购买一把|T134708:0|t|T134708:0|t[矿工锄] |cRXP_FRIENDLY_|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto 1458/0,295.94,1691.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_巴兹尔·弗莱伊|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_凯伦丁|r 对话
    .turnin 1473 >>交任务 虚空中的生物
    .accept 1471 >>接受任务誓缚
    .target 凯伦丁·哈加尔
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_在召唤法阵使用|r |T134416:0|t[召唤符文] |cRXP_WARN_|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob 虚空行者
    .use 6284
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯伦丁|r 对话
    .turnin 1471 >>交任务誓缚
    .target 凯伦丁·哈加尔
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_装备|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,129.68,1560.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_纳撒尼尔·斯蒂恩维克|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T135425:0|t[锐利的飞刀]
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target 纳撒尼尔·斯蒂恩维克
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_记得在11级时装备上|r |T135425:0|t|T135425:0|t[锋利的飞刀] |cRXP_WARN_|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .turnin 1885 >>交任务 米奈特·卡加德
    .accept 1886 >>接受任务 亡灵哨兵
    .target Mennet Carkad
step << Mage
    .goto 1458/0,168.600,1662.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧文·萨德|r 对话
    .turnin 79095 >>交任务 药剂师的超自然读本
    .target Owen Thadd
    .itemcount 208185,1
step << Mage
    #optional
    .abandon 1883 >>放弃任务安苏瓦，否则你将无法接受接下来的任务
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .turnin 1881 >>交任务 安娜斯塔西娅
    .accept 1882 >>接受任务 巴尼尔农场
    .target 安娜斯塔西娅·哈特威尔
step << Mage
    .goto 1458/0,66.74,1766.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_比索|r 对话
    .turnin 405 >>交任务 流浪的巫妖
    --.accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step << Paladin
    #label UCHome
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺曼|r 对话
    .home >>将你的炉石设置到幽暗城
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_执行一个返回角色选择跳过技巧，通过将你的角色定位在最低楼梯的最高部分，直到看起来像他们在漂浮，然后登出再登入|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_点击此处查看示例|r
    >>|cRXP_WARN_如果你做不到，就正常跑出幽暗城|r
step
    #completewith AtWarS
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >>离开幽暗城
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith ArriveBalnir
    >>|cRXP_WARN_如果你看到|r |cRXP_FRIENDLY_阿斯托|r|cRXP_WARN_，就与他对话并将其击杀。从他身上拾取信件。他在布瑞尔和瑟伯切尔之间的道路上巡逻。|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯吉斯|r 对话
    .turnin 374 >>交任务 死亡证明
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞加德|r 对话
    .turnin 370 >>交任务 与血色十字军的战争
    .accept 371 >>接受任务 与血色十字军的战争
    .target 执行官塞加德
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_ 与|r |cRXP_FRIENDLY_温特斯夫人|r 对话
    >>|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] |cRXP_BUY_从|r |cRXP_FRIENDLY_她那里|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target 温特斯夫人
    .money <0.05
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒曼|r 对话
    .turnin 1820 >>交任务《 前往熔光镇》 库勒曼
    .target 库勒曼·法席恩
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德里克·哈尔森|r 对话
    .turnin 96895 >>交任务 The Argent 使者
    .accept 96897 >>接受任务 诅咒神教
    .accept 96898 >>接受任务 战争的残迹
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>击杀 |cRXP_ENEMY_黑暗执行者|r 和 |cRXP_ENEMY_黑暗新教徒|r。拾取它们的 |cRXP_LOOT_死灵水晶碎片|r
    >>|cRXP_LOOT_死灵水晶碎片|r |cRXP_WARN_也可以从地上拾取|r
    >>|cRXP_WARN_小心！这些小怪伤害很高。|cRXP_ENEMY_黑暗执行者|r 还拥有即时施放的 50-70 伤害能力|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈德里克·哈尔森|r 对话
    .turnin 96897 >>交任务 诅咒神教
    .turnin 96898 >>交任务 战争的残迹
    .accept 96899 >>接受任务 班达里安堡
    .target Hadric Harlson
step
    #label ArriveBalnir
    .goto 1420/0,-423.96,1976.68
    .subzone 165 >>前往巴尼尔农场
    .isOnQuest 356
step
    #completewith HorrorsandSpirits
    >>在地上拾取 |cRXP_PICK_墓穴杂草|r
    .complete 99142,1 --|5/5 Tomb Weed
step << Mage
    #completewith next
    >>击杀 |cRXP_ENEMY_可怕的血僵尸|r 和 |cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>拾取地上的任意植物，获取一株 |cRXP_PICK_巴尼尔金鱼草|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>击杀 |cRXP_ENEMY_可怕的血僵尸|r 和 |cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step
    .goto 1420/0,-354.800,2049.000
    >>在地上拾取 |cRXP_PICK_墓穴杂草|r
    .complete 99142,1 --|5/5 Tomb Weed
step << Paladin
    #completewith ViciousVenom
    >>|cRXP_WARN_保留10块|r |T132889:0|t[亚麻布] |cRXP_WARN_以备后续任务使用。切记一定不要卖掉|r
    .collect 2589,10 --Linen Cloth (10)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto 1420/0,-624.59,2114.05,0
    .goto 1420/0,-452.43,2183.03,0
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>击杀|cRXP_ENEMY_血色修士|r和|cRXP_ENEMY_血色狂热者|r，并从它们身上拾取|cRXP_LOOT_血色徽记之戒|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto 1420/0,-624.59,2114.05,0
    .goto 1420/0,-452.43,2183.03,0
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>击杀|cRXP_ENEMY_血色修士|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto 1420/0,-528.35,2146.28
    >>击杀塔内的|cRXP_ENEMY_瓦松队长|r
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #label ViciousVenom
    #requires Friars2
    #loop
    .goto 1420/0,-808.96,2189.06,0
    .goto 1420/0,-739.82,2163.75,30,0
    .goto 1420/0,-808.96,2189.06,30,0
    .goto 1420/0,-878.10,2195.39,30,0
    .goto 1420/0,-945.88,2180.93,30,0
    .goto 1420/0,-985.64,2224.00,30,0
    .goto 1420/0,-1019.99,2274.61,30,0
    .goto 1420/0,-1075.11,2314.38,30,0
    .goto 1420/0,-1072.85,2381.56,30,0
    .goto 1420/0,-1027.67,2432.17,30,0
    .goto 1420/0,-809.41,2431.26,30,0
    .goto 1420/0,-785.91,2352.64,30,0
    .goto 1420/0,-738.02,2268.29,30,0
    >>杀死 |cRXP_ENEMY_邪恶的夜行蜘蛛|r。拾取它们的 |cRXP_LOOT_毒液|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << skip
    .goto 1420/0,-38.06,2569.54
    >>拾取|cRXP_PICK_冈瑟尔的书籍|r，获得|cRXP_LOOT_巫妖的法术书|r，该物品位于澈水湖的岛上
    .complete 357,1 --The Lich's Spellbook (1)
step
    --#hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>返回布瑞尔
    .subzoneskip 159
step << skip
    #softcore
    #completewith ANewPlagueFinal
    .goto 1420/0,23.85,2483.38
    .deathskip >>在|cRXP_WARN_较小的岛屿上|r死亡，然后在|cRXP_FRIENDLY_灵魂医者|r处复活
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .turnin 369 >>交任务 新的瘟疫
    .accept 492 >>接受任务 新的瘟疫
    .accept 445 >>接受任务 给银松森林送信
    .target 药剂师乔汉
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞加德|r 对话
    .turnin 371 >>交任务 与血色十字军的战争
    --.accept 372 >>Accept At War With The Scarlet Crusade
    .target 执行官塞加德
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执政官塞弗伦|r 对话
    .turnin 360 >>交任务 向塞弗伦回报
    .turnin 355 >>交任务 与塞弗伦交谈
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯吉斯|r 对话
    .turnin 374 >>交任务 死亡证明
    .target Deathguard Burgess
step
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
	.vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_出售你的垃圾物品，如有需要补充食物|r << Rogue/Warrior
    .target 旅店老板瑞尼
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店楼下的后方与 |cRXP_FRIENDLY_血色十字军俘虏|r 和 |cRXP_FRIENDLY_被俘虏的巡山人|r 对话
    .turnin 407 >>交任务 悲伤之地
    .goto 1420/0,233.06,2292.39
    .target +Captured Scarlet Zealot
    .turnin 492 >>交任务 新的瘟疫
    .goto 1420/0,234.42,2289.070
    .target +Captured Mountaineer
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 7384 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 755 >>训练你的职业技能
    .target 鲁伯特·鲍什
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马里恩|r 对话
    .train 1766 >>训练你的职业技能
    .target 马里恩·考尔
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 在旅馆内对话
    .train 145 >>训练你的职业技能
    .target 凯恩·火歌
    .xp <12,1
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 678 >>训练你的职业技能
    .target Shari Stilwell
    .xp <12,1
step
    #loop
    .goto 1420/0,425.56,2362.58,0
    .goto 1420/0,399.35,2337.270,30,0
    .goto 1420/0,425.56,2362.58,30,0
    .goto 1420/0,355.52,2429.76,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级药剂师霍兰德|r 对话
    >>|cRXP_WARN_他在墓地的周围巡逻|r
    .turnin 99142 >>交任务 末日草
    .target Junior Apothecary Holland

    --Bandarion Keep section

step << !Paladin
    #optional
    .maxlevel 11,BandarionKeepSkip
step
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>前往班达里安堡
step << Paladin
    .goto 1420/0,2045.900,2475.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷顿·萨缪尔斯|r 对话
    .turnin 91282 >>交任务 第二个家
    .accept 91285 >>接受任务 门口的鱼人
    .target Breton Samuels
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与 |cRXP_FRIENDLY_莱尼德·巴萨罗梅|r 对话
    .turnin 96899 >>交任务 班达里安堡
    .accept 96896 >>接受任务 A Righteous Cause
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2038.000,2490.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与 |cRXP_FRIENDLY_莱尼德·巴萨罗梅|r 对话
    .turnin 96896 >>交任务 A Righteous Cause
    .accept 98545 >>接受任务 Leonid's 书信
    .target Leonid Barthalomew the Revered
step
    .goto 1420/0,2041.200,2416.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_破坏者希尔达|r 对话
    .accept 99152 >>接受任务 As Above, So Below
    .target Hilda the Breaker
step
    .goto 1420/0,2122.100,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃弗拉姆·巴巴罗|r 在外面对话
    .accept 99153 >>接受任务 逃走的大鱼
    .target Ephram Barbaro
step << Paladin
    #loop
    .goto 1420/0,2424.200,2151.900,0
    .goto 1420/0,2212.000,2022.600,0
    .goto 1420/0,2424.200,2151.900,50,0
    .goto 1420/0,2212.000,2022.600,50,0
    >>击杀 |cRXP_ENEMY_邪鳍先知|r 和 |cRXP_ENEMY_邪鳍攻击者|r
    .complete 91285,2 --|8/8 Vile Fin Seer slain
    .mob +Vile Fin Seer
    .complete 91285,1 --|8/8 Vile Fin Attacker slain
    .mob +Vile Fin Attacker
step << Paladin
    .goto 1420/0,2045.800,2475.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷顿·萨缪尔斯|r 对话
    .turnin 91285 >>交任务 门口的鱼人
    .accept 91294 >>接受任务 Touring the Grounds
    .target Breton Samuels
    --very good weapon upgrade 8.9 dps (Wooden Mallet 5.0 dps)
step << Paladin -- paladin trainer outside
    .goto 1420/0,2038.800,2415.900
    >>与 |cRXP_FRIENDLY_破坏者希尔达|r 对话
    .complete 91294,1 --|1/1 Speak with Hilda the Breaker
    .target Hilda the Breaker
step << Paladin --patrols the road
    .goto 1420/0,1961.100,2334.600
    >>与 |cRXP_FRIENDLY_安德尔·索利丹|r 对话
    >>|cRXP_WARN_他在路上巡逻|r
    .complete 91294,3 --|1/1 Speak with Ander Solliden
    .target Ander Solliden
    --TODO: Patrol path
step << Paladin --inside keep
    .goto 1420/0,2007.900,2491.200
    >>与 |cRXP_FRIENDLY_乔林·克罗格|r 对话
    .complete 91294,2 --|1/1 Speak with Jorin Croge
    .target Jorin Croge
step << Paladin --upstairs in keep
    .goto 1420/0,2035.100,2492.200
    >>与 |cRXP_FRIENDLY_丹妮莎·莫尔|r 对话
    .complete 91294,4 --|1/1 Speak with Danitha Morr
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2035.100,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹妮莎·莫尔|r 对话
    .turnin 91294 >>交任务 Touring the Grounds
    .accept 91317 >>接受任务 The Tarnished
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2007.800,2491.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔林·克罗格|r 对话
    .accept 91316 >>接受任务 修理伐木机
    .target Jorin Croge
step << Paladin
    #completewith next
    >>杀死 |cRXP_ENEMY_Tarnished Zealots|r 和 |cRXP_ENEMY_Tarnished Drudges|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step << Paladin
    .goto 1420/0,2514.600,1903.600
    >>击杀楼上的 |cRXP_ENEMY_鲁道夫·盖尔哈特|r。拾取他身上的 |cRXP_LOOT_头颅|r
    .complete 91317,1 --|1/1 Rudolph Gelhardt's Head
    .mob Rudolph Gelhardt
step << Paladin
    .goto 1420/0,2487.700,1910.000
    >>杀死 |cRXP_ENEMY_Tarnished Zealots|r 和 |cRXP_ENEMY_Tarnished Drudges|r
    .complete 91317,3 --|6/6 Tarnished Zealot slain
    .mob +Tarnished Zealot
    .complete 91317,2 --|8/8 Tarnished Drudge slain
    .mob +Tarnished Drudge
step
    #label ShadowValeCrypt
    .goto 1420/0,2449.500,1857.600,10 >>进入影谷墓穴
    .isOnQuest 99152,95314,99153
step
    #requires ShadowValeCrypt
    #completewith GlowingFragment
    >>击杀 |cRXP_ENEMY_影谷潜伏者|r 和 |cRXP_ENEMY_影谷秘法师|r。拾取他们的|cRXP_LOOT_散发微光的骸骨|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    #completewith GlowingBones
    >>拾取地上的战利品 |cRXP_PICK_Lumber Piles|r << Paladin
    >>拾取地上和墙上的 |cRXP_PICK_低语饮剂瓶|r
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    .goto 1420/0,2648.100,2027.200
    .use 268812 >>击杀 |cRXP_ENEMY_低语恐魔|r（精英怪）。拾取他的 |T134438:0|t[|cRXP_LOOT_低语恐魔残渣|r]
    >>|cRXP_WARN_这个任务很难！如果可能的话请组队。它有700点生命值，但它的伤害是可控的。如果你无法击杀它，请跳过这一步|r
    .collect 268812,1,95328 --Whispering Horror Residue (x1)
    .accept 95328 >>接受任务 低语恐魔残渣
    .mob Whispering Horror
step
    #requires ShadowValeCrypt
    #label GlowingFragment
    .goto 1420/0,2592.400,1748.400
    >>拾取地上的 |cRXP_PICK_闪光的水晶碎片|r
    .complete 99153,1 --|1/1 Glowing Crystal Fragment
step
    #requires ShadowValeCrypt
    #label GlowingBones
    .goto 1420/0,2556.100,1868.800
    >>击杀 |cRXP_ENEMY_影谷潜伏者|r 和 |cRXP_ENEMY_影谷秘法师|r。拾取他们的|cRXP_LOOT_散发微光的骸骨|r
    .complete 99152,1 --|6/6 Faintly Glowing Bone
    .mob Shadowvale Lurcher
    .mob Shadowvale Mystic
step
    #requires ShadowValeCrypt
    .goto 1420/0,2647.800,1815.500
    >>在地上拾取 |cRXP_PICK_Lumber Piles|r << Paladin
    >>拾取地上和墙上的 |cRXP_PICK_低语饮剂瓶|r
    .complete 91316,1 << Paladin--|12/12 Sturdy Lumber
    .complete 95314,1 --|8/8 Bottle of Whispering Elixir
step
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto 1420/0,2037.100,2416.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_破坏者希尔达|r 对话
    .turnin 99152 >>交任务 As Above, So Below
    .target Hilda the Breaker
step
    .goto 1420/0,2122.500,2436.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃弗拉姆·巴巴罗|r 对话
    .turnin 99153 >>交任务 逃走的大鱼
    .target Ephram Barbaro
step << Paladin
    .goto 1420/0,2008.000,2491.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔林·克罗格|r 对话
    .turnin 91316 >>交任务 修理伐木机
    .target Jorin Croge
step << Paladin
    .goto 1420/0,2035.100,2492.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹妮莎·莫尔|r 对话
    .turnin 91317 >>交任务 The Tarnished
    .accept 95803 >>接受任务 A Token of 优秀 Faith
    .accept 94427 >>接受任务 神性一课
    .target Danitha Morr
step << !Paladin
    #completewith BrillTurnin2
    .hs >>炉石返回布瑞尔，提瑞斯法林地
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step << !Paladin
    #completewith BrillTurnin2
    .subzone 159 >>返回布瑞尔
    .subzoneskip 159
    .cooldown item,6948,<0
step << !Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗莱·安尼斯|r 对话
    .turnin 95314 >>交任务 影谷的绿色饮剂
    .target Carolai Anise
step << Priest
    .goto 1420/0,251.14,2265.28--c:Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与二楼的 |cRXP_FRIENDLY_贝里尔|r 对话
	.trainer >>训练你的职业技能
    .target Dark Cleric Beryl
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03--c:Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 7384 >>学习你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25--c:Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁伯特|r 对话
    .train 755 >>训练你的职业技能
    .target 鲁伯特·鲍什
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2270.70--c:Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马里恩|r 对话
    .train 1766 >>训练你的职业技能
    .target 马里恩·考尔
    .xp <12,1
step << Mage
    .goto 1420/0,233.52,2256.84--c:Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯恩|r 在旅馆内对话
    .train 145 >>训练你的职业技能
    .target 凯恩·火歌
    .xp <12,1
step
    #optional
    #label BandarionKeepSkip
step << Rogue
    #completewith EnterUC2
    >>|cRXP_WARN_如果你看到|r |cRXP_FRIENDLY_阿斯托|r|cRXP_WARN_，就与他对话并将其击杀。从他身上拾取信件。他在布瑞尔和瑟伯切尔之间的道路上巡逻。|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << !Paladin
    #label BrillTurnin2
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林奈|r 对话
    .turnin 356 >>交任务 巡查后方
    .target Deathguard Linnea
step << !Paladin
    #label EnterUC2
    #completewith Glix
    .goto 1420/0,240.75,1877.57,20 >>进入幽暗城
    .zoneskip Undercity
step << !Paladin
    #completewith Glix
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>乘电梯下去到幽暗城
step << !Paladin
    .goto 1458/0,223.31,1634.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺曼|r 对话
    .home >>将你的炉石设置到幽暗城
    .target Innkeeper Norman
    .bindlocation 1497
step << Paladin
    #completewith Glix
    .hs >>炉石回到幽暗城
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step << Paladin --trade quarter
    .goto 1458/0,245.300,1637.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尼斯·桤木|r 对话
    >>|cRXP_WARN_确保你的背包里有10张|r |T132889:0|t[亚麻布] |cRXP_WARN_|r
    .turnin 94427 >>交任务 神性一课
    .accept 94434 >>接受任务 神性一课
    .turnin 94434 >>交任务 神性一课
    .accept 94435 >>接受任务 神性一课
    .target Tanis Alderwood
step
    #label Glix
    .goto 1458/0,201.400,1575.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格利克斯·希基克斯|r 对话
    .turnin 98545 >>交任务 Leonid's 书信
    .target Glix Xizzix
step << Rogue
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.1922
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_装备|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto 1458/0,133.71,1561.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在潜行者区与 |cRXP_FRIENDLY_查尔斯·希顿|r 对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师凯恩|r 对话
    >>|cRXP_BUY_从拍卖行|r |cRXP_BUY_购买三个|r |T133884:0|t[鱼人的眼球]
    >>|cRXP_WARN_如果你愿意的话可以跳过，这只是个小捷径|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .turnin 1882 >>交任务 巴尼尔农场
    .target 安娜斯塔西娅·哈特威尔
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .turnin 1886 >>交任务亡灵哨兵
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .accept 1898 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德隆|r 对话
    .turnin 1898 >>交任务亡灵哨兵
    .accept 1899 >>接受任务 亡灵哨兵
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,341.41,1385.90
    >>拾取|cRXP_PICK_安德隆的书架|r，它位于|cRXP_FRIENDLY_安德隆|r身后
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .turnin 1899 >>交任务亡灵哨兵
    .accept 1978 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .turnin 1978 >>交任务亡灵哨兵
    .target 瓦里玛萨斯
    .isQuestTurnedIn 1886
step
    .goto 1458/0,399.800,1776.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克斯特神父|r 对话
    .turnin 95328 >>交任务 低语恐魔残渣
    .target Father Lankester
    .isOnQuest 95328
step << Priest
    #ah
    .goto 1458/0,257.27,1560.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师雷克尔|r 对话
    >>|cRXP_BUY_可以从拍卖行购买一根|r |T135139:0|t|T135139:0|t[次级魔法杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你之前这样做并收集了|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_，现在可以将|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_在拍卖行出售|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target 拍卖师雷克尔
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
step << Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_艾萨莱斯特|r 对话
    .turnin 5658 >>交任务 虚弱之触
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克多|r 对话
    .train 3908 >>训练 |T136249:0|t[裁缝]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_将你所有的|r |T132889:0|t[亚麻布] |cRXP_WARN_转化为|r |T132890:0|t[亚麻布卷]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,201.05,1686.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克多|r 对话
    .train 7623 >>学习 |T132662:0|t[棕色亚麻长袍]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米利尔|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132891:0|t[粗线] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_创建尽可能多的|r |T132662:0|t[棕色亚麻长袍] |cRXP_WARN_|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉文尼亚|r 对话
    .train 7411 >>训练 |T136244:0|t[附魔]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_萨德乌斯|r 对话|cRXP_BUY_从他那里购买|r |T133942:0|t[铜棒] |cRXP_BUY_和|r |T135435:0|t[普通木柴] |cRXP_BUY_|r
    >>|cRXP_WARN_分解你制作的所有|r |T132662:0|t[棕色亚麻长袍] |cRXP_WARN_并制作一根|r |T135225:0|t[符文铜棒]
    >>|cRXP_WARN_如果你还没有|r |T132867:0|t[次级魔法精华] |cRXP_WARN_，可以从|r |cRXP_FRIENDLY_萨德乌斯|r |cRXP_WARN_处购买（如果有货的话）。否则稍后再完成这一步|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛考布|r 对话
    .train 14293 >>学习 |T135139:0|t[次级魔法杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_制造一个|r |T135139:0|t[次级魔法杖]
    >>|cRXP_WARN_如果你还没有|r |T132867:0|t[次级魔法精华] |cRXP_WARN_，可以从|r |cRXP_FRIENDLY_萨德乌斯|r |cRXP_WARN_处购买（如果有货的话）。否则稍后再完成这一步|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_装备|r |T135139:0|t[次级魔法杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Paladin
    #completewith next
    .goto 1458/0,374.41,1464.82,10,0--c:Undercity,51.99,64.54
    .goto 1458/0,429.48,1409.26,10,0--c:Undercity,46.25,73.22
    .goto 1458/0,438.40,1376.62,10,0--c:Undercity,45.32,78.32
    .goto 1458/0,429.39,1340.83,10,0--c:Undercity,46.26,83.91
    .goto 1458/0,402.81,1315.17,10,0--c:Undercity,49.03,87.92
    .goto 1458/0,365.30,1304.41,10 >>进入皇家区--c:Undercity,52.94,89.60
step << Paladin
    .goto 1458/0,316.200,1290.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r对话
    .turnin 95803 >>交任务 A Token of 优秀 Faith
    .target Lady Sylvanas Windrunner

    --Paladin Ressurrect chain route

step << Paladin
    #completewith
    .goto 1420/0,235.32,1883.89
    .zone Tirisfal Glades >>离开幽暗城
    .zoneskip Tirisfal Glades
step << Paladin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_林奈|r 对话
    .turnin 356 >>交任务 巡查后方
    .target Deathguard Linnea
step << Paladin
    .goto 1420/0,311.600,2251.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎莉·斯迪威尔|r 对话
    .train 678 >>训练你的职业技能
    .target Shari Stilwell
    .xp <12,1
step << Paladin
    .goto 1420/0,347.600,2265.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗莱·安尼斯|r 对话
    .turnin 95314 >>交任务 影谷的绿色饮剂
    .target Carolai Anise
step << Paladin
    #completewith RessComplete
    +|cRXP_WARN_接下来你要去做获得|r |T135955:0|t[救赎] |cRXP_WARN_技能的任务链。这大约需要15分钟，而且不会给多少经验|r
    >>|cRXP_WARN_如果你想的话，你可以随时跳过这个任务，之后再回来做|r
step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>前往班达里安堡
step << Paladin
    .goto 1420/0,2035.100,2492.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹妮莎·莫尔|r 对话
    .turnin 94435 >>交任务 神性一课
    .accept 94436 >>接受任务 神性一课
    .target Danitha Morr
step << Paladin
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵比尔穆斯|r 对话
    .turnin 94436 >>交任务 神性一课
    .accept 94438 >>接受任务 神性一课
    .target Deathguard Billmuth
    .isOnQuest 94436
step << Paladin
    #optional
    .goto 1420/0,2043.400,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵比尔穆斯|r 对话
    .accept 94438 >>接受任务 神性一课
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436

    --East Tirisfal south of SM

step << Paladin
    #completewith next
    .goto 1420/0,-885.200,2399.800,50 >>前往提瑞斯法东部
step << Paladin
    #completewith next
    .cast 8593 >>|cRXP_WARN_在|r |cRXP_WARN_亡灵卫兵法尔甘|r 身上 |cRXP_FRIENDLY_使用|r |T133439:0|t[生命符记]
    .use 6866
    .target Deathguard Falgan
step << Paladin
    .goto 1420/0,-885.200,2399.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵法尔甘|r 对话
    .turnin 94438 >>交任务 神性一课
    .accept 94440 >>接受任务 神性一课
    .target Deathguard Falgan
    .isQuestTurnedIn 94436
step << Paladin
    .goto 1420/0,-889.700,2531.400
    >>击杀 |cRXP_ENEMY_血色苦行修士|r 和 |cRXP_ENEMY_血色狂热者|r。拾取他们的 |cRXP_LOOT_血色十字军的攻击计划|r
    .complete 94440,1 --|1/1 Scarlet Crusade Attack Plans
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isQuestTurnedIn 94436

    --Back to Bandarion Keep

step << Paladin
    #completewith next
    .goto 1420/0,1732.500,2437.900,50,0
    .goto 1420/0,1834.300,2424.000,50,0
    .goto 1420/0,1963.100,2340.600,50,0
    .goto 1420/0,2041.000,2352.500,50,0
    .goto 1420/0,2049.900,2463.200,50 >>前往班达里安堡
step << Paladin
    .goto 1420/0,2043.500,2497.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亡灵卫兵比尔穆斯|r 对话
    .turnin 94440 >>交任务 神性一课
    .accept 94441 >>接受任务 神性一课
    .target Deathguard Billmuth
    .isQuestTurnedIn 94436
step << Paladin
    #label RessComplete
    .goto 1420/0,2034.900,2492.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹妮莎·莫尔|r 对话
    .turnin 94441 >>交任务 神性一课
    .target Danitha Morr
    .isQuestTurnedIn 94436
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 96899 >>放弃任务 班达里安堡
step << !Paladin
    #completewith Entersilverpine
    #optional
    .abandon 95314 >>放弃任务 影谷的绿色饮剂
step << !Paladin
    #completewith next
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>从幽暗城下水道离开
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >>前往银松森林
]])


RXPGuides.RegisterGuide([[
#group RestedXP魔兽世界无限指南（部落）
#subgroup 快速升级指南1-22级
--#groupid RXP-SRGCE-H1
<< Horde
#version 11
#defaultfor !Hunter !Shaman !Tauren
#forever
#era/som--h
#name 12-14级 银松森林
#displayname 13-15级 银松森林 << Paladin
#next 12-17级 贫瘠之地

step << Skyborne
    #optional
    .maxlevel 13,Silverpineskip
step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_如果你看到|r |cRXP_FRIENDLY_阿斯托|r|cRXP_WARN_，就与他对话并将其击杀。从他身上拾取信件。他在布瑞尔和瑟伯切尔之间的道路上巡逻。|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_亡灵哨兵埃兰德|r对话，开始护送任务
    >>|cRXP_WARN_如果他不在，暂时跳过这个任务|r
    .accept 435,1 >>接受任务 护送埃兰德
    .target Deathstalker Erland
step
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>安全护送|cRXP_FRIENDLY_埃兰德|r前往|cRXP_FRIENDLY_雷恩·约里克|r处
    >>|cRXP_ENEMY_座狼|r |cRXP_WARN_可以堆叠刷新，尽可能多地进食和饮水|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .turnin 435 >>交任务 护送埃兰德
    .accept 429 >>接受任务 荒野之心
    .accept 449 >>接受任务 亡灵哨兵的报告
    .target Rane Yorick
    .isQuestComplete 435
step
    #optional
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .accept 429 >>接受任务 荒野之心
    .target Rane Yorick
step
    #completewith Escort2
    >>击杀|cRXP_ENEMY_座狼|r，拾取它们的|cRXP_LOOT_心脏|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,715.000,1335.400
    >>击杀 |cRXP_ENEMY_邪鳍鱼人|r。拾取它们的 |T133884:0|t[|cRXP_LOOT_鱼人的眼珠|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_亡灵哨兵埃兰德|r对话，开始护送任务
    .accept 435,1 >>接受任务 护送埃兰德
    .target Deathstalker Erland
step
    #label Escort2
    .goto 1421/0,1087.50,1379.11,30,0
    .goto 1421/0,1087.50,1346.63,30,0
    .goto 1421/0,1090.86,1313.31,30,0
    .goto 1421/0,1204.68,1290.07
    >>安全护送|cRXP_FRIENDLY_埃兰德|r前往|cRXP_FRIENDLY_雷恩·约里克|r处
    >>|cRXP_ENEMY_座狼|r |cRXP_WARN_可以堆叠刷新，尽可能多地进食和饮水|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
    .isOnQuest 435
step
    #loop
    .goto 1421/0,1025.76,1384.71,0
    .goto 1421/0,1099.68,1213.63,50,0
    .goto 1421/0,998.46,1230.99,50,0
    .goto 1421/0,955.2,1286.43,50,0
    .goto 1421/0,925.38,1372.39,50,0
    .goto 1421/0,1025.76,1384.71,50,0
    >>击杀|cRXP_ENEMY_座狼|r，拾取它们的|cRXP_LOOT_心脏|r
    .collect 3164,3,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .turnin 435 >>交任务 护送埃兰德
    .turnin 429 >>交任务 荒野之心
    .accept 449 >>接受任务 亡灵哨兵的报告
    .target Rane Yorick
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #hardcore
    #completewith next
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100 >>前往墓地
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .accept 421 >>接受任务 证明你的价值
    .target 达拉尔·道恩维沃尔
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格乌恩|r 对话
    .vendor >>|cRXP_BUY_从他那里购买|r |T134532:0|t[红斑蘑菇] |cRXP_BUY_|r
    >>|cRXP_WARN_不要卖掉你的|r |T133884:0|t[|cRXP_LOOT_鱼人的眼球|r]
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德温|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_购买|r |T134830:0|t|T134830:0|t[次级治疗药水] |cRXP_BUY_从他那里（如果有货的话）|r
    >>|cRXP_WARN_不要卖掉你的|r |T133884:0|t[|cRXP_LOOT_鱼人的眼球|r]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利斯特|r 和 |cRXP_FRIENDLY_博迪瑞格|r 对话
    .accept 477 >>接受任务 越境
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .accept 6321 >>接受任务 瑟伯切尔的补给
    .target +Deathguard Podrig
    .goto 1421/0,1625.94,499.91
step
    #label BorderCrossings
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利斯特|r 对话
    .accept 477 >>接受任务 越境
    .target Shadow Priest Allister
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>进入地穴
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地穴中的|cRXP_FRIENDLY_高级执行官哈德瑞克|r交谈
    .turnin 449 >>交任务 死亡猎手的报告
    .accept 3221 >>接受任务 与伦弗利尔会面
    .accept 437 >>接受任务 亡者农场
    .target 高级执行官哈德瑞克
step
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 对话
    .turnin 429 >>交任务 荒野之心
    .turnin 445 >>交任务 给银松森林送信
    .turnin 3221 >>交任务 与伦弗利尔会面
    .accept 1359 >>接受任务 给金格的货物
    .accept 447 >>接受任务 致命的配方
    .accept 430 >>接受任务 回到奎恩身旁
    .target 药剂师伦弗利尔
    .addquestitem 3164,429
    .isOnQuest 445
step
    #optional
    .goto 1421/0,1652.82,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦弗利尔|r 对话
    .turnin 429 >>交任务 荒野之心
    .turnin 3221 >>交任务 与伦弗利尔会面
    .accept 1359 >>接受任务 给金格的货物
    .accept 447 >>接受任务 致命的配方
    .accept 430 >>接受任务 回到奎恩身旁
    .target 药剂师伦弗利尔
    .addquestitem 3164,429
step
    #loop
    .goto 1421/0,1386.96,638.51,0
    .goto 1421/0,1336.56,568.51,50,0
    .goto 1421/0,1271.88,502.99,50,0
    .goto 1421/0,1285.74,460.99,50,0
    .goto 1421/0,1281.96,410.87,50,0
    .goto 1421/0,1274.4,361.87,50,0
    .goto 1421/0,1315.14,329.95,50,0
    .goto 1421/0,1386.96,638.51,50,0
    >>击杀|cRXP_ENEMY_月怒白头狼人|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .target 达拉尔·道恩维沃尔
    .turnin 421 >>交任务 证明你的价值
    .accept 422 >>接受任务 阿鲁高的愚行
step
    #completewith Remedy
    .goto 1421/0,1234.92,891.070,80 >>前往瓦尔甘农场
step
    #label Remedy
    .goto 1421/0,1234.92,891.070,8,0
    .goto 1421/0,1218.54,884.91,8,0
    .goto 1421/0,1226.52,886.03,8,0
    .goto 1421/0,1231.14,866.99
    >>进入房子，上到二楼。拾取地上的|cRXP_PICK_暗色法术书|r
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto 1421/0,1207.62,1293.71,80,0
    .subzone 239 >>前往伊瓦南瓜田
step
    #label QuinnYorick
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在房屋二楼与 |cRXP_FRIENDLY_奎恩·尤瑞克|r 对话
    .turnin 430 >>交任务 回到奎恩身旁
    .accept 91920 >>接受任务 鱼人之眼
    .target Quinn Yorick
step
    .goto 1421/0,715.000,1335.400
    >>击杀 |cRXP_ENEMY_邪鳍鱼人|r。拾取它们的 |T133884:0|t[|cRXP_LOOT_鱼人的眼珠|r]
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .mob Vile Vin Shredder
    .mob Vile Vin Tidehunter
step
    #completewith ArugalTurnin
    +|cRXP_WARN_小心！附近可能有|r |cRXP_ENEMY_阿鲁高之子|r |cRXP_WARN_出没！这是25级精英怪，务必远离他！|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>杀死 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto 1421/0,1541.52,1078.39
    >>在亡者农场附近击杀|cRXP_ENEMY_腐皮豺狼人|r，直到|cRXP_ENEMY_奈塔拉什的哀嚎|r刷新。击杀她并拾取|cRXP_LOOT_精华|r
    >>|cRXP_WARN_它们对恐惧免疫！|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>杀死 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>击杀 |cRXP_ENEMY_蜘蛛|r。从它们身上获得|cRXP_LOOT_鲜血|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_因为她极难击杀！|r << !Mage !Warlock
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_虽然困难但可以击杀，她拥有130点伤害的护盾，15秒冷却，以及110点瞬间冲击伤害|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto 1421/0,2064.0,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基利恩|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto 1421/0,1924.14,1269.070,0
	.goto 1421/0,1885.50,1218.95,50,0
	.goto 1421/0,1951.86,1218.39,50,0
	.goto 1421/0,1981.68,1209.15,50,0
	.goto 1421/0,2022.42,1183.95,50,0
	.goto 1421/0,2016.12,1239.39,50,0
	.goto 1421/0,1977.48,1260.670,50,0
	.goto 1421/0,1944.30,1279.43,50,0
	.goto 1421/0,1924.14,1269.070,50,0
    >>击杀 |cRXP_ENEMY_蜘蛛|r。从它们身上获得|cRXP_LOOT_鲜血|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_因为她极难击杀！|r << !Mage !Warlock
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_暗网编织者克雷希斯|r |cRXP_WARN_虽然困难但可以击杀，她拥有130点伤害的护盾，15秒冷却，以及110点瞬间冲击伤害|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspi
step
    #loop
    .goto 1421/0,1702.8,1060.47,0
    .goto 1421/0,1712.46,1116.75,50,0
    .goto 1421/0,1702.8,1060.47,50,0
    .goto 1421/0,1670.88,1001.11,50,0
    .goto 1421/0,1573.86,971.15,50,0
    .goto 1421/0,1514.64,921.31,50,0
    >>完成击杀 |cRXP_ENEMY_熊|r。拾取它们的 |cRXP_LOOT_心|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step << skip
    #softcore
    #completewith ArugalTurnin
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    --#hardcore
    #completewith next
    .goto 1421/0,1538.58,511.39,100,0
    .subzone 228 >>返回瑟伯切尔
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 422 >>交任务 阿鲁高的愚行
    .accept 423 >>接受任务 阿鲁高的愚行
    .target 达拉尔·道恩维沃尔
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>进入地穴
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地穴中的|cRXP_FRIENDLY_高级执行官哈德瑞克|r交谈
    .turnin 437 >>交任务 亡者农场
    .accept 438 >>接受任务 破旧渡口
    .target 高级执行官哈德瑞克
step
    .goto 1421/0,1652.600,522.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师伦弗利尔|r 对话
    .turnin 91920 >>交任务 鱼人之眼
    .accept 91921 >>接受任务 回到奎恩身旁 (Again)
    .target 药剂师伦弗利尔
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格乌恩|r 对话
    >>|cRXP_BUY_从她那里购买|r |T134532:0|t|T134532:0|t[红斑蘑菇] |cRXP_BUY_|r
    .vendor >>把垃圾物品卖给商人
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德温|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_购买|r |T134830:0|t|T134830:0|t[次级治疗药水] |cRXP_BUY_从他那里（如果有货的话）|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.4,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德利亚|r 对话
    .vendor >>购买 |T132491:0|t[|cRXP_FRIENDLY_智者腰带|r]，如果她有货的话
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚历山德勒|r 对话
    .vendor >>购买 |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r]，如果她有货的话
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132491:0|t[|cRXP_FRIENDLY_智者腰带|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_装备|r |T132539:0|t[|cRXP_FRIENDLY_轻便靴|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #completewith Shackles
    .goto 1421/0,1593.60,597.91,15,0--c:Silverpine Forest,44.20,38.17
    .goto 1421/0,1582.68,640.47,15,0--c:Silverpine Forest,44.46,36.65
    .goto 1421/0,1563.78,738.75,30 >>下山--c:Silverpine Forest,44.91,33.14
step
    #completewith DecrepitFerry
    +|cRXP_WARN_小心！附近可能有|r |cRXP_ENEMY_阿鲁高之子|r |cRXP_WARN_出没！这是25级精英怪，务必远离他！|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
    .goto 1421/0,1609.1399,798.6667,50,0,0
    .goto 1421/0,1609.1399,798.6667,50,0
    .goto 1421/0,1592.7599,783.2667,50,0
    .goto 1421/0,1622.5799,760.0267,50,0
    .goto 1421/0,1660.3799,795.3067,50,0
    .goto 1421/0,1716.2399,819.6667,50,0
    .goto 1421/0,1782.5999,819.9467,50,0
    .goto 1421/0,1813.6799,850.4667,50,0
    .goto 1421/0,1842.2399,907.8667,50,0
    .goto 1421/0,1870.7999,990.1867,50,0
    .goto 1421/0,1851.0599,1019.0267,50,0
    .goto 1421/0,1830.4799,1052.6267,50,0
    .goto 1421/0,1781.3399,1015.3867,50,0
    .goto 1421/0,1707.4199,1008.3867,50,0
    .goto 1421/0,1722.1199,952.6667,50,0
    .goto 1421/0,1720.8599,875.3867,50,0
    .goto 1421/0,1685.5799,847.1067,50,0
    .goto 1421/0,1609.1399,798.6667,50,0
    >>击杀|cRXP_ENEMY_月怒暴食者|r和|cRXP_ENEMY_月怒暗魂|r，从它们身上拾取|cRXP_LOOT_镣铐|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_月怒暗魂|r |cRXP_WARN_在生命值低于25%时会狂暴。当它们血量较低时，请迅速击杀|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    .goto 1421/0,1207.62,1293.71,8,0
    .goto 1421/0,1220.64,1299.59,8,0
    .goto 1421/0,1212.66,1298.19,8,0
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在房屋二楼与 |cRXP_FRIENDLY_奎恩·尤瑞克|r 对话
    .turnin 91921 >>交任务 回到奎恩身旁 (Again)
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在外面与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .accept 425 >>接受任务 邪恶的伊瓦
    .target Rane Yorick
step
    .goto 1421/0,1265.58,1274.11,6,0
    .goto 1421/0,1270.62,1279.71,6,0
    .goto 1421/0,1285.32,1277.19
    >>杀死 |cRXP_ENEMY_邪恶的伊瓦|r。拾取他掉落的|cRXP_LOOT_头部|r
    >>|cRXP_WARN_伊瓦尔受到谷仓内两名|r |cRXP_ENEMY_拉文克劳奴隶|r |cRXP_WARN_的保护。你可以在他向前巡逻时单独拉出一名|r
    >>|cRXP_WARN_它们对恐惧免疫！|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto 1421/0,1204.68,1290.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_兰妮·尤瑞克|r 对话
    .turnin 425 >>交任务 邪恶的伊瓦
    .target Rane Yorick
step
    #label DecrepitFerry
    .goto 1421/0,997.62,692.55
    >>点击码头旁的 |cRXP_PICK_船只|r
    .turnin 438 >>交任务 破旧渡口
    .accept 439 >>接受任务 线索
step
    #completewith next
    .goto 1421/0,1538.58,511.39,100 >>返回瑟伯切尔
    .subzoneskip 228
step
    .goto 1421/0,1593.6,554.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉|r 对话
    .turnin 423 >>交任务 阿鲁高的愚行
    .accept 424 >>接受任务 阿鲁高的愚行
    .target 达拉尔·道恩维沃尔
step
    #completewith next
    .goto 1421/0,1640.22,509.43,8,0
    .goto 1421/0,1654.50,510.270,8,0
    .goto 1421/0,1654.08,521.470,8,0
    .goto 1421/0,1625.94,522.31,2 >>进入地穴
step
    .goto 1421/0,1625.94,522.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地穴中的|cRXP_FRIENDLY_高级执行官哈德瑞克|r交谈
    .turnin 439 >>交任务 烂皮线索
    .target 高级执行官哈德瑞克
step
    #completewith next
    .goto 1421/0,1077.84,380.35,10 >>进入矿井--c:Silverpine Forest,56.48,45.94
step
    #label GrimsonthePale
    .goto 1421/0,990.48,410.87--c:Silverpine Forest,58.56,44.85
    >>击杀 |cRXP_ENEMY_白毛狼人格瑞姆森|r，拾取他的 |cRXP_LOOT_头颅|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
step
    #hardcore
    .goto 1421/0,1354.62,-22.57
    >>点击营地中的|cRXP_PICK_箱子|r
    >>|cRXP_WARN_小心！这些小怪会施放|r |T135846:0|t[寒冰箭] |cRXP_WARN_并在低生命值时逃离。把它们拉回来，一个一个击杀，直到你能安全地点击箱子为止|r
    .turnin 477 >>交任务 越境
    .accept 478 >>接受任务 地图与符记
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto 1421/0,1354.62,-22.57
    >>点击营地中的|cRXP_PICK_箱子|r
    >>|cRXP_WARN_小心，这些小怪会施放|r |T135846:0|t[寒冰箭]|r
    .turnin 477 >>交任务 越境
    .accept 478 >>接受任务 地图与符记
    .mob Dalaran Apprentice
step
    #completewith next
    #hardcore
    .goto 1421/0,1538.58,511.39,100 >>返回瑟伯切尔--c:Silverpine Forest,45.51,41.26
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利斯特|r 和 |cRXP_FRIENDLY_达拉尔|r 对话
    .turnin 478 >>交任务 地图与符记
    .accept 481 >>接受任务 达拉尔的推理
    .target +Shadow Priest Allister
    .goto 1421/0,1602.84,520.63
    .turnin 424 >>交任务 阿鲁高的愚行
    .turnin 481 >>交任务 达拉尔的推理
    .accept 482 >>接受任务 达拉然的意图
    .target +Dalar Dawnweaver
    .goto 1421/0,1593.6,554.23
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利斯特|r 对话
    .turnin 482 >>交任务 达拉然的意图
    .target Shadow Priest Allister
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡鲁斯|r 对话
    .turnin 6321 >>交任务 资助墓穴 << Undead
    .accept 6323 >>接受任务 飞往幽暗城 << Undead
    .fp Sepulcher >>获取泰雷多尔的飞行路径 << !Undead
    .fly Undercity >>飞往幽暗城 << !Undead
    .target 卡洛斯·拉佐克
    .zoneskip Undercity
step << Undead
    .hs >>炉石回到幽暗城
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1
step << Undead
    .goto 1458/0,283.37,1610.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高顿|r对话
    .turnin 6323 >>交任务 飞往幽暗城
    .accept 6322 >>接受任务 迈克尔·加勒特
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与贸易区的 |cRXP_FRIENDLY_刘易斯·瓦伦|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 刘易斯·瓦伦
step << Rogue
    #ah
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与贸易区的 |cRXP_FRIENDLY_刘易斯·瓦伦|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target 刘易斯·瓦伦
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto 1458/0,266.20,1567.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .turnin 6322 >>交任务 迈克尔·加勒特
    .target 迈克尔·加勒特
step << Undead Warrior
    #optional
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与|cRXP_FRIENDLY_巴尔图斯·弗勒|r 对话
    .train 285 >>训练你的职业技能
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_玛丽|r在盗贼区交谈
    .train 3273 >>训练 |T135966:0|t[急救]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >>制作|T133685:0|t|T133685:0|t[亚麻绷带]直到你的技能达到40或更高
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_玛丽|r在盗贼区交谈
    .train 3276 >>学习 |T133688:0|t[厚亚麻绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >>创建|T133688:0|t|T133688:0|t[厚亚麻绷带]，直到技能达到50或更高
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_玛丽|r在盗贼区交谈
    .train 3274 >>学习 中级急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .turnin 1886 >>交任务亡灵哨兵
    .accept 1898 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto 1458/0,71.92,1435.630
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .accept 1898 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1458/0,347.07,1389.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德隆|r 对话
    .turnin 1898 >>交任务亡灵哨兵
    .accept 1899 >>接受任务 亡灵哨兵
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto 1458/0,341.41,1385.90
    >>拾取|cRXP_PICK_安德隆的书架|r，它位于|cRXP_FRIENDLY_安德隆|r身后
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    .goto 1458/0,310.900,1528.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷萨多·卢卡|r 对话
    .accept 97891 >>接受任务 争分夺秒送药水
    .target 奥雷萨多·卢卡
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto 1458/0,404.63,1434.67,12 >>向炼金师区的|cRXP_FRIENDLY_大药剂师法拉尼尔|r走去
step
    .goto 1458/0,426.100,1403.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马丁·费尔本|r 对话
    .complete 97891,1 --|1/1 Speak to Doctor Martin Felben
    .turnin 97891 >>交任务 争分夺秒送药水
    .target Doctor Martin Felben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在炼金区与 |cRXP_FRIENDLY_大药剂师法拉尼尔|r 和 |cRXP_FRIENDLY_药剂师金格|r 对话
    .turnin 447 >>交任务 致命的配方
    .target +Master Apothecary Faranell
    .goto 1458/0,404.63,1434.67
    .turnin 1359 >>交任务 给金格的货物
    .accept 1358 >>接受任务 给赫布瑞姆的样本
    .target +Apothecary Zinge
    .goto 1458/0,391.97,1442.87
step << Undead Rogue
    .goto 1458/0,71.83,1435.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米奈特|r 对话
    .turnin 1899 >>交任务亡灵哨兵
    .accept 1978 >>接受任务 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #optional
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡罗琳|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡罗琳·瓦德
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto 1420/0,373.60,1464.85,40,0
    .goto 1420/0,333.38,1287.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .turnin 1978 >>交任务亡灵哨兵
    .target 瓦里玛萨斯
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,40 >>制作|T133685:0|t|T133685:0|t[亚麻绷带]直到你的技能达到40或更高
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_玛丽|r在盗贼区交谈
    .train 3276 >>学习 |T133688:0|t[厚亚麻绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    .skill firstaid,50 >>创建|T133688:0|t|T133688:0|t[厚亚麻绷带]，直到技能达到50或更高
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto 1458/0,171.03,1524.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_玛丽|r在盗贼区交谈
    .train 3274 >>学习 中级急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 2137 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #optional
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安娜斯塔西娅|r 对话
    .train 2120 >>训练你的职业技能
    .target 安娜斯塔西娅·哈特威尔
    .xp <16,1
step << Undead Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 6222 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #optional
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 1455 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <16,1
step << Paladin
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Garen|r 对话
    .train 647 >>训练你的职业技能
    .target Garen Largo
    .xp <14,1
    .xp >16,1
step << Paladin
    #optional
    .goto 1458/0,418.500,1782.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Garen|r 对话
    .train 7294 >>训练你的职业技能
    .target Garen Largo
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_赞恩·布拉德福德|r交谈
    >>|cRXP_BUY_购买1根|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_从他那里|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target 赞恩·布拉德弗
step << Priest/Mage/Warlock
    #ah
    .goto 1458/0,206.04,1705.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|Tinterface/worldmap/chatbubble_64grey.blp:20|t与魔法区的|cRXP_FRIENDLY_赞恩·布拉德福德|r交谈
    >>|cRXP_BUY_购买1根|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target 赞恩·布拉德弗
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_装备|r |T135468:0|t[烟尘魔杖] |cRXP_WARN_在你达到15级时|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_装备|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_艾萨莱斯特|r 对话
    .turnin 5658 >>交任务 虚弱之触
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #sticky
    #label TouchOW
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_艾萨莱斯特|r 对话
    .turnin 5660 >>交任务 虚弱之触
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉扎鲁斯|r 对话
	.train 6074 >>训练你的职业技能
    .target 拉扎鲁斯神父
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #optional
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉扎鲁斯|r 对话
	.train 8102 >>训练你的职业技能
    .target 拉扎鲁斯神父
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>放弃任务 亡灵哨兵，没有再做一次的机会了
    .abandon 1886 >>放弃任务 亡灵哨兵
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #requires TouchOW << Undead Priest
    .goto 1458/0,327.4,1770.6 << Priest
    .goto 1458/0,206.81,1712.48 << Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_通过跳到肉车的研磨机顶部，然后登出重入来执行返回角色选择跳过|r << Priest
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_跳到桶堆顶部，然后退出并重新登录，执行登出跳过|r << Mage/Warlock
    >>|cRXP_WARN_如果你做不到，就正常跑出幽暗城|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    .goto 1458/0,206.81,1712.48 << Priest/Mage/Warlock
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_跳到桶堆顶部，然后退出并重新登录，执行登出跳过|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_点击此处查看示例|r
    >>|cRXP_WARN_如果你做不到，就正常跑出幽暗城|r
    .zoneskip Undercity,1
    .dungeon !RFC
step << Undead/Skyborne
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找个队伍去怒焰裂谷了
    .dungeon RFC
step << Undead
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >>离开幽暗城
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto 1420/0,278.70,2071.27,12,0
    .goto 1420/0,253.85,2059.82,10,0
    .goto 1420/0,264.70,2053.50,8,0
    .goto 1420/0,271.02,2064.94,8,0
    .goto 1420/0,259.72,2068.86,8,0
    .goto 1420/0,261.53,2055.00,8,0
    .goto 1420/0,299.04,2069.46,-1
    .goto 1420/0,279.61,2441.21,-1
    .zone Durotar >>乘坐飞艇前往杜隆塔尔
    >>在等待时制作磨刀石/绷带 << Warrior/Rogue
    >>在等待时施放造食术/造水术 << Mage
    .zoneskip Durotar
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    .zoneskip Moonglade
step << Skyborne Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特|r 对话
    .turnin 94913 >>交任务 月光林地
    .target 德迪利特·星焰
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 5178 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <14,1
    .xp >16,1
step << Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8925 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <16,1
step << Skyborne
    .hs >>使用炉石返回奥格瑞玛
    .use 6948
    .zoneskip Orgrimmar
    .bindlocation 1637,1
step << Skyborne
    #optional
    #label Silverpineskip

    --Start Undead/Skyborne RFC

step << Undead
    #completewith HiddenEnemiesPickup
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>前往奥格瑞玛
    .dungeon RFC
step << Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    >>|cRXP_WARN_不要乘坐飞行路线前往任何地方！|r
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << Undead/Skyborne
    .goto 1411/1,-4769.10,1484.39,0
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r 小怪，直到掉落|cRXP_LOOT_军官的徽章|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .dungeon RFC
step << Undead/Skyborne
    #label HiddenEnemiesPickup
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >>交任务 隐藏的敌人
    .accept 5728 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step << Undead/Skyborne
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_销毁|r |T134417:0|t[军官的徽章] |cRXP_WARN_因为你不再需要它|r
    .dungeon RFC
step << Undead/Skyborne
    #label EnterRFC
    .goto 1454/1,-4420.76,1815.80
    .subzone 2437 >>进入 RFC Instance portal. Zone in
    .dungeon RFC
step << Undead/Skyborne
    >>|cRXP_WARN_如果可能，让队友共享以下任务|r
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .disablecheckbox
    .dungeon RFC
step << Undead/Skyborne
    #completewith next
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 5722 >>交任务 寻找背包
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead/Skyborne
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead/Skyborne
    #label TroggsShamans
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead/Skyborne
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    >>击杀|cRXP_ENEMY_饥饿者塔拉加曼|r，拾取|cRXP_LOOT_心|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step << Undead/Skyborne
    #label BazzalanandJergosh
    >>击杀|cRXP_ENEMY_巴扎兰|r和|cRXP_ENEMY_召唤者耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead/Skyborne
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5728 >>交任务 隐藏的敌人
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead/Skyborne
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5729 >>交任务 隐藏的敌人
    .accept 5730 >>接受任务 隐藏的敌人
    .target 尼尔鲁·火刃
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead/Skyborne
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5730 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target 多拉斯
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    #completewith RFCTurninsTB1
    .goto 1456/1,-212.71,-1065.010,80 >>前往长者高地
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .turnin 5723 >>交任务 试探敌人
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Skyborne
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉哈罗|r 对话
    .turnin 5724 >>交任务 归还背包
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .hs >>使用炉石返回奥格瑞玛
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 1637,1
    .cooldown item,6948,>0,1
    .dungeon RFC
step << Skyborne
    #completewith Conscript
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC

    --End Undead/Skyborne RFC

step << Undead/Skyborne
    #completewith Conscript
    .subzone 362 >>前往剃刀岭
step << !Undead !Skyborne
    .hs >>炉石返回剃刀岭，杜隆塔尔
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 1758 >>训练你的职业技能
    .target 卡普拉克
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡普拉克|r 对话
    .train 6761 >>训练你的职业技能
    .target 卡普拉克
    .xp <16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
	.train 8122 >>训练你的职业技能
    .target 泰金
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰金|r 对话
	.train 8102 >>训练你的职业技能
    .target 泰金
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔绍尔·锯痕|r 对话
    .train 285 >>训练你的职业技能
    .target 塔绍尔·锯痕
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 6222 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜格鲁|r 对话
    .train 1455 >>训练你的职业技能
    .target 杜格鲁·血怒
    .xp <16,1
step
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克林·寻路者|r 对话
    .accept 840 >>接受任务 部落的新兵
    .target 塔克林·寻路者
step
    #completewith next
    .subzone 379 >>前往远望哨
step
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡加尔|r 对话
    .turnin 840 >>交任务 部落的新兵
    .accept 842 >>接受任务 十字路口征兵
    .target 卡加尔·战痕
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 809 >>交任务 雅克塞罗斯
    .accept 924 >>接受任务 恶魔之种
    .target 雅克塞罗斯
    .isQuestTurnedIn 829
step << !Undead !Skyborne
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_拾取位于 |r|cRXP_WARN_雅克塞罗斯|r |cRXP_FRIENDLY_旁的 |r|T134095:0|t[有瑕疵的能量石]|cRXP_WARN_。该物品有 30 分钟的计时器，所以要尽快操作|r
    .turnin 926 >>交任务 有瑕疵的能量石
    .isOnQuest 924

]])
