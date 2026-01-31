if GetLocale() ~= "zhCN" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南(部落版)
<< Horde
#name 直升人物 58-60
#subgroup RestedXP 部落直升 58-60
#defaultfor 58Boost
#next 60-61 地狱火半岛



step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
    .target Grol'dar
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
    .target Ormok
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kardris|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
    .target Kardris Dreamseeker
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
    .target Grezz Ragefist
step << Hunter
    .goto Orgrimmar,67.24,20.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科索祖尔|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
    .target Xor'juul
step << Mage
    .goto Orgrimmar,38.45,86.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪诺|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
	.target Deino
step << Priest
    .goto Orgrimmar,35.73,86.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尤斯|r 对话
    .turnin 64046 >>交任务 新的开始
    .accept 64048 >>接任务 生存工具
	.target Zayus
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kym|r 对话
    .turnin 64047 >>交任务 新的开始
	.accept 64049 >>接任务 生存工具
    .target Kym Wildmane
step << Warrior
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] 并装备 |T133041:0|t[共济战槌]
    .use 186057
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Rogue
    .use 185964 >>Open the |T133651:0|t[艾泽拉斯生存补给包] and equip the |T135357:0|t[共济之刃]
    .use 186061
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Hunter
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] 并装备 |T135130:0|t[共济手杖] and |T135490:0|t[共济之弓]
    .use 186055
    .use 186056
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Mage/Warlock/Priest
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] 并装备 |T135160:0|t[共济法杖]
    .use 186051
    .complete 64048,1 --1/1 Open the Survival Kit (1)
    .complete 64048,2 --1/1 Equip a Weapon (1)
step << Druid
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] and equip the |T135130:0|t[共济手杖]
    .use 186055
    .complete 64049,1 --1/1 Open the Survival Kit (1)
    .complete 64049,2 --1/1 Equip a Weapon (1)
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
    .target Grol'dar
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
    .target Ormok
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
    .target Kardris Dreamseeker
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
    .target Grezz Ragefist
step << Hunter
    .goto Orgrimmar,67.24,20.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科索祖尔|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
    .target Xor'juul
step << Mage
    .goto Orgrimmar,38.45,86.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪诺|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接任务 战斗训练
	.target Deino
step << Priest
    .goto Orgrimmar,35.73,86.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尤斯|r 对话
    .turnin 64048 >>接任务 生存工具
    .accept 64050 >>接受任务 战斗训练
	.target Zayus
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .turnin 64049 >>接任务 生存工具
    .accept 64051 >>接受任务 战斗训练
    .target Kym Wildmane
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
    .target Grol'dar
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
    .target Ormok
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
    .target Kardris Dreamseeker
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
    .target Grezz Ragefist
step << Hunter
    .goto Orgrimmar,67.24,20.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科索祖尔|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
    .target Xor'juul
step << Mage
    .goto Orgrimmar,38.45,86.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪诺|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
	.target Deino
step << Priest
    .goto Orgrimmar,35.73,86.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尤斯|r 对话
    >>训练一个法术
    .complete 64050,1 -- Train a Spell (1)
	.target Zayus
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    >>训练一个法术
    .complete 64051,1 -- Train a Spell (1)
    .target Kym Wildmane
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
    .target Grol'dar
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
    .target Ormok
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
    .target Kardris Dreamseeker
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
    .target Grezz Ragefist
step << Hunter
    .goto Orgrimmar,67.24,20.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科索祖尔|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
    .target Xor'juul
step << Mage
    .goto Orgrimmar,38.45,86.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪诺|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
	.target Deino
step << Priest
    .goto Orgrimmar,35.73,86.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尤斯|r 对话
    .turnin 64050 >>交任务 战斗训练
    .accept 64052 >>接任务 天赋异禀
	.target Zayus
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .turnin 64051 >>交任务 战斗训练
    .accept 64053 >>接任务 天赋异禀
    .target Kym Wildmane
step
    >>分配5个技能点(默认：按N键打开天赋面板)
	.complete 64052,1 << !Druid --5 Talent Points Allocated (1)
    .complete 64053,1 << Druid --5 Talent Points Allocated (1)
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格罗达尔|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
    .target Grol'dar
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫克|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
    .target Ormok
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德里斯|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
    .target Kardris Dreamseeker
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷兹|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
    .target Grezz Ragefist
step << Hunter
    .goto Orgrimmar,67.24,20.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科索祖尔|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
    .target Xor'juul
