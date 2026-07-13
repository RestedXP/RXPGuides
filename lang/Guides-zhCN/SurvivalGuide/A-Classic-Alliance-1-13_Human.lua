if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6级 北郡
#version 1
#group RestedXP 生存指南 (联盟版)
#subgroup RXP 生存指南 1-20级
#defaultfor Human
#next 6-11级 艾尔文森林； 6-13级 艾尔文森林
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
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
    .target 杜希拉·拉萨雷
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_闯入迪菲亚营地里的帐篷|r
    >>打开 |cRXP_PICK_被偷走的书|r。并从中拾取 |cRXP_LOOT_虚空灵能|r
    >>|cRXP_WARN_你可以战利品 |cRXP_LOOT_Powers of the 阿虚|r 安全地在帐篷内！观看视频了解如何做到这一点|r
    .link https://youtu.be/3qQwsJhAZIk >>https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_点击这里查看视频|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_待在帐篷里，这样|cRXP_ENEMY_迪菲亚暴徒|r 就打不到你了|r
    .hs >>炉石返回到北郡山谷
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >>交任务失窃的典籍
    .target 杜希拉·拉萨雷
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .target 维里副队长
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >>接受任务 身边的危机
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>一直击杀 |cRXP_ENEMY_幼狼|r 直到你拥有价值10铜币以上的垃圾物品
    >>|cRXP_WARN_你会学习|r |T132333:0|t[战斗怒吼] |cRXP_WARN_从而加快前期升级速度|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 丹尼尔修士
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 莱尼·拜舍尔
    .goto Elwynn Forest,50.242,42.287
    .mob 幼狼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .target 治安官玛克布莱德
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >>交任务 身边的危机
    .accept 7 >>接受任务 狗头人的蜡烛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .target 维里副队长
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >>接受任务 伊根·派特斯金纳
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .target 伊根·派特斯金纳
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >>交任务 伊根·派特斯金纳
    .accept 33 >>接受任务 林中的群狼
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>|cRXP_WARN_一旦你攒够价值50铜的垃圾物品，就去买10瓶|r |T132794:0|t[清凉的泉水]
    .target 丹尼尔修士
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>击杀 |cRXP_ENEMY_幼狼|r 和 |cRXP_ENEMY_森林狼|r。拾取他们的 |cRXP_LOOT_肉|r
	.mob 幼狼
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>击杀 |cRXP_ENEMY_狗头人歹徒|r
	.mob 狗头人歹徒
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>击杀 |cRXP_ENEMY_幼狼|r 和 |cRXP_ENEMY_森林狼|r，拾取他们的 |cRXP_LOOT_肉|r
	.mob 幼狼
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊根·派特斯金纳|r 对话
    .target 伊根·派特斯金纳
    .turnin 33,2 >>交任务 林中的群狼 << Warrior/Paladin/Rogue
    .turnin 33,1 >>交任务 林中的群狼 << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼尔修士|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_WARN_购买10个|r |T132794:0|t[清凉的泉水]
    .target 丹尼尔修士
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .target 高德瑞克·洛斯迦
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_出售垃圾物品|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加诺斯|r 对话
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_购买1把|r |T135650:0|t[简易匕首]
    .target 亚努斯·哈默纳克
step << Rogue
    #completewith next
    +|cRXP_WARN_装备买来的|r |T135650:0|t[简易匕首]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .target 治安官玛克布莱德
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >>交任务 狗头人的蜡烛
    .accept 15 >>接受任务 回音山调查行动
    .accept 3100 >>接受任务 简要的信件 << Warrior
    .accept 3101 >>接受任务 圣洁信件 << Paladin
    .accept 3102 >>接受任务 密文信件 << Rogue
    .accept 3103 >>接受任务 神圣信件 << Priest
    .accept 3104 >>接受任务 雕文信件 << Mage
    .accept 3105 >>接受任务 被污染的信件 << Warlock
step
    .xp 3 >>刷怪升到3级
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>击杀 |cRXP_ENEMY_狗头人劳工|r
	.mob 狗头人劳工
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>返回途中将经验值刷到1110+/1400经验
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .target 高德瑞克·洛斯迦
    .vendor >>|cRXP_WARN_出售垃圾物品|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .target 治安官玛克布莱德
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >>交任务 调查营地
    .accept 21 >>接受任务 回音山清剿行动
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >>上楼 << Mage
    .goto Elwynn Forest,49.3,40.7,15 >>前去找 |cRXP_FRIENDLY_女牧师安妮塔|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尔登·布雷门|r 对话
    .target 凯尔登·布雷门
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>交任务 雕文信件
    .trainer >>训练你的职业技能
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >>穿过门道
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .target 女牧师安妮塔
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >>交任务 神圣信件
    .trainer >>训练你的职业技能
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>前往 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>前去找 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .target 莱尼·拜舍尔
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >>交任务 简要的信件
    .trainer >>训练你的职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .target 萨缪尔修士
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >>交任务 圣洁信件
    .trainer >>训练你的职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .target 维里副队长
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >>接受任务 盗贼兄弟会
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .target 杜希拉·拉萨雷
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >>交任务 被污染的信件
    .xp 4 >>刷怪升到4级
    .trainer >>学习 |T136118:0|t[腐蚀术]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>击杀|cRXP_ENEMY_迪菲亚暴徒|r，并拾取|cRXP_LOOT_头巾|r
	.mob 迪菲亚暴徒
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >>刷怪升到4级
step
    #completewith next
    #softcore
    .deathskip >>死亡并在灵魂医者处复活
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .target 维里副队长
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >>交任务 盗贼兄弟会 << Paladin
    .turnin 18,1 >>交任务 盗贼兄弟会 << Rogue/Warlock
    .turnin 18,5 >>交任务 盗贼兄弟会 << Mage
    .turnin 18,2 >>交任务 盗贼兄弟会 << Priest
    .turnin 18,3 >>交任务 盗贼兄弟会 << Warrior
    .turnin 18 >>交任务 盗贼兄弟会 << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >>接受任务 加瑞克·帕德弗特的赏金
    .accept 3903 >>接受任务 米莉·奥斯沃斯
