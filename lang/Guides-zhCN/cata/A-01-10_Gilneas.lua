if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 1-10级 吉尔尼斯
#displayname 1-10级 吉尔尼斯
#next 10-18级 黑海岸
#defaultfor !DK
#next 10-18级 黑海岸

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .accept 14078 >>接受任务 戒严！
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>前往在地上的 |cRXP_FRIENDLY_沃登中尉|r 的尸体
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_沃登中尉|r 的尸体对话
    .turnin 14078 >>交任务 戒严！
    .accept 14091 >>接受任务 事有蹊跷
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>返回 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14091 >>交任务 事有蹊跷
    .accept 14093 >>接受任务 天下大乱
    .accept 14098 >>接受任务 疏散商人广场
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>击杀 |cRXP_ENEMY_暴怒的狼人|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .accept 14094 >>接受任务 抢救补给品
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>打开地上的|cRXP_PICK_补给箱|r，从中拾取|cRXP_LOOT_回收的补给品|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14094 >>交任务 抢救补给品
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>击杀 |cRXP_ENEMY_暴怒的狼人|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>敲击|cRXP_PICK_商人广场大门|r
    >>|cRXP_WARN_这可能会刷新敌对|r |cRXP_ENEMY_暴怒的狼人|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14094 >>交任务 抢救补给品
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14093 >>交任务 天下大乱
    .turnin 14098 >>交任务 疏散商人广场
    .accept 14099 >>接受任务 皇家命令
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >>前往 |cRXP_FRIENDLY_格温·阿姆斯特|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14099 >>交任务 皇家命令
    .accept 14265 >>接受任务 你的导师 << Warrior
    .accept 14269 >>接受任务 有人在找你 << Rogue
    .accept 14273 >>接受任务 神秘的联系人 << Warlock
    .accept 14275 >>接受任务 有人想联系你 << Hunter
    .accept 14277 >>接受任务 探究奥术 << Mage
    .accept 14278 >>接受任务 寻找修女 << Priest
    .accept 14280 >>接受任务 风中的名字  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛丽·艾伦|r对话
    .vendor 38853 >>|cRXP_BUY_需要的话可以从她那里|r|cRXP_BUY_购买几个|r |T133634:0|t[棕色小包]
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克利希中士|r对话
    .turnin 14265 >>交任务 你的导师
    .accept 14266 >>接受任务 冲锋
    .train 100 >>学习 |T132337:0|t[冲锋] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侠盗萝伦|r 对话
    >>|cRXP_WARN_她处于|r |T132320:0|t[潜行] 状态
    .turnin 14269 >>交任务 有人在找你
    .accept 14272 >>接受任务 刺骨
    .train 2098 >>训练 |T132292:0|t[刺骨] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维图斯·暗行者|r对话
    .turnin 14273 >>交任务 神秘的联系人
    .accept 14274 >>接受任务 献祭
    .train 348 >>学习 |T135817:0|t[献祭] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_猎手布雷克|r对话
    .turnin 14275 >>交任务 有人想联系你
    .accept 14276 >>接受任务 稳固射击
    .train 56641 >>训练 |T132213:0|t[稳固射击] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·唤法者|r对话
    .turnin 14277 >>交任务 探究奥术
    .accept 14281 >>接受任务 奥术飞弹
    .train 5143 >>训练 |T136096:0|t[奥术飞弹] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔米拉修女|r对话
    .turnin 14278 >>交任务 寻找修女
    .accept 14279 >>接受任务 快速治疗 << cata
    .accept 14279 >>接受任务 学习暗言术 << !cata
    .train 2061 >>训练 |T135907:0|t[快速治疗] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r对话
    .turnin 14280 >>交任务 风中的名字
    .accept 14283 >>接受任务 复苏之触 << cata
    .accept 14283 >>接受任务 月火术 << !cata
    .train 774 >>学习 |T136081:0|t[回春术] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>对 |cRXP_ENEMY_血牙狼人|r 施放 |T132337:0|t[冲锋] << Warrior
    >>对 |cRXP_ENEMY_血牙狼人|r 依次施放 |T136189:0|t[影袭] 然后使用 |T132292:0|t[刺骨] << Rogue
    >>对|cRXP_ENEMY_血牙狼人|r施放|T135817:0|t[献祭] << Warlock
    >>对|cRXP_ENEMY_血牙狼人|r施放|T132213:0|t[稳固射击]2次 << Hunter
    >>施放|T135812:0|t[火球术]，然后在|T136096:0|t[奥术飞弹]触发时对|cRXP_ENEMY_血牙狼人|r使用 << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>对|cRXP_ENEMY_血牙狼人|r施放|T136096:0|t[月火术] << Druid
    >>对 |cRXP_ENEMY_血牙狼人|r 施放 |T136207:0|t[暗言术：痛] 2次 << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>对 |cRXP_FRIENDLY_受伤的卫兵|r 施放 |T135907:0|t[快速治疗] 2 次 << Priest
    >>对 |cRXP_FRIENDLY_受伤的卫兵|r 施放 |T136081:0|t[回春术] << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克利希中士|r对话
    .turnin 14266 >>交任务 冲锋
    .accept 14286 >>接受任务 人多安全
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侠盗萝伦|r对话
    >>|cRXP_WARN_她处于|r |T132320:0|t[潜行] 状态
    .turnin 14272 >>交任务 刺骨
    .accept 14285 >>接受任务 人多安全
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维图斯·暗行者|r对话
    .turnin 14274 >>交任务 献祭
    .accept 14287 >>接受任务 人多安全
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_猎手布雷克|r对话
    .turnin 14276 >>交任务 稳固射击
    .accept 14290 >>接受任务 人多安全
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·唤法者|r对话
    .turnin 14281 >>交任务 奥术飞弹
    .accept 14288 >>接受任务 人多安全
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔米拉修女|r对话
    .turnin 14279 >>交任务 快速治疗 << cata
    .turnin 14279 >>交任务 学习暗言术 << !cata
    .accept 14289 >>接受任务 人多安全
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r对话
    .turnin 14283 >>交任务 复苏之触 << cata
    .turnin 14283 >>交任务 月火术 << !cata
    .accept 14291 >>接受任务 人多安全
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 和 |cRXP_FRIENDLY_高弗雷勋爵|r对话
    .turnin 14285 >>交任务 人多安全 << Rogue
    .turnin 14286 >>交任务 人多安全 << Warrior
    .turnin 14287 >>交任务 人多安全 << Warlock
    .turnin 14288 >>交任务 人多安全 << Mage
    .turnin 14289 >>交任务 人多安全 << Priest
    .turnin 14290 >>交任务 人多安全 << Hunter
    .turnin 14291 >>交任务 人多安全 << Druid
    .accept 14157 >>接受任务 旧日的分歧
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>接受任务 顺路除害
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>击杀 |cRXP_ENEMY_血牙狼人|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>前去找里面的 |cRXP_FRIENDLY_布罗德里克队长|r
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_布罗德里克队长|r 对话
    .turnin 14157 >>交任务 旧日的分歧
    .accept 28850 >>接受任务 监狱的屋顶
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>前往螺旋楼梯上方
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>前去找|cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 28850 >>交任务 监狱的屋顶
    .accept 14154 >>接受任务 命悬一线
    .timer 118,命悬一线 剧情RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>击杀接下来2分钟内涌来的|cRXP_ENEMY_狼人阿尔法|r和|cRXP_ENEMY_血牙小鬼|r
    >>|cRXP_WARN_靠近|cRXP_FRIENDLY_达利乌斯·克罗雷领主|r以获得|r |T236310:0|t[叛军勇气] |cRXP_WARN_（被动光环：大幅提高急速、生命恢复和资源恢复）|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 14154 >>交任务 命悬一线
    .accept 26129 >>接受任务 兄弟情深
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>前往螺旋楼梯
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>沿螺旋楼梯向下。然后走出去
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高弗雷勋爵|r 和 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r对话
    .turnin 24930 >>交任务 顺路除害
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>交任务 兄弟情深
    .accept 14159 >>接受任务 叛军领主的军械库
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>点击 |cRXP_PICK_地下室大门|r 打开它，然后前往里面的 |cRXP_FRIENDLY_约书亚·阿维利|r
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在内部的 |cRXP_FRIENDLY_约书亚·阿维利|r 和 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 14159 >>交任务 叛军领主的军械库
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>接受任务 来自阴影
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_要启用任务物品的按键绑定，按照以下步骤：|r
    *[1] 按 |cRXP_WARN_Esc|r 键
    *[2] 选择 |cRXP_WARN_设置|r
    *[3] 选择左方的 |cRXP_WARN_快捷键|r 设置
    *[4] 在 |cRXP_WARN_快捷键设置|r 中，找到 |cRXP_WARN_RestedXP 指南|r
    *[5] 选择并绑定 |cRXP_WARN_激活物品按钮。|r
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>击杀|cRXP_ENEMY_血牙潜伏者|r
    >>|cRXP_WARN_小心，他们处于|r |T132320:0|t[潜行]
    >>|cRXP_WARN_如果需要的话，使用你的|cRXP_FRIENDLY_吉尔尼斯巨犬|r的|r |T236186:0|t[攻击潜伏者] |cRXP_WARN_技能来帮助定位|cRXP_ENEMY_血牙潜伏者|r|r
    >>|cRXP_WARN_如果你丢失了你的|cRXP_FRIENDLY_吉尔尼斯巨犬|r，使用|r |T236926:0|t[吉尔尼斯巨犬项圈]重新召唤它
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 14204 >>交任务 来自阴影
    .accept 14214 >>接受任务 给格雷迈恩的消息
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >>前去找|cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话
    .turnin 14214 >>交任务 给格雷迈恩的消息
    .accept 14293 >>接受任务 救援克雷南·阿朗纳斯
    .timer 16,救援克雷南·阿朗纳斯 RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >>救援|cRXP_FRIENDLY_克雷南·阿朗纳斯|r之后，在|cRXP_FRIENDLY_灵魂医者|r处死亡并且复活
    .target 灵魂医者
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>乘坐 |cRXP_FRIENDLY_吉恩·格雷迈恩的坐骑|r 时：
    >>施放 |T134149:0|t[援救克雷南] (1) 来拯救靠近时的 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_如果失败了，请与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话以重新尝试|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,救援克雷南·阿朗纳斯 RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,救援克雷南·阿朗纳斯 RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >>救援|cRXP_FRIENDLY_克雷南·阿朗纳斯|r之后，在|cRXP_FRIENDLY_灵魂医者|r处死亡并且复活
    .target 灵魂医者
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高弗雷勋爵|r对话
    .turnin 14293 >>交任务 救援克雷南·阿朗纳斯
    .accept 14294 >>接受任务 重整旗鼓
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >>前去找|cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 和 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 14294 >>交任务 重整旗鼓
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>接受任务 牺牲
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >>乘坐 |cRXP_FRIENDLY_克罗雷的马|r
    .timer 79,牺牲 剧情RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>乘坐 |cRXP_FRIENDLY_克罗雷的马|r 时：
    >>聚集|cRXP_ENEMY_血牙猎手|r
    >>施放 |T135433:0|t[扔火炬] (1) （远程瞬发：聚集 |cRXP_ENEMY_血牙猎手|r）
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>|cRXP_WARN_等剧情结束|r
    .goto 202,40.548,39.446,20 >>骑上 |cRXP_FRIENDLY_克罗雷的马|r 前去找|cRXP_FRIENDLY_托比亚斯·密斯特曼托|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r对话
    .turnin 14212 >>交任务 牺牲
    .accept 14218 >>接受任务 以鲜血与灰烬之名
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >>乘坐 |cRXP_FRIENDLY_叛军大炮|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>乘坐 |cRXP_FRIENDLY_叛军大炮|r 时：
    >>击杀|cRXP_ENEMY_血牙猎手|r
    >>施放 |T252185:0|t[叛军大炮] (1) （远程瞬发：造成大量伤害）
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r对话
    .turnin 14218 >>交任务 以鲜血与灰烬之名
    .accept 14221 >>接受任务 绝不投降，偶尔撤退
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>进入大教堂
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r 对话
    .turnin 14221 >>交任务 绝不投降，偶尔撤退
    .accept 14222 >>接受任务 破釜沉舟
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>击杀 |cRXP_ENEMY_狂暴猎手|r
    >>|cRXP_WARN_靠近|cRXP_FRIENDLY_达利乌斯·克罗雷领主|r以获得|r |T236310:0|t[叛军勇气] |cRXP_WARN_（被动光环：大幅提高急速、生命恢复和法力恢复）|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r 对话
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .turnin 14222 >>交任务 破釜沉舟
    .timer 46,破釜沉舟 RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_等剧情结束|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话
    .accept 14375 >>接受任务 人性的最后希望
    .turnin 14375 >>交任务 人性的最后希望
    .timer 7,人性的最后希望 剧情RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_等剧情结束|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高弗雷勋爵|r对话
    .accept 14313 >>接受任务 恢复人性
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>进入房子
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .turnin 14313 >>交任务 恢复人性
    .accept 14320 >>接受任务 急需药材
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杰克·“万金油”·德林顿|r对话
    >>|cRXP_WARN_采集草药和矿脉可以获得经验值。只采集你路径上的资源|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .train 2575 >>学习 |T136248:0|t[采矿]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杰克·“万金油”·德林顿|r对话
    >>|cRXP_WARN_采集草药可以获得经验值。只采集你路径上的资源|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2366 >>学习 |T136065:0|t[草药学]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杰克·“万金油”·德林顿|r对话
    >>|cRXP_WARN_采集矿脉可以获得经验值。只采集你路径上的资源|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2575 >>学习 |T136248:0|t[采矿]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_猎手布雷克|r对话
    .trainer >>训练你的职业技能
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克利希中士|r对话
    .trainer >>训练你的职业技能
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >>|cRXP_WARN_施放|r [寻找草药]
    .cast 2580 >>|cRXP_WARN_施放|r [寻找矿物]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨曼莎·贝克利|r 对话
    .collect 2901,1 >>|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]|cRXP_BUY_从她那里|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔米拉修女|r对话
    .trainer >>训练你的职业技能
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r对话
    .trainer >>训练你的职业技能
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·唤法者|r对话
    .trainer >>训练你的职业技能
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维图斯·暗行者|r对话
    .trainer >>训练你的职业技能
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侠盗萝伦|r对话
    .trainer >>训练你的职业技能
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>点击地上的 |cRXP_PICK_一箱毒参茄精萃|r
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .turnin 14320 >>交任务 急需药材
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在地上的 |cRXP_FRIENDLY_被杀死的巡逻兵|r 的尸体对话
	>>|cRXP_WARN_如果无法完成，请在聊天中输入 /reload|r
    .accept 14321 >>接受任务 入侵
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14321 >>交任务 入侵
    .accept 14336 >>接受任务 猎物还是猎人
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14336 >>交任务 猎物还是猎人
    .accept 14347 >>接受任务 坚守阵地
    .accept 14348 >>接受任务 合作
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>击杀 |cRXP_ENEMY_入侵的被遗忘者|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>拾取地上的 |T132620:0|t|cRXP_LOOT_[黑火药桶]|r
    >>向 |cRXP_LOOT_恐怖憎恶|r 投掷 |T132620:0|t|cRXP_ENEMY_[黑火药桶]|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14347 >>交任务 坚守阵地
    .turnin 14348,1 >>交任务 合作 << !Warrior !Rogue !Monk
    .turnin 14348,2 >>交任务 合作 << Warrior/Rogue/Monk
    .accept 14366 >>接受任务 沉着迎敌
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14366 >>交任务 沉着迎敌
    .accept 14367 >>接受任务 艾伦农场的防风地窖
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>进入地窖
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高弗雷勋爵|r 和 |cRXP_FRIENDLY_梅琳达·哈蒙德|r 对话
    .turnin 14367 >>交任务 艾伦农场的防风地窖
    .accept 14369 >>接受任务 释放兽性
    .accept 14382 >>接受任务 海边的船长
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>接受任务 救救我的孩子！
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>离开地窖
step
    #optional
	#completewith Cynthia
    >>击杀|cRXP_ENEMY_被遗忘者步兵|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>进入房子
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>上楼
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>与在楼上的 |cRXP_FRIENDLY_阿什莉|r对话
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>与在外面的 |cRXP_FRIENDLY_詹姆斯|r 对话
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>与 |cRXP_FRIENDLY_辛西娅|r 对话
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>击杀|cRXP_ENEMY_被遗忘者的步兵|r和|cRXP_ENEMY_被遗忘者的水手|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>击杀 |cRXP_ENEMY_被遗忘者机械师|r （如果有的话），以便在 |cRXP_FRIENDLY_被遗忘者投石车|r 中腾出空间
    .vehicle >>进入 |cRXP_FRIENDLY_被遗忘者投石车|r
    .timer 59,投石车爆炸
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +当在 |cRXP_FRIENDLY_被遗忘者投石车|r 中时：
    >>仔细瞄准，然后施放 |T252175:0|t[起飞] (1) 以被发射到 |cRXP_ENEMY_安森船长|r 的北边船上
    *|cRXP_WARN_记住你在|r 被遗忘者投石车|cRXP_FRIENDLY_ 中的时候可以移动|r
    *|cRXP_WARN_确保你瞄准准确，因为你可能会被发射到船的侧面或掉进船外的水里|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>击杀在北边船的底层内部的|cRXP_ENEMY_安森船长|r
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >>返回楼上
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>击杀 |cRXP_ENEMY_被遗忘者机械师|r ，以便在 |cRXP_FRIENDLY_被遗忘者投石车|r 中腾出空间
    .vehicle >>进入 |cRXP_FRIENDLY_被遗忘者投石车|r
    .timer 59,投石车爆炸
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +当在 |cRXP_FRIENDLY_被遗忘者投石车|r 中时：
    >>仔细瞄准，然后施放 |T252175:0|t[起飞] (1) 以被发射到 |cRXP_ENEMY_莫里斯船长|r 的南边船上
    *|cRXP_WARN_记住你在|r 被遗忘者投石车|cRXP_FRIENDLY_ 中的时候可以移动|r
    *|cRXP_WARN_确保你瞄准准确，因为你可能会被发射到船的侧面或掉进船外的水里|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>击杀在南边船的底层的 |cRXP_ENEMY_莫里斯船长|r
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>进入地窖
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在内部的 |cRXP_FRIENDLY_梅琳达·哈蒙德|r 和 |cRXP_FRIENDLY_高弗雷勋爵|r对话
    .turnin 14368 >>交任务 救救我的孩子！
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>交任务 释放兽性
    .turnin 14382 >>交任务 海边的船长
    .accept 14386 >>接受任务 敌军的首领
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>离开地窖
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>使用 |T132161:0|t[训犬口哨] 来召唤 |cRXP_FRIENDLY_攻击猎犬|r，用它们来攻击 |cRXP_ENEMY_黑暗游侠西亚拉|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>击杀 |cRXP_ENEMY_黑暗游侠西亚拉|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>进入地窖
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高弗雷勋爵|r对话
    .turnin 14386 >>交任务 敌军的首领
    .accept 14396 >>接受任务 天崩地裂
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>离开地窖
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14396 >>交任务 天崩地裂
    .accept 14395 >>接受任务 屏住呼吸
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拾取1个 |cRXP_FRIENDLY_溺水的哨兵|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>将 |cRXP_FRIENDLY_溺水的哨兵|r 带回|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r处
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拾取1个 |cRXP_FRIENDLY_溺水的哨兵|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将 |cRXP_FRIENDLY_溺水的哨兵|r 带回|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r处
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拾取1个 |cRXP_FRIENDLY_溺水的哨兵|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将 |cRXP_FRIENDLY_溺水的哨兵|r 带回|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r处
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拾取1个 |cRXP_FRIENDLY_溺水的哨兵|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将 |cRXP_FRIENDLY_溺水的哨兵|r 带回|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r处
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 14395,1 >>交任务 屏住呼吸
    .accept 14397 >>接受任务 撤退行动
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>前往 |cRXP_FRIENDLY_格温·阿姆斯特|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14397 >>交任务 撤退行动
    .accept 14398 >>接受任务 薇儿外婆
    .accept 14403 >>接受任务 海瓦尔德兄弟
    .accept 14406 >>接受任务 克罗雷果园
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 14406 >>交任务 克罗雷果园
    .accept 14416 >>接受任务 饥饿的双头怪
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>骑上一匹 |cRXP_FRIENDLY_高山马|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>乘坐 |cRXP_FRIENDLY_高山马|r 时：
    >>对|cRXP_FRIENDLY_高山马|r使用|T134326:0|t[套捕高山马](1)使其跟随你
    >>引导5匹 |cRXP_FRIENDLY_高山马|r（包括你的）回到 |cRXP_FRIENDLY_罗娜·克罗雷|r
    >>|cRXP_WARN_避开 |cRXP_ENEMY_崩山者克洛斯|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 14416 >>交任务 饥饿的双头怪
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>进入薇儿小屋
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_薇儿外婆|r 对话
    .turnin 14398 >>交任务 薇儿外婆
    .accept 14399 >>接受任务 失踪的宝贝
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>拾取地上的 |cRXP_LOOT_亚麻布包裹的书籍|r
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_薇儿外婆|r 对话
    .turnin 14399 >>交任务 失踪的宝贝
    .accept 14400 >>接受任务 我不要穿成这样
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>前往屋外的 |cRXP_LOOT_外婆的漂亮衣服|r
step
    .goto 179,32.04,75.45
    >>拾取屋外的 |cRXP_LOOT_外婆的漂亮衣服|r
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内与 |cRXP_FRIENDLY_薇儿外婆|r 对话
    .turnin 14400 >>交任务 我不要穿成这样
    .accept 14401 >>接受任务 外婆的猫咪
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>点击地上的 |cRXP_FRIENDLY_黄猫小运|r 来召唤 |cRXP_ENEMY_残忍的卢修斯|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>击杀 |cRXP_ENEMY_残忍的卢修斯|r。拾取 |cRXP_LOOT_黄猫小运|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>进入薇儿小屋
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在屋内与 |cRXP_FRIENDLY_薇儿外婆|r 对话
    .turnin 14401 >>交任务 外婆的猫咪
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞巴斯蒂安·海瓦尔德|r对话
    .turnin 14403 >>交任务 海瓦尔德兄弟
    .accept 14404 >>接受任务 丢三落四
    .accept 14412 >>接受任务 清理渔场
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>击杀 |cRXP_ENEMY_流窜的被遗忘者|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>打开地上的 |cRXP_PICK_一桶煤焦油|r。拾取其中的 |cRXP_LOOT_煤焦油|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>进入海瓦尔德渔场
step
    .goto 179,37.46,87.15
    >>拾取在地上的 |cRXP_LOOT_造船者的工具|r
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>拾取地上的 |cRXP_LOOT_厚木板|r
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞巴斯蒂安·海瓦尔德|r对话
    .turnin 14404 >>交任务 丢三落四
    .turnin 14412 >>交任务 清理渔场
    .accept 14405 >>接受任务 海路出逃
	.target Sebastian Hayward
