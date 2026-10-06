if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南（部落版）
<< Horde
#name 1-6 永歌森林
#version 7
#subgroup RestedXP 部落 1-30级
#defaultfor BloodElf
#next 6-10 永歌森林


step << !BloodElf
    #completewith next
    +|cRXP_WARN_你选择的是为血精灵准备的指南。由于非血精灵在 1–6 级区域没有任务，我们不建议这样进行。你应该选择与你起始区域相同的新手区域指南|r
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾洛娜|r 对话
    .accept 8325 >>接受任务 夺回逐日岛
    .target 魔导师艾洛娜
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>击杀 |cRXP_ENEMY_法力浮龙|r
    .complete 8325,1 --Kill Mana Wyrm (x8)
    .mob 法力浮龙
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾洛娜|r 对话
    .turnin 8325 >>交任务 夺回逐日岛
    .accept 8326 >>接受任务 令人遗憾的措施
    .accept 8328 >>接受任务 法师训练 << Mage
    .accept 8563 >>接受任务 术士训练 << Warlock
    .accept 8564 >>接受任务 牧师训练 << Priest
    .accept 9392 >>接受任务 潜行者训练 << Rogue
	.accept 9393 >>接受任务 猎人训练 << Hunter
    .accept 9676 >>接受任务 圣骑士训练 << Paladin
    .target 魔导师艾洛娜
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·阳翼|r 对话
    >>|cRXP_BUY_购买|r |T132382:0|t[劣质箭] |cRXP_BUY_从她那里。直到你的|r |T134409:0|t[箭袋] |cRXP_BUY_装满|r << Hunter
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水] << Warlock/Mage/Priest
    .vendor >>把垃圾物品卖给商人
    .collect 159,10,8336,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (x10)
    .target 萨拉·阳翼
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_朱莉亚·射日者|r 对话
    .turnin 8328 >>交任务 法师训练
    .accept 10068 >>接受任务 护井者索兰尼亚
    .train 1459 >>训练你的职业技能
    .target 朱莉亚·射日者
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里拉伦|r 对话
    .turnin 8563 >>交任务 术士训练
    .accept 10073 >>接受任务 护井者索兰尼亚
    .accept 8344 >>接受任务 力量之源
    .trainer>> Train your class spells
    .target 召唤者泰里拉伦
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护士长阿蕾娜|r 对话
    .turnin 8564 >>交任务 牧师训练
    .accept 10072 >>接受任务 护井者索兰尼亚
    .train 1243 >>训练你的职业技能
    .target 护士长阿蕾娜
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯瑞尔|r 对话
    .turnin 9392 >>交任务 潜行者训练
    .accept 10071 >>接受任务 护井者索兰尼亚
    .target 寻路者卡雷尔
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠萨琳娜|r 对话
    .turnin 9393 >>交任务 猎人训练
    .accept 10070 >>接受任务 护井者索兰尼亚
    .target 游侠萨琳娜
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶泰尼斯·射日者|r 对话
    .turnin 9676 >>交任务 圣骑士训练
    .accept 10069 >>接受任务 护井者索兰尼亚
    .target 耶泰尼斯·射日者
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>上楼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护井者索兰尼亚|r, |cRXP_FRIENDLY_奥术师伊塔纳斯|r, 和 |cRXP_FRIENDLY_奥术师赫里恩|r 对话
    .turnin 10068 >>交任务 护井者索兰尼亚 << Mage
    .turnin 10069 >>交任务 护井者索兰尼亚 << Paladin
    .turnin 10070 >>交任务 护井者索兰尼亚 << Hunter
    .turnin 10071 >>交任务 护井者索兰尼亚 << Rogue
    .turnin 10072 >>交任务 护井者索兰尼亚 << Priest
    .turnin 10073 >>交任务 护井者索兰尼亚 << Warlock
    .accept 8330 >>接受任务 索兰尼亚的物品
    .accept 8345 >>接受任务 达斯雷玛的神龛
    .target 护井者索兰尼亚
    .goto Eversong Woods,38.76,19.36
    .accept 8336 >>接受任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
    .accept 8346 >>接受任务 无尽的渴求
    .target 奥术师赫里恩
    .goto Eversong Woods,37.18,18.94
step << Warlock
    #completewith next
    >>施放 |T135738:0|t[法力吸取]击杀|cRXP_ENEMY_法力浮龙|r和|cRXP_ENEMY_凶猛的树人嫩苗|r.拾取以获得它们的|cRXP_LOOT_奥术薄片|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob 法力浮龙
    .mob 凶猛的树人嫩苗
step << Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_魔泉山猫|r 和 |cRXP_ENEMY_魔泉山猫幼崽|r。拾取他们的 |cRXP_LOOT_项圈|r
    .complete 8326,1 --Lynx Collar (8)
    .mob 魔泉山猫
    .mob 魔泉山猫幼崽
step << Warlock
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>从这里跑上斜坡
step << Warlock
    #requires RunRamp
    #completewith next
    >>释放|T135738:0|t[法力吸取] 击杀 |cRXP_ENEMY_奥术怨灵|r 和 |cRXP_ENEMY_被污染的奥术怨灵|r. 拾取|cRXP_ENEMY_奥术怨灵|r以获得|cRXP_LOOT_精华|r 和它们的|cRXP_LOOT_碎片|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob 奥术怨灵
    .mob 被污染的奥术怨灵
step << Warlock
	#label ArcaneSliver
    #loop
    .goto Eversong Woods,31.57,29.31,0
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83,30,0
    >>击杀一只 |cRXP_ENEMY_被污染的奥术怨灵|r，拾取它掉落的 |cRXP_LOOT_精华|r 和 |T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r] 来开始任务|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接受任务 被污染的奥术薄片
    .mob 被污染的奥术怨灵
    .use 20483
step << Warlock
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    >>释放|T135738:0|t[法力吸取] 击杀 |cRXP_ENEMY_奥术怨灵|r 和 |cRXP_ENEMY_被污染的奥术怨灵|r. 拾取|cRXP_ENEMY_奥术怨灵|r以获得|cRXP_LOOT_精华|r 和它们的|cRXP_LOOT_碎片|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8344,1 --Wraith Essence (4)
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob 奥术怨灵
    .mob 被污染的奥术怨灵
step << Warlock
    #xprate <1.5
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .xp 3+200 >>刷怪达到200+/1400经验
step << Warlock
    #softcore
    #completewith FistfulTI
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step << Warlock
    #hardcore
    #completewith FistfulTI
    .goto Eversong Woods,37.18,18.94,50 >>前往|cRXP_FRIENDLY_赫里恩|r 和 |cRXP_FRIENDLY_伊塔纳斯|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师赫里恩|r 和 |cRXP_FRIENDLY_奥术师伊塔纳斯|r 对话
    .turnin 8346 >>交任务 无尽的渴求
    .turnin 8338 >>交任务 被污染的奥术薄片
    .target 奥术师赫里恩
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << Warlock
    #label FistfulTI
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师赫里恩|r 和 |cRXP_FRIENDLY_奥术师伊塔纳斯|r 对话
    .turnin 8338 >>交任务 被污染的奥术薄片
    .target 奥术师赫里恩
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
step << Warlock
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·阳翼|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .vendor >>把垃圾物品卖给商人
    .collect 159,10,8327,1 --Collect Refreshing Spring Water (10)
    .target 萨拉·阳翼
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里拉伦|r 对话
    .turnin 8344 >>交任务 力量之源
    .train 172 >>训练你的职业技能
    .target 召唤者泰里拉伦
    .xp <4,1
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里拉伦|r 对话
    .turnin 8344 >>交任务 力量之源
    .target 召唤者泰里拉伦
step << Warlock
	#completewith Measures
	.cast 688 >>|cRXP_WARN_施放|r |T136218:0|t[召唤小鬼]
step << Warlock
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚斯米|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[魔典:血契]|cRXP_BUY_从她那里|r
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target +赫米特·奈辛瓦里
    .train 6307,1 --Blood Pact (Rank 1)
step
    #label Collars
    #loop
    .goto Eversong Woods,37.37,18.31,0
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22,35,0
    >>击杀 |cRXP_ENEMY_魔泉山猫|r 和 |cRXP_ENEMY_魔泉山猫幼崽|r。拾取他们的 |cRXP_LOOT_项圈|r
    .complete 8326,1 --Collect Lynx Collar (x8)
    .mob 魔泉山猫
    .mob 魔泉山猫幼崽
step
    #label Measures
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾洛娜|r 对话
    .turnin 8326 >>交任务 令人遗憾的措施
    .accept 8327 >>接受任务 向兰萨恩·派雷隆报到
    .target 魔导师艾洛娜
step << !Warlock
    #completewith Journal
    >>施放 |T135738:0|t[法力吸取]击杀|cRXP_ENEMY_法力浮龙|r和|cRXP_ENEMY_凶猛的树人嫩苗|r.拾取以获得它们的|cRXP_LOOT_奥术薄片|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob 法力浮龙
    .mob 凶猛的树人嫩苗
step << Warlock
    #completewith Journal
    >>|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对法力型生物|r
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .mob 法力浮龙
step
    #label Report
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰萨恩·派雷隆|r 对话
    .turnin 8327 >>交任务 向兰萨恩·派雷隆报到
    .accept 8334 >>接受任务 攻势
    .target 兰萨恩·派雷隆
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>拾取地上的|cRXP_PICK_日记|r
    .complete 8330,3 --Collect Solanian's Journal (x1)
step << !Warlock
    #completewith RedOrb
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r
    *|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对 |cRXP_ENEMY_凶猛的树人嫩苗|r. 拾取|cRXP_ENEMY_凶猛的树人嫩苗|r 以获得|r |cRXP_LOOT_薄片|r
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob 凶猛的树人嫩苗
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob 凶猛的树人嫩苗
step << Warlock
    #completewith RedOrb
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r
    *|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对|r |cRXP_ENEMY_凶猛的树人嫩苗|r
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob 凶猛的树人嫩苗
    .isOnQuest 8346
step << Warlock
    #optional
    #completewith RedOrb
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .isNotOnQuest 8346
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>拾取|cRXP_PICK_占卜宝珠|r ，它在平台上
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step << !Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r
    *|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对 |cRXP_ENEMY_凶猛的树人嫩苗|r. 拾取|cRXP_ENEMY_凶猛的树人嫩苗|r 以获得|r |cRXP_LOOT_薄片|r
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob 凶猛的树人嫩苗
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob 凶猛的树人嫩苗
step << Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r
    *|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对|r |cRXP_ENEMY_凶猛的树人嫩苗|r
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob 凶猛的树人嫩苗
    .isOnQuest 8346
step << Warlock
    #optional
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>击杀 |cRXP_ENEMY_树人嫩苗|r 和 |cRXP_ENEMY_凶猛的树人嫩苗|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob 树人嫩苗
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob 凶猛的树人嫩苗
    .isNotOnQuest 8346
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰萨恩·派雷隆|r 对话
    .turnin 8334 >>交任务 攻势
    .accept 8335 >>接受任务 放逐者菲伦德雷
    .target 兰萨恩·派雷隆
step << !Warlock
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>施放 |T135738:0|t[法力吸取]击杀|cRXP_ENEMY_法力浮龙|r.拾取以获得它们的|cRXP_LOOT_奥术薄片|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .disablecheckbox
    .mob 法力浮龙
step << !Warlock !Rogue
    #xprate <1.5
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .xp 4-360 >>刷怪达到1740+/2100经验
step << !Warlock !Rogue
    #xprate >1.49
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .xp 4-540 >> Grind to 1560+/2100xp
step << !Warlock !Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师赫里恩|r 和 |cRXP_FRIENDLY_奥术师伊塔纳斯|r 对话
    .turnin 8346 >>交任务 无尽的渴求
    .target 奥术师赫里恩
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << !Warlock !Rogue
    #label FistfulTI
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师伊塔纳斯|r 对话
    .turnin 8336 >>交任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
step << Mage/Priest
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·阳翼|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T132794:0|t[清凉的泉水]
    .vendor >>把垃圾物品卖给商人
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target 萨拉·阳翼
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_朱莉亚·射日者|r 对话
    .train 116 >>训练你的职业技能
    .target 朱莉亚·射日者
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护士长阿蕾娜|r 对话
    .train 589 >>训练你的职业技能
    .target 护士长阿蕾娜
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠萨琳娜|r 对话
    .train 1978 >>训练你的职业技能
    .target 游侠萨琳娜
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_耶泰尼斯·射日者|r 对话
    .train 20271 >>训练你的职业技能
    .target 耶泰尼斯·射日者
step
    #completewith RunRamp
    >>|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对法力型生物|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob 法力浮龙
    .mob 凶猛的树人嫩苗
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>点击|cRXP_PICK_达斯雷玛的神龛|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>拾取地面上的 |cRXP_PICK_卷轴|r
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>从这里跑上斜坡
step
    #requires RunRamp
    #completewith Academy
    >>|cRXP_WARN_施放|r |T135738:0|t[法力吸取] |cRXP_WARN_对法力型生物|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob 奥术怨灵
step << !Warlock
    #completewith Academy
    >>击杀一只 |cRXP_ENEMY_被污染的奥术怨灵|r，拾取它掉落的|T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r] 来开始任务|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接受任务 被污染的奥术薄片
    .mob 被污染的奥术怨灵
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>在前往学院的路上，击杀 |cRXP_ENEMY_奥术怨灵|r 和 |cRXP_ENEMY_被污染的奥术怨灵|r
    >>击杀顶部的 |cRXP_ENEMY_放逐者菲伦德雷|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .mob 奥术怨灵
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .mob 被污染的奥术怨灵
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob 放逐者菲伦德雷
step << !Warlock
    .goto Eversong Woods,30.84,27.13
    >>击杀一只 |cRXP_ENEMY_被污染的奥术怨灵|r，拾取它掉落的|T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_被污染的奥术薄片|r] 来开始任务|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接受任务 被污染的奥术薄片
    .mob 被污染的奥术怨灵
    .use 20483
step
    #completewith SolanianB
    .hs >>炉石返回逐日岛
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>|cRXP_WARN_施放|r|T135738:0|t[法力吸取] |cRXP_WARN_对|r |cRXP_ENEMY_法力浮龙|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob 法力浮龙
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>上楼
step
    #label SolanianB
    .goto Eversong Woods,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护井者索兰尼亚|r 对话
    .turnin 8330 >>交任务索兰尼亚的物品
    .turnin 8345 >>交任务 达斯雷玛的神龛
    .target 护井者索兰尼亚
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师伊塔纳斯|r 对话
    .turnin 8336 >>交任务 奥术薄片
    .target 奥术师伊塔纳斯
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8336
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师赫里恩|r 对话
    .turnin 8338 >>交任务 被污染的奥术薄片 << !Warlock
    .turnin 8346 >>交任务 无尽的渴求
    .goto Eversong Woods,37.18,18.94
    .target 奥术师赫里恩
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰萨恩·派雷隆|r 对话
    .turnin 8335 >>交任务 放逐者菲伦德雷
    .accept 8347 >>接受任务 帮助信使
    .target 兰萨恩·派雷隆
step
    #xprate <1.5
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    .xp 5+1800 >>刷怪达到1800+/2800经验
step
    #xprate >1.49
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    .xp 5+1300 >>刷怪达到1300+/2800经验
step
    #completewith next
    .goto Eversong Woods,38.91,30.27,30,0
    .goto Eversong Woods,40.41,32.21,30 >>过桥
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使奥拉莉恩|r 对话
    .turnin 8347 >>交任务 帮助信使
    .accept 9704 >>接受任务 失心者的牺牲品
    .target 信使奥拉莉恩
step
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地上的 |cRXP_FRIENDLY_灰谷先驱者|r 的尸体对话
    .turnin 9704 >>交任务 失心者的牺牲品
    .accept 9705 >>接受任务 找回包裹
    .target 被杀死的信使
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使奥拉莉恩|r 对话
    .turnin 9705 >>交任务 找回包裹
    .accept 8350 >>接受任务 送信
    .target 信使奥拉莉恩
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,45.97,43.35,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2690 >>刷怪达到2690+/2800经验
step
    #xprate >1.49
    #loop
    .goto Eversong Woods,45.97,43.35,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2635 >>刷怪达到 2635+/2800 经验
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 6-10 永歌森林
#displayname 8-11 Eversong Woods << Orc Warrior/Troll Warrior
#displayname 7-11 Eversong Woods << Orc !Warrior !Hunter !Warlock/Troll !Warrior !Hunter
#defaultfor BloodElf/Undead/Orc !Hunter !Shaman !Warlock/Troll !Hunter !Shaman
#version 7
#subgroup RestedXP 部落 1-30级
#next 10-12 永歌森林

step
    .goto Eversong Woods,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师亚隆尼斯|r 对话
    .accept 8472 >>接受任务 失效的傀儡
    .target 魔导师亚隆尼斯
step
    #completewith FalconHS
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅店
step << BloodElf Warlock
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    .turnin 8350 >>交任务 送信
    .home >>将你的炉石绑定到鹰翼广场
    .target 旅店老板德兰妮尔
    .bindlocation 3665
step << !Warlock !Warrior
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    .home >>将你的炉石绑定到鹰翼广场
    .target 旅店老板德兰妮尔
    .bindlocation 3665
step << Priest/Mage/Warlock/Warrior/Rogue
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珀纳瑞斯|r 对话
    .accept 9489 >>清理死亡之痕 << BloodElf
    .train 591 >>训练你的职业技能
    .target 珀纳瑞斯
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 143 >>训练你的职业技能
    .target 加琳黛尔
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞罗努斯|r 对话
    .train 695 >>训练你的职业技能
    .target 塞罗努斯
step << Warrior/Rogue
    .goto Eversong Woods,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡娜莉亚|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 卡娜莉亚
step << Mage/Warlock/Priest
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r
    .collect 1179,5,8468,1 --Ice Cold Milk (5)
    .money <0.0119
    .target 旅店老板德兰妮尔
step
    #optional
    #label FalconHS
step << !Warlock !Warrior
    #completewith next
    .goto Eversong Woods,47.86,47.76,8,0
    .goto Eversong Woods,47.79,47.35,8 >>到外面去
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_通缉布告|r 和 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .accept 8468 >>接受任务 通缉：饥饿者泰里斯
    .goto Eversong Woods,48.18,46.31
    .accept 8463 >>接受任务 不稳定的法力水晶
    .target 艾尔杜·炙痕
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺尔蕾妮|r 对话
    .train 639 >>训练你的职业技能
    .target 诺尔蕾妮
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔娜莉亚|r 对话
    .train 1757 >>训练你的职业技能
    .target 塔娜莉亚
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉诺维亚|r 对话
    .train 3044 >>训练你的职业技能
    .target 汉诺维亚
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斗技者拉雷尼斯|r 对话
    .train 201 >>学习单手剑 << Rogue
    .train 202 >>学习双手剑 << Warrior
    .target 斗技者拉雷尼斯
    .money <0.11
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后金币足够购买 |T135321:0|t[步兵剑](5银9铜)，就一并出售;如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135321:0|t[步兵剑]|cRXP_BUY_从他那里|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target 盖隆
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (3银 82铜). 如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从他那里|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .target 盖隆
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Paladin/Rogue
    #optional
    #completewith Thaelis
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Thaelis
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>拾取地上的 |cRXP_PICK_不稳定的法力水晶箱|r
    >>击杀 |cRXP_ENEMY_奥术巡逻者|r。拾取他们的 |cRXP_LOOT_岩核|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob 奥术巡逻者
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>击杀 |cRXP_ENEMY_饥饿者泰里斯|r。拾取他的 |cRXP_LOOT_泰里斯的头颅|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob 饥饿者泰里斯
step
    #loop
    .goto Eversong Woods,47.22,37.39,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>拾取地上的 |cRXP_PICK_不稳定的法力水晶箱|r
    >>击杀 |cRXP_ENEMY_奥术巡逻者|r。拾取他们的 |cRXP_LOOT_岩核|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob 奥术巡逻者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师亚隆尼斯|r, |cRXP_FRIENDLY_坎雷中士|r, 和 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8472 >>交任务 失效的傀儡
    .accept 8895 >>接受任务 送往北部圣殿的信
    .target 魔导师亚隆尼斯
    .goto Eversong Woods,47.26,46.31
    .turnin 8468 >>交任务 通缉：饥饿者泰里斯
    .target 坎雷中士
    .goto Eversong Woods,47.77,46.58
    .turnin 8463 >>交任务 不稳定的法力水晶
    .accept 9352 >>接受任务 达纳苏斯的侵扰
    .target 艾尔杜·炙痕
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺尔蕾妮|r 对话
    .train 853 >>训练你的职业技能
    .target 诺尔蕾妮
	.xp <8,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔娜莉亚|r 对话
    .train 6760 >>训练你的职业技能
    .target 塔娜莉亚
	.xp <8,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉诺维亚|r 对话
    .train 5116 >>训练你的职业技能
    .target 汉诺维亚
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅店
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼
	.xp <8,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 5143 >>训练你的职业技能
    .target 加琳黛尔
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞罗努斯|r 对话
    .train 980 >>训练你的职业技能
    .target 塞罗努斯
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴丝特拉|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[魔典:火焰箭 (等级2)]|cRXP_BUY_从她那里|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target 元素师鲁艾普
	.xp <8,1
    .train 7799,1
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斗技者拉雷尼斯|r 对话
    .train 201 >>学习单手剑 << Rogue
    .train 202 >>学习双手剑 << Warrior
    .target 斗技者拉雷尼斯
    .money <0.11
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后金币足够购买 |T135321:0|t[步兵剑](5银9铜)，就一并出售;如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135321:0|t[步兵剑]|cRXP_BUY_从他那里|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target 盖隆
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (3s 82c). 如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从他那里|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target 盖隆
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Paladin/Rogue
    #optional
    #completewith Caidanis
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Caidanis
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith BuyFood1
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅店
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target 旅店老板德兰妮尔
step
    #label BuyFood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target 旅店老板德兰妮尔
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>前去找 |cRXP_FRIENDLY_凯丹尼斯|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯丹尼斯|r 对话
    .turnin 8895 >>交任务 送往北部圣殿的信
    .accept 9119 >>接受任务 西部圣殿的麻烦
    .target 魔网监护者凯丹尼斯
step
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔雷|r 对话
    .accept 9035 >>接受任务 打探匪情
    .target 学徒拉尔雷
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒梅雷多尔|r 对话
    .turnin 9035 >>交任务 打探匪情
    .accept 9062 >>接受任务 浸水的书页
    .target 学徒梅雷多尔
step
    #xprate <1.5
    .goto Eversong Woods,44.34,62.00
    >>拾取水下的 |cRXP_PICK_魔典|r
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒梅雷多尔|r 对话
    .turnin 9062 >>交任务 浸水的书页
    .accept 9064 >>接受任务 学徒的欺瞒
    .target 学徒梅雷多尔
step << BloodElf Priest
    #xprate <1.5
    #completewith next
    >>|cRXP_WARN_施放|r |T135987:0|t[真言术:韧]对 |cRXP_FRIENDLY_永歌游侠|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target 永歌游侠
    .isOnQuest 9489
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠杰拉|r 对话
    .accept 8475 >>接受任务 死亡之痕
    .target 游侠杰拉
step << BloodElf Priest
    .goto Eversong Woods,50.19,50.88,-1
    .goto Eversong Woods,50.24,50.96,-1
    .goto Eversong Woods,50.29,51.02,-1
    .goto Eversong Woods,50.34,51.04,-1
    .goto Eversong Woods,50.41,51.00,-1
    .goto Eversong Woods,50.46,50.91,-1
    >>|cRXP_WARN_施放|r |T135987:0|t[真言术:韧]对 |cRXP_FRIENDLY_永歌游侠|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target 永歌游侠
    .isOnQuest 9489
step
    #xprate <1.5
    #completewith next
    >>击杀 |cRXP_ENEMY_天灾骨骸|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob 天灾骨骸
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9064 >>交任务 学徒的欺瞒
    .accept 9066 >>接受任务 导师的训诫
    .target 指导者安瑟隆
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,50.82,56.49,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    >>击杀 |cRXP_ENEMY_天灾骨骸|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob 天灾骨骸
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠杰拉|r 对话
    .turnin 8475 >>交任务 死亡之痕
    .target 游侠杰拉
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|cRXP_WARN_使用|r |T135147:0|t[训诫棒]|cRXP_WARN_对|r|cRXP_FRIENDLY_拉尔雷|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target 学徒拉尔雷
    .use 22473
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|cRXP_WARN_使用|r |T135147:0|t[训诫棒]|cRXP_WARN_对|r|cRXP_FRIENDLY_梅雷多尔|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target 学徒梅雷多尔
    .use 22473
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_薇兰妮亚|r 对话
    .turnin 9119 >>交任务 西部圣殿的麻烦
    .accept 8486 >>接受任务 不稳定的奥术
    .target 魔网监护者薇兰妮亚
step
    #completewith next
    >>击杀 |cRXP_ENEMY_法力怨灵|r 和 |cRXP_ENEMY_法力漫步者|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob 法力怨灵
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob 法力漫步者
step
    #loop
    .goto Eversong Woods,36.77,60.99,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    >>击杀一名 |cRXP_ENEMY_达纳苏斯斥候|r。拾取他身上的 |T133464:0|t[|cRXP_LOOT_秘密文件|r]
    >>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_秘密文件|r] 来激发任务|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482,1 --Incriminating Documents (1)
    .accept 8482 >>接受任务 秘密文件
    .mob 达纳苏斯斥候
    .use 20765
