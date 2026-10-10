if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 莫高雷
#next 6-10 莫高雷
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000

step << !Tauren
    #completewith next
    +|cRXP_WARN_你选择的是为牛头人准备的指南。我们不推荐你做这个区域的任务，因为其中有一些任务仅限牛头人种族才能接取。你应该选择与你起始区域相同的新手区域指南|r
step
    .goto 7,45.15,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .accept 14449 >>接受任务 第一步
    .target 鹰风酋长
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .turnin 14449 >>交任务 第一步
    .accept 14452 >>接受任务 力量仪祭
    .target 格鲁尔·鹰风
step
    .goto 7,49.20,78.98,30,0
    .goto 7,49.56,78.24,30,0
    .goto 7,49.33,77.59,30,0
    .goto 7,50.23,78.31,30,0
    .goto 7,50.92,78.32,30,0
    .goto 7,50.31,77.25,30,0
    .goto 7,49.56,78.24
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 14452,1 --Bristleback Invaders (6)
    .mob Bristleback Invader
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .turnin 14452 >>交任务 力量仪祭
    .accept 24852 >>接受任务 被囚禁的部族
    .target 格鲁尔·鹰风
step
    .goto 7,52.06,80.48,30,0
    .goto 7,52.15,79.93,30,0
    .goto 7,52.06,78.28,30,0
    .goto 7,52.17,77.75,30,0
    .goto 7,52.21,76.72,30,0
    .goto 7,52.57,74.81,30,0
    .goto 7,50.89,82.37,30,0
    .goto 7,50.67,83.12,30,0
    .goto 7,52.06,80.48
    >>点击 |cRXP_PICK_牢笼|r 释放 |cRXP_FRIENDLY_被俘的勇士|r
    .complete 24852,1 --Braves Freed (4)
    .target Captured Brave
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .turnin 24852 >>交任务 被囚禁的部族
    .accept 14458 >>接受任务 去找阿达娜
    .target 格鲁尔·鹰风
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达娜·雷角|r 对话
    .turnin 14458 >>交任务 去找阿达娜
    .accept 14455 >>接受任务 阻止号角手
    .accept 14456 >>接受任务 勇气仪祭
    .target Adana Thunderhorn
step
    #loop
    .goto 7,46.72,87.92,0
    .goto 7,47.05,87.38,30,0
    .goto 7,46.72,87.92,30,0
    .goto 7,46.45,88.75,30,0
    .goto 7,47.33,89.49,30,0
    .goto 7,47.90,89.03,30,0
    .goto 7,47.90,88.05,30,0
    >>击杀 |cRXP_ENEMY_刺背枪匪|r。拾取他们的 |cRXP_LOOT_步枪|r
    >>击杀 |cRXP_ENEMY_刺背号角手|r
    .complete 14456,1 --Stolen Rifle (7)
    .mob +Bristleback Gun Thiefs
    .complete 14455,1 --Bristleback Thorncaller (7)
    .mob +Bristleback Thorncaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达娜·雷角|r 和 |cRXP_FRIENDLY_洛哈库·石蹄|r 对话
    .turnin 14456 >>交任务 勇气仪祭
    .turnin 14455 >>交任务 阻止号角手
    .accept 14459 >>接受任务 斗猪
    .accept 14461 >>接受任务 邪恶的食粮
    .goto 7,46.18,82.61
    .accept 31165 >>接受任务 手写便笺 << Monk
    .accept 3092 >>接受任务 风化便笺 << Hunter
    .accept 3091 >>接受任务 简易便笺 << Warrior
    .accept 27015 >>接受任务 圣光笔记 << Paladin
    .accept 3094 >>接受任务 绿色便笺 << Druid
    .accept 3093 >>接受任务 符文便笺 << Shaman
    .accept 27014 >>接受任务 神圣笔记 << Priest
    .goto 7,46.15,82.32
    .target Adana Thunderhorn
    .target Rohaku Stonehoof
step
    #completewith ThirdTrough
    >>击杀 |cRXP_ENEMY_重甲斗猪|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,44.70,87.82
    >>|cRXP_WARN_在第一处食槽旁|r|cRXP_WARN_使用|r |T135432:0|t[阿达娜的火炬]
    .complete 14461,1 --First Trough (1)
    .use 49539
step
    .goto 7,44.32,88.71
    >>|cRXP_WARN_在第二处食槽旁|r|cRXP_WARN_使用|r |T135432:0|t[阿达娜的火炬]
    .complete 14461,2 --Second Trough (1)
    .use 49539
step
    #label ThirdTrough
    .goto 1412/1,-265.00000,-3405.80005
    >>|cRXP_WARN_在第三处食槽旁|r|cRXP_WARN_使用|r |T135432:0|t[阿达娜的火炬]
    .complete 14461,3 --Third Trough (1)
    .use 49539
