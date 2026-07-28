if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 幽影谷
#displayname 1-7级 幽影谷 << sod
#version 1
#group RestedXP 联盟 1-20 级
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你选择的是暗夜精灵专用的指南，请确保你的选择与你角色出生地一致
step
    .goto Teldrassil,58.695,44.266
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .accept 456 >>接受任务 自然的平衡
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step
    >>拾取你击杀的怪物尸体，确保你身上至少有价值10铜币的灰色垃圾，你需要用它来学习|T132333:0|t[战斗怒吼]<< Warrior
    .xp 2 >>刷怪升级到 2 级
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 和 |cRXP_FRIENDLY_麦利萨尔·鹿盔|r 对话
    #label GoodProtector
    .accept 4495 >>接受任务 好朋友
    .target 迪兰妮亚·月光
    .goto Teldrassil,60.899,41.961
    .accept 458 >>接受任务 森林守护者
	.goto Teldrassil,59.924,42.474
    .target 麦利萨尔·鹿盔
step
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r 和 |cRXP_ENEMY_草刺野猪幼崽|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob 夜刃豹幼崽
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob 草刺野猪幼崽
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 456,1 >>交任务 自然的平衡 << Hunter
    .target 管理员伊尔萨莱恩
    .accept 457 >>接受任务 自然的平衡
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>刷怪练级直到距4级还差610xp（790/1400）
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << Hunter
    #completewith next
    .hs >>炉石返回影遁谷
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457 >>交任务 自然的平衡
    .target 管理员伊尔萨莱恩
	.accept 3117 >>接受任务 风化符记
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[清凉的泉水]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 德林拉尔
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
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
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 奇娜
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target 奥莉希亚
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
	.turnin 3116 >>交任务 简易符记
    .trainer >>训练你的职业技能
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    .turnin 4495 >>交任务  好朋友
    .target 埃沃隆
    .accept 3519 >>接受任务 需要帮助的朋友
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >>炉石返回影遁谷
step << !Hunter
    #season 0
    #completewith next
    .hs >>炉石返回影遁谷
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 458 >>交任务  森林守护者
    .target 塔琳德拉
    .accept 459 >>接受任务 森林守护者
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457 >>交任务 自然的平衡
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3519 >>交任务  需要帮助的朋友
    .target 迪兰妮亚·月光
    .accept 3521 >>接受任务 埃沃隆的解药
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
    >>|cRXP_WARN_请确保你在离开商人后还剩有1个银币，以便有钱学习|r|T132204:0|t[|cRXP_FRIENDLY_毒蛇钉刺|r]
	.vendor >>|cRXP_BUY_购买2组 |r |T132382:0|t[劣质箭]
    .target 奇娜
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德林拉尔|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_购买20|r |T132794:0|t[清凉的泉水]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target 德林拉尔
step
    .goto Teldrassil,57.807,41.653
    .target 基尔沙兰·风行者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .accept 916 >>接受任务 树林蜘蛛的毒囊
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r 对话
    .turnin 3117 >>交任务 风化符记
    .train 1978 >>训练 毒蛇钉刺
    .target 阿亚娜·远途
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>拾取地上的 |cRXP_LOOT_月夜花|r
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step << Hunter
#optional
#season 2
#completewith next
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。拾取他们的 |cRXP_LOOT_脓液|r 和 |cRXP_LOOT_Venom 毒囊|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob 树林蜘蛛
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>击杀 |cRXP_ENEMY_树林蜘蛛|r。拾取他们的 |cRXP_LOOT_脓液|r 和 |cRXP_LOOT_Venom 毒囊|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob 树林蜘蛛
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+在龙蛋后方的悬崖边缘进行小退重置。移动你的角色，直到他们看起来像是在悬空，然后下线并重新上线。
	>>如果你掉下去了，直接正常跑出洞穴去交任务即可
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> 点击此处查看参考
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+在龙蛋后方的悬崖边缘进行小退重置。移动你的角色，直到他们看起来像是在悬空，然后下线并重新上线。
	>>如果你掉下去了，直接正常跑出洞穴去交任务即可
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> 点击此处查看参考
step
    .goto Teldrassil,55.0,43.7
    >>击杀 |cRXP_ENEMY_小劣魔|r 和 |cRXP_ENEMY_劣魔|r。拾取他们的 |cRXP_LOOT_紫蓝色蘑菇|r 和 |cRXP_LOOT_魔苔|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob 小劣魔
    .mob 劣魔
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    >>提示：|cRXP_WARN_选择该任务奖励中的胸甲并装备。你稍后需要用它来刻印符文|r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>提示：|cRXP_WARN_选择该任务奖励中的长袍并装备。你稍后需要用它来刻印符文|r << sod Priest
    .turnin 917 >>交任务  树林蜘蛛的卵
    .target 基尔沙兰·风行者
