if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 提瑞斯法林地
#next 6-10 永歌森林
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Undead
#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000

step << !Undead
    #completewith next
    +|cRXP_WARN_你选择的是为亡灵准备的攻略。建议你选择与你起始区域相同的初始区域攻略|r
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿加莎|r对话
    .accept 24959 >>接受任务 从墓穴中醒来
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .turnin 24959 >>交任务 从墓穴中醒来
    .accept 28608 >>接受任务 灰影墓穴
    .target 送葬者摩尔多
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>进入影墓穴
step
    .goto 18,29.67,71.98
    >>拾取桌上的|cRXP_LOOT_缝尸麻线|r和|cRXP_LOOT_粘稠的防腐剂|r
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>离开墓地
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .turnin 28608 >>交任务 灰影墓穴
    .accept 26799 >>接受任务 不可拯救的死者
    .target 送葬者摩尔多
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员凯斯|r 对话
    .accept 24960 >>接受任务 苏醒
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>击杀 |cRXP_ENEMY_无脑的僵尸|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob 无脑的僵尸
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官雷德帕斯|r 对话
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target 治安官雷德帕斯
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉莉安·沃斯|r 对话
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦德雷·莫莱|r 对话
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .skipgossip
    .target Valdred Moray
step
    #loop
    .goto 18,30.39,69.59,0
    .waypoint 18,30.81,69.74,30,0
    .waypoint 18,30.42,70.07,30,0
    .waypoint 18,29.76,69.98,30,0
    .waypoint 18,29.27,70.03,30,0
    .waypoint 18,29.50,71.75,30,0
    .waypoint 18,30.39,69.59,30,0
    >>击杀 |cRXP_ENEMY_无脑的僵尸|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob 无脑的僵尸
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫多|r 对话
    .turnin 26799 >>交任务 不可拯救的死者
    .target 送葬者摩尔多
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员凯斯|r 对话
    .turnin 24960 >>交任务 苏醒
    .accept 25089 >>接受任务 走出墓穴
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>进入教堂
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 对话
    .accept 26801 >>接受任务 境内的天灾
    .target 暗影牧师萨维斯
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔坦|r 对话
    .turnin 25089 >>交任务 走出墓穴
    .accept 26800 >>接受任务 清扫战场
    .target 亡灵卫兵萨尔坦
step
    #completewith next
    >>击杀|cRXP_ENEMY_响骨骷髅|r和|cRXP_ENEMY_怨灵食尸鬼|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob 断骨骷髅
    .mob Wretches Ghoul
step
    #loop
    .goto 18,31.03,63.10,0
    .waypoint 18,31.79,64.38,20,0
    .waypoint 18,31.25,64.05,20,0
    .waypoint 18,31.97,61.99,20,0
    .waypoint 18,33.11,63.07,20,0
    .waypoint 18,33.34,63.87,20,0
    .waypoint 18,33.32,64.56,20,0
    .waypoint 18,32.87,64.62,20,0
    .waypoint 18,31.97,61.99,20,0
    >>点击地面上的|cRXP_ENEMY_血色尸体|r
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .mob Scarlet Corpse
step
    #loop
    .goto 18,31.24,63.43,0
    .waypoint 18,31.64,63.93,30,0
    .waypoint 18,32.18,63.21,30,0
    .waypoint 18,32.29,61.30,30,0
    .waypoint 18,31.26,61.24,30,0
    .waypoint 18,30.95,62.35,30,0
    .waypoint 18,31.24,63.43,30,0
    >>击杀|cRXP_ENEMY_响骨骷髅|r和|cRXP_ENEMY_怨灵食尸鬼|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob 断骨骷髅
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔坦|r 对话
    .turnin 26800 >>交任务 清扫战场
    .target 亡灵卫兵萨尔坦
