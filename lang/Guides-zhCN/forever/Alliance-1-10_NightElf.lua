if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 幽影谷
#displayname 1-7级 幽影谷 << sod
#version 1
#group RestedXP 无限指南 (联盟)
#subgroup 速通指南1-20级
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你选择的是暗夜精灵专用的指南，请确保你的选择与你角色出生地一致
step
    .goto 1438/1,826.03,10328.97
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .accept 456 >>接受任务 自然的平衡
step << !Druid
    #sticky
    #label balance1
    #completewith GoodProtector
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step << !Druid
    >>拾取你击杀的怪物尸体，确保你身上至少有价值10铜币的灰色垃圾，你需要用它来学习|T132333:0|t[战斗怒吼]<< Warrior
    .xp 2 >>刷怪升级到 2 级
step << Druid
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto 1438/1,669.500,10387.300
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step << Druid
    #completewith next
    +|cRXP_WARN_确保你至少有96铜币价值的垃圾装备|r，你可以把你那把能卖9铜币的法杖也算在内
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 和 |cRXP_FRIENDLY_麦利萨尔·鹿盔|r 对话
    #label GoodProtector
    .accept 4495 >>接受任务 好朋友
    .target 迪兰妮亚·月光
    .goto 1438/1,713.81,10407.20
    .accept 458 >>接受任务 森林守护者
	.goto 1438/1,763.45,10389.79
    .target 麦利萨尔·鹿盔
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_购买15瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 德林拉尔
step << !Druid
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 奇娜
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target 奥莉希亚
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
    .trainer >>学习 |T132333:0|t[战斗怒吼]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >>刷怪练级直到距4级还差610xp（790/1400）
step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << Hunter/Warrior
    #completewith next
    .hs >>炉石返回影遁谷
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
    .accept 97977 >>接受任务 自然的呼唤
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔丹·傲刃|r 对话
    >>|cRXP_WARN_向商人出售你的所有装备和法杖|r！从他那里购买一把 |T135139:0|t[|cRXP_LOOT_学徒法杖|r]
	.collect 2132 --Short Staff (1)
	.use 2132 >>装备学徒法杖
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 456,1 >>交任务 自然的平衡 << Hunter
    .turnin 456 >>交任务 自然的平衡 << !Hunter
    .target 管理员伊尔萨莱恩
    .accept 457 >>接受任务 自然的平衡
	.accept 3116 >>接受任务 简易符记 << Warrior
	.accept 3117 >>接受任务 风化符记 << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >>接受任务 神圣符记 << Priest
	.accept 3120 >>接受任务 绿色符记 << Druid
step << !Hunter !Druid !Warrior
    #completewith next
    >>在去找埃沃隆的路上击杀 |cRXP_ENEMY_草刺野猪|r
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >>炉石返回影遁谷
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
    .accept 97977 >>接受任务 自然的呼唤
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 456 >>交任务 自然的平衡
    .target 管理员伊尔萨莱恩
	.accept 3119 >>接受任务 神圣符记 << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_施放|r |T136006:0|t[|cRXP_LOOT_愤怒|r] |cRXP_WARN_直到法力耗尽，然后切换回|r |T135158:0|t[|cRXP_LOOT_近战攻击|r] |cRXP_WARN_直到恢复满蓝，然后重复|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>击杀|cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。从它们身上拾取|cRXP_LOOT_魔苔|r
    >>从小劣魔营地拾取 |T134460:0|t[|cRXP_LOOT_瘤背图腾|r]
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob 小劣魔
    .mob 劣魔
step << Druid
    #completewith next
    >>在去找埃沃隆的路上击杀 |cRXP_ENEMY_草刺野猪|r
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << Druid
    #completewith next
    .hs >>炉石返回影遁谷
step << Druid
    .goto 1438/1,871.60,10300.67
    .target 塔琳德拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    >>提示：|cRXP_WARN_选择腿甲作为奖励并留着它。你稍后需要用它来刻印符文|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >>交任务  森林守护者
    .turnin 97977 >>交任务 自然的呼唤
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3519 >>交任务  需要帮助的朋友
    .target 迪兰妮亚·月光
    .accept 3521 >>接受任务 埃沃隆的解药
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
    >>|cRXP_WARN_请确保你在离开商人后还剩有1个银币，以便有钱学习|r|T132204:0|t[|cRXP_FRIENDLY_毒蛇钉刺|r] << Hunter
	.vendor >>|cRXP_BUY_购买2组 |r |T132382:0|t[劣质箭] << Hunter
    .vendor >>|cRXP_BUY_向商人出售你的垃圾装备|r
    .target 奇娜
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target 奥莉希亚
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
	.turnin 3116 >>交任务 简易符记
    .trainer >>训练你的职业技能
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_购买最多25个|r |T132794:0|t[清凉的泉水]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target 德林拉尔
step
    #optional
    .xp 3
step
    .goto 1438/1,871.24,10417.65
    .target 基尔沙兰·风行者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .accept 916 >>接受任务 树林蜘蛛的毒囊
step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>爬上奥达希尔之树
    .target 玛丹特·硬木
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
	.turnin 3120 >>交任务 绿色符记
	.train 8921 >>学习 |T136096:0|t[月火术]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r 对话
    .turnin 3117 >>交任务 风化符记
    .train 1978 >>训练 毒蛇钉刺
    .target 阿亚娜·远途
step << Druid
    #completewith IchorVenomSac
    +|cRXP_WARN_停止施放 |T136006:0|t[|cRXP_LOOT_愤怒|r]！|r 从现在开始只使用 |T135158:0|t[|cRXP_LOOT_近战攻击|r] 和 |T136096:0|t[|cRXP_LOOT_月火术|r]！
    >>尽量只在近战平砍出手后立刻释放月火术 |cRXP_WARN_以免重置你的近战平砍计时条！|r
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>拾取地上的 |cRXP_LOOT_月夜花|r
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。拾取他们的 |cRXP_LOOT_脓液|r 和 |cRXP_LOOT_Venom 毒囊|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob 树林蜘蛛
step
    #completewith next
    >>在去找小劣魔的路上击杀 |cRXP_ENEMY_草刺野猪|r
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << !Druid
    .goto 1438/1,1014.17,10348.18
    >>击杀 |cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。拾取他们的 |cRXP_LOOT_紫蓝色蘑菇|r 和 |cRXP_LOOT_魔苔|r
    >>从小劣魔营地拾取 |T134460:0|t[|cRXP_PICK_瘤背图腾|r]
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob 小劣魔
    .mob 劣魔
step << Druid
    .goto 1438/1,1014.17,10348.18
    >>击杀|cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。从它们身上拾取|cRXP_LOOT_蘑菇|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob 小劣魔
    .mob 劣魔
step
    .goto 1438/1,871.60,10300.67
    .target 塔琳德拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    >>提示：|cRXP_WARN_选择腿甲作为奖励并留着它。你稍后需要用它来刻印符文|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>交任务  森林守护者
    .turnin 97977 >>交任务 自然的呼唤