step
    .goto Teldrassil,57.8,45.1
    .target 塔琳德拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    >>提示：|cRXP_WARN_选择腿甲作为奖励并留着它。你稍后需要用它来刻印符文|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>交任务  森林守护者
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪兰妮亚·银辉|r 对话
    .turnin 3521 >>交任务 埃沃隆的解药
    .target 迪兰妮亚·月光
    .accept 3522 >>接受任务 埃沃隆的解药
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奇娜|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r << !Hunter
	.vendor >>|cRXP_BUY_购买3或4组|r |T132382:0|t[劣质箭] << Hunter
    .target 奇娜
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
	.trainer >>训练你的职业技能
    .target 奥莉希亚
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_简娜·明月|r 对话
	.vendor >>|cRXP_WARN_出售垃圾物品|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target 珊达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
	.turnin 3119 >>交任务 神圣符记 << !sod
    .turnin 77574 >>交任务 艾露恩之思 << sod
	.trainer >>训练你的职业技能
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
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
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>爬上奥达希尔之树
    .target 玛丹特·硬木
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
	.turnin 3120 >>交任务 绿色符记
	.train 8921 >>学习 |T136096:0|t[月火术]
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target 埃沃隆
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃沃隆|r 对话
    >>提示：|cRXP_WARN_选择短裤作为奖励。你稍后需要用它来刻印符文|r << Priest sod
    .turnin 3522 >>交任务 埃沃隆的解药
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入暗丝洞穴
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>在洞穴深处拾取地上的 |cRXP_LOOT_树林蜘蛛的卵|r
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+在龙蛋后方的悬崖边缘进行小退重置。移动你的角色，直到他们看起来像是在悬空，然后下线并重新上线。
	>>如果你掉下去了，直接正常跑出洞穴去交任务即可
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>https://www.youtube.com/watch?v=TTZZT3jpv1s >> 点击此处查看参考
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔沙兰·踏风|r 对话
    .turnin 917 >>交任务  树林蜘蛛的卵
    .target 基尔沙兰·风行者
    .accept 920 >>接受任务 特纳隆的召唤
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 920 >>交任务  特纳隆的召唤
    .target 特纳隆·雷拳
    .accept 921 >>接受任务 大地之冠
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>|cRXP_WARN_在月亮井使用|r |T134776:0|t[水晶瓶] |cRXP_WARN_|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>击杀 |cRXP_ENEMY_癞皮夜刃豹|r 和 |cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob 癞皮夜刃豹
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob 草刺野猪
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target 管理员伊尔萨莱恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员伊尔萨莱恩|r 对话
    .turnin 457,2 >>交任务 自然的平衡
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target 珊达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
    .accept 5622 >>接受任务 月神的恩赐
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 921 >>交任务 大地之冠
    .target 特纳隆·雷拳
    .accept 928 >>接受任务 大地之冠
step
    .goto Teldrassil,61.159,47.644
    .target 伯萨努斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯萨努斯|r 对话
    .accept 2159 >>接受任务 多兰纳尔的货物
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 6-11 泰达希尔
#displayname 7-13级 泰达希尔 << SoD
#version 1
#group RestedXP 联盟 1-20 级
#defaultfor NightElf
#next 14-16级 黑海岸