step << Paladin
    #completewith next
    +装备 |T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高德瑞克·洛斯迦|r 对话
    .target 高德瑞克·洛斯迦
    .goto Elwynn Forest,47.7,41.4
    .vendor >>出售垃圾物品并且修理装备
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>进入回音山矿洞
step
    .goto Elwynn Forest,48.61,27.63
    >>击杀 |cRXP_ENEMY_狗头人苦力|r
	.mob 狗头人苦力
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>刷怪到5级
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .turnin 3903 >>交任务 米莉·奥斯沃斯
    >>|cRXP_WARN_跳过后续任务|r
    .target 米莉·奥斯沃斯
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .target 米莉·奥斯沃斯
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >>交任务 米莉·奥斯沃斯
    .accept 3904 >>接受任务 米莉的葡萄
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .target 乔里克·克里丹
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >>交任务 密文信件
    >>|cRXP_WARN_你不需要训练任何法术|r
step << Priest/Mage
    >>拾取地上的 |cRXP_PICK_米莉的葡萄|r
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>击杀 |cRXP_ENEMY_加瑞克·帕德弗特|r，拾取他的 |cRXP_LOOT_头颅|r
	.mob 加瑞克·帕德弗特
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >>放弃任务 米莉的葡萄
step << !Priest !Mage
    .xp 5+1715 >>返回途中升级到1715+/2800经验值
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >>返回途中升级到1175+/2800经验值
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >>死亡并在灵魂医者处复活
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .target 米莉·奥斯沃斯
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >>交任务 米莉的葡萄
    .accept 3905 >>接受任务 葡萄出货单
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .target 维里副队长
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >>交任务 加瑞克·帕德弗特的赏金 << Warrior/Rogue/Paladin
    .turnin 6,1 >>交任务 加瑞克·帕德弗特的赏金 << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在修道院内与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .target 治安官玛克布莱德
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >>交任务 回音山清剿行动 << Rogue
    .turnin 21,2 >>交任务 回音山清剿行动 << Warrior/Paladin
    .turnin 21,3 >>交任务 回音山清剿行动 << !Warrior !Paladin
    .accept 54 >>接受任务 去闪金镇报到
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>上楼
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_尼尔斯修士|r 对话
    .target 尼尔斯修士
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>交任务 葡萄出货单
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .target 女牧师安妮塔
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >>接受任务 圣光的恩赐
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r 对话
    .target 法尔坎·伊森斯泰德
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >>接受任务 休息和放松
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som
<< Alliance
#name 6-11 艾尔文森林
#version 1
#group RestedXP 生存指南 (联盟版)
#subgroup RXP Survival 向导 1-20
#defaultfor Human
#next 11-13 洛克莫丹
step
    #completewith next
    .subzone 87 >>前往金雾村
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .target 铁匠阿古斯
    .goto Elwynn Forest,41.706,65.544
    .trainer >>学习 |T136241:0|t[锻造]
    >>|cRXP_WARN_这将让你制造 |T135248:0|t[Rough Sharpening Stones]，增加近战伤害 +2。这在早期非常重要|r << Warrior/Rogue
    >>|cRXP_WARN_这将让你制造 |T135255:0|t[Rough Weightstones]，增加近战伤害 +2。这在早期非常重要|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一把|r |T135321:0|t[步兵剑]
    .target 科瑞娜·斯蒂利
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target 科瑞娜·斯蒂利
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target 科瑞娜·斯蒂利
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德温·克里顿|r 对话
    .target 安德温·克里顿
    .goto Elwynn Forest,41.706,65.786
    .vendor >>|cRXP_WARN_出售垃圾物品|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>交任务 去闪金镇报到
    .accept 62 >>接受任务 法戈第矿洞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .target 威廉·匹斯特
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >>接受任务 狗头人的蜡烛
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .target 旅店老板法雷
    .turnin 2158,1 >>交任务 休息和放松 << Rogue/Warrior
    .turnin 2158,2 >>交任务 休息和放松 << !Rogue !Warrior
    .home >>将你的炉石设置为闪金镇
step
    .xp 6 >>刷怪到6级
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .target 布洛葛·哈姆菲斯特
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>|cRXP_WARN_购买|r |T135641:0|t[平衡飞刀] |cRXP_WARN_并装备它|r
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>下楼
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .target 玛克西米利安·克洛文
    .trainer >>训练你的职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞琳娜·达克哈特|r 对话
    .vendor >>|cRXP_WARN_购买|r |T133738:0|t[经典怀旧服 道具 (级别 1)] |cRXP_WARN_如果你能负担得起。否则你之后会购买它|r
    .target 塞琳娜·达克哈特