step
    #loop
	.goto Eversong Woods,35.57,61.41,0
	.goto Eversong Woods,35.57,61.41,40,0
	.goto Eversong Woods,34.41,60.64,40,0
	.goto Eversong Woods,35.02,56.58,40,0
	.goto Eversong Woods,35.82,58.36,40,0
	.goto Eversong Woods,36.20,60.28,40,0
    >>击杀 |cRXP_ENEMY_法力怨灵|r 和 |cRXP_ENEMY_法力漫步者|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob 法力怨灵
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob 法力漫步者
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_薇兰妮亚|r 对话
    .turnin 8486 >>交任务 不稳定的奥术
    .turnin 9352 >>交任务 达纳苏斯的侵扰
    .target 魔网监护者薇兰妮亚
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈斯温里奥|r 对话
    .accept 8884 >>接受任务 鱼人……
    .target 哈斯温里奥
step
    #loop
    .goto Eversong Woods,26.45,58.14,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>击杀 |cRXP_ENEMY_暗鳞抢劫者|r 和 |cRXP_ENEMY_暗鳞先知|r. 拾取以获得 |cRXP_LOOT_徽记|r 和 |T134939:0|t[|cRXP_LOOT_凯莉森德拉船长的航海图|r]
    >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_凯莉森德拉船长的航海图|r] 来激发任务|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>接受任务 凯莉森德拉船长的航海图
    .mob 暗鳞抢劫者
    .mob 暗鳞先知
    .use 21776
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #loop
    .goto Eversong Woods,27.47,56.54,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    .xp 7+3195 >>刷怪达到3195+/4500经验
step << Warrior/Warlock/Hunter/Rogue
    #xprate >1.49
    #loop
    .goto Eversong Woods,27.47,56.54,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    .xp 7+2540 >> Grind to 2540+/4500xp
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈斯温里奥|r 对话
    .turnin 8884 >>交任务 鱼人……
    .accept 8885 >>接受任务 呜啦哇啦的戒指
    .target 哈斯温里奥
step << Paladin/Priest/Mage
    #softcore
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step << Warrior/Warlock/Hunter/Rogue
    #softcore
    #completewith next
    .goto Eversong Woods,35.50,55.70,30 >>朝西部圣殿正北方向跑去
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #softcore
    .goto Eversong Woods,35.50,55.70
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    >>|cRXP_WARN_Make sure your subzone is Eversong Woods and NOT West Sanctum|r
    .target 灵魂医者
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #completewith next
    .goto Eversong Woods,46.70,49.09,20,0
    .goto Eversong Woods,46.69,48.02,20 >>前去找 |cRXP_FRIENDLY_艾尔杜·炙痕|r
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8482 >>交任务 秘密文件
    .accept 8483 >>接受任务 矮人间谍
    .target 艾尔杜·炙痕
step << Warrior/Warlock/Hunter/Rogue
    #xprate >1.49
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8482 >>交任务 秘密文件
    .target 艾尔杜·炙痕
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斗技者拉雷尼斯|r 对话
    .train 201 >>学习单手剑 << Rogue
    .train 202 >>学习双手剑 << Warrior
    .target 斗技者拉雷尼斯
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔娜莉亚|r 对话
    .train 6760 >>训练你的职业技能
    .target 塔娜莉亚
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉诺维亚|r 对话
    .train 5116 >>训练你的职业技能
    .target 汉诺维亚
step << Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅店
step << Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞罗努斯|r 对话
    .train 980 >>训练你的职业技能
    .target 塞罗努斯
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴丝特拉|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[魔典:火焰箭 (等级2)]|cRXP_BUY_从她那里|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target 小萨鲁法尔
    .train 7799,1
step << Undead Warrior/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。如果卖掉当前武器后金币足够购买 |T135321:0|t[步兵剑](5银9铜)，就一并出售;如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Undead Warrior/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135321:0|t[步兵剑]|cRXP_BUY_从他那里|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target 盖隆
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    .vendor >>卖掉灰色垃圾物品。卖掉当前武器后金币如果足够，购买|T135641:0|t[卷刃的剑] (3银 82铜). 如果钱还不够，稍后再回来购买
    .target 盖隆
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盖隆|r 对话 对话
    >>|cRXP_BUY_购买1把|r |T135641:0|t[卷刃的剑]|cRXP_BUY_从他那里|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target 盖隆
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Rogue
    #optional
    #completewith Situation
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Situation
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>与 |cRXP_FRIENDLY_勘测员安威瓦尔德|r 对话 对话
    .timer 28,勘测员安威瓦尔德 剧情
    .target 勘测员安威瓦尔德
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #label Anvilward
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_等待剧情演出完成|r
    >>击杀 |cRXP_ENEMY_勘测员安威瓦尔德|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob 勘测员安威瓦尔德
step << Warrior
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8483 >>交任务 矮人间谍
    .target 艾尔杜·炙痕
step << Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8483 >>交任务 矮人间谍
    .target 艾尔杜·炙痕
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>对 |cRXP_FRIENDLY_拉尔雷|r 使用 |T135147:0|t[训诫棒]
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target 学徒拉尔雷
    .use 22473
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>对 |cRXP_FRIENDLY_梅雷多尔|r 使用 |T135147:0|t[训诫棒]
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target 学徒梅雷多尔
    .use 22473
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>上楼
step
    #label Situation
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴戈利恩|r 对话
    .accept 8892 >>接受任务 阳帆港
    .target 游侠戴戈利恩
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尼尔|r 和 |cRXP_FRIENDLY_阿尔德恩·河风|r 对话
    .accept 9358 >>接受任务 游侠萨蕾恩
    .target 玛尼尔·琥珀之光
    .goto Eversong Woods,43.67,71.31
    .accept 9258 >>接受任务 焦痕谷
    .target 阿尔德恩·河风
    .goto Eversong Woods,43.58,71.20
step
    #xprate >1.49
    .goto Eversong Woods,43.67,71.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel|r
    .accept 9358 >>接受任务 游侠萨蕾恩
    .target Marniel Amberlight
step
    #completewith next
    .goto Eversong Woods,44.04,70.35,0
    >>|cRXP_BUY_购买|r |T133634:0|t[棕色小包] |cRXP_BUY_从|r |cRXP_FRIENDLY_哈里斯|r |cRXP_BUY_那里（如果你需要背包）|r
    .vendor >>把垃圾物品卖给商人
    .target 哈里斯·晨行者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兰|r 和 |cRXP_FRIENDLY_兰德拉|r 对话
    .accept 8491 >>接受任务 收集豹皮
    .target 维兰·布雷托克
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >>接受任务 萨瑟利尔庄园
    .accept 9254 >>接受任务 外出的学徒
    .target 魔导师兰德拉·晨行者
    .goto Eversong Woods,44.03,70.76
step
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .isOnQuest 8491
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨瑟利尔|r 对话
    .turnin 9395 >>交任务 萨瑟利尔庄园
    .accept 9067 >>接受任务 无尽的宴会
    .target 萨瑟利尔男爵
step
    #xprate >1.49
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨瑟利尔|r 对话
    .turnin 9395 >>交任务 萨瑟利尔庄园
    .target 萨瑟利尔男爵
step
    #label Sunsail
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莉森德拉|r 和 |cRXP_FRIENDLY_维雷迪斯|r 对话
    .turnin 8887 >>交任务 凯莉森德拉船长的航海图
    .accept 8886 >>接受任务 暗鳞强盗！
    .target 凯莉森德拉船长
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>接受任务 失落的军备
    .target 维雷迪斯·雪晨
    .goto Eversong Woods,36.36,66.78
step
    #completewith Aldaron
    >>击杀 |cRXP_ENEMY_失心者暴徒|r 和 |cRXP_ENEMY_失心者无赖|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob 失心者暴徒
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob 失心者无赖
step
    #loop
    .goto Eversong Woods,34.66,68.00,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    >>在 |cRXP_PICK_堕落者|r附近以及建筑物内，拾取地上的 |cRXP_ENEMY_军备箱|r
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维雷迪斯|r 对话
    .turnin 8480 >>交任务 失落的军备
    .accept 9076 >>接受任务 失心者的领袖
    .target 维雷迪斯·雪晨
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>爬到建筑物的顶部
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>击杀顶部的 |cRXP_ENEMY_鲁莽的奥尔达隆|r. 拾取他的|cRXP_LOOT_头部|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob 鲁莽的奥尔达隆
step
    .goto Eversong Woods,31.40,70.90,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    >>击杀 |cRXP_ENEMY_失心者暴徒|r 和 |cRXP_ENEMY_失心者无赖|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob 失心者暴徒
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob 失心者无赖
step
    #completewith next
    .goto Eversong Woods,29.53,72.32,40,0
    .goto Eversong Woods,27.73,71.83,40,0
    .goto Eversong Woods,26.53,74.16,40,0
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .isOnQuest 8491
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>击杀 |cRXP_ENEMY_暗鳞鱼人|r 和 |cRXP_ENEMY_暗鳞先知|r。拾取他们的 |cRXP_LOOT_货物|r
    >>拾取地上的 |cRXP_PICK_货物桶|r
    >>|cRXP_WARN_使用 |r|T136222:0|t[奥术洪流]|cRXP_WARN_ 打断 |r暗鳞先知|cRXP_ENEMY_ 的 |T135907:0|t[闪现治疗]|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob 暗鳞鱼人
    .mob 暗鳞先知
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66,40,0
    >>击杀 |cRXP_ENEMY_呜啦哇啦|r。拾取他的 |cRXP_LOOT_呜啦哇啦之戒|r
    >>|cRXP_WARN_他会在附近稍微巡逻|r
    >>|cRXP_WARN_使用 |r|T136222:0|t[奥术洪流]|cRXP_WARN_ 打断 |r呜啦哇啦l|cRXP_ENEMY_ 的 |T136052:0|t[治疗波]|r << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan 呜啦哇啦
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66,50,0
    >>击杀 |cRXP_ENEMY_暗鳞鱼人|r 和 |cRXP_ENEMY_暗鳞先知|r。拾取他们的 |cRXP_LOOT_货物|r
    >>拾取地上的 |cRXP_PICK_货物桶|r
    >>|cRXP_WARN_使用 |r|T136222:0|t[奥术洪流]|cRXP_WARN_ 打断 |r暗鳞先知|cRXP_ENEMY_ 的 |T135907:0|t[闪现治疗]|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob 暗鳞鱼人
    .mob 暗鳞先知
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈斯温里奥|r 对话
    .turnin 8885 >>交任务 呜啦哇啦的戒指
    .target 哈斯温里奥
step
    #completewith next
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .isOnQuest 8491
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莉森德拉|r 和 |cRXP_FRIENDLY_维雷迪斯|r 对话
    .turnin 8886 >>交任务 暗鳞强盗！
    .target 凯莉森德拉船长
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>交任务 失心者的领袖
    .target 维雷迪斯·雪晨
    .goto Eversong Woods,36.36,66.78
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里斯·晨行者|r 对话
    >>|cRXP_BUY_向他购买|r |T132382:0|t[劣质箭]|cRXP_BUY_ 和 |r|T132382:0|t[锋利的箭]|cRXP_BUY_。|r|cRXP_BUY_可购买|r |T133634:0|t[小棕色袋子]|cRXP_BUY_从她那里|r|cRXP_BUY_。如你需要背包|r
    .collect 2512,200,9252,1 << Hunter --Rough Arrow (200)
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target 哈里斯·晨行者
    .itemcount 2512,<200
	.xp >10,1
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里斯·晨行者|r 对话
    >>|cRXP_BUY_向她购买|r|T132382:0|t[锋利的箭]|cRXP_BUY_。|r|cRXP_BUY_可购买|r |T133634:0|t[小棕色袋子]|cRXP_BUY_从她那里|r|cRXP_BUY_。如你需要背包|r
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target 哈里斯·晨行者
step << !Hunter
    #completewith Sareyn
    .goto Eversong Woods,44.04,70.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里斯·晨行者|r 对话
    >>|cRXP_BUY_需要的话可以从他那里|r|cRXP_BUY_购买几个|r |T133634:0|t[棕色小包]
    .vendor >>把垃圾物品卖给商人
    .target 哈里斯·晨行者
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>上楼
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴戈利恩|r 对话
    .turnin 8892 >>交任务 阳帆港
    .accept 9359 >>接受任务 远行者居所
    .target 游侠戴戈利恩
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兰|r 对话
    .turnin 8491 >>交任务 收集豹皮
    .target 维兰·布雷托克
    .isQuestComplete 8491
step
    #label Sareyn
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨蕾恩|r 对话
    .turnin 9358 >>交任务 游侠萨蕾恩
    .accept 9252 >>接受任务 保卫晴风村
    .target 游侠萨蕾恩
step
    #completewith Notes
    >>击杀 |cRXP_ENEMY_腐肢劫掠者|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_腐肢劫掠者|r|cRXP_WARN_，它们会施放 |r|T136128:0|t[疾病之触]|cRXP_WARN_(瞬发法术，造成15点伤害)|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob 腐肢劫掠者
step
    #loop
    .goto Eversong Woods,50.89,80.74,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>击杀 |cRXP_ENEMY_黑暗怨灵|r
    >>|cRXP_WARN_小心，|r |cRXP_ENEMY_黑暗怨灵|r |cRXP_WARN_在低生命值时会施放 |r|T136224:0|t[激怒]|cRXP_WARN_(增加伤害和攻击速度)|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob 黑暗怨灵
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒米尔维达|r 对话
    .turnin 9254 >>交任务 外出的学徒
    .accept 8487 >>接受任务 被腐蚀的土地
    .target 学徒米尔维达
step
    #loop
    .goto Eversong Woods,54.13,71.21,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>拾取地上的 |cRXP_PICK_受污染的土堆|r
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒米尔维达|r 对话
    >>|cRXP_WARN_等待剧情演出完成|r
    .turnin 8487 >>交任务 被腐蚀的土地
    .timer 9,被腐蚀的土地 剧情
    .accept 8488 >>接受任务 出人意料的结果
    .target 学徒米尔维达
step
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>击杀 |cRXP_ENEMY_冷酷的加苏尔|r 与 |cRXP_ENEMY_愤怒之影|r 以保护 |cRXP_FRIENDLY_米尔维达|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob 冷酷的加苏尔
    .mob 愤怒之影
step
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒米尔维达|r 对话
    .turnin 8488 >>交任务 出人意料的结果
    .accept 9255 >>接受任务 研究笔记
    .target 学徒米尔维达
step
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>击杀 |cRXP_ENEMY_腐肢劫掠者|r
    >>|cRXP_WARN_小心 |r|cRXP_ENEMY_腐肢劫掠者|r|cRXP_WARN_，它们会施放 |r|T136128:0|t[疾病之触]|cRXP_WARN_(瞬发法术，造成15点伤害)|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob 腐肢劫掠者
step << !Warrior !Warlock/BloodElf
    #xprate <1.5
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5875 >>刷怪达到5875+/6500经验
step << !Warrior !Warlock/BloodElf
    #xprate >1.49
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5560 >> Grind to 5560+/6500xp
step << Warrior/Undead Warlock/Orc Warlock
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 10 >>刷怪练级到 10 级
step << Warrior
    #completewith WarriorClassQ
    .hs >>炉石返回布瑞尔，提瑞斯法林地
    .bindlocation 2119,1
    .zoneskip Tirisfal Glades
step << Warrior
    #optional
    .abandon 1505 >>放弃任务 老兵犹塞克
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>放弃任务 防御之道
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .trainer >>训练你的职业技能
    .accept 1818 >>接受任务《物归己用》 迪林格尔
    .target 奥斯蒂尔·德·蒙
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>交任务《 前往熔光镇》 迪林格尔
    .accept 1819 >>接受任务《物归己用》 切割者奥拉格
    .target 亡灵卫兵迪林格尔
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的骷髅头。这将召唤出|r |cRXP_ENEMY_尤拉格。|r |cRXP_WARN_击杀他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob 切割者奥拉格
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>交任务《 前往熔光镇》 切割者奥拉格
    .accept 1820 >>接受任务《物归己用》 库勒曼
    .target 亡灵卫兵迪林格尔
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒曼|r 对话
    .turnin 1820 >>交任务《 前往熔光镇》 库勒曼
    .target 库勒曼·法席恩
    .isOnQuest 1820
step << Warrior
    #completewith ExitUC
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与贸易区的 |cRXP_FRIENDLY_刘易斯·瓦伦|r 对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    .collect 1198,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target 刘易斯·瓦伦
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与贸易区的 |cRXP_FRIENDLY_刘易斯·瓦伦|r 对话
    >>|cRXP_BUY_Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r
    .collect 1196,1 --Collect Tabar (1)
    .money <0.2103
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target 刘易斯·瓦伦
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ExitUC
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 202,3
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ExitFalcon
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    >>|cRXP_WARN_You will train the Two handed Swords skill soon in Falconwing Square|r
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 202,1
step << Orc Warrior
    #optional
    #completewith ExitUC
    +|cRXP_WARN_装备|r |T132395:0|t[大板斧]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Undead Warlock
    #completewith VoidWalkerComplete
    .hs >>炉石回到幽暗城
    .bindlocation 1497,1
    .zoneskip Undercity
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯伦丁|r 对话
    .accept 1473 >>接受任务 虚空中的生物
    .target 凯伦丁·哈加尔
step << Undead Warlock
    #optional
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 707 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_理查德|r 对话
    .train 705 >>训练你的职业技能
    .target 理查德·科尔文
    .xp <12,1
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >>离开幽暗城
    .isOnQuest 1473
step << Undead Warlock
    .goto Tirisfal Glades,51.44,67.69,15,0
    .goto Tirisfal Glades,51.06,67.57
    >>拾取地上的 |cRXP_PICK_虚空生物宝箱|r
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    #completewith next
    .goto Undercity,66.16,1.05,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>乘电梯下去到幽暗城
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>前去找 |cRXP_FRIENDLY_凯伦丁|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯伦丁|r 对话
    .turnin 1473 >>交任务 虚空中的生物
    .accept 1471 >>接受任务 誓缚
    .target 凯伦丁·哈加尔
step << Undead Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_在召唤法阵使用|r |T134416:0|t[召唤符文] |cRXP_WARN_|r
    .use 6284
step << Undead Warlock
    .goto Undercity,86.64,27.10
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_虚空行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob 虚空行者
    .use 6284
step << Undead Warlock
    #label VoidWalkerComplete
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯伦丁|r 对话
    .turnin 1471 >>交任务 誓缚
    .target 凯伦丁·哈加尔
step << Warrior/Undead Warlock
    #label ExitUC
    #completewith ExitSVM
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
step << Warrior/Undead Warlock
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日灼|r对话
    >>|cRXP_BUY_从他那里购买一瓶|r |T132798:0|t[日光陈酿] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target 调酒师日灼
    .isOnQuest 9067
step << Warrior/Undead Warlock
    #label ExitSVM
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>离开 银月城
step << Warrior/Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9066 >>交任务 导师的训诫
    .target 指导者安瑟隆
step << !Warrior !Warlock !Hunter
    #completewith ExitFalcon
    .hs >>炉石返回鹰翼广场，永歌森林
    .bindlocation 3665,1
    .subzoneskip 3665
step << BloodElf Warlock/BloodElf Hunter
    #completewith ExitFalcon
    .hs >>炉石返回鹰翼广场，永歌森林
    .bindlocation 3665,1
    .subzoneskip 3665
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target 旅店老板德兰妮尔
    .subzoneskip 3665,1
step
    #label Buyfood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板德兰妮尔|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里r|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_从她那里|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target 旅店老板德兰妮尔
    .subzoneskip 3665,1
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8482 >>交任务 秘密文件
    .accept 8483 >>接受任务 矮人间谍
    .target 艾尔杜·炙痕
step << Paladin/Priest/Mage
    #xprate >1.49
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8482 >>交任务 秘密文件
    .target 艾尔杜·炙痕
step << Paladin/Priest/Mage
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>与 |cRXP_FRIENDLY_勘测员安威瓦尔德|r 对话 对话
    .timer 28,勘测员安威瓦尔德 剧情
    .target 勘测员安威瓦尔德
    .skipgossip 15420,1
    .isOnQuest 8483
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_等待剧情演出完成|r
    >>击杀 |cRXP_ENEMY_勘测员安威瓦尔德|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob 勘测员安威瓦尔德
step
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔杜·炙痕|r 对话
    .turnin 8483 >>交任务 矮人间谍
    .target 艾尔杜·炙痕
step
    #optional
    .goto Eversong Woods,45.02,37.68
    .xp 10 >>刷怪练级到 10 级
step << Paladin
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺尔蕾妮|r 对话
    .train 633 >>训练你的职业技能
    .target 诺尔蕾妮
	.xp <10,1
    .xp >12,1
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺尔蕾妮|r 对话
    .accept 9677 >>接受任务 骑士领主布拉德瓦罗的召唤
    .train 19834 >>训练你的职业技能
    .target 诺尔蕾妮
	.xp <12,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔娜莉亚|r 对话
    .train 2983 >>训练你的职业技能
    .target 塔娜莉亚
	.xp <10,1
step << Hunter
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉诺维亚|r 对话
    .train 13165 >>训练你的职业技能
    .target 汉诺维亚
	.xp <10,1
	.xp >12,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉诺维亚|r 对话
    .train 14281 >>训练你的职业技能
    .target 汉诺维亚
	.xp <12,1
step << Mage/Priest/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅店
	.xp <10,1
step << Mage/Priest/Warlock
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼
	.xp <10,1
step << Priest
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珀纳瑞斯|r 对话
    .turnin 9489 >>清理死亡之痕 << BloodElf
    .train 8092 >>训练你的职业技能
    .target 珀纳瑞斯
	.xp <10,1
    .xp >12,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珀纳瑞斯|r 对话
    .turnin 9489 >>清理死亡之痕 << BloodElf
    .train 592 >>训练你的职业技能
    .target 珀纳瑞斯
	.xp <12,1
step << Mage
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 7300 >>训练你的职业技能
    .target 加琳黛尔
	.xp <10,1
    .xp >12,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 145 >>训练你的职业技能
    .target 加琳黛尔
	.xp <12,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞罗努斯|r 对话
    .train 707 >>训练你的职业技能
    .target 塞罗努斯
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    #label MaPrWaTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞罗努斯|r 对话
    .train 705 >>训练你的职业技能
    .target 塞罗努斯
    .xp <12,1
step
    #label ExitFalcon
    #completewith Antheol2
    .goto Eversong Woods,46.65,49.13,40 >>离开鹰翼广场
    .subzoneskip 3665,1
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .isQuestAvailable 9529
step << BloodElf Warlock
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅店
step << BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日灼|r对话
    >>|cRXP_BUY_从他那里购买一瓶|r |T132798:0|t[日光陈酿] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target 调酒师日灼
    .isOnQuest 9067
step << BloodElf Warlock
    #completewith TheStone
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
    .isQuestAvailable 9529
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .accept 9529 >>接受任务 虚空石
    .train 707 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .accept 9529 >>接受任务 虚空石
    .train 705 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <12,1
step << BloodElf Warlock
    #label TheStone
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .accept 9529 >>接受任务 虚空石
    .target 塔莱尼娅
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Eversong Woods,56.66,50.11
    .zone Eversong Woods >>离开 银月城
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9066 >>交任务 导师的训诫
    .accept 9402 >>接受任务 捞瓶子 << Mage
    .target 指导者安瑟隆
step << Mage
    .goto Eversong Woods,54.87,56.37
    >>在水下拾取 |cRXP_PICK_蔚蓝瓶|r
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9402 >>交任务 捞瓶子
    .accept 9403 >>接受任务 最纯净的水
    .target 指导者安瑟隆
step
    #optional
    #label Antheol2

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#defaultfor !Shaman
#name 10-12 永歌森林
#displayname 11-13 Eversong Woods << Orc !Hunter !Warlock/Troll !Hunter
#version 7
#subgroup RestedXP 部落 1-30级
#next 12-16 幽魂之地

step << Orc Hunter/Troll Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>前去找 |cRXP_FRIENDLY_伊蕾达|r
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊蕾达|r 对话
    .train 202 >>学习双手剑
    .target 伊蕾达
    .money <0.1000
step << Orc Hunter/Troll Hunter/Orc Warlock/Tauren
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,75.63,58.34,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,73.22,59.91,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>离开 银月城
step << Orc Hunter/Troll Hunter/Orc Warlock/Tauren
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .fp Silvermoon >>获取银月城的飞行路径
    .target 葛拉米
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .accept 9402 >>接受任务 捞瓶子
    .target 指导者安瑟隆
step << Troll Mage
    .goto Eversong Woods,54.87,56.37
    >>在水下拾取 |cRXP_PICK_蔚蓝瓶|r
    .complete 9402,1 --Azure Phial (1)
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9402 >>交任务 捞瓶子
    .accept 9403 >>接受任务 最纯净的水
    .target 指导者安瑟隆
step
    #completewith Farstrider1
    .subzone 3464 >>前往远行者营地
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step
    #xprate <1.5
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨蕾妮|r 对话
    >>|cRXP_BUY_购买|r |T133974:0|t[魔泉美味]|cRXP_BUY_从她那里|r
    .collect 22776,1,9067,1 --Collect Springpaw Appetizers
    .target 萨蕾妮·晨光
    .isOnQuest 9067
step << Mage/Priest/Warlock
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨蕾妮|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从她那里|r
    .collect 1179,20,8476,1 --Ice Cold Milk (20)
    .target 萨蕾妮·晨光
step
    #optional
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 9359 >>交任务 远行者居所 << !Tauren !Hunter/BloodElf
    .accept 8476 >>接受任务 阿曼尼的进犯
    .accept 9484 >>接受任务 驯服野兽 << BloodElf Hunter
    .target 达恩·晨行者中尉
    .isOnQuest 9359
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .accept 8476 >>接受任务 阿曼尼的进犯
    .accept 9484 >>接受任务 驯服野兽 << BloodElf Hunter
    .target 达恩·晨行者中尉
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派尔拉林|r 对话
    >>|cRXP_BUY_购买1把|r |T135489:0|t[多层弯弓] |cRXP_BUY_和|r |T132382:0|t[锋利的箭] |cRXP_BUY_从他那里|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .collect 2515,2000,9144,1 --Sharp Arrow (2000)
    .target 派尔拉林
    .money <0.2252 << Orc/Troll
    .money <0.2144 << BloodElf
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派尔拉林|r 对话
    >>|cRXP_BUY_从他处|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target 派尔拉林
    .money <0.0500 << Orc/Troll
    .money <0.0480 << BloodElf
