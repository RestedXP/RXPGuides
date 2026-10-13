if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP 无限指南 (联盟)
#subgroup 速通指南1-20级
--#groupid RXP-SRGCE-A1
#name 1-5级 寒脊山谷
#next 5-11级 丹莫罗
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +你选择的是侏儒和矮人专用的指南，请确保你的选择与你角色出生地一致
step << !Warlock !Warrior !Shaman
    #softcore << Warlock
    #optional
    #completewith WolfMeat
	.destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    .accept 179 >>接受任务 矮人的交易
    .target 斯登·粗臂
step << Warrior/Warlock/Shaman
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_击杀并拾取 |cRXP_ENEMY_蓬毛幼狼|r 直到你拥有 10 铜币以上的商贩垃圾物品为止|r
    >>|cRXP_WARN_卸下你的|r |T132665:0|t[侍僧长袍]|cRXP_WARN_，|r |T135005:0|t[侍僧衬衣]|cRXP_WARN_，|r |T134581:0|t[侍僧短裤]|cRXP_WARN_，和|r |T132535:0|t[侍僧鞋] |cRXP_WARN_你即可出售它们并获得 4 枚铜币|r << Warlock
    >>|cRXP_WARN_卸下你的|r |T135009:0|t[新兵衬衣]|cRXP_WARN_，|r |T134582:0|t[新兵短裤]|cRXP_WARN_，和|r |T132540:0|t[新兵之靴] |cRXP_WARN_你即可出售它们并获得3枚铜币|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob 蓬毛幼狼
    .money >0.001
step << Warrior/Warlock/Shaman
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Warrior/Warlock/Shaman
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦德尔·哈金|r 对话，NPC在里面
    .vendor >>把垃圾物品卖给商人
    .target 格伦德尔·哈金
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
    .train 8017,1 << Shaman
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话，NPC在里面
    .train 6673 >>学习 |T132333:0|t[战斗怒吼]
    .target 斯兰·库尔曼
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话，NPC在里面
    .train 348 >>学习 |T135817:0|t[献祭]
    .accept 1599 >>接受任务 开端
    .target 阿拉玛尔·格里姆
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提欧·暴风之锤|r 对话
    .train 8017 >>影袭 |T136086:0|t[石化武器]
    .target Teo Hammerstorm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>炉石返回寒脊山谷
    .subzoneskip 77,1
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了

step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>击杀|cRXP_ENEMY_瘦骨嶙峋的幼狼|r，从它们身上拾取|cRXP_LOOT_硬狼肉|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob 蓬毛幼狼
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>刷怪升级到 2 级
    .mob 蓬毛幼狼
step << Priest/Mage/Warlock/Shaman
    #season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 15瓶|r |T132794:0|t[清凉的泉水] << !Shaman
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水] << Shaman
    >>|cRXP_WARN_如果你钱不够的话，额外刷 |cRXP_ENEMY_蓬毛幼狼|r |r
    .collect 159,15 << !Shaman --Collect Refreshing Spring Water (x15)
    .collect 159,10 << Shaman --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
    .xp >6,1
step << !Priest !Mage !Warlock !Shaman
    #completewith next << !Hunter
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 600发|r |T132384:0|t[轻弹丸] << Hunter
    .vendor >>|cRXP_WARN_出售垃圾物品|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target 艾德林·怒流
    .xp >6,1
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    .turnin 179 >>交任务 矮人的交易
    .accept 233 >>接受任务 寒脊山谷的送信任务
    .accept 3106 >>接受任务 简易符文 << Dwarf Warrior
    .accept 3107 >>接受任务 神圣符文 << Dwarf Paladin
    .accept 3108 >>接受任务 风蚀符文 << Dwarf Hunter
    .accept 3109 >>接受任务 密文符文 << Dwarf Rogue
    .accept 3110 >>接受任务 神圣符文 << Dwarf Priest
    .accept 3112 >>接受任务 简易备忘录 << Gnome Warrior
    .accept 3113 >>接受任务 密文备忘录 << Gnome Rogue
    .accept 3114 >>接受任务 雕文备忘录 << Gnome Mage
    .accept 3115 >>接受任务 被污染的备忘录 << Gnome Warlock
    .accept 98574 >>接受任务 神圣备忘录 << Gnome Priest
    .accept 98581 >>接受任务 古老符文 << Dwarf Shaman
    .target 斯登·粗臂

step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto 1426/0,479.72,-6498.17,20 >>进入霜鬃巨魔洞穴
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >>朝 |cRXP_ENEMY_霜鬃巨魔新兵|r方向前进
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>击杀洞穴里面的 |cRXP_ENEMY_霜鬃巨魔新兵|r 并拾取 |cRXP_LOOT_羽毛咒符|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >>炉石返回寒脊山谷
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >>删除包里的 |T134414:0|t[炉石] 你已不再需要它了
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔 << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    .turnin 1599 >>交任务 开端
    .turnin -3115 >>交任务 被污染的备忘录
    .target 阿拉玛尔·格里姆
--XX Warlock Imp Quest End. Return to normal

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r 对话
    .turnin 233 >>交任务 寒脊山谷的送信任务
    .accept 183 >>接受任务 猎杀野猪
    .accept 234 >>接受任务 寒脊山谷的送信任务
    .target 塔林·锐眼
step
#season 0,1
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>击杀 |cRXP_ENEMY_小型峭壁野猪|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob 小型峭壁野猪
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r 对话
    .turnin 183 >>交任务 猎杀野猪
    .target 塔林·锐眼

step << Paladin/Warlock/Shaman
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>刷怪达到 1130+／1400 经验
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 234 >>交任务 寒脊山谷的送信任务
    .accept 182 >>接受任务 巨魔洞穴
    .target 格瑞林·白须
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>击杀 |cRXP_ENEMY_霜鬃巨魔幼崽|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob 霜鬃巨魔新兵
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>刷怪升级到 4 级
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_你有5分钟时间返回安威玛尔，在|r |T132791:0|t[德南的热酒] |cRXP_WARN_失效之前|r
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话，NPC在里面
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    .target 索加斯·格瑞姆森
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索加斯·格瑞姆森|r 对话
    .turnin 3108 >>交任务 风蚀符文 << Dwarf
    .train 1978 >>学习 |T132204:0|t[毒蛇钉刺]
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    .turnin 3115 >>交任务 被污染的备忘录
    .train 172 >>学习 |T136118:0|t[腐蚀术]
    .target 阿拉玛尔·格里姆
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提欧·暴风之锤::257446|r 对话
    .target Teo Hammerstorm::257446
    .turnin 98581 >>交任务 古老符文
    .accept 94373 >>接受任务 大地的召唤
    .train 8042 >>影袭 |T136026:0|t[大地震击]
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grund Drokda::2756|r 对话
    .target Grund Drokda::2756
    .accept 97277 >>接受任务 Grund and Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r 对话，NPC在里面
    .turnin 3107 >>交任务 神圣符文 << Dwarf
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .train 20271 >>学习 |T135959:0|t[审判]
    .target 布罗莫斯·格鲁诺尔
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>把垃圾物品卖给商人
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 15瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
    .xp >6,1
step << Paladin/Warlock/Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >>爬上寒脊山谷北部的山丘
step << Paladin/Warlock/Hunter
    >>击杀 |cRXP_ENEMY_Snow Leopard 觅食的灰狼|r
    >>在地上拾取 |cRXP_PICK_戈兹温的机械日志|r
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target 诺里斯·激流
step
    #loop
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>击杀 |cRXP_ENEMY_霜鬃巨魔幼崽|r << !Shaman
    >>击杀 |cRXP_ENEMY_霜鬃巨魔幼崽|r。拾取它们的 |cRXP_LOOT_冰爪熊坠饰|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob 霜鬃巨魔新兵
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
    .target 格瑞林·白须
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    +|cRXP_WARN_在|cRXP_LOOT_|T132791:0|t[德南的热酒] 失效之前，你有5分钟时间去获得|r格瑞林·白须的日记|r 然后|cRXP_WARN_返回安威玛尔|r
    >>|cRXP_WARN_无需担心任务失败，你可以重试|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>进入霜鬃巨魔洞穴
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>往里走，与|cRXP_ENEMY_冷酷的格瑞克尼尔|r对话
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>击杀 |cRXP_ENEMY_冷酷的格瑞克尼尔|r，他在里面。拾取他的 |cRXP_LOOT_格瑞林·白须的日记|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob 冷酷的格瑞克尼尔
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>离开霜鬃巨魔洞穴
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .accept 3364 >>接受任务 热酒快递
    .target 诺里斯·激流
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .target 格瑞林·白须
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    >>|cRXP_WARN_如果任务失败，请跳过此步骤|r
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>放弃任务 热酒快递. 你很快会重新接受它
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 和 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .accept 3364 >>接受任务 热酒快递
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target 诺里斯·激流
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .goto 1426/0,567.14,-6363.06
    .target 格瑞林·白须
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target 德南·弗卡特
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target 玛瑞克·斯托纳尔
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索姆·哈格林|r 对话
    .turnin 3113 >>交任务 密文备忘录 << Gnome
    .turnin 3109 >>交任务 密文符文 << Dwarf
    .train 1784 >>学习 |T132320:0|t[潜行]
    .target 索姆·哈格林
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    .turnin 3110 >>交任务 神圣符文 << Dwarf
    .turnin 98574 >>交任务 神圣备忘录 << Gnome
    .trainer >>训练你的职业技能
    .target 布兰斯托克·卡德尔
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    .turnin 3106 >>交任务 简易符文 << Dwarf
    .turnin 3112 >>交任务 简易备忘录 << Gnome
    .train 100 >>学习 |T132337:0|t[冲锋]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 斯兰·库尔曼
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >>返回安威玛尔的 |cRXP_FRIENDLY_提欧·暴风之锤|r
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提欧·暴风之锤::257446|r 对话
    .target Teo Hammerstorm::257446
    .turnin 94373 >>交任务 大地的召唤
    .accept 94374 >>接受任务 大地的召唤
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grund Drokda::2756|r 对话
    .target Grund Drokda::2756
    .accept 97277 >>接受任务 Grund and Gozwin