step << Mage/Rogue/Priest
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target 米歇尔·贝利
    .train 3273 >>训练 |T135966:0|t[急救]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133995:0|t[达拉然奶酪] |cRXP_BUY_直到剩余1个银币|r << Warrior
    .vendor >>|cRXP_BUY_购买最多20个|r |T133995:0|t[达拉然奶酪] << Rogue
    .target 旅店老板法雷
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .target 里瑞亚·杜拉克
    .goto Elwynn Forest,41.087,65.768
    .trainer >>训练你的职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .target 威尔海姆修士
    .goto Elwynn Forest,41.096,66.041
    .trainer >>训练你的职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .target 雷米
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >>接受任务 金砂交易
step << Priest
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在|r|cRXP_FRIENDLY_卫兵罗伯兹|r 身上
    .target 卫兵罗伯兹
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob 石牙野猪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 和 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .target 波尼斯·斯通菲尔德姑妈
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >>接受任务 公主必须死！
    .target 斯通菲尔德妈妈
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_，将其转换为|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_，将其转换为|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .target 比利·马科伦
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .accept 106 >>接受任务 年轻的恋人
    .target 梅贝尔·马科伦
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒·马科伦|r 对话
    .target 乔舒·马科伦
    .vendor >>|cRXP_BUY_能买多少|r |T132815:0|t[冰镇牛奶] |cRXP_WARN_就买多少|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_出售垃圾物品|r << !Priest !Warlock !Mage
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_，将其转换为|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_，将其转换为|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r 对话
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >>交任务 年轻的恋人
    .accept 111 >>接受任务 托米的祖母
    .target 托米·乔·斯通菲尔德
step
    .goto Elwynn Forest,32.5,85.5
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob 石牙野猪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .target 波尼斯·斯通菲尔德姑妈
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >>交任务 比利的馅饼
    .accept 84 >>接受任务 比利的馅饼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莱德·斯通菲尔德|r 对话
    .target 米莱德·斯通菲尔德
    .goto 1429,34.945,83.855
    .turnin 111 >>交任务 托米的祖母
    .accept 107 >>接受任务 给威廉·匹斯特的信
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_制作成|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_制作成|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .target 比利·马科伦
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >>交任务 比利的馅饼
    .accept 87 >>接受任务 金牙
step
    #completewith KillGoldtooth
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>探索法戈第矿洞
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>击杀 |cRXP_ENEMY_金牙|r。拾取他的 |cRXP_LOOT_波尼斯的项链|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan 金牙
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    .goto Elwynn Forest,40.5,82.3
    >>探索法戈第矿洞
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取任何|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_将其转化为|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_从现在开始尽量保留一瓶|r |T134829:0|t[初级治疗药水] |cRXP_WARN_，因为之后在罗尔夫的尸体任务中会用到|r
step << Warrior/Rogue
    >>|cRXP_WARN_记住制作|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_如果你捡起了|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r
    .xp 7+1600 >>刷至1600+/4500xp
step << Paladin
    >>|cRXP_WARN_记住制作|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_如果你捡起了|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r
    .xp 7+1600 >>升到1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>刷至1600+/4500xp
step << Priest
    .xp 7+1260 >>升到1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .target 波尼斯·斯通菲尔德姑妈
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >>交任务 金牙
step
    .xp 7+2690 >>升到2690+/4500xp << !Priest
    .xp 7+2350 >>升到2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >>前往金雾村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .target 雷米
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >>交任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
    >>|cRXP_WARN_不要出售|r |T133581:0|t[背包 of Marbles] |cRXP_WARN_奖励。这是一个非常有价值的物品，你会用到60级|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 科瑞娜·斯蒂利
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一把|r |T135321:0|t[步兵剑]
    .target 科瑞娜·斯蒂利
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target 科瑞娜·斯蒂利
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target 科瑞娜·斯蒂利
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .target 威廉·匹斯特
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .accept 112 >>接受任务 收集海藻
step
    .xp 8 >>刷怪到8级
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .target 里瑞亚·杜拉克
    .goto Elwynn Forest,41.087,65.768
    .trainer >>训练你的职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .target 威尔海姆修士
    .goto Elwynn Forest,41.096,66.041
    .trainer >>训练你的职业技能
step << Warlock
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
    .vendor >>|cRXP_WARN_购买|r |T133738:0|t[Grimoire of Firebolt (级别 2)] |cRXP_WARN_如果你能负担的话。如果不能，你稍后会购买它|r
    .target 塞琳娜·达克哈特
step << Mage/Priest/Rogue/Warrior/Paladin
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
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r 对话
    .vendor >>|cRXP_WARN_如有需要，购买一个|r |T133634:0|t[棕色小包] |cRXP_WARN_|r
	.target 布洛葛·哈姆菲斯特
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .vendor >>|cRXP_WARN_购买最多40瓶|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_WARN_购买最多40个|r |T133995:0|t[达拉然奶酪] << Warrior/Rogue
    .vendor >>|cRXP_WARN_购买最多10个|r |T133995:0|t[达拉然奶酪] |cRXP_WARN_和10个|r |T132815:0|t[冰镇牛奶] << Paladin
    .target 旅店老板法雷