step << Hunter !Troll
    #optional
    #completewith Otembe
    +|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #label Farstrider1
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉瑟尔|r 对话
    .train 2018 >>学习 |T136241:0|t[锻造]。稍后你将学习 |T136248:0|t[采矿]，这将允许你制作 |T135248:0|t[磨刀石](增加武器伤害 +2，持续 1 小时) << Paladin/BloodElf Rogue/Undead Rogue
    >>|cRXP_WARN_你可以跳过学习|r |T136241:0|t[锻造] |cRXP_WARN_如果愿意|r << Paladin/BloodElf Rogue/Undead Rogue
    .accept 8477 >>接受任务 制矛师之锤
    .target 阿拉瑟尔
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,60.48,58.86,0
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86,40,0
    >>在最大射程内使用 |T132164:0|t[驯服棒] 对 |cRXP_ENEMY_疯狂龙鹰|r进行驯服
    >>|cRXP_WARN_不要击杀任何|r |cRXP_ENEMY_老魔泉豹|r
    .complete 9484,1 --Tame a Crazed Dragonhawk
    .mob 疯狂的龙鹰
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 9484 >>交任务 驯服野兽
    .accept 9486 >>接受任务 驯服野兽
    .target 达恩·晨行者中尉
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>在最大射程内使用|T132164:0|t[驯服棒]对|cRXP_ENEMY_老魔泉豹|r进行驯服
    .complete 9486,1 --Tame an Elder Springpaw
    .mob 老魔泉豹
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 9486 >>交任务 驯服野兽
    .accept 9485 >>接受任务 驯服野兽
    .target 达恩·晨行者中尉
step
    #optional
    #completewith Otembe
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step << Mage
    .goto Eversong Woods,64.16,72.62
    >>|cRXP_WARN_在瀑布下使用|r |T134776:0|t[碧蓝瓶] |cRXP_WARN_|r
    .complete 9403,1 --Filled Azure Phial (1)
    .use 23566
step
    #completewith Marosh
    >>击杀 |cRXP_ENEMY_阿曼尼狂战士|r 和 |cRXP_ENEMY_阿曼尼掷斧者|r
    >>|cRXP_WARN_小心，|r |cRXP_ENEMY_阿曼尼狂战士|r|cRXP_WARN_ 在低生命值时会施放|r |T136224:0|t[激怒]|cRXP_WARN_(增加伤害和攻击速度)|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob 阿曼尼狂战士
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob 阿曼尼掷斧者
    .isOnQuest 8476
step
    #label Otembe
    .goto Eversong Woods,70.10,72.28
    >>击杀 |cRXP_ENEMY_制矛师奥特姆比|r。拾取他的 |cRXP_LOOT_铁锤|r
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob 制矛师奥特姆比
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与囚笼里的 |cRXP_FRIENDLY_文亚什|r 对话
    .accept 8479 >>接受任务 祖玛洛什
    .target 文亚什
step
    #completewith next
    .goto Eversong Woods,62.57,79.72,15,0
    .goto Eversong Woods,62.25,80.08,8,0
    .goto Eversong Woods,61.83,79.89,8,0
    .goto Eversong Woods,61.90,79.63,8 >>沿小屋向上攀爬，前往|cRXP_ENEMY_祖玛洛什|r所在位置
step
    .goto Eversong Woods,62.51,79.68
    >>击杀 |cRXP_ENEMY_祖玛洛什酋长|r。拾取他的 |cRXP_LOOT_头颅|r 以及 |T134946:0|t[|cRXP_LOOT_阿曼尼入侵计划|r]
    >>|cRXP_WARN_使用 |T134946:0|t[|cRXP_LOOT_阿曼尼入侵计划|r] 来开始该任务|r
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360 --Collect Amani Invasion Plans (x1)
    .accept 9360 >>接受任务 阿曼尼的入侵
    .mob 祖玛洛什酋长
    .use 23249
step
    #label Marosh
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与囚笼里的 |cRXP_FRIENDLY_文亚什|r 对话
    .turnin 8479 >>交任务 祖玛洛什
    .target 文亚什
step
    #loop
    .goto Eversong Woods,70.90,71.63,0
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15,40,0
    .goto Eversong Woods,69.23,74.08,40,0
    .goto Eversong Woods,69.39,76.51,40,0
    .goto Eversong Woods,71.65,76.95,40,0
    .goto Eversong Woods,71.45,78.94,40,0
    .goto Eversong Woods,70.49,81.45,40,0
    .goto Eversong Woods,70.43,82.60,40,0
    .goto Eversong Woods,68.82,83.40,40,0
    .goto Eversong Woods,68.89,80.37,40,0
    >>击杀 |cRXP_ENEMY_阿曼尼狂战士|r 和 |cRXP_ENEMY_阿曼尼掷斧者|r
    >>|cRXP_WARN_小心，|r |cRXP_ENEMY_阿曼尼狂战士|r|cRXP_WARN_ 在低生命值时会施放|r |T136224:0|t[激怒]|cRXP_WARN_(增加伤害和攻击速度)|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob 阿曼尼狂战士
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob 阿曼尼掷斧者
    .isOnQuest 8476
step
    #softcore
    #completewith AmaniTurnins
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #hardcore
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step
    #label AmaniTurnins
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 8476 >>交任务 阿曼尼的进犯
    .turnin 9360 >>交任务 阿曼尼的入侵
    .accept 9363 >>接受任务 警告晴风村
    .target 达恩·晨行者中尉
step << BloodElf Hunter
    #completewith next
    .zone Ghostlands >>前往幽魂之地
step << BloodElf Hunter
    #loop
    .goto Ghostlands,49.07,16.77,0
    .goto Ghostlands,55.08,12.75,90,0
    .goto Ghostlands,49.07,16.77,90,0
    .goto Ghostlands,44.65,19.14,90,0
    .goto Ghostlands,35.40,21.13,90,0
    .goto Ghostlands,31.32,26.22,90,0
    .goto Ghostlands,25.64,30.23,90,0
    >>在最大射程内使用 |T132164:0|t[驯服棒] 对 |cRXP_ENEMY_雾翼蝠|r进行驯服
    .complete 9485,1 --Tame a Mistbat
    .mob 迷雾蝠
    .use 23703
step << BloodElf Hunter
    #completewith FlySMC
    .subzone 3488 >>前往塔奎林
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .accept 9327 >>接受任务 被遗忘者
    .target 奥术师范迪瑞尔
step << BloodElf Hunter
    .goto Ghostlands,44.78,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔伦|r 对话
    .turnin 9327 >>交任务 被遗忘者
    .accept 9758 >>接受任务 返回奥术师范迪瑞尔身边
    .target 高级执行官玛尔伦
step << BloodElf Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米尔|r 对话
    .accept 9130 >>接受任务 银月城的货物
    .target 军需官雷米尔
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9758 >>交任务 返回奥术师范迪瑞尔身边
    .accept 9138 >>接受任务 日冕村
    .target 奥术师范迪瑞尔
step << BloodElf Hunter
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .turnin 9130 >>交任务 银月城的货物
    .accept 9133 >>接受任务 飞往银月城
    .target 飞行管理员加尼斯·日翼
step << BloodElf Hunter
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathis|r
    .accept 9152 >>接受任务 托博尔的补给品
    .target 拉提斯·托博尔
step << BloodElf Hunter
    #label FlySMC
    #completewith FairBreezeHunter1
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon City >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .zoneskip Silvermoon City
step << BloodElf Hunter
    #completewith AmaniTurnins
    .subzone 3464 >>前往远行者营地
step << BloodElf Hunter
    #optional
    #completewith AmaniTurnins
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step << BloodElf Hunter
    #label AmaniTurnins
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 8476 >>交任务 阿曼尼的进犯
    .turnin 9360 >>交任务 阿曼尼的入侵
    .accept 9363 >>接受任务 警告晴风村
    .turnin 9485 >>交任务 驯服野兽
    .accept 9673 >>接受任务 训练野兽
    .target 达恩·晨行者中尉
step
    #xprate <1.5
    #optional
    #completewith MagiApp
    +|cRXP_WARN_记得不要出售你的|r |T133974:0|t[魔泉美味] |cRXP_WARN_和|r |T132798:0|t[日光陈酿]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,1
step
    #xprate <1.5
    #optional
    #completewith MagiApp
    +|cRXP_WARN_记得不要出售你的|r |T133974:0|t[魔泉美味]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,<1
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派尔拉林|r 对话
    >>|cRXP_BUY_购买1把|r |T135489:0|t[多层弯弓] |cRXP_BUY_从|r |cRXP_FRIENDLY_派尔拉林|r这里
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target 派尔拉林
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉瑟尔|r 对话
    .turnin 8477 >>交任务 制矛师之锤
    .target 阿拉瑟尔
step << Rogue
    #optional
    +|cRXP_WARN_装备|r |T135274:0|t[游侠的折刀]
    .use 22963
    .itemcount 22963,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.3
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >>沿坡道向上前往 |cRXP_FRIENDLY_达斯维瑟|r
step
    #label MagiApp
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达斯维瑟|r 对话
    .accept 8888 >>接受任务 魔导师的学徒
    .target 魔导师达斯维瑟
step
    #optional
    #completewith Wylliethen1
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒罗拉塔莉丝|r 对话
    .turnin 8888 >>交任务 魔导师的学徒
    .accept 8889 >>接受任务 关闭高塔
    .accept 9394 >>接受任务 维林森去哪了？
    .target 学徒罗拉塔莉丝
step
    #label Wylliethen1
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维林森|r 对话
    .turnin 9394 >>交任务 维林森去哪了？
    .accept 8894 >>接受任务 清理广场
    .target 看守者维林森
step
    #completewith DeactivationComplete
    >>击杀 |cRXP_ENEMY_法力蛇|r 和 |cRXP_ENEMY_以太魔|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob 法力蛇
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob 以太魔
step
    #completewith next
    .goto Eversong Woods,68.95,51.95
    .cast 26566 >>点击楼梯顶上的 |cRXP_PICK_传送宝珠|r
step
    .goto Eversong Woods,68.24,51.56,15,0
    .goto Eversong Woods,68.57,51.61,15,0
    .goto Eversong Woods,68.96,51.95
    >>点击|cRXP_PICK_绿色能量水晶|r
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    #completewith next
    .goto Eversong Woods,69.16,52.01,8,0
    .goto Eversong Woods,69.09,51.74,8,0
    .goto Eversong Woods,68.93,51.69,8 >>上楼
step
    #sticky
    #label Journalt
    .goto Eversong Woods,69.24,52.11,0,0
    >>点击桌子上的|cRXP_PICK_日志|r
    .accept 8891 >>接受任务 被放弃的研究
step
    >>点击|cRXP_PICK_绿色能量水晶|r
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.80,52.00,8,0
    .goto Eversong Woods,68.96,51.94
step
    #requires Journalt
    #completewith next
    .goto Eversong Woods,69.57,52.12,12,0
    .goto Eversong Woods,69.82,52.50,12,0
    .goto Eversong Woods,69.76,52.98,12,0
    .goto Eversong Woods,69.64,53.35,15 >>上楼
step
    #requires Journalt
    .goto Eversong Woods,69.64,53.35
    >>点击|cRXP_PICK_绿色能量水晶|r
    >>|cRXP_WARN_暂时不要点击 |cRXP_PICK_传送法球|r|r
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    #label DeactivationComplete
    .goto Eversong Woods,69.61,53.47
    .cast 26572 >>点击 |cRXP_PICK_传送法球|r传送回下方
    .isOnQuest 8889
step
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    >>击杀 |cRXP_ENEMY_法力蛇|r 和 |cRXP_ENEMY_以太魔|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob 法力蛇
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob 以太魔
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维林森|r 对话
    .turnin 8894 >>交任务 清理广场
    .target 看守者维林森
step << Mage
    #xprate <1.5
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+5535 >> Grind to 5535+/8700xp
    .isQuestComplete 9403
step << !BloodElf/!Warlock
    #xprate <1.5
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+6375 >>刷怪达到6375+/8700经验
    .isQuestNotComplete 9403 << Mage
step << Mage
    #xprate >1.49
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+3960 >> Grind to 3960+/8700xp
    .isQuestComplete 9403
step << !BloodElf/!Warlock
    #xprate >1.49
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+5110 >> Grind to 5110+/8700xp
    .isQuestNotComplete 9403 << Mage
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒罗拉塔莉丝|r 对话
    .turnin 8889 >>交任务 关闭高塔
    .accept 8890 >>接受任务 塔中的消息
    .target 学徒罗拉塔莉丝
step
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,66.28,57.66,40,0
    .goto Eversong Woods,64.60,61.15,40,0
    .goto Eversong Woods,63.72,64.26,40,0
    .goto Eversong Woods,62.22,65.24,40,0
    .goto Eversong Woods,60.20,65.87,40,0
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r 和 |cRXP_ENEMY_老魔泉豹|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob 魔泉捕猎者
    .mob 老魔泉豹
    .isOnQuest 8491
step
    #xprate <1.5
    #optional
    #completewith Spire
    +|cRXP_WARN_记得不要出售你的|r |T133974:0|t[魔泉美味] |cRXP_WARN_和|r |T132798:0|t[日光陈酿]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,1
step
    #xprate <1.5
    #optional
    #completewith Spire
    +|cRXP_WARN_记得不要出售你的|r |T133974:0|t[魔泉美味]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,<1
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_派尔拉林|r 对话
    >>|cRXP_BUY_购买1把|r |T135489:0|t[多层弯弓] |cRXP_BUY_从|r |cRXP_FRIENDLY_派尔拉林|r这里
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target 派尔拉林
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +|cRXP_WARN_装备|r |T135489:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >>沿坡道向上前往 |cRXP_FRIENDLY_达斯维瑟|r
step
    #label Spire
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达斯维瑟|r 对话
    .turnin 8890 >>交任务 塔中的消息
    .turnin 8891 >>交任务 被放弃的研究
    .target 魔导师达斯维瑟
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9403 >>交任务 最纯净的水
    .accept 9404 >>接受任务 活动的树木
    .target 指导者安瑟隆
step << !BloodElf/!Warlock
    #completewith SMtraining01
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈雷尼|r 对话
    .train 8936 >>训练你的职业技能
    .target 哈雷尼·平原行者
	.xp <12,1
	.xp >14,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈雷尼|r 对话
    .train 782 >>训练你的职业技能
    .target 哈雷尼·平原行者
	.xp <14,1
step
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅店
step
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日灼|r对话
    >>|cRXP_BUY_从他那里购买一瓶|r |T132798:0|t[日光陈酿] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target 调酒师日灼
    .isOnQuest 9067
step << !BloodElf Hunter
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅店，然后从另一侧出口离开
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>从旅店的另一侧出去
step << Orc Warlock/Undead Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 705 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <12,1
    .xp >14,1
step << Orc Warlock/Undead Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 6222 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <14,1
step << Rogue
    #completewith Zelanis
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前去找 |cRXP_FRIENDLY_瑟兰尼斯|r
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了 |r|T133644:0|t[偷窃]|cRXP_WARN_ 和 |r|T132320:0|t[潜行]|cRXP_WARN_，以便后续任务使用|r
    .accept 9532 >>接受任务 找到克尔图斯·暗叶
    .train 2983 >>训练你的职业技能
    .target 瑟兰尼斯
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了 |r|T133644:0|t[偷窃]|cRXP_WARN_ 和 |r|T132320:0|t[潜行]|cRXP_WARN_，以便后续任务使用|r
    .accept 9532 >>接受任务 找到克尔图斯·暗叶
    .train 1758 >>训练你的职业技能
    .target 瑟兰尼斯
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了 |r|T133644:0|t[偷窃]|cRXP_WARN_ 和 |r|T132320:0|t[潜行]|cRXP_WARN_，以便后续任务使用|r
    .accept 9532 >>接受任务 找到克尔图斯·暗叶
    .target 瑟兰尼斯
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 921 >>学习|T133644:0|t[偷窃] ，用于后续任务
    .train 1784 >>学习 |T132320:0|t[潜行]，以便完成后续任务
    .train 921,1
    .train 1784,1
    .target 瑟兰尼斯
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 1784 >>学习 |T132320:0|t[潜行]，以便完成后续任务
    .target 瑟兰尼斯
step << BloodElf Rogue
    #optional
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 921 >>学习|T133644:0|t[偷窃] ，用于后续任务
    .target 瑟兰尼斯
step << !BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 2983 >>训练你的职业技能
    .target 瑟兰尼斯
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 1758 >>训练你的职业技能
    .target 瑟兰尼斯
    .xp <14,1
step << Rogue
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅店
step << Rogue
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日灼|r对话
    >>|cRXP_BUY_从他那里购买一瓶|r |T132798:0|t[日光陈酿] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target 调酒师日灼
    .isOnQuest 9067
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>从旅店的另一侧出去
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>前去找 |cRXP_FRIENDLY_比利尔|r
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利尔|r 对话
    .train 2580 >>学习 |T136248:0|t[采矿]。这将允许你从矿点获得 |T135232:0|t|cRXP_LOOT_[劣质石头]|r，以制作 |T135248:0|t[磨刀石](增加武器伤害 +2，持续 1 小时) << Paladin/BloodElf Rogue/Undead Rogue
    .target 比利尔
    .skill blacksmithing,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泽兰|r 对话
    >>|cRXP_BUY_购买1把|r |T134708:0|t[矿工锄]|cRXP_BUY_从|r|cRXP_FRIENDLY_泽兰|r这里
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target 泽兰
    .skill blacksmithing,1
    .skill mining,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith Defending
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
step << Paladin
    #completewith FirstTrialB
    .goto Silvermoon City,89.02,37.03,12,0
    .goto Silvermoon City,89.26,35.20,15 >>前去找 |cRXP_FRIENDLY_布拉德瓦罗|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9677 >>交任务 骑士领主布拉德瓦罗的召唤
    .accept 9678 >>接受任务 第一项试炼
    .target 骑士领主布拉德瓦罗
    .isOnQuest 9677
step << Paladin
    #label FirstTrialB
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .accept 9678 >>接受任务 第一项试炼
    .target 骑士领主布拉德瓦罗
step << Paladin
    #optional
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 19834 >>训练你的职业技能
	.target 伊瑟里斯
	.target 欧塞兰
	.xp <12,1
	.xp >14,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 647 >>训练你的职业技能
	.target 伊瑟里斯
	.target 欧塞兰
	.xp <14,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前去找 |cRXP_FRIENDLY_塞兰娜|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMtraining01
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>前去找 |cRXP_FRIENDLY_哈森尼斯|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r << !BloodElf
    .itemcount 3026,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>前去找 |cRXP_FRIENDLY_哈森尼斯|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r << !BloodElf
    .itemcount 3026,<1
step << BloodElf Hunter
    .goto Silvermoon City,82.20,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈森尼斯|r 对话
    .turnin 9673 >>交任务 训练野兽
    .train 4187 >>训练你的宠物技能
    .target 哈森尼斯
step << Hunter
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔纳|r 对话 << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪恩|r 对话 << !BloodElf
    >>|cRXP_WARN_将 |r|T132162:0|t[野兽训练]|cRXP_WARN_ 拖到动作条上，并教会你的宠物技能|r << BloodElf
    .train 14281 >>训练你的职业技能
    .target 塔纳 << BloodElf
    .target 桑迪恩 << !BloodElf
	.xp <12,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Rogue
    #completewith Louis
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 回到幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Louis
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯下去到幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    #completewith Louis
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target 刘易斯·瓦伦
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target 刘易斯·瓦伦
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target 刘易斯·瓦伦
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target 刘易斯·瓦伦
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target 刘易斯·瓦伦
    .itemcount 2027,<2 --Scimitar (2)
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Louis
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target 刘易斯·瓦伦
    .itemcount 2027,<1 --Scimitar (1)
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << BloodElf Hunter
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨斯雷|r 对话
    .turnin 9133 >>交任务 飞往银月城
    .accept 9134 >>接受任务 葛拉米
    .target 萨斯雷·蓝空
step << BloodElf Hunter
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>离开 银月城
    .zoneskip Ghostlands
step << BloodElf Hunter
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .turnin 9134 >>交任务 葛拉米
    .accept 9135 >>接受任务 返回萨希尔身边
    .target 葛拉米
    .zoneskip Ghostlands
step
    #optional
    #label SMtraining01
step << BloodElf !Hunter !Warlock/Undead !Warlock !Warrior/Orc !Warrior !Warlock !Hunter/Troll !Warrior !Hunter/!Tauren
    #completewith Defending
    .hs >>炉石返回鹰翼广场，永歌森林
    .cooldown item,6948,>0
    .bindlocation 3665,1
    .subzoneskip 3665
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20 >>乘坐升降梯返回前往银月城方向
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .zoneskip Silvermoon City
step << Priest
    #xprate >1.49
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    >>|cRXP_BUY_购买1根|r |T135144:0|t[强效魔法杖] |cRXP_BUY_从拍卖行。如果它便宜|r
    >>|cRXP_WARN_如果价格都太贵，可以跳过此步骤|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target 维纳 <拍卖师>
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .zoneskip Silvermoon City,1
step << !BloodElf/!Warlock
    #completewith SGrove
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>离开 银月城
    .cooldown item,6948,<0 << BloodElf !Hunter !Warlock/Undead !Warlock !Warrior/Orc !Warrior !Warlock !Hunter/Troll !Warrior !Hunter/!Tauren
step << Mage/Priest
    #optional
    #completewith MaPrWaTrain2
    .subzone 3665 >>前往鹰翼广场，永歌森林
step << Mage/Priest
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼
	.xp <10,1
step << Priest
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珀纳瑞斯|r 对话
    .train 592 >>训练你的职业技能
    .target 珀纳瑞斯
	.xp <12,1
	.xp >14,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珀纳瑞斯|r 对话
    .train 598 >>训练你的职业技能
    .target 珀纳瑞斯
	.xp <14,1
step << Mage
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 145 >>训练你的职业技能
    .target 加琳黛尔
	.xp <12,1
	.xp >14,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加琳黛尔|r 对话
    .train 1449 >>训练你的职业技能
    .target 加琳黛尔
	.xp <14,1
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,46.63,63.83,0
    .goto Eversong Woods,46.63,63.83,40,0
    .goto Eversong Woods,45.04,65.51,40,0
    .goto Eversong Woods,46.57,65.84,40,0
    .goto Eversong Woods,45.24,67.85,40,0
    .goto Eversong Woods,46.66,67.71,40,0
    .goto Eversong Woods,47.05,68.83,40,0
    .goto Eversong Woods,42.89,65.47,40,0
    .goto Eversong Woods,38.45,65.63,40,0
    >>击杀 |cRXP_ENEMY_魔泉捕猎者|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target 魔泉捕猎者
    .isOnQuest 8491
step
    #completewith FairBreezeturnins
    .subzone 3462 >>前往暴风城大教堂内，与 Fairbreeze Village
step
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨蕾恩|r 对话
    .turnin 9252 >>交任务 保卫晴风村
    .accept 9253 >>接受任务 符文看守者德尔雅
    .target 游侠萨蕾恩
    .isQuestComplete 9252
step
    #optional
    #label Defending
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨蕾恩|r 对话
    .accept 9253 >>接受任务 符文看守者德尔雅
    .target 游侠萨蕾恩
    .isQuestTurnedIn 9252
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兰|r 对话
    .turnin 8491 >>交任务 收集豹皮
    .target 维兰·布雷托克
    .isQuestComplete 8491
step
    #xprate <1.5
    .goto Eversong Woods,44.0,70.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里斯·晨行者|r 对话
    >>|cRXP_BUY_向他购买|r |T134285:0|t[一捆烟花] |cRXP_BUY_|r
    .collect 22777,1,9067,1 --Bundle of Fireworks (1)
    .target 哈里斯·晨行者
    .isOnQuest 9067
step
    #xprate <1.5
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, and |cRXP_FRIENDLY_阿尔德恩·河风|r 对话
    .accept 9144 >>接受任务 迷失在幽魂之地
    .turnin 9255 >>交任务 研究笔记
    .target 魔导师兰德拉·晨行者
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务 警告晴风村
    .target 游侠戴戈利恩
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>接受任务 焦痕谷
    .target 阿尔德恩·河风
    .goto Eversong Woods,43.58,71.20
    .isOnQuest 9255
step
    #xprate <1.5
    #label FairBreezeturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, and |cRXP_FRIENDLY_阿尔德恩·河风|r 对话
    .accept 9144 >>接受任务 迷失在幽魂之地
    .target 魔导师兰德拉·晨行者
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务 警告晴风村
    .target 游侠戴戈利恩
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>接受任务 焦痕谷
    .target 阿尔德恩·河风
    .goto Eversong Woods,43.58,71.20
step
    #xprate >1.49
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landra|r and |cRXP_FRIENDLY_Degolien|r
    .accept 9144 >>接受任务 迷失在幽魂之地
    .turnin 9255 >>交任务 研究笔记
    .target 魔导师兰德拉·晨行者
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务 警告晴风村
    .target 游侠戴戈利恩
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .isOnQuest 9255
step
    #xprate >1.49
    #label FairBreezeturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landra|r and |cRXP_FRIENDLY_Degolien|r
    .accept 9144 >>接受任务 迷失在幽魂之地
    .target 魔导师兰德拉·晨行者
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务 警告晴风村
    .target 游侠戴戈利恩
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨瑟利尔|r 对话
    .turnin 9067 >>交任务 无尽的宴会
    .target 萨瑟利尔男爵
    .isQuestComplete 9067