step
#loop
	.line 7,45.73,88.52,44.76,89.60,44.23,88.74,44.22,87.98,44.72,87.69,45.20,87.83,45.73,88
	.goto 7,45.73,88.52,30,0
	.goto 7,44.76,89.60,30,0
	.goto 7,44.23,88.74,30,0
	.goto 7,44.22,87.98,30,0
	.goto 7,44.72,87.69,30,0
	.goto 7,45.20,87.83,30,0
	.goto 7,45.73,88.00,30,0
    >>击杀 |cRXP_ENEMY_重甲斗猪|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达娜·雷角|r 对话
    .turnin 14459 >>交任务 斗猪
    .turnin 14461 >>交任务 邪恶的食粮
    .accept 14460 >>接受任务 荣誉仪祭
    .target Adana Thunderhorn
step
    .goto 7,41.08,81.42
    >>击杀 |cRXP_ENEMY_尖啸·刺鬃酋长|r。拾取 |cRXP_LOOT_鬃毛|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step
    #completewith next
    .hs >>使用炉石返回纳拉其营地
    .cooldown item,6948,>0
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .turnin 14460 >>交任务 荣誉仪祭
    .accept 24861 >>接受任务 最后的仪式，最初的仪式
    .target 鹰风酋长
step
    .goto 7,45.11,75.39
    >>|cRXP_WARN_使用|r |T132813:0|t[水罐]
    .complete 24861,1 --Offering Placed (1)
    .use 50465
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鹰风酋长|r 对话
    .turnin 24861 >>交任务 最后的仪式，最初的仪式
    .accept 23733 >>接受任务 大地之母仪祭
    .target 鹰风酋长
step << Monk
    .goto 462/1,-260.800,-2910.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烁雨|r 对话
    .turnin 31165 >>交任务 手写便笺
    .accept 31166 >>接受任务 虎掌击
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 3092 >>交任务 风化便笺
    .accept 27021 >>接受任务 猎人之道
    .train 56641 >>学习 |T132213:0|t[稳固射击] << Cata
    .target 兰卡·远箭
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 3091 >>交任务 简易便笺
    .accept 27020 >>接受任务 第一堂课
    .train 100 >>学习 |T132337:0|t[冲锋] << Cata
    .target 哈鲁特·雷角
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者赫拉库|r 对话
    .turnin 27015 >>交任务 圣光笔记
    .accept 27023 >>Accept The Way of the Sunwalkers
    .train 20271 >>学习 |T135959:0|t[审判] << Cata
    .train 20154 >>学习 |T135960:0|t[正义圣印] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .accept 27067 >>接受任务 回春术
    .train 774 >>学习 |T136081:0|t[回春术] << Cata
    .target 加尔特·迷雾行者
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 3094 >>交任务 绿色便笺
    .accept 27067 >>接受任务 月火术
    .target 加尔特·迷雾行者
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 3093 >>交任务 符文便笺
    .accept 27027 >>接受任务 根源打击
    .train 73899 >>学习 |T460956:0|t[根源打击] << Cata
    .target 米拉·晨行者
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .turnin 27014 >>交任务 神圣笔记
    .accept 27066 >>接受任务 治疗耀光
    .train 2061 >>学习 |T135907:0|t[快速治疗] << Cata
    .target 鸦羽先知
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .turnin 27014 >>交任务 神圣笔记
    .accept 27066 >>接受任务 学习暗言术
    .target 鸦羽先知
step << Monk
    .goto 7,45.43,75.39
	>>对|cRXP_ENEMY_训练假人|r使用|T606551:0|t[猛虎掌]
    .complete 31166,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Hunter
    .goto 7,45.43,75.39
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T132213:0|t[稳固射击]
	.complete 27021,2 << !Cata --Steady Shot (x3)
	.complete 27021,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Warrior
    .goto 7,45.43,75.39
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T132337:0|t[冲锋]
	.complete 27020,2 << !Cata --Cast Charge (x3)
	.complete 27020,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Paladin cata
    .goto 7,45.43,75.39
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T135959:0|t[审判]
	.complete 27023,1 --Cast Judgement (x3)
	.mob Training Dummy
step << Paladin !cata
    .goto 7,45.43,75.39
	>>施放 |T135961:0|t[命令圣印]，然后攻击一个 |cRXP_ENEMY_训练假人|r
	.complete 27023,2
    .mob Training Dummy
step << Druid cata
    .goto 7,45.65,75.35
	>>对 |cRXP_FRIENDLY_受伤的勇士|r 施放 |T136081:0|t[回春术]
	.complete 27067,1 << Cata --Cast Rejuvenation (x1)
	.target Wounded Brave
step << Druid !cata
    .goto 7,45.43,75.39
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T136096:0|t[月火术]
	.complete 27067,2 --Cast Moonfire
	.mob Training Dummy