step
    >>击杀 |cRXP_ENEMY_Murlocs|r 和 |cRXP_ENEMY_Murloc Streamrunners|r。从他们处拾取 |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob 鱼人
	.mob 鱼人士兵
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >>进入玉石矿洞
step
    >>|cRXP_WARN_跟随路径穿过中部区域探索玉石矿洞|r
    >>|cRXP_WARN_在任务目标完成后立即退出玉石矿洞|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
step
    #completewith AcceptBundle
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .target 管理员莱琳
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >>接受任务 木材危机
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    .target 拉里克·费恩
    .goto Elwynn Forest,83.283,66.089
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #completewith Bundles
    >>在地上拾取 |cRXP_LOOT_Bundle of 木材|r。|cRXP_WARN_它们位于树木下面|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_将会施放|r |T135915:0|t[喝水 杂兵 药水] |cRXP_WARN_为自己恢复61-68点生命值|r
    >>|cRXP_WARN_施放 |r|T135953:0|t[恢复]|cRXP_WARN_ 和 |r|T135940:0|t[真言术：盾]|cRXP_WARN_然后恢复满法力。拉开小屋前的 2 个 |cRXP_ENEMY_鱼人|r，拉开距离后优先击杀其中一个。击杀后迅速跑开，再击杀另一个|r << Priest
    >>|cRXP_WARN_拉2个|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_在小屋前，退开然后|r |T136071:0|t[变形术] |cRXP_WARN_一个同时杀死另一个。杀死|r |T136071:0|t[变形术] |cRXP_WARN_的那个|r << Mage
    >>|cRXP_WARN_积攒 100 点怒气。将小屋前的 2 个|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_拉到你面前，拉开距离，对其中一个持续使用|r |T132316:0|t[断筋]|cRXP_WARN_，同时击杀另一个。在你击杀的目标上使用|r |T133581:0|t[弹珠袋]|cRXP_WARN_。击杀一个后，远离并用|r |T132316:0|t[断筋]|cRXP_WARN_重置被风筝的那个|r << Warrior
    >>|cRXP_WARN_将小屋前的 2 个|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_引到你面前，拉开距离，集中击杀其中一个。当两者同时攻击你时，使用|r |T136205:0|t[闪避]|cRXP_WARN_。这是使用|r |T133581:0|t[弹珠袋]|cRXP_WARN_的好时机。击杀一个后，拉开距离并重置另一个|r << Rogue
    >>|cRXP_WARN_拉开小屋前的 2 个|r |cRXP_ENEMY_鱼人|r|cRXP_WARN_，远离后持续对其中一个施放 |r|T136183:0|t[恐惧]|cRXP_WARN_，并尽量在两者身上保持 DoT 效果|r << Warlock
    >>|cRXP_WARN_拉2个|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_在小屋前，退开并快速击杀其中一个。根据需要使用|r |T135954:0|t[神圣 防护] |cRXP_WARN_和你的治疗。这是使用|r |T133581:0|t[背包 of Marbles] |cRXP_WARN_的好机会。一旦杀死一个就退开并重置|r << Paladin
    >>|cRXP_WARN_记住在|r |T135954:0|t[神圣 防护] |cRXP_WARN_期间你无法攻击|r << Paladin
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>在地上拾取 |cRXP_LOOT_Bundle of 木材|r。|cRXP_WARN_它们位于树木下面|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .target 管理员莱琳
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >>交任务 木材危机
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >>刷怪到9级
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .target 萨拉·迪博雷恩
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >>接受任务 红色亚麻布
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
step
    #era
    #completewith next
    >>杀死 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob 迪菲亚强盗
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>击杀 |cRXP_ENEMY_公主|r。并拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_会与她的 |r猪类随从|cRXP_ENEMY_ 一起仇恨你|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_还会施放|r |T132368:0|t[冲锋]|cRXP_WARN_，造成高额伤害|r
    >>|cRXP_WARN_在与 |r公主|cRXP_ENEMY_ 交战前，先积攒至 100 点怒气|r << Warrior
    >>|cRXP_WARN_确保 |T136205:0|t[闪避] |cRXP_WARN_已准备就绪。如果你觉得吃力，可以利用围栏并使用投掷武器卡路径来拖延时间|r << Rogue
    >>|cRXP_WARN_准备好使用|r |T134830:0|t[次级治疗药水]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_点击此处查看视频参考|r << !Warrior
    .complete 88,1
    .mob 公主
step
    #completewith Level9Grind
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] |cRXP_WARN_的掉率非常低。如果没有获得，可忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务 法布隆的地契
step
    #era
    >>杀死 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_Bandanas|r
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
    .mob 迪菲亚强盗
    .isOnQuest 83