step
    #xprate <1.5
    #optional
    #completewith next
    .destroy 23500 >>|cRXP_WARN_将|r |T133461:0|t[萨瑟里尔庄园宴会邀请函] |cRXP_WARN_从背包中删除，因为它已不再需要|r
step
    #xprate <1.5
    #label SGrove
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉莉亚娜|r 对话
    .turnin 9258 >>交任务 焦痕谷
    .accept 8473 >>接受任务 痛苦的抉择
    .target 拉莉亚娜·河风
step
    #xprate <1.5
    #completewith next
    >>击杀 |cRXP_ENEMY_枯萎的护卫者|r
    >>|cRXP_WARN_小心，它们拥有 |r|T132282:0|t[重击]|cRXP_WARN_，会造成双倍于普通攻击的伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob 枯萎的护卫者
step
    #xprate <1.5
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    >>击杀 |cRXP_ENEMY_怀特巴克|r. 拾取以获得|T133280:0|t[|cRXP_LOOT_怀特巴克的坠饰|r]
    >>|cRXP_WARN_使用 |T133280:0|t[|cRXP_LOOT_怀特巴克的坠饰|r] 以开始任务|r
    >>|cRXP_ENEMY_怀特巴克|r |cRXP_WARN_的重生时间为7分30秒|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >>接受任务 怀特巴克的坠饰
    .mob 怀特巴克
    .use 23228
step
    #xprate <1.5
    #loop
	.goto Eversong Woods,36.07,83.10,0
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
    >>击杀 |cRXP_ENEMY_枯萎的护卫者|r
    >>|cRXP_WARN_小心，它们拥有 |r|T132282:0|t[重击]|cRXP_WARN_，会造成双倍于普通攻击的伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob 枯萎的护卫者
step
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉莉亚娜|r 对话
    .turnin 8473 >>交任务 痛苦的抉择
    .turnin 8474 >>交任务 怀特巴克的坠饰
    .accept 10166 >>接受任务 怀特巴克的记忆
    .target 拉莉亚娜·河风
step
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,37.79,86.25
    .cast 33980 >>|cRXP_WARN_使用 |r|T133280:0|t[怀特巴克的坠饰]|cRXP_WARN_ 召唤 |r|cRXP_ENEMY_怀特巴克的灵魂|r
    .use 28209
    .isOnQuest 10166
step
    #xprate <1.5
    .goto Eversong Woods,37.79,86.25
    >>击败 |cRXP_ENEMY_怀特巴克的灵魂|r
    >>击败他后，与 |cRXP_FRIENDLY_怀特巴克的灵魂|r对话
    .turnin 10166 >>交任务 怀特巴克的记忆
    .target 怀特巴克的灵魂
    .use 28209
step
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德尔雅|r 对话
    .turnin 9253 >>交任务 符文看守者德尔雅
    .target 符文看守者德尔雅
    .isOnQuest 9253
step << Mage
    #loop
    .goto Eversong Woods,53.02,82.14,0
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22,40,0
    >>击杀 |cRXP_ENEMY_永歌护卫者|r。拾取他们的 |cRXP_LOOT_生命绿枝|r
    .complete 9404,1 --Living Branch (x1)
    .mob 永歌护卫者
step
    #optional
    .abandon 8490 >>放弃任务 增强防御
step
    #optional
    .abandon 8491 >>Abandon Pelt Collection
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 12-16 幽魂之地
#displayname 13-16 Ghostlands << Orc !Hunter !Warlock/Troll !Hunter
#defaultfor !Shaman
#version 7
#subgroup RestedXP 部落 1-30级
#next 16-20 幽魂之地

step << Mage
    #optional
    #completewith next
    +|cRXP_WARN_确保不要出售你的|r |cRXP_LOOT_|T136065:0|t[生命绿枝]|r
    .isQuestComplete 9404
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_晨行者|r 和 |cRXP_FRIENDLY_瑟德拉|r 对话
    .turnin 9144 >>交任务 迷失在幽魂之地
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >>接受任务 倒下的信使
    .target 药剂师瑟德拉
    .goto Eversong Woods,49.02,89.05
step << BloodElf Warlock
    #completewith next
    >>击杀 |cRXP_ENEMY_饥饿的鬼爪山猫|r 和 |cRXP_ENEMY_迷雾蝠|r。拾取他们的 |cRXP_LOOT_染疫血样|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob 饥饿的鬼爪山猫
    .mob 迷雾蝠
step << BloodElf Warlock
    .goto Ghostlands,43.66,15.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地上的 |cRXP_FRIENDLY_紫色碎片|r 对话
    .turnin 9529 >>交任务 虚空石
    .accept 9619 >>接受任务 召唤符文
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,27.51,15.75,10,0
    .goto Ghostlands,27.35,15.01,8,0
    .goto Ghostlands,26.17,15.61,8,0
    .goto Ghostlands,26.09,14.56,8,0
    .goto Ghostlands,26.44,14.24,8,0
    .goto Ghostlands,26.74,14.38,8 >>上楼
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,26.99,15.24
    .cast 30208 >>使用 |T134078:0|t[虚空石]召唤 |cRXP_ENEMY_被召唤的虚空行者|r
    .use 23732
step << BloodElf Warlock
    .goto Ghostlands,26.99,15.24
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_虚空行者|r
    .complete 9619,1 --Summoned Voidwalker (1)
    .mob 虚空行者
    .use 23732
step
    #loop
    .goto Ghostlands,47.81,12.66,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    >>击杀 |cRXP_ENEMY_饥饿的鬼爪山猫|r 和 |cRXP_ENEMY_迷雾蝠|r。拾取他们的 |cRXP_LOOT_染疫血样|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob 饥饿的鬼爪山猫
    .mob 迷雾蝠
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟德拉|r 和 |cRXP_FRIENDLY_晨行者|r 对话
    .turnin 9147 >>交任务 倒下的信使
    .target 药剂师瑟德拉
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >>接受任务 送往塔奎林的信件
    .target 信使迪卡·晨行者
    .goto Eversong Woods,48.98,88.99
step
    #completewith next
    .subzone 3488 >>前往塔奎林
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9148 >>交任务 送往塔奎林的信件
    .accept 9327 >>接受任务 被遗忘者 << BloodElf
    .accept 9329 >>接受任务 被遗忘者 << !BloodElf
    .target 奥术师范迪瑞尔
step << Warrior
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fp Tranquillien >>获取塔奎林的飞行点
    .target 飞行管理员加尼斯·日翼
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔伦|r 对话
    .turnin 9327 >>交任务 被遗忘者 << BloodElf
    .turnin 9329 >>交任务 被遗忘者 << !BloodElf
    .accept 9758 >>接受任务 返回奥术师范迪瑞尔身边
    .target 高级执行官玛尔伦
step << BloodElf !Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米尔|r 对话
    .accept 9130 >>接受任务 银月城的货物
    .target 军需官雷米尔
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    .home >>将你的炉石绑定到塔奎林
    .target 旅店老板卡拉林
    .bindlocation 3488
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9758 >>交任务 返回奥术师范迪瑞尔身边
    .accept 9138 >>接受任务 日冕村
    .target 奥术师范迪瑞尔
step << BloodElf
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .turnin 9130 >>交任务 银月城的货物
    .accept 9133 >>接受任务 飞往银月城 << Warlock/Priest/Mage
    .target 飞行管理员加尼斯·日翼
step << BloodElf Warlock
    #completewith RuneOS
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .zoneskip Silvermoon City
step << BloodElf Warlock
    #completewith RuneOS
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
step << BloodElf Warlock
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨斯雷|r 对话
    .turnin 9133 >>交任务 飞往银月城
    .accept 9134 >>接受任务 葛拉米
    .target 萨斯雷·蓝空
step << BloodElf Warlock
    #completewith RuneOS
    .goto Silvermoon City,66.92,59.84,30,0
    .goto Silvermoon City,69.32,59.09,20,0
    .goto Silvermoon City,73.50,58.21,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .turnin 9619 >>交任务 召唤符文
    .train 705 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .turnin 9619 >>交任务 召唤符文
    .train 6222 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .turnin 9619 >>交任务 召唤符文
    .train 1455 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <16,1
    .train 1455,1
step << BloodElf Warlock
    #label RuneOS
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .turnin 9619 >>交任务 召唤符文
    .target 塔莱尼娅
step << BloodElf Warlock
    #completewith AnokPickup
    .hs >>炉石返回塔奎林，幽魂之地
    .bindlocation 3488,1
    .subzoneskip 3488
step
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Rathis|r
    .accept 9152 >>接受任务 托博尔的补给品
    .target 拉提斯·托博尔
step
    #label AnokPickup
    .goto Ghostlands,57.54,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地上的 |cRXP_FRIENDLY_濒死的血精灵|r 对话
    .accept 9315 >>接受任务 阿诺克苏塔
    .target 濒死的血精灵
step << !Paladin
    #completewith next
    >>击杀 |cRXP_ENEMY_蛛怪卫兵|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob 蛛怪卫兵
step << Paladin
    #completewith FirstT
    >>击杀 |cRXP_ENEMY_蛛怪卫兵|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob 蛛怪卫兵
step
    #loop
    .goto Ghostlands,62.86,11.04,0
    .goto Ghostlands,59.47,12.43,20,0
    .goto Ghostlands,59.83,10.22,20,0
    .goto Ghostlands,58.92,9.19,20,0
    .goto Ghostlands,60.72,9.46,20,0
    .goto Ghostlands,61.74,9.63,20,0
    .goto Ghostlands,62.86,11.04,20,0
    .goto Ghostlands,63.26,9.50,20,0
    .goto Ghostlands,62.76,12.68,20,0
    .goto Ghostlands,63.52,13.39,20,0
    .goto Ghostlands,62.00,14.21,20,0
    .goto Ghostlands,60.70,14.39,20,0
    .goto Ghostlands,60.34,16.13,20,0
    .goto Ghostlands,59.92,13.83,20,0
    >>击杀 |cRXP_ENEMY_阿诺克苏塔|r。他沿城镇道路逆时针巡逻，并会进入建筑物内
    >>|cRXP_WARN_当生命值低于 50% 时，他会呼叫|r|cRXP_ENEMY_蛛怪卫兵|r|cRXP_WARN_支援，范围为 60 码|r
    >>|cRXP_WARN_如有需要，为他寻找一个队伍|r
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan 阿诺克苏塔
step << !Paladin
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    >>击杀 |cRXP_ENEMY_蛛怪卫兵|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob 蛛怪卫兵
step << Paladin
    #completewith next
    >>游到岛上
    .goto Ghostlands,68.53,8.66,20 >>进入洞穴内部
step << Paladin
    #completewith next
    .goto Ghostlands,68.41,7.42
    .cast 3365 >>点击|cRXP_PICK_镀金火盆|r 以召唤 |cRXP_ENEMY_桑利亚斯·静刃|r
step << Paladin
    #label FirstT
    .goto Ghostlands,68.50,9.77
    >>击杀 |cRXP_ENEMY_桑利亚斯·静刃|r
    .complete 9678,1 --Undergo the First Trial
    .mob 桑利亚斯·静刃
step << Paladin
    #loop
	.goto Ghostlands,68.61,10.24,0
	.goto Ghostlands,68.61,10.24,30,0
	.goto Ghostlands,69.93,9.00,30,0
	.goto Ghostlands,70.52,5.81,30,0
	.goto Ghostlands,69.54,4.65,30,0
	.goto Ghostlands,68.63,4.93,30,0
	.goto Ghostlands,66.76,5.54,30,0
	.goto Ghostlands,66.70,6.58,30,0
	.goto Ghostlands,67.41,9.70,30,0
    >>击杀 |cRXP_ENEMY_蛛怪卫兵|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob 蛛怪卫兵
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦兰娜|r 对话
    .accept 9143 >>接受任务 塞布索雷的巨魔
    .target 游侠瓦兰娜
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯|r 对话
    .accept 9157 >>接受任务 被遗忘的仪祭
    .target 格兰尼斯·月晨
step
    #loop
	.goto Ghostlands,73.64,14.43,0
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
    >>击杀 |cRXP_ENEMY_暗松撕裂者|r 和 |cRXP_ENEMY_暗松巫者|r。拾取他们的 |cRXP_LOOT_巨魔标记|r
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
    .mob 暗松撕裂者
    .mob 暗松巫者
step
    #completewith next
    .subzone 3496 >>前往远行者聚居地
step
    .goto Ghostlands,73.48,32.15,15,0
    .goto Ghostlands,72.50,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞蒂娜|r 对话
    .accept 9158 >>接受任务 瘟疫的使者
    .target 远行者塞蒂娜
step << !Mage
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长嘴泥鳅] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132815:0|t[冰镇牛奶] |r和|cRXP_BUY_ |T133918:0|t[新鲜的长嘴泥鳅] |r << Paladin
    .collect 1179,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target 赫尔隆
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0500 << Priest/Mage/Warlock/Druid
    .money <0.0540 << Paladin
    .isOnQuest 9158
    .xp >15,1
step << !Mage
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_从他那里|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长嘴泥鳅] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132815:0|t[冰镇牛奶] |r和|cRXP_BUY_ |T133918:0|t[新鲜的长嘴泥鳅] |r << Paladin
    .collect 1179,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target 赫尔隆
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0250 << Priest/Mage/Warlock/Druid
    .money <0.0290 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133970:0|t[羊排]|cRXP_BUY_从他那里|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target 赫尔隆
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133970:0|t[羊排]|cRXP_BUY_从他那里|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target 赫尔隆
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step << Hunter
    #completewith next
    .goto Ghostlands,48.48,31.36,0
    +|cRXP_WARN_Abandon your current pet. Alternatively you talk to|r |cRXP_FRIENDLY_Paniar|r |cRXP_WARN_in Tranquillien to stable your current pet|r
    .target Paniar
step << Hunter
    #loop
    .goto Ghostlands,72.68,41.63,0
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    .train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_Ghostclaw Lynx|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
    .mob 鬼爪山猫
step
    #loop
    .goto Ghostlands,72.68,41.63,0
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    >>击杀 |cRXP_ENEMY_鬼爪山猫|r
    >>|cRXP_ENEMY_Ghostclaw Lynxes|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Vampiric Mistbats|r. Kill them too if there aren't enough |cRXP_ENEMY_Ghostclaw Lynxes|r around|r
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
    .mob 鬼爪山猫
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞蒂娜|r, |cRXP_FRIENDLY_索兰娜|r,|cRXP_FRIENDLY_通缉布告|r, |cRXP_FRIENDLY_克雷安|r,和|cRXP_FRIENDLY_赫利俄斯|r 对话
    .turnin 9158 >>交任务 瘟疫的使者
    .accept 9159 >>接受任务 控制瘟疫
    .target 远行者塞蒂娜
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接受任务 进攻塞布提拉
    .target 远行者索兰娜
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>接受任务 克尔加什的徽记！
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>接受任务 水中鬼魂
    .target 游侠克雷安
    .goto Ghostlands,72.21,29.78
    .accept 9214 >>接受任务 暗松巨魔的武器
    .target 赫里奥斯中尉
    .goto Ghostlands,72.37,29.64
    .xp <15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞蒂娜|r, |cRXP_FRIENDLY_通缉布告|r, 和 |cRXP_FRIENDLY_克雷安|r 对话
    .turnin 9158 >>交任务 瘟疫的使者
    .accept 9159 >>接受任务 控制瘟疫
    .target 远行者塞蒂娜
    .goto Ghostlands,72.50,32.14
    .accept 9215 >>接受任务 克尔加什的徽记！
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>接受任务 水中鬼魂
    .target 游侠克雷安
    .goto Ghostlands,72.21,29.78
step
    #completewith Aquantion
    >>击杀 |cRXP_ENEMY_贪婪的幽灵|r 和 |cRXP_ENEMY_复仇的幽灵|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob 贪婪的幽灵
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob 复仇的幽灵
step
    #loop
    .goto Ghostlands,73.42,22.88,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    >>在水下拾取 |cRXP_PICK_闪光泥堆|r，获得 |cRXP_LOOT_波浪勋章|r
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯|r 对话
    .turnin 9157 >>交任务 被遗忘的仪祭
    .accept 9174 >>接受任务 消灭阿奎艾森
    .target 格兰尼斯·月晨
step
    #completewith next << !Mage !Priest
    #completewith AquantionKill << Priest/Mage
    .goto Ghostlands,71.32,14.93
    .cast 28226 >>点击地上的 |cRXP_PICK_祭坛|r 以召唤 |cRXP_ENEMY_阿奎艾森|r
step
    .goto Ghostlands,71.31,14.58
    >>击杀 |cRXP_ENEMY_阿奎艾森|r
    >>|cRXP_WARN_他拥有精英级生命值，并造成冰霜伤害|r
    >>他免疫|cRXP_WARN_|T136222:0|t[奥术洪流]|r 和|cRXP_WARN_ |T135963:0|t[正义之锤号] |r << BloodElf Paladin
    >>|cRXP_WARN_他免疫|r |T135963:0|t[正义之锤号] << !BloodElf Paladin
    >>他免疫 |cRXP_WARN_|T136222:0|t[奥术洪流]|r 和 |cRXP_WARN_|T136183:0|t[恐惧]|r << BloodElf Warlock
    >>|cRXP_WARN_他免疫|r |T136183:0|t[恐惧] << !BloodElf Warlock
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_和|r |T136184:0|t[心灵尖啸] << BloodElf Priest
    >>|cRXP_WARN_他免疫|r |T136184:0|t[心灵尖啸] << !BloodElf Priest
    >>|cRXP_WARN_他免疫 |r|T136222:0|t[奥术洪流]、|T135846:0|t[寒冰箭]、|T135848:0|t[冰霜新星] |cRXP_WARN_和 |T135843:0|t[霜甲术] |r << BloodElf Mage
    >>|cRXP_WARN_他免疫 |r|T135846:0|t[寒冰箭]、|T135848:0|t[冰霜新星] |cRXP_WARN_和 |T135843:0|t[霜甲术] |r << !BloodElf Mage
    >>|cRXP_WARN_在召唤他之前，确保使用 |r|T136006:0|t[魔法抑制]|cRXP_WARN_ 给自己上增益|r << Mage
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_和|r |T132155:0|t[凿击] << BloodElf Rogue
    >>|cRXP_WARN_他免疫|r |T132155:0|t[凿击] << !BloodElf Rogue
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] << BloodElf Hunter
    >>|cRXP_WARN_如有需要，为他寻找一个队伍|r << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob 阿奎艾森
    .train 8122,3 << Priest
    .train 604,3 << Mage
step << Priest/Mage
    #label AquantionKill
    #optional
    .goto Ghostlands,71.31,14.58
    >>击杀 |cRXP_ENEMY_阿奎艾森|r
    >>|cRXP_WARN_他拥有精英级生命值，并造成冰霜伤害|r
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] << BloodElf Priest
    >>|cRXP_WARN_他免疫 |r|T136222:0|t[奥术洪流]、|T135846:0|t[寒冰箭]、|T135848:0|t[冰霜新星] |cRXP_WARN_和 |T135843:0|t[霜甲术] |r << BloodElf Mage
    >>|cRXP_WARN_他免疫 |r|T135846:0|t[寒冰箭]、|T135848:0|t[冰霜新星] |cRXP_WARN_和 |T135843:0|t[霜甲术] |r << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob 阿奎艾森
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯|r 对话
    .turnin 9174 >>交任务 消灭阿奎艾森
    .target 格兰尼斯·月晨
step
    #loop
    .goto Ghostlands,71.99,28.39,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    >>击杀 |cRXP_ENEMY_贪婪的幽灵|r 和 |cRXP_ENEMY_复仇的幽灵|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob 贪婪的幽灵
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob 复仇的幽灵
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦兰娜|r 对话
    .turnin 9143 >>交任务 塞布索雷的巨魔
    .accept 9146 >>接受任务 向赫里奥斯中尉报到
    .target 游侠瓦兰娜
step
    #optional
    #completewith SuncrownTurnin
    .destroy 22639 >>|cRXP_WARN_摧毁剩余的|r |T133857:0|t[塞布索雷巨魔耳朵] |cRXP_WARN_，因为已经不再需要|r
step << Mage
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+8440 >>Grind to 8440+/11000xp
    .isQuestComplete 9315
    .isQuestComplete 9404
step << Mage
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+9320 >>Grind to 9320+/11000xp
    .isQuestNotComplete 9315
    .isQuestComplete 9404
step
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+9280 >>Grind to 9280+/11000xp
    .isQuestComplete 9315
    .isQuestNotComplete 9404 << Mage
step
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+10160 >>Grind to 10160+/11000xp
    .isQuestNotComplete 9315
    .isQuestNotComplete 9404 << Mage
step << Priest/Mage/Warlock/Rogue/Druid/Warrior
    #xprate <1.5 << !Warrior
    #softcore
    #completewith SuncrownTurnin
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step << Priest/Mage/Warlock/Rogue/Druid/Warrior
    #hardcore
    #completewith SuncrownTurnin
    .subzone 3488 >>前往塔奎林
step << !Priest !Mage !Warlock !Rogue !Druid !Warrior
    #softcore
    #xprate <1.5
    #completewith SuncrownTurnin
    .subzone 3488 >>前往塔奎林
step << !Warrior
    #softcore
    #xprate >1.49
    #completewith SuncrownTurnin
    .subzone 3488 >>前往塔奎林
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 与 |cRXP_FRIENDLY_通缉布告|r 对话
    .turnin 9315 >>交任务 阿诺克苏塔
    .turnin 9138 >>交任务 日冕村
    .accept 9139 >>接受任务 金雾村
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >>接受任务 通缉：纳克雷洛特和卢兹兰
    .goto Ghostlands,48.35,31.67
    .target 奥术师范迪瑞尔
    .isQuestComplete 9315
step
    #label SuncrownTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 与 |cRXP_FRIENDLY_通缉布告|r 对话
    .turnin 9138 >>交任务 日冕村
    .accept 9139 >>接受任务 金雾村
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >>接受任务 通缉：纳克雷洛特和卢兹兰
    .goto Ghostlands,48.35,31.67
    .target 奥术师范迪瑞尔
step << !Warrior
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    .home >>将你的炉石绑定到塔奎林
    .target 旅店老板卡拉林
    .bindlocation 3488
step << Mage/Priest/Warlock
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132562:0|t[徒工长靴] |cRXP_BUY_从他那里|r
    .collect 22991,1,9281,1 --Collect Apprentice Boots (1)
    .target 补给官弗雷迪加
    .itemStat 8,LEVEL,<15
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132538:0|t[泥沼行者长靴] |cRXP_BUY_和|r |T135277:0|t[塔奎林巨剑] |cRXP_BUY_从他那里|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target 补给官弗雷迪加
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Rogue/Shaman/Hunter/Druid
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132538:0|t[泥沼行者长靴] |cRXP_BUY_从他那里|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target 补给官弗雷迪加
    .itemStat 8,LEVEL,<1
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T135277:0|t[塔奎林巨剑] |cRXP_BUY_从他那里|r
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target 补给官弗雷迪加
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132535:0|t[志愿者胫甲] |cRXP_BUY_和|r |T135277:0|t[塔奎林巨剑] |cRXP_BUY_从他那里|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target 补给官弗雷迪加
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132535:0|t[志愿者胫甲]|cRXP_BUY_从他那里|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .target 补给官弗雷迪加
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T135277:0|t[塔奎林巨剑] |cRXP_BUY_从他那里|r
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target 补给官弗雷迪加
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Mage/Priest/Warlock
    #optional
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132562:0|t[徒工长靴]
    .use 22991
    .itemcount 22991,1
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter
    #optional
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132538:0|t[泥沼行者长靴]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #label Huntertbc1
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132538:0|t[泥沼行者长靴] |cRXP_WARN_和|r |T135277:0|t[塔奎林巨剑]
    .use 22992
    .use 28164
    .itemcount 22992,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter
    #optional
    #label Huntertbc2
    #requires Huntertbc1
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132538:0|t[泥沼行者长靴]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #requires Huntertbc2
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T135277:0|t[塔奎林巨剑]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    #optional
    #label Paladinwep1
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132535:0|t[志愿者胫甲] |cRXP_WARN_和|r |T135277:0|t[塔奎林巨剑]
    .use 22993
    .use 28164
    .itemcount 22993,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    #optional
    #label Paladinwep2
    #requires Paladinwep1
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T132535:0|t[志愿者胫甲]
    .use 22993
    .itemcount 22993,1
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    #optional
    #requires Paladinwep2
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T135277:0|t[塔奎林巨剑]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step
    #optional
    #completewith ManaEssence
    .abandon 9315 >>放弃任务 阿诺克苏塔
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹特恩|r 对话
    .accept 9149 >>接受任务 瘟疫海岸
    .target 药剂师雷兹特恩
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹特恩|r, |cRXP_FRIENDLY_拉提尔|r, |cRXP_FRIENDLY_瓦尔文|r, |cRXP_FRIENDLY_奥莉菲洛丝夫人|r, |cRXP_FRIENDLY_玛尔特迪斯|r, 和 |cRXP_FRIENDLY_戴伦尼斯|r 对话
    .accept 9149 >>接受任务 瘟疫海岸
    .target 药剂师雷兹特恩
    .goto Ghostlands,47.67,34.87
    .accept 9155 >>接受任务 前往死亡之痕
    .target 亡灵哨兵拉提尔
    .goto Ghostlands,46.02,33.58
    .accept 9193 >>接受任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>接受任务 调查安达洛斯
    .target 奥莉菲洛丝夫人
    .goto Ghostlands,44.88,32.51
    .accept 9199 >>接受任务 巨魔的邪符
    .accept 9192 >>接受任务 幽光矿洞的麻烦
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>接受任务 重建历史
    .target 魔导师戴伦尼斯
    .goto Ghostlands,46.02,31.95
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_拉提尔|r, |cRXP_FRIENDLY_瓦尔文|r, |cRXP_FRIENDLY_奥莉菲洛丝夫人|r, |cRXP_FRIENDLY_玛尔特迪斯|r, 和 |cRXP_FRIENDLY_戴伦尼斯|r 对话
    .accept 9155 >>接受任务 前往死亡之痕
    .target 亡灵哨兵拉提尔
    .goto Ghostlands,46.02,33.58
    .accept 9193 >>接受任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>接受任务 调查安达洛斯
    .target 奥莉菲洛丝夫人
    .goto Ghostlands,44.88,32.51
    .accept 9199 >>接受任务 巨魔的邪符
    .accept 9192 >>接受任务 幽光矿洞的麻烦
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>接受任务 重建历史
    .target 魔导师戴伦尼斯
    .goto Ghostlands,46.02,31.95