step << Shaman
    .goto 7,45.43,75.39
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T460956:0|t[根源打击]
	.complete 27027,2 << !Cata --Cast Primal Strike (x3)
	.complete 27027,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Priest
    .goto 7,45.65,75.35
	>>对 |cRXP_FRIENDLY_受伤的勇士|r 施放 |T135907:0|t[快速治疗]
	.complete 27066,2 << !Cata --Cast Flash Heal (x5)
	.complete 27066,1 << Cata --Cast Flash Heal (x5)
	.target Wounded Brave
step << Monk
    .goto 462/1,-261.100,-2910.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烁雨|r 对话
    .turnin 31166 >>交任务 猛虎掌
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰卡|r 对话
    .turnin 27021 >>交任务 猎人之道
    .target 兰卡·远箭
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈鲁特|r 对话
    .turnin 27020 >>交任务 第一堂课
    .target 哈鲁特·雷角
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者赫拉库|r 对话
    .turnin 27023 >>Turn in The Way of the Sunwalkers
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 27067 >>交任务 回春术
    .target 加尔特·迷雾行者
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔特|r 对话
    .turnin 27067 >>交任务 月火术
    .target 加尔特·迷雾行者
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米拉|r 对话
    .turnin 27027 >>交任务 根源打击
    .target 米拉·晨行者
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .turnin 27066 >>交任务 治疗耀光
    .target 鸦羽先知
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鸦羽|r 对话
    .turnin 27066 >>交任务 学习暗言术
    .target 鸦羽先知
step
    #completewith next
    .goto 1412/1,-114.60000,-2976.90015,12,0
    .goto 1412/1,-48.40000,-2907.10010,12,0
    .goto 1412/1,7.20000,-2900.60010,12,0
    .goto 1412/1,-42.80000,-2933.50000,30 >>沿着小路走，登上山顶
step
    .goto 1412/1,-42.80000,-2933.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德亚米·翱风|r 对话
    .turnin 23733 >>交任务 大地母亲的仪式
    .accept 24215 >>接受任务 风之仪式
    .target Dyami Windsoar
step
    #completewith next
    .goto 7,41.27,75.22,15,0
    .goto 7,41.36,74.10,15,0
    .deathskip >>跟随箭头，从山上往下跳。故意送死并在 |cRXP_FRIENDLY_灵魂医者|r 处复活
step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .accept 11129 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10级 莫高雷
#next 10-22级 艾萨拉
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000