step << Mage
    .goto Orgrimmar,38.45,86.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪诺|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64052 >>接任务 天赋异禀
	.target Deino
step << Priest
    .goto Orgrimmar,35.73,86.89
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尤斯|r 对话
    .turnin 64052 >>交任务 天赋异禀
    .accept 64063 >>接受任务 黑暗之门
	.target Zayus
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯姆|r 对话
    .turnin 64053 >>交任务 天赋异禀
	.accept 64217 >>接受任务 黑暗之门
    .target Kym Wildmane
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔尔|r 对话
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_索乌|r 在小屋顶部对话
    .train 3567 >>训练 |T135759:0|t[传送：奥格瑞玛]
    .train 11417 >>训练 |T135744:0|t[传送门：奥格瑞玛]
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库古尔|r 对话
	.vendor >>购买任何你买得起的宠物升级
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_酒吧老板莫拉格|r 对话
	.vendor >>|cRXP_BUY_买2组食物|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_买2组水|r << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>离开奥格瑞玛
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>登上飞艇塔
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>做飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>进入幽暗城
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯下去到幽暗城
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .fp Undercity >>获得幽暗城的飞行路径
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >>离开幽暗城并前往亡灵壁垒
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往亡灵壁垒，然后与 |cRXP_FRIENDLY_德灵顿|r 对话
    .accept 5096 >>接受任务 误导血色十字军
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>点击 |cRXP_PICK_火岩箱|r 在火堆边
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Garush|r 对话
    .turnin 5405 >>交任务 银色黎明委任徽章
	.target Argent Officer Garush
step
    #completewith next
    .use 12846 >>|cRXP_WARN_装备|r |T133440:0|t[银色黎明委任徽章] |cRXP_WARN_饰品|r
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>点击 |cRXP_PICK_指挥官帐篷|r，然后使用你的 |T132484:0|t[天灾战旗]
	>>|cRXP_WARN_这些怪物比较难打，而且容易引到周围的怪，小心点|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5096 >>交任务 误导血色十字军
    .accept 5098 >>接受任务 标记哨塔
    .accept 5228 >>接受任务 瘟疫之锅
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范蒂丝|r 对话
    .turnin 5228 >>交任务 瘟疫之锅
    .accept 5229 >>接受任务 目标：费尔斯通农场
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>击杀 |cRXP_ENEMY_护锅者拜尔摩|r 拾取它的 |cRXP_LOOT_瘟疫之锅钥匙|r
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>点击在高台上翻滚的 |cRXP_PICK_瘟疫之锅|r
    .turnin 5229 >>交任务 目标：费尔斯通农场
    .accept 5230 >>接受任务 返回亡灵壁垒
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮丝|r 在房子的二楼对话
    .accept 5021 >>接受任务 迟到总比不到好
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>点击 |cRXP_PICK_詹妮丝的包裹l|r 在谷仓
	>>|cRXP_WARN_如果你想跳过里面的怪，可以隔着走廊的墙直接点击它|r
    .turnin 5021 >>交任务 迟到总比不到好
    .accept 5023 >>接受任务 迟到总比不到好
step
	#completewith next
	.subzone 152 >>回到亡灵壁垒，提瑞斯法
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vandis|r 对话
    .turnin 5230 >>交任务 返回亡灵壁垒
    .accept 5231 >>接受任务 目标：达尔松之泪
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	|cRXP_WARN_确保在每座塔之间杀怪并拾取|r |T133724:0|t[白骨碎片]
    .collect 22526,30,91261 --Bone Fragments
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >>使用你的 |T135432:0|t[信号火炬] 在塔楼门口外侧的角落
	>>|cRXP_WARN_不要招惹里面的精英怪|r
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在旅店的顶楼对话
    .accept 4971 >>接受任务 时间问题
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >>使用你的 |T135432:0|t[信号火炬] 在塔楼门口外侧的角落
	>>|cRXP_WARN_不要招惹里面的精英怪|r
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>刷新 |cRXP_ENEMY_时光寄生虫|r 用你的 |T134229:0|t[时光置换器] 在发光的粮仓旁边
	>>|cRXP_WARN_时光寄生虫移动缓慢，死后还会分裂出更多寄生虫。如果怪太多扛不住了，准备往水里跑；它们不会游泳。|r
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >>使用你的 |T135432:0|t[信号火炬] 在塔楼门口外侧的角落
	>>|cRXP_WARN_不要招惹里面的精英怪|r
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>击杀 |cRXP_ENEMY_护锅者拜尔摩|r 拾取他的 |cRXP_LOOT_瘟疫之锅钥匙|r
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>点击在高台上翻滚的 |cRXP_PICK_瘟疫之锅|r
    .turnin 5231 >>交任务 目标：达尔松之泪
    .accept 5232 >>接受任务 返回亡灵壁垒
