if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 1-6 幽影谷
#next 6-10级 泰达希尔
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊尔萨莱恩|r对话
    .accept 28713 >>接受任务 自然的平衡
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>击杀 |cRXP_ENEMY_夜刃豹幼崽|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊尔萨莱恩|r对话
    .turnin 28713 >>交任务 自然的平衡
    .accept 28714 >>接受任务 腐化的魔苔
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_麦利萨尔·鹿盔|r对话
    .accept 28715 >>接受任务 恶魔窃贼
	.target Melithar Staghelm
step
    #completewith next
    >>击杀|cRXP_ENEMY_劣魔|r和|cRXP_ENEMY_劣魔之子|r，从它们身上拾取|cRXP_LOOT_魔苔|r
    .complete 28714,1 --6/6 Fel Moss
	.mob 小劣魔
	.mob 劣魔
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>拾取地上的|cRXP_LOOT_麦利萨尔被盗的背包|r
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>击杀|cRXP_ENEMY_劣魔|r和|cRXP_ENEMY_劣魔之子|r，从它们身上拾取|cRXP_LOOT_魔苔|r
    .complete 28714,1 --6/6 Fel Moss
	.mob 小劣魔
	.mob 劣魔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊尔萨莱恩|r 和 |cRXP_FRIENDLY_麦利萨尔·鹿盔|r对话
    .turnin 28714 >>交任务 腐化的魔苔
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>交任务 恶魔窃贼
	.target 麦利萨尔·鹿盔
    .goto 460,45.93,72.86
    .accept 3116 >>接受任务 简易符记 << Warrior
    .accept 3117 >>接受任务 风化符记 << Hunter
    .accept 3118 >>接受任务 密文符记 << Rogue
    .accept 3119 >>接受任务 神圣符记 << Priest
    .accept 3120 >>接受任务 绿色符记 << Druid
    .accept 26841 >>接受任务 禁忌符印 << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>走上斜坡前去找 |cRXP_FRIENDLY_珊达|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >>沿着斜坡前去找 |cRXP_FRIENDLY_莱恩达|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
    .turnin 3119 >>交任务 神圣符记
    .accept 26949 >>接受任务 治疗受伤者 << cata
    .accept 26949 >>接受任务 学习暗言术 << !cata
    .train 2061 >>训练 |T135907:0|t[快速治疗] << cata
    .target 珊达