step
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >>升到3400+/6500xp
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .target 萨拉·迪博雷恩
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >>交任务 红色亚麻布
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >>升到4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_坚持走主路，避免沿途的小怪|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target 艾蕾娜·斯托姆法瑟
step
    #completewith next
    .hs >>使用炉石返回闪金镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >>交任务 收集海藻
    .accept 114 >>接受任务 梅贝尔的隐形水
    .target 威廉·匹斯特
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往旅店楼上
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米歇尔·贝利|r 对话
    .target 米歇尔·贝利
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>训练 |T135966:0|t[急救]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >>交任务 托马斯的报告
    .turnin 76 >>交任务 玉石矿洞
    .accept 239 >>接受任务 西泉要塞
    .accept 59 >>接受任务 布甲和皮甲 << Warlock
    .accept 109 >>接受任务 向格里安·斯托曼报到
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .target 铁匠阿古斯
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >>接受任务 艾尔默的任务
step
    .xp 10 >>刷怪到10级
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>出售垃圾，维修
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target 伊尔萨·考宾
    .target 里瑞亚·杜拉克
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >>接受任务 战士的训练
    .trainer >>训练你的职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .target 威尔海姆修士
    .goto Elwynn Forest,41.096,66.041
    .trainer >>训练你的职业技能
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .target 玛克西米利安·克洛文
    .trainer >>训练你的职业技能
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_雷门·玛考特|r 对话
    .accept 1685 >>接受任务 加科因的召唤
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>上楼
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target 女牧师洁塞塔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
    .accept 5635 >>接受任务 绝望祷言
    .trainer >>训练你的职业技能
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
    >>|cRXP_WARN_训练|r |T132147:0|t[双武器] |cRXP_WARN_和|r |T132307:0|t[疾跑] |cRXP_WARN_作为最低要求。不要训练多余的技能。保存你的金钱|r
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>你金钱不足，购买 卷刃的剑 作为你的副手
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞娜·斯蒂利|r 对话
    >>|cRXP_WARN_购买并装备一把|r |T135641:0|t[卷刃的剑] |cRXP_WARN_作为副手武器|r
    .target 科瑞娜·斯蒂利
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>前往马科伦葡萄园
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .turnin 114 >>交任务  梅贝尔的隐形水
    .target 梅贝尔·马科伦
step
    .goto Elwynn Forest,34.660,84.482
    .target 斯通菲尔德妈妈
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .turnin 88,1 >>交任务 公主必须死！ << Rogue/Hunter
    .turnin 88,2 >>交任务 公主必须死！ << Warrior/Paladin
    .turnin 88,3 >>交任务 公主必须死！ << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >>前往西泉要塞
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 176 >>接受任务 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target 瑞尼尔副队长
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 176 >>接受任务 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target 瑞尼尔副队长
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .accept 11 >>接受任务 悬赏河爪豺狼人
    .target 瑞尼尔副队长
step
    #completewith GnollEnd
    >>击杀 |cRXP_ENEMY_河爪豺狼人幼崽|r 和 |cRXP_ENEMY_河爪斥候|r，拾取它们掉落的 |T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_采金日程表|r] |cRXP_WARN_掉率非常低。如果没有获得，可忽略此步骤|r
    >>|cRXP_ENEMY_格拉夫·疾齿|r |cRXP_WARN_为稀有刷新怪，但掉落率为 100%|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
    .unitscan 格拉夫·疾齿
step << !Warlock
    .group
    #completewith next
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
step << !Warlock
    .group
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
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan 霍格
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
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
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan 霍格
step
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
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。拾取他们的 |cRXP_LOOT_臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
step << Warrior
    .money >0.3129
    #era
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r
    >>|cRXP_WARN_刷怪直到你有31s 29c+的可出售物品/金钱。这是为了 投掷, 2h 锤 和 2h 剑 技能训练。还用来购买3级投掷武器，以及很快飞往暴风城|r
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
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >>交任务 通缉：霍格
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >>交任务 收货人
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 11 >>交任务 悬赏河爪豺狼人
    .target 瑞尼尔副队长
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 对话
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >>交任务 法布隆的地契
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .target 农夫法布隆
    .goto Westfall,59.95,19.35
    .accept 151 >>接受任务 老马布兰契
    .accept 36 >>接受任务 杂味炖肉
    .goto Westfall,59.92,19.42
	.target 弗娜·法布隆
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >>接受任务 清理荒野
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .turnin 36 >>交任务《 前往熔光镇》 杂味炖肉
    .target 萨尔玛·萨丁
    .accept 38 >>接受任务 杂味炖肉
    .accept 22 >>接受任务 猪肝馅饼
step
    #softcore
    #completewith next
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .target 格里安·斯托曼
    .accept 12 >>接受任务 西部荒野人民军
step
    #era
    .goto Westfall,56.421,47.623
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .accept 102 >>接受任务 西部荒野的豺狼人
step << Human
    .goto Westfall,57.002,47.169
    .target 军需官刘易斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官刘易斯|r 对话
    .accept 6181 >>接受任务 快捷的消息
    .vendor >>|cRXP_WARN_出售垃圾物品|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_磨升到你有31s 52c的可出售物品/金钱|r