step
    #completewith next
    .hs >>炉石回到暮湾镇
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔米拉修女|r对话
    .trainer >>训练你的职业技能
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r对话
    .trainer >>训练你的职业技能
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·唤法者|r对话
    .trainer >>训练你的职业技能
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维图斯·暗行者|r对话
    .trainer >>训练你的职业技能
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侠盗萝伦|r对话
    .trainer >>训练你的职业技能
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_猎手布雷克|r对话
    .trainer >>训练你的职业技能
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克利希中士|r对话
    .trainer >>训练你的职业技能
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 14405 >>交任务 海路出逃
    .accept 14465 >>接受任务 前往格雷迈恩庄园
	.timer 32,格雷迈恩庄园 剧情RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_等剧情结束|r
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>进入格雷迈恩庄园
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的 |cRXP_FRIENDLY_米亚·格雷迈恩王后|r 对话
    .turnin 14465 >>交任务 前往格雷迈恩庄园
    .accept 14466 >>接受任务 国王的瞭望台
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>上楼并走向阳台
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>登上庄园塔楼的顶端
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔楼顶部与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r对话
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .turnin 14466 >>交任务 国王的瞭望台
    .turnin 14467 >>交任务 天哪，吉尔尼斯！
    .accept 24438 >>接受任务 逃亡
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>下塔楼，然后离开格雷迈恩庄园。跳向 |cRXP_FRIENDLY_驿站马车|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>登上 |cRXP_FRIENDLY_驿站马车|r
    .timer 80,乘坐驿站马车 剧情RP
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >>|cRXP_WARN_等剧情结束|r
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 24438 >>交任务 逃亡
    .accept 24468 >>接受任务 沼泽困境
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>通过击杀正在攻击他们的|cRXP_FRIENDLY_沼泽鳄鱼|r来拯救|cRXP_ENEMY_撞毁幸存者|r
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 24468 >>交任务 沼泽困境
    .accept 24472 >>接受任务 恰当的欢迎
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>朝山顶的|cRXP_LOOT_克洛斯的旗帜|r前进
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>击杀|cRXP_ENEMY_食人魔爪牙|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>拾取地上的|cRXP_LOOT_克洛斯的旗帜|r
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r对话
    .turnin 24472 >>交任务 恰当的欢迎
    .accept 24483 >>接受任务 风谷村
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>进入 |cRXP_FRIENDLY_格温·阿姆斯特|r 在风谷村的房屋
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莉安·唤法者|r对话
    .trainer >>训练你的职业技能
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 24483 >>交任务 风谷村
    .accept 24484 >>接受任务 防控病虫害
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_Willa Arnes|r 对话
    .home >>将炉石设置在风谷村
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .accept 24495 >>接受任务 破碎的往昔
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在楼上的 |cRXP_FRIENDLY_艾尔米拉修女|r 对话
    .trainer >>训练你的职业技能
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r对话
    .trainer >>训练你的职业技能
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克利希中士|r对话
    .trainer >>训练你的职业技能
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侠盗萝伦|r对话
    .trainer >>训练你的职业技能
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_猎手布雷克|r对话
    .trainer >>训练你的职业技能
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维图斯·暗行者|r对话
    .trainer >>训练你的职业技能
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>拾取地上的|cRXP_LOOT_旧日志纸页|r
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>击杀 |cRXP_ENEMY_邪巢诱捕蛛|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>进入房子
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_罗娜·克罗雷|r 和 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 24495 >>交任务 破碎的往昔
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>交任务 防控病虫害
    .accept 24501 >>接受任务 蛛后的麻烦
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>击杀 |cRXP_ENEMY_雷格纳|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>进入房子
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_格温·阿姆斯特|r 和 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24501 >>交任务 蛛后的麻烦
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>接受任务 黑瘴林
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝瑞莎·星风|r对话
    .turnin 24578 >>交任务 黑瘴林
    .accept 24616 >>接受任务 反跟踪
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_跑到路上，触发|r |T134916:0|t[冰冻陷阱] |cRXP_WARN_并召唤出|cRXP_ENEMY_黑暗斥候|r。使用|r |T133443:0|t[贝瑞莎的护身符] |cRXP_WARN_驱散|r |T134916:0|t[冰冻陷阱]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_使用|r |T133443:0|t[贝瑞莎的护身符] |cRXP_WARN_来驱散|r |T134916:0|t[冰冻陷阱]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>击杀 |cRXP_ENEMY_黑暗斥候|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝瑞莎·星风|r对话
    .turnin 24616 >>交任务 反跟踪
    .accept 24617 >>接受任务 塔多伦，野性的家园
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24617 >>交任务 塔多伦，野性的家园
    .accept 24627 >>接受任务 兵临城下
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_法珊德拉·暴风爪|r对话
    .accept 24628 >>接受任务 仪式前的准备
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>击杀|cRXP_ENEMY_哀嚎女妖|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>拾取地上的 |cRXP_LOOT_月叶|r
    *如果你开启了 |T133939:0|t[寻找草药]，可以在小地图上看到 |cRXP_LOOT_月叶|r 的位置
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>拾取地上的 |cRXP_LOOT_月叶|r
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24627 >>交任务 兵临城下
    .accept 24646 >>接受任务 夺回镰刀
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_法珊德拉·暴风爪|r对话
    .turnin 24628 >>交任务 仪式前的准备
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_使用|r |T134229:0|t[塔多伦之角] |cRXP_WARN_来吸引|r |cRXP_ENEMY_身经百战的纯粹黑暗游侠|r的注意力
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >>进入房子
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>打开里面的|cRXP_PICK_破旧保险箱|r，从中拾取|cRXP_LOOT_神秘的圣物|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24646 >>交任务 夺回镰刀
    .accept 24593 >>接受任务 非人非兽
	.target Lord Darius Crowley