step << Priest cata
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_对身旁的|r |T135907:0|t[受伤的哨兵] |cRXP_WARN_施放|cRXP_FRIENDLY_快速治疗|r5次|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest !cata
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_对|r |T136207:0|t[训练假人] |cRXP_WARN_施放|r |cRXP_ENEMY_暗言术：痛|r5次
    .complete 26949,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊达|r 对话
    .turnin 26949 >>交任务 治疗受伤者 << cata
    .turnin 26949 >>交任务 学习暗言术 << !cata
    .accept 28723 >>接受任务 月之女祭司
    .target 珊达
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩达|r 对话
    .turnin 26841 >>交任务 禁忌符印
    .accept 26940 >>接受任务 奥术飞弹
    .train 5143 >>学习 |T136096:0|t[奥术飞弹] << cata
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_施放|r |T135812:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_训练假人|r上，直到触发|r |T135731:0|t[奥术飞弹！] |cRXP_WARN_效果，然后施放|r |T136096:0|t[奥术飞弹]|cRXP_WARN_。重复两次|r
    .complete 26940,1 << cata -- Practice Arcane Missles (1)
    .complete 26940,2 << !cata -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>沿着斜坡前去找 |cRXP_FRIENDLY_莱恩达|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱恩达|r 对话
    .turnin 26940 >>交任务 奥术飞弹
    .accept 28723 >>接受任务 月之女祭司
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >>前往里面找 |cRXP_FRIENDLY_艾莉西亚|r << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >>前往里面找 |cRXP_FRIENDLY_弗拉胡恩·影语者|r << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
    .turnin 3116 >>交任务 简易符记
    .accept 26945 >>接受任务 学习新技法
	.train 100 >>学习 |T132337:0|t[冲锋] << cata
    .target 奥莉希亚
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_对|r |cRXP_WARN_训练假人|r |cRXP_ENEMY_施放|r |T132337:0|t[冲锋]
    .complete 26945,1 << cata -- Practice Charge (1)
    .complete 26945,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉希亚|r 对话
    .turnin 26945 >>交任务 学习新技法
    .accept 28723 >>接受任务 月之女祭司
    .target 奥莉希亚
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_弗拉胡恩·影语者|r 对话
    .turnin 3118 >>交任务 密文符记
    .accept 26946 >>接受任务 潜行者的优势
	.train 2098 >>学习 |T132292:0|t[刺骨] << cata
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_对|r 训练假人|cRXP_WARN_ 施放|r |T136189:0|t[影袭] |cRXP_WARN_然后|r |T132292:0|t[刺骨] |cRXP_ENEMY_3次|r
    .complete 26946,1 << cata -- Practice Eviscerate (1)
    .complete 26946,2 << !cata -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_弗拉胡恩·影语者|r 对话
    .turnin 26946 >>交任务 潜行者的优势
    .accept 28723 >>接受任务 月之女祭司
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r 对话
    .turnin 3117 >>交任务 风化符记
    .accept 26947 >>接受任务 林中的训练
	.train 56641 >>学习 |T132213:0|t[稳固射击] << cata
    .target 阿亚娜·远途
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_对|r训练假人|cRXP_WARN_ 施放|cRXP_ENEMY_ |T132213:0|t[稳固射击] |r5次|r
    .complete 26947,1 << cata-- Practice Steady Shot (1)
    .complete 26947,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿亚娜·远途|r 对话
    .turnin 26947 >>交任务 林中的训练
    .accept 28723 >>接受任务 月之女祭司
    .target 阿亚娜·远途
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >>前去找里面的 |cRXP_FRIENDLY_玛丹特·硬木|r
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
    .turnin 3120 >>交任务 绿色符记
    .accept 26948 >>接受任务 回春术 << cata
    .accept 26948 >>接受任务 月火术 << !cata
	.train 774 >>学习 |T136081:0|t[回春术] << cata
    .target 玛丹特·硬木
step << Druid cata
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_对|r |cRXP_WARN_受伤的哨兵|r |cRXP_FRIENDLY_施放|r |T136081:0|t[回春术]
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << !cata Druid
    .goto 460,46.003,56.584
    >>|cRXP_WARN_对|r 训练假人|cRXP_WARN_ |r施放|cRXP_ENEMY_ |T136096:0|t[月火术]|r
    .complete 26948,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丹特·硬木|r 对话
    .turnin 26948 >>交任务 回春术 << cata
    .turnin 26948 >>交任务 月火术 << !cata
    .accept 28723 >>接受任务 月之女祭司
    .target 玛丹特·硬木
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .turnin 28723 >>交任务 月之女祭司
    .accept 28724 >>接受任务 埃沃隆的解药
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>拾取地上的 |cRXP_LOOT_月夜花|r
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .turnin 28724 >>交任务 埃沃隆的解药
    .accept 28725 >>接受任务 森林守护者
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,56.34,27.51,5 >>|cRXP_WARN_进入洞穴然后等 |cRXP_FRIENDLY_塔琳德拉|r 出现|r
step
    .goto 58,56.34,27.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在箭头所在位置与 |cRXP_FRIENDLY_塔琳德拉|r 对话。她过几秒后就会出现
    .turnin 28725 >>交任务  森林守护者
    .accept 28726 >>接受任务 树林蜘蛛的腐蚀
	.target 塔琳德拉
step
    .goto 58,41.27,33.22,10,0
    .goto 58,34.81,15.50,15,0
    .waypoint 58,46.33,41.34
    >>击杀|cRXP_ENEMY_树林蜘蛛|r
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob 树林蜘蛛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与你身边的 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 28726 >>交任务 树林蜘蛛的腐蚀
    .accept 28727 >>接受任务 邪恶的触摸
	.target 塔琳德拉