step
    #completewith next
    >>在去找埃沃隆的路上击杀 |cRXP_ENEMY_草刺野猪|r
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3521 >>交任务 埃沃隆的解药
    .target 迪兰妮亚·月光
    .accept 3522 >>接受任务 埃沃隆的解药
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_购买最多25个|r |T132794:0|t[清凉的泉水]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target 德林拉尔
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r << !Hunter
	.vendor >>|cRXP_BUY_购买3或4组|r |T132382:0|t[劣质箭] << Hunter
    .target 奇娜
step
    .goto 1438/1,871.24,10417.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .turnin 916 >>交任务 树林蜘蛛的毒囊
    .target 基尔沙兰·风行者
    .accept 917 >>接受任务 树林蜘蛛的卵
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[棘木匕首]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step
    #completewith next
    >>在去找埃沃隆的路上击杀 |cRXP_ENEMY_草刺野猪|r
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step
    .goto 1438/1,1034.89,10711.58
    .target 埃沃隆
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    >>提示：|cRXP_WARN_选择短裤作为奖励。你稍后需要用它来刻印符文|r << Priest sod
    .turnin 3522 >>交任务 埃沃隆的解药
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >>进入暗丝洞穴
step
    .goto 1438/1,912.33,10935.30
    >>击杀 |cRXP_ENEMY_邪恶的基塞伊斯|r。拾取它的 |T134298:0|t[|cRXP_LOOT_基塞伊斯的牙齿|r]
    >>在洞穴深处拾取地上的 |cRXP_LOOT_树林蜘蛛的卵|r
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << skip --logout skip
	#hardcore
	#completewith next
	+在龙蛋后方的悬崖边缘进行小退重置。移动你的角色，直到他们看起来像是在悬空，然后下线并重新上线。
	>>如果你掉下去了，直接正常跑出洞穴去交任务即可
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> 点击此处查看参考
step
	.goto 1438/1,871.24,10417.65
    >>使用 |T134298:0|t[|cRXP_LOOT_吉希斯之牙|r] 来接受任务
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .accept 97236 >>接受任务 吉希斯之牙
    .turnin 97236 >>交任务 吉希斯之牙
    .turnin 917 >>交任务  树林蜘蛛的卵
    .target 基尔沙兰·风行者
    .accept 920 >>接受任务 特纳隆的召唤
    .use 277190
step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 920 >>交任务  特纳隆的召唤
    .target 特纳隆·雷拳
    .accept 921 >>接受任务 大地之冠
step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >>|cRXP_WARN_在月亮井使用|r |T134776:0|t[水晶瓶] |cRXP_WARN_|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter/Druid/Warrior/Priest
    .goto 1438/1,769.77,10673.98
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step
    #requires vial1
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << Hunter/Druid
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457,2 >>交任务 自然的平衡
step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 921 >>交任务 大地之冠
    .target 特纳隆·雷拳
    .accept 928 >>接受任务 大地之冠
step
    .goto 1438/1,805.500,10491.800
    >>点击 |cRXP_PICK_特纳隆·雷拳|r 左边的 [|cRXP_FRIENDLY_书籍|r]
    .accept 96630 >>接受任务 冒险者
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_简娜·明月|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r
    .target Janna Brightmoon
step << Priest
	.goto 1438/1,801.64,10458.75
    .target 珊达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
	.turnin 3119 >>交任务 神圣符记
    .accept 97979 >>接受任务 女神的恩赐
    .accept 5622 >>接受任务 月神的恩赐
	.trainer >>训练你的职业技能
step << Priest
    >>施放 |T132089:0|t[|cRXP_LOOT_影遁|r] 和 |T136057:0|t[|cRXP_LOOT_艾露恩之光|r]
    .complete 97979,1
    .complete 97979,2
step << Priest
    .goto 1438/1,800.500,10454.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达::3595|r 对话
    .target Shanda::3595
    .turnin 97979 >>交任务 女神的恩赐
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457,2 >>交任务 自然的平衡
    .isQuestComplete 457
step
    .goto 1438/1,700.57,10214.33
    .target 伯萨努斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯萨努斯|r 对话
    .accept 2159 >>接受任务 多兰纳尔的货物
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 泰达希尔
#displayname 7-13级 泰达希尔 << SoD
#version 1
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16级 黑海岸

step
    .goto 1438/1,734.13,9920.57
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .accept 488 >>接受任务 赛恩的要求
step
    #sticky
    #completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
step
    #sticky
	#completewith DenlansEarth
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉瑞娜·暮刃|r 对话
    .turnin 96630 >>交任务 冒险者
    .accept 96606 >>接受任务 壮丽自然
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>在营火旁输入 |cRXP_WARN_/sit|r 表情，|cRXP_WARN_原地坐下保持1分钟|r 来完成目标
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉瑞娜·暮刃|r 对话
    .turnin 96606 >>交任务 壮丽自然
    .accept 96634 >>接受任务 露营基础：烹饪
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target 塞拉尔·刃叶
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    >>|cRXP_WARN_在接受这个任务前，确保你的背包里有 1 个空位|r
    .accept 997 >>接受任务 德纳兰的泥土
step
    .goto 1438/1,965.59,9887.58
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .accept 475 >>接受任务 烦恼之风
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5622 >>交任务  月神的恩赐
    .target 劳尔娜·晨光
    .accept 5621 >>接受任务 月光之衣
	.trainer >>训练你的职业技能
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .accept 87288 >>接受任务 柔软的夜刃豹毛皮
    .vendor >>|cRXP_BUY_购买并装备一把|r |T135641:0|t[平衡飞刀]
    .target 奥蒂亚
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .accept 87288 >>接受任务 柔软的夜刃豹毛皮
    .target 奥蒂亚
step
    .goto 1438/1,984.94,9898.58
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 932 >>接受任务 扭曲的仇恨
    .accept 2438 >>接受任务 翡翠摄梦符
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵凯拉·星歌::2081|r 对话
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>接受任务 迷失的逃亡者
step << Warrior
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135321:0|t[步兵剑]|cRXP_BUY_如果钱够(5银36铜), 如果不够跳过此步|r
    .collect 2488,1 --Collect Gladius
    .target 沙洛蒙
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Rogue
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135641:0|t[卷刃的剑] |cRXP_BUY_如果钱够 (4银 1铜), 如果钱不够跳过此步|r
    .collect 2494,1 --Stiletto (1)
    .target 沙洛蒙
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_如果你能负担得起（4银79铜），就购买并装备一根|r |T135145:0|t[学徒短杖] |cRXP_BUY_，不能的话就跳过这一步|r
    .collect 2495,1 --Walking Stick (1)
    .target 沙洛蒙
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto 1438/1,982.65,9802.19
    .target 旅店老板凯达米尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    .turnin 2159,2 >>交任务 多兰纳尔的货物 << Hunter
    .turnin 2159 >>交任务 多兰纳尔的货物 << !Hunter
    .vendor >>|cRXP_BUY_购买10瓶|T132815:0|t|cRXP_LOOT_冰镇牛奶|r 或者能买多少买多少 << Priest
    .home >>将你的炉石绑定在多兰纳尔
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.train 3044 >>训练 奥术射击 << era
    .train 5116 >>训练震荡射击 << sod
    .target 达扎拉
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
    >>如果负担不起就跳过学习 |T136006:0|t[|cRXP_LOOT_愤怒|r]。优先学习 |T136104:0|t[|cRXP_LOOT_荆棘术|r]
	.trainer >>训练你的职业技能
    .target 卡尔
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 928 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 929 >>接受任务 大地之冠
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r 对话
    .train 2550 >>学习烹饪
    .accept 4161 >>接受任务 卡多雷的菜谱
    .turnin 96634 >>交任务 露营基础：烹饪
    .target 扎瑞恩
    .money <0.0094