step << Rogue
    #som
    .money >0.3197
    +磨升到你有31s 97c的可出售物品/金钱
    --Not taking into account Shipment q turnin money so its insurance money
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .turnin 6181 >>交任务 快捷的消息
    .accept 6281 >>接受任务 前往暴风城
    .target 索尔
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
step << Rogue
    #som
    >>进入建筑内
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >>从Thurman购买11级投掷武器。当你11级时装备它
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔曼·穆比|r
    .vendor >>|cRXP_WARN_购买一个|r |T135641:0|t[平衡飞刀] |cRXP_WARN_并装备它|r
    .target 萨尔曼·穆比
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_我们选择的奖励是|r |T132383:0|t[爆破火箭] |cRXP_WARN_它能造成不错的伤害，还可以用于"仇恨分离"，非常实用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考。这是一个简短却非常有价值的教学视频|r
    .target 摩根·匹斯特
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .target 吴平
    .goto StormwindClassic,57.129,57.698
    .trainer >>学习单手剑 << Rogue
    .trainer >>学习法杖 << Warlock/Priest
    .trainer >>学习双手剑 << Warrior/Paladin
    >>|cRXP_WARN_训练 2h Swords 如果你有足够的金钱。你必须为后面保留20s|r << Warrior
    >>|cRXP_WARN_训练 1h Swords 如果你还有金钱的话|r << Mage/Warlock
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    .target 冈瑟尔·维勒
    .vendor >>|cRXP_WARN_购买一个|r |T135346:0|t[斗士短剑] |cRXP_WARN_并在你的主手装备它|r
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 对话
    .home >>将你的炉石设置为暴风城
    .target 旅店老板奥里森
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1685 >>交任务 加科因的召唤
    .target 黑暗缚灵者加科因
    .accept 1688 >>接受任务 苏伦娜·凯尔东
step << Warlock
    #softcore
    .deathskip >>使用生命分流并站在你身旁的大篝火上，在灵魂医者处死亡后复活
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>离开暴风城。前往闪金镇
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 176 >>交任务 通缉：霍格
    >>|cRXP_WARN_选择|r |T135145:0|t[|cRXP_FRIENDLY_平衡长棍|r] |cRXP_WARN_作为你的奖励。装备它|r
    .turnin 123 >>交任务 收货人
    .accept 147 >>接受任务 猎杀收货人
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 176 >>交任务 通缉：霍格
    >>|cRXP_WARN_选择|r |T135145:0|t[|cRXP_FRIENDLY_平衡长棍|r] |cRXP_WARN_作为你的奖励。装备它|r
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .accept 147 >>接受任务 猎杀收货人
step << Warlock
    .xp 11 >>刷怪到11级
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >>前往布莱克威尔南瓜地
    >>|cRXP_WARN_沿路升级。试着为以后升级你的 法杖 技能|r
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>击杀 |cRXP_ENEMY_收货人莫根|r，拾取他掉落的 |cRXP_LOOT_收藏者之戒|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
    .complete 147,1 -- The Collector's Ring (1)
    .mob 收货人莫根
step << Warlock
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target 萨拉·迪博雷恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
    >>|cRXP_WARN_沿途刷怪。通过施放|r |T134075:0|t[吸取灵魂]，确保你至少拥有 2 个 |T136163:0|t[灵魂碎片]|cRXP_WARN_|r
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .target 卫兵帕克
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>接受任务 豺狼人的入侵
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_坚持走主路，避免沿途的小怪|r
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >>离开暴风城。前往闪金镇
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 147 >>交任务 猎杀收货人
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >>前往暴风城
    .zoneskip Elwynn Forest,1
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target 黑暗缚灵者加科因
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务誓缚
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_奥斯瑞克·斯图恩|r 对话
    .turnin 6281 >>交任务 前往暴风城
    .target 奥斯瑞克·斯图恩
    .accept 6261 >>接受任务 杜加尔·朗德瑞克
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .target 哈里·伯加德
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target 巴特莱比
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .target 哈里·伯加德
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >>交任务 巴特莱比的酒杯
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .target 高阶牧师劳瑞娜
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .turnin 5635 >>交任务 绝望祷言
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .train 13908 >>训练 |T135954:0|t[绝望祷言]
    .target 高阶牧师劳瑞娜
step
    .goto StormwindClassic,51.757,12.091
    .target 格瑞曼德·艾尔默
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 1097 >>交任务 艾尔默的任务
step
    .goto StormwindClassic,51.757,12.091
    .target 格瑞曼德·艾尔默
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .accept 353 >>接受任务 雷矛的包裹
step << Warrior
    #completewith next
    +|cRXP_WARN_将|r |T132363:0|t[破甲攻击] |cRXP_WARN_放入快捷栏并确保不断使用，效果优于使用|r |T132282:0|t[英雄级别 Strike]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯塔·深炉|r 对话
    .vendor >>|cRXP_WARN_购买|r |T134708:0|t[矿工锄]|cRXP_WARN_。你很快就会学到|r |T134708:0|t[采矿]
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>进入矿道地铁。乘坐地铁前往铁炉堡
    >>|cRXP_WARN_如果需要，利用等地铁的时间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
step
    >>|cRXP_WARN_电车到达时上车。在另一侧下车并寻找 |cRXP_FRIENDLY_蒙提|r 在中间平台|r
    >>|cRXP_WARN_施放|r |T136221:0|t[召唤虚空行者] |cRXP_WARN_和|r |T135230:0|t[创建生命石] |cRXP_WARN_等待时|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target 蒙提
step
    .use 17117 >>|cRXP_WARN_对 |r矿道老鼠|cRXP_WARN_ 使用 |r|T133942:0|t[捕鼠者长笛]|cRXP_ENEMY_|r
    .complete 6661,1 --Rats Captured (x5)
    .mob 矿道老鼠