step
    .goto 58,34.56,23.87,0
    .goto 58,42.81,19.50,10,0
    .goto 58,45.02,31.37
    >>击杀 |cRXP_ENEMY_邪恶的基塞伊斯|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与你身边的 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .turnin 28727,1 >>交任务 邪恶的触摸
    .accept 28728 >>接受任务 未来的征兆
	.target 塔琳德拉
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .goto 460,42.50,50.50
    .turnin 28728 >>交任务 未来的征兆
    .accept 28729 >>接受任务 大地之冠
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_要启用任务物品的按键绑定，按照以下步骤：|r
    *[1] 按 |cRXP_WARN_Esc|r 键
    *[2] 选择 |cRXP_WARN_设置|r
    *[3] 选择左方的 |cRXP_WARN_快捷键|r 设置
    *[4] 在 |cRXP_WARN_快捷键设置|r 中，找到 |cRXP_WARN_RestedXP 指南|r
    *[5] 选择并绑定 |cRXP_WARN_激活物品按钮。|r
step
    .goto 460,50.13,34.49
    .use 5185 >>|cRXP_WARN_在月亮井使用|r |T134776:0|t[水晶瓶] |cRXP_WARN_|r
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .turnin 28729 >>交任务 泰达希尔：艾泽拉斯之冠
    .accept 28730 >>接受任务 珍贵的水
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>沿着大树坡道上走
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特纳隆·雷拳|r 对话
    .turnin 28730 >>交任务 珍贵的水
    .accept 28731 >>接受任务 泰达希尔：传递信息
	.target 特纳隆·雷拳
step
    .goto 460,54.57,84.78
	>>|cRXP_WARN_从树上跳下。你拥有缓落增益效果，不会因坠落而受到伤害|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯萨努斯|r 对话
    .accept 2159 >>接受任务 多兰纳尔的货物
	.target 伯萨努斯
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 6-10级 泰达希尔
#next 10-18级 黑海岸
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .accept 488 >>接受任务 赛恩的要求
	.target 赛恩·腐蹄
step
    #completewith next
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_夜刃豹毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_巨翼枭的羽毛|r
    >>|cRXP_WARN_你稍后还会有机会来完成这个任务|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob 树林潜伏者
    .complete 488,1 --2/2 Nightsaber Fang
    .mob 夜刃豹
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob 巨翼枭
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 2438 >>接受任务 翡翠摄梦符
	.target 塔隆凯·捷根