step << Warrior
    #completewith BrillTrain2
    .hs >>炉石返回布瑞尔，提瑞斯法林地
    .bindlocation 2119,1
    .zoneskip Tirisfal Glades
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 7384 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <14,1
    .xp >16,1
step << Warrior
    #label BrillTrain2
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯蒂尔|r 对话
    .train 285 >>训练你的职业技能
    .target 奥斯蒂尔·德·蒙
    .xp <16,1
step << Warrior
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step << Warrior
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << !Paladin !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .zoneskip Silvermoon City
step << Rogue
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
step << Rogue
    #xprate <1.5
    #optional
    .abandon 9491 >>放弃任务 贪婪
step << Rogue
    #xprate <1.5
    #completewith RogueTrain2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前去找 |cRXP_FRIENDLY_瑟兰尼斯|r
    .xp <16,1
step << Rogue
    #xprate <1.5
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .train 1758 >>训练你的职业技能
    .target 瑟兰尼斯
    .xp <14,1
    .xp >16,1
step << Rogue
    #xprate <1.5
    #label RogueTrain2
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .accept 10372 >>接受任务 谨慎的询问
    .train 6761 >>训练你的职业技能
    .target 瑟兰尼斯
    .xp <16,1
step << Rogue
    #xprate <1.5
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯下去到幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #xprate <1.5
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target 刘易斯·瓦伦
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target 刘易斯·瓦伦
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #completewith Clearing
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #xprate <1.5
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘坐升降梯返回前往银月城方向
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    #xprate <1.5
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Mage
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9404 >>交任务 活动的树木
    .train 1460,1
    .target 指导者安瑟隆
 step << Mage/Priest
     #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .train 1460,1
step << !BloodElf Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
step << BloodElf Priest/BloodElf Mage
    #xprate <1.5
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨斯雷|r 对话
    .turnin 9133 >>交任务 飞往银月城
    .accept 9134 >>接受任务 葛拉米
    .target 萨斯雷·蓝空
step << Priest
    #xprate <1.5
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    >>|cRXP_BUY_购买1根|r |T135144:0|t[强效魔法杖] |cRXP_BUY_从拍卖行。如果它便宜|r
    >>|cRXP_WARN_如果价格都太贵，可以跳过此步骤|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target 维纳 <拍卖师>
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #xprate <1.5
    #completewith SMTraining2
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前去找 |cRXP_FRIENDLY_洛塞兰|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前去找 |cRXP_FRIENDLY_塞伊丹娜|r << Mage
step << Priest
    #xprate <1.5
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 8122 >>训练你的职业技能
    .target 洛塞兰
	.xp <14,1
	.xp >16,1
step << Priest
    #xprate <1.5
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 8102 >>训练你的职业技能
    .target 洛塞兰
	.xp <16,1
step << Mage
    #xprate <1.5
    #optional
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 1460 >>训练你的职业技能
    .target 塞伊丹纳
	.xp <14,1
	.xp >16,1
step << Mage
    #xprate <1.5
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 2120 >>训练你的职业技能
    .target 塞伊丹纳
	.xp <16,1
step << !BloodElf Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
step << !BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 6222 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <14,1
step << BloodElf Priest
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>离开 银月城
step << BloodElf Priest/BloodElf Mage
    #xprate <1.5
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .turnin 9134 >>交任务 葛拉米
    .accept 9135 >>接受任务 返回萨希尔身边
    .target 葛拉米
    .zoneskip Ghostlands
step << !Paladin !Shaman !Warrior !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith ManaEssence
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #xprate <1.5
    #optional
    #label SMTraining2
step << !Paladin !Shaman !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>离开 银月城
    .zoneskip Ghostlands
    .cooldown item,6948,<0 << !Warrior
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Paladin !Shaman !Druid !BloodElf/!Warlock !Paladin
    #xprate <1.5 << !Warrior
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .fly Tranquillien >>飞往塔奎林
    .target 葛拉米
    .cooldown item,6948,<0 << !Warrior
    .zoneskip Ghostlands
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << Warrior
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    .home >>将你的炉石绑定到塔奎林
    .target 旅店老板卡拉林
    .bindlocation 3488
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << BloodElf Priest/BloodElf Mage
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米尔|r 对话
    .turnin 9135 >>交任务 返回萨希尔身边
    .target 军需官雷米尔
step
    #completewith SanctumOTM
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>如果你能找到队伍帮你完成，击杀 |cRXP_ENEMY_卢兹兰|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .mob 卢兹兰
step
    #completewith next
    >>击杀 |cRXP_ENEMY_笨拙的食尸者|r 和 |cRXP_ENEMY_复生的饥饿者|r. 拾取 |cRXP_ENEMY_复生的饥饿者|r以获得|cRXP_LOOT_腐烂精华|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_笨拙的食尸者|r |cRXP_WARN_施放|r |T136224:0|t[激怒] |cRXP_WARN_(在低生命值时造成更高伤害并提高攻击速度)|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_复生的饥饿者|r|cRXP_WARN_施放|r |T132278:0|t[吸血术]|cRXP_WARN_(造成 10 点伤害并吸取生命值)|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
    .mob 复生的饥饿者
    .mob 笨拙的食尸者
step
    #label SanctumOTM
    .goto Ghostlands,35.18,32.85,100 >>前往月亮圣殿
    .isOnQuest 9150
step
    #label ManaEssence
    #loop
    .goto Ghostlands,35.18,32.85,0
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93,40,0
    >>击杀 |cRXP_ENEMY_奥术吞噬者|r 和 |cRXP_ENEMY_法力流窜者|r。拾取他们的 |cRXP_LOOT_晶化法力精华|r
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
    .mob 奥术吞噬者
    .mob 法力流窜者
step
    .goto Ghostlands,33.55,26.55
    >>在商队中拾取 |cRXP_PICK_补给箱|r
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step << !BloodElf/!Rogue
    #completewith Andaroth
    .goto Ghostlands,37.69,20.68,40,0
    >>击杀 |cRXP_ENEMY_纺丝蜘蛛|r。拾取他们的 |cRXP_LOOT_蜘蛛腿|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob 纺丝蜘蛛
step << BloodElf Rogue
    #completewith KeltusD
    .goto Ghostlands,37.69,20.68,40,0
    >>击杀 |cRXP_ENEMY_纺丝蜘蛛|r。拾取他们的 |cRXP_LOOT_蜘蛛腿|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob 纺丝蜘蛛
step
    #completewith Andaroth
    >>击杀 |cRXP_ENEMY_哨兵部队间谍|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob 哨兵部队间谍
step << BloodElf Rogue
    #label KeltusD
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克尔图斯|r 对话
    >>|cRXP_WARN_不要击杀|r |cRXP_ENEMY_哨兵队长|r
    >>|cRXP_FRIENDLY_克尔图斯|r|cRXP_WARN_的位面状态可能会有问题。如果他不在原地，就游到永歌森林再游回来|r
    .turnin 9532 >>交任务 找到克尔图斯·暗叶
    .accept 9460 >>接受任务 窃取情报
    .target 克尔图斯·暗叶
step << BloodElf Rogue
    #completewith next
    >>前去找|cRXP_PICK_神龛|r
    .complete 9160,2 --Investigate An'daroth
step << BloodElf Rogue
    #loop
    .goto Ghostlands,37.05,14.03,0
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48,30,0
    >>先使用 |T132320:0|t[潜行]|cRXP_WARN_，然后对 |r|cRXP_WARN_哨兵队长|r |cRXP_ENEMY_使用 |r|T133644:0|t[偷窃]|cRXP_WARN_，获取 |r|cRXP_LOOT_蕾丝手帕|r
    >>|cRXP_WARN_如果你引到她的仇恨，就跑开并重置她|r
    .complete 9460,1 --Lacy Handkerchief (x1)
    .mob 哨兵队长
step
    #label Andaroth
    .goto Ghostlands,36.94,15.73
    >>前去找|cRXP_PICK_神龛|r
    .complete 9160,2 --Investigate An'daroth
step
    #loop
	.goto Ghostlands,38.21,17.44,0
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
    >>击杀 |cRXP_ENEMY_哨兵部队间谍|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob 哨兵部队间谍
step
    #xprate <1.5
    #loop
	.goto Ghostlands,38.21,17.44,0
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
    .xp 14+5200 >>刷怪达到5200+/12300经验
step << BloodElf Rogue
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克尔图斯|r 对话
    >>|cRXP_FRIENDLY_克尔图斯|r|cRXP_WARN_的位面状态可能会有问题。如果他不在原地，就游到永歌森林再游回来|r
    .turnin 9460 >>交任务 窃取情报
    .accept 9618 >>接受任务 交回报告
    .target 克尔图斯·暗叶
step
    #completewith next
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob 纳克雷洛特
step
    #loop
    .goto Ghostlands,29.08,15.17,0
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48,30,0
    >>击杀 |cRXP_ENEMY_奎尔多雷鬼魂|r 和 |cRXP_ENEMY_奎尔多雷怨灵|r
    >>|cRXP_WARN_注意，它们在生命值低于 50% 时会施放|r |T136205:0|t[闪避] |cRXP_WARN_（提高躲闪几率）|r << Rogue/Paladin
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
    .mob 奎尔多雷鬼魂
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .mob 奎尔多雷怨灵
step
    #completewith next
    >>击杀 |cRXP_ENEMY_纺丝蜘蛛|r。拾取他们的 |cRXP_LOOT_蜘蛛腿|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob 纺丝蜘蛛
step
    #completewith next
    .goto Ghostlands,18.88,13.73,80 >>前往海岸
step
    #loop
    .goto Ghostlands,18.88,13.73,0
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    >>击杀 |cRXP_ENEMY_暗鳞僵尸|r 和 |cRXP_ENEMY_衰老的暗鳞鱼人|r。拾取他们的 |cRXP_LOOT_染疫鱼人脊骨|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_暗鳞僵尸|r的|r |T136066:0|t[热病衰竭] |cRXP_WARN_(使智力和精神降低 6 点，持续 10 分钟)|r << !Rogue !Warrior
    >>|cRXP_WARN_小心 |cRXP_ENEMY_衰老的暗鳞鱼人|r的|r |T135914:0|t[腐朽敏捷] |cRXP_WARN_(使敏捷降低 18 点，持续 5 分钟)|r  << !Mage !Priest !Warlock
    >>|cRXP_WARN_移出它们的近战范围以躲避该技能|r
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
    .mob 暗鳞僵尸
    .mob 衰老的暗鳞鱼人
step
    #completewith SLurker
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob 纳克雷洛特
step
    #completewith next
    >>击杀 |cRXP_ENEMY_纺丝蜘蛛|r。拾取他们的 |cRXP_LOOT_蜘蛛腿|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob 纺丝蜘蛛
step
    .goto Ghostlands,27.40,38.73,100 >>过桥前往|cRXP_ENEMY_纺丝潜伏者|r
    .isOnQuest 9159
step
    #completewith SLurker
    >>击杀 |cRXP_ENEMY_吸血迷雾蝠|r
    >>|cRXP_WARN_注意它们的|r |T136130:0|t[吸血之触] |cRXP_WARN_生命偷取法术|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob 吸血迷雾蝠
step
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>击杀 |cRXP_ENEMY_纺丝潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛腿|r
    >>|cRXP_WARN_注意它们的|r |T136016:0|t[中毒]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .disablecheckbox
    .mob 纺丝潜伏者
    .itemcount 22644,<5
step
    #label SLurker
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>击杀 |cRXP_ENEMY_纺丝潜伏者|r
    >>|cRXP_WARN_注意它们的|r |T136016:0|t[中毒]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .mob 纺丝潜伏者
    .itemcount 22644,5
step
    #completewith next
    >>击杀 |cRXP_ENEMY_黑爪豺狼人|r, |cRXP_ENEMY_黑爪食腐者|r, 和 |cRXP_ENEMY_黑爪萨满祭司|r
    >>|cRXP_WARN_暂时不用关注这个|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob 黑爪豺狼人
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob 黑爪食腐者
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob 黑爪萨满祭司
step
    .goto Ghostlands,31.44,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙塔瑞亚|r 对话
    .accept 9207 >>接受任务 幽光矿石样本
    .target 学徒沙塔瑞亚
step
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>击杀 |cRXP_ENEMY_黑爪豺狼人|r, |cRXP_ENEMY_黑爪食腐者|r, 和|cRXP_ENEMY_黑爪萨满祭司|r。拾取他们的 |cRXP_LOOT_幽光矿石|r
    >>|cRXP_WARN_你也可以从幽光矿洞中的矿脉采集|r |cRXP_PICK_幽光矿石|r |cRXP_WARN_|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob 黑爪豺狼人
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob 黑爪食腐者
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob 黑爪萨满祭司
    .complete 9207,1 --Collect Underlight Ore (x6)
    .skill mining,1
step
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>击杀 |cRXP_ENEMY_黑爪豺狼人|r, |cRXP_ENEMY_黑爪食腐者|r, 和|cRXP_ENEMY_黑爪萨满祭司|r。拾取他们的 |cRXP_LOOT_幽光矿石|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob 黑爪豺狼人
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob 黑爪食腐者
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob 黑爪萨满祭司
    .complete 9207,1 --Collect Underlight Ore (x6)
step
    #completewith Hungerers
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob 纳克雷洛特
step
    #completewith Hungerers
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_卢兹兰|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .mob 卢兹兰
step
    #label Hungerers
    #loop
    .goto Ghostlands,37.13,48.38,0
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98,40,0
    >>击杀 |cRXP_ENEMY_笨拙的食尸者|r 和 |cRXP_ENEMY_复生的饥饿者|r. 拾取 |cRXP_ENEMY_复生的饥饿者|r以获得|cRXP_LOOT_腐烂精华|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_笨拙的食尸者|r |cRXP_WARN_施放|r |T136224:0|t[激怒] |cRXP_WARN_(在低生命值时造成更高伤害并提高攻击速度)|r
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_复生的饥饿者|r|cRXP_WARN_施放|r |T132278:0|t[吸血术]|cRXP_WARN_(造成 10 点伤害并吸取生命值)|r
    >>|cRXP_ENEMY_笨拙的食尸者|r |cRXP_WARN_和 |cRXP_ENEMY_复生的饥饿者|r 共享刷新点。击杀两者都可以刷新你需要的目标|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .mob 复生的饥饿者
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .mob 笨拙的食尸者
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
step
    #completewith TranqVisit3
    .subzone 3488 >>前往塔奎林
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r, |cRXP_FRIENDLY_拉提斯|r,和|cRXP_FRIENDLY_莫迪尔|r 对话
    .turnin 9139 >>交任务 金雾村
    .target 奥术师范迪瑞尔
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >>接受任务 风行村
    .turnin 9152 >>交任务 托博尔的补给品
    .target 拉提斯·托博尔
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .accept 9171 >>接受任务 松脆蜘蛛腿
    .turnin 9171 >>交任务 松脆蜘蛛腿
    .target 大厨师莫迪尔
    .goto Ghostlands,48.43,30.93
    .itemcount 22644,5
step
    #label TranqVisit3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 和 |cRXP_FRIENDLY_拉提斯|r 对话
    .turnin 9139 >>交任务 金雾村
    .target 奥术师范迪瑞尔
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >>接受任务 风行村
    .turnin 9152 >>交任务 托博尔的补给品
    .target 拉提斯·托博尔
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .itemcount 22644,<5
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132492:0|t[塔奎林防御者束带] |cRXP_BUY_从他那里|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target 补给官弗雷迪加
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin/Warrior
    #optional
    #completewith Clearing
    +|cRXP_WARN_装备|r |T132492:0|t[塔奎林防御者束带]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132498:0|t[蝙蝠皮腰带] |cRXP_BUY_从他那里|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target 补给官弗雷迪加
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith Clearing
    +|cRXP_WARN_装备|r |T132498:0|t[蝙蝠皮腰带]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL_SHORT,<5
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹特恩|r 对话
    .turnin 9149 >>交任务 瘟疫海岸
    .target 药剂师雷兹特恩
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan1
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan1
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan1
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹特恩|r 对话
    .turnin 9149 >>交任务 瘟疫海岸
    .target 药剂师雷兹特恩
step
    #optional
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉提尔|r 对话
    .turnin 9155 >>交任务 前往死亡之痕
    .turnin 9156 >>交任务 通缉：纳克雷洛特和卢兹兰
    .target 亡灵哨兵拉提尔
    .isQuestComplete 9156
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉提尔|r 对话
    .turnin 9155 >>交任务 前往死亡之痕
    .target 亡灵哨兵拉提尔
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉菲洛丝夫人|r 对话
    .turnin 9160 >>交任务 调查安达洛斯
    .accept 9163 >>接受任务 深入敌境
    .target 奥莉菲洛丝夫人
step
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔伦|r 对话
    .accept 9173 >>接受任务 夺回风行者之塔
    .target 高级执行官玛尔伦
step
    .goto Ghostlands,44.74,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔特迪斯|r 对话
    .turnin 9192 >>交任务 幽光矿洞的麻烦
    .target 亡灵哨兵玛尔特迪斯
step
    #optional
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴伦尼斯|r 对话
    .turnin 9150 >>交任务 重建历史
    .accept 9151 >>接受任务 太阳圣殿
    .target 魔导师戴伦尼斯
    .xp <17,1
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴伦尼斯|r 对话
    .turnin 9150 >>交任务 重建历史
    .target 魔导师戴伦尼斯
step
    #completewith Clearing
    #optional
    .destroy 22580 >>|cRXP_WARN_摧毁|r |T134137:0|t[晶化法力精华] |cRXP_WARN_，因为它已经不再有任何用途|r
step << Druid
	#completewith DruidTrain2
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业技能 << wotlk
    .train 8925 >>训练你的职业技能 << TBC
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain2
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8938 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <18,1
step << !Druid !Shaman !Warrior
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .train 6761,1 << Rogue
    .zoneskip Silvermoon City
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9404 >>交任务 活动的树木
    .train 3140,1
    .target 指导者安瑟隆
step << !Druid !Shaman !Warrior
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .train 6761,1 << Rogue
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T136058:0|t[开锁]|cRXP_WARN_以便完成后续任务|r
    .turnin 9618 >>交任务 交回报告 << BloodElf
    .accept 10372 >>接受任务 谨慎的询问
    .train 1804 >>训练你的职业技能
    .target 瑟兰尼斯
    .train 1804,1
    .xp <16,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    .turnin 9618 >>交任务 交回报告 << BloodElf
    .target 瑟兰尼斯
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯下去到幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获取幽暗城的飞行路线
    .target 迈克尔·加勒特
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target 刘易斯·瓦伦
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target 刘易斯·瓦伦
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Clearing
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘坐升降梯返回前往银月城方向
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining3
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前去找 |cRXP_FRIENDLY_洛塞兰|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前去找 |cRXP_FRIENDLY_塞伊丹娜|r << Mage
step << Priest
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 8102 >>训练你的职业技能
    .target 洛塞兰
	.xp <16,1
	.xp >18,1
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 970 >>训练你的职业技能
    .target 洛塞兰
    .train 8102,1
	.xp <18,1
step << Mage
    #optional
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 2120 >>训练你的职业技能
    .target 塞伊丹纳
	.xp <16,1
	.xp >18,1
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 3140 >>训练你的职业技能
    .target 塞伊丹纳
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前去找 |cRXP_FRIENDLY_塞兰娜|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r
    .itemcount 3026,1
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r
    .itemcount 3026,<1
step << Hunter
    #optional
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪恩|r 对话
    .train 13795 >>训练你的职业技能 << tbc
    .train 5118 >>训练你的职业技能 << wotlk
    .target 桑迪恩
	.xp <16,1
	.xp >18,1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪恩|r 对话
    .train 14318 >>训练你的职业技能
    .target 桑迪恩
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
step << Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 6222 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 1014 >>训练你的职业技能
    .target 塔莱尼娅
    .xp <18,1
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前去找 |cRXP_FRIENDLY_布拉德瓦罗|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9678 >>交任务 第一项试炼
    .accept 9681 >>接受任务 掌握力量
    .target 骑士领主布拉德瓦罗
step << Paladin
    #optional
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴卡希|r 对话
    .train 647 >>训练你的职业技能
    .target 勇士巴卡希
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴卡希|r 对话
    .train 7294 >>训练你的职业技能 << tbc
    .train 62124 >>训练你的职业技能 << wotlk
    .target 勇士巴卡希
	.xp <16,1
step << Paladin
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cRXP_WARN_从|r 巴卡希|cRXP_FRIENDLY_ 身后的洞口跳下去|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯塔洛|r 对话
    .turnin 9681 >>交任务 掌握力量
    .accept 9684 >>接受任务 驾驭圣光 << wotlk
    .accept 63866 >>接受任务 驾驭圣光 << tbc
    .target 魔导师阿斯塔洛·血誓
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    .goto Silvermoon City,92.61,36.80
    >>对一名 |cRXP_FRIENDLY_魔导师|r 使用 |T134867:0|t[微光容器]
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target 血精灵魔导师
    .use 24157
step << Paladin tbc
    .goto Silvermoon City,92.61,36.80
    >>对|cRXP_FRIENDLY_穆鲁|r 使用 |T134867:0|t[微光容器]
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target 穆鲁
    .use 185956
step << Paladin
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>跑回去，朝 |cRXP_FRIENDLY_布拉德瓦罗|r 方向前进
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9684 >>交任务 驾驭圣光 << wotlk
    .turnin 63866 >>交任务 驾驭圣光 << tbc
    .accept 9685 >>接受任务 救赎死者
    .target 骑士领主布拉德瓦罗
step << Paladin
    #optional
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 647 >>训练你的职业技能
	.target 伊瑟里斯
	.target 欧塞兰
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 7294 >>训练你的职业技能 << tbc
    .train 62124 >>训练你的职业技能 << wotlk
	.target 伊瑟里斯
	.target 欧塞兰
	.xp <16,1
 step << Paladin
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>进入旅店
step << Paladin
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>前去找 |cRXP_FRIENDLY_静刃|r
step << Paladin
    .goto Silvermoon City,80.16,60.24
    >>对 |cRXP_FRIENDLY_静刃|r 使用 |T134723:0|t[装满的微光容器]
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target 血骑士桑利亚斯·静刃
    .use 24184
step
    #optional
    #label SMTraining3
step << Druid
	#completewith DruidTrain1
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
	.xp <14,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 782 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <14,1
    .xp >16,1
step << Druid
    #label DruidTrain1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8925 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <16,1
step << !Shaman !Warrior !Rogue
    #completewith Clearing
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .bindlocation 3488,1
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>离开 银月城
    .zoneskip Ghostlands
    .cooldown item,6948,<0
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉米|r 对话
    .fly Tranquillien >>飞往塔奎林
    .target 葛拉米
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .turnin 10372 >>交任务 谨慎的询问
    .accept 9491 >>接受任务 贪婪
    .target 艾拉兰
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .accept 9491 >>接受任务 贪婪
    .target 艾拉兰
    .isQuestTurnedIn 10372
step
    #loop
    .goto Ghostlands,46.71,40.79,0
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28,40,0
    >>击杀 |cRXP_ENEMY_吸血迷雾蝠|r
    >>|cRXP_WARN_注意它们的|r |T136130:0|t[吸血之触] |cRXP_WARN_生命偷取法术|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob 吸血迷雾蝠
step
    #completewith next
    .subzone 3506 >>前往安迪林庄园
step
    #label Clearing
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔伊|r 对话
    .accept 9281 >>接受任务 清除路障
    .target 学徒沃尔伊
step
    #xprate <1.5
    #completewith SpireT
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r. 拾取 |cRXP_ENEMY_巨型纺丝蜘蛛|r 以获得|cRXP_LOOT_蜘蛛腿|r
    >>|cRXP_WARN_注意，由于等级差距，这些怪物可能比较难对付|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r
    >>|cRXP_WARN_注意，由于等级差距，这些怪物可能比较难对付|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .isQuestTurnedIn 9171
step
    #xprate >1.49
    #completewith SpireT
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r. 拾取 |cRXP_ENEMY_巨型纺丝蜘蛛|r 以获得|cRXP_LOOT_蜘蛛腿|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #xprate >1.49
    #completewith SpireT
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .isQuestTurnedIn 9171
step
    #completewith SpireT01
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_卢兹兰|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .mob 卢兹兰
step
    #xprate >1.49
    #completewith SpireT01
    >>击杀 |cRXP_ENEMY_复生的游荡者|r。拾取他们的 |cRXP_LOOT_腐烂精华|r
    >>击杀 |cRXP_ENEMY_凶骨哨兵|r 和 |cRXP_ENEMY_亡骨巫师|r。拾取他们的 |cRXP_LOOT_脊骨之尘|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_恐骨哨兵|r 会释放|r |T132357:0|t[盾击] |cRXP_WARN_(打断)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob 复生的游荡者
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob 凶骨哨兵
    .mob 亡骨巫师
step
    #label SpireT01
    .goto Ghostlands,34.06,57.57,80 >>穿过死亡之痕
    .isOnQuest 9173