step
    .target 蒙提
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话
    .turnin 6661 >>交任务 捕捉矿道老鼠
step
    .zone Ironforge >>进入铁炉堡
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 2567 >>训练 投掷武器
    .target 比克斯
    .goto Ironforge,62.237,89.628
    .train 199 >>训练双手锤
    .goto Ironforge,61.177,89.508
    .target 布里维夫·石拳
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    .vendor >>|cRXP_WARN_购买|r |T135641:0|t[平衡飞刀] |cRXP_WARN_并装备它|r
    .target 布雷文·寒钢
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>购买以下物品，以便在洛克莫丹稍后更快地交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔

step << skip
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>离开铁炉堡
    >>装备你的11级投掷武器 << Warrior
step << skip
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>离开铁炉堡
    >>装备你的3级投掷武器 << Warrior

step
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >>离开铁炉堡
step
    #completewith next
    .goto Dun Morogh,46.005,48.637,50 >>前往卡拉诺斯，丹莫罗
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话
    .target 拉兹·滑链
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>接受任务 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .target 森内尔·白须
    .goto Dun Morogh,46.726,53.826
    .accept 287 >>接受任务 霜鬃巨魔要塞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .target 图德拉·马克格拉恩
    .goto Dun Morogh,34.578,57.732,100,0
    .goto Dun Morogh,36.654,51.906,40,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>接受任务 马克格拉恩的干肉
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_等|cRXP_ENEMY_冰须|r 巡逻出洞穴。一旦他离开洞穴， 你就可以偷偷进入并打开|r |cRXP_PICK_马克格拉恩的储肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_对|r |cRXP_WARN_冰须|r |cRXP_ENEMY_施放|r |T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_对|r |cRXP_WARN_冰须|r |cRXP_ENEMY_施放|r |T136183:0|t[恐惧] << Warlock
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .target 图德拉·马克格拉恩
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >>交任务 马克格拉恩的干肉
step
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>杀死 |cRXP_ENEMY_Leper Gnomes|r。拾取他们的 |cRXP_LOOT_Gears|r 和 |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob 麻风侏儒
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >>进入霜鬃据点
step
    #completewith next
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step
    >>|cRXP_WARN_掉落至此所在地区探索霜鬃巨魔要塞。如果下面有小怪，先清除掉周围，然后再掉落|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >>前往卡拉诺斯，丹莫罗
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话
    .target 拉兹·滑链
    .turnin 412 >>交任务 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .target 森内尔·白须
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >>交任务 霜鬃巨魔要塞
    .accept 291 >>接受任务 森内尔的报告
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .target 鲁德拉·冻石
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >>接受任务 保护牲畜
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>沿着这段山路向上跑
step
    .goto Dun Morogh,62.6,46.1
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob 瓦加什
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .target 鲁德拉·冻石
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>交任务 保护牲畜
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target 厨师格瑞姆
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_如果需要|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_如果需要的话|r << !Warrior !Rogue
    .target 卡杉·莫格什
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .target 参议员梅尔·圣石
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接受任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target 工头乔尼·石眉
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹克·利刃|r 对话
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>学习 |T134708:0|t[采矿]
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>击杀 |cRXP_ENEMY_Rockjaw Skullthumpers|r 和 |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob 石腭断骨者
step << !Warlock
    .xp 10+6350 >>击杀 ，直到 6350+/7600
step << Warlock
    .xp 12
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .target 工头乔尼·石眉
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务 公众之仆
    .target 参议员梅尔·圣石
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r << !Priest !Warlock !Mage
    .vendor >>|cRXP_BUY_购买20个|r |T132815:0|t[冰镇牛奶] << Priest/Warlock/Mage
    .target 卡杉·莫格什
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target 驾驶员塞克·锤足
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
step
    >>点击 |cRXP_PICK_Dwarven 尸体|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan 癞爪
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>选择匕首，将其作为你的副手使用，直到你获得商人剑 << Rogue
    .target 驾驶员塞克·锤足
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .turnin 417 >>交任务 驾驶员的复仇
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    >>|cRXP_WARN_选择|r |T135641:0|t[|cRXP_FRIENDLY_工匠匕首|r] |cRXP_WARN_作为你的奖励。在你的副手装备它|r << Rogue
    .target 驾驶员塞克·锤足
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>交任务 驾驶员的复仇
step
    .goto Dun Morogh,84.4,31.1,25 >>前往洛克莫丹
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 11-13 洛克莫丹
#version 1
#group RestedXP 生存指南 (联盟版)
#subgroup RXP Survival 向导 1-20
#defaultfor Human
#next 13-15 西部荒野

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target 高索·布鲁姆
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 353 >>交任务 雷矛的包裹
    .target 巡山人雷矛
    .accept 307 >>接受任务 污秽的爪子
    >>|cRXP_WARN_还不要接受 卡尔·雷矛的订单|r
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 353 >>交任务 雷矛的包裹
    .target 巡山人雷矛
    >>|cRXP_WARN_还不要接受 卡尔·雷矛的订单|r