step
    .goto Western Plaguelands,47.8,50.6
	>>点击地上的 |cRXP_PICK_达尔松夫人的日记|r
    .turnin 5058 >>交任务 达尔松夫人的日记
step
    .goto Western Plaguelands,47.49,51.00
	>>击杀 |cRXP_ENEMY_游荡的骷髅|r 拾取它身上掉落的 |cRXP_LOOT_达尔松厕所钥匙|r
	>>|cRXP_WARN_如果骷髅没刷新，就去刷白骨碎片|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>点击 |cRXP_PICK_厕所|r
    .turnin 5059 >>交任务 被锁起来的农夫
step
    .goto Western Plaguelands,48.2,49.7
	>>击杀 |cRXP_ENEMY_农夫达尔松|r 拾取他的 |cRXP_LOOT_橱柜钥匙|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>点击 |cRXP_PICK_锁住的柜橱|r 在房子的顶楼
    .turnin 5060 >>交任务 被锁起来的农夫
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔斯塔|r 对话
    .accept 6004 >>接受任务 未完的任务
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>击杀 |cRXP_ENEMY_血色法师|r 和 |cRXP_ENEMY_血色骑士|r
	>>|cRXP_WARN_那个|r |cRXP_ENEMY_法师|r |cRXP_WARN_和|r |cRXP_ENEMY_骑士|r |cRXP_WARN_共享刷新点。如有必要，多杀些怪来重置刷新|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>击杀 |cRXP_ENEMY_血色医护员|r 和 |cRXP_ENEMY_血色猎人|r
	>>|cRXP_ENEMY_医护员|r |cRXP_WARN_和|r |cRXP_ENEMY_猎人|r |cRXP_WARN_可以在营地里找到。如有必要，多杀些怪来重置刷新|r
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>杀掉 |cRXP_ENEMY_血色法师|r 和 |cRXP_ENEMY_血色骑士|r
	>>|cRXP_WARN_那些|r |cRXP_ENEMY_法师|r |cRXP_WARN_和|r |cRXP_ENEMY_骑士|r |cRXP_WARN_共用刷新点。如有必要，多杀些怪来重置刷新。|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kirsta|r 对话
    .turnin 6004 >>交任务 未完的任务
    .accept 6023 >>接受任务 未完的任务
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>击杀 |cRXP_ENEMY_猎人莱德雷|r
	>>|cRXP_WARN_她周围的怪很容易连锁拉怪。缚法者会施放冰霜新星|r
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>击杀 |cRXP_ENEMY_骑士杜尔根|r
	>>|cRXP_WARN_等他巡逻出塔后再开怪会让整个战斗安全得多。他有一个瞬发的5秒昏迷技能|r
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>拾取塔顶的 |cRXP_PICK_神圣箱子|r 获得 |cRXP_LOOT_光明使者的印记|r
	>>|cRXP_WARN_那个 |cRXP_ENEMY_血色高阶牧师|r (63级  精英怪)可能刷新了，需要的话可以跳过这个任务|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kirsta|r 对话
    .turnin 6023 >>交任务 未完的任务
    .accept 6025 >>接受任务 未完的任务
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>跑进壁炉谷，进去后跟随箭头指示把怪拉脱战
    >>跑上塔顶，需要注意外面的圣骑士会加血。你可以尝试直接冲过去或者控制他们然后再往塔顶跑
    >>|cRXP_WARN_注意，怪物的攻击判定没有Z轴限制。如果它们站在你的正下方，依然能打到你|r
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开壁炉谷然后和 |cRXP_FRIENDLY_科尔斯塔|r 对话
    .turnin 6025 >>交任务 未完的任务
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >>回到亡灵壁垒，提瑞斯法
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vandis|r 对话
    .turnin 5232 >>交任务 返回亡灵壁垒
    .accept 5233 >>接受任务 目标：嚎哭鬼屋
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Derrington|r 对话
    .turnin 5098 >>交任务 标记哨塔
    .accept 838 >>接受任务 通灵学院
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 838 >>交任务 通灵学院
    .accept 964 >>接受任务 骸骨碎片
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦拉·黎明之刃|r 对话
    .turnin 9443 >>交任务 所谓的光明使者印记
    .accept 9444 >>接受任务 亵渎乌瑟尔之墓
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦拉·黎明之刃|r 对话
    .accept 9444 >>接受任务 亵渎乌瑟尔之墓
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在旅店的顶楼对话
    .turnin 4971 >>交任务 时间问题
    .accept 4972 >>接受任务 找回时间
	.target Chromie