step
    .goto 1438/1,902.15,9754.27--c:Teldrassil,57.2,61.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈欧玛|r 对话
    +从她那里购买5个 |T134059:0|t[甜香料]，使用 |T133971:0|t[|cRXP_FRIENDLY_烹饪|r] 来制作 |T132834:0|t[|cRXP_LOOT_草药烘蛋|r]，直到 |T132832:0|t[|cRXP_LOOT_小蛋|r] 被用完为止
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith DenlanStart
    +食用 |T132834:0|t[|cRXP_LOOT_草药烘蛋|r] 10秒以获得 |cRXP_WARN_5%击杀经验加成，持续15分钟|r。
    >>|cRXP_WARN_记得在buff过期后重新吃食物补上|r
    .itemcount 6888,1
step
    #sticky
    #completewith DenlanStart
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
step
    #sticky
	#completewith DenlanStart
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_将你的 |r|T136065:0|t[草药学]|cRXP_WARN_提升至 15，以便采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    >>通过 |T134187:0|t[草药学] 收集 5 个 |T136065:0|t[地根草]|cRXP_WARN_，偶尔也可从 |cRXP_PICK_破旧宝箱|r 获得，用于将来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto 1438/1,900.01,9675.85
    >>选中 |cRXP_FRIENDLY_哨兵莎恩雅|r
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术 (等级 2)]|cRXP_WARN_和|r |T135987:0|t[真言术: 韧]|cRXP_WARN_在|r|cRXP_FRIENDLY_哨兵莎恩雅|r身上
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target 哨兵莎恩雅
step
    #label DenlanStart
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 997 >>交任务 德纳兰的泥土
    .target 德纳兰
    .accept 918 >>接受任务 林精的种子
    .accept 919 >>接受任务 林精的新芽
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>击杀 |cRXP_ENEMY_林精|r。拾取他们的 |cRXP_LOOT_种子|r
    >>拾取地上的|cRXP_LOOT_林精的新芽|r << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 918 >>交任务 林精的种子
    .target 德纳兰
    .accept 922 >>接受任务 雷利亚·绿树
    .turnin 919 >>交任务 林精的新芽
step
    #sticky
    #completewith Starbreeze
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #label Starbreeze
    #completewith next
    .goto 1438/1,351.23,9806.54,120 >>前往星风村
step
    .goto 1438/1,351.23,9806.54
    >>打开 |cRXP_PICK_塔隆凯的衣柜|r。并从中拾取 |cRXP_LOOT_翡翠摄梦符|r
    >>|cRXP_WARN_尽量从熊怪旁的猫头鹰身上|r 拾取到足够的 |cRXP_LOOT_猫头鹰的羽毛|r
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r 对话
    .turnin 475 >>交任务 烦恼之风
    .target 盖洛拉斯·塔文斯伦
    .accept 476 >>接受任务 瘤背熊怪的堕落
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_使用|r |T134721:0|t[翡翠瓶]|cRXP_WARN_在星风村的月泉处|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith GnarlpineCorruption
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_保留所有 |r|T132832:0|t[小鸡蛋]|cRXP_WARN_ 和 |r|T134321:0|t[小蜘蛛腿]|cRXP_WARN_，以便稍后用于提升 |r|T133971:0|t[烹饪]|cRXP_WARN_ 技能|r
    >>===========================================
    >>|cRXP_WARN_如果附近没有可以完成目标的小怪，请跳过此步骤|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
    .isQuestComplete 488
step
    #completewith GnarlpineCorruption
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
    .target 塞拉尔·刃叶
    .isQuestTurnedIn 488
step
    #label SeekRedemption
step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .turnin 476 >>交任务 瘤背熊怪的堕落
step << Priest
    .goto 1438/1,985.45,9905.43
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5621 >>交任务  月光之衣
	.trainer >>训练你的职业技能
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .turnin 87288 >>交任务 柔软的夜刃豹毛皮
    .target 奥蒂亚
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 2438 >>交任务  翡翠摄梦符
    .target 塔隆凯·捷根
    .accept 2459 >>接受任务 噬梦者菲罗斯塔
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135499:0|t[角木弯弓] |cRXP_BUY_如果去钱够 (2银85铜), 如果钱不够跳过此步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
	.vendor >>|cRXP_BUY_购买至800支|r |T132382:0|t[劣质箭]
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.trainer >>训练你的职业技能
    .target 达扎拉
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
    .xp <8,1
step << Warrior
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135321:0|t[步兵剑]|cRXP_BUY_如果钱够(5银36铜), 如果不够跳过此步|r
    .collect 2488,1 --Collect Gladius
    .target 沙洛蒙
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
    .xp <8,1
step << Rogue
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135641:0|t[卷刃的剑] |cRXP_BUY_如果钱够 (4银 1铜), 如果钱不够跳过此步|r
    .collect 2494,1 --Stiletto (1)
    .target 沙洛蒙
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135145:0|t[学徒短杖]|cRXP_BUY_如果钱够(5银 4铜),如果钱不够跳过此步|r
    .collect 2495,1 --Walking Stick (1)
    .target 沙洛蒙
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 933 >>接受任务 大地之冠
    .xp <8,1
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
	.trainer >>训练你的职业技能
    .target 卡尔
    .xp <8,1
step << Druid
    #completewith next
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step << Druid
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >>前往邪石山
step << Druid
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_迈雷纳斯|r 可能会在邪石山的多个刷新点出现
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan 迈雷纳斯
step
    #completewith jewel
    +食用 |T132834:0|t[|cRXP_LOOT_草药烘蛋|r] 10秒以获得 |cRXP_WARN_5%击杀经验加成，持续15分钟|r。
    >>|cRXP_WARN_记得在buff过期后重新吃食物补上|r
    .itemcount 6888,1
step
    #sticky
    #completewith jewel
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r and |cRXP_LOOT_蜘蛛腿|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .isOnQuest 488
step
    #completewith jewel
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isNotOnQuest 488
step
    #sticky
	#completewith jewel
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
    .isNotOnQuest 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>在一棵小树旁边
    .goto 1438/1,822.200,9948.500,6 >>在小山丘上
    .goto 1438/1,809.800,9926.400,6 >>在那棵巨大的树旁边
    >>从你的地图标记的位置收集3个战利品 |cRXP_LOOT_魔锥果|r。
    >>|cRXP_WARN_如果其中任何一个不在场且你无法完成目标，请跳过此步骤|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>拾取地上的 |cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果 |cRXP_ENEMY_瘤背秘法师|r 数量较少，你可能需要击杀 |cRXP_ENEMY_瘤背战士|r 才会刷新它们|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob 瘤背秘法师