step
    >>从|cRXP_PICK_暴怒之井|r、|cRXP_PICK_宁静之井|r和|cRXP_PICK_平衡之井|r中饮水
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24593 >>交任务 非人非兽
    .accept 24673 >>接受任务 返回风谷村
	.target Lord Darius Crowley
step
    #completewith next
    .hs >>使用炉石返回到风谷村
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_格温·阿姆斯特|r 对话
    .turnin 24673 >>交任务 返回风谷村
    .accept 24672 >>接受任务 勇敢向前
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>前去找 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .turnin 24672 >>交任务 勇敢向前
    .accept 24592 >>接受任务 风暴海崖的背叛
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>前往风暴海崖
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_使用|r |T135446:0|t[克雷南的潜行药水] |cRXP_WARN_进入|r |T132320:0|t[潜入]状态
    >>|cRXP_WARN_在|r |T132320:0|t[潜行]|cRXP_WARN_状态下，你可以施放大多数法术。|r |T132320:0|t[潜行] |cRXP_WARN_会在进入战斗后解除|r
    >>|cRXP_WARN_注意：|cRXP_ENEMY_山地獒犬|r的|r |T132320:0|t[潜行] |cRXP_WARN_侦测能力|r已提升
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，使用|r |T135446:0|t[克雷南的潜行药水] |cRXP_WARN_重新进入|r |T132320:0|t[潜行] |cRXP_WARN_状态（可在战斗中生效）|r
    >>|cRXP_WARN_在|r |T132320:0|t[潜行]|cRXP_WARN_状态下，你可以施放大多数法术。|r |T132320:0|t[潜行] |cRXP_WARN_会在进入战斗后解除|r
    >>|cRXP_WARN_注意：|cRXP_ENEMY_山地獒犬|r的|r |T132320:0|t[潜行] |cRXP_WARN_侦测能力|r已提升
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>小心地在建筑和山丘之间穿行，前往|cRXP_ENEMY_沃登勋爵|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>击杀|cRXP_ENEMY_沃登勋爵|r
    >>|cRXP_WARN_他在房屋外部与房屋内部的楼上之间巡逻|r
    >>|cRXP_WARN_小心，他会施放|r |T132797:0|t[陈酿白兰地] |cRXP_WARN_（远程瞬发：眩晕4秒并造成伤害）|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>前往 |cRXP_ENEMY_灰葬男爵|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>击杀 |cRXP_ENEMY_灰葬男爵|r
    >>|cRXP_WARN_他在自家房门之间巡逻|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话
    .turnin 24592 >>交任务 风暴海崖的背叛
    .accept 24677 >>接受任务 包抄被遗忘者
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>与 |cRXP_FRIENDLY_赫维尔勋爵|r 对话来乘坐 |cRXP_FRIENDLY_壮实的高山马|r 前去找 |cRXP_FRIENDLY_罗娜·克罗雷|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r, |cRXP_FRIENDLY_麦格达·白墙|r, 和 |cRXP_FRIENDLY_马库斯|r 对话
    .turnin 24677 >>交任务 包抄被遗忘者
    .accept 24575 >>接受任务 解放村民
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>接受任务 最后的美餐
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>接受任务 揭竿而起
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>击杀|cRXP_ENEMY_棕色雄鹿|r，从它们身上拾取|cRXP_LOOT_鹿肉块|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>击杀|cRXP_ENEMY_被遗忘者的奴役者|r。从它们身上拾取|T134247:0|t|cRXP_LOOT_[奴役者之钥]|r
    >>在烬石矿脉内及周围，对|T134247:0|t|cRXP_LOOT_[被奴役的村民]|r身上的|cRXP_PICK_链球|r使用|cRXP_FRIENDLY_奴役者的钥匙|r来解救他们
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>进入烬石矿脉
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>前去找在内部的|cRXP_ENEMY_奴隶主博罗索格|r
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>击杀在内部的|cRXP_ENEMY_奴隶主博罗索格|r
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>退出烬石矿脉
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格达·白墙|r, |cRXP_FRIENDLY_马库斯|r, 和 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24675 >>交任务 最后的美餐
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>交任务 揭竿而起
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>交任务 解放村民
    .accept 24676 >>接受任务 手刃仇人
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>击杀|cRXP_ENEMY_被遗忘者士兵|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>击杀|cRXP_ENEMY_执行官柯奈尔|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>击杀 |cRXP_ENEMY_疯狂的瓦尔诺瓦|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24676 >>交任务 手刃仇人
    .accept 24904 >>接受任务 吉尔尼斯城保卫战
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话来开始吉尔尼斯城的战斗，如果已经有战斗在进行中，你可能也会被传送到吉尔尼斯
    >>|cRXP_WARN_在这个任务中你不会有箭头可跟随，因为你可能被传送到吉尔尼斯的随机所在地区。请紧跟|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r和|cRXP_FRIENDLY_达利乌斯·克罗雷领主|r|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_跟随|cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r和|cRXP_FRIENDLY_达利乌斯·克罗雷领主|r 穿过吉尔尼斯|r
    .use 50334 >>|cRXP_WARN_对|r |cRXP_WARN_吉尔尼斯征兵|cRXP_FRIENDLY_ |r守卫使用你的|T135340:0|t[吉尔尼斯捍卫者之剑]，可提升其急速和生命恢复速度|r
    >>|cRXP_WARN_进入一辆|cRXP_FRIENDLY_烬石大炮|r和一辆|cRXP_FRIENDLY_受损投石车|r，击败|cRXP_ENEMY_邪恶憎恶|r和|r |cRXP_ENEMY_血腐者|r
    >>|cRXP_WARN_将|cRXP_ENEMY_希尔瓦娜斯·风行者|r的生命值削减至40%以击败她|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,吉尔尼斯城保卫战 剧情RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_等剧情结束|r
    .goto 202,36.89,59.09,8 >>进入房子
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24904 >>交任务 吉尔尼斯城保卫战
    .accept 24902 >>接受任务 追踪希尔瓦娜斯
    .timer 170,追踪希尔瓦娜斯 剧情RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_跟紧 |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r，否则他不会移动并且可能消失|r
    >>|cRXP_WARN_跟随他直到他躲进教堂内的水中，然后等待剧情动画完成|r
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_托比亚斯·密斯特曼托|r消失，就跳过这一步|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>返回 |cRXP_FRIENDLY_罗娜·克罗雷|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24902 >>交任务 追踪希尔瓦娜斯
    .accept 24903 >>接受任务 复仇或是生存
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .accept 24903 >>接受任务 复仇或是生存
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>放弃任务 追踪希尔瓦娜斯
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .accept 24902 >>接受任务 追踪希尔瓦娜斯
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_跟紧 |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r，否则他不会移动并且可能消失|r
    >>|cRXP_WARN_跟随他直到他躲进教堂内的水中，然后等待剧情动画完成|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>返回 |cRXP_FRIENDLY_罗娜·克罗雷|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 24902 >>交任务 追踪希尔瓦娜斯
    .accept 24903 >>接受任务 复仇或是生存
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在里面的|cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .accept 24903 >>接受任务 复仇或是生存
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>进入 |cRXP_FRIENDLY_King 吉恩·格雷迈恩|r 的房子
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话
    .turnin 24903 >>交任务 复仇或是生存
    .accept 24920 >>接受任务 拖延不可避免的局势
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>乘坐 |cRXP_FRIENDLY_被俘的骑乘蝙蝠|r
    .timer 21,拖延不可避免的局势 RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_等剧情结束|r
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>乘坐 |cRXP_FRIENDLY_被俘的骑乘蝙蝠|r 时：
    >>击杀 |cRXP_ENEMY_被遗忘者天灾锻造师|r、|cRXP_ENEMY_入侵的被遗忘者|r 和 |cRXP_ENEMY_被遗忘者投石车|r
    >>施放 |T133709:0|t[钢铁炸弹] (1) (远程瞬发：造成伤害)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>乘坐 |cRXP_FRIENDLY_被俘的骑乘蝙蝠|r 时：
    .goto 202,30.43,60.88,5 >>施放 |T132182:0|t[旧披风] (2) 回去找 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r 对话
    .turnin 24920 >>交任务 拖延不可避免的局势
    .accept 24678 >>接受任务 齐膝的危险
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>下楼进入地下墓穴
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_使用|r |T135432:0|t[烧了一半的火把] |cRXP_WARN_来驱赶|cRXP_ENEMY_ |r腐烂蛆虫|cRXP_ENEMY_、|r地下蜘蛛|r 和 |cRXP_ENEMY_墓地老鼠|r
    .goto 179,49.78,57.88,6 >>前往地下墓穴的尽头
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到外面与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .turnin 24678 >>交任务 齐膝的危险
    .accept 24602 >>接受任务 入土为安
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>打开地上的 |cRXP_PICK_被扰动的土壤|r，拾取其 |cRXP_LOOT_被发掘的纪念物|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .turnin 24602 >>交任务 入土为安
    .accept 24679 >>接受任务 先祖的祝福
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>在神龛处使用|T134344:0|t[祝福供品]
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .turnin 24679 >>交任务 先祖的祝福
    .accept 24680 >>接受任务 覆舟海湾
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24680 >>交任务 覆舟海湾
    .accept 24681 >>接受任务 他们有盟友，我们也有
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>进入 |cRXP_FRIENDLY_投刃车|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>当在 |cRXP_FRIENDLY_投刃车|r 中时：
    .subzone 4725 >>前往大海岬
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>当在 |cRXP_FRIENDLY_投刃车|r 中时：
    >>击杀|cRXP_ENEMY_兽人劫掠者|r、|cRXP_ENEMY_狼牙骑兵|r以及|cRXP_ENEMY_战争机器|r
    >>施放 |T132330:0|t[发射利刃] (1)（远程瞬发：造成伤害并击退）
    >>|T236303:0|t[利刃之幕]（2）（远程瞬发：造成大量伤害并击退）
    >>|T136106:0|t[双倍加速] (3) (自身瞬发：增加移动速度100%持续10秒)
    >>|cRXP_WARN_千万不要让 |cRXP_FRIENDLY_投刃车|r 死亡|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>当在 |cRXP_FRIENDLY_投刃车|r 中时：
    >>施放|T136106:0|t[双倍加速] (3) (自身瞬发：增加移动速度100%持续10秒)
    .subzone 4726 >>返回到覆舟海湾
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r对话
    .turnin 24681 >>交任务 他们有盟友，我们也有
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .accept 26706 >>接受任务 最后的较量
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_注意：此任务有独立计时器，您最多需要等待5分钟才能进入|r |cRXP_FRIENDLY_召唤角鹰兽|r
    .vehicle >>进入|cRXP_FRIENDLY_召唤角鹰兽|r
	.timer 58,最后的较量 RP