step << !NightElf
    #completewith next
    .goto 57,55.48,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲德利奥|r 对话
    .fp Dolanaar >>获取多兰纳尔飞行路径
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .accept 475 >>接受任务 烦恼之风
	.target 阿斯瑞达斯·熊皮
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    .turnin 2159,1 >>交任务 多兰纳尔的货物
	.target 旅店老板凯达米尔
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯达米尔|r 对话
    .home >>将你的炉石绑定在多兰纳尔
	.target 旅店老板凯达米尔
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兰尼斯·影花|r 对话
    .train 2366 >>学习 |T136065:0|t[草药学]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊兰尼斯·影花|r 对话
    .train 2575 >>学习 |T136248:0|t[采矿]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    .trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莉恩蒂|r 对话
    .trainer >>训练你的职业技能
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target 劳尔娜·晨光
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 28731 >>交任务 泰达希尔：传递信息
    .accept 929 >>接受任务 泰达希尔：巨龙的取舍
	.target 科瑞萨斯·月怒
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
    .trainer >>训练你的职业技能
    .target 卡尔
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_夜刃豹毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_巨翼枭的羽毛|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob 树林潜伏者
    .complete 488,1 --2/2 Nightsaber Fang
    .mob 夜刃豹
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob 巨翼枭
step
    .goto 57,61.92,50.69
    .use 5619 >>|cRXP_WARN_在月亮井处使用|r |T134721:0|t[翡翠瓶]|r
    .complete 929,1 --1/1 Filled Jade Phial
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r 对话
    .turnin 475 >>交任务 烦恼之风
    .accept 476 >>接受任务 瘤背熊怪的堕落
	.target 盖洛拉斯·塔文斯伦
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>打开 |cRXP_PICK_塔隆凯的衣柜|r。并从中拾取 |cRXP_LOOT_翡翠摄梦符|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .deathskip >>送死并在灵魂医者处复活
    .subzoneskip 186
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .turnin 929 >>交任务 泰达希尔：巨龙的取舍
	.target 科瑞萨斯·月怒
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .turnin 476 >>交任务 瘤背熊怪的堕落
	.target 阿斯瑞达斯·熊皮
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 2438 >>交任务  翡翠摄梦符
    .accept 2459 >>接受任务 噬梦者菲罗斯塔
	.target Tallonkai
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    #loop
    .goto 57,57.48,48.54,50,0
    .goto 57,58.21,49.79,50,0
    .goto 57,58.23,52.16,50,0
    .goto 57,59.97,53.47,50,0
    .goto 57,61.28,51.69,50,0
    .goto 57,60.21,50.03,50,0
    .goto 57,57.48,48.54,50,0
    >>击杀 |cRXP_ENEMY_树林潜伏者|r。拾取他们的 |cRXP_LOOT_树林蜘蛛丝|r
    >>击杀 |cRXP_ENEMY_夜刃豹|r。拾取他们的 |cRXP_LOOT_夜刃豹毒牙|r
    >>击杀 |cRXP_ENEMY_巨翼枭|r。拾取他们的 |cRXP_LOOT_巨翼枭的羽毛|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob 树林潜伏者
    .complete 488,1 --2/2 Nightsaber Fang
    .mob 夜刃豹
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob 巨翼枭
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 488 >>交任务  赛恩的要求
	.target 赛恩·腐蹄
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob 瘤背秘法师
step
    .goto 57,67.26,46.83
    >>击杀|cRXP_ENEMY_噬梦者菲罗斯塔|r，拾取|cRXP_LOOT_塔隆凯的珠宝|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob 噬梦者菲罗斯塔
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>击杀 |cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_在快完成时把血量压到很低，之后你会用“死亡传送”回去|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob 瘤背秘法师
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >>死亡并在灵魂医者处复活
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 2459 >>交任务 噬梦者菲罗斯塔
	.target 塔隆凯·捷根
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target 劳尔娜·晨光
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .accept 489 >>接受任务 寻求救赎！
	.target 塞拉尔·刃叶
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    .trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莉恩蒂|r 对话
    .trainer >>训练你的职业技能
    .target Irriende
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
    .trainer >>训练你的职业技能
    .target 卡尔
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>拾取地上的 |cRXP_LOOT_魔锥果|r
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛恩·腐蹄|r 对话
    .turnin 489 >>交任务 寻求救赎！
	.target 赛恩·腐蹄
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .target 塞拉尔·刃叶
    .accept 13946 >>接受任务 自然的报复
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .accept 932 >>接受任务 扭曲的仇恨
	.target 塔隆凯·捷根
step
#completewith melenas
    .goto 57,54.45,45.43,40 >>向北前往洞穴
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    .use 46716 >>|cRXP_WARN_使用|r |T134217:0|t[怒根之种] |cRXP_WARN_击杀洞穴内的|cRXP_ENEMY_ |r劣魔|r
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
step
#label melenas
    .goto 57,51.82,43.85
    >>击杀 |cRXP_ENEMY_迈雷纳斯|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .mob 迈雷纳斯
step
    #requires ireroot
    #completewith next
    .hs >>炉石返回多兰纳尔，泰达希尔
    .cooldown item,6948,>2,1