step
    .goto Teldrassil,60.5,56.3
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .accept 488 >>接受任务 赛恩的要求
step
    #label HCHunterStart --hidden step for #include
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
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target 塞拉尔·刃叶
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    >>|cRXP_WARN_在接受这个任务前，确保你的背包里有 1 个空位|r
    .accept 997 >>接受任务 德纳兰的泥土
step
    .goto Teldrassil,55.954,57.272
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .accept 475 >>接受任务 烦恼之风
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5622 >>交任务  月神的恩赐
    .target 劳尔娜·晨光
    .accept 5621 >>接受任务 月光之衣
	.trainer >>训练你的职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥蒂亚|r 对话
    .vendor >>|cRXP_BUY_购买并装备一把|r |T135426:0|t[小飞刀]
    .target 奥蒂亚
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 932 >>接受任务 扭曲的仇恨
    .accept 2438 >>接受任务 翡翠摄梦符
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 2438 >>接受任务 翡翠摄梦符
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135499:0|t[角木弯弓]
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    .vendor >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭]|cRXP_BUY_直到箭袋装满为止|r
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
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
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Rogue
    .goto Teldrassil,56.308,59.488
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
    .goto Teldrassil,56.308,59.488
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
step
    .goto Teldrassil,55.619,59.788
    .target 旅店老板凯达米尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    .turnin 2159,2 >>交任务 多兰纳尔的货物 << Hunter
    .turnin 2159 >>交任务 多兰纳尔的货物 << !Hunter
    .vendor >>|cRXP_BUY_购买10瓶|T132815:0|t|cRXP_LOOT_冰镇牛奶|r 或者能买多少买多少 << Priest
    .home >>将你的炉石绑定在多兰纳尔
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.train 3044 >>训练 奥术射击 << era
    .train 5116 >>训练震荡射击 << sod
    .target 达扎拉
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
	.trainer >>训练你的职业技能
    .target 卡尔
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 928 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 929 >>接受任务 大地之冠
step
    #sticky
    #completewith DenlanStart
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
	#completewith DenlanStart
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r 对话
    >>|T136065:0|t[草药学] |cRXP_WARN_将用于采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，以完成即将到来的重要职业任务。完成后你可以将其忘却|r
    >>|cRXP_WARN_如果你更愿意稍后从拍卖行购买 5 个|r |T134187:0|t[地根草]|cRXP_WARN_，可跳过此步骤|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .target 玛洛尼·刃叶
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛洛尼·刃叶|r 对话
    >>|T136065:0|t[草药学] |cRXP_WARN_将用于采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，以完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .target 玛洛尼·刃叶
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_将你的 |r|T136065:0|t[草药学]|cRXP_WARN_提升至 15，以便采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>通过 |T134187:0|t[草药学] 收集 5 个 |T136065:0|t[地根草]|cRXP_WARN_，偶尔也可从 |cRXP_PICK_破旧宝箱|r 获得，用于将来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>选中 |cRXP_FRIENDLY_哨兵莎恩雅|r
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术 (等级 2)]|cRXP_WARN_和|r |T135987:0|t[真言术: 韧]|cRXP_WARN_在|r|cRXP_FRIENDLY_哨兵莎恩雅|r身上
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target 哨兵莎恩雅
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 997 >>交任务 德纳兰的泥土
    .target 德纳兰
    .accept 918 >>接受任务 林精的种子
    .accept 919 >>接受任务 林精的新芽
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>击杀 |cRXP_ENEMY_林精|r。拾取他们的 |cRXP_LOOT_种子|r
    >>拾取地上的|cRXP_LOOT_林精的新芽|r << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 918 >>交任务 林精的种子
    .target 德纳兰
    .accept 922 >>接受任务 雷利亚·绿树
    .turnin 919 >>交任务 林精的新芽
step
    #sticky
    #completewith Starbreeze
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_小心，|r|cRXP_ENEMY_夜刃豹|r|cRXP_WARN_ 和|r |cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 移动速度非常快！|r|cRXP_ENEMY_巨翼枭|r|cRXP_WARN_ 还会产生联动仇恨，如果你在与其中一只战斗时从其他 |r|cRXP_ENEMY_枭兽|r |cRXP_WARN_身边跑过，它们也会加入战斗|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
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
    .goto Teldrassil,68.02,59.66,120 >>前往星风村