step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >>爬上寒脊山谷北部的山丘
step << !Paladin !Warlock !Hunter
    >>击杀 |cRXP_ENEMY_Snow Leopard 觅食的灰狼|r
    >>在地上拾取 |cRXP_PICK_戈兹温的机械日志|r
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >>|cRXP_WARN_在|r 灵魂石地|cRXP_WARN_ 处使用|cRXP_PICK_ |T134743:0|t[大地灵契] |r来召唤|r |cRXP_FRIENDLY_大地之魂|r
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地之魂::5891|r 对话
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>交任务 大地的召唤
    .accept 94375 >>接受任务 大地的召唤
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >>返回安威玛尔的 |cRXP_FRIENDLY_提欧·暴风之锤|r
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提欧·暴风之锤::257446|r 对话
    .target Teo Hammerstorm::257446
    .turnin 94375 >>交任务 大地的召唤
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .target 格瑞林·白须
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target 诺里斯·激流
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >>刷怪达到1690+/2100点经验
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Grund Drokda::2756|r 对话
    .target Grund Drokda::2756
    .turnin 97277 >>交任务 Grund and Gozwin
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    .accept 5626 >>接受任务 圣光的恩赐
    .target 布兰斯托克·卡德尔
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人萨鲁斯::1965|r 对话
    .target Mountaineer Thalos::1965
    .turnin 282 >>交任务 森内尔的观察站
    .accept 420 >>接受任务 森内尔的观察站
    .accept 96628 >>接受任务 冒险者
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉兹·跳链::6782|r 对话
    .target Hands Springsprocket::6782
    .accept 2160 >>接受任务 塔诺克的补给品
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >>穿过寒脊山小径
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP 无限指南 (联盟)
#subgroup 速通指南1-20级
--#groupid RXP-SRGCE-A1
#name 5-11级 丹莫罗
#next 11-12级 艾尔文森林（矮人/侏儒）；11-12级 虚空行者任务；12-14级 洛克莫丹（矮人/侏儒）；11-13级 洛克莫丹（猎人）
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    >>|cRXP_WARN_收好你在任务（贝尔丁的补给）中获得的|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_你稍后会在升级|r |T133971:0|t[烹饪]|cRXP_WARN_中需要|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto 1426/0,-499.17,-5644.37
    .xp 5+1325 >>前往卡拉诺斯。打怪到 1325+/2800 经验值以上，击杀路途上的 |cRXP_ENEMY_峭壁野猪|r << Priest
    .xp 5+1595 >>前往卡拉诺斯。打怪到 1595+/2800 经验值以上，击杀路途上的 |cRXP_ENEMY_峭壁野猪|r << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
--xx 410 the adventurer
--xx 410 the great outdoors
step
    #hardcore
    #completewith next
    .goto 1426/0,-499.17,-5644.37
    .subzone 131 >>前往卡拉诺斯，丹莫罗
    .mob 峭壁野猪
step
    #softcore
    #completewith next
    >>|cRXP_WARN_请确保你的区域不是寒脊山小径|r
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃里克·明锤::265813|r 对话
    .target Eric Brighthammer::265813
    .turnin 96628 >>交任务 冒险者
    .accept 96608 >>接受任务 壮丽自然
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_在聊天框中输入 "/坐下"，并在篝火旁等待一分钟|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃里克·明锤::265813|r 对话
    .target Eric Brighthammer::265813
    .turnin 96608 >>交任务 壮丽自然
    .accept 96629 >>接受任务 露营基础：烹饪
step
    #label SenirEnd
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须::1252|r 对话
    .target Senir Whitebeard::1252
    .turnin 420 >>交任务 森内尔的观察站
    .accept 98322 >>接受任务 安全 the Mountain
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .trainer >>训练你的职业技能
    .target 吉姆瑞兹·黑轮
step << Warlock
    .goto 1426/0,-526.11,-5639.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    .vendor 6328 >>|cRXP_BUY_如果钱够，购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够可以之后再买|r
    .target 丹尼·血泡
    .money <0.0100
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .accept 384 >>接受任务 啤酒烤猪排
    .target 拉格纳·雷酒
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔诺克·霜锤|r 对话
    .turnin 2160,1 >>交任务 塔诺克的补给品 << Warrior/Rogue
    .turnin 2160,2 >>交任务 塔诺克的补给品 << !Warrior !Rogue
    .target 塔诺克·霜锤
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔::1226|r 对话 
    .target Maxan Anvol::1226
    .accept 5625 >>接受任务 圣光之衣 << Priest
    .accept 99158 >>接受任务 群山中的曙光
step << Priest
    .goto 1426/0,-453.81,-5668.73
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在外面的 |cRXP_FRIENDLY_巡山人多尔夫|r 身上|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target 巡山人多尔夫
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .turnin 5625 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
    .target 马克萨恩·安沃尔
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .trainer >>训练你的职业技能
    .target 玛济斯·石衣
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target 阿扎尔·战锤
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_英格丽德·邓瓦尔德|r 在楼上对话
    .trainer >>训练你的职业技能
    .target Ingrid Dunwald
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target 格瑞夫
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .trainer >>训练你的职业技能
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷姆罗克·匹斯诺尔::1699|r 对话
    >>|cRXP_WARN_如果你没有1银币，或者想稍后再做，就跳过这一步|r
    .target Gremlock Pilsnor::1699
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .turnin 96629 >>交任务 露营基础：烹饪
    .money <0.0100
step
    #optional
    .isQuestComplete 96629
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷姆罗克·匹斯诺尔::1699|r 对话
    .target Gremlock Pilsnor::1699
    .turnin 96629 >>交任务 露营基础：烹饪
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .trainer >>训练你的职业技能
    .target 霍格拉尔·巴坎