step
    .goto 57,55.77,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .target 塞拉尔·刃叶
    .turnin 13946 >>交任务 自然的报复
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔隆凯·捷根|r 对话
    .turnin 932 >>交任务  扭曲的仇恨
	.target 塔隆凯·捷根
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 和 |cRXP_FRIENDLY_哨兵凯拉·星歌|r 对话
    .accept 483 >>接受任务 唤醒圣物
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 13945 >>接受任务 常驻的危险
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step
    #completewith sleepingd
    >>|cRXP_WARN_在前往 |cRXP_ENEMY_奥本·怒爪|r 的路上，沿途击杀任意种类的|r |cRXP_FRIENDLY_熊怪|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,48.61,47.92,100,0
    .goto 57,46.03,47.99,100,0
    .goto 57,45.488,50.760,25 >>进入树屋内的隧道
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥本·怒爪|r 对话
    .target Oben Rageclaw
    .accept 2541 >>接受任务 沉睡的德鲁伊
step
    #label shamans
    #sticky
    >>击杀 |cRXP_ENEMY_瘤背萨满祭司|r。拾取它们的 |cRXP_LOOT_萨满巫毒符咒|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>击杀 |cRXP_ENEMY_熊怪|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>|cRXP_WARN_沿着小路深入班尼希尔兽穴，然后穿过上层的那座桥|r
    >>打开 |cRXP_PICK_巢穴之箱|r。从中取出|r |cRXP_LOOT_筑巢符文|r
    >>|cRXP_WARN_你也可以与 |cRXP_FRIENDLY_女猎手哨兵|r 对话，她会为你指路|r
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>|cRXP_WARN_前往底层|r
    >>打开 |cRXP_PICK_黑羽之箱|r。拾取 |cRXP_LOOT_黑色羽毛|r
    >>|cRXP_WARN_你也可以与 |cRXP_FRIENDLY_女猎手哨兵|r 对话，她会为你指路|r
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>|cRXP_WARN_前往中央大厅|r
    >>打开 |cRXP_PICK_天空之箱|r。拾取 |cRXP_LOOT_天蓝宝石|r
    >>|cRXP_WARN_你也可以与 |cRXP_FRIENDLY_女猎手哨兵|r 对话，她会为你指路|r
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>|cRXP_WARN_进入中央平台，然后东行过桥|r
    >>打开 |cRXP_PICK_鸦爪之箱|r。拾取 |cRXP_LOOT_鸦爪神符|r
    >>|cRXP_WARN_你也可以与 |cRXP_FRIENDLY_女猎手哨兵|r 对话，她会为你指路|r
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>前往隧道出口
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥本·怒爪|r 对话
    .target Oben Rageclaw
    .turnin 2541 >>交任务 沉睡的德鲁伊
    .accept 2561 >>接受任务 利爪德鲁伊
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>|cRXP_WARN_跑到另一边的桥上，等锁着的门自己打开|r
    >>击杀 |cRXP_ENEMY_怒爪|r
    .use 8149 >>|cRXP_WARN_对|r |cRXP_WARN_怒爪|cRXP_ENEMY_ |r的尸体使用|r |T132502:0|t[巫毒咒符]
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>前往隧道出口
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥本·怒爪|r 对话
    .target Oben Rageclaw
    .turnin 2561 >>交任务 利爪德鲁伊
step
    .isQuestComplete 483
    #completewith next
    .hs >>炉石返回多兰纳尔，泰达希尔
    .cooldown item,6948,>2,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 和 |cRXP_FRIENDLY_哨兵凯拉·星歌|r 对话
    .turnin 483 >>交任务 唤醒圣物
    .accept 486 >>接受任务 大槌乌萨尔
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .turnin 13945 >>交任务 常驻的危险
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯拉·风刃|r 对话
    .trainer >>训练你的职业技能
    .target 凯拉·风刃
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莉恩蒂|r 对话
    .trainer >>训练你的职业技能
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_劳尔娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target 劳尔娜·晨光
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹诺克·柔歌|r 对话
    .trainer >>训练你的职业技能
    .target 詹诺克·柔歌
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔|r 对话
    .trainer >>训练你的职业技能
    .target 卡尔
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    .target 哨兵阿玛拉·夜行者
    .accept 487 >>接受任务 达纳苏斯之路
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>沿着山路前进时，击杀沿途的 |cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob 瘤背伏击者
step
    .goto 57,51.693,39.805
    >>|cRXP_WARN_沿着坡道向上走，前往山顶的洞穴|r
    >>击杀 |cRXP_ENEMY_大槌乌萨尔|r
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 对话
    .target 哨兵阿玛拉·夜行者
    .turnin 487 >>交任务  达纳苏斯之路