step
	#completewith next
	>>拾取 |cRXP_PICK_小箱子|r 在建筑废墟中以找到 |cRXP_LOOT_安多哈尔怀表|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>击杀所有 |cRXP_ENEMY_骷髅|r 在安多哈尔，拾取它们并获得 |cRXP_LOOT_碎片|r
	>>|cRXP_ENEMY_骷髅刽子手|r |cRXP_WARN_会斩杀|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>拾取 |cRXP_PICK_小箱子|r 在建筑废墟中以找到 |cRXP_LOOT_安多哈尔怀表|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛莱恩|r 在房子里对话
    .accept 5142 >>接任务 小帕米拉
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>|cRXP_WARN_装备|r |T135160:0|t[被玷污的光明使者印记] |cRXP_WARN_到你的副手|r
    >>|cRXP_WARN_使用|r |T135160:0|t[被玷污的光明使者印记] |cRXP_WARN_在乌瑟尔之墓|r
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>击杀 |cRXP_ENEMY_护锅者拉扎奇|r 拾取它的 |cRXP_LOOT_瘟疫之锅钥匙|r
	>>|cRXP_ENEMY_冰冷的食尸鬼|r |cRXP_WARN_有一个持续5秒的瞬发群晕技能|r
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>点击在高台上翻滚的 |cRXP_PICK_瘟疫之锅|r
	>>|cRXP_ENEMY_冰冷的食尸鬼|r |cRXP_WARN_有一个持续5秒的瞬发群晕技能|r
    .turnin 5233 >>交任务 目标：嚎哭鬼屋
    .accept 5234 >>接受任务 返回亡灵壁垒
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯|r 在房子里对话
	>>|cRXP_ENEMY_冰冷的食尸鬼|r |cRXP_WARN_有一个持续5秒的瞬发群晕技能|r
    .accept 4984 >>接受任务 大自然的苦楚
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>击杀 |cRXP_ENEMY_生病的狼|r
	>>|cRXP_ENEMY_生病的狼|r |cRXP_WARN_共享刷新点和|r |cRXP_ENEMY_腐虫潜伏者|r|cRXP_WARN_如果需要的话，击杀它们来重置刷新|r
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯|r 对话
    .turnin 4984 >>交任务 大自然的苦楚
    .accept 4985 >>接受任务 大自然的苦楚
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>击杀 |cRXP_ENEMY_生病的灰熊|r
	>>|cRXP_ENEMY_生病的灰熊|r |cRXP_WARN_共享刷新点和|r |cRXP_ENEMY_天灾潜伏者|r|cRXP_WARN_如果需要的话，击杀它们来重置刷新|r
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳萨诺斯|r 对话
    .accept 6022 >>接受任务 杀戮的理由
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>点击巨大的 |cRXP_PICK_破损的卷轴|r 在地穴内部的地上
    .accept 6024 >>接受任务 哈米亚的请求
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉|r 对话
    .turnin 5142 >>交任务 小帕米拉
    .accept 5149 >>接受任务 帕米拉的洋娃娃
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>拾取3个 |cRXP_PICK_洋娃娃的身体部件|r 在建筑废墟的地上
	>>|cRXP_WARN_点击洋娃娃的身体部件会刷新一些|r |cRXP_ENEMY_往日的幽灵|r |cRXP_WARN_他们会释放冰甲术和冰霜震击|r
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>拾取3个 |cRXP_PICK_洋娃娃的身体部件|r 在建筑废墟的地上
	>>|cRXP_WARN_点击洋娃娃的身体部件会刷新一些|r |cRXP_ENEMY_往日的幽灵|r |cRXP_WARN_他们会释放冰甲术和冰霜震击|r
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>拾取3个 |cRXP_PICK_洋娃娃的身体部件|r 在建筑废墟的地上
	>>|cRXP_WARN_点击洋娃娃的身体部件会刷新一些|r |cRXP_ENEMY_往日的幽灵|r |cRXP_WARN_他们会释放冰甲术和冰霜震击|r
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>|cRXP_WARN_点击|r |T134164:0|t[帕米拉的洋娃娃的脑袋] |cRXP_WARN_把三个部分组合起来|r
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉|r 对话
    .turnin 5149 >>交任务 帕米拉的洋娃娃
    .accept 5152 >>接受任务 玛莱恩姑妈
    .accept 5241 >>接受任务 卡林叔叔
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉|r 对话
    .accept 5152 >>接受任务 玛莱恩姑妈
    .accept 5241 >>接受任务 卡林叔叔
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >>前往考林路口
step
	#completewith next
	>>击杀 |cRXP_ENEMY_亡灵|r 拾取它们的 |cRXP_LOOT_生命腐质|r。
	>>|cRXP_WARN_北边和东边的道路上有多组精英怪巡逻。科林路口里面有隐形怪巡逻，所以尽量把怪拉出来打|r
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>|cRXP_WARN_使用|r |T133748:0|t[研钵和捣杵] |cRXP_WARN_在 |cRXP_LOOT_生命腐质|r 过期之前|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >>前往圣光之愿礼拜堂
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥林 |r 对话
    .accept 6021 >>接任务 流亡者塞达尔
    .accept 5281 >>接任务 永不安息的灵魂
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡林|r 对话
    .turnin 5241 >>交任务 卡林叔叔
    .accept 5211 >>接受任务 达隆郡的保卫者
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰希卡·查伯斯|r 对话
    .home >>将你的炉石设置在圣光之愿礼拜堂
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >>前往祖玛沙尔
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>击杀 |cRXP_ENEMY_渗透者哈米亚|r 拾取她的 |cRXP_LOOT_钥匙|r
	>>|cRXP_WARN_上山途中你应该能避开所有小怪，直接绕过它们，然后往东上山，不要靠近那些坟墓|r
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >>前往病木林
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>击杀 |cRXP_ENEMY_生病的剥皮者|r 和 |cRXP_ENEMY_喋喋不休的食尸鬼|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达隆郡居民的灵魂|r 对话
	>>|cRXP_WARN_这些怪跟好几种怪共享刷新点，所以食尸鬼杀完后，把其他怪也都杀光|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>拾取 |cRXP_PICK_白蚁丘|r 以便获得 |cRXP_LOOT_白蚁|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 进入房子然后与 |cRXP_FRIENDLY_埃根|r 和 |cRXP_FRIENDLY_奥古斯图斯|r 对话
    .turnin 5281 >>交任务 永不安息的灵魂
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>击杀 |cRXP_ENEMY_生病的剥皮者|r 和 |cRXP_ENEMY_喋喋不休的食尸鬼|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达隆郡居民的灵魂|r 对话
	>>|cRXP_WARN_这些怪跟好几种怪共享刷新点，所以食尸鬼杀完后，把其他怪也都杀光|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>击杀更多区域中的 |cRXP_ENEMY_亡灵|r 以便获得 |T133447:0|t[|cRXP_LOOT_爪牙的天灾石|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>飞往圣光之愿礼拜堂
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与|cRXP_FRIENDLY_尼古拉斯|r 和 |cRXP_FRIENDLY_卡林|r 对话
	.turnin 5510 >>交任务 爪牙的天灾石
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>与 |cRXP_FRIENDLY_梅兹|r 对话
    .accept 9141 >>接任务 "梅兹的文书"
    .turnin 9141 >>交任务 "梅兹的文书"
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡林|r 对话
    .turnin 5211 >>交任务 达隆郡的保卫者
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔吉亚|r 对话
    .fly Undercity >>飞往幽暗城
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴哈乌斯|r 对话
    .turnin 5023 >>交任务 迟到总比不到好
    .accept 5049 >>接受任务 杰雷米亚的忧伤
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰雷米亚|r 对话
    .turnin 5049 >>交任务 杰雷米亚的忧伤
    .accept 5050 >>接受任务 好运护符
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦娜斯|r 对话
    .accept 5961 >>接受任务 女妖之王的勇士
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>离开幽暗城
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范蒂丝|r 对话
    .turnin 5234 >>交任务 返回亡灵壁垒
    .accept 5235 >>接受任务 目标：盖罗恩农场
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 964 >>交任务 骸骨碎片
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克|r 对话
    .turnin 5901 >>交任务 瘟疫与你
    .accept 5902 >>接任务 瘟疫与你
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>摧毁所有剩下的 |T134321:0|t[瘟疫白蚁]
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 爬到建筑的顶层然后与 |cRXP_FRIENDLY_詹妮丝|r 对话
    .turnin 5050 >>交任务 好运护符
    .accept 5051 >>接受任务 两半合一
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>击杀那些 |cRXP_ENEMY_喋喋不休的食尸鬼|r，拾取 |cRXP_LOOT_另一半好运护符|r
    .use 12722 >>使用它合成 |cRXP_LOOT_另一半好运护符|r
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮丝|r 在建筑的顶楼对话
    .turnin 5051 >>交任务 两半合一
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛莱恩|r 在房子里对话
    .turnin 5152 >>交任务 玛莱恩姑妈
    .accept 5153 >>接受任务 古怪的历史学家
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>拾取 |cRXP_PICK_约瑟夫·雷德帕斯的纪念碑|r 获得 |cRXP_LOOT_约瑟夫的结婚戒指|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在旅店的顶楼对话
    .turnin 5153 >>交任务 古怪的历史学家
    .accept 5154 >>接受任务 达隆郡的历史
    .turnin 4972 >>交任务 找回时间
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>拾取 |cRXP_PICK_发霉的书籍|r 在市政厅里直到获得 |cRXP_LOOT_达隆郡的历史|r
	>>|cRXP_WARN_很多书都是假的，打开还会刷出怪。真书的书页是纯白的，没有灰色或深色的阴影。你可能得去开假书，才能把真书刷出来|r
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >>https://i.imgur.com/B2HDb6K.png >> 点击这里查看图片示例
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在旅店的顶楼对话
    .turnin 5154 >>交任务 达隆郡的历史
    .accept 5210 >>接受任务 卡林·雷德帕斯
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯|r 对话
    .turnin 4985 >>交任务 大自然的苦楚
    .accept 4987 >>接受任务 雕文橡木枝
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>击杀 |cRXP_ENEMY_护锅者索瓦斯|r 拾取它的 |cRXP_LOOT_瘟疫之锅钥匙|r
	>>|cRXP_WARN_这个怪会释放一个持续10秒的沉默疾病|r << !Priest
	>>|cRXP_WARN_这个怪会施放一个持续10秒的沉默疾病，预读驱除疾病并且要一直保持|r << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>点击在高台上翻滚的 |cRXP_PICK_瘟疫之锅|r
    .turnin 5235 >>交任务 目标：盖罗恩农场
    .accept 5236 >>接受任务 返回亡灵壁垒
step
	.goto Eastern Plaguelands,28.03,86.16
	>>点击 |cRXP_PICK_一堆泥土|r 墓穴后面
    .turnin 6024 >>交任务 哈米亚的请求
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳萨诺斯|r 对话
    .turnin 6022 >>交任务 杀戮的理由
	.turnin 5961 >>交任务 女妖之王的勇士
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>前往北山伐木场营地
step
	.goto Western Plaguelands,48.35,32.00
	>>进入伐木场，点击坡道边的 |cRXP_PICK_北山伐木场箱子|r ，然后点击 |cRXP_PICK_白蚁桶|r
    .turnin 5902 >>交任务 瘟疫与你
    .accept 6390 >>接任务 瘟疫与你
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在旅店的顶楼对话
    .turnin 5154 >>交任务 达隆郡的历史
	.target Chromie
step
	#completewith next
	.subzone 152 >>回到亡灵壁垒
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_范蒂丝|r 对话
    .turnin 5236 >>交任务 返回亡灵壁垒
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克|r 对话
    .turnin 6390 >>交任务 瘟疫与你
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5238 >>交任务 任务完成！
	.target High Executor Derrington
step
    .goto Tirisfal Glades,61.87,59.11
    >>|cRXP_WARN_登上飞艇塔|r
    .zone Stranglethorn Vale >>坐飞艇去荆棘谷
step
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞斯塔|r 对话
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞斯塔|r 对话
	.fly Stonard >>飞往斯通纳德
	.target Thysta
    .subzoneskip 75
step
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >>前往诅咒之地
step
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_督军达图恩|r 对话
    .turnin 64063 >>交任务 黑暗之门 << !Druid
    .turnin 64217 >>交任务 黑暗之门 << Druid
    .accept 9407 >>接受任务 跨越黑暗之门
    .target Warlord Dar'toon

]])