step
    #completewith SpireT
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob 纳克雷洛特
step
    #label SpireT
    .goto Ghostlands,17.21,58.09,80 >>前往风行者塔
    .isOnQuest 9173
step
    #completewith next
    >>拾取|cRXP_ENEMY_堕落游侠|r 和 |cRXP_ENEMY_戴索姆侍僧|r 以获得|T133303:0|t[|cRXP_LOOT_女王的项链|r]
    >>|cRXP_WARN_使用 |T133303:0|t[|cRXP_LOOT_女王的项链|r] 以开启任务|r
    .collect 22597,1,9175 --Collect The Lady's Necklace (x1)
    .accept 9175 >>接受任务 女王的项链
    .use 22597
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>击杀 |cRXP_ENEMY_堕落游侠|r 和 |cRXP_ENEMY_戴索姆侍僧|r
    >>|cRXP_WARN_注意，这些怪物比较难对付|r
    .complete 9173,1 --Deatholme Acolyte (8)
    .mob 戴索姆侍僧
    .complete 9173,2 --Fallen Ranger (10)
    .mob 堕落游侠
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>击杀|cRXP_ENEMY_堕落游侠|r 和 |cRXP_ENEMY_戴索姆侍僧|r .拾取他们以获得|T133303:0|t[|cRXP_LOOT_女王的项链|r]
    >>|cRXP_WARN_使用 |T133303:0|t[|cRXP_LOOT_女王的项链|r] 以开启任务|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >>接受任务 女王的项链
    .use 22597
step
    #completewith next
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>如果你能找到队伍带你完成，击杀 |cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob 纳克雷洛特
step
    #loop
    .goto Ghostlands,20.37,48.76,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    .goto Ghostlands,21.10,47.74,30,0
    .goto Ghostlands,19.58,45.15,45,0
    .goto Ghostlands,21.99,43.70,30,0
    .goto Ghostlands,20.01,40.51,30,0
    .goto Ghostlands,18.38,42.74,30,0
    .goto Ghostlands,15.89,42.54,30,0
    .goto Ghostlands,16.93,46.43,30,0
    .goto Ghostlands,16.46,48.48,30,0
    .goto Ghostlands,18.20,53.81,30,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    >>击杀 |cRXP_ENEMY_幻影搜寻者|r 和 |cRXP_ENEMY_石翼屠杀者|r。拾取他们的 |cRXP_LOOT_幻影灵质|r 和 |cRXP_LOOT_石像鬼碎片|r
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .mob 幻影搜寻者
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
    .mob 石翼屠杀者
step
    #completewith next
    .cast 7840 >>|cRXP_WARN_在水中使用|r |T134754:0|t[速游药水]|cRXP_WARN_以更快地游过去|r
    .use 6372
    .itemcount 6372,1
step
    >>拾取地上的 |cRXP_PICK_暗夜精灵计划|r，它们可能在帐篷内或桌子上
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.80,25.09,8,0
    .goto Ghostlands,12.54,24.81,8,0
    .goto Ghostlands,12.85,23.93
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
    .goto Ghostlands,14.77,26.61,8,0
    .goto Ghostlands,13.70,26.83,8,0
    .goto Ghostlands,12.53,26.51
step
    #completewith next
    .goto Ghostlands,10.13,23.77,12,0
    .goto Ghostlands,10.12,23.04,12,0
    .goto Ghostlands,10.44,22.58,12 >>跑到船的顶部
step
    .goto Ghostlands,10.44,22.58
    >>拾取桌上的 |cRXP_PICK_暗夜精灵计划书|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_达纳苏斯女猎手|r 会施放 |r|T132282:0|t[重击]|cRXP_WARN_(瞬发攻击，造成双倍伤害)|r
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step << Priest/Druid/Rogue/Paladin
    #xprate <1.5
    #loop
	.goto Ghostlands,14.71,26.66,0
	.goto Ghostlands,14.71,26.66,30,0
	.goto Ghostlands,13.06,26.15,30,0
	.goto Ghostlands,11.63,26.63,30,0
	.goto Ghostlands,12.51,24.81,30,0
	.goto Ghostlands,9.43,23.77,30,0
	.goto Ghostlands,10.47,22.51,30,0
    .xp 15+10600 >>刷怪达到10600+/13600经验
step
    #optional
    #softcore
    #completewith WindrunnerV
    .deathskip >>死亡并在灵魂医者处复活
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step
    #completewith WindrunnerV
    .hs >>炉石返回塔奎林，幽魂之地
    .cooldown item,6948,>0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith WindrunnerV
    .subzone 3488 >>前往塔奎林
    .cooldown item,6948,<0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
step
    #completewith WindrunnerV
    .cast 7840 >>|cRXP_WARN_在水中使用|r |T134754:0|t[速游药水]|cRXP_WARN_以更快地游回去|r
    .use 6372
    .itemcount 6372,1
    .cooldown item,6948,<0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与  |cRXP_FRIENDLY_莫迪尔|r 和 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .accept 9171 >>接受任务 松脆蜘蛛腿
    .turnin 9171 >>交任务 松脆蜘蛛腿
    .target 大厨师莫迪尔
    .goto Ghostlands,48.43,30.93
    .turnin 9140 >>交任务 风行村
    .target 奥术师范迪瑞尔
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,>0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 和 |cRXP_FRIENDLY_莫迪尔|r 对话
    .turnin 9140 >>交任务 风行村
    .target 奥术师范迪瑞尔
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9171 >>接受任务 松脆蜘蛛腿
    .turnin 9171 >>交任务 松脆蜘蛛腿
    .target 大厨师莫迪尔
    .goto Ghostlands,48.43,30.93
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,<0
step
    #label WindrunnerV
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范迪瑞尔|r 对话
    .turnin 9140 >>交任务 风行村
    .target 奥术师范迪瑞尔
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴伦尼斯|r 对话
    .accept 9151 >>接受任务 太阳圣殿
    .target 魔导师戴伦尼斯
    .xp <17,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莉菲洛丝夫人|r 和 |cRXP_FRIENDLY_玛尔伦|r 对话
    .turnin 9163 >>交任务 深入敌境
    .accept 9166 >>接受任务 返回安泰拉斯
    .target 奥莉菲洛丝夫人
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .turnin 9173 >>交任务 夺回风行者之塔
    .turnin 9175 >>交任务 女王的项链
    .accept 9177 >>接受任务 幽暗城之旅 << !BloodElf
    .accept 9180 >>接受任务 幽暗城之旅 << BloodElf
    .target 高级执行官玛尔伦
    .goto Ghostlands,44.77,32.44
step
    #optional
    .xp 16 >>刷怪升级到16级
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .zoneskip Silvermoon City
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith SMTraining4
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Rogue
    #optional
    .abandon 9491 >>放弃任务 贪婪
    .isQuestAvailable 10372
step << Rogue
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前去找 |cRXP_FRIENDLY_瑟兰尼斯|r
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T136058:0|t[开锁]|cRXP_WARN_以便完成后续任务|r
    .turnin 9618 >>交任务 交回报告 << BloodElf
    .accept 10372 >>接受任务 谨慎的询问
    .train 1804 >>训练你的职业技能
    .target 瑟兰尼斯
    .train 1804,1
step << Rogue
    #completewith Scimitars2
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Scimitars2
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯下去到幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买2把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target 刘易斯·瓦伦
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Scimitars2
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_刘易斯|r 对话
    >>|cRXP_BUY_购买1把|r |T135343:0|t[战士阔剑] |cRXP_BUY_从他那里|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target 刘易斯·瓦伦
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘坐升降梯返回前往银月城方向
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>使用|cRXP_PICK_传送宝珠|r前往银月城
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining4
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前去找 |cRXP_FRIENDLY_洛塞兰|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前去找 |cRXP_FRIENDLY_塞伊丹娜|r << Mage
step << Priest
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 8102 >>训练你的职业技能
    .target 洛塞兰
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 2120 >>训练你的职业技能
    .target 塞伊丹纳
step << Priest
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    >>|cRXP_BUY_从拍卖行购买1根|r |T135144:0|t[强效魔法杖] |cRXP_BUY_如果它便宜|r
    >>|cRXP_WARN_如果价格都太贵，可以跳过此步骤|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target 维纳 <拍卖师>
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .zoneskip Silvermoon City,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前去找 |cRXP_FRIENDLY_塞兰娜|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r
    .itemcount 3026,<1
step << Hunter
    #optional
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪恩|r 对话
    .train 13795 >>训练你的职业技能 << tbc
    .train 5118 >>训练你的职业技能 << wotlk
    .target 桑迪恩
	.xp <16,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
    .zoneskip Silvermoon City,1
step << Warlock
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托利安|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[牺牲魔典]|cRXP_BUY_和|r |T133738:0|t[吞噬暗影魔典]|cRXP_BUY_|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target 欧玛利·萨普纳波
    .train 20381,1
step << Warlock TBC
    #optional
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托利安|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[牺牲魔典]|cRXP_BUY_从他那里|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .target 灼烧小鬼
    .train 20381,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[牺牲魔典]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
step << Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 6222 >>训练你的职业技能
    .target 塔莱尼娅
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前去找 |cRXP_FRIENDLY_布拉德瓦罗|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9685 >>交任务 救赎死者
    .target 骑士领主布拉德瓦罗
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 7294 >>训练你的职业技能 << tbc
    .train 62124 >>训练你的职业技能 << wotlk
	.target 伊瑟里斯
	.target 欧塞兰
step
    #optional
    #label SMTraining4
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>现在你应该找个队伍去怒焰裂谷了
    .dungeon RFC
step
    #completewith UCPortRFC
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .dungeon RFC
step
    #completewith UCPortRFC
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .dungeon RFC
step
    #label UCPortRFC
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 前往幽暗城
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith RFCPowerPickup
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯下去到幽暗城
    .dungeon RFC
step
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>进入皇家区
    .dungeon RFC
step
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .accept 5725 >>接受任务《物归己用》 毁灭之力
    .target 瓦里玛萨斯
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith Durotar
    .zone Tirisfal Glades >>Take the elevator back to the upper 等级 离开幽暗城
    .dungeon RFC
step
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>登上飞艇塔
    .zone Durotar >>乘坐飞艇前往杜隆塔尔
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith EnterRFC
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>进入奥格瑞玛
    .dungeon RFC
step << !Troll !Orc
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多拉斯|r 对话
    .fp Orgrimmar >>获取奥格瑞玛飞行点
    .target 多拉斯
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r
    .accept 5726 >>接受任务 隐藏的敌人
    .target 萨尔
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>离开 奥格瑞玛
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r 小怪，直到掉落|cRXP_LOOT_军官的徽章|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5726 >>交任务 隐藏的敌人
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5727 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5726
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .accept 5761 >>接受任务《物归己用》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target 尼尔鲁·火刃
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5727 >>交任务 隐藏的敌人
    .accept 5728 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5728 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_销毁|r |T134417:0|t[军官的徽章] |cRXP_WARN_因为你不再需要它|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >>进入 RFC Instance portal. Zone in
    .dungeon RFC
step
    >>|cRXP_WARN_如果可能，让队友共享以下任务|r
    >>|cRXP_WARN_Skip this step if nobody has these quests|r
    .accept 5722 >>接受任务 寻找背包
    .accept 5723 >>接受任务 试探敌人
    .dungeon RFC
step
    #completewith next
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .turnin 5722 >>交任务 寻找背包
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茂尔|r 对话
    .accept 5724 >>接受任务 归还背包
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>击杀|cRXP_ENEMY_怒焰穴居怪|r和|cRXP_ENEMY_怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step
    >>击杀|cRXP_ENEMY_饥饿者塔拉加曼|r，拾取|cRXP_LOOT_心|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>击杀|cRXP_ENEMY_巴扎兰|r和|cRXP_ENEMY_召唤者耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>击杀 |cRXP_ENEMY_燃刃信徒|r and |cRXP_ENEMY_燃刃术士|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob 燃刃信徒
    .mob 燃刃术士
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5761 >>交任务《 前往熔光镇》 饥饿者塔拉加曼
    .target 尼尔鲁·火刃
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5728 >>交任务 隐藏的敌人
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 5729 >>接受任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔鲁·火刃|r 对话
    .turnin 5729 >>交任务 隐藏的敌人
    .accept 5730 >>接受任务 隐藏的敌人
    .target 尼尔鲁·火刃
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 5730 >>交任务 隐藏的敌人
    .target 萨尔
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Druid
	#completewith DruidTrain3
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 783 >>训练你的职业技能 << wotlk
    .train 8925 >>训练你的职业技能 << TBC
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain3
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8938 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <18,1
step
    .hs >>炉石返回塔奎林，幽魂之地
    .cooldown item,6948,>0
    .zoneskip Ghostlands
    .bindlocation 3488,1
    .zoneskip Ghostlands
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南（部落版）
<< Horde
#name 16-20 幽魂之地
#defaultfor !Shaman
#version 7
#subgroup RestedXP 部落 1-30级
#next 20-23 Stonetalon/The Barrens

step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132492:0|t[塔奎林防御者束带] |cRXP_BUY_从他那里|r
    .collect 28162,1,9276,1 --Collect Tranquillien Defender's Girdle (1)
    .target 补给官弗雷迪加
    .itemStat 7,LEVEL,<11
    .reputation 922,honored,<0,1
step << Paladin/Warrior
    #optional
    #completewith Enclave2
    +|cRXP_WARN_装备|r |T132492:0|t[塔奎林防御者束带]
    .use 28162
    .itemcount 28162,1
    .itemStat 7,LEVEL,<11
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132498:0|t[蝙蝠皮腰带] |cRXP_BUY_从他那里|r
    .collect 28158,1,9276,1 --Collect Batskin Belt (1)
    .target 补给官弗雷迪加
    .reputation 922,honored,<0,1
    .itemStat 7,LEVEL,<11
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith Enclave2
    +|cRXP_WARN_装备|r |T132498:0|t[蝙蝠皮腰带]
    .use 28158
    .itemcount 28158,1
    .itemStat 7,LEVEL,<11
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132660:0|t[药剂师的长袍] |cRXP_BUY_从他那里|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target 补给官弗雷迪加
    .reputation 922,revered,<0,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132716:0|t[死亡猎手外套] |cRXP_BUY_从他那里|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target 补给官弗雷迪加
    .reputation 922,revered,<0,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132660:0|t[药剂师的长袍]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132716:0|t[死亡猎手外套]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .turnin 10372 >>交任务 谨慎的询问
    .accept 9491 >>接受任务 贪婪
    .target 艾拉兰
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .accept 9491 >>接受任务 贪婪
    .target 艾拉兰
    .isQuestTurnedIn 10372
step << Rogue wotlk
    #completewith Enclave2
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 艾拉兰
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan3
    #completewith Enclave2
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] 和|T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan3
    #completewith Enclave2
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan3
    #completewith Enclave2
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>前往太阳圣殿
step
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奎尔林提斯|r 和 |cRXP_FRIENDLY_坎迪瑞斯|r 对话
    .turnin 9207 >>交任务 幽光矿石样本
    .target 魔导师奎尔林提斯
    .goto Ghostlands,54.95,48.49
    .accept 9282 >>接受任务 远行者营地
    .target 魔导师坎迪瑞斯
    .goto Ghostlands,55.07,48.83
step
    #optional
    #completewith Enclave2
    .destroy 22634 >>|cRXP_WARN_摧毁|r |T134575:0|t[幽光矿石] |cRXP_WARN_，因为已经不再有任何用途|r
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 对话
    .turnin 9151 >>交任务 太阳圣殿
    .accept 9220 >>接受任务 戴索姆之战
    .target 魔导师伊东尼斯
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 对话
    .accept 9220 >>接受任务 戴索姆之战
    .target 魔导师伊东尼斯
    .isQuestTurnedIn 9151
step
    #completewith next
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,57.04,45.01,40,0
    .goto Ghostlands,60.07,42.43,40,0
    .goto Ghostlands,60.29,35.63,40 >>前去找 |cRXP_FRIENDLY_塞拉斯托|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉斯托|r 对话
    .turnin 9166 >>交任务 返回安泰拉斯
    .accept 9169 >>接受任务 关闭安欧维恩
    .target 魔导师塞拉斯托
step
    #completewith Enclave2
    .subzone 3496 >>前往远行者聚居地
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳瑞娜|r 对话
    >>|cRXP_BUY_购买1吧|r |T135346:0|t[强化弓] |cRXP_BUY_和|r |T132382:0|t[锋利的箭] |cRXP_BUY_从她那里|r
    .collect 3026,1,9276,1 --Reinforced Bow (1)
    .collect 2515,2000,9276,1 << Hunter --Sharp Arrow (2000)
    .target 纳瑞娜
    .money <0.4101 << BloodElf
    .money <0.4312 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳瑞娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[强化弓] |cRXP_BUY_从她那里|r
    .collect 3026,1,9276,1 --Reinforced Bow (1)
    .target 纳瑞娜
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳瑞娜|r 对话
    >>|cRXP_BUY_从她那里|r购买|cRXP_BUY_ |T132382:0|t[锋利的箭]|r
    .collect 2515,2000,9276,1 << Hunter --Sharp Arrow (2000)
    .target 纳瑞娜
    .money <0.0480 << BloodElf
    .money <0.0500 << Troll/Orc
step
    #label Enclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞蒂娜|r, |cRXP_FRIENDLY_索兰纳斯|r, |cRXP_FRIENDLY_克雷安|r 和 |cRXP_FRIENDLY_赫利俄斯|r 对话
    .turnin 9159 >>交任务 控制瘟疫
    .target 远行者塞蒂娜
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接受任务 进攻塞布提拉
    .target 远行者索兰娜
    .goto Ghostlands,72.33,31.24
    .turnin 9274 >>交任务 水中鬼魂
    .target 游侠克雷安
    .goto Ghostlands,72.21,29.78
    .turnin 9146 >>交任务 向赫里奥斯中尉报到
    .accept 9214 >>接受任务 暗松巨魔的武器
    .target 赫里奥斯中尉
    .goto Ghostlands,72.37,29.64
step
    #optional
    .abandon 9274 >>放弃任务 水中鬼魂
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>沿东侧坡道向上走
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温努图斯|r 对话
    .accept 9275 >>接受任务 香料
    .target 药剂师温努图斯
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>沿西侧坡道向上走
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    .turnin 9282 >>交任务 远行者营地
    .accept 9161 >>接受任务 叛徒之影
    .target 游侠维恩娜
step
    #completewith TrollR1
    >>击杀 |cRXP_ENEMY_木乃伊猎头者|r 和 |cRXP_ENEMY_暗松先知|r。拾取他们的 |cRXP_LOOT_巨魔的邪符|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob 木乃伊猎头者
    .mob 暗松先知
    .isOnQuest 9199
step
    .goto Ghostlands,68.08,29.39,50,0
    .goto Ghostlands,66.24,28.55,12 >>进入地下墓穴
    .isOnQuest 9199
step << Rogue
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>在地下墓穴内，对地上的 |cRXP_PICK_埋葬箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_金戒指|r
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    .skill lockpicking,18 >>将你的 |T136058:0|t[开锁] 技能提升到 18 级
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
    .skill lockpicking,18,1
step << !Rogue
    #completewith next
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,62.91,30.75,12,0
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,62.91,31.77
    >>跑进篝火房间
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label TrollR1
    #loop
	.goto Ghostlands,62.60,31.00,0
	.goto Ghostlands,62.60,31.00,12,0
	.goto Ghostlands,62.41,31.34,12,0
	.goto Ghostlands,62.32,31.81,12,0
	.goto Ghostlands,62.41,32.23,12,0
	.goto Ghostlands,62.63,32.56,12,0
	.goto Ghostlands,63.22,32.55,12,0
	.goto Ghostlands,63.44,32.18,12,0
	.goto Ghostlands,63.50,31.74,12,0
	.goto Ghostlands,63.43,31.29,12,0
	.goto Ghostlands,63.21,30.98,12,0
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    >>|cRXP_WARN_先不要与|r |cRXP_FRIENDLY_莉拉恩萨|r |cRXP_WARN_对话|r
    >>|cRXP_WARN_如果篝火房间里已经没有遗骸了，就检查主房间|r
    .complete 9193,1,8 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,63.35,29.57,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    >>击杀 |cRXP_ENEMY_木乃伊猎头者|r 和 |cRXP_ENEMY_暗松先知|r。拾取他们的 |cRXP_LOOT_巨魔的邪符|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob 木乃伊猎头者
    .mob 暗松先知
    .isOnQuest 9199
step
    .goto Ghostlands,62.93,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉拉恩萨|r 对话开始护送任务
    .accept 9212,1 >>接受任务 逃离墓穴
    .target 游侠莉拉恩萨
step
    #completewith TrollR
    >>击杀 |cRXP_ENEMY_木乃伊猎头者|r 和 |cRXP_ENEMY_暗松先知|r。拾取他们的 |cRXP_LOOT_巨魔的邪符|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob 木乃伊猎头者
    .mob 暗松先知
step << Rogue
    #label PittedG
    #completewith Lilatha
    >>在地下墓穴内，对地上的 |cRXP_PICK_埋葬箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_陪葬的金戒指|r
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    >>|cRXP_WARN_务必在离开地下墓穴之前完成这一步|r
    .skill lockpicking,20 >>将你的 |T136058:0|t[开锁] 技能提升到20级
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #requires PittedG
    #completewith Lilatha
    >>在等待 |cRXP_WARN_|r莉拉恩萨|cRXP_PICK_|r 时，对地下墓穴内地上的 |cRXP_WARN_|r埋葬箱|cRXP_FRIENDLY_|r使用 |T136058:0|t[开锁]|cRXP_WARN_。这些箱子可能包含食物、药水和投掷匕首|r
step << !Rogue
    #completewith Lilatha
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    >>|cRXP_WARN_务必在离开地下墓穴之前完成这一步|r
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Paladin/Druid/Priest
    #completewith Lilatha
    .cast 19834 >>给 |cRXP_FRIENDLY_莉拉恩萨|r 施加 |T135906:0|t[力量祝福] << Paladin
    .cast 5232 >>给 |cRXP_FRIENDLY_莉拉恩萨|r 施加 |T136078:0|t[野性印记] << Druid
    .cast 1244 >>给 |cRXP_FRIENDLY_莉拉恩萨|r 施加 |T135987:0|t[真言术：韧] << Priest
    .target 游侠莉拉恩萨
step
    #label Lilatha
    >>|cRXP_WARN_护送|r |cRXP_FRIENDLY_莉拉恩萨|r
    >>|cRXP_WARN_离开地下墓穴后，大约 60 码处，|cRXP_ENEMY_Lilatha|r 会触发刷新一个 |cRXP_ENEMY_暗松先知|r 和一个 |cRXP_FRIENDLY_木乃伊猎头者|r|r
    .goto Ghostlands,67.93,28.98,40,0
    .goto Ghostlands,71.09,32.01,40,0
    .goto Ghostlands,72.24,30.10
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
    .target 游侠莉拉恩萨
step << Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>在地下墓穴内，对地上的 |cRXP_PICK_埋葬箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_陪葬的金戒指|r
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    .skill lockpicking,20 >>将你的 |T136058:0|t[开锁] 技能提升到20级
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step << !Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>点击地上的 |cRXP_PICK_木乃伊巨魔遗骸|r将其焚烧
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>击杀 |cRXP_ENEMY_木乃伊猎头者|r 和 |cRXP_ENEMY_暗松先知|r。拾取他们的 |cRXP_LOOT_巨魔的邪符|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob 木乃伊猎头者
    .mob 暗松先知
step << Rogue
    #optional
    #completewith SadT
    +|cRXP_WARN_装备|r |T135427:0|t[大飞刀]
    .use 25874
    .itemcount 25874,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.0 << wotlk
step
    .goto Ghostlands,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫利俄斯|r 对话
    .turnin 9212 >>交任务 逃离墓穴
    .target 赫里奥斯中尉
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[牺牲魔典] 和 |T133738:0|t[吞噬暗影魔典]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[牺牲魔典]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[吞噬暗影魔典]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Rogue
    #completewith SadT
    .hs >>炉石返回塔奎林，幽魂之地
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔文|r 和 |cRXP_FRIENDLY_玛尔特迪斯|r 对话
    .turnin 9193 >>交任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务 巨魔的邪符
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 艾拉兰
    .xp <19,1
step << Rogue
    #label SadT
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .turnin 9491 >>交任务 贪婪
    .accept 10548 >>接受任务 悲伤的事实
    .target 艾拉兰
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    .accept 10548 >>接受任务 悲伤的事实
    .target 艾拉兰
    .isQuestTurnedIn 9491
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan4
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .goto Ghostlands,78.82,19.81,15,0
    .goto Ghostlands,80.04,20.58,10,0
    .goto Ghostlands,80.27,19.82,10,0
    .goto Ghostlands,79.88,18.97,10,0
    .goto Ghostlands,79.63,18.58,10,0
    .goto Ghostlands,79.63,17.57,10 >>前往建筑的顶层
step
    .goto Ghostlands,79.63,17.57
    >>点击地上的 |cRXP_PICK_书|r
    .turnin 9161 >>交任务 叛徒之影
    .accept 9162 >>接受任务 往日的线索
step << Rogue
    #completewith next
    >>在废墟附近，对地上的 |cRXP_PICK_原始箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_考古学家的缩小头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,74.73,43.27,0
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27,40,0
    >>击杀 |cRXP_ENEMY_暗松影法师|r 和 |cRXP_ENEMY_暗松猎头者|r。拾取他们的 |cRXP_LOOT_暗影施法者钉锤|r 和 |cRXP_LOOT_猎头者战斧|r
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .mob 暗松影法师
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .mob 暗松猎头者
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .mob 暗松影法师
    .complete 9214,1 --Collect Headhunter Axe (x3)
    .mob 暗松猎头者
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133970:0|t[羊排]|cRXP_BUY_从他那里|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target 赫尔隆
    .isOnQuest 9276
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔隆|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_购买|r |T133970:0|t[羊排]|cRXP_BUY_从他那里|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target 赫尔隆
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .isOnQuest 9276
    .xp <15,1
    .xp >30,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索兰娜|r 对话
    .turnin 9276 >>交任务 进攻塞布提拉
    .accept 9277 >>接受任务 突袭塞布努瓦
    .goto Ghostlands,72.33,31.24
    .target 远行者索兰娜
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>沿西侧坡道向上走
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    .turnin 9162 >>交任务 往日的线索
    .accept 9172 >>接受任务 向魔导师坎迪瑞斯报到
    .target 游侠维恩娜