step
    .goto Teldrassil,68.02,59.66
    >>打开 |cRXP_PICK_塔隆凯的衣柜|r。并从中拾取 |cRXP_LOOT_翡翠摄梦符|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r 对话
    .turnin 475 >>交任务 烦恼之风
    .target 盖洛拉斯·塔文斯伦
    .accept 476 >>接受任务 瘤背熊怪的堕落
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_使用|r |T134721:0|t[翡翠瓶]|cRXP_WARN_在星风村的月泉处|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith SeekRedemption
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_乱羽|r
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>|cRXP_WARN_保留所有 |r|T132832:0|t[小鸡蛋]|cRXP_WARN_ 和 |r|T134321:0|t[小蜘蛛腿]|cRXP_WARN_，以便稍后用于提升 |r|T133971:0|t[烹饪]|cRXP_WARN_ 技能|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob 夜刃豹
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob 巨翼枭
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob 树林潜伏者
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >>刷怪到7级 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >>刷怪到7级 +2350xp
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
    .target 塞拉尔·刃叶
step
    .goto Teldrassil,55.954,57.272
    .target 阿斯瑞达斯·熊皮
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .turnin 476 >>交任务 瘤背熊怪的堕落
step << Priest
    .goto Teldrassil,55.564,56.746
    .target 劳尔娜·晨光
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .turnin 5621 >>交任务  月光之衣
	.trainer >>训练你的职业技能
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 2438 >>交任务  翡翠摄梦符
    .target 塔隆凯·捷根
    .accept 2459 >>接受任务 噬梦者菲罗斯塔
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135499:0|t[角木弯弓] |cRXP_BUY_如果去钱够 (2银85铜), 如果钱不够跳过此步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target 吉娜·羽弓
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
	.vendor >>|cRXP_BUY_购买至800支|r |T132382:0|t[劣质箭]
    .target 吉娜·羽弓
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_装备|r |T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
	.trainer >>训练你的职业技能
    .target 达扎拉
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Warrior
    .goto Teldrassil,56.308,59.488
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
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
    .goto Teldrassil,56.308,59.488
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
    .goto Teldrassil,56.308,59.488
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
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 933 >>接受任务 大地之冠
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
	.trainer >>训练你的职业技能
    .target 卡尔
step
    #sticky
	#completewith jewel
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>在一棵小树旁边
    .goto 1438/1,822.200,9948.500,6 >>在小山丘上
    .goto 1438/1,809.800,9926.400,6 >>在那棵巨大的树旁边
    >>拾取地图上标记位置的 3 只猎鹰。
    >>|cRXP_WARN_如果其中任何一个不在场且你无法完成目标，请跳过此步骤|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
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
	.goto Teldrassil,69.37,53.41
	>>击杀 |cRXP_ENEMY_噬梦者菲罗斯塔|r，拾取他掉落的 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r]。|cRXP_WARN_小心，他会施放 |r|T132152:0|t[痛击]|cRXP_WARN_，一次最多可连续攻击你三次|r
    .use 8049 >>|cRXP_WARN_使用 |T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r] 来拾取 |r塔隆凯的珠宝|cRXP_LOOT_|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob 噬梦者菲罗斯塔
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果 |cRXP_ENEMY_瘤背秘法师|r 数量较少，你可能需要击杀 |cRXP_ENEMY_瘤背战士|r 才会刷新它们|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob 瘤背秘法师
step
    #softcore
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
    .isQuestTurnedIn 489