step
    #completewith next
    .goto 18,31.38,66.23,8 >>进入教堂
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 对话
    .turnin 26801 >>交任务 境内的天灾
    .accept 31146 >>接受任务 涂鸦的卷轴 << Monk
    .accept 3096 >>接受任务 密文卷轴 << Rogue
    .accept 3095 >>接受任务 简易卷轴 << Warrior
    .accept 24962 >>接受任务 皱巴巴的卷轴 << Hunter
    .accept 3098 >>接受任务 雕文卷轴 << Mage
    .accept 3097 >>接受任务 神圣卷轴 << Priest
    .accept 3099 >>接受任务 被污染的卷轴 << Warlock
    .target 暗影牧师萨维斯
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 对话
    .accept 24961 >>接受任务 墓中的真相
    .target 新兵艾尔雷斯
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r 对话
    .turnin 3098 >>交任务 雕文卷轴
    .accept 24965 >>接受任务 魔法训练
    .train 5143 >>训练 |T136096:0|t[奥术飞弹] << Cata
    .target 伊莎贝拉
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈维尔·卡朋特|r 对话
    .turnin 24962 >>交任务 皱巴巴的卷轴
    .accept 24964 >>接受任务 狩猎的快感
    .train 56641 >>学习 |T132213:0|t[稳固射击] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .turnin 3097 >>交任务 神圣卷轴
    .accept 24966 >>接受任务 光与影的交织
    .train 2061 >>学习 |T135907:0|t[快速治疗] << Cata
    .target 黑暗牧师杜斯滕
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .turnin 3099 >>交任务 被污染的卷轴
    .accept 24968 >>接受任务 黑暗的魔法
    .train 348 >>学习 |T135817:0|t[献祭] << Cata
    .target 马克希米林
step << Mage cata
    .goto 18,31.64,66.91
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T136096:0|t [奥术飞弹]
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 18,31.64,66.91
	>>对|cRXP_ENEMY_训练假人|r施放|T135848:0|t[冰霜新星]
	.complete 24965,2 --Cast Frost Nova
	.mob Training Dummy
step << Priest cata
    .goto 18,31.20,66.02
	>>对|cRXP_FRIENDLY_受伤死亡守卫|r施放|T135907:0|t[快速治疗]
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Priest !cata
    .goto 18,31.64,66.91
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T136207:0|t[暗言术：痛]
	.complete 24966,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Warlock
    .goto 18,31.64,66.91
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T135817:0|t[献祭]
	.complete 24968,2 << !Cata --Cast Immolate (x3)
	.complete 24968,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>进入房子
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉莉安·沃斯|r 对话
    >>|cRXP_WARN_她可能在楼上。不要等待剧情|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .timer 9,墓中的真相 剧情RP
    .skipgossip
    .target Lilian Voss
step << Monk
    .goto 465/0,1567.900,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁胆海胃丁绿衫|r对话
    .turnin 31146 >>交任务 涂鸦的卷轴
    .accept 31147 >>接受任务 虎掌击
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大卫|r 对话
    .turnin 3096 >>交任务 密文卷轴
    .accept 24967 >>接受任务 刺杀！
    .train 2098 >>训练 |T132292:0|t[刺骨] << Cata
    .target 大卫·提亚斯
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .turnin 3095 >>交任务 简易卷轴
    .accept 24969 >>接受任务 冲锋陷阵
    .train 100 >>学习 |T132337:0|t[冲锋] << Cata
    .target 丹纳尔·斯特恩
step << Monk
    .goto 18,31.64,66.91
	>>对|cRXP_ENEMY_训练假人|r使用|T606551:0|t[猛虎掌]
    .complete 31147,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Rogue
    .goto 18,31.64,66.91
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T132292:0|t[刺骨]
	.complete 24967,2 << !Cata --Cast Eviscerate (x3)
	.complete 24967,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T132337:0|t[冲锋]
	.complete 24969,2 << !Cata --Cast Charge (x3)
	.complete 24969,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>对 |cRXP_ENEMY_训练假人|r 施放 |T132213:0|t[稳固射击]
	.complete 24964,2 << !Cata --Steady Shot (x3)
	.complete 24964,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Monk
    .goto 465/0,1568.100,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁胆海胃丁绿衫|r对话
    .turnin 31147 >>交任务 猛虎掌
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大卫|r 对话
    .turnin 24967 >>交任务 刺杀！
    .target 大卫·提亚斯
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹纳尔|r 对话
    .turnin 24969 >>交任务 简易卷轴
    .target 丹纳尔·斯特恩
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈维尔·卡朋特|r 对话
    .turnin 24964 >>交任务 狩猎的兴奋
    .target Xavier the Huntsman