step
	.goto 1438/1,282.49,10018.65
	>>击杀 |cRXP_ENEMY_噬梦者菲罗斯塔|r，拾取他掉落的 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r]。|cRXP_WARN_小心，他会施放 |r|T132152:0|t[痛击]|cRXP_WARN_，一次最多可连续攻击你三次|r
    .use 8049 >>|cRXP_WARN_使用 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r] 来拾取 |r塔隆凯的珠宝|cRXP_LOOT_|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob 噬梦者菲罗斯塔
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果 |cRXP_ENEMY_瘤背秘法师|r 数量较少，你可能需要击杀 |cRXP_ENEMY_瘤背战士|r 才会刷新它们|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob 瘤背秘法师
step
    #softcore
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰诺尔·鹰月|r 对话
    .vendor >>|cRXP_BUY_如有需要，出售物品并修理装备|r
    .target 布兰诺尔·鹰月
step
    #completewith spiderLegs
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
    .goto 1438/1,956.02,9736.83
    .target 科瑞萨斯·月怒
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
step
    .goto 1438/1,956.02,9736.83
    .target 科瑞萨斯·月怒
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .accept 933 >>接受任务 大地之冠
step
    #sticky
    #completewith spiderLegs
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .isOnQuest 488
step
    #sticky
	#completewith spiderLegs
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >>前往阿里斯瑞恩水池
step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_在阿里斯瑞恩之池的月亮井使用|r |T134765:0|t[红玉瓶] |cRXP_WARN_|r
	.complete 933,1
step
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >>前往泰达希尔西南部
step
    #label spiderLegs
	.goto 1438/1,1645.02,9245.89
	>>点击|cRXP_PICK_奇怪的果树|r
	.accept 930 >>接受任务 发光的水果
step
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >>前往多兰纳尔
step
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >>死亡后在多兰纳尔的墓地复活
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 933 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 7383 >>接受任务 大地之冠
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
    >>|cRXP_WARN_如果你已经学会了8级法术，请跳过此步骤|r
	.trainer >>训练你的职业技能
    .target 卡尔
    .xp <8,1
step
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r 对话
    .train 2550 >>学习烹饪
    .turnin 96634 >>交任务 露营基础：烹饪
    .accept 4161 >>接受任务 卡多雷的菜谱
    .turnin 4161 >>交任务  卡多雷的菜谱
    .target 扎瑞恩
step
    .goto 1438/1,902.1500,9754.2750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈欧玛|r 对话
    +从她那里购买5个 |T134059:0|t[甜香料]，使用 |T133971:0|t[|cRXP_FRIENDLY_烹饪|r] 来制作 |T132834:0|t[|cRXP_LOOT_草药烘蛋|r]，直到 |T132832:0|t[|cRXP_LOOT_小蛋|r] 被用完为止
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith Melenas
    +食用 |T132834:0|t[|cRXP_LOOT_草药烘蛋|r] 10秒以获得 |cRXP_WARN_5%击杀经验加成，持续15分钟|r。
    >>|cRXP_WARN_记得在buff过期后重新吃食物补上|r
    .itemcount 6888,1
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    >>|cRXP_WARN_如果你已经学会了8级法术，请跳过此步骤|r
	.trainer >>训练你的职业技能
    .target 达扎拉
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    >>|cRXP_WARN_如果你已经学会了8级法术，请跳过此步骤|r
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
    .xp <8,1
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    >>|cRXP_WARN_如果你已经学会了8级法术，请跳过此步骤|r
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
    .xp <8,1
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_保留所有 |r|T132832:0|t[小鸡蛋]|cRXP_WARN_ 和 |r|T134321:0|t[小蜘蛛腿]|cRXP_WARN_，以便稍后用于提升 |r|T133971:0|t[烹饪]|cRXP_WARN_ 技能|r
    >>====================================================================================
    >>|cRXP_WARN_如果附近没有可以完成目标的小怪，请跳过此步骤|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob 夜刃豹 <<Druid
    .disablecheckbox << !Druid --Druids need the extra xp to get to 10 before going to Darn
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
    .isQuestComplete 488
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
    .target 塞拉尔·刃叶
    .isQuestTurnedIn 488
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 拜恩希
step << Priest
    .goto 1438/1,985.45,9905.43
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    >>|cRXP_WARN_如果你已经学会了8级法术，请跳过此步骤|r
	.trainer >>训练你的职业技能
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >>前往邪石山
step
    #optional
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    >>你可以在他身上使用 |T134296:0|t[|cRXP_FRIENDLY_巫毒之爪|r] 来大幅降低他的伤害！
    >>|cRXP_ENEMY_迈雷纳斯|r 可能会在邪石山的多个刷新点出现
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan 迈雷纳斯
    .itemcount 5457,1
step
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_迈雷纳斯|r 可能会在邪石山的多个刷新点出现
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan 迈雷纳斯
    .itemcount 5457,<1
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>在一棵小树旁边
    .goto 1438/1,822.200,9948.500,6 >>在小山丘上
    .goto 1438/1,809.800,9926.400,6 >>在那棵巨大的树旁边
    >>从你的地图标记的位置收集3个战利品 |cRXP_LOOT_魔锥果|r。
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .itemcount 3418,3
    .isOnQuest 489
step << Priest/Druid
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .turnin 87288 >>交任务 柔软的夜刃豹毛皮
    .target 奥蒂亚
    .isQuestComplete 87288
step << Priest/Druid
    .goto 1438/1,984.94,9898.58
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 932 >>交任务  扭曲的仇恨
    .turnin 2459 >>交任务 噬梦者菲罗斯塔
step
    #optional
    #completewith Ambushers
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .accept 487 >>接受任务 达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>击杀 |cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob 瘤背伏击者
step << Druid/Priest
    .goto 1438/1,1172.01,9917.17
    >>寻找哨兵阿玛拉·夜行者，她在多兰纳尔西边的道路上巡逻
    .target 哨兵阿玛拉·夜行者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    .turnin 487 >>交任务  达纳苏斯之路
step
    #completewith next
    .goto 1438/1,1863.46,10665.16,50 >>前往先知林地
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵埃拉莉亚·影叶::275683|r 对话
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>交任务 失落的逃跑者
    .accept 99047 >>接受任务 还没死
step
    .goto 1438/1,1863.46,10665.16
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .accept 937 >>接受任务 神谕林地
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_在先知林地的月泉处使用|r|T134798:0|t[紫水晶瓶]|cRXP_WARN_|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