step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .accept 11129 >>接受任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 2973 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <6,1
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 26188 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔戈|r 对话
    .accept 6361 >>接受任务 一捆兽皮
    .vendor >>出售垃圾物品并修理装备 << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物，把灰色物品都卖掉。如果卖掉你的武器能凑够买 |T133053:0|t[木槌棒] 的钱（6 银 66 铜），就一起卖了。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312与 |r玛诺特·深痕|cRXP_FRIENDLY_ 对话|r
    >>|cFF0E8312从他那里|r|cFF0E8312购买一根|r |T133053:0|t[木槌棒]
    .collect 2493,1,14438,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](3银93铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312与|r 肯纳·鹰眼|cRXP_FRIENDLY_ 对话|r
    >>|cFF0E8312从他那里|r|cFF0E8312购买一把|r |T135611:0|t[精制短枪]
    .collect 2509,1,14438,1 --Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith PalemaneGnolls
    +装备上 |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith PalemaneGnolls
    +装备上 |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克|r 对话
    .turnin 6361 >>交任务 一捆兽皮
    .accept 6362 >>接受任务 飞往雷霆崖
    .target Tak
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .vendor >>|cRXP_BUY_购买最多20个|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_购买最多20个 |r |T133968:0|t[刚出炉的面包] << Warrior/Hunter
    .target 旅店老板考乌斯
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莫·雷角|r 对话
    .turnin 24215 >>交任务 风之仪式
    .accept 14438 >>接受任务 土地之争
    .target Ahmo Thunderhorn
step
    .goto 7,48.77,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .accept 761 >>接受任务 猎捕猛鹫
    .target 哈肯·风之图腾
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔·云歌|r 对话
    .train 8042 >>训练你的职业技能
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知艾尔苏|r 对话
    .train 589 >>训练你的职业技能
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 8921 >>训练你的职业技能
    .target 根妮亚·符文图腾
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者艾乌比|r 对话
    .train 465 >>训练你的职业技能
    .target Sunwalker Iopi
step
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .accept 20440 >>接受任务 有毒的水
    .target 穆尔·雷角
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 34428 >>训练你的职业技能
    .target 克朗·石蹄
step
    #completewith WCleansing1
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    >>|cRXP_WARN_该任务现在不需要完成|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狼|r。拾取它们的 |cRXP_LOOT_爪子|r
    >>击杀|cRXP_ENEMY_平原陆行鸟|r，拾取它们的 |cRXP_LOOT_泰爪|r 和 |T134343:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob 成年平原陆行鸟
step
    #label PalemaneGnolls
#loop
	.line 7,47.96,69.82,47.20,70.68,47.71,71.57,48.37,71.84,48.83,72.00,49.84,70.48,49.24,70.24,48.87,69.80,47.96,69.82
	.goto 7,47.96,69.82,30,0
	.goto 7,47.20,70.68,30,0
	.goto 7,47.71,71.57,30,0
	.goto 7,48.37,71.84,30,0
	.goto 7,48.83,72.00,30,0
	.goto 7,49.84,70.48,30,0
	.goto 7,49.24,70.24,30,0
	.goto 7,48.87,69.80,30,0
	.goto 7,47.96,69.82,30,0
#loop
	.line 7,51.94,69.95,52.07,70.98,52.52,71.73,52.92,72.36,53.62,72.44,53.84,72.04,54.25,72.15,55.07,72.12,55.52,71.26,55.22,70.65,54.55,70.22,53.92,70.07,53.15,69.85,52.58,70.17,51.94,69
	.goto 7,51.94,69.95,30,0
	.goto 7,52.07,70.98,30,0
	.goto 7,52.52,71.73,30,0
	.goto 7,52.92,72.36,30,0
	.goto 7,53.62,72.44,30,0
	.goto 7,53.84,72.04,30,0
	.goto 7,54.25,72.15,30,0
	.goto 7,55.07,72.12,30,0
	.goto 7,55.52,71.26,30,0
	.goto 7,55.22,70.65,30,0
	.goto 7,54.55,70.22,30,0
	.goto 7,53.92,70.07,30,0
	.goto 7,53.15,69.85,30,0
	.goto 7,52.58,70.17,30,0
	.goto 7,51.94,69.00,30,0
    >>击杀|cRXP_ENEMY_苍白剥皮者|r、|cRXP_ENEMY_苍白偷猎者|r和|cRXP_ENEMY_苍白制革者|r
    .complete 14438,1 --Palemane Gnolls (15)
    .mob Palemane Skinner
    .mob Palemane Poacher
    .mob Palemane Tanner
step
    #loop
    .goto 7,48.25,67.61,0
    .goto 7,50.61,68.08,40,0
    .goto 7,50.23,66.00,40,0
    .goto 7,51.06,64.06,40,0
    .goto 7,52.38,63.49,40,0
    .goto 7,52.98,62.11,40,0
    .goto 7,54.02,61.22,40,0
    .goto 7,55.23,62.26,40,0
    .goto 7,56.63,62.25,40,0
    .goto 7,56.75,64.83,40,0
    .goto 7,56.06,67.30,40,0
    .goto 7,48.25,67.61,40,0
    >>击杀 |cRXP_ENEMY_狼|r。拾取它们的 |cRXP_LOOT_爪子|r
    >>击杀|cRXP_ENEMY_平原陆行鸟|r，拾取它们的 |cRXP_LOOT_泰爪|r 和 |T134343:0|t[|cRXP_LOOT_鲜嫩的陆行鸟肉|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob 成年平原陆行鸟
step
    #completewith AcceptDangers
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134343:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 来喂他
    >>|cRXP_WARN_他在血蹄村周围不停地跑圈|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    #label WCleansing1
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 20440 >>交任务 有毒的水
    .accept 24440 >>接受任务 净化冰蹄之井
    .target 穆尔·雷角
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
    .isQuestComplete 761
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莫·雷角|r 对话
    .turnin 14438 >>交任务 土地之争
    .accept 14491 >>接受任务 不休的大地
    .accept 24459 >>接受任务 摩林·云行者
    .target 茂尔·祈雨
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 26188 >>接受任务 马兹拉纳其
    .target 茂尔·祈雨
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 2973 >>训练你的职业技能
    .target 雅文·刺鬃
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛诺特|r 对话
    .vendor >>清理杂物，把灰色物品都卖掉。如果卖掉你的武器能凑够买 |T133053:0|t[木槌棒] 的钱（6 银65 铜），就一起卖了。若钱还不够，稍后再回来购买
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312与|r |cRXP_FRIENDLY_玛诺特|r|cFF0E8312对话。从他那里购买|r |T133053:0|t[木槌棒]|cFF0E8312|r
    .collect 2493,1,24440,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target 玛诺特·深痕
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯纳|r 对话
    .vendor >>清理杂物并出售灰色物品。如果卖掉你的武器能让你凑够 |T135611:0|t[精制短枪](3银93铜)，就把它卖掉购买。若钱还不够，稍后再回来购买
    .target 肯纳·鹰眼
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312与|r |cRXP_FRIENDLY_肯纳·鹰眼|r|cFF0E8312对话。|r|cFF0E8312从他那里购买|r |T135611:0|t[精制短枪]
    .collect 2509,1,24440,1 --Ornate Blunderbuss (1)
    .target 肯纳·鹰眼
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith WinterhoofWell
    +装备 |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith WinterhoofWell
    +装备上 |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    #label AcceptDangers
    .goto 1412/1,-384.80002,-2397.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .accept 743 >>接受任务 风怒鹰身人
    .target 卢尔·鹰爪
step
    #completewith next
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    >>|cRXP_WARN_该任务现在不需要完成|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    #label WinterhoofWell
    .goto 7,53.46,65.34
    >>|cRXP_WARN_在井旁使用|r |T135139:0|t[净化冰蹄之井图腾]|cRXP_WARN_|r
    .use 5411
    .complete 24440,1 --Well Cleansed (1)
step
    #completewith next
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134343:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 来喂他
    >>|cRXP_WARN_他在血蹄村周围不停地跑圈|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 24440 >>交任务 净化冰蹄之井
    .accept 24441 >>接受任务 雷角图腾
    .target 穆尔·雷角
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 84939 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔·云歌|r 对话
    .train 324 >>训练你的职业技能
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知艾尔苏|r 对话
    .train 588 >>训练你的职业技能
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 768 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者艾乌比|r 对话
    .train 635 >>训练你的职业技能
    .target Sunwalker Iopi
    .xp <7,1
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板考乌斯|r 对话
    .vendor >>|cRXP_BUY_购买最多20个|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_购买最多20个 |r |T133968:0|t[刚出炉的面包] << Warrior/Hunter
    .itemcount 1179,<20 << !Warrior !Hunter
    .itemcount 4541,<20
    .target 旅店老板考乌斯
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <8,1
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    .turnin 24459 >>交任务 摩林·云行者
    .accept 749 >>接受任务 被破坏的货车
    .target 摩林·云行者
step
    #completewith VentureCoCave
    >>击杀|cRXP_ENEMY_草原潜行者|r，拾取它们的|cRXP_LOOT_爪|r
    >>击杀|cRXP_ENEMY_平原狮|r，拾取它们的|cRXP_LOOT_爪|r和|cRXP_LOOT_平原狮的腿骨|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith VentureCoCave
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    .goto 7,53.52,48.29
    >>点击 |cRXP_PICK_封闭补给箱|r
    .turnin 749 >>交任务 被破坏的货车
    .accept 751 >>接受任务 被破坏的货车
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    .turnin 751 >>交任务 被破坏的货车
    .accept 26179 >>接受任务 风险投资公司
    .accept 26180 >>接受任务 菲兹普罗克主管
    .target 摩林·云行者
step
    #label VentureCoCave
    #completewith FizsprocketKill
    .goto 7,60.86,47.47,10 >>进入洞穴
step
    #completewith FizsprocketKill
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #label FizsprocketKill
    .goto 7,61.21,46.29
    >>击杀|cRXP_ENEMY_菲兹普罗克主管|r，拾取他的|cRXP_LOOT_剪贴板|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .mob 菲兹普罗克主管
step
    #loop
    .goto 7,59.30,48.85,0
    .goto 7,62.21,45.13,20,0
    .goto 7,61.81,44.74,20,0
    .goto 7,61.29,43.64,20,0
    .goto 7,60.73,48.13,40,0
    .goto 7,60.47,49.63,40,0
    .goto 7,59.30,48.85,40,0
    >>击杀 |cRXP_ENEMY_风险投资公司工人|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #completewith FizsprocketTurnin
    >>击杀|cRXP_ENEMY_草原潜行者|r，拾取它们的|cRXP_LOOT_爪|r
    >>击杀|cRXP_ENEMY_平原狮|r，拾取它们的|cRXP_LOOT_爪|r和|cRXP_LOOT_平原狮的腿骨|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith FizsprocketTurnin
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    #label FizsprocketTurnin
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩林|r 对话
    .turnin 26179 >>交任务 风险投资公司
    .turnin 26180 >>交任务 菲兹普罗克主管
    .target 摩林·云行者
step
    #completewith next
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    #loop
    .goto 7,56.14,57.59,0
    .goto 7,57.94,60.08,40,0
    .goto 7,58.60,58.93,40,0
    .goto 7,59.73,57.46,40,0
    .goto 7,60.31,56.44,40,0
    .goto 7,61.03,55.56,40,0
    .goto 7,59.21,54.50,40,0
    .goto 7,58.44,53.38,40,0
    .goto 7,57.87,50.87,40,0
    .goto 7,57.23,50.07,40,0
    .goto 7,56.00,51.41,40,0
    .goto 7,55.66,53.73,40,0
    .goto 7,55.60,55.55,40,0
    .goto 7,56.14,57.59,40,0
    >>击杀|cRXP_ENEMY_草原潜行者|r，拾取它们的|cRXP_LOOT_爪|r
    >>击杀|cRXP_ENEMY_平原山狮|r，拾取它们的|cRXP_LOOT_爪子|r以及|cRXP_LOOT_股骨|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #loop
    .goto 7,54.70,67.69,0
    .goto 7,54.11,62.03,40,0
    .goto 7,51.77,66.37,40,0
    .goto 7,51.06,67.33,40,0
    .goto 7,50.01,68.11,40,0
    .goto 7,54.70,67.69,40,0
    >>击杀 |cRXP_ENEMY_猛鹫|r。拾取他们的 |cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob 猛鹫
    .mob 消瘦的猛鹫
step
    #xprate <1.2
    #completewith ThunderHornTotem
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134343:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 来喂他
    >>|cRXP_WARN_他在血蹄村周围不停地跑圈|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    #xprate >1.19
    #completewith FlyTB
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134343:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 来喂他
    >>|cRXP_WARN_他在血蹄村周围不停地跑圈|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    #label ThunderHornTurnin
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 24441 >>交任务 雷角图腾
    .accept 24456 >>接受任务 净化雷角之井
    .target 穆尔·雷角
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈肯|r 对话
    .turnin 761 >>交任务 猎捕猛鹫
    .target 哈肯·风之图腾
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 84939 >>训练你的职业技能
    .target 克朗·石蹄
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔·云歌|r 对话
    .train 324 >>训练你的职业技能
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知艾尔苏|r 对话
    .train 588 >>训练你的职业技能
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 768 >>训练你的职业技能
    .target 根妮亚·符文图腾
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者艾乌比|r 对话
    .train 635 >>训练你的职业技能
    .target Sunwalker Iopi
step
    .goto 7,47.16,56.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 26188 >>交任务 马兹拉纳其
    .target 茂尔·祈雨
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 5116 >>训练你的职业技能
    .target 雅文·刺鬃
step
    #xprate <1.2
    #label ThunderHornTotem
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_在井旁边使用|r |T135139:0|t[雷角之井净化图腾] |cRXP_WARN_|r
    .complete 24456,1 --Well Cleansed (1)
step
    #xprate >1.19
    #label FlyTB
    #completewith next
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克|r对话
    .fly Thunder Bluff >>飞往雷霆崖
    .target Tak
step << Tauren
    #xprate >1.19
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
step << Tauren
    #xprate >1.19
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .accept 6364 >>接受任务 向瓦尔格复命
    .target 塔尔
step << skip
    #xprate >1.19
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
step
    #optional
    .maxlevel 9,MulgoreEnd
step
    #xprate >1.19
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>乘坐电梯离开雷霆崖
    .zoneskip Mulgore
step
    #loop
    .goto 7,35.869,42.670,0
    .waypoint 7,36.260,44.783,40,0
    .waypoint 7,35.869,42.670,40,0
    .waypoint 7,34.946,40.825,40,0
    .waypoint 7,33.934,41.928,40,0
    .waypoint 7,32.540,41.483,40,0
    .waypoint 7,33.616,43.231,40,0
    >>击杀 |cRXP_ENEMY_风怒唤风者|r 和 |cRXP_ENEMY_风怒鹰身人|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witches
    .mob Windfury Harpies
step
    #loop
    .goto 1412/1,416.10001,-1917.40002,0
    .goto 1412/1,377.89999,-1940.70007,20,0
    .goto 1412/1,416.10001,-1917.40002,20,0
    .goto 1412/1,447.89999,-1953.59998,20,0
    .goto 1412/1,414.30002,-1983.80005,20,0
    >>使用|T133841:0|t[宁静大地之鼓]对准|cRXP_ENEMY_躁动的大地之魂|r
    >>|cRXP_WARN_如果它们抵抗并攻击你，就击杀它们|r
    .complete 14491,1 --Spirits Calmed (6)
    .use 49647
    .mob Agitated Earth Spirit
step
    #xprate >1.19
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_在井旁边使用|r |T135139:0|t[雷角之井净化图腾] |cRXP_WARN_|r
    .complete 24456,1 --Well Cleansed (1)
step
    #completewith DangerTurnin
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #loop
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .waypoint 1412/1,-368.10001,-2296.19995,30,0
    .waypoint 1412/1,-354.10001,-2318.40015,30,0
    .waypoint 1412/1,-378.39999,-2339.10010,30,0
    .waypoint 1412/1,-406.39999,-2348.90015,30,0
    .waypoint 1412/1,-437.50000,-2394.40015,30,0
    .waypoint 1412/1,-444.80002,-2440.80005,30,0
    .waypoint 1412/1,-483.70001,-2458.30005,30,0
    .waypoint 1412/1,-455.30002,-2395.69995,30,0
    .waypoint 1412/1,-488.20001,-2347.90015,30,0
    .waypoint 1412/1,-487.00000,-2295.30005,30,0
    .waypoint 1412/1,-452.50000,-2256.69995,30,0
    .waypoint 1412/1,-421.60001,-2256.00000,30,0
    .waypoint 1412/1,-377.10001,-2257.30005,30,0
    .waypoint 1412/1,-368.80002,-2275.90015,30,0
    .use 33009>>找到 |cRXP_FRIENDLY_凯雷|r。使用 |T134343:0|t[|cRXP_LOOT_嫩陆行鸟肉|r] 来喂他
    >>|cRXP_WARN_他在血蹄村周围不停地跑圈|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan 疯狂的凯雷
step
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿哈布·麦蹄|r 对话
    .turnin 11129 >>交任务 凯雷失踪了！
    .target 阿哈布·麦蹄
step << Tauren
    #xprate >1.19
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔戈|r对话
    .turnin 6364 >>交任务 向瓦尔格复命
    .target Varg Windwhisper
step
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莫·雷角|r 对话
    .turnin 14491 >>交任务 不休的大地
    .target Ahmo Thunderhorn
step
    #label DangerTurnin
    .goto 7,47.51,61.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁尔|r对话
    .turnin 743 >>交任务 风怒鹰身人
    .target 卢尔·鹰爪
step
    #xprate <1.2
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 24456 >>交任务 净化雷角之井
    .accept 24457 >>接受任务 幻象仪祭
    .target 穆尔·雷角
step
    #xprate >1.19
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆尔|r 对话
    .turnin 24456 >>交任务 净化雷角之井
    .target 穆尔·雷角
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅文|r 对话
    .train 1978 >>训练你的职业技能
    .target 雅文·刺鬃
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克朗|r 对话
    .train 71 >>训练你的职业技能
    .target 克朗·石蹄
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔·云歌|r 对话
    .train 3599 >>训练你的职业技能
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知艾尔苏|r 对话
    .train 8092 >>训练你的职业技能
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_根妮亚|r 对话
    .train 5215 >>训练你的职业技能
    .target 根妮亚·符文图腾
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_烈日行者艾乌比|r 对话
    .train 82242 >>训练你的职业技能
    .target Sunwalker Iopi
    .xp <10,1
step
    #xprate <1.2
    .goto 7,47.889,57.097
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔曼|r 对话
    .turnin 24457 >>交任务 幻象仪祭
    .accept 20441 >>接受任务 幻象仪祭
    .target 扎尔曼·双月
step
    #xprate <1.2
    .goto 7,47.850,56.961
    .use 49651 >>|cRXP_WARN_在火焰处使用|r |T134712:0|t[视像之水] |cRXP_WARN_|r
    .complete 20441,1 --Water of Vision consumed (1x)
    .timer 86,幻象仪祭 剧情RP
step
    #xprate <1.2
    #completewith next.
    .subzone 4835 >>等待直到你到达阳痕营地
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹纳|r 对话
    .turnin 20441 >>交任务 幻象仪祭
    .accept 24523 >>接受任务 蛮鬃图腾
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r对话
    .accept 833 >>接受任务 神圣的墓地
    .accept 773 >>接受任务 智慧仪祭
    .target 博学者诺拉·暴雨图腾
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .accept 861 >>接受任务 猎人之道
    .target 斯考恩·白云
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .accept 744 >>接受任务 准备典礼
    .target 伊恩·鹰爪
step
    #xprate <1.2
    #completewith RedRocks
    >>击杀|cRXP_ENEMY_草原狼阿尔法|r，从它们身上拾取|cRXP_LOOT_牙|r
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    #loop
    .goto 7,52.476,8.126,0
    .waypoint 7,54.950,13.407,0
    .waypoint 7,51.782,11.187,50,0
    .waypoint 7,52.476,8.126,50,0
    .waypoint 7,53.252,12.366,50,0
    .waypoint 7,54.950,13.407,50,0
    .waypoint 7,55.939,16.542,50,0
    >>击杀|cRXP_ENEMY_风怒女巫|r和|cRXP_ENEMY_风怒女族长|r，从它们身上拾取|cRXP_LOOT_羽毛|r
    .complete 744,1 --Azure Feather (x6)
    .mob 风怒女巫
    .complete 744,2 --Bronze Feather (x6)
    .mob 风怒女族长
step
    #xprate <1.2
    #label RedRocks
    .goto 7,60.828,22.737
    .subzone 225 >>前往赤色石
    .isOnQuest 833
step
    #xprate <1.2
    #completewith next
    >>击杀 |cRXP_ENEMY_刺背干涉者|r。
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob 刺背干涉者
step
    #xprate <1.2
    .goto 7,60.787,22.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 773 >>交任务 智慧仪祭
    .target 先祖之魂
step
    #xprate <1.2
    #loop
    .goto 7,60.374,21.638,0
    .waypoint 7,61.344,24.848,50,0
    .waypoint 7,59.935,24.400,50,0
    .waypoint 7,59.122,22.210,50,0
    .waypoint 7,60.374,21.638,50,0
    >>击杀 |cRXP_ENEMY_刺背干涉者|r。
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob 刺背干涉者
step
    #xprate <1.2
    #loop
    .goto 7,54.646,24.065,0
    .goto 7,46.777,18.984,0
    .waypoint 7,56.422,25.128,80,0
    .waypoint 7,54.646,24.065,80,0
    .waypoint 7,51.223,24.232,80,0
    .waypoint 7,49.326,21.378,80,0
    .waypoint 7,46.777,18.984,80,0
    .waypoint 7,47.051,13.915,80,0
    .waypoint 7,48.849,13.184,80,0
    >>击杀|cRXP_ENEMY_草原狼阿尔法|r，从它们身上拾取|cRXP_LOOT_牙|r
    >>击杀 |cRXP_ENEMY_平原徘徊者|r。拾取他们的 |cRXP_LOOT_爪子|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹纳|r对话
    .turnin 24523 >>交任务 蛮鬃图腾
    .accept 24524 >>接受任务 净化蛮鬃之井
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r对话
    .turnin 833 >>交任务 神圣的墓地
    .target 博学者诺拉·暴雨图腾
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯克恩|r 对话
    .turnin 861 >>交任务 猎人之道
    .target 斯考恩·白云
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊恩|r 对话
    .turnin 744 >>交任务 准备典礼
    .target 伊恩·鹰爪
step
    #xprate <1.2
    .goto 7,43.204,16.050
    .use 5416 >>|cRXP_WARN_在井边使用|r |T135139:0|t[蛮鬃之井净化图腾] |cRXP_WARN_|r
    .complete 24524,1 --Well Cleansed (1)
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_犹纳|r对话
    .turnin 24524 >>交任务 净化蛮鬃之井
    .accept 24550 >>接受任务 雷霆崖之旅
    .target Una Wildmane
step
    #xprate <1.2
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #xprate <1.2
    #completewith next
    .goto 88,54.766,26.571,15,0
    .goto 88,50.038,34.337,20 >>乘电梯进入雷霆崖
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 24550 >>交任务 雷霆崖之旅
    .accept 24540 >>接受任务 战争之舞
    .target 贝恩·血蹄
step << Tauren
    #xprate <1.2
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安哈努|r 对话
    .turnin 6362 >>交任务 飞往雷霆崖
    .accept 6363 >>接受任务 双足飞龙驭手塔尔
    .target 安哈努
step
    #xprate <1.2
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板帕拉|r 对话
    .home >>将你的炉石设置到雷霆崖
    .target 旅店老板帕拉
    .isQuestAvailable 24540
step
    #xprate <1.2
    #completewith next
    .goto 88,51.937,26.573,15,0
    .goto 7,37.883,13.834,50 >>乘坐北部升降梯返回莫高雷
    .zoneskip Mulgore
step
    #xprate <1.2
    .goto 7,36.975,11.910
    >>攻击 |cRXP_ENEMY_奥尔诺·恐怖图腾|r
    >>|cRXP_WARN_当他的生命值降至90%时任务完成|r
    .complete 24540,1 --Orno Grimtotem Defeated (1x)
    .mob Orno Grimtotem
step
    #xprate <1.2
    #completewith next
    .hs >>使用炉石返回雷霆崖
    .use 6948
    .zoneskip Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝恩|r对话
    .turnin 24540 >>交任务 战争之舞
    .accept 26397 >>接受任务 与大地母亲同行
    .target 贝恩·血蹄
step << Tauren
    #xprate <1.2
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .turnin 6363 >>交任务 双足飞龙驭手塔尔
    .target 塔尔
    .zoneskip Orgrimmar
step
    #optional
    #label MulgoreEnd
step << !Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
step << Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .gossipoption 111516 >>飞往奥格瑞玛
    .target 塔尔
    .zoneskip Thunder Bluff,1
step
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔克|r对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tak
    .zoneskip Mulgore,1
step
    #optional
    .abandon 743 >>放弃任务 风怒鹰身人
step
    #optional
    .abandon 14491 >>放弃任务 不休的大地
step
    #optional
    .abandon 24456 >>放弃任务 净化雷角之井
step
    #optional
    .abandon 11129 >>放弃任务 凯雷失踪了
step
    #optional
    .abandon 6364 >>放弃任务 向瓦尔戈回复
step
    #xprate <1.2
    #completewith next
    .goto 85,49.886,75.613,8 >>进入格罗玛什要塞
step
    #xprate <1.2
    .goto 1454/1,-4343.10010,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r对话
    .turnin 26397 >>交任务 与大地母亲同行
    .target 加尔鲁什·地狱咆哮
    .isOnQuest 26397
    ]])