step << Rogue
    #completewith KelGash
    >>对地上的 |cRXP_PICK_原始箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_考古学家的缩小头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #completewith KelGash
    .goto Ghostlands,69.63,50.08,50,0
    .goto Ghostlands,69.64,51.43,50,0
    .goto Ghostlands,69.63,52.41,50,0
    .goto Ghostlands,67.54,50.89,50,0
    .goto Ghostlands,65.73,53.82,50,0
    .goto Ghostlands,68.41,54.61,50,0
    >>击杀 |cRXP_ENEMY_暗松驭豹者|r 和 |cRXP_ENEMY_暗松妖术师|r。拾取他们的 |cRXP_LOOT_驭豹者之爪|r 和 |cRXP_LOOT_妖术师法杖|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob 暗松驭豹者
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob 暗松妖术师
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob 暗松驭豹者
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob 暗松妖术师
step
    .goto Ghostlands,67.60,57.98,12,0
    .goto Ghostlands,68.25,57.78
    >>点击|cRXP_PICK_新鲜鱼架|r
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .goto Ghostlands,65.11,66.74
    >>点击|cRXP_PICK_生肉架|r
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .goto Ghostlands,63.04,74.99
    >>点击|cRXP_PICK_熏肉架|r
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step
    #completewith KelGash
    #loop
	.goto Ghostlands,61.16,75.58,0
	.goto Ghostlands,61.16,75.58,50,0
	.goto Ghostlands,60.28,73.66,50,0
	.goto Ghostlands,61.68,71.27,50,0
	.goto Ghostlands,61.81,71.16,50,0
	.goto Ghostlands,61.46,68.82,50,0
	.goto Ghostlands,64.27,73.63,50,0
	.goto Ghostlands,64.34,73.03,50,0
	.goto Ghostlands,61.46,73.38,50,0
	.goto Ghostlands,64.22,73.82,50,0
	.goto Ghostlands,63.93,73.70,50,0
	.goto Ghostlands,63.90,72.99,50,0
	.goto Ghostlands,64.87,70.28,50,0
	.goto Ghostlands,65.31,70.32,50,0
	.goto Ghostlands,64.70,67.70,50,0
	.goto Ghostlands,65.42,66.39,50,0
	.goto Ghostlands,64.66,64.07,50,0
    .xp 18 >>刷怪练级到 18 级
    >>|cRXP_WARN_Hitting 18 is needed in order to solo kill |cRXP_ENEMY_Kel'gash the Wicked|r. You can skip this if you can find a group instead|r
step
    #completewith next
    .goto Ghostlands,65.29,79.31,12,0
    .goto Ghostlands,65.77,79.73,8,0
    .goto Ghostlands,65.93,80.68,8,0
    .goto Ghostlands,65.59,80.72,8 >>上楼
step
    #label KelGash
    .goto Ghostlands,65.29,79.46
    >>击杀 |cRXP_ENEMY_邪恶的克尔加什|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_Dodge |cRXP_ENEMY_Kel'gash the Wicked|r's|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_and|r |T136121:0|t[Shrink] |cRXP_WARN_by LoSing (Line of Sighting) him around the pillar so he cancels each spell. Make sure you have your cooldowns available|r
    >>|cRXP_WARN_如有需要，为他寻找一个队伍|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob 邪恶的克尔加什
    .use 858
    .use 929
    .isOnQuest 9215
step << Rogue
    #completewith next
    .goto Ghostlands,69.63,50.08,40,0
    .goto Ghostlands,69.64,51.43,40,0
    .goto Ghostlands,69.63,52.41,40,0
    .goto Ghostlands,67.54,50.89,40,0
    .goto Ghostlands,65.73,53.82,40,0
    .goto Ghostlands,68.41,54.61,40,0
    >>击杀 |cRXP_ENEMY_暗松驭豹者|r 和 |cRXP_ENEMY_暗松妖术师|r。拾取他们的 |cRXP_LOOT_驭豹者之爪|r 和 |cRXP_LOOT_妖术师法杖|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob 暗松驭豹者
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob 暗松妖术师
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob 暗松驭豹者
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob 暗松妖术师
step << Rogue
    #loop
    .goto Ghostlands,61.16,75.58,0
    .goto Ghostlands,61.16,75.58,10,0
    .goto Ghostlands,60.28,73.66,10,0
    .goto Ghostlands,61.68,71.27,10,0
    .goto Ghostlands,61.81,71.16,10,0
    .goto Ghostlands,61.46,68.82,10,0
    .goto Ghostlands,64.27,73.63,10,0
    .goto Ghostlands,64.34,73.03,8,0
    .goto Ghostlands,61.46,73.38,10,0
    .goto Ghostlands,64.22,73.82,8,0
    .goto Ghostlands,63.93,73.70,8,0
    .goto Ghostlands,63.90,72.99,10,0
    .goto Ghostlands,64.87,70.28,10,0
    .goto Ghostlands,65.31,70.32,10,0
    .goto Ghostlands,64.70,67.70,10,0
    .goto Ghostlands,65.42,66.39,10,0
    .goto Ghostlands,64.66,64.07,10,0
    >>在废墟附近，对地上的 |cRXP_PICK_原始箱|r使用 |T136058:0|t[开锁]，并拾取其中的 |cRXP_LOOT_考古学家的缩小头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,61.23,75.22,0
    .goto Ghostlands,61.23,75.22,40,0
    .goto Ghostlands,61.50,71.88,40,0
    .goto Ghostlands,61.76,67.88,40,0
    .goto Ghostlands,63.70,64.30,40,0
    .goto Ghostlands,65.33,66.10,40,0
    .goto Ghostlands,64.67,67.30,40,0
    .goto Ghostlands,65.10,70.20,40,0
    .goto Ghostlands,63.84,73.07,40,0
    .goto Ghostlands,63.04,74.16,40,0
    .goto Ghostlands,64.51,77.99,40,0
    >>击杀 |cRXP_ENEMY_暗松驭豹者|r 和 |cRXP_ENEMY_暗松妖术师|r。拾取他们的 |cRXP_LOOT_驭豹者之爪|r 和 |cRXP_LOOT_妖术师法杖|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob 暗松驭豹者
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob 暗松妖术师
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob 暗松驭豹者
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob 暗松妖术师
step
    #loop
	.goto Ghostlands,57.70,67.55,0
	.goto Ghostlands,57.70,67.55,30,0
	.goto Ghostlands,58.19,67.07,30,0
	.goto Ghostlands,58.89,65.55,30,0
	.goto Ghostlands,58.37,62.88,30,0
	.goto Ghostlands,57.24,63.00,30,0
	.goto Ghostlands,56.35,65.01,30,0
	.goto Ghostlands,56.49,68.12,30,0
    >>击杀 |cRXP_ENEMY_哨兵部队渗透者|r。拾取他们的 |cRXP_LOOT_控制宝珠|r
    .collect 23191,1,9169,1 --Collect Crystal Controlling Orb (x1)
    .mob 哨兵部队渗透者
step
    .goto Ghostlands,58.18,65.14
    >>点击|cRXP_PICK_月光水晶|r
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
step
    #completewith Enclave4
    .subzone 3496 >>前往远行者聚居地
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索兰娜|r 和 |cRXP_FRIENDLY_赫利俄斯|r 对话
    .turnin 9277 >>交任务 突袭塞布努瓦
    .target 远行者索兰娜
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >>交任务 暗松巨魔的武器
    .turnin 9215 >>交任务 克尔加什的徽记！
    .target 赫里奥斯中尉
    .goto Ghostlands,72.37,29.64
    .isQuestComplete 9215
step
    #label Enclave4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索兰娜|r 和 |cRXP_FRIENDLY_赫利俄斯|r 对话
    .turnin 9277 >>交任务 突袭塞布努瓦
    .target 远行者索兰娜
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >>交任务 暗松巨魔的武器
    .target 赫里奥斯中尉
    .goto Ghostlands,72.37,29.64
step
    #optional
    .abandon 9215 >>放弃任务 克尔加什的徽记
step << Paladin/Rogue/Warrior
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T135275:0|t[精制轻剑]
    .use 23410
    .itemcount 23410,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.2
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>沿东侧坡道向上走
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温努图斯|r 对话
    .turnin 9275 >>交任务 香料
    .target 药剂师温努图斯
step
    #completewith next
    .goto Ghostlands,65.22,38.14,15,0
    .goto Ghostlands,63.85,38.10,15,0
    .goto Ghostlands,60.29,35.63,40 >>前去找 |cRXP_FRIENDLY_塞拉斯托|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉斯托|r 对话
    .turnin 9169 >>交任务 关闭安欧维恩
    .target 魔导师塞拉斯托
step << !Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,45.17,32.37,50 >>返回塔奎林
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,47.67,34.87,40 >>返回塔奎林
    .isQuestAvailable 9151
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 艾拉兰
    .xp <19,1
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .target 艾拉兰
    .isQuestAvailable 9151
step << Rogue
    #optional
    #label Eralan5
    #completewith Truth
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戴伦尼斯|r, |cRXP_FRIENDLY_瓦尔文|r, 和 |cRXP_FRIENDLY_玛尔特迪斯|r 对话
    .accept 9151 >>接受任务 太阳圣殿
    .target 魔导师戴伦尼斯
    .goto Ghostlands,46.02,31.95
    .turnin 9193 >>交任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务 巨魔的邪符
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #label Truth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔文|r 和 |cRXP_FRIENDLY_玛尔特迪斯|r 对话
    .turnin 9193 >>交任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务 巨魔的邪符
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Paladin wotlk
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .xp <20,1
    .zoneskip Silvermoon City
step << Paladin wotlk
    #completewith SMTraining44
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
    .xp <20,1
step << Paladin wotlk
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前去找 |cRXP_FRIENDLY_布拉德瓦罗|r
    .xp <20,1
step << Paladin wotlk
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9685 >>交任务 救赎死者
    .target 骑士领主布拉德瓦罗
    .xp <20,1
step << Paladin wotlk
    #label SMTraining44
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 34769 >>学习 |T136103:0|t[召唤军马]
	.target 伊瑟里斯
	.target 欧塞兰
    .xp <20,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[牺牲魔典] 和 |T133738:0|t[吞噬暗影魔典]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[牺牲魔典]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[吞噬暗影魔典]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Druid
	#completewith DruidTrain5
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 783 >>训练你的职业技能 << wotlk
    .train 8925 >>训练你的职业技能 << TBC
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8938 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrain5
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 6756 >>训练你的职业技能
	.target 洛甘纳尔
    .cooldown item,6948,>0
	.xp <20,1
step << Druid/Paladin wotlk
    #completewith ReportMK
    .hs >>炉石返回塔奎林，幽魂之地
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Paladin wotlk
    #completewith ReportMK
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T136103:0|t[萨拉斯战马] |cRXP_WARN_拖到你的动作条上|r
    .cast 34769 >>召唤你的 |T136103:0|t[萨拉斯战马]
    .train 34769,3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132660:0|t[药剂师的长袍] |cRXP_BUY_从他那里|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target 补给官弗雷迪加
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132716:0|t[死亡猎手外套] |cRXP_BUY_从他那里|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target 补给官弗雷迪加
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132660:0|t[药剂师的长袍]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132716:0|t[死亡猎手外套]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #completewith next
    .subzone 3493 >>前往太阳圣殿
step
    #label ReportMK
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎迪瑞斯|r 对话
    .turnin 9172 >>交任务 向魔导师坎迪瑞斯报到
    .accept 9176 >>接受任务 通灵双塔
    .goto Ghostlands,55.07,48.83
    .target 魔导师坎迪瑞斯
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 对话
    .turnin 9151 >>交任务 太阳圣殿
    .accept 9220 >>接受任务 戴索姆之战
    .target 魔导师伊东尼斯
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 对话
    .accept 9220 >>接受任务 戴索姆之战
    .target 魔导师伊东尼斯
    .isQuestTurnedIn 9151
step
    #completewith Hearts
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>击杀 |cRXP_ENEMY_纳克雷洛特|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_需要的话还是找个队伍吧，找不到队伍的话就跳过这一步或者单刷它|r
    >>|cRXP_WARN_通过使用 |T136016:0|t[正义之锤号] 打断，避免 |r|cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_的 |r|T135963:0|t[腐蚀毒药] << Paladin
    >>|cRXP_WARN_通过使用 |r|T136016:0|t[踢击] 打断，避免 |cRXP_ENEMY_|r纳克雷洛特|cRXP_WARN_|r 的 |T132219:0|t[腐蚀毒药] << Rogue
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] << Warlock/Priest
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] << Mage
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] << Druid
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] << Shaman
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] << Warrior
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan 纳克雷洛特
step
    #completewith Deatholme1
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>击杀 |cRXP_ENEMY_卢兹兰|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_需要的话还是找个队伍吧，找不到队伍的话就跳过这一步或者单刷它|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] << Warrior
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan 卢兹兰
step
    #completewith next
    .goto Ghostlands,40.57,48.56,12,0
    .goto Ghostlands,40.42,49.40,10 >>进入金字塔神殿内部
step
    .goto Ghostlands,40.37,49.75
    >>在内部拾取 |cRXP_PICK_破旧箱子|r，获得 |cRXP_LOOT_石头|r
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    #completewith next
    .goto Ghostlands,34.34,48.77,12,0
    .goto Ghostlands,34.31,48.03,10 >>进入金字塔神殿内部
step
    #label StoneOL
    .goto Ghostlands,34.30,47.67
    >>在内部拾取 |cRXP_PICK_破旧箱子|r，获得 |cRXP_LOOT_石头|r
    .complete 9176,2 --Collect Stone of Light (x1)
step
    #loop
    .goto Ghostlands,33.22,59.97,0
    .goto Ghostlands,33.22,59.97,60,0
    .goto Ghostlands,27.93,61.91,60,0
    .goto Ghostlands,22.57,60.97,60,0
    .goto Ghostlands,18.75,62.27,60,0
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r. 拾取 |cRXP_ENEMY_巨型纺丝蜘蛛|r 以获得|cRXP_LOOT_蜘蛛腿|r
    >>|cRXP_WARN_注意，由于等级差距，这些怪物可能比较难对付|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #loop
    .goto Ghostlands,33.22,59.97,0
    .goto Ghostlands,33.22,59.97,60,0
    .goto Ghostlands,27.93,61.91,60,0
    .goto Ghostlands,22.57,60.97,60,0
    .goto Ghostlands,18.75,62.27,60,0
    >>击杀 |cRXP_ENEMY_巨型纺丝蜘蛛|r 和 |cRXP_ENEMY_鬼爪破坏者|r
    >>|cRXP_WARN_注意，由于等级差距，这些怪物可能比较难对付|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob 巨型纺丝蜘蛛
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob 鬼爪破坏者
    .isQuestTurnedIn 9171
step
    #label Hearts
    #completewith next
    >>击杀 |cRXP_ENEMY_复生的游荡者|r。拾取他们的 |cRXP_LOOT_腐烂精华|r
    >>击杀 |cRXP_ENEMY_凶骨哨兵|r 和 |cRXP_ENEMY_亡骨巫师|r。拾取他们的 |cRXP_LOOT_脊骨之尘|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_恐骨哨兵|r 会释放|r |T132357:0|t[盾击] |cRXP_WARN_(打断)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob 复生的游荡者
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob 凶骨哨兵
    .mob 亡骨巫师
step
    #label Deatholme1
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >>跑进戴索姆
    .isOnQuest 9220
step << Paladin/Druid/Shaman
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>击杀 |cRXP_ENEMY_达尔坎之眼|r, |cRXP_ENEMY_蛛怪百夫长|r,和 |cRXP_ENEMY_恸哭者|r
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T135949:0|t[Purify] |cRXP_WARN_to remove it|r << Paladin
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Poison] |cRXP_WARN_to remove it|r << Druid
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Toxins] |cRXP_WARN_to remove it|r << Shaman
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob 达尔坎之眼
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob 蛛怪百夫长
    .complete 9220,3 --Kill Wailer (x6)
    .mob 恸哭者
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    #optional << Paladin/Druid/Shaman
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>击杀 |cRXP_ENEMY_达尔坎之眼|r, |cRXP_ENEMY_蛛怪百夫长|r,和 |cRXP_ENEMY_恸哭者|r
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable)|r
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob 达尔坎之眼
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob 蛛怪百夫长
    .complete 9220,3 --Kill Wailer (x6)
    .mob 恸哭者
step
    #completewith RDraught
    .hs >>炉石返回塔奎林，幽魂之地
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith RDraught
    .subzone 3488 >>前往塔奎林
    .cooldown item,6948,<0
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉林|r 对话
    >>|cRXP_BUY_从他那里|r购买|cRXP_BUY_ |T132796:0|t[果汁]|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_购买|r |T132796:0|t[果汁] |cRXP_BUY_和|r |T133978:0|t[多汁的西瓜] |cRXP_BUY_从他那里|r << Paladin
    .collect 1205,20,9170,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,20,9170,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,20,9170,1 << Paladin --Snapvine Watermelon (10)
    .target 旅店老板卡拉林
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .cooldown item,6948,>0
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.43,30.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mouldier|r
    .accept 9171 >>接受任务 松脆蜘蛛腿
    .turnin 9171 >>交任务 松脆蜘蛛腿
    .target 大厨师莫迪尔
    .itemcount 22644,5
    .isQuestAvailable 9171
    .addquestitem 22644,9171
step
    #completewith Aminel
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >>上楼
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9216 >>接受任务 腐烂精华
    .turnin 9216 >>交任务 腐烂精华
    .accept 9218 >>接受任务 脊骨之尘
    .turnin 9218 >>交任务 脊骨之尘
    .target 魔导师艾米妮尔
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9218 >>接受任务 脊骨之尘
    .turnin 9218 >>交任务 脊骨之尘
    .target 魔导师艾米妮尔
    .itemcount 22642,10
step
    #optional
    #label Aminel
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9216 >>接受任务 腐烂精华
    .turnin 9216 >>交任务 腐烂精华
    .target 魔导师艾米妮尔
    .itemcount 22641,10
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132660:0|t[药剂师的长袍] |cRXP_BUY_从他那里|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target 补给官弗雷迪加
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T132716:0|t[死亡猎手外套] |cRXP_BUY_从他那里|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target 补给官弗雷迪加
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132660:0|t[药剂师的长袍]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +|cRXP_WARN_装备|r |T132716:0|t[死亡猎手外套]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step
    #label Truth2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔文|r 和 |cRXP_FRIENDLY_玛尔特迪斯|r 对话
    .turnin 9193 >>交任务 调查阿曼尼墓穴
    .target 顾问瓦尔文
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务 巨魔的邪符
    .target 亡灵哨兵玛尔特迪斯
    .goto Ghostlands,44.74,32.28
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉提尔|r 对话
    .turnin 9156 >>交任务 通缉：纳克雷洛特和卢兹兰
    .target 亡灵哨兵拉提尔
    .isQuestComplete 9156
step << Rogue wotlk
    #completewith Eralan6
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 艾拉兰
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .vendor >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_WARN_保存|r |T135662:0|t[柳叶刀] |cRXP_WARN_稍后任务中你将需要它|r << tbc
    .turnin 10548,1 >>交任务 悲伤的事实 << tbc
    .turnin 10548 >>交任务 悲伤的事实 << wotlk
    .target 艾拉兰
step << Rogue
    #optional
    #label Eralan6
    #completewith Jurion
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>前往太阳圣殿
step
    #label TwinZ
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎迪瑞斯|r 对话
    .turnin 9176 >>交任务 通灵双塔
    .accept 9167 >>接受任务 叛徒的毁灭
    .target 魔导师坎迪瑞斯
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 和 |cRXP_FRIENDLY_亚尼达|r 对话
    .turnin 9220 >>交任务 戴索姆之战
    .accept 9170 >>接受任务 达尔坎的军官
    .target 魔导师伊东尼斯
    .goto Ghostlands,54.87,48.55
    .accept 9877 >>接受任务 疗伤药膏
    .target 奥术师亚尼达
    .goto Ghostlands,54.82,48.35
step
    #completewith next
    .subzone 3488 >>前往塔奎林
step
    #label RDraught
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷兹特恩|r 对话
    .turnin 9877 >>交任务 疗伤药膏
    .accept 9164 >>接受任务 戴索姆的俘虏
    .target 药剂师雷兹特恩
step
    #completewith next
    .subzone 3506 >>前往安迪林庄园
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃尔伊|r 对话
    .turnin 9281 >>交任务 清除路障
    .target 学徒沃尔伊
step
    #completewith Varnis
    .cast 28486 >>|cRXP_WARN_使用|r |T134754:0|t[天灾驱散药膏]
    .use 22779
    .itemcount 22779,1
step
    #completewith Luzran
    >>击杀 |cRXP_ENEMY_复生的游荡者|r。拾取他们的 |cRXP_LOOT_腐烂精华|r
    >>击杀 |cRXP_ENEMY_凶骨哨兵|r 和 |cRXP_ENEMY_亡骨巫师|r。拾取他们的 |cRXP_LOOT_脊骨之尘|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_恐骨哨兵|r 会释放|r |T132357:0|t[盾击] |cRXP_WARN_(打断)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob 复生的游荡者
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob 凶骨哨兵
    .mob 亡骨巫师
step
    #completewith Deatholme1
    >>击杀 |cRXP_ENEMY_卢兹兰|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_需要的话还是找个队伍吧，找不到队伍的话就跳过这一步或者单刷它|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] << Warrior
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan 卢兹兰
step
    #loop
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    .goto Ghostlands,40.58,48.42,50,0
    .goto Ghostlands,40.76,47.73,50,0
    .goto Ghostlands,41.84,46.91,50,0
    .goto Ghostlands,41.49,45.52,50,0
    .goto Ghostlands,39.69,46.64,50,0
    .goto Ghostlands,39.27,47.41,50,0
    .goto Ghostlands,37.53,49.81,50,0
    .goto Ghostlands,36.15,51.63,50,0
    .goto Ghostlands,35.26,52.16,50,0
    .goto Ghostlands,33.69,52.57,50,0
    .goto Ghostlands,31.89,54.85,50,0
    .goto Ghostlands,30.16,55.32,50,0
    .goto Ghostlands,27.71,55.36,50,0
    .goto Ghostlands,25.79,55.11,50,0
    .goto Ghostlands,24.53,53.16,50,0
    .goto Ghostlands,23.79,51.34,50,0
    .goto Ghostlands,22.22,48.11,50,0
    .goto Ghostlands,21.93,46.53,50,0
    .goto Ghostlands,22.05,44.27,50,0
    .goto Ghostlands,22.14,42.83,50,0
    .goto Ghostlands,22.10,40.09,50,0
    .goto Ghostlands,22.66,38.42,50,0
    .goto Ghostlands,23.67,37.62,50,0
    .goto Ghostlands,26.79,37.49,50,0
    .goto Ghostlands,27.94,38.01,50,0
    .goto Ghostlands,29.05,37.85,50,0
    .goto Ghostlands,30.25,36.63,50,0
    .goto Ghostlands,29.87,34.81,50,0
    .goto Ghostlands,27.12,26.04,50,0
    .goto Ghostlands,25.31,15.03,50,0
    .goto Ghostlands,40.58,48.42,50,0
    >>击杀 |cRXP_ENEMY_纳克雷洛特|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_需要的话还是找个队伍吧，找不到队伍的话就跳过这一步或者单刷它|r
    >>|cRXP_WARN_通过使用 |T136016:0|t[正义之锤号] 打断，避免 |r|cRXP_ENEMY_纳克雷洛特|r |cRXP_WARN_的 |r|T135963:0|t[腐蚀毒药] << Paladin
    >>|cRXP_WARN_通过使用 |r|T136016:0|t[踢击] 打断，避免 |cRXP_ENEMY_|r纳克雷洛特|cRXP_WARN_|r 的 |T132219:0|t[腐蚀毒药] << Rogue
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] << Warlock/Priest
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] << Mage
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] << Druid
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] << Shaman
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] << Warrior
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan 纳克雷洛特
step
    #label Luzran
    #loop
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    .goto Ghostlands,34.35,49.33,50,0
    .goto Ghostlands,34.18,50.75,50,0
    .goto Ghostlands,34.27,52.13,50,0
    .goto Ghostlands,35.59,52.11,50,0
    .goto Ghostlands,36.15,51.60,50,0
    .goto Ghostlands,37.01,52.90,50,0
    .goto Ghostlands,37.70,59.57,50,0
    .goto Ghostlands,37.30,63.89,50,0
    .goto Ghostlands,36.97,68.06,50,0
    .goto Ghostlands,36.39,68.31,50,0
    .goto Ghostlands,36.77,65.23,50,0
    .goto Ghostlands,37.87,60.95,50,0
    .goto Ghostlands,38.12,57.42,50,0
    .goto Ghostlands,38.20,53.38,50,0
    .goto Ghostlands,37.93,49.52,50,0
    .goto Ghostlands,37.65,48.77,50,0
    .goto Ghostlands,37.57,44.63,50,0
    .goto Ghostlands,37.95,41.65,50,0
    .goto Ghostlands,38.66,38.08,50,0
    .goto Ghostlands,39.29,33.57,50,0
    .goto Ghostlands,39.64,31.98,50,0
    .goto Ghostlands,34.35,49.33,50,0
    >>击杀 |cRXP_ENEMY_卢兹兰|r。拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_ENEMY_卢兹兰|r |cRXP_WARN_会在流血(西侧)金字塔刷新，沿死亡之痕巡逻，然后返回，直到到达河边|r
    >>|cRXP_WARN_需要的话还是找个队伍吧，找不到队伍的话就跳过这一步或者单刷它|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] << Warrior
    >>|cRXP_WARN_它在附近巡逻，其路线已在你的地图上标出|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan 卢兹兰