step << Rogue
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷格·比尔姆|r 对话
    >>|cRXP_WARN_Buy the|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target 克雷格·比尔姆
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>删除包里的|T135426:0|t[小飞刀] 你已不再需要它了
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 格兰尼斯·快斧
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .home >>将你的炉石设置到雷酒酿制厂
    .vendor >>|cRXP_BUY_能买多少|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_就买多少|r << Priest/Mage/Warlock
    .target 旅店老板贝尔姆
    .bindlocation 2102
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r 对话
    .accept 400 >>接受任务 贝尔丁的工具
    .target 萨雷克·暗岩
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto 1426/0,-428.45,-5590.65--c:Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    #requires DeleteOldDaggers << Rogue
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这能让你制作|r |T135255:0|t[劣质平衡石] |cRXP_WARN_使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 托格努斯·燧火
step << Shaman
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_购买一个|r |T135145:0|t[学徒短杖]
    .target 格劳恩·索姆温
    .money <0.0479
    .collect 2495,1 --Walking Stick (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #completewith next
    +|cRXP_WARN_装备|r |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火::1241|r 对话 
    .target Tognus Flintfire::1241
    .accept 98321 >>接受任务 燧火的货物
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 和 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    >>|cRXP_WARN_在途中请勿击杀任何 |cRXP_ENEMY_黑熊幼崽|r |r
    .accept 317 >>接受任务 贝尔丁的补给
    .goto 1426/0,-632.15,-5466.540
    .target 驾驶员贝隆·风箱
    .accept 313 >>接受任务 灰色洞穴
    .goto 1426/0,-641.80,-5473.18
    .target 驾驶员迪恩·石轮
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r 和 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    .turnin 400 >>交任务 贝尔丁的工具
    .goto 1426/0,-682.23,-5488.94
    .target 贝尔丁·钢架
    .accept 5541 >>接受任务 海格纳的弹药
    .goto 1426/0,-664.55,-5499.710
    .target 罗斯洛·鲁治
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    >>|cRXP_BUY_购买一个|r |T134708:0|t[矿工锄]>>|cRXP_BUY_。如果买不起就跳过这一步|r
    .collect 2901,1 --Mining Pick (1)
    .goto 1426/0,-664.55,-5499.710
    .target 罗斯洛·鲁治
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto 1426/0,-660.91,-5528.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_亚尔·锤石|r 对话
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target 亚尔·锤石
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith RumbleshotAmmo
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step
    #completewith RumbleshotAmmo
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取它们的 |cRXP_LOOT_厚熊皮|r
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob 黑熊幼崽
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob 大峭壁野猪
    .mob 峭壁野猪
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人格雷琴::271546|r 对话 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>交任务 安全 the Mountain
    .accept 98319 >>接受任务 安全 the Mountain
step
    #label RumbleshotAmmo
    .goto 1426/0,-371.400,-5746.900
    >>打开 |cRXP_PICK_弹药箱|r。拾取 |cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人格雷琴::271546|r 对话 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>交任务 安全 the Mountain
    .accept 98319 >>接受任务 安全 the Mountain
step
    #completewith MountaineerCornelius
    >>击杀所有类型的 |cRXP_ENEMY_雪怪|r。拾取它们掉落的 |cRXP_LOOT_雪怪的鬃毛|r
    >>在灰色洞穴里的地上拾取 |cRXP_PICK_燧火的货物|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    #completewith MountaineerCornelius
    .goto 1426/0,-275.000,-5623.200,20 >>进入灰色洞穴
step
    #label MountaineerCornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>前往|cRXP_FRIENDLY_Mountaineer Cornelius|r在Grizzled Den洞穴内的尸体
    >>|cRXP_WARN_小心洞穴深处等级更高的 |cRXP_ENEMY_雪怪|r|r
    .complete 98319,1 --|Mountaineer Cornelius found
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>击杀所有类型的 |cRXP_ENEMY_雪怪|r。拾取它们掉落的 |cRXP_LOOT_雪怪的鬃毛|r
    >>在灰色洞穴里的地上拾取 |cRXP_PICK_燧火的货物|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .subzoneskip 136,1
step
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r 或 |cRXP_ENEMY_冰爪熊|r。拾取它们的 |cRXP_LOOT_厚熊皮|r
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob 黑熊幼崽
    .mob +Ice Claw Bears
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob 大峭壁野猪
    .mob 峭壁野猪
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    #completewith next
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮::1377|r 对话
    .target Pilot Stonegear::1377
    .turnin 313 >>交任务 灰色洞穴
step
    .goto 1426/0,-632.100,-5466.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱::1378|r 对话
    .target Pilot Bellowfiz::1378
    .turnin 317 >>交任务 贝尔丁的补给
    .accept 318 >>接受任务 艾沃沙酒
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火::1241|r 对话
    .target Tognus Flintfire::1241
    .turnin 98321 >>交任务 燧火的货物
step
    #optional
    .xp 7 >>刷怪至7级
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须::1252|r 对话 
    .target Senir Whitebeard::1252
    .accept 287 >>接受任务 霜鬃巨魔要塞
step
    #completewith BrewnallVillage
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 大峭壁野猪
    .mob 峭壁野猪
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人格雷琴::271546|r 对话
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>交任务 安全 the Mountain
    .accept 98323 >>接受任务 安全 the Mountain
step
    #optional
    #completewith AfR
    .goto 1426,40.632,62.794,40,0
    .goto 1426/0,-201.51,-6015.520,15 >>前去找 |cRXP_FRIENDLY_海格纳·重枪|r
step << Hunter
    #optional
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一把|r |T135611:0|t[精制短枪]
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .turnin 5541 >>交任务 海格纳的弹药
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target 海格纳·重枪
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label AfR
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    .turnin 5541 >>交任务 海格纳的弹药
    .target 海格纳·重枪
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >>前去找 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .accept 312 >>接受任务 马克格拉恩的干肉
    .target 图德拉·马克格拉恩
step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >>前往烈酒村
step << !Mage !Priest !Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target 基格·吉布恩
step << Priest/Mage/Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r
    .collect 1179,20
    .target 基格·吉布恩
    .isOnQuest 318
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 和 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .turnin 318 >>交任务 艾沃沙酒
    .accept 319 >>接受任务 艾沃沙酒
    .accept 315 >>接受任务 完美烈酒
    .goto 1426/0,315.23,-5378.42--c:Dun Morogh,30.190,45.726
    .target 雷杰德·麦酒
    .accept 310 >>接受任务 针锋相对
    .goto 1426/0,315.42,-5372.02
    .target 马莱斯·麦酒
step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    >>击杀 |cRXP_ENEMY_冰爪熊|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob 老峭壁野猪
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 老峭壁野猪
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob 冰爪熊
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob 雪豹
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>击杀 |cRXP_ENEMY_冰爪熊|r，|cRXP_ENEMY_老峭壁野猪|r，和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob 冰爪熊
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob 老峭壁野猪
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob 雪豹
    .isQuestTurnedIn 384
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    .goto 1426/0,315.28,-5378.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 对话
    .turnin 319 >>交任务 艾沃沙酒
    .accept 320 >>接受任务 艾沃沙酒
    .target 雷杰德·麦酒
step
    #completewith Headhunters
    >>击杀洞穴里的 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>沿着洞口坡道上行，然后跳入霜鬃巨魔要塞
    .isOnQuest 287
step
    #label Headhunters
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_进入霜鬃巨魔要塞洞穴。向洞穴深处走时靠左侧探索|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>击杀洞穴里的 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者

step
    #hardcore
    #completewith Distracting
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >>返回卡拉诺斯
--XX if they don't somehow meet xp gate by Kharanos then wcyd

step
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须::1252|r 对话
    .target Senir Whitebeard::1252
    .turnin 98323 >>交任务 安全 the Mountain
    .turnin 287 >>交任务 霜鬃巨魔要塞
step
    #optional
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_和一杯|r |T132800:0|t[雷霆麦酒]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target 旅店老板贝尔姆
    .isQuestAvailable 384
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一杯|r |T132800:0|t[雷霆麦酒]
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target 旅店老板贝尔姆
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加文·雷酒|r 对话
    .turnin 308 >>交任务 加文的爱好
    .target 加文·雷酒
step
    .goto 1426/0,-547.93,-5607.27
    >>点击地上的 |cRXP_PICK_无人守卫的雷酒桶|r
    .turnin 310 >>交任务 针锋相对
    .accept 311 >>接受任务 向马莱斯回报
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .turnin 5625 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
    .target 马克萨恩·安沃尔
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .trainer >>训练你的职业技能
    .target 玛济斯·石衣
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target 阿扎尔·战锤
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_英格丽德·邓瓦尔德|r 在楼上对话
    .trainer >>训练你的职业技能
    .target Ingrid Dunwald
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .trainer >>训练你的职业技能
    .target 霍格拉尔·巴坎
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target 格兰尼斯·快斧
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .trainer >>训练你的职业技能
    .target 吉姆瑞兹·黑轮
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target 格瑞夫
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .trainer >>训练你的职业技能
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target 拉格纳·雷酒

--Alternative path now for Hunters to hit 10 fast for pet quest
step << Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伽文神父::1253|r 对话
    .target Father Gavin::1253
    .turnin 99158 >>交任务 群山中的曙光
step << Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>沿土路上行
    .isQuestAvailable 314
step << Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob 瓦加什
step << Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target 鲁德拉·冻石
step << Hunter
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_风筝他到农场南边的守卫处。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob 瓦加什
step << Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target 鲁德拉·冻石
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .accept 432 >>接受任务 该死的穴居人！
    .goto 1426/0,-1580.000,-5714.700
    .target Senator Mehr Stonehallow
step << Hunter
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>击杀矿洞外面的 |cRXP_ENEMY_石腭击颅者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .target Senator Mehr Stonehallow
    .goto 1426/0,-1580.000,-5714.700
step << Hunter
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target 驾驶员塞克·锤足
step << Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step << Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob 癞爪
step << Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .turnin 417 >>交任务 驾驶员的复仇
    .target 驾驶员塞克·锤足
step << Hunter
    #completewith ShimmerweedCollect
    .deathskip >>死于附近的 |cRXP_ENEMY_有伤疤的峭壁野猪|r 并在 |cRXP_FRIENDLY_灵魂医者|r 处复活
    .target 灵魂医者
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话
    .target 拉兹·滑链
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-455.83,-5497.90
    .accept 412 >>接受任务 自动净化装置
step
    .isOnQuest 315
    #completewith ShimmerweedCollect
    #optional
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>跑上山坡，前往闪光岭
step
    #label ShimmerweedCollect
    .goto 1426/0,-212.24,-5364.43,60,0
    .goto 1426/0,-241.79,-5308.62,55,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-271.34,-5003.27,50,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-241.79,-5308.62,50,0
    .goto 1426/0,-212.24,-5364.43
    .goto 1426/0,-143.29,-5288.92,0
    .goto 1426/0,-241.79,-5059.08,0
    >>击杀 |cRXP_ENEMY_霜鬃先知|r。拾取他们的 |cRXP_LOOT_微光草|r
    >>打开地上的 |cRXP_PICK_微光草篮|r 。拾取 |cRXP_LOOT_微光草|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob 霜鬃先知
step << !Mage !Warlock
    .goto 1426/0,-94.88,-5647.69
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_等|cRXP_ENEMY_冰须|r 巡逻出洞穴。一旦他离开洞穴， 你就可以偷偷进入并打开|r |cRXP_PICK_马克格拉恩的储肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto 1426/0,-94.88,-5647.69
    >>|cRXP_WARN_对|r |cRXP_WARN_冰须|r |cRXP_ENEMY_施放|r |T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_对|r |cRXP_WARN_冰须|r |cRXP_ENEMY_施放|r |T136183:0|t[恐惧] << Warlock
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .turnin 312 >>交任务 马克格拉恩的干肉
    .target 图德拉·马克格拉恩
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 和 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .turnin 315 >>交任务 完美烈酒
    .accept 413 >>接受任务 微光酒
    .goto 1426/0,315.28,-5378.39
    .target 雷杰德·麦酒
    .turnin 311 >>交任务 向马莱斯回报
    .goto 1426/0,315.42,-5372.02
    .target 马莱斯·麦酒
step << Hunter
    #loop
    .goto 1426/0,462.48,-5288.92,60,0
    .goto 1426/0,580.68,-5167.43,60,0
    .goto 1426/0,541.28,-5302.05,60,0
    .goto 1426/0,605.31,-5321.75,60,0
    .goto 1426/0,551.13,-5367.72,60,0
    .goto 1426/0,570.83,-5305.330,60,0
    >>击杀|cRXP_ENEMY_麻风侏儒|r，拾取|cRXP_LOOT_锋锐齿轮|r和|cRXP_LOOT_自适应齿轮|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob 麻风侏儒
step << Hunter
    .xp 10-1720 >>一直刷怪直到距离10级还差1720点经验
    .isQuestAvailable 320
step << Hunter
    #optional
    .xp 10-2040 >>一直刷怪直到距离10级还差2040点经验
    .isQuestTurnedIn 320
step << !Hunter
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 8+4525 >>刷怪达到4525+/5400 经验
    .isQuestAvailable 320
step << !Hunter
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 9 >>刷怪升级到 9 级
step
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
    .subzoneskip 2102
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须::1252|r 对话
    .target Senir Whitebeard::1252
    .accept 291 >>接受任务 森内尔的报告
step
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .turnin 320 >>交任务 艾沃沙酒
    .target 驾驶员贝隆·风箱
step << Hunter
    .goto 1426/0,-463.66,-5474.00,8,0
    .goto 1426/0,-455.83,-5497.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话
    .target 拉兹·滑链
    .turnin 412 >>交任务 自动净化装置
step << Hunter
    #optional
    .xp 10 >>刷怪练级到 10 级
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target 格瑞夫
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .accept 6064 >>接受任务 驯服野兽
    .trainer >>训练你的职业技能
step << Hunter
    .goto 1426/0,-576.69,-5745.30--c:Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_对 |r大峭壁野猪|cRXP_WARN_ 使用|r |T132164:0|t[驯服之杖]|cRXP_ENEMY_|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob 大峭壁野猪
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6064 >>交任务 驯服野兽
    .target 格瑞夫
    .accept 6084 >>接受任务 驯服野兽
step << Hunter
    .goto 1426/0,-630.87,-5827.38--c:Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之杖] |cRXP_WARN_对|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob 雪豹
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6084 >>交任务 驯服野兽
    .target 格瑞夫
    .accept 6085 >>接受任务 驯服野兽
step << Hunter
    .goto 1426/0,-680.12,-5837.23--c:Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_使用|r |T132164:0|t[驯服之仗] |cRXP_WARN_对|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob 冰爪熊
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6085 >>交任务 驯服野兽
    .target 格瑞夫
    .accept 6086 >>接受任务 训练野兽
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架::1376|r 对话 
    .target Beldin Steelgrill::1376
    .accept 96408 >>接受任务 A Visitor to 丹莫罗
step << Warrior
    #optional
    #completewith WarriorThrown
    +|cRXP_WARN_持续刷怪，直到你拥有价值10银30铜的垃圾物品|r
    .money >0.1030
step << Warrior
    #completewith WarriorThrown
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40 >>前往铁炉堡--c:Ironforge,14.90,87.10
step << Warrior
    #label WarriorThrown
    .goto 1455/0,-1205.65,-5042.12--c:Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 或 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .trainer >>如果你已主队，或有人帮忙，现在就击杀 |cRXP_ENEMY_瓦加什|r。然后找 |cRXP_FRIENDLY_布里维夫·石拳|r 学习双手锤。要不然的话找 |cRXP_FRIENDLY_比克斯|r 学习投掷。如果你不确定需要学习哪一个的话就选择投掷
    .target 比克斯
    .target 布里维夫·石拳
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target 布雷文·寒钢
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    .goto 1426,53.47,35.02
    >>离开铁炉堡。返回丹莫罗
    .zone Dun Morogh >>前往 丹莫罗
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 老峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 老峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伽文神父::1253|r 对话
    .target Father Gavin::1253
    .turnin 99158 >>交任务 群山中的曙光