step
    #completewith next
    #requires ambushers
    .deathskip >>故意送死并在多兰纳尔重生
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 对话
    .target 阿斯瑞达斯·熊皮
    .turnin 486 >>交任务 大槌乌萨尔
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉尔·刃叶|r 对话
    .target 塞拉尔·刃叶
    .accept 997 >>接受任务 德纳兰的泥土
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .target 德纳兰
    .turnin 997 >>交任务 德纳兰的泥土
    .accept 918 >>接受任务 林精的种子
    .accept 919 >>接受任务 林精的新芽
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>点击|cRXP_PICK_奇怪的果树|r
    .accept 930 >>接受任务 发光的水果
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>击杀 |cRXP_ENEMY_林精|r。拾取他们的 |cRXP_LOOT_种子|r
    >>拾取地上的|cRXP_LOOT_林精的新芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .target 德纳兰
    .turnin 918 >>交任务 林精的种子
    .turnin 919 >>交任务 林精的新芽
    .accept 922 >>接受任务 雷利亚·绿树
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .target 德纳兰
    .turnin 930 >>交任务 发光的水果
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈欧玛|r 对话
    .accept 6344 >>接受任务 睹物思乡
	.target Nyoma
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .target 科瑞萨斯·月怒
    .accept 7383 >>接受任务 泰达希尔：卡多雷的重担
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲德利奥|r 对话
    .turnin 6344 >>交任务 睹物思乡
    .accept 6341 >>接受任务 前往达纳苏斯
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 对话
    .target 雷利亚·绿树
    .turnin 922 >>交任务 雷利亚·绿树
    .accept 923 >>接受任务 青苔之瘤
step << skip
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .target 哨兵阿瑞尼亚·碎云
    .accept 937 >>接受任务 神谕林地
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .target 女祭司艾茉拉
    .accept 2518 >>接受任务 月神的泪水
step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>击杀 |cRXP_ENEMY_林精践踏者|r, |cRXP_ENEMY_林精泥泞兽|r 和 |cRXP_ENEMY_林精长老|r。拾取他们的 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob 林精泥泞兽
    .mob Timberling Bark Ripper
    .mob 林精践踏者
step
    >>击杀 |cRXP_ENEMY_萨丝拉|r。拾取她的 |cRXP_LOOT_银色丝囊|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob 萨丝拉
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>点击 |cRXP_PICK_奇异叶植物|r
    .accept 931 >>接受任务 发光的树叶
step
    #loop
    >>击杀 |cRXP_ENEMY_血羽鹰身人|r。拾取他们的 |cRXP_LOOT_腰带|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob 血羽鹰身人
    .mob 血羽游荡者
    .mob 血羽女巫
    .mob 血羽复仇者
    .mob 血羽风巫
    .mob 血羽女族长
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密斯特|r 对话
    >>|cRXP_WARN_这将开始一个护送任务|r
    .target 雾气
    .accept 938 >>接受任务 密斯特
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾茉拉|r 对话
    .target 女祭司艾茉拉
    .turnin 2518 >>交任务 月神的泪水
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 对话
    .target 哨兵阿瑞尼亚·碎云
    .turnin 937 >>交任务 神谕林地 << skip
    .turnin -938 >>交任务 密斯特
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_在先知林地的月泉处使用|r|T134798:0|t[紫水晶瓶]|cRXP_WARN_|r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷利亚·绿树|r 和 |cRXP_FRIENDLY_德纳兰|r 对话
    .turnin 923 >>交任务 青苔之瘤
    .target +Rellian Greenspyre
    .goto 57,43.960,44.161
    .turnin 931 >>交任务 发光的树叶
    .accept 2499 >>接受任务 奥肯斯古尔
    .target +Denalan
    .goto 57,43.936,44.196