step
    #completewith next
    .goto 18,31.38,66.23,8 >>进入教堂
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔雷斯|r 对话
    .turnin 24961 >>交任务 墓中的真相
    .accept 28672 >>接受任务 战场上的执行官
    .target 新兵艾尔雷斯
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莎贝拉|r对话
    .turnin 24965 >>交任务 魔法训练
    .target 伊莎贝拉
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜斯滕|r 对话
    .turnin 24966 >>交任务 光与影的交织
    .target 黑暗牧师杜斯滕
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克希米林|r 对话
    .turnin 24968 >>交任务 黑暗的魔法
    .target 马克希米林
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 28672 >>交任务 战场上的执行官
    .accept 26802 >>接受任务 被诅咒者
    .target 执行官阿伦
step
    #loop
    .goto 18,32.00,57.83,0
    .waypoint 18,31.47,58.41,40,0
    .waypoint 18,32.00,57.83,40,0
    .waypoint 18,31.54,56.21,40,0
    .waypoint 18,32.39,56.15,40,0
    .waypoint 18,33.70,57.30,40,0
    .waypoint 18,35.11,56.22,40,0
    .waypoint 18,35.69,58.25,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.19,59.64,40,0
    .waypoint 18,32.90,58.08,40,0
    >>杀死 |cRXP_ENEMY_夜行蝙蝠|r。拾取它们的 |cRXP_LOOT_翅膀|r
    >>击杀 |cRXP_ENEMY_狼|r。拾取它们的 |cRXP_LOOT_爪子|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob 夜行蝙蝠
    .mob 癞皮夜行蝙蝠
    .complete 26802,1 --4/4 Scavenger Paw
    .mob 食腐狼幼崽
    .mob 蓬毛食腐狼
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 26802 >>交任务 被诅咒者
    .accept 24973 >>接受任务 夜行蜘蛛洞穴
    .target 执行官阿伦
step
    #completewith NWSpiders
    .subzone 155 >>前往夜行蜘蛛洞穴
step
    #completewith next
    >>击杀 |cRXP_ENEMY_矿洞外的|r |cRXP_WARN_小夜行蜘蛛|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob 小夜行蜘蛛
step
    #label NWSpiders
    #loop
    .goto 18,25.43,59.80,0
    .waypoint 18,26.83,59.39,8,0
    .waypoint 18,26.01,59.65,8,0
    .waypoint 18,25.43,59.80,8,0
    .waypoint 18,25.04,60.35,8,0
    .waypoint 18,24.15,60.82,8,0
    .waypoint 18,23.23,60.06,8,0
    .waypoint 18,23.68,58.52,8,0
    >>|cRXP_ENEMY_在矿洞内|r 击杀 |cRXP_WARN_夜行蜘蛛|r
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob 夜行蜘蛛
step
    #loop
    .goto 18,29.44,58.33,0
    .waypoint 18,27.47,59.05,40,0
    .waypoint 18,28.13,57.32,40,0
    .waypoint 18,29.77,56.26,40,0
    .waypoint 18,29.44,58.33,40,0
    .waypoint 18,28.63,59.20,40,0
    >>击杀矿洞外的 |cRXP_ENEMY_小夜行蜘蛛|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob 小夜行蜘蛛
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_执行官阿伦|r 对话
    .turnin 24973 >>交任务 夜行蜘蛛洞穴
    .accept 24970 >>接受任务 跟僵尸一样烂
    .target 执行官阿伦
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达内尔|r对话
    .turnin 24970 >>交任务 跟僵尸一样烂
    .accept 24971 >>接受任务 袭击腐脑营地
    .target Darnell