step << !Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>沿土路上行
    .isQuestAvailable 314
step << !Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob 瓦加什
step << !Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target 鲁德拉·冻石
step << !Hunter
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_风筝他到农场南边的守卫处。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob 瓦加什
step << !Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target 鲁德拉·冻石
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 大峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 大峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin 96408 >>交任务 A Visitor to 丹莫罗
    .accept 96392 >>接受任务 Farsen's Watch
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话查看他的远视
    >>|cRXP_WARN_目标完成后你可以取消视界术|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_按ESC键取消视界术|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_目标完成后你可以取消视界术|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    >>|cRXP_WARN_按ESC键取消视界术|r
    .turnin 96392 >>交任务 Farsen's Watch
    .accept 96390 >>接受任务 防患于未然
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target 厨师格瑞姆
step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >>前往古博拉采掘场，丹莫罗
    .subzoneskip 134
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >>学习 |T133971:0|t[烹饪]
    .target 厨师格瑞姆
step << !Hunter
    #optional
    #completewith next
    .goto 1426/0,-1576.47,-5673.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor 1237 >>|cRXP_BUY_从他那里购买10片|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_需要多少买多少|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_如果需要的话|r|cRXP_BUY_可以从他那里购买5片/杯|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue !Shaman
    .vendor 1237 >>|cRXP_BUY_如果需要的话|r|cRXP_BUY_可以从他那里购买10片/杯|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << Shaman
    .target 卡杉·莫格什
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .target 参议员梅尔·圣石
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >>接受任务 该死的穴居人！
    .goto 1426/0,-1600.30,-5726.590
    .target 工头乔尼·石眉
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>击杀 |cRXP_ENEMY_石腭击颅者|r 他们可在掘场里外
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>进入古博拉采掘场
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>击杀掘场里面的 |cRXP_ENEMY_石腭断骨者|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob 石腭断骨者
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .target 参议员梅尔·圣石
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >>交任务 公众之仆
    .goto 1426/0,-1579.96,-5714.73
    .target 工头乔尼·石眉  
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_有伤疤的峭壁野猪|r 和 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 有伤疤的峭壁野猪
    .mob 老峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_有伤疤的峭壁野猪|r 和 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 有伤疤的峭壁野猪
    .mob 老峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith OII
    >>击杀 |cRXP_ENEMY_石腭伏击者|r。拾取它们的 |T132621:0|t[|cRXP_LOOT_空火药桶|r]
    .use 268548 >>|cRXP_WARN_使用|r |T132621:0|t[|cRXP_LOOT_空火药桶|r] |cRXP_WARN_来开启任务|r
    >>|cRXP_WARN_注释：这个物品掉落率很低。如果你在完成了|r 黑铁间谍|cRXP_ENEMY_ 任务时还没有找到它，请跳过此步骤|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >>接受任务 被偷走的炸药粉
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>击杀 |cRXP_ENEMY_黑铁间谍|r。拾取他们的 |T237385:0|t|cRXP_LOOT_黑铁地图|r
    .use 274268 >>|cRXP_WARN_使用|r |T237385:0|t[|cRXP_LOOT_黑铁地图|r] |cRXP_WARN_来开始任务|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>接受任务 Underground Map
    .mob 黑铁间谍
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Earthseer Farsen|r 对话
    .turnin 96390 >>交任务 防患于未然
    .turnin 96391 >>交任务 Underground Map
    .accept 96393 >>接受任务 旧铁炉堡入侵
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .turnin 95213 >>交任务 被偷走的炸药粉
    .accept 95214 >>接受任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .accept 95214 >>接受任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>击杀 |cRXP_ENEMY_石腭伏击者|r。拾取它们的 |cRXP_LOOT_被偷走的炸药粉|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_矿场主管瑟斯丁|r 对话
    .turnin 95214 >>交任务 被偷走的炸药粉
    .target Quarrymaster Thesten
step
    #completewith next
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >>去去找南门小径的 |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
step
    .goto 1426/0,-2447.11,-5479.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人维拉特·麦酒|r 对话
    .turnin 413 >>交任务 微光酒
    .accept 414 >>接受任务 卡德雷尔的酒
    .target 巡山人维拉特·麦酒
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >>穿过南门小径，进入洛克莫丹
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>进入地堡。登上顶楼
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .accept 267 >>接受任务 穴居人的威胁
    .target 拉格弗斯上尉
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >>前往塞尔萨玛，洛克莫丹
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务 卡德雷尔的酒
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入烈酒旅店
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .target 维德拉·壁炉
    .xp >14,1
--XX Skip if 14+
step << !Hunter
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_需要的话也可以从她那里|r|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] << !Rogue
    >>|cRXP_WARN_这个是用来|r在船上制作 |cRXP_WARN_|T135805:0|t[基础营火]，以便在不浪费时间的情况下提升你的 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target 雅尼·铁心
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话，NPC在里面
    .home >>将你的炉石设置为塞尔萨玛
    .target 旅店老板纳克罗·壁炉
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >>离开烈酒旅店
step << Hunter
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦希尔德·暗爪|r 对话
    .accept 86667 >>接受任务 困于风雪
    .target Grenhild Darktalon
step << Dwarf/Gnome
    #label HonorStudents
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .accept 6387 >>接受任务 荣誉学员
    .target 布洛克·寻石者
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务 卡德雷尔的酒
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    >>|cRXP_WARN_收好任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_稍后会用在 |T133971:0|t[烹饪] |cRXP_WARN_上|r
    >>|cRXP_WARN_不必特意现在完成这个任务，你很快会回到洛克莫丹|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>前往奥加兹岗哨
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >>进入地堡。登上顶楼
step
    #label Stormpike1
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step << !Hunter
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >>穿过北门小径去找 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target 驾驶员塞克·锤足
step << !Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step << !Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob 癞爪
step << !Hunter
    #xprate <1.49 << Rogue
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    >>|cRXP_WARN_选择|r |T135641:0|t|T135641:0|t工匠匕首|cRXP_WARN_，保留备用|r << Rogue
    .turnin 417 >>交任务 驾驶员的复仇 << !Rogue
    .turnin 417,1 >>交任务 驾驶员的复仇 << Rogue
    .target 驾驶员塞克·锤足
step << !Hunter
    #completewith flyIF
    .hs >>炉石到塞尔萨玛
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Hunter
    #completewith flyIF
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .subzoneskip 2101 -- stoutlager inn
    .subzoneskip 144 -- thelsamar
    .target 灵魂医者
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target 维德拉·壁炉
    .isQuestComplete 418
step << Dwarf/Gnome
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .turnin 6387 >>交任务 荣誉学员
    .accept 6391 >>接受任务 飞往铁炉堡
    .target 索格拉姆·伯雷森
step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Ironforge
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>朝建筑内的|cRXP_FRIENDLY_高尼尔·石趾|r走去
step << Dwarf/Gnome
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高尼尔·石趾|r 对话
    .turnin 6391 >>交任务 飞往铁炉堡
    .accept 6388 >>接受任务 格莱斯·瑟登
    .target 高尼尔·石趾
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔德伦·风暴破坏者::258098|r 对话 
    .target Eldrun Stormbreaker::258098
    .accept 94449 >>接受任务 火焰的召唤
    .trainer >>训练你的职业技能
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56,12 >>朝|cRXP_FRIENDLY_参议员巴林·红石|r走去--c:Ironforge,39.550,57.490
step
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r 对话
    .turnin 291 >>交任务 森内尔的报告
    .target 参议员巴林·红石
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    >>|cRXP_WARN_不要飞到任何地方|r
    .turnin 6388 >>交任务 格莱斯·瑟登
    .accept 6392 >>接受任务 向格雷姆罗克回复
    .target 格莱斯·瑟登
step << Shaman
    .goto 1455/0,-1208.100,-5037.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯洛米尔·铁手|r 对话
    >>|cRXP_BUY_购买一支|r |T135154:0|t[短杖]
    .collect 854,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Kelomir Ironhand
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith DRT
    .equip 16,854 >>|cRXP_WARN_装备|r |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto 1455/0,-1197.200,-5041.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布里维夫·石手|r 和 |cRXP_FRIENDLY_比克斯|r 对话
    .trainer >>用剩余的金钱训练任何你想要的武器技能
    .target 布里维夫·石拳
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    >>如果你之前没有练过，就训练投掷和双手锤
    .train 2567 >>训练 投掷武器
    .target 比克斯
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >>学习双手锤
    .goto 1455/0,-1197.27,-5041.49
    .target 布里维夫·石拳
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target 布雷文·寒钢
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_装备买来的|r |T135641:0|t[平衡飞刀]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto 1455/0,-1273.83,-5022.08,15 >>前往 |cRXP_FRIENDLY_贝莉亚·雷岩|r
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 对话
    .turnin 6086 >>交任务 训练野兽
    .trainer >>训练你的宠物技能
    .target 贝莉亚·雷岩
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 对话
    .trainer >>训练你的职业技能
    .target 雷格努斯·雷石
step << Dawrf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师洛汉|r 对话  
    .turnin 5639 >>交任务 绝望祷言
    .trainer >>训练你的职业技能
    .target High Priest Rohan
step << Priest/Mage/Warlock
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_如果你钱够的话，购买以下物品：|r
    >>|T134711:0|t[初级巫师之油] |cRXP_WARN_和|r |T133906:0|t[烤鼠尾鱼]
    >>|cRXP_WARN_顺便看看有没有当前或稍后可用的高DPS的|r |T132317:0|t[法杖] |cRXP_WARN_升级装备|r
    >>|cRXP_WARN_这些物品能在前期带来大幅DPS提升。如果你不想做或不能做，就跳过这一步|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹快速交任务并提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_BUY_技能：|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label AHCheck
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便在洛克莫丹更快交任务：|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target 拍卖师林姆克
    .target 拍卖师雷姆斯
    .target 拍卖师巴克尔
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #requires OilWandFood
step << Dwarf Paladin
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r 对话
    .home >>将你的炉石设置为铁炉堡
    .target 旅店老板洛雷·火酒
    .bindlocation 1537
step << Hunter
    .hs >>炉石到塞尔萨玛
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << Hunter
    #optional
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
    .zoneskip Loch Modan
step << !Hunter
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>进入矿道地铁
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在矿道地铁的中间平台上与 |cRXP_FRIENDLY_蒙提|r 对话
    .accept 6661 >>接受任务 捕捉矿道老鼠
    .target 蒙提