--with the new quests, druids can go straight to 10, a 5 minute save later down the road
--@TODO add mist here
step << Druid/Priest
    #completewith next
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放 |r|T136052:0|t[治疗波]|cRXP_WARN_和 |r|T136048:0|t[闪电箭]|cRXP_WARN_，造成大量伤害。尽量快速击杀它们|r
    >>|cRXP_WARN_尽量避免与他们战斗|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step << Druid/Priest
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step << Druid/Priest
    .goto 1438/1,1863.46,10665.16
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 938 >>交任务 密斯特
step
    #completewith xp10 <<!Druid !Priest
	#label harpies
    .goto 1438/1,2102.82,10819.27,0,0
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放 |r|T136052:0|t[治疗波]|cRXP_WARN_和 |r|T136048:0|t[闪电箭]|cRXP_WARN_，造成大量伤害。尽量快速击杀它们|r
    >>|cRXP_WARN_尽量避免与他们战斗|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .accept 98392 >>接受任务 林地潜伏的黑暗
    .target 哨兵阿瑞尼亚·碎云
step << Druid/Priest
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>击杀 |cRXP_ENEMY_仇恨尖啸|r。拾取她的 |T133288:0|t[|cRXP_LOOT_护身符|r]
    .complete 98392,1
    .mob Hatescreech