step
    #completewith next
    >>击杀|cRXP_ENEMY_腐脑法师|r和|cRXP_ENEMY_腐脑狂战士|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>击杀 |cRXP_ENEMY_治安官雷德帕斯|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob 治安官雷德帕斯
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>击杀|cRXP_ENEMY_腐脑法师|r和|cRXP_ENEMY_腐脑狂战士|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>前往丧钟镇
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨维斯|r 对话
    .turnin 24971 >>交任务 袭击腐脑营地
    .accept 24972 >>接受任务 重要情报
    .target 暗影牧师萨维斯
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>离开丧钟镇
step
    #completewith next
    .subzone 4916 >>前往卡尔斯通庄园
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_西米尔|r对话
    .turnin 24972 >>交任务 重要情报
    .accept 24978 >>接受任务 收割收割者
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_西米尔|r对话
    .turnin 24972 >>交任务 重要情报
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .accept 24975 >>接受任务 悲伤之地
    .target 药剂师乔汉
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >>上楼
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞德里克·卡尔斯通|r 对话
    .accept 24974 >>接受任务 从未如此孤单
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_达尔娜·沃德|r 对话
    .train 2973 >>训练你的职业技能
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_卡尔拉·费因|r 对话
    .train 34428 >>训练你的职业技能
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_拉尔拉·费尔桑|r 对话
    .train 2136 >>训练你的职业技能
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_暗影牧师克莱尔莎|r 对话
    .train 589 >>训练你的职业技能
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_玛蕾莎·米尔纳|r 对话
    .train 87389 >>训练你的职业技能
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>击杀 |cRXP_ENEMY_提瑞斯法农夫|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>拾取地上的|cRXP_LOOT_提瑞斯法南瓜|r
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>击杀 |cRXP_ENEMY_提瑞斯法农夫|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>攻击一只|cRXP_ENEMY_邪鳍鱼人|r，直到它开始逃跑，然后使用你的|T133802:0|t[鱼人拴绳]将其捕获
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>前往卡尔斯通庄园
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_西米尔|r对话
    .turnin 24978 >>交任务 收割收割者
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔汉|r对话
    .turnin 24975 >>交任务 悲伤之地
    .target 药剂师乔汉
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >>上楼
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>交付 |cRXP_FRIENDLY_鱼人|r
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞德里克·卡尔斯通|r 对话
    .turnin 24974 >>交任务 从未如此孤单
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >>上楼交付 |cRXP_FRIENDLY_鱼人|r
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞德里克·卡尔斯通|r 对话
    .turnin 24974 >>交任务 从未如此孤单
    .target Sedrick Calston
step << Hunter Cata
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_达尔娜·沃德|r 对话
    .train 2973 >>训练你的职业技能
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_卡尔拉·费因|r 对话
    .train 34428 >>训练你的职业技能
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_拉尔拉·费尔桑|r 对话
    .train 2136 >>训练你的职业技能
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_暗影牧师克莱尔莎|r 对话
    .train 589 >>训练你的职业技能
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_玛蕾莎·米尔纳|r 对话
    .train 87389 >>训练你的职业技能
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>拉上尽可能多的小怪去送死，然后在 |cRXP_FRIENDLY_灵魂医者|r 处复活，或者前往布瑞尔
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_班布利·莫里森|r 对话
    .accept 6321 >>接受任务 布瑞尔的补给
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板瑞尼|r 对话
    .home >>将炉石设置在布瑞尔
    .target 旅店老板瑞尼
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安内特·威廉姆斯|r 对话
    .turnin 6321 >>交任务 布瑞尔的补给
    .accept 6323 >>接受任务 飞往幽暗城
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安内特·威廉姆斯|r 对话
    .fly Undercity >>飞往幽暗城
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高顿|r对话
    .turnin 6323 >>交任务 飞往幽暗城
    .accept 6322 >>接受任务 迈克尔·加勒特
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克尔|r 对话
    .turnin 6322 >>交任务 迈克尔·加勒特
    .accept 6324 >>接受任务 向莫里斯回报
    .target 迈克尔·加勒特
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>坐电梯上楼
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>前往幽暗城
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>点击 |cRXP_PICK_传送宝珠|r 前往银月城
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>离开银月城
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠杰拉|r对话
    .accept 8475 >>接受任务 死亡之痕
    .target 游侠杰拉
    ]])