step << !Hunter
    >>在矿道地铁中对|cRXP_FRIENDLY_矿道老鼠|r使用|T133942:0|t|T133942:0|t[捕鼠者之笛]
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob 矿道老鼠
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在矿道地铁的中间平台上与 |cRXP_FRIENDLY_蒙提|r 对话
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .timer 11,捕捉矿道老鼠剧情表演
    .accept 6662 >>接受任务 我的兄弟，尼普希
    .target 蒙提
step << !Hunter skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label TramEnd
    >>|cRXP_WARN_搭乘矿道地铁前往暴风城方向|r
    >>|cRXP_WARN_在等待前往暴风城的地铁时，如有需要可提升|r |T135966:0|t|T135966:0|t[急救] |cRXP_WARN_技能等级|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼普希|r 在矿道地铁暴风城一侧的中央平台对话
    .turnin 6662 >>交任务 我的兄弟，尼普希
    .target 尼普希
    .subzoneskip 2257,1 --Deeprun Tram
step << !Hunter
    #optional
    #completewith Order
    .abandon 6662 >>放弃任务 我的兄弟，尼普希
step << !Hunter
    #optional
    #completewith Order
    .zone Stormwind City >>进入暴风城
    .isOnQuest 1338
step << !Hunter
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .accept 353 >>接受任务 雷矛的包裹
    .target 格瑞曼德·艾尔默
step << !Hunter
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
    .target 弗伦·长须
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,325.68,-8688.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_伊尔萨·考宾|r 对话
    .trainer >>训练你的职业技能
    .accept 1638 >>接受任务 战士的训练
    .target 伊尔萨·考宾
step << Warrior
    #optional
    #completewith next
    .goto 1453/0,401.29,-8741.21,17,0
    .goto 1453/0,417.13,-8636.5,12 >>进入酒馆
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
    .target 哈里·伯加德
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
    .target 巴特莱比
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>击败|cRXP_ENEMY_巴特莱比|r
    .complete 1640,1 --Beat Bartleby
    .mob 巴特莱比
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
    .target 巴特莱比
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target 哈里·伯加德
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target 黑暗缚灵者加科因
step << !Hunter
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>学习单手剑 << Rogue/Mage
    .trainer >>学习法杖 << Priest/Hunter
    .trainer >>学习单手剑和法杖 << Warlock
    .trainer >>学习双手剑 << Warrior/Paladin
    .target 吴平
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_确保为之后的训练保留10银币|r
    .collect 851,1 -- Cutlass (1)
    .target 冈瑟尔·维勒
    .money <0.1922
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    >>|cRXP_WARN_确保为之后的训练保留10银币|r
    .collect 851,1 -- Cutlass (1)
    .target 冈瑟尔·维勒
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .money <0.1922
step << Rogue
    #optional
    +|cRXP_WARN_装备|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
<< Alliance !Hunter
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#name 11-12 艾尔文森林（矮人/侏儒）
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 洛克莫丹 (矮人/侏儒)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +|cRXP_WARN_在前往|r 杜加尔·朗德瑞克|cRXP_WARN_ 的路上，重复施放|r |T136126:0|t[生命分流] |cRXP_FRIENDLY_直到你的生命值低于10%|r
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fp Stormwind >>获取暴风城的飞行路径
    .target 杜加尔·朗德瑞克
step << Warlock
    #softcore
    #optional
    #completewith next
    >>|cRXP_WARN_重复施放|r |T136126:0|t[生命分流] |cRXP_WARN_直到你的生命值低于10%，然后沿着飞行管理员旁的悬崖旁跳下（不要跳进水里）故意死掉|r
    .deathskip >>在灵魂医者处复活
    .target 灵魂医者
step
    #optional
    #completewith next
    .subzone 87 >>前往金雾村
step << skip
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .accept 62 >>接受任务 法戈第矿洞
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .target 威廉·匹斯特
    .goto 1429/0,31.92,-9460.38
    .accept 60 >>接受任务 狗头人的蜡烛
step << Mage/Rogue
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>前往旅店楼上
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
    .target 扎尔迪玛·维夫希尔特
    .goto 1429/0,34.28,-9471.61
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    >>|cRXP_WARN_优先训练|r |T132147:0|t|T132147:0|t[双武器]
    .target 科瑞恩·塞尔留斯
    .goto 1429/0,12.69,-9465.75
    .trainer >>训练你的职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .target 雷米
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .accept 40 >>接受任务 鱼人的威胁
    --.accept 47 >> Accept Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto 1429/0,73.92,-9465.54
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << Warlock
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 176 >>接受任务 通缉：霍格
    .goto 1429/0,683.40,-9667.93
    .target 瑞尼尔副队长
step << Warlock
    #completewith next
    >>|cRXP_WARN_这个|r|T134939:0|t[|cRXP_LOOT_采金日程表|r] |cRXP_WARN_掉率非常低。如果没有获得，可忽略此步骤|r
    >>|cRXP_ENEMY_格拉夫·疾齿|r |cRXP_WARN_为稀有刷新怪，但掉落率为 100%|r
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
    .unitscan 格拉夫·疾齿
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>击杀 |cRXP_ENEMY_霍格|r。拾取他的 |cRXP_LOOT_人爪|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_可能会在多个位置刷新|r
    >>|cRXP_WARN_持续对 |r霍格|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r，并使用你的常规 DoT 技能将其击杀|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan 霍格
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 88 >>接受任务 公主必须死！
    .target 斯通菲尔德妈妈
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483

--
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 和 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .target 波尼斯·斯通菲尔德姑妈
    .goto 1429/0,338.47,-9889.67
    .accept 88 >>接受任务 公主必须死！
    .target 斯通菲尔德妈妈
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .target 比利·马科伦
    .goto 1429/0,38.41,-9923.69
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
step << skip
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_任务过程中5级怪物可能会变灰，但仍需完成此任务以解锁后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step << skip
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>|cRXP_WARN_进入并探察法戈第矿洞|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step << skip
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_任务过程中5级怪物可能会变灰，但仍需完成此任务以解锁后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step << skip
    #softcore
    #completewith GoldshireTurnins
    .deathskip >>死亡并在灵魂医者处复活
    .target 灵魂医者
step << skip
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >>前往金雾村
step << skip
    #hardcore
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 60 级都很有用|r
    .turnin 47 >>交任务 金砂交易
    .target 雷米
step << skip --Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >>交任务 法戈第矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 176,3 >>交任务 通缉：霍格
    .isQuestComplete 176
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >>交任务 法戈第矿洞
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
step << skip
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .target 治安官杜汉
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >>交任务 收货人
    .isOnQuest 123
step << skip --Warlock
    .isQuestTurnedIn 123
    .goto 1429/0,74.02,-9465.52
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .accept 147 >>接受任务 猎杀收货人
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .target 威廉·匹斯特
    .goto 1429/0,31.92,-9460.38
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
step << skip
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 60 级都很有用|r
    .target 雷米
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .turnin 47 >>交任务 金砂交易
--

step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >>前往东方的 |cRXP_FRIENDLY_卫兵托马斯|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto 1429/0,-1032.06,-9610.23
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
step
    #completewith BundleOT
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀任何看到的|cRXP_ENEMY_ |r森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #era
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .goto 1429/0,-986.35,-9336.06
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .target 管理员莱琳
    .goto 1429/0,-1289.22,-9469.80
    .accept 5545 >>接受任务 木材危机
step
    #era
    #completewith next
    >>拾取地上的|cRXP_LOOT_一捆木柴|r。|cRXP_WARN_它们位于树下|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_点击|cRXP_ENEMY_罗尔夫的尸体|r时注意附近的|r鱼人|cRXP_PICK_可能会进入战斗|r
    >>|cRXP_ENEMY_鱼人觅食者|r |cRXP_WARN_会施放|r |T135915:0|t|T135915:0|t[喝下初级药水] |cRXP_WARN_为自己恢复61-68点生命值|r
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>拾取树根附近地上的 |cRXP_LOOT_一捆木柴|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .target 管理员莱琳
    .goto 1429/0,-1289.22,-9469.80
    .turnin 5545 >>交任务 木材危机
step
    #completewith WaterloggedToolbox
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormin Pelford|r 对话
    .accept 91733 >>接受任务 Downstream
    .target Ormin Pelford
step
    >>在地上拾取 |cRXP_PICK_浸水的锯子|r
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>在地上拾取 |cRXP_PICK_浸水的斧头|r
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>在地上拾取 |cRXP_PICK_浸水的工具箱|r
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .goto 1429/0,-1119.800,-9931.300
    >>杀死 |cRXP_ENEMY_呱呱|r。拾取他的 |T134169:0|t[|cRXP_LOOT_呱呱的头颅|r]
    .use 247826 >>|cRXP_WARN_使用|r |T134169:0|t[|cRXP_LOOT_呱呱的头颅|r] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_他是一个11级的精英怪。如果你无法击杀他，跳过此步骤|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>接受任务 呱呱的头颅
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step << Warlock
    .isOnQuest 147
    .goto 1429/0,-932.35,-9806.53
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>击杀 |cRXP_ENEMY_收货人莫根|r，拾取他掉落的 |cRXP_LOOT_收藏者之戒|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
    .complete 147,1 -- The Collector's Ring (1)
    .mob 收货人莫根
step << Warlock
    .goto 1429/0,-932.35,-9806.53
    >>击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r，拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_WARN_集中火力快速击杀 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对 |r收货者摩根|cRXP_WARN_ 施放 |cRXP_ENEMY_|T136183:0|t[恐惧]|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step
    .goto 1429/0,-869.87,-9768.10
    >>击杀 |cRXP_ENEMY_公主|r。并拾取她的 |cRXP_LOOT_项圈|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_会与她的 |r猪类随从|cRXP_ENEMY_ 一起仇恨你|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_还会施放|r |T132368:0|t[冲锋]|cRXP_WARN_，造成高额伤害|r
    >>|cRXP_WARN_在与 |r公主|cRXP_ENEMY_ 交战前，先积攒至 100 点怒气|r << Warrior
    >>|cRXP_WARN_确保 |T136205:0|t[闪避] |cRXP_WARN_已准备就绪。如果你觉得吃力，可以利用围栏并使用投掷武器卡路径来拖延时间|r << Rogue
    >>|cRXP_WARN_准备好使用|r |T134830:0|t[次级治疗药水]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_点击此处查看视频参考|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob 公主
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target 卫兵托马斯
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
    .accept 109 >>接受任务 向格里安·斯托曼报到
    .xp <9,1
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ormin Pelford|r 对话
    .turnin 91733 >>交任务 Downstream
    .target Ormin Pelford
step
    #completewith next
    .subzone 798 >>前往山巅之塔