step << Druid/Priest
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>击杀 |cRXP_ENEMY_风之主母加德雷丝|r。拾取她的 |T133333:0|t[|cRXP_LOOT_护身符|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step << Druid/Priest
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>击杀 |cRXP_ENEMY_巫母阿瑞莎|r。拾取她的 |T133324:0|t[|cRXP_LOOT_护身符|r]
    >>|cRXP_ENEMY_巫母阿瑞莎|r 和 |cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放|r |T136052:0|t[治疗波] |cRXP_WARN_和|r |T136048:0|t[闪电箭] |cRXP_WARN_，会造成大量伤害。尽量快速击杀他们|r
    >>|cRXP_WARN_尽量避免与女族长战斗|r
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,2052.36,10854.19
    >>点击 |cRXP_PICK_奇异叶植物|r
    .accept 931 >>接受任务 发光的树叶
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 98392 >>交任务 林地潜伏的黑暗
    .accept 98398 >>接受任务 神谕之树
    .target 哨兵阿瑞尼亚·碎云
step << Druid/Priest
    .goto 1438/1,1932.400,10673.500
    >>前去找 |cRXP_FRIENDLY_神谕之树的树皮|r
    .turnin 98398 >>交任务 神谕之树
    .accept 940 >>接受任务 泰达希尔
step << Druid/Priest
    #label xp10
    .xp 10-900 >>打怪直到还差900点经验达到10级（5600/6500）
step << Hunter
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step << Hunter
    #sticky
    #label xp10
    .xp 9+800 >>升级至9级800经验值
    >>|cRXP_WARN_一旦你达到这个经验值临界点，就跳过鹰身人任务和护送任务，直接前往达纳苏斯。你稍后还会有机会来完成这些任务|r
step << Hunter
    #completewith xp10
    #requires mist1
    .goto 1438/1,1863.46,10665.16
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 938 >>交任务 密斯特
step << Hunter
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .target 哨兵阿瑞尼亚·碎云
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >>死掉然后在达纳苏斯的灵魂医者处复活
    >>|cRXP_WARN_请确保你死的时候距离达纳苏斯墓地比多兰纳尔墓地更近，否则你可能会走错方向。如果你不确定具体位置，就一路跑出洞穴然后再送死|r << sod Priest
    >>|cRXP_WARN_请确保你死的时候距离达纳苏斯墓地比多兰纳尔墓地更近，否则你可能会走错方向。如果你不确定具体位置就跑到河西边|r << sod Hunter/sod Warrior/sod Druid
    .target 灵魂医者
step << !Rogue
    #hardcore
    #completewith next
    >>在前往达纳苏斯的路上击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取它们的 |cRXP_LOOT_腰带|r。|cRXP_WARN_你现在不必完成这个目标|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >>前往达纳苏斯
step << Hunter
    #requires xp10
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    .vendor >>|cRXP_BUY_把你背包里的垃圾卖店|r
    .target 阿瑞耶尔·天影
step << Hunter
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r 对话
    .skipgossipid 96881
    .train 227 >>学习法杖
    >>如果你的背包里有一个法杖，请装备它
    .target 伊琳尼雅·月火
step << Priest
    #ah
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维安|r 对话
    >>|cRXP_WARN_如果你想直接从拍卖行购买|r |T135139:0|t[|cRXP_FRIENDLY_次级魔法杖|r] |cRXP_WARN_，那就跳过此步骤|r
    >>查看他是否在出售 |T132867:0|t[|cRXP_FRIENDLY_次级魔法杖|r]。如果有的话就直接买下来。你需要它来制作 |T135139:0|t[|cRXP_LOOT_法杖|r]
    .collect 10938,1 --Lesser Magic Essence
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
    .target Vaean
step << Priest
    #ssf
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维安|r 对话
    >>查看他是否在出售 |T132867:0|t[|cRXP_FRIENDLY_次级魔法杖|r]。如果有的话就直接买下来。你需要它来制作 |T135139:0|t[|cRXP_LOOT_法杖|r]
    .collect 10938,1 --Lesser Magic Essence
    .target Vaean
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << Priest
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉琳娜·夏月|r 对话
    .train 7411 >>学习 |T136244:0|t[|cRXP_LOOT_附魔|r]。你需要它来制作 |T135139:0|t[|cRXP_LOOT_法杖|r]
    .target Lalina Summermoon
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维安|r 对话
    >>|cRXP_BUY_从他那里购买以下材料：|r
    .collect 6217,1 --Copper Rod (1)
    .collect 247786,9 --Mote of Magic (9)
    .collect 4470,9 --Simple Wood (9)
    .target Vaean
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>在你的 |cRXP_LOOT_专业面板|r 中使用 |T136244:0|t[|cRXP_WARN_附魔|r] 来制作 |T135225:0|t[|cRXP_LOOT_符文铜棒|r]
    .collect 6218,1 --Runed Copper Rod
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    +在你的 |cRXP_LOOT_专业面板|r 中使用 |T136244:0|t[|cRXP_WARN_附魔|r] 来制作 |T135645:0|t[|cRXP_LOOT_新手练习魔杖|r] |cRXP_WARN_直到你的附魔技能达到10点|r
    .skill enchanting,10,1
step << Priest
    #optional
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉琳娜·夏月|r 对话
    .train 14293 >>从她那里学习 |T135139:0|t[|cRXP_FRIENDLY_次级魔法杖|r]
    .target Lalina Summermoon
    .skill enchanting,<10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>在你的 |cRXP_LOOT_专业面板|r 中使用 |T136244:0|t[|cRXP_WARN_附魔|r] 来制作 |T135139:0|t[|cRXP_FRIENDLY_次级魔法杖|r]
    .collect 11287,1 --Lesser Magic Wand
    .skill enchanting,<10,1
step << Priest
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135139:0|t[|cRXP_FRIENDLY_次级魔法杖|r]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12
step << Priest
    #ah
    #optional
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳苏斯拍卖师|r 对话
    >>|T134711:0|t[初级巫师之油] |cRXP_WARN_和|r |T133906:0|t[烤鼠尾鱼] |cRXP_WARN_可以在低等级时提供很高的DPS|r
    >>|cRXP_WARN_顺便看看有没有当前或稍后可用的高DPS的|r |T132317:0|t[法杖] |cRXP_WARN_升级装备|r
    *|cRXP_WARN_如果你不想购买任何物品，可以跳过此步骤|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target 拍卖师图尔伦
    .target 拍卖师戈洛萨斯
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << Druid NightElf/Priest NightElf
    #optional
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 940 >>交任务  泰达希尔
    .target 大德鲁伊范达尔·鹿盔
    .accept 952 >>接受任务 古树之林
    .xp 10,1
step << Druid NightElf
    .goto 1457/1,2572.300,10185.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳萨里安::4218|r 对话
    .target Denatharion::4218
    .accept 5923 >>接受任务 响应召唤
    .isNotOnQuest 5925
step << Druid NightElf
    .isOnQuest 5923
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin 5923 >>交任务 响应召唤
    .accept 5921 >>接受任务 月光林地
	.trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
step << Druid NightElf
    .isOnQuest 5925
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin 5925 >>交任务 响应召唤
    .accept 5921 >>接受任务 月光林地
	.trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .accept 5921 >>接受任务 月光林地
    .target 玛斯雷·驭熊者
step << !Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵达莉亚·炎刃|r 对话
    .accept 98067 >>接受任务 哨兵之目
    .target Sentinel Dalia Sunblade
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step << Priest
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_女祭司阿兰希雅|r 对话
    .accept 5627 >>接受任务 艾露恩之星
    .turnin 5627 >>交任务 艾露恩之星
    .target Priestess Alathea
step << Druid NightElf
	#completewith next
	.cast 18960 >>施放传送：月光林地
    >>|cRXP_WARN_它会在你的法术书中|r
	.zoneskip Moonglade
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5921 >>交任务 月光林地
    .target 德迪利特·星焰
    .accept 5929 >>接受任务 巨熊之灵
step << Druid NightElf
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target 巨熊之灵
step << Druid NightElf
	#completewith next
	.cast 18960 >>施放传送：月光林地
    >>|cRXP_WARN_这样可以让你更快返回|r
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5929 >>交任务 巨熊之灵
    .target 德迪利特·星焰
    .accept 5931 >>接受任务 返回达纳苏斯
step
    #requires xp10 << Rogue
    .hs >>炉石返回多兰纳尔，泰达希尔
    .subzoneskip 186
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希::6094|r 对话
    .target Byancie::6094
    .turnin 99047 >>交任务 还没死
    .accept 99050 >>接受任务 大树的恩泽 << !Druid
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳瑞特·影林|r 对话
    .goto 1438/1,1000.400,9891.900
    >>|cRXP_BUY_从他那里|r |cRXP_BUY_购买|r |T134864:0|t[空瓶]
    .collect 3371,1 --Empty Vial
    .target Narret Shadowgrove
step
    .goto 1438/1,984.94,9898.58
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 932 >>交任务  扭曲的仇恨
    .turnin 2459 >>交任务 噬梦者菲罗斯塔
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .turnin 87288 >>交任务 柔软的夜刃豹毛皮
    .target 奥蒂亚
    .isQuestComplete 87288
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取它们的 |cRXP_LOOT_牙齿|r 和 |cRXP_LOOT_毛皮|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_保留所有 |r|T132832:0|t[小鸡蛋]|cRXP_WARN_ 和 |r|T134321:0|t[小蜘蛛腿]|cRXP_WARN_，以便稍后用于提升 |r|T133971:0|t[烹饪]|cRXP_WARN_ 技能|r
    >>====================================================================================
    >>|cRXP_WARN_如果附近没有可以完成目标的小怪，请跳过此步骤|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
    .isQuestComplete 488
step
    .abandon 488 >>放弃任务 赛恩的要求
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
    .target 塞拉尔·刃叶
    .isQuestTurnedIn 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>在一棵小树旁边
    .goto 1438/1,822.200,9948.500,6 >>在小山丘上
    .goto 1438/1,809.800,9926.400,6 >>在那棵巨大的树旁边
    >>从你的地图标记的位置收集3个战利品 |cRXP_LOOT_魔锥果|r。
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .itemcount 3418,3
    .isOnQuest 489
step << Hunter
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135145:0|t[学徒短杖]|cRXP_BUY_如果钱够(5银 4铜),如果钱不够跳过此步|r
    .collect 2495,1 --Walking Stick (1)
    .target 沙洛蒙
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
	.vendor >>|cRXP_BUY_购买4组|r |T132382:0|t[锋利的箭]|cRXP_BUY_。达到10级后立即装备它们|r
    .target 吉娜·羽弓
step << Hunter/Warrior/Rogue
    .goto 1438/1,1172.01,9917.17
    >>寻找哨兵阿玛拉·夜行者，她在多兰纳尔西边的道路上巡逻
    .target 哨兵阿玛拉·夜行者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    .turnin 487 >>交任务  达纳苏斯之路
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto 1438/1,928.83,9812.34
    .target 达扎拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .accept 6063 >>接受任务 驯服野兽
	.train 13165 >>训练你的10级法术
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 7383 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 935 >>接受任务 大地之冠
step << !Druid
    #completewith DenalanEnd
    >>击杀在去找德纳兰路上你看到的所有 |cRXP_ENEMY_萌芽的鞭笞者|r。拾取它们的 |T237424:0|t[|cRXP_LOOT_沾露的鞭笞者叶片|r]
    .complete 99050,1
    .mob Lasher Sproutling
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 931 >>交任务 发光的树叶
    .turnin 930 >>交任务 发光的水果
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
	.turnin 927 >>交任务  布满苔藓的心脏
    .isOnQuest 927
step
	.goto 1438/1,719.87,9503.48
	>>点击 |cRXP_LOOT_德纳兰的培养皿|r
	.turnin 941 >>交任务 培养心脏
	.isQuestTurnedIn 927
step
    .goto 1438/1,719.400,9503.900
    >>等待 |cRXP_FRIENDLY_德纳兰|r 完成剧情演出。击杀 |cRXP_ENEMY_沼精|r 获得 |T134187:0|t[|cRXP_LOOT_沼精之根|r]，并拾取 |cRXP_PICK_发芽的树叶|r
    >>你拿到的作为奖励的 |T134184:0|t[发芽的树叶] |cRXP_WARN_是一个顺发的回血物品，而且不与生命药水共享CD|r
    .accept 2399 >>接受任务 发芽的树叶
    .turnin 2399 >>交任务 发芽的树叶
step
    #label DenalanEnd
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob 夜刃捕食者
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>完成击杀 |cRXP_ENEMY_萌芽的鞭笞者|r。拾取它们的 |T237424:0|t[|cRXP_LOOT_沾露的鞭笞者叶片|r]
    .complete 99050,1
    .isOnQuest 6101 << Hunter --Hunter only finishes here if already on the cat quest
    .mob Lasher Sproutling
step
    #label L10
    .xp 10-850 << !Hunter !Druid
    .xp 10 << Hunter
    .itemcount 280087,<6
step
#optional
    #label L10
    .xp 10-1475 << !Hunter
    .xp 10-625 << Hunter
    .isQuestComplete 87288
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target 旅店老板凯达米尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
    .xp >10,1
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希::6094|r 对话
    .target Byancie::6094
    .turnin 99050 >>交任务 大树的恩泽
    .accept 99073 >>接受任务 Easing Suffering
    .xp >10,1
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .turnin 87288 >>交任务 柔软的夜刃豹毛皮
    .target 奥蒂亚
    .isQuestComplete 87288
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    .accept 1684 >>接受任务 艾兰娜瑞
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .train 5171 >>训练 |T132306:0|t[切割]
    .train 921 >>同时学习 |T133644:0|t[偷窃]，这是你 10 级潜行者任务所必需的
    .target 詹诺克·柔歌
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target 达扎拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .accept 6063 >>接受任务 驯服野兽
	.trainer >>训练你的职业技能
step << Hunter
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step << Hunter
    #completewith next
    >>击杀在去找猫的路上你看到的所有 |cRXP_ENEMY_萌芽的鞭笞者|r。拾取它们的 |T237424:0|t[|cRXP_LOOT_沾露的鞭笞者叶片|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob 夜刃捕食者
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>完成击杀 |cRXP_ENEMY_萌芽的鞭笞者|r。拾取它们的 |T237424:0|t[|cRXP_LOOT_沾露的鞭笞者叶片|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6101 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6102 >>接受任务 驯服野兽
step << Hunter
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_巨翼恶枭|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob 巨翼恶枭
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6102 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6103 >>接受任务 训练野兽
step << Warrior
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .accept 1684 >>接受任务 艾兰娜瑞
    .target 哨兵阿玛拉·夜行者
step << Rogue
    .goto 1438/1,943.85,9790.28
    .target 詹诺克·柔歌
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .accept 2241 >>接受任务 詹诺克的花
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target 旅店老板凯达米尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
    .target 劳尔娜·晨光
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto 1438/1,947.57,9812.38
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买一个|r |T135145:0|t[学徒短杖]
    >>|cRXP_WARN_你之后会装备它。如果你已经找到了另一个法杖就跳过这一步|r
    .collect 2495,1 -- Walking Stick (1)
    .target 沙洛蒙
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希::6094|r 对话
    .target Byancie::6094
    .turnin 99050 >>交任务 The Great 树 Provides
    .accept 99073 >>接受任务 Easing Suffering
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .turnin 487 >>交任务  达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step
    #optional
    .abandon 87288 >>你不会回到多兰纳尔了，直接放弃任务柔软的夜刃豹皮
step << Rogue
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>通过熊怪区域后，故意死亡并在达纳苏斯墓地复活
    .target 灵魂医者
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >>前往达纳苏斯
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    .turnin 2241 >>交任务  詹诺克的花
    .target 塞尤娜
    .accept 2242 >>接受任务 命运的召唤
step << Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵达莉亚·炎刃|r 对话
    .accept 98067 >>接受任务 哨兵之目
    .target Sentinel Dalia Sunblade
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step << Rogue
    .goto 1457/1,2009.100,9986.601
    >>前往达纳苏斯的大门并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,4
    .use 279378
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>|cRXP_WARN_施放|r |T132164:0|t[驯服野兽] |cRXP_WARN_在|cRXP_ENEMY_巨翼猎枭|r 以驯服它|r -- .tame 1997
    .train 2981 >>|cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.unitscan 巨翼猎枭
step
    .goto 1438/1,1691.36,10412.66
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob 林精长老
    .mob 林精践踏者
    .mob 林精泥泞兽
step
    #label Spinnerets
    #loop
    .goto 1438/1,1828.600,10964.800
    >>击杀 |cRXP_ENEMY_萨丝拉|r。拾取她的 |cRXP_LOOT_丝囊|r
    >>|cRXP_ENEMY_萨丝拉|r |cRXP_WARN_可能在3个不同地点刷新，请查看地图以获取推荐路线|r
    >>|cRXP_WARN_沿河向北前进，先检查最东边的刷新点。在途中完成 |r|T134339:0|t[肿瘤] |cRXP_WARN_任务|r
    >>|cRXP_WARN_如果她不在河的东侧，则在前往西侧之前完成|r |T134339:0|t[肿瘤]|cRXP_WARN_ 任务|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob 萨丝拉
step
    .goto 1438/1,1864.47,10667.19
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .accept 937 >>接受任务 神谕林地
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>|cRXP_WARN_施放|r |T133644:0|t[搜索]对 |cRXP_ENEMY_远古的塞希尔|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_ENEMY_远古的塞希尔|r |cRXP_WARN_沿着大树枝移动|r
    >>|cRXP_WARN_避免与 |cRXP_ENEMY_远古的塞希尔|r 交战。让他从你身边走过，然后从背后施放 |r|T132320:0|t[潜行] |cRXP_WARN_并使用 |r|T133644:0|t[搜索]|cRXP_WARN_|r
    .complete 2242,1
    .mob 远古的塞希尔
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    >>|cRXP_ENEMY_血羽女族长|r |cRXP_WARN_会施放 |r|T136052:0|t[治疗波]|cRXP_WARN_和 |r|T136048:0|t[闪电箭]|cRXP_WARN_，造成大量伤害。尽量快速击杀它们|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step
    .goto 1438/1,2208.67,10758.15
    .target 雾气
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    >>|cRXP_WARN_如果NPC不在就跳过这个任务|r
    .accept 938 >>接受任务 密斯特
step
    .goto 1438/1,1864.47,10663.80
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 938 >>交任务 密斯特
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .accept 98392 >>接受任务 林地潜伏的黑暗
    .target 哨兵阿瑞尼亚·碎云
step
    .isOnQuest 99073
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵埃拉莉亚·影叶::275683|r 对话
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99073 >>交任务 Easing Suffering
step
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>击杀 |cRXP_ENEMY_仇恨尖啸|r。拾取她的 |T133288:0|t[|cRXP_LOOT_护身符|r]
    .complete 98392,1
    .mob Hatescreech
step
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>击杀 |cRXP_ENEMY_风之主母加德雷丝|r。拾取她的 |T133333:0|t[|cRXP_LOOT_护身符|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>击杀 |cRXP_ENEMY_巫母阿瑞莎|r。拾取她的 |T133324:0|t[|cRXP_LOOT_护身符|r]
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 98392 >>交任务 林地潜伏的黑暗
    .accept 98398 >>接受任务 神谕之树
    .target 哨兵阿瑞尼亚·碎云
step
    .goto 1438/1,1932.400,10673.500
    >>前去找 |cRXP_FRIENDLY_神谕之树的树皮|r
    .turnin 98398 >>交任务 神谕之树
    .accept 940 >>接受任务 泰达希尔
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>死亡并在达纳苏斯墓地复活
    >>|cRXP_WARN_确保你在河流的西侧，否则可能会走错方向|r << sod
    .target 灵魂医者
step
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>前往达纳苏斯
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>前往达纳苏斯
step << !Warrior
    --@TODO add note that u need to wait for the other player owl to despawn
    .goto 1457/1,2009.100,9986.601
    >>前往达纳苏斯的大门并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,4
    .use 279378
step << !Warrior
    .goto 1457/1,2190.34,9918.06
    .target 迈德兰努尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈德兰努尔|r 对话
    .accept 6344 >>接受任务 尼莎·影歌
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >>前往达纳苏斯
step
	.abandon 927 >>放弃满苔藓的心脏。你之后再也没机会交这个任务了
step << Warrior
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1684 >>交任务  艾兰娜瑞
    .target 艾兰娜瑞
    .accept 1683 >>接受任务 沃鲁斯·邪蹄
step << Warrior
    .goto 1457/1,2190.34,9918.06
    .target 迈德兰努尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈德兰努尔|r 对话
    .accept 6344 >>接受任务 尼莎·影歌
step << Warrior
    .goto 1457/1,2009.100,9986.601
    >>前往达纳苏斯的大门并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,4
    .use 279378
step << Warrior
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >>前往|cRXP_ENEMY_沃鲁斯·邪蹄|r所在位置
step << Warrior
    .goto 1438/1,1411.32,9669.43
    >>击杀 |cRXP_ENEMY_沃鲁斯·邪蹄|r。拾取他的 |cRXP_LOOT_号角|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob 沃鲁斯·邪蹄
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>穿过熊怪区域后主动死亡，然后在达纳苏斯复活
step << Warrior
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >>前往达纳苏斯
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target 艾兰娜瑞
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1683 >>交任务  沃鲁斯·邪蹄
--	.accept 1686 >> Accept The Shade of Elura
step
    .goto 1457/1,2240.100,10121.000
    >>前往达纳苏斯的旅店并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,3
    .use 279378
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin 5931 >>交任务  返回达纳苏斯
    .target 玛斯雷·驭熊者
    .accept 6001 >>接受任务 身心之力
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 940 >>交任务  泰达希尔
    .target 大德鲁伊范达尔·鹿盔
    .accept 952 >>接受任务 古树之林
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .target 大德鲁伊范达尔·鹿盔
    .turnin 935 >>交任务 大地之冠
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target 祖卡斯特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r 对话
    .turnin 6103 >>交任务 训练野兽
step << Hunter
    >>|cRXP_WARN_从 |r祖卡斯特|cRXP_FRIENDLY_ 右侧的坡道上去|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r 对话
    .goto 1457/1,2491.75,10176.21
    .trainer >>训练宠物法术
    .target 西尔瓦莉雅
step
    .goto 1457/1,2579.300,10129.000
    >>前往塞纳里奥要塞入口处并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,1
    .use 279378
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target 塞尤娜
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    .turnin 2242 >>交任务  命运的召唤
step
    .goto 1457/1,2534.25,10085.60
    .target 雷利亚·绿树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 923 >>交任务 青苔之瘤
step
    .goto 1457/1,2499.900,9932.601
    >>前往达纳苏斯的银行并使用 |T133298:0|t[|cRXP_LOOT_月光坠饰|r]
    .complete 98067,2
    .use 279378
step
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵达莉亚·炎刃|r 对话
    .turnin 98067 >>交任务 哨兵之目
    .target Sentinel Dalia Sunblade
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2518 >>交任务 月神的泪水
    .target 女祭司艾茉拉
    .accept 2520 >>接受任务 萨丝拉的祭品
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>|cRXP_WARN_在喷泉处使用|r |T135652:0|t[萨丝拉的祭品]|cRXP_WARN_|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2520 >>交任务  萨丝拉的祭品
-- step << Druid
-- #ssf
--     #season 0
--     .goto 1457/1,2430.89,9758.21
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
--     .train 2366 >> Train |T136065:0|t[Herbalism]
--     >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
--     .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳苏斯拍卖师|r 对话
    >>购买以下物品，以便稍后在黑海岸快速交任务：
    -- >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133972:0|t[陆行鸟肉]
    >>|T134711:0|t[初级巫师之油] << Priest/Druid
    >>|T133906:0|t[烤鼠尾鱼] << Priest/Druid
    >>|T134711:0|t[初级巫师之油] |cRXP_WARN_和|r |T133906:0|t[烤鼠尾鱼] |cRXP_WARN_可以在低等级时提供很高的DPS|r << Priest/Druid
    >>|cRXP_WARN_顺便看看有没有当前或稍后可用的高DPS的|r |T132317:0|t[法杖] |cRXP_WARN_升级装备|r << Priest
    *|cRXP_WARN_如果你不想购买任何物品，可以跳过此步骤|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    -- .collect 2449,5,6123,1 << Druid
    .collect 20744,1 << Priest/Druid -- Minor Wizard Oil (1)
    .collect 21072,20 << Priest/Druid -- Smoked Sagefish (20)
    .target 拍卖师图尔伦
    .target 拍卖师戈洛萨斯
step << Hunter
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找 |cRXP_FRIENDLY_加伊娜|r，她会在工匠区巡逻
    >>|cRXP_BUY_从她那里购买1组|r |T133972:0|t[硬肉干]|cRXP_BUY_。
    >>|cRXP_WARN_你需要用它来喂养你的猫头鹰，它们只吃肉类，而黑海岸没有出售肉类的商人|r
    .collect 117,15
    .target 加伊娜
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r 对话
    .skipgossipid 96881
    .train 227 >>学习法杖 << Hunter/Warrior/Priest
    .train 265 >>学习 弩 << Sod Rogue
    >>如果你的背包里有一个法杖，请装备它 << Hunter
    >>如果你的背包里有一把弓，就装备它 << Rogue
    .target 伊琳尼雅·月火
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135489:0|t[多层弯弓]
    .collect 2507,1
    .target 阿瑞耶尔·天影
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
	.vendor >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭]
    .target 阿瑞耶尔·天影
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135147:0|t[法师之杖]|cRXP_BUY_.在15级时装备|r
	.collect 2030,1
    .target 阿瑞耶尔·天影
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135154:0|t[短杖]|cRXP_BUY_.在11级时装备|r << era
    >>如果你买不起|T135154:0|t[法师之杖]|cRXP_BUY_，就购买并装备一把|r|T135147:0|t[|cRXP_BUY_短杖|r] << sod
	.collect 854,1
    .target 阿瑞耶尔·天影
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
	>>如果你买不起|T135346:0|t[短杖]|cRXP_BUY_，就购买并装备一把|r|T135154:0|t[|cRXP_BUY_斗士短剑|r]
	.collect 851,1
    .target 阿瑞耶尔·天影
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Rogue
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target 图里安
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6344 >>交任务 尼莎·影歌
    .target 尼莎·影歌
    .accept 6341 >>接受任务 泰达希尔的渔业
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .isOnQuest 6343
    .target 尼莎·影歌
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .turnin 6341 >>交任务 泰达希尔的渔业
    .target 维斯派塔斯
    .accept 6342 >>接受任务 飞往奥伯丁
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
]])