step
    .goto 57,47.403,35.829,40,0
    .goto 57,47.39,34.47
    >>击杀 |cRXP_ENEMY_奥肯斯古尔|r。拾取 |cRXP_LOOT_巨大的瘤|r
    >>|cRXP_ENEMY_奥肯斯古尔|r |cRXP_WARN_会小范围巡逻|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .mob Oakenscowl
step
    .goto 57,43.936,44.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德纳兰|r 对话
    .target 德纳兰
    .turnin 2499 >>交任务 奥肯斯古尔
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .target 科瑞萨斯·月怒
    .turnin 7383 >>交任务 泰达希尔：卡多雷的重担
    .accept 933 >>接受任务 泰达希尔：黎明的到来 << skip

--skipping following chain. very long rp / bad xphr
step << skip
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_在阿里斯瑞恩之池的月亮井|r|cRXP_WARN_使用|r |T134765:0|t[红玉瓶]
	.complete 933,1
step << skip
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .target 塔琳德拉
    .turnin 933 >>交任务 泰达希尔：黎明的到来
    .accept 14005 >>接受任务 艾露恩的复仇
step << skip
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step << skip
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔琳德拉|r 对话
    .target 塔琳德拉
    .turnin 14005 >>交任务 艾露恩的复仇
    .accept 935 >>接受任务 泰达希尔之水
step << skip
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞萨斯·月怒|r 对话
    .target 科瑞萨斯·月怒
    .turnin 935 >>交任务 泰达希尔之水
    .accept 14039 >>接受任务 卡多雷的家
step
    .goto 89,35.993,50.342
    .zone 89 >>前往达纳苏斯
    .isOnQuest 6341
step
    #optional
    #label Teldskip
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奈欧玛|r 对话
    .accept 6344 >>接受任务 睹物思乡
	.target Nyoma
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲德利奥|r 对话
    .turnin 6344 >>交任务 睹物思乡
    .accept 6341 >>接受任务 前往达纳苏斯
	.target Fidelio
step
    #completewith end
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲德利奥|r 对话
    .fly Darnassus >>飞往达纳苏斯
	.target Fidelio
    .zoneskip 89
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135350:0|t[优质重剑]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target 阿瑞耶尔·天影
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target 阿瑞耶尔·天影
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T132402:0|t[短柄斧]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target 阿瑞耶尔·天影
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135499:0|t[多层弯弓]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target 阿瑞耶尔·天影
step << Warrior
    #optional
    #completewith end
    +|cRXP_WARN_装备上|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_将|r |T135346:0|t[斗士短剑] |cRXP_WARN_装备在主手|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_将|r |T132402:0|t[短柄斧] |cRXP_WARN_装备在你的主手|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_装备上|r |T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .goto 89,43.913,76.149
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_哨兵柯德蕾莎·楠弓|r 对话
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>接受任务 变革的浪潮
step
    .isQuestComplete 14039
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_泰兰德·语风|r 对话
    .target Tyrande Whisperwind
    .turnin 14039 >>交任务 卡多雷的家
    .isQuestComplete 14039
step
    .isOnQuest 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾奎恩妮|r 对话
    .target Sister Aquinne
    .turnin 6341 >>交任务 前往达纳苏斯
    .accept 6342 >>接受任务 意外的礼物
step
    .isQuestTurnedIn 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾奎恩妮|r 对话
    .target Sister Aquinne
    .accept 6342 >>接受任务 意外的礼物
step
    .isOnQuest 6342
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利奥拉|r 对话
    .target Leora
    .turnin 6342 >>交任务 意外的礼物
step
    .goto 89,35.993,50.342
    .subzone 702 >>踏入飞行管理员旁边的紫色传送门
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Lor'danel >>飞往洛达内尔
    .zoneskip Darkshore
    .target 维斯派塔斯
]])