step
    .isOnQuest 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Merell Ross::248277|r 对话
    .target Merell Ross::248277
    .turnin 91740 >>交任务 呱呱的头颅
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>前往赤脊山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .target 卫兵帕克
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >>接受任务 豺狼人的入侵
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_小心前进，途中有高等级怪物|r
    .turnin 244 >>交任务豺狼人的入侵
    .target 菲尔顿副队长
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
step << skip
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_我们选择的奖励是|r |T132383:0|t[爆破火箭] |cRXP_WARN_它能造成不错的伤害，还可以用于"仇恨分离"，非常实用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看"仇恨分离"技巧的视频参考。这是一个简短却非常有价值的教学视频|r
    .target 摩根·匹斯特
step
    #ah
    .goto 1453/0,660.28,-8814.55--c:Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品以便在西部荒野快速交任务：|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[秃鹫肉条]
    >>|T133884:0|t[鱼人眼睛]
    >>|T135997:0|t[血牙野猪的头]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙野猪的肝]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target 拍卖师亚克森
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务誓缚
    .target 黑暗缚灵者加科因
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈环] |cRXP_WARN_召唤 |r虚空行者|cRXP_ENEMY_|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >>消灭那些|cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob 虚空行者
step << Warlock
    #softcore
    #completewith next
    +|cRXP_WARN_在返回 |r黑暗缚灵者加科因|cRXP_WARN_ 的路上开始施放 |cRXP_FRIENDLY_|T136126:0|t[生命分流]|r，因为你即将进行一次死亡跳跃|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target 黑暗缚灵者加科因
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >>交任务誓缚
step << Warlock
    #softcore
    .deathskip >>|cRXP_WARN_通过使用|r |T136126:0|t[生命分流] |cRXP_WARN_减少血量并站在你旁边的营火上自杀，然后在灵魂医者处复活|r
    .target 灵魂医者
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >>离开暴风城。前往闪金镇
step << Warlock
    #era
    .isOnQuest 147
    .goto 1429/0,74.02,-9465.52
    .target 治安官杜汉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 147 >>交任务 猎杀收货人
    .turnin 39 >>交任务 托马斯的报告
step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 39 >>交任务 托马斯的报告
    .target 治安官杜汉
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约瑟芬·卡森|r 对话
    .trainer >>训练你的职业技能
    .target Josephine Carson
    .xp <12,1
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
    .xp <12,1
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
    .xp <12,1
step << Mage/Priest/Rogue
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>前往旅店楼上
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
	.target 扎尔迪玛·维夫希尔特
    .goto 1429/0,34.28,-9471.61
    .trainer >>训练你的职业技能
    .xp <12,1
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.target 女牧师洁塞塔
    .trainer >>训练你的职业技能
    .xp <12,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .target 科瑞恩·塞尔留斯
    .goto 1429/0,12.69,-9465.75
    .trainer >>训练你的职业技能
    .xp <12,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .target 斯通菲尔德妈妈
    .turnin 88 >>交任务 公主必须死！
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << Dwarf Paladin
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>击杀 |cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人前锋|r。从它们身上拾取|T132889:0|t|T132889:0|t[亚麻布]
    >>|cRXP_WARN_确保你身上有10个|r |T132889:0|t|T132889:0|t[亚麻布] |cRXP_WARN_用于后续的圣骑士职业任务|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
step
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >>前往西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_农夫法布隆|r 对话
    .target Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 184 >>交任务 法布隆的地契
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r 对话
    .accept 64 >>接受任务 遗失的怀表
    .target 农夫法布隆
    .goto 1436/0,918.42,-9851.50
    .accept 151 >>接受任务 老马布兰契
    .accept 36 >>接受任务 杂味炖肉
    .goto 1436/0,919.47,-9853.13
	.target 弗娜·法布隆
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫萨丁|r 对话
    .target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .accept 9 >>接受任务 清理荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .goto 1436/0,1042.67,-10111.670
    .turnin 36 >>交任务 杂味炖肉
    .accept 38 >>接受任务 杂味炖肉
    .accept 22 >>接受任务 猪肝馅饼
step
    #optional
    .isQuestComplete 38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>交任务 杂味炖肉
step
    #optional
    .isQuestComplete 22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔玛·萨丁|r 对话
    .target 萨尔玛·萨丁
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >>交任务 猪肝馅饼
step
    #softcore
    #sticky
    #completewith next
    .deathskip >>送死并进行墓地复活，或者跑到哨兵岭
    .target 灵魂医者
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .turnin 109 >>交任务 向格里安·斯托曼报到
    .accept 12 >>接受任务 西部荒野人民军
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .target 格里安·斯托曼
    .goto 1436/0,1045.12,-10508.80
    .accept 12 >>接受任务 西部荒野人民军
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹努文队长|r 对话
    .target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 102 >>接受任务 西部荒野的豺狼人
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵加里安|r 对话
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>接受任务 红色皮质面罩
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target 索尔
step << Dwarf Paladin
    .hs >>将炉石使用回铁炉堡
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 1537,1
step << Dwarf Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索尔
    .zoneskip Ironforge
    .zoneskip Loch Modan
step << !Paladin
    .hs >>炉石到塞尔萨玛
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << !Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 索尔
    .zoneskip Ironforge
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#name 12-14 洛克莫丹 (矮人/侏儒)
#next 13-15 西部荒野；14-16 黑海岸
#defaultfor Gnome/Dwarf

step -- dont delete
    #label LochStart
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto 1455/0,-896.47,-4601.65,12 >>前往 |cRXP_FRIENDLY_布兰度尔·铁锤|r
step << Dwarf Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .accept 2999 >>接受任务圣洁之书
    .target 布兰度尔·铁锤
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上，前去找 |cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 2999 >>交任务圣洁之书
    .accept 1645 >>接受任务圣洁之书
    .turnin 1645 >>交任务圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_使用|T133739:0|t|T133739:0|t|cRXP_LOOT_[圣洁之书]|r开始任务|r
    .accept 1646 >>接受任务圣洁之书
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 1646 >>交任务圣洁之书
    .accept 1647 >>接受任务圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_约翰·特纳|r 对话
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_在铁炉堡外环巡逻，路线从石火旅店稍远处一直延伸到访客中心稍远处|r
    .turnin 1647 >>交任务圣洁之书
    .accept 1648 >>接受任务圣洁之书
    .turnin 1648 >>交任务圣洁之书
    .accept 1778 >>接受任务圣洁之书
    .unitscan 约翰·特纳
step << Dwarf Paladin
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>前往 |cRXP_FRIENDLY_蒂萨·热炉|r 下方的楼梯
step << Dwarf Paladin
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上，前去找 |cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 1778 >>交任务圣洁之书
    .accept 1779 >>接受任务圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆里顿·热炉|r 在楼上对话
    .turnin 1779 >>交任务圣洁之书
    .accept 1783 >>接受任务圣洁之书
    .target 穆里顿·热炉
step << Paladin
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
    .zoneskip Ironforge,1
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target 维德拉·壁炉
    .isQuestComplete 418
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor 1682 >>|cRXP_BUY_需要的话可以从她那里|r|cRXP_BUY_购买几个|r |T133634:0|t[棕色小包]
    .target 雅尼·铁心
step << !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话
    .vendor 6734 >>|cRXP_BUY_购买一些|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_如果需要的话|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_购买一些|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_如果需要的话|r << !Warrior !Rogue
    .target 旅店老板纳克罗·壁炉
step << Dwarf/Gnome
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .turnin 6392 >>交任务 向格雷姆罗克回复
    .target 布洛克·寻石者
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦希尔德·暗爪|r 对话
    .accept 86667 >>接受任务 困于风雪
    .target Grenhild Darktalon
step
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>前往南门小径隧道外地面上的积雪处
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_在雪地上使用|r |T1387609:0|t[陶瓷罐] |cRXP_WARN_来收集|r |T1387609:0|t[雪罐]
    .complete 86667,1 -- Jar of Snow 1/1
step << Shaman
    #completewith shamfire
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >>前往并穿过南门小径
step << Shaman
    #completewith shamfire
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >>前去找山顶洞穴里的 |cRXP_FRIENDLY_布鲁格斯·燃生|r
step << Shaman
    #label shamfire
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布鲁格斯·燃生::257597|r 对话
    .target Bruegs Kindleborn::257597
    .turnin 94449 >>交任务 火焰的召唤
    .accept 94465 >>接受任务 火焰的召唤
step << Shaman
    .isOnQuest 94465
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >>小心地从山上跳下进入洛克莫丹
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >>沿着山路前往 |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Braldir Ashmantle::257808|r 对话
    .target Braldir Ashmantle::257808
    .turnin 94465 >>交任务 火焰的召唤
    .accept 94466 >>接受任务 火焰的召唤
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_限时10分钟内交任务！|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Norric Lochthane|r 对话
    >>|cRXP_WARN_确保在|T1387609:0|t[雪罐] 10分钟计时结束前交掉此任务|r
    .turnin 86667 >>交任务 困于风雪
    .target Norric Lochthane
step << Shaman
    #loop
    .goto 1432/0,-3287.400,-4868.000,45,0
    .goto 1432/0,-3397.500,-4870.800,45,0
    .goto 1432/0,-3337.300,-4998.400,45,0
    >>击杀 |cRXP_ENEMY_碎石怪先知|r。从他们身上拾取 |cRXP_LOOT_试剂袋|r
    .complete 94466,2 --|1/1 Reagent Pouch
    .mob Stonesplinter Seer
step
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    >>击杀 |cRXP_ENEMY_坑道鼠地卜师|r。拾取他们的 |cRXP_LOOT_火焰焦油|r << Shaman 
    >>|cRXP_ENEMY_只能在矿洞内找到|r |cRXP_WARN_坑道鼠地卜师|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer
step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >>进入银溪矿洞
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto 1432/0,-2984.82,-4902.33
    >>打开矿洞内的 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>打开矿洞内的 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔伦·安德玛|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133476:0|t|T133053:0|t[重型尖刺钉锤] |cRXP_BUY_或|r |T133053:0|t|T133053:0|t[铁木槌] |cRXP_BUY_（如果有货的话）|r
    >>|cRXP_WARN_如果买不起，就去附近的|cRXP_ENEMY_坑道鼠|r那里刷钱，直到攒够为止|r
    >>|cRXP_WARN_动作要快，否则其他玩家可能会在你之前买下它|r
    >>|cRXP_WARN_如果你不想这样做，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target 尼尔伦·安德玛
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔伦·安德玛|r 对话
    >>|cRXP_BUY_从他那里购买|r |T133476:0|t|T133053:0|t[重型尖刺钉锤] |cRXP_BUY_或|r |T133053:0|t|T133053:0|t[铁木槌] |cRXP_BUY_（如果有货的话）|r
    >>|cRXP_WARN_如果买不起，就去附近的|cRXP_ENEMY_坑道鼠|r那里刷钱，直到攒够为止|r
    >>|cRXP_WARN_动作要快，否则其他玩家可能会在你之前买下它|r
    >>|cRXP_WARN_如果你不想这样做或想尝试从拍卖行快速购买更便宜/更好的武器，就跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target 尼尔伦·安德玛
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_装备|r |T133476:0|t|T133476:0|t[重型尖刺钉锤]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_装备|r |T133053:0|t|T133053:0|t[铁木槌]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    >>击杀 |cRXP_ENEMY_坑道鼠地卜师|r。拾取他们的 |cRXP_LOOT_火焰焦油|r << Shaman
    >>|cRXP_ENEMY_只能在矿洞内找到|r |cRXP_WARN_坑道鼠地卜师|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 << Shaman  -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer << Shaman
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob 山猪
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob 老黑熊
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 森林潜伏者
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >>进入地堡
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor 1362 >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target 高索·布鲁姆
step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .turnin 353 >>交任务 雷矛的包裹
    .target 巡山人雷矛
step
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r，拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_现在不必特意去刷这个，只需顺手击杀并拾取沿途遇到的所有野猪即可|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob 老黑熊
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob 山猪
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob 森林潜伏者
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入烈酒旅店
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target 维德拉·壁炉
step
    #label FlintTinder
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_这个是用来|r在船上制作 |cRXP_WARN_|T135805:0|t[基础营火]，以便在不浪费时间的情况下提升你的 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target 雅尼·铁心
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
step
    .goto 1432/0,-2729.40,-5534.96
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    >>|cRXP_WARN_这是一个超级刷怪点，你无需离开这里|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob 碎石穴居人
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob 碎石怪斥候
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
    .isOnQuest 224
    .isOnQuest 267
step
    #label RatAbandon
    #optional
    .goto 1432/0,-2729.40,-5534.96
    .xp 13+9600 >>刷怪达到9600+/11400经验
    >>|cRXP_WARN_如果你计划稍后在铁炉堡打领主大厅地下城，请跳过此步骤|r
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >>再次沿着山路前往 |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Braldir Ashmantle|r 对话
    .target Braldir Ashmantle::257808
    .turnin 94466 >>交任务 火焰的召唤
    .accept 94467 >>接受任务 火焰的召唤
step << Shaman
    #completewith next
    .goto 1432/0,-2873.800,-5672.500
    .cast 8898 >>|cRXP_WARN_沿着小路继续往上走|r
    .use 6636 >>|cRXP_WARN_在岩石雕像旁使用|r |T134732:0|t[火焰灵契] |cRXP_WARN_来召唤|r |cRXP_ENEMY_火焰之魂|r
step << Shaman
    .goto 1432/0,-2873.800,-5672.500
    >>击杀 |cRXP_ENEMY_火焰之魂|r。拾取其掉落的 |cRXP_LOOT_发光余烬|r
    .complete 94467,1 -- Glowing Ember (1)
step << Shaman
    .goto 1432/0,-2870.700,-5674.600
    >>点击 |cRXP_PICK_眠炎火盆|r
    .turnin 94467 >>交任务 火焰的召唤
    .accept 94468 >>接受任务 火焰的召唤
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>沿土路上行，然后跳入地堡
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target 拉格弗斯上尉
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target 巡山人库伯弗林特
    .isQuestComplete 224
step << Shaman
    #completewith shamfire2
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >>前往并穿过南门小径
step << Shaman
    #completewith shamfire2
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >>再次前去找山顶洞穴里的 |cRXP_FRIENDLY_布鲁格斯·燃生|r
step << Shaman
    #label shamfire2
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布鲁格斯·燃生::257597|r 对话
    .target Bruegs Kindleborn::257597
    .turnin 94468 >>交任务 火焰的召唤
step << Shaman
    .isQuestTurnedIn 94468
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >>小心地从山上跳下进入洛克莫丹
step
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>点击湖底的 |cRXP_PICK_Discarded 钓鱼 Toolbox|r
    >>|cRXP_WARN_注意：该目标会在多个不同位置随机刷新。在水下四处游动寻找，直到在小地图上看到感叹号标记|r
    >>|cRXP_WARN_小心高等级的|r |cRXP_ENEMY_幼年蛇颈龙|r
    .accept 86614 >>接受任务 白银级 of the Waves
    .xp <13,1
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉·深水::1684|r 对话
    .target Khara Deepwater::1684
    .turnin 86614 >>交任务 白银级 of the Waves
    .xp <13,1
step << !Dwarf/!Paladin
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge>>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.342,58.520,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >>前往 丹莫罗
step << Dwarf Paladin
    #completewith next
    .goto 1426/0,-2055.23,-5784.31
    .cast 8593 >>|cRXP_WARN_使用|r |T133439:0|t[生命符记] |cRXP_WARN_对地上的|cRXP_FRIENDLY_ |r纳姆·法奥克|r
	.use 6866
	.target 纳姆·法奥克
step << Dwarf Paladin
    .goto 1426/0,-2055.23,-5784.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_纳姆·法奥克|r 对话
    .turnin 1783 >>交任务圣洁之书
    .accept 1784 >>接受任务圣洁之书
    .use 6866
    .target 纳姆·法奥克
step << Dwarf Paladin
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>击杀 |cRXP_ENEMY_黑铁间谍|r。拾取他们的 |cRXP_LOOT_黑铁手稿|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob 黑铁间谍
step << Dwarf Paladin
    .isQuestComplete 1784
    .hs >>将炉石使用回铁炉堡
    .bindlocation 1537,1
    .cooldown item,6948,>2,1
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    .isQuestComplete 1784
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40,0--c:Ironforge,14.90,87.10
    .zone Ironforge >>返回铁炉堡

----Start of <1.5x IF->Westfall Section----

step << Rogue
    .goto 1455/0,-1197.27,-5041.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在里面与 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 196 >>训练单手斧
    .target 布里维夫·石拳
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝尔杜克·凝眉|r 对话
    .trainer >>训练你的职业技能
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto 1455/0,-913.38,-4577.31,6,0
    .goto 1455/0,-906.11,-4632.030,10 >>前往楼上，朝 |cRXP_FRIENDLY_穆尔顿|r 方向移动
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_穆里顿·热炉|r 对话
    .turnin 1784 >>交任务圣洁之书
    .accept 1785 >>接受任务圣洁之书
    .target 穆里顿·热炉
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_蒂萨·热炉|r 对话
    .turnin 1785 >>交任务圣洁之书
    .target 蒂萨·热炉
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃尔德伦·风暴破坏者::258098|r 对话 
    .target Eldrun Stormbreaker::258098
    .trainer >>训练你的职业技能