step
    >>在顶层甲板上击杀|cRXP_ENEMY_炮艇步兵|r
    >>清理完顶层甲板后，点击船中央的|cRXP_PICK_绳子|r跟随|cRXP_FRIENDLY_罗娜·克罗雷|r
    >>跟随|cRXP_ENEMY_罗娜·克罗雷|r的同时，击杀|cRXP_FRIENDLY_飞艇步兵|r
    >>|cRXP_WARN_在 |cRXP_FRIENDLY_罗娜·克罗雷|r 放置炸药后，等待剧情动画|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,最后的较量 RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗娜·克罗雷|r 对话
    .turnin 26706 >>交任务 最后的较量
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜风将军|r对话
    .accept 14434 >>接受任务 鲁瑟兰村
    .turnin 14434 >>交任务 鲁瑟兰村
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 对话
    .accept 28517 >>接受任务 风嚎橡树
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>通过传送门前往达纳苏斯
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >>进入风嚎橡树
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉恩·格雷迈恩|r对话
    .turnin 28517 >>交任务 风嚎橡树
    .accept 26385 >>接受任务 变革的浪潮
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >>离开 风嚎橡树
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>通过传送门返回鲁瑟兰村
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Lor'Danel >>飞往洛达内尔
    .target 维斯派塔斯
    .zoneskip 62
]])