step
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰诺尔·鹰月|r 对话
    .vendor >>|cRXP_BUY_如有需要，出售物品并修理装备|r
    .target 布兰诺尔·鹰月
    .isQuestTurnedIn 489
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>拾取地上的 |cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target 赛恩·腐蹄
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>前往邪石山
step
    .goto Teldrassil,51.2,50.6
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_迈雷纳斯|r 可能会在邪石山的多个刷新点出现
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan 迈雷纳斯
step
    #softcore
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target 科瑞萨斯·月怒
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 大地之冠
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target 科瑞萨斯·月怒
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .accept 933 >>接受任务 大地之冠
step
    #sticky
	#completewith spiderLegs
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你之后的任务会用到这些物品|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>前往泰达希尔西南部
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>点击|cRXP_PICK_奇怪的果树|r
	.accept 930 >>接受任务 发光的水果
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>前往阿里斯瑞恩水池
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_在阿里斯瑞恩之池的月亮井|r|cRXP_WARN_使用|r |T134765:0|t[红玉瓶]
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>击杀 |cRXP_ENEMY_树林潜伏者|r 和 |cRXP_ENEMY_树林毒蜘蛛|r。拾取他们的 |cRXP_LOOT_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob 树林潜伏者
    .mob 树林毒蜘蛛
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >>前往多兰纳尔
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>死亡并在多兰纳尔墓地复活，务必在月亮井以东死亡，否则你可能会被送到达纳苏斯
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 933 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 7383 >>接受任务 大地之冠
step
	#xprate <1.5
    #label SpiderLegsEnd
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r 对话
    .train 2550 >>学习烹饪
    .accept 4161 >>接受任务 卡多雷的菜谱
    .turnin 4161 >>交任务  卡多雷的菜谱
    .target 扎瑞恩
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜恩希|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 拜恩希
step
    .goto Teldrassil,55.574,56.948
    .target 塔隆凯·捷根
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|在树顶上与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 932 >>交任务  扭曲的仇恨
    .turnin 2459 >>交任务 噬梦者菲罗斯塔
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_如果你还差得远，就去做迈雷纳斯任务|r
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
    .accept 5629 >>接受任务 回家 << sod
    .target 劳尔娜·晨光
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .train 5171 >>训练 |T132306:0|t[切割] << !sod
    .train 921 >>同时学习 |T133644:0|t[偷窃]，这是你 10 级潜行者任务所必需的
    .target 詹诺克·柔歌
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target 达扎拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .accept 6063 >>接受任务 驯服野兽
	.trainer >>训练你的职业技能
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob 夜刃捕食者
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6101 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6102 >>接受任务 驯服野兽
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_巨翼恶枭|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob 巨翼恶枭
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6102 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6103 >>接受任务 训练野兽
    .train 1130 >>|cRXP_WARN_确保你已经学习了猎人印记。你很快会需要它来获取一个符文|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 1684 >>接受任务 艾兰娜瑞
    .accept 487 >>接受任务 达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target 詹诺克·柔歌
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .accept 2241 >>接受任务 詹诺克的花
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔以西的道路上巡逻。她也可能正在与熊怪伏击战斗，如果是这样，你需要等她战斗结束|r
    .accept 487 >>接受任务 达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>击杀 |cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob 瘤背伏击者
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>前往先知林地
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .accept 937 >>接受任务 神谕林地
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_在先知林地的月泉处使用|r|T134798:0|t[紫水晶瓶]|cRXP_WARN_|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
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
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>点击 |cRXP_PICK_奇异叶植物|r
    .accept 931 >>接受任务 发光的树叶
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>刷怪升级直到离10级还差2670xp（3830/6500）
    >>|cRXP_WARN_一旦你达到这个经验值临界点，就跳过鹰身人任务和护送任务，直接前往达纳苏斯。你稍后还会有机会来完成这些任务|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 938 >>交任务 密斯特
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .target 哨兵阿瑞尼亚·碎云
    .accept 940 >>接受任务 泰达希尔
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接受任务 密斯特
    .target 雾气
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 937 >>交任务 神谕林地
    .target 哨兵阿瑞尼亚·碎云
    .accept 940 >>接受任务 泰达希尔
    .turnin 938 >>交任务 密斯特
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>完成采集7个小蜘蛛长腿
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>如果你还缺少经验，去北边做鹰身女妖任务
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
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
	#xprate < 1.5
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
    .goto Darnassus,82.01,36.70,100 >>前往达纳苏斯
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1684 >>交任务  艾兰娜瑞
    .target 艾兰娜瑞
    .accept 1683 >>接受任务 沃鲁斯·邪蹄
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板塞琳尼|r 对话
    .home >>将你的炉石绑定到达纳苏斯 << !Warrior
    .vendor >>|cRXP_BUY_购买更多|r |T132815:0|t|cRXP_LOOT_冰镇牛奶|r << Priest
    .target 旅店老板塞琳尼
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶上与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin 940 >>交任务  泰达希尔
	.isOnQuest 940
    .target 大德鲁伊范达尔·鹿盔
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin -5923 >>交任务 响应召唤
    .accept 5921 >>接受任务 月光林地
	.trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target 祖卡斯特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_祖卡斯特|r 对话
    .turnin 6103 >>交任务 训练野兽
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step << Druid
	#completewith next
	.cast 18960 >>施放传送：月光林地
    >>|cRXP_WARN_它会在你的法术书中|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5921 >>交任务 月光林地
    .target 德迪利特·星焰
    .accept 5929 >>接受任务 巨熊之灵
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target 巨熊之灵
step << Druid
	#completewith next
	.cast 18960 >>施放传送：月光林地
    >>|cRXP_WARN_这样可以让你更快返回|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5929 >>交任务  巨熊之灵
    .target 德迪利特·星焰
    .accept 5931 >>接受任务 返回达纳苏斯
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >>炉石返回多兰纳尔，泰达希尔
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉娜·羽弓|r 对话
	.vendor >>|cRXP_BUY_购买4组|r |T132382:0|t[锋利的箭]|cRXP_BUY_。达到10级后立即装备它们|r
    .target 吉娜·羽弓
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>学习烹饪
    .target 扎瑞恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎瑞恩|r 对话
    .accept 4161 >>接受任务 卡多雷的菜谱
    .turnin 4161 >>交任务  卡多雷的菜谱
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
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
    .goto Teldrassil,56.676,59.489
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
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 7383 >>交任务 大地之冠
    .target 科瑞萨斯·月怒
    .accept 935 >>接受任务 大地之冠
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 931 >>交任务 发光的树叶
    .turnin 930 >>交任务 发光的水果
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target 德纳兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
	.turnin 927 >>交任务  布满苔藓的心脏
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>点击 |cRXP_LOOT_德纳兰的培养皿|r
	.turnin 941 >>交任务 培养心脏
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob 夜刃捕食者
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
	.trainer >>训练你的职业技能
    .target 劳尔娜·晨光
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
	.trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
	.trainer >>训练你的职业技能
    .train 5171 >>训练 |T132306:0|t[切割]
    .train 921 >>同时学习 |T133644:0|t[偷窃]，这是你 10 级潜行者任务所必需的
    .target 詹诺克·柔歌
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target 达扎拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .accept 6063 >>接受任务 驯服野兽
	.trainer >>训练你的职业技能
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对 |r树林潜伏者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob 树林潜伏者
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6063 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6101 >>接受任务 驯服野兽
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对 |r夜刃捕食者|cRXP_WARN_ 使用 |r|T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob 夜刃捕食者
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6101 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6102 >>接受任务 驯服野兽
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_巨翼恶枭|r
    >>|cRXP_WARN_在驯服新的宠物之前，你必须右键点击宠物框体并解散你的宠物|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob 巨翼恶枭
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达扎拉|r 对话
    .turnin 6102 >>交任务 驯服野兽
    .target 达扎拉
    .accept 6103 >>接受任务 训练野兽
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .accept 1684 >>接受任务 艾兰娜瑞
    .target 哨兵阿玛拉·夜行者
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target 詹诺克·柔歌
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .accept 2241 >>接受任务 詹诺克的花
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙洛蒙|r 对话
    >>|cRXP_BUY_购买一个|r |T135145:0|t[学徒短杖]
    >>|cRXP_WARN_你之后会装备它。如果你已经找到了另一个法杖就跳过这一步|r
    .collect 2495,1 -- Walking Stick (1)
    .target 沙洛蒙
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r |cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .turnin 487 >>交任务  达纳苏斯之路
    .target 哨兵阿玛拉·夜行者
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>通过熊怪区域后，故意死亡并在达纳苏斯墓地复活
    .target 灵魂医者
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往达纳苏斯
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 922 >>交任务 雷利亚·绿树
    .target 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶上与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin -935 >>交任务 大地之冠
    .turnin -940 >>交任务  泰达希尔
    .target 大德鲁伊范达尔·鹿盔
    .accept 952 >>接受任务 古树之林
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    .turnin 2241 >>交任务  詹诺克的花
    .target 塞尤娜
    .accept 2242 >>接受任务 命运的召唤
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .accept 2518 >>接受任务 月神的泪水
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>前往|cRXP_ENEMY_沃鲁斯·邪蹄|r所在位置
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>击杀 |cRXP_ENEMY_沃鲁斯·邪蹄|r。拾取他的 |cRXP_LOOT_号角|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob 沃鲁斯·邪蹄
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_施放|r |T132164:0|t[驯服野兽] |cRXP_WARN_在|cRXP_ENEMY_巨翼猎枭|r 以驯服它|r -- .tame 1997
    .train 2981 >>|cRXP_WARN_用它攻击怪物以学习|r |T132140:0|t [爪击(等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击这里了解更多关于宠物训练的信息|r
	.unitscan 巨翼猎枭
step
    #sticky
    #completewith Spinnerets
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob 林精长老
    .mob 林精践踏者
    .mob 林精泥泞兽
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>击杀 |cRXP_ENEMY_萨丝拉|r。拾取她的 |cRXP_LOOT_丝囊|r
    >>|cRXP_ENEMY_萨丝拉|r |cRXP_WARN_可能在3个不同地点刷新，请查看地图以获取推荐路线|r
    >>|cRXP_WARN_沿河向北前进，先检查最东边的刷新点。在途中完成 |r|T134339:0|t[肿瘤] |cRXP_WARN_任务|r
    >>|cRXP_WARN_如果她不在河的东侧，则在前往西侧之前完成|r |T134339:0|t[肿瘤]|cRXP_WARN_ 任务|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob 萨丝拉
step
    .goto Teldrassil,41.7,41.8
	>>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob 林精长老
    .mob 林精践踏者
    .mob 林精泥泞兽
step
    .goto Teldrassil,38.3,34.3
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .accept 937 >>接受任务 神谕林地
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_施放|r |T133644:0|t[搜索]对 |cRXP_ENEMY_远古的塞希尔|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_ENEMY_远古的塞希尔|r |cRXP_WARN_沿着大树枝移动|r
    >>|cRXP_WARN_避免与 |cRXP_ENEMY_远古的塞希尔|r 交战。让他从你身边走过，然后从背后施放 |r|T132320:0|t[潜行] |cRXP_WARN_并使用 |r|T133644:0|t[搜索]|cRXP_WARN_|r
    .complete 2242,1
    .mob 远古的塞希尔
step
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
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
    .goto Teldrassil,31.54,31.62
    .target 雾气
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    >>|cRXP_WARN_如果NPC不在就跳过这个任务|r
    .accept 938 >>接受任务 密斯特
step
    .goto Teldrassil,38.3,34.4
    .target 哨兵阿瑞尼亚·碎云
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    >>|cRXP_WARN_记住这是一个限时任务，你需要在接受任务之后10分钟之内交任务|r
    .turnin 938 >>交任务 密斯特
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .turnin 937 >>交任务 神谕林地
    .target 哨兵阿瑞尼亚·碎云
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
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往达纳苏斯
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往达纳苏斯
step
    .goto Darnassus,70.679,45.379
    .target 迈德兰努尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈德兰努尔|r 对话
    .accept 6344 >>接受任务 尼莎·影歌
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往达纳苏斯
step
	.abandon 927 >>放弃满苔藓的心脏。你之后再也没机会交这个任务了
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1684 >>交任务  艾兰娜瑞
    .target 艾兰娜瑞
    .accept 1683 >>接受任务 沃鲁斯·邪蹄
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>前往|cRXP_ENEMY_沃鲁斯·邪蹄|r所在位置
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>击杀 |cRXP_ENEMY_沃鲁斯·邪蹄|r。拾取他的 |cRXP_LOOT_号角|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob 沃鲁斯·邪蹄
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>穿过熊怪区域后主动死亡，然后在达纳苏斯复活
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往达纳苏斯
step << Warrior
    .goto Darnassus,57.305,34.606
    .target 艾兰娜瑞
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾兰娜瑞|r 对话
    .turnin 1683 >>交任务  沃鲁斯·邪蹄
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .turnin 5931 >>交任务  返回达纳苏斯
    .target 玛斯雷·驭熊者
    .accept 6001 >>接受任务 身心之力
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r 对话
    .turnin -935 >>交任务 大地之冠
    .turnin -940 >>交任务  泰达希尔
    .target 大德鲁伊范达尔·鹿盔
    .accept 952 >>接受任务 古树之林
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target 祖卡斯特
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_祖卡斯特|r 对话
    .turnin 6103 >>交任务 训练野兽
step << Hunter
    >>|cRXP_WARN_从 |r祖卡斯特|cRXP_FRIENDLY_ 右侧的坡道上去|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_西尔瓦莉雅|r 对话
    .goto Darnassus,42.2,8.8
    .trainer >>训练宠物法术
    .target 西尔瓦莉雅
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target 雷利亚·绿树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .turnin 923 >>交任务 青苔之瘤
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target 塞尤娜
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    .turnin 2242 >>交任务  命运的召唤
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2518 >>交任务 月神的泪水
    .target 女祭司艾茉拉
    .accept 2520 >>接受任务 萨丝拉的祭品
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_在喷泉处使用|r |T135652:0|t[萨丝拉的祭品]|cRXP_WARN_|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target 女祭司艾茉拉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .turnin 2520 >>交任务  萨丝拉的祭品
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲罗迪恩·唤月|r 对话
    .train 2366 >>学习 |T136065:0|t[草药学]
    >>|T136065:0|t[草药学] |cRXP_WARN_将用于采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，以完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达纳苏斯拍卖师|r 对话
    >>购买以下物品，以便稍后在黑海岸快速交任务：
    >>|T134187:0|t[地根草] << Druid era
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133972:0|t[陆行鸟肉]
    *如果你不想购买任何物品，可以跳过此步骤
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target 拍卖师图尔伦
    .target 拍卖师戈洛萨斯
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找 |cRXP_FRIENDLY_加伊娜|r，她会在工匠区巡逻
    >>|cRXP_BUY_从她那里购买1组|r |T133972:0|t[硬肉干]|cRXP_BUY_。
    >>|cRXP_WARN_你需要用它来喂养你的猫头鹰，它们只吃肉类，而黑海岸没有出售肉类的商人|r
    .collect 117,15
    .target 加伊娜
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊琳尼雅·月火|r 对话
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
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买并装备1把|r |T135489:0|t[多层弯弓]
    .collect 2507,1
    .target 阿瑞耶尔·天影
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
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
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135147:0|t[法师之杖]|cRXP_BUY_.在15级时装备|r
	.collect 2030,1
    .target 阿瑞耶尔·天影
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买1把|r |T135154:0|t[短杖]|cRXP_BUY_.在11级时装备|r << era
    >>如果你买不起|T135154:0|t[法师之杖]|cRXP_BUY_，就购买并装备一把|r|T135147:0|t[|cRXP_BUY_短杖|r] << sod
	.collect 854,1
    .target 阿瑞耶尔·天影
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
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
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target 图里安
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6344 >>交任务 尼莎·影歌
    .target 尼莎·影歌
    .accept 6341 >>接受任务 泰达希尔的渔业
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .isOnQuest 6343
    .target 尼莎·影歌
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .turnin 6341 >>交任务 泰达希尔的渔业
    .target 维斯派塔斯
    .accept 6342 >>接受任务 飞往奥伯丁
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
]])