step
    #label Hearts2
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    >>击杀 |cRXP_ENEMY_复生的游荡者|r。拾取他们的 |cRXP_LOOT_腐烂精华|r
    >>击杀 |cRXP_ENEMY_凶骨哨兵|r 和 |cRXP_ENEMY_亡骨巫师|r。拾取他们的 |cRXP_LOOT_脊骨之尘|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_恐骨哨兵|r 会释放|r |T132357:0|t[盾击] |cRXP_WARN_(打断)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob 复生的游荡者
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob 凶骨哨兵
    .mob 亡骨巫师
step
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >>跑进戴索姆
    .isOnQuest 9164
step
    #completewith next
    .goto Ghostlands,31.70,73.64,10,0
    .goto Ghostlands,31.78,72.91,10 >>进入地下墓穴内部
step
    #label Jurion
    .goto Ghostlands,32.19,73.08,8,0
    >>击杀 |cRXP_ENEMY_欺诈者尤瑞恩|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地上的 |cRXP_FRIENDLY_恩尼斯|r 对话
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .mob 欺诈者尤瑞恩
    .goto Ghostlands,32.10,74.45,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .target 药剂师恩尼斯
    .goto Ghostlands,32.15,73.95,-1
    .skipgossip
step
    #completewith next
    .goto Ghostlands,32.19,73.08,8,0
    .goto Ghostlands,31.78,72.91,10,0
    .goto Ghostlands,31.70,73.64,10 >>离开地穴
step
    .goto Ghostlands,37.36,79.33
    >>击杀 |cRXP_ENEMY_堕落者米尔杜兰|r
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
    .mob 堕落者米尔杜兰
step
    #completewith Varnis
    .goto Ghostlands,37.51,84.18,30,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,40.98,83.22,15 >>前去找 |cRXP_FRIENDLY_Varnis|r
step
    #completewith next
    .goto Ghostlands,41.24,83.04,15,0
    >>如果|cRXP_ENEMY_瓦尼斯|r身旁刷新了 |cRXP_FRIENDLY_放血者鲍尔古斯|r ，击杀他
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob 放血者鲍尔古斯
step
    #label Varnis
    .goto Ghostlands,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与桌子上的 |cRXP_FRIENDLY_瓦尼斯|r 对话
    .complete 9164,2 --Apprentice Varnis Rescued
    .target 学徒瓦尼斯
    .skipgossip
step
    #completewith next
    .goto Ghostlands,35.24,88.23,15,0
    .goto Ghostlands,35.77,89.13,15,0
    >>在第一个金字塔神殿内查看 |cRXP_ENEMY_黑衣玛索菲特|r，如果他已刷新，则击杀他
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob 黑衣玛索菲特
step
    #completewith Vedoran
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.79,89.93,15 >>前去找 |cRXP_FRIENDLY_维多兰|r
 step
    #completewith next
    >>如果|cRXP_ENEMY_维多兰|r身旁刷新了 |cRXP_FRIENDLY_放血者鲍尔古斯|r ，击杀他
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob 放血者鲍尔古斯
step
    #label Vedoran
    .goto Ghostlands,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与桌子上的 |cRXP_FRIENDLY_维多兰|r 对话
    .complete 9164,3 --Ranger Vedoran Rescued
    .target 游侠维多兰
    .skipgossip
    --TODO: BETA check this step, bugged on pserver
step
    #loop
    .goto Ghostlands,35.77,89.13,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    >>在任意一座金字塔神殿内击杀|cRXP_ENEMY_黑衣玛索菲特|r
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob 黑衣玛索菲特
step
    #loop
    .goto Ghostlands,41.24,83.04,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    >>在任意一座屠宰场内击杀|cRXP_ENEMY_放血者鲍尔古斯|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob 放血者鲍尔古斯
step
    #completewith next
    .goto Ghostlands,32.25,82.18,10,0
    .goto Ghostlands,32.80,82.45,10,0
    .goto Ghostlands,32.65,83.15,8 >>进入中央金字塔神殿，击杀内部所有 |cRXP_ENEMY_达尔坎之眼|r和 |cRXP_ENEMY_死亡之痕死灵法师|r
    .mob 达尔坎之眼
    .mob 戴索姆通灵师
    .isOnQuest 9167
step
    .goto Ghostlands,32.80,82.39,10,0
    .goto Ghostlands,33.04,81.25
    >>在金字塔神殿底部击杀|cRXP_ENEMY_达尔坎·德拉希尔|r
    >>|cRXP_WARN_This quest is very difficult to solo! Find a group for him if possible|r << !Hunter !Warlock
    >>|cRXP_WARN_如有需要，为他寻找一个队伍|r << Hunter Warlock
    >>|cRXP_WARN_通过在金字塔神殿周围拉扯，使其失去视线来躲避 |r|T136118:0|t[腐蚀术]|cRXP_WARN_ 和|r|T136197:0|t[暗影箭]|cRXP_WARN_|r
    >>|cRXP_WARN_确保周围没有其他敌人，以免他对你施放 |r|T136183:0|t[恐惧]|cRXP_WARN_|r 时造成麻烦
    >>|cRXP_WARN_使用 |r|T135738:0|t[吸取法力]|cRXP_WARN_ 将 |r|cRXP_ENEMY_戴索姆通灵师|r|cRXP_WARN_ 拉出房间|r << BloodElf Paladin tbc/BloodElf Rogue tbc
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
    .mob 达尔坎·德拉希尔
step
    #softcore
    #completewith HeroSindorei
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
step
    #hardcore
    #completewith HeroSindorei
    .subzone 3493 >>前往太阳圣殿
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎迪瑞斯|r 对话
    .turnin 9167 >>交任务 叛徒的毁灭
    .accept 9328 >>接受任务 辛多雷的英雄 << BloodElf
    .accept 9811 >>接受任务 辛多雷的朋友 << !BloodElf
    .target 魔导师坎迪瑞斯
    .isQuestComplete 9167
step
    #label HeroSindorei
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坎迪瑞斯|r 对话
    .accept 9328 >>接受任务 辛多雷的英雄 << BloodElf
    .accept 9811 >>接受任务 辛多雷的朋友 << !BloodElf
    .target 魔导师坎迪瑞斯
    .isQuestTurnedIn 9167
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊东尼斯|r 和 |cRXP_FRIENDLY_亚尼达|r 对话
    .turnin 9170 >>交任务 达尔坎的军官
    .target 魔导师伊东尼斯
    .goto Ghostlands,54.87,48.55
    .turnin 9164 >>交任务 戴索姆的俘虏
    .target 奥术师亚尼达
    .goto Ghostlands,54.82,48.35
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    .hs >>炉石返回塔奎林，幽魂之地
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    #completewith next
    .subzone 3488 >>前往塔奎林
    .cooldown item,6948,<0
step
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗雷迪加|r 对话
    >>|cRXP_BUY_购买|r |T133759:0|t[塔奎林勇士披风] |cRXP_BUY_从他那里|r
    .collect 22990,1,496,1 --Collect Tranquillien Champion's Cloak (1)
    .target 补给官弗雷迪加
    .itemStat 15,LEVEL,<21
    .isQuestTurnedIn 9167
step << Rogue wotlk
    #completewith SMTraining5
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 艾拉兰
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135427:0|t[穿喉者] |cRXP_BUY_和|r |T135344:0|t[邪恶军刀] |cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_向她购买|r |T135344:0|t[邪恶军刀]|cRXP_BUY_如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉兰|r 对话
    >>|cRXP_BUY_购买|r |T135427:0|t[穿喉者] |cRXP_BUY_从她那里。如果有货|r
    .vendor 16268 >>把垃圾物品卖给商人
    .target 艾拉兰
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者] |cRXP_WARN_和|r |T135344:0|t[邪恶军刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_装备|r |T135344:0|t[邪恶军刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_装备|r |T135427:0|t[穿喉者]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label KnuLuz
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉提尔|r 对话
    .turnin 9156 >>交任务 通缉：纳克雷洛特和卢兹兰
    .target 亡灵哨兵拉提尔
    .isQuestComplete 9156
step
    #completewith Aminel2
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >>上楼
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9216 >>接受任务 腐烂精华
    .turnin 9216 >>交任务 腐烂精华
    .accept 9218 >>接受任务 脊骨之尘
    .turnin 9218 >>交任务 脊骨之尘
    .target 魔导师艾米妮尔
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9218 >>接受任务 脊骨之尘
    .turnin 9218 >>交任务 脊骨之尘
    .target 魔导师艾米妮尔
    .itemcount 22642,10
step
    #optional
    #label Aminel2
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魔导师艾米妮尔|r 对话
    .accept 9216 >>接受任务 腐烂精华
    .turnin 9216 >>交任务 腐烂精华
    .target 魔导师艾米妮尔
    .itemcount 22641,10
step
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .xp 20 >>刷怪达到20级
step
    #completewith SMTraining5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_日翼|r 对话
    .fly Silvermoon >>飞往银月城
    .target 飞行管理员加尼斯·日翼
    .zoneskip Silvermoon City
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指导者安瑟隆|r 对话
    .turnin 9404 >>交任务 活动的树木
    .target 指导者安瑟隆
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佩拉斯卡米|r 对话
    .skill riding,75 >>从他那里学习 |T136103:0|t[初级骑术]
	.target 佩拉斯卡米
    .money <4.5 << Rogue
    .money <4.693 << !Rogue
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维奈丝特拉|r 对话
    +|cRXP_BUY_从她那里购买你喜欢的任意一只|r |T132228:0|t[陆行鸟] |cRXP_BUY_|r
	.target 维奈丝特拉
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9025 << Rogue
    .money <1.083 << !Rogue
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >>使用 |T132227:0|t[红色陆行鸟] 来学习它
    .use 28927
    .itemcount 28927,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >>使用 |T132229:0|t[蓝色陆行鸟] 来学习它
    .use 29220
    .itemcount 29220,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >>使用 |T132228:0|t[黑色陆行鸟] 来学习它
    .use 29221
    .itemcount 29221,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >>使用 |T132231:0|t[紫色陆行鸟] 来学习它
    .use 29222
    .itemcount 29222,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132227:0|t[红色陆行鸟] |cRXP_WARN_拖到你的动作条上|r
    .cast 34795 >>召唤你的 |T132227:0|t[红色陆行鸟]
    .train 34795,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132229:0|t[蓝色陆行鸟] |cRXP_WARN_拖到你的动作条上|r
    .cast 35020 >>召唤你的 |T132229:0|t[蓝色陆行鸟]
    .train 35020,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132228:0|t[黑色陆行鸟] |cRXP_WARN_拖到你的动作条上|r
    .cast 29221 >>召唤你的 |T132228:0|t[黑色陆行鸟]
    .train 29221,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T132231:0|t[紫色陆行鹰] |cRXP_WARN_拖到你的动作条上|r
    .cast 29222 >>骑乘你的 |T132231:0|t[紫色陆行鹰]
    .train 29222,3
step << Mage/Priest/Warlock/Hunter/Paladin
    #completewith SMTraining5
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>进入 银月城
step << Priest
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维娜|r 对话
    >>|cRXP_BUY_购买1根|r |T135144:0|t[强效魔法杖] |cRXP_BUY_从拍卖行。如果它便宜|r
    >>|cRXP_WARN_如果价格都太贵，可以跳过此步骤|r
    .collect 11288,1,496,1 --Greater Magic Wand
    .target 维纳 <拍卖师>
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #completewith SMTraining5
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前去找 |cRXP_FRIENDLY_洛塞兰|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前去找 |cRXP_FRIENDLY_塞伊丹娜|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛塞兰|r 对话
    .train 7128 >>训练你的职业技能
    .target 洛塞兰
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞伊丹娜|r 对话
    .train 1953 >>训练你的职业技能
    .target 塞伊丹纳
step << Mage
    .goto Silvermoon City,58.07,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳林斯|r 对话
    .train 32272 >>学习 |T135761:0|t[传送：银月城]
    .target 纳林斯
    .money <0.5000
step << Hunter
    #completewith SMTraining5
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前去找 |cRXP_FRIENDLY_桑迪恩|r
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪恩|r 对话
    .train 14282 >>训练你的职业技能
    .target 桑迪恩
 step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞兰娜|r 对话
    >>|cRXP_BUY_购买1把|r |T135489:0|t[重型弯弓] |cRXP_BUY_从她那里|r
    .collect 3027,1,496,1 --Reinforced Bow (1)
    .target 塞兰娜
    .money <0.6032 << BloodElf
    .money <0.6336 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.7
step << Warlock
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入建筑内，然后下楼
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托利安|r 对话
    >>|cRXP_BUY_购买|r |T133738:0|t[折磨魔典 (等级2)]|cRXP_BUY_从他那里|r
    .collect 16346,1,496,1 --Grimoire of Torment Rank 2
    .target 杀死 灵岩巨人
    .train 20317,1
step << Warlock TBC
    #optional
    +使用 |T133738:0|t[折磨魔典（等级 2）]
    .use 16346
    .itemcount 16346,1
    .train 20317,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔莱尼娅|r 对话
    .train 5784 >>学习 |T136103:0|t[召唤地狱战马] << wotlk
    .train 706 >>训练你的职业技能 << tbc
    .target 塔莱尼娅
step << Warlock wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将 |r|T136103:0|t[地狱战马]|cRXP_WARN_ 拖到你的动作条上|r
    .cast 5784 >>骑上你的|T136103:0|t[地狱战马]
    .train 5784,3
step << Paladin wotlk
    #completewith SMTraining5
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,20 >>前去找 |cRXP_FRIENDLY_伊瑟里斯|r 和 |cRXP_FRIENDLY_欧塞兰|r
    .isQuestTurnedIn 9685
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前去找 |cRXP_FRIENDLY_布拉德瓦罗|r
--   .train 647,1 << Paladin tbc
--  .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉德瓦罗|r 对话
    .turnin 9685 >>交任务 救赎死者
    .target 骑士领主布拉德瓦罗
step << Paladin wotlk
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长椅上，以避免走楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瑟里斯|r 或者|cRXP_FRIENDLY_欧塞兰|r 对话
    .train 34769 >>学习 |T136103:0|t[召唤军马]
	.target 伊瑟里斯
	.target 欧塞兰
    .train 34769,1
step << Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将|r |T136103:0|t[萨拉斯战马] |cRXP_WARN_拖到你的动作条上|r
    .cast 34769 >>召唤你的 |T136103:0|t[萨拉斯战马]
    .train 34769,3
step << Rogue
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前去找 |cRXP_FRIENDLY_瑟兰尼斯|r
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[撕裂] |cRXP_WARN_以便完成后续任务|r << tbc
    .accept 10794 >>接受任务 碎手盗贼
    .train 8676 >>学习 |T132282:0|t[伏击] << tbc
    .train 1943 >>学习 |T132302:0|t[撕裂] << tbc
    .train 1943 >>训练你的职业技能 << wotlk
    .target 瑟兰尼斯
    .xp <20,1
    .xp >22,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[撕裂] |cRXP_WARN_以便完成后续任务|r << tbc
    .accept 10794 >>接受任务 碎手盗贼
    .train 8676 >>学习 |T132282:0|t[伏击] << tbc
    .train 1943 >>学习 |T132302:0|t[撕裂] << tbc
    .train 1759 >>训练你的职业技能
    .target 瑟兰尼斯
    .xp <22,1
    .xp >24,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[撕裂] |cRXP_WARN_以便完成后续任务|r << tbc
    .accept 10794 >>接受任务 碎手盗贼
    .train 8676 >>学习 |T132282:0|t[伏击] << tbc
    .train 1943 >>学习 |T132302:0|t[撕裂] << tbc
    .train 6762 >>训练你的职业技能 << wotlk
    .target 瑟兰尼斯
    .xp <24,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟兰尼斯|r 对话
    >>|cRXP_WARN_确保你已经学习了|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[撕裂] |cRXP_WARN_以便完成后续任务|r << tbc
    .accept 10794 >>接受任务 碎手盗贼
    .target 瑟兰尼斯
step << Rogue wotlk
    .goto Silvermoon City,80.47,51.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔莉亚|r 对话
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药]|cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target 达尔莉亚
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈雷尼|r 对话
    .train 8938 >>训练你的职业技能
    .target 哈雷尼·平原行者
	.xp <18,1
	.xp >20,1
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈雷尼|r 对话
    .train 6756 >>训练你的职业技能
    .target 哈雷尼·平原行者
	.xp <20,1
	.xp >22,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈雷尼|r 对话
    .train 8926 >>训练你的职业技能
    .target 哈雷尼·平原行者
	.xp <22,1
step << skip
    .goto Silvermoon City,53.926,71.029
    .turnin 9134 >>交任务 葛拉米
--VV BloodElf Paladin
step << Warlock
    .abandon 10605 >>放弃任务凯伦丁的召唤
step
    #completewith UndercitySM
    .goto Silvermoon City,75.76,58.26,20,0 << Druid
    .goto Silvermoon City,75.35,51.78,30,0 << Druid
    .goto Silvermoon City,79.93,33.54,30,0 << Paladin wotlk
    .goto Silvermoon City,77.32,33.43,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,74.47,36.83,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,63.47,31.98,20,0
    .goto Silvermoon City,57.48,24.49,20,0
    .goto Silvermoon City,53.80,20.23,50 >>前去找 |cRXP_FRIENDLY_洛瑟玛|r
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟玛|r 对话
    .turnin 9328 >>交任务 辛多雷的英雄 << BloodElf
    .accept 9621 >>接受任务 部落的特使 << BloodElf
    .turnin 9811 >>交任务 辛多雷的朋友 << !BloodElf
    .accept 9812 >>接受任务 部落的特使 << !BloodElf
    .target 洛瑟玛·塞隆
    .isOnQuest 9328 << BloodElf
    .isOnQuest 9811 << !BloodElf
step
    #label LorThemar
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛瑟玛|r 对话
    .accept 9621 >>接受任务 部落的特使 << BloodElf
    .accept 9812 >>接受任务 部落的特使 << !BloodElf
    .target 洛瑟玛·塞隆
    .isQuestTurnedIn 9328 << BloodElf
    .isQuestTurnedIn 9811 << !BloodElf
step
    #completewith UndercitySM
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>使用|cRXP_PICK_传送宝珠|r 回到幽暗城
step
    #completewith UndercitySM
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0 << !Undead/!Mage
    .goto Undercity,71.33,44.14,10,0 << Undead Mage
    .goto Undercity,60.07,47.70,10 >>乘电梯下去到幽暗城 << !Undead/!Mage
    .goto Undercity,71.88,40.45,10 >>乘电梯下去到幽暗城 << Undead Mage
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target 迈克尔·加勒特
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >>前去找 |cRXP_FRIENDLY_汉娜|r
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉娜|r 对话
    >>|cRXP_BUY_购买1个|r |T134419:0|t[传送符文]|cRXP_BUY_从她那里|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .money <0.3000 << Troll
    .money <0.2850 << !Troll
    .target 汉娜·阿克雷
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Mortaim|r 对话
    .train 3563 >>学习 |T135766:0|t[传送：幽暗城]
    .money <0.2000 << Troll
    .money <0.1900 << !Troll
    .target 莱克斯顿·莫泰姆
step << Rogue
    .goto Undercity,77.49,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳塔尼尔|r 对话
    >>|cRXP_BUY_购买|r |T135423:0|t[致命的飞斧]|cRXP_BUY_从他那里|r
    .collect 25875,1,496,1 --Deadly Throwing Axe (1)
    .target 纳撒尼尔·斯蒂恩维克
    .itemStat 18,QUALITY,<2
    .isQuestAvailable 496
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135423:0|t[致命的飞斧]
    .use 25875
    .itemcount 25875,1
    .itemStat 18,QUALITY,<2
step
    #completewith UndercitySM
    .goto Undercity,63.84,47.17,5,0 << !Mage
    .goto Undercity,65.50,56.75,20,0 << !Mage
    .goto Undercity,64.42,64.62,20,0 << !Mage
    .goto Undercity,51.88,64.84,20,0
    .goto Undercity,46.28,73.10,15,0
    .goto Undercity,45.31,78.24,15,0
    .goto Undercity,46.18,83.63,15,0
    .goto Undercity,48.80,87.63,15,0
    .goto Undercity,52.45,89.49,15,0
    .goto Undercity,58.06,91.79,20 >>在王室区内前往 |cRXP_FRIENDLY_希尔瓦娜斯|r所在位置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦娜斯|r 和 |cRXP_FRIENDLY_炎伤|r 对话
    .turnin 9621 >>交任务 部落的特使 << BloodElf
    .accept 9626 >>接受任务 面见兽人 << BloodElf
    .turnin 9180 >>交任务 幽暗城之旅 << BloodElf
    .turnin 9812 >>交任务 部落的特使 << !BloodElf
    .accept 9813 >>接受任务 面见兽人 << !BloodElf
    .turnin 9177 >>交任务 幽暗城之旅 << !BloodElf
    .target 希尔瓦娜斯·风行者
    .goto Undercity,58.06,91.79
    .accept 9425 >>接受任务 前往塔伦米尔 << BloodElf
    .target 银月大使欧诺·炎伤 << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isOnQuest 9621 << BloodElf
    .isOnQuest 9812 << !BloodElf
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦娜斯|r 和 |cRXP_FRIENDLY_炎伤|r 对话
    .accept 9626 >>接受任务 面见兽人 << BloodElf
    .turnin 9180 >>交任务 幽暗城之旅 << BloodElf
    .accept 9813 >>接受任务 面见兽人 << !BloodElf
    .turnin 9177 >>交任务 幽暗城之旅 << !BloodElf
    .target 希尔瓦娜斯·风行者
    .goto Undercity,58.06,91.79
    .accept 9425 >>接受任务 前往塔伦米尔 << BloodElf
    .target 银月大使欧诺·炎伤 << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
step
    #optional
    #label UndercitySM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦娜斯|r 和 |cRXP_FRIENDLY_炎伤|r 对话
    .turnin 9177 >>交任务 幽暗城之旅 << !BloodElf
    .turnin 9180 >>交任务 幽暗城之旅 << BloodElf
    .target 希尔瓦娜斯·风行者
    .goto Undercity,58.06,91.79
    .accept 9425 >>接受任务 前往塔伦米尔 << BloodElf
    .target 银月大使欧诺·炎伤 << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    --TODO: Beta check if 9180 turns in properly
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦里玛萨斯|r 对话
    .turnin 5725 >>交任务《 前往熔光镇》 毁灭之力
    .target 瓦里玛萨斯
    .isQuestComplete 5725
    .dungeon RFC
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞希娅|r 对话
    .train 879 >>训练你的职业技能
	.target 塞希娅·黎明玫瑰
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞希娅|r 对话
    .train 19835 >>训练你的职业技能
	.target 塞希娅·黎明玫瑰
    .xp <22,1
    .xp >24,1
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞希娅|r 对话
    .train 5588 >>训练你的职业技能
	.target 塞希娅·黎明玫瑰
    .xp <24,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 845 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <20,1
    .xp >22,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安吉拉|r 对话
    .train 6192 >>训练你的职业技能
    .target 安吉拉·科萨斯
    .xp <22,1
step
    #label SMTraining5
    #optional
    .abandon 9167 >>Abandon The Traitor's Destruction
step
    #optional
    .abandon 9156 >>Abandon Wanted: Knucklerot and Luzran
step
    #label ExitUC
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>离开幽暗城
    .isQuestAvailable 496
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维尔玛|r 对话
    .skill riding,75 >>从她那里学习 |T136103:0|t[初级骑术]
    .target 维尔玛·瓦纳姆
    .money <4.5
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_撒迦利亚|r 对话
    +|cRXP_BUY_从他那里购买你喜欢的任意一只|r |T132264:0|t[骸骨军马]|cRXP_BUY_|r
	.target 撒迦利亚·普斯特
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >>使用 |T132264:0|t[红色骸骨战马] 来学习它
    .use 13331
    .itemcount 13331,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >>使用 |T132264:0|t[蓝色骸骨战马] 来学习它
    .use 13332
    .itemcount 13332,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >>使用 |T132264:0|t[棕色骸骨战马] 来学习它
    .use 13333
    .itemcount 13333,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >>使用 |T132264:0|t[黑色骸骨战马] 来学习它
    .use 46308
    .itemcount 46308,1
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将 |r|T132264:0|t[红色骷髅马]|cRXP_WARN_ 拖到你的动作条上|r
    .cast 17462 >>骑乘你的 |T132264:0|t[红色骸骨战马]
    .train 17462,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将 |r|T132264:0|t[蓝色骷髅马]|cRXP_WARN_ 拖到你的动作条上|r
    .cast 17463 >>骑乘你的 |T132264:0|t[蓝色骸骨战马]
    .train 17463,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将 |r|T132264:0|t[棕色骷髅马]|cRXP_WARN_ 拖到你的动作条上|r
    .cast 17464 >>骑乘你的 |T132264:0|t[棕色骸骨战马]
    .train 17464,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按下"Shift+P"打开坐骑标签页|r
    >>|cRXP_WARN_将 |r|T132264:0|t[黑色骷髅马]|cRXP_WARN_ 拖到你的动作条上|r
    .cast 64977 >>骑乘你的 |T132264:0|t[黑色骸骨战马]
    .train 64977,3
step
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>登上飞艇塔
    .zone Durotar >>乘坐飞艇前往杜隆塔尔
]])