step << Mage/Priest/Warlock
    #ssf
    .goto 1455/0,-894.15,-4659.43,8,0
    .goto 1455/0,-880.66,-4660.39,5,0
    .goto 1455/0,-896.50,-4653.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼下的 |cRXP_FRIENDLY_哈瑞克·石鼓|r 对话
    >>|cRXP_WARN_从他那里购买|r |T135468:0|t|T135468:0|t[烟尘魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target 哈瑞克·石鼓
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    .goto 1455/0,-928.48,-4614.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 对话
    .trainer >>训练你的职业技能
    .target 丁克
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话
    .trainer >>训练你的职业技能
    .target 托德雷·铁矿
step << skip --logout skip << Mage/Priest
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到|cRXP_FRIENDLY_彬克|r上方的柱子上，然后稍微往东走到箭头位置。调整角色位置直到看起来像漂浮状态，然后通过登出再登入执行登出跳过|r
step << Dwarf Rogue/Gnome Rogue
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto 1455/0,-1124.38,-4647.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼下的 |cRXP_FRIENDLY_霍夫丹·黑须|r 对话
    .turnin 2218 >>交任务 救赎之路
    .target 霍夫丹·黑须
    .isOnQuest 2218
step << Rogue
    .goto 1455/0,-1120.72,-4650.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r 对话
    .trainer >>训练你的职业技能
    .target 芬斯维克
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩
step << Warlock
    #optional
    #label Jubahl
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >>进入 |cRXP_FRIENDLY_寻尸者祖贝尔|r 的房子
step << Warlock
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor 6382 >>|cRXP_BUY_购买|r |T133738:0|t[吞噬暗影的魔典(等级1)]|cRXP_BUY_ 和 |r|T133738:0|t[牺牲的魔典(等级1)]|cRXP_BUY_，如果你负担得起|r
    .target 寻尸者祖贝尔
step << skip --logout skip << Warlock/Rogue
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床顶，然后跳到书架顶。通过下线并重新上线来执行下线跳过操作|r
step << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >>前往 |cRXP_FRIENDLY_比尔班·飞钳|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    .trainer >>训练你的职业技能
    .target 比尔班·飞钳

step -- dont delete
    #label LochEnd

step << skip --logout skip << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳跃到武器架顶部。通过登出和重新登入执行返回角色选择跳过|r
-- step << skip --logout skip << Hunter
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_如果有的话，|r|cRXP_BUY_从他那里购买|r |T133024:0|t[青铜管]
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 考格斯宾
    .subzoneskip 2257
step
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>进入矿道地铁
    .zoneskip Stormwind City
step << skip
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_地铁到站时：|r
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_在等待前往暴风城的地铁时，如有需要可提升|r |T135966:0|t|T135966:0|t[急救] |cRXP_WARN_技能等级|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要将|r |T135966:0|t[急救]|cRXP_WARN_ 提升至 80，以完成 24 级的一个任务|r << Rogue !Dwarf
    .zone Stormwind City >>乘坐地铁前往暴风城
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor 5519 >>|cRXP_BUY_如果有的话，|r|cRXP_BUY_购买|r |T133024:0|t[青铜管]
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .accept 399 >>接受任务 童年的记忆
    .target 巴隆斯·阿历克斯顿
    .xp <15,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里购买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_如果你买得起，或者从拍卖行买更好的装备|r
    .collect 2027,1 --Scimitar
    .target 玛尔达·维勒
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_如果买得起，从她那里买最多2把|r |T135343:0|t|T135343:0|t[弯刀] |cRXP_BUY_即可|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target 玛尔达·维勒
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_如果买得起，就买一把|r |T135144:0|t|T135144:0|t[强效魔法杖]|cRXP_BUY_吧|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target 拍卖师亚克森
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿德温·凯伦|r对话
    >>|cRXP_WARN_从她那里购买|r |T135468:0|t|T135468:0|t[烟尘魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 快速升级指南1-20级
--#groupid RXP-SRGCE-A1
#name 11-13 洛克莫丹 (猎人)
#next 14-16级 黑海岸
#defaultfor Dwarf

step -- dont delete
    #label NormalRouteStart
step
    #completewith next
    .goto 1426/0,-2443.41,-5560.120,15,0
    .goto 1432/0,-2602.54,-5832.73,20 >>前往洛克莫丹
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .target 巡山人库伯弗林特
    .goto 1432/0,-2602.54,-5832.73
    .accept 224 >>接受任务 为了保卫国王的领土
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .target 拉格弗斯上尉
    .accept 267 >>接受任务 穴居人的威胁
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin -414 >>交任务 卡德雷尔的酒
    .accept 416 >>接受任务 狗头人的耳朵
    .accept 1339 >>接受任务 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .target 维德拉·壁炉
    .goto 1432/0,-2954.42,-5394.10
    .accept 418 >>接受任务 塞尔萨玛血肠
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话
    .home >>将你的炉石设置为塞尔萨玛
    .target 旅店老板纳克罗·壁炉
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .accept 6387 >>接受任务 荣誉学员
    .target 布洛克·寻石者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .target 索格拉姆·伯雷森
    .goto 1432/0,-2929.87,-5424.84
    .turnin 6387 >>交任务 荣誉学员
    .accept 6391 >>接受任务 飞往铁炉堡
step
    #completewith RTB
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尼尔·石趾|r 对话
    .target 高尼尔·石趾
    .goto 1455/0,-1120.93,-4708.06
    .turnin 6391 >>交任务 飞往铁炉堡
    .accept 6388 >>接受任务 格莱斯·瑟登
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r 对话
    .target 参议员巴林·红石
    .goto 1455/0,-1058.62,-4836.37,20,0
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    .turnin 291 >>交任务 森内尔的报告
    .isOnQuest 291
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    .target 贝莉亚·雷岩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 对话
    .turnin 6086 >>交任务 训练野兽
step << Hunter
    #label RTB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .target 格莱斯·瑟登
    .goto 1455/0,-1152.40,-4821.13
    .turnin 6388 >>交任务 格莱斯·瑟登
    .accept 6392 >>接受任务 向格雷姆罗克回复
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .goto 1455/0,-1152.40,-4821.13
    .fly Loch Modan >>飞往 洛克莫丹
    .target 格莱斯·瑟登
    .zoneskip Loch Modan
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .turnin 6392 >>交任务 向格雷姆罗克回复
    .target 布洛克·寻石者
step << Hunter
    .goto 1432/0,-2982.01,-5286.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_沃罗克 维罗克·乱枪|r 对话
    >>|cRXP_BUY_购买1把|r |T135613:0|t[猎人火枪] |cRXP_BUY_如果钱够|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135613:0|t[猎人火枪]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
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
    #completewith next
    .goto 1432/0,-2651.61,-4817.15,100 >>向北前往奥加兹岗哨
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step << Human
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .accept 307 >>接受任务 污秽的爪子
    .target 巡山人雷矛
step
    #label BraveSoul
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >>进入银溪矿洞
step
    .goto 1432/0,-2984.82,-4902.33
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r 散布在整个矿井中|r
    >>|cRXP_WARN_若想暂时跳过此任务，可等到等级更高时再来完成|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
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
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .target 巡山人雷矛
step
    #label RatEar
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    >>|cRXP_ENEMY_隧道老鼠|r |cRXP_WARN_会刷新在洛克莫丹各处。查看世界地图了解它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob 坑道鼠斥候
    .mob 坑道鼠歹徒
    .mob 坑道鼠征粮官
    .mob 坑道鼠地卜师
    .mob 坑道鼠掘地工
    .mob 坑道鼠勘探员
step
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_毒液|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob 老黑熊
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob 山猪
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob 森林潜伏者
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target 巡山人卡德雷尔
    .turnin 416 >>交任务 狗头人的耳朵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .target 维德拉·壁炉
    .goto 1432/0,-2954.42,-5394.10
    .turnin 418 >>交任务 塞尔萨玛血肠
step
    .goto 1432/0,-2738.78,-5384.11,0
    .goto 1432/0,-2757.26,-5532.94,0
    .goto 1432/0,-2913.65,-5804.46,0
    .goto 1432/0,-2863.73,-5866.45,0
    .goto 1432/0,-2738.78,-5384.11,40,0
    .goto 1432/0,-2757.26,-5532.94,40,0
    .goto 1432/0,-2913.65,-5804.46,40,0
    .goto 1432/0,-2863.73,-5866.45,40,0
    .goto 1432/0,-2928.27,-5896.25
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_石牙|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob 碎石穴居人
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob 碎石怪斥候
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob 碎石穴居人
    .mob 碎石怪斥候
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .target 巡山人库伯弗林特
    .goto 1432/0,-2602.54,-5832.73
    .turnin 224 >>交任务 为了保卫国王的领土
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .target 拉格弗斯上尉
    .goto 1432/0,-2634.59,-5842.81
    .turnin 267 >>交任务 穴居人的威胁
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>前往南门小径隧道外地面上的积雪处
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_在雪地上使用|r |T1387609:0|t[陶瓷罐] |cRXP_WARN_来收集|r |T1387609:0|t[雪罐]
    .complete 86667,1 -- Jar of Snow 1/1
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_限时10分钟内交任务！|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Norric Lochthane|r 对话
    >>|cRXP_WARN_确保在|T1387609:0|t[雪罐] 10分钟计时结束前交掉此任务|r
    .turnin 86667 >>交任务 困于风雪
    .target Norric Lochthane
step
    #optional
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>点击湖底的 |cRXP_PICK_Discarded 钓鱼 Toolbox|r
    >>|cRXP_WARN_注意：该目标会在多个不同位置随机刷新。在水下四处游动寻找，直到在小地图上看到感叹号标记|r
    >>|cRXP_WARN_小心高等级的|r |cRXP_ENEMY_幼年蛇颈龙|r
    .accept 86614 >>接受任务 白银级 of the Waves
    .xp <13,1
step
    #optional
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡拉·深水::1684|r 对话
    .target Khara Deepwater::1684
    .turnin 86614 >>交任务 白银级 of the Waves
    .xp <13,1
step
    #completewith next
    .goto 1432/0,-3783.63,-5713.77,80 >>前往铁环挖掘场
step
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员基恩萨·铁环|r 对话
    .accept 298 >>接受任务 挖掘进度报告
    .target 勘察员基恩萨·铁环
step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >>前往旅行者营地
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .accept 257 >>接受任务 自豪的猎人
    .goto 1432/0,-4296.68,-5690.590
    .target Daryl the Youngling
step
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78
    >>击杀|cRXP_ENEMY_山丘秃鹫|r
    >>|cRXP_WARN_你必须完成此任务并在15分钟内返回|cRXP_FRIENDLY_年轻的达瑞尔|r处。若任务失败，请放弃后重新接取|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_年轻的达瑞尔|r 对话
    .goto 1432/0,-4296.68,-5690.590
    .turnin 257 >>交任务 自豪的猎人
    .target Daryl the Youngling
step
    .goto 1432/0,-4269.26,-5653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_山达·细须|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_WARN_这个是用来|r在船上制作 |cRXP_WARN_|T135805:0|t[基础营火]，以便在不浪费时间的情况下提升你的 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #hardcore
    .hs >>炉石到塞尔萨玛
step
    #softcore
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target 灵魂医者
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_吉恩·角盔|r 对话
    .turnin 298 >>交任务 挖掘进度报告
    .accept 301 >>接受任务 向铁炉堡报告
    .target Jern Hornhelm
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
step
    #optional
    .goto 1455/0,-1188.54,-4761.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达瑞尔·瑞克努索|r 对话
    .target Daryl Riknussun
    .train 2550 >>学习 |T133971:0|t[烹饪]
step
    .goto 1455/0,-1303.75,-4631.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r 对话
    .turnin 301 >>交任务 向铁炉堡报告
    .target 勘察员塔伯斯·雷矛
step
    #completewith EnterSW
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>进入矿道地铁
    .zoneskip Stormwind City
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与中站台上的 |cRXP_FRIENDLY_蒙提|r 对话
    .target 蒙提
    .accept 6661 >>接受任务 捕捉矿道老鼠
step
    .use 17117 >>|cRXP_WARN_对 |r矿道老鼠|cRXP_WARN_ 使用 |r|T133942:0|t[捕鼠者长笛]|cRXP_ENEMY_|r
    .complete 6661,1 --Rats Captured (x5)
    .mob 矿道老鼠
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话
    .target 蒙提
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .timer 11,捕捉矿道老鼠剧情表演
    .accept 6662 >>接受任务 我的兄弟，尼普希
step
    >>|cRXP_WARN_搭乘矿道地铁前往暴风城方向|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼普希|r 在矿道地铁暴风城一侧的中央平台对话
    .turnin 6662 >>交任务 我的兄弟，尼普希
    .target 尼普希
step
    #label EnterSW
    .zone Stormwind City >>进入暴风城
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .target 格瑞曼德·艾尔默
    .goto 1453/0,685.22,-8387.23
    .accept 353 >>接受任务 雷矛的包裹
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .target 弗伦·长须
    .goto 1453/0,600.07,-8427.22
    .turnin 1338 >>交任务 卡尔·雷矛的订单
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .target 吴平
    .goto 1453/0,613.0,-8796.03
    .trainer >>学习法杖

step --dont delete
    #label NormalRouteEnd

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[野猪肉块]|r|cRXP_BUY_ 或|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_BUY_，以便稍后提升你的 |r|T133971:0|t[烹饪] |cRXP_BUY_技能|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师亚克森
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target 拍卖师亚克森
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_凯瑟琳·利兰|r 对话
    >>|cRXP_BUY_从她那里购买一个|r |T134335:0|t[闪光的小珠] |cRXP_BUY_和三个|r |T134324:0|t[夜色虫] |cRXP_BUY_。这是一个900点经验值的任务|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉尔伯特·格雷::267118|r 对话 
    .target Gilbert Gray::267118
    .accept 95065 >>接受任务 钓鱼时间
    .turnin 95065 >>交任务 钓鱼时间
--Hunter going Darkshore, rest Westfall
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_创建|r |T135805:0|t[基础营火] |cRXP_WARN_（在你的专业技能书中）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪] |cRXP_WARN_来完成后续暮色森林的一个任务|r
    >>|T133971:0|t[烹饪]|cRXP_WARN_|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_制作为|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_如果需要，在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救]|r
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >>乘船前往黑海岸
]])