step
    #completewith ThelsamarFirst
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    >>|cRXP_WARN_收好任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_稍后会用在 |T133971:0|t[烹饪] |cRXP_WARN_上|r
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >>前往塞尔萨玛，洛克莫丹
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target 维德拉·壁炉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
step
    #completewith StormpikeO
    .abandon 1338 >>放弃 卡尔·雷矛的订单。这是为了解锁 雷矛山地兵的任务，该任务在交付时可免费获得 550 点经验值
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor >>|cRXP_WARN_购买1或2个|r |T133634:0|t[棕色小袋] |cRXP_WARN_如果需要|r
    .target 雅尼·铁心
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话
    .vendor 6734 >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_. 目标是凑齐大约 20 个|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_. 目标是凑齐大约 10个|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和 20个|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target 旅店老板纳克罗·壁炉
step
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
step
    .group
    #completewith BraveSoul
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
step
    .solo
    #completewith StormpikeStop
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
step
    .group
    #completewith MinerGear
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    >>|cRXP_WARN_如果你想现在跳过，你可以在更高等级时做这个任务|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔伦·安德玛|r 对话
    .vendor >>|cRXP_FRIENDLY_尼尔伦·安德玛|r |cRXP_WARN_出售|r |T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r] |cRXP_WARN_这是限定供应的物品|r
    >>|cRXP_WARN_检查是否有货并在能买的情况下购买。如果你买不起，就从附近的 |cRXP_ENEMY_Tunnel Rats|r 那里磨金币直到有足够的钱|r
    >>|cRXP_WARN_快点做这个，因为另一个玩家可能在你之前购买|r
    .target Nillen Andemar
step
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
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_为你即将进行的圣骑士职业任务|r << Paladin
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_可以在整个洛克莫丹刷新。在你的世界地图中检查它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target 高索·布鲁姆
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .target 巡山人雷矛
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .target 巡山人雷矛
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
    .mob 森林潜伏者
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
step
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
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .target 维德拉·壁炉
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>交任务 塞尔萨玛血肠
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_WARN_购买|r |T135237:0|t[Flint and Tinder] |cRXP_WARN_以及2个|r |T135435:0|t[Simple 木材]|cRXP_WARN_。若有需要，购买|r|T133634:0|t[棕色小袋] |cRXP_WARN_即可|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target 雅尼·铁心
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fp Thelsamar >>获取塞尔萨玛的飞行路径
    .target 索格拉姆·伯雷森
step
    .goto Loch Modan,22.071,73.127
    .target 巡山人库伯弗林特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .target 拉格弗斯上尉
    .accept 267 >>接受任务 穴居人的威胁
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >>旅行至碎石怪之谷
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_石牙|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_为你即将进行的圣骑士职业任务|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob 碎石穴居人
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob 碎石怪斥候
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob 碎石穴居人
    .mob 碎石怪斥候
step << Warlock
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,32.7,76.5,0
    +击杀 |cRXP_ENEMY_Troggs|r 直到你有75s 79c的商人垃圾或金钱
step << Warlock
    #era
    .goto Loch Modan,32.7,76.5,0
    .xp 13+9600 >>刷怪达到 9600+/11400经验
step << Warlock
    #som--xpgate
    .xp 14-2520 >>击杀直到你在13级获得8880经验值
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .target 巡山人库伯弗林特
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>交任务 为了保卫国王的领土
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target 拉格弗斯上尉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
step << Warlock
    .xp 14 >>刷怪到14级
step
    #completewith next
    .hs >>炉石传送到暴风城
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_BUY_购买|r |T135468:0|t[烟尘魔杖]|cRXP_BUY_。当你达到15级时装备它|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
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
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 对话
    .vendor >>|cRXP_BUY_购买|r |T133738:0|t[吞噬暗影的魔典(等级1)]|cRXP_BUY_ 和 |r|T133738:0|t[牺牲的魔典(等级1)]|cRXP_BUY_，如果你负担得起|r
    .target 斯巴克尔
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .trainer >>训练你的职业技能
    .target 艾尔莎林
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .accept 1641 >>接受任务圣洁之书
    .turnin 1641 >>交任务圣洁之书
    .target 达索瑞恩·拉尔
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    .use 6775>>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_圣洁之书|r] 来激发任务|r
    .accept 1642 >>接受任务圣洁之书
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1642 >>交任务圣洁之书
    .accept 1643 >>接受任务圣洁之书
    .target 达索瑞恩·拉尔
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target 乔舒修士
step
    .goto StormwindClassic,58.091,16.552
    .target 弗伦·长须
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target 武神
    .target 伊尔萨·考宾
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯蒂芬妮·特纳|r 对话
    .turnin 1643 >>交任务圣洁之书
    .target Stephanie Turner
    .accept 1644 >>接受任务圣洁之书
    .turnin 1644 >>交任务圣洁之书
    --.accept 1780 >> Accept The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .turnin 6261 >>交任务 杜加尔·朗德瑞克
    .target 杜加尔·朗德瑞克
    .accept 6285 >>接受任务 返回西部荒野
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买以下物品，以便稍后在西部荒野更快地交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T133972:0|t[Stringy Vulture 肉]
    >>|T133884:0|t[鱼人眼睛]
    >>|T135997:0|t[血牙野猪 Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[血牙野猪的肝]
    >>|T132794:0|t[灯油]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target 拍卖师亚克森
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
]])
