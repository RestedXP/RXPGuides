if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》升级指南 (联盟版)
<< Alliance
#name 1-6级 丹莫罗
#subgroup RestedXP 联盟 1-20 级
#defaultfor Gnome/Dwarf
#next 6-11级 丹莫罗 << !Hunter
#next 6-10级 丹莫罗 (猎人) << Hunter

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +你选择的是侏儒和矮人专用的指南，请确保你的选择与你角色出生地一致
step << !Warrior !Warlock
    #completewith WolfMeat
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    .accept 179 >>接受任务 矮人的交易
    .target Sten Stoutarm
step << Warrior/Warlock
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_击杀并拾取 |cRXP_ENEMY_蓬毛幼狼|r 直到你拥有 10 铜币以上的商贩垃圾物品为止|r
    >>|cRXP_WARN_卸下你的|r |T132665:0|t[侍僧长袍]|cRXP_WARN_，|r |T135005:0|t[侍僧衬衣]|cRXP_WARN_，|r |T134581:0|t[侍僧短裤]|cRXP_WARN_，和|r |T132535:0|t[侍僧鞋] |cRXP_WARN_你即可出售它们并获得 4 枚铜币|r << Warlock
    >>|cRXP_WARN_卸下你的|r |T135009:0|t[新兵衬衣]|cRXP_WARN_，|r |T134582:0|t[新兵短裤]|cRXP_WARN_，和|r |T132540:0|t[新兵之靴] |cRXP_WARN_你即可出售它们并获得3枚铜币|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Warrior/Warlock
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦德尔·哈金|r 对话，NPC在里面
    .vendor >>把垃圾物品卖给商人
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348.1 << Warlock
step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话，NPC在里面
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Thran Khorman
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话，NPC在里面
    .train 348 >> Train |T135817:0|t[Immolate]
    .accept 1599 >>接受任务开端
    .target Alamar Grimm
step << Warrior/Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>炉石返回寒脊山谷
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
step << Warlock
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
step
    #label WolfMeat
    #loop
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
    >>击杀 |cRXP_ENEMY_蓬毛幼狼|r 和 |cRXP_ENEMY_蓬毛森林狼|r。拾取他们的 |cRXP_LOOT_硬狼肉|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
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
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 600发|r |T132384:0|t[轻弹丸] << Hunter
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r << Priest/Mage/Warlock
    >>|cRXP_WARN_如果你钱不够的话，额外刷 |cRXP_ENEMY_蓬毛幼狼|r |r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock --Collect Refreshing Spring Water (x15)
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r 对话
    .turnin 179 >>交任务矮人的交易
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
    .target Sten Stoutarm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r 对话
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>接受任务 新的威胁
    .target Balir Frosthammer
--Warlock Imp quest
step << Warlock
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>顺路击杀 |cRXP_ENEMY_石腭穴居人|r, |cRXP_ENEMY_壮实的石腭怪|r, |cRXP_ENEMY_蓬毛幼狼|r, 和 |cRXP_ENEMY_蓬毛森林狼|r
    >>|cRXP_WARN_尽量避开|r |cRXP_ENEMY_霜鬃巨魔新兵|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step << Warlock
    #optional
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >>进入霜鬃巨魔洞穴
step << Warlock
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >>前去找 |cRXP_ENEMY_霜鬃巨魔新兵|r，NPC在里面
step << Warlock
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
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target Spirit Healer
step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    .turnin 1599 >>交任务 开端
    .turnin 3115 >>交任务 被污染的备忘录
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step
    #completewith Rockjaw << !Paladin !Warlock !Hunter
    #completewith Talin << Paladin/Warlock/Hunter
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r 对话
    .turnin 233 >>交任务 寒脊山谷的送信任务
    .accept 183 >>接受任务 猎杀野猪
    .accept 234 >>接受任务 寒脊山谷的送信任务
    .target Talin Keeneye
step
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
    .mob Small Crag Boar
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r 对话
    .turnin 183 >>交任务 猎杀野猪
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
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
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 234 >>交任务 寒脊山谷的送信任务
    .accept 182 >>接受任务 巨魔洞穴
    .target Grelin Whitebeard
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
    >>|cRXP_WARN_升级4级之后跳过此步骤，你会尽快回来完成它|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>刷怪升级到 4 级
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_你有5分钟时间返回安威玛尔，在|r |T132791:0|t[德南的热酒] |cRXP_WARN_失效之前|r
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话，NPC在里面
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索加斯·格瑞姆森|r 对话
    .turnin 3108 >>交任务 风蚀符文 << Dwarf
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
step << Paladin
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r 对话，NPC在里面
    .turnin 3107 >>交任务 神圣符文 << Dwarf
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .train 20271 >>学习 |T135959:0|t[审判]
    .target Bromos Grummner
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r 对话
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r 对话
    .turnin 170 >>交任务 新的威胁
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Warlock !Hunter
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    #loop
    #label TrollWhelps
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
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    >>|cRXP_WARN_这将为该任务开始一个 5 分钟倒计时。在接下来的 5 分钟内请不要离开（AFK）或退出游戏|r
    .accept 3364 >>接受任务 热酒快递
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #completewith next
    +|cRXP_WARN_在|r|T132791:0|t[德南的热酒] 失效之前，你有5分钟时间去获得|cRXP_LOOT_格瑞林·白须的日记|r 然后|cRXP_WARN_返回安威玛尔|r
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
    .mob Grik'nir the Cold
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.298,79.836,20,0
    .goto 1426,27.098,80.707,20 >>离开霜鬃巨魔洞穴
step << !Paladin !Warlock !Hunter
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target Spirit Healer
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    >>|cRXP_WARN_如果任务失败，请跳过此步骤|r
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .accept 3365 >>接受任务 归还酒杯
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
step << !Paladin !Warlock !Hunter
    #sticky
    .abandon 3364 >>放弃热酒快递，然后重新接受任务
step << !Paladin !Warlock !Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 和 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .accept 3364 >>接受任务 热酒快递
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r 对话
    .turnin 3364 >>交任务 热酒快递
    .accept 3365 >>接受任务 归还酒杯
    .target Durnan Furcutter
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r 对话，NPC在里面
    .turnin 3114 >>交任务 雕文备忘录 << Gnome
    .train 1459 >>学习 |T135932:0|t[奥术智慧]
    .train 116 >>学习 |T135846:0|t[寒冰箭]
    .target Marryk Nurribit
step << Rogue
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索姆·哈格林|r 对话
    .turnin 3113 >>交任务 密文备忘录 << Gnome
    .turnin 3109 >>交任务 密文符文 << Dwarf
    .train 1784 >>学习 |T132320:0|t[潜行]
    .target Solm Hargrin
step << Priest
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r 对话
    >>|cRXP_WARN_学习|r |T135987:0|t[真言术：韧] |cRXP_WARN_和|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_你很快会在职业任务中用到它们|r << Dwarf
    .turnin 3110 >>交任务 神圣符文 << Dwarf
    .accept 5626 >>接受任务 圣光的恩赐 << Dwarf
    .train 1243 >>学习 |T135987:0|t[真言术：韧]
    .train 2052 >>学习 |T135929:0|t[次级治疗术 ] (等级 2) << Dwarf
    .trainer >>训练你的职业技能
    .target Branstock Khalder
step << Warrior
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r 对话
    .turnin 3106 >>交任务 简易符文 << Dwarf
    .turnin 3112 >>交任务 简易备忘录 << Gnome
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target Thran Khorman
step << !Paladin !Warlock !Hunter
    #optional
    #completewith next
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
step
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r 对话
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务 森内尔的观察站
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r 对话
    .turnin 3365 >>交任务 归还酒杯
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r 对话
    .turnin 170 >>交任务 新的威胁
    .target Balir Frosthammer
step << Priest/Mage/Warlock
    #optional
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 5瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人萨鲁斯|r 和 |cRXP_FRIENDLY_汉兹·跳链|r 对话
    .turnin 282 >>交任务 森内尔的观察站
    .accept 420 >>接受任务 森内尔的观察站
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >>接受任务 塔诺克的补给品
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>穿过寒脊山小径
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance !Hunter
#name 6-11级 丹莫罗 << !Hunter
#displayname 6-12级 丹莫罗 << Mage
#next 12-14 黑海岸 << !Warlock
#next 11-14级 艾尔文森林/丹莫罗 << Warlock
#subgroup RestedXP 联盟 1-20 级
#defaultfor Gnome/Dwarf

step
    #optional
    #completewith SenirEnd
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    >>|cRXP_WARN_收好你在任务（贝尔丁的补给）中获得的|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_你稍后会在升级|r |T133971:0|t[烹饪]|cRXP_WARN_中需要|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >>前往卡拉诺斯。打怪到 2145+/2800 经验值以上，在击杀路途上的 |cRXP_ENEMY_峭壁野猪|r << Priest
    .xp 5+2415 >>前往卡拉诺斯。打怪到 2415+/2800 经验值以上，在击杀路途上的 |cRXP_ENEMY_峭壁野猪|r << !Priest
    .mob Crag Boar
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #completewith next
    >>|cRXP_WARN_请确保你的区域不是寒脊山小径|r
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .target Spirit Healer
    .subzoneskip 131
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 420 >>交任务 森内尔的观察站
    .target Senir Whitebeard
step
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >>刷怪达到 2690+/2800 经验 << !Warlock !Priest
    .xp 5+2350 >>刷怪达到 2350+/2800 经验 << Priest
    .xp 6 << Warlock
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .train 695 >>学习 |T136197:0|t[暗影箭 (等级 2)]
    .train 1454 >>学习 |T136126:0|t[生命分流]
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    .vendor 6328 >>|cRXP_BUY_如果钱够，购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够可以之后再买|r
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .accept 384 >>接受任务 啤酒烤猪排
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔诺克·霜锤|r 对话
    .turnin 2160,1 >>交任务 塔诺克的补给品 << Warrior/Rogue
    .turnin 2160,2 >>交任务 塔诺克的补给品 << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷格·比尔姆|r 对话
    >>|cRXP_WARN_Buy the|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
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
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室里与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .trainer >>训练你的职业技能
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .trainer >>训练你的职业技能
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .accept 5625 >>接受任务 圣光之衣
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>|cRXP_WARN_施放|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_和|r |T135987:0|t[真言术：韧] |cRXP_WARN_在外面的 |cRXP_FRIENDLY_巡山人多尔夫|r 身上|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .turnin 5625 >>交任务 圣光之衣
    .trainer >>训练你的职业技能
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .home >>将你的炉石设置到雷酒酿制厂
    .vendor >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
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
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r 对话
    .accept 400 >>接受任务 贝尔丁的工具
    .target Tharek Blackstone
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 和 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    >>|cRXP_WARN_在途中请勿击杀任何 |cRXP_ENEMY_黑熊幼崽|r |r
    .accept 317 >>接受任务 贝尔丁的补给
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >>接受任务 灰色洞穴
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r 和 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    >>|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄] |cRXP_BUY_从 |cRXP_FRIENDLY_罗斯洛·鲁治|r 这里
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .turnin 400 >>交任务 贝尔丁的工具
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>接受任务 海格纳的弹药
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r 和 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    .turnin 400 >>交任务 贝尔丁的工具
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>接受任务 海格纳的弹药
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_亚尔·锤石|r 对话
    >>|cRXP_WARN_如果钱不够，可以跳过此步骤|r
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith BearFur
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>击杀 |cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取它们的 |cRXP_LOOT_厚熊皮|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Warrior !Paladin !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取它们的 |cRXP_LOOT_厚熊皮|r
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step << !Paladin !Warrior !Rogue
    #optional
    #completewith EvershineEnd
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .turnin 317 >>交任务 贝尔丁的补给
    .accept 318 >>接受任务 艾沃沙酒
    .target Pilot Bellowfiz
step << Paladin/Warrior/Rogue
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #optional
    #completewith BBBR
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_从他那里|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Priest/Mage/Warlock
    #optional
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor 1247 >>|cRXP_BUY_从他那里买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少就买多少|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #label BBBR
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>前往灰色洞穴
    .isOnQuest 313
step
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>击杀 |cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r。拾取他们的 |cRXP_LOOT_雪怪的鬃毛|r
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_so you can craft|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_so you can craft|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>击杀 |cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r。拾取他们的 |cRXP_LOOT_雪怪的鬃毛|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_弹药箱|r。拾取 |cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>前去找 |cRXP_FRIENDLY_海格纳·重枪|r
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    .turnin 5541 >>交任务 海格纳的弹药
    .target Hegnar Rumbleshot
step << Warrior/Paladin/Rogue
    #loop
    >>击杀 |cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取他们的 |cRXP_LOOT_毛皮|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
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
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Crag Boar
    .mob +Large Crag Boar
    .complete 317,2 --Collect Thick Bear Fur (x2)
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
    .mob +Young Black Bear
step << Warrior/Paladin/Rogue
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .turnin 317 >>交任务 贝尔丁的补给
    .accept 318 >>接受任务 艾沃沙酒
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    .turnin 313 >>交任务 灰色洞穴
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_亚尔·锤石|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_从他那里|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << !Warrior !Paladin !Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >>刷怪升级到 7 级
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >>刷怪升级到 7 级
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠楼
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith Tundra
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith Tundra
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Tundra
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_Buy a|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith Tundra
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入雷酒酿制厂
step << Warrior/Rogue
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor 1247 > |cRXP_BUY_从他那里购买15片|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_能买多少买多少|r
    .target Innkeeper Belm
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >> Travel to Chill Breeze Valley
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>前去找 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .accept 312 >>接受任务 马克格拉恩的干肉
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>前往烈酒村
step << !Mage !Priest !Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    .vendor >>出售垃圾物品
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    >>|cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 和 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .turnin 318 >>交任务 艾沃沙酒
    .accept 319 >>接受任务 艾沃沙酒
    .accept 315 >>接受任务 完美烈酒
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>接受任务 针锋相对
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
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
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
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
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 对话
    .turnin 319 >>交任务 艾沃沙酒
    .accept 320 >>接受任务 艾沃沙酒
    .target Rejold Barleybrew
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>刷怪达到 3735+/4500 经验
    .isQuestAvailable 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>刷怪达到 4360+/4500 经验
    .isQuestTurnedIn 384
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_进行 丹莫罗 -> 湿地 死亡跳跃。细跟箭头指示|r
    >>|cRXP_WARN_暂时不要从任何高地跳下|r
    .zone Wetlands >>|cRXP_WARN_登山，然后沿着锯齿形状地形下走，直到区域切换成湿地|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_面朝北方或西北方，跳下山坡|r
    .deathskip >>死掉并在巴拉丁海湾的 |cRXP_FRIENDLY_灵魂医者|r 复生
    .isQuestAvailable 983
    .target Spirit Healer
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>朝米奈希尔港游，直到上岸
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fp Wetlands >>获取湿地的飞行路径
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >>炉石回卡拉诺斯，丹莫罗
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一杯|r |T132800:0|t[雷霆麦酒]
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_加文·雷酒|r 对话
    .turnin 308 >>交任务 加文的爱好
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>点击地上的 |cRXP_PICK_无人守卫的雷酒桶|r
    .turnin 310 >>交任务 针锋相对
    .accept 311 >>接受任务 向马莱斯回报
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target Ragnar Thunderbrew
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r 对话
    .train 980 >>|T136139:0|t[痛苦诅咒]
    .train 5782 >>|T136183:0|t[恐惧]
    .goto Dun Morogh,47.327,53.693
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    #optional
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：火焰箭(等级 2)]|cRXP_BUY_和一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：火焰箭(等级 2)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r 对话
    >>|cRXP_BUY_如果钱够，就从她那里购买一本|r |T133738:0|t[魔典：血契(等级 1)] |cRXP_BUY_如果钱不够，可以今后再来买|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .trainer >>训练你的职业技能
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .trainer >>训练你的职业技能
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .train 118 >> Train |T136071:0|t[Polymorph]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .trainer >>训练你的职业技能
    .target Maxan Anvol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r 对话
    >>|cRXP_BUY_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备买来的|r |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor 1247 >>|cRXP_BUY_从他那里购买20片|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_能买多少买多少|r << Warrior/Rogue
    .vendor 1247 >>|cRXP_BUY_从他那里购买5片|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_能买多少买多少|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor 1247 >>|cRXP_BUY_从他那里购买20杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .accept 287 >>接受任务 霜鬃巨魔要塞
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    .turnin 313 >>交任务 灰色洞穴
    .target Pilot Stonegear
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    >>|cRXP_WARN_选择|r |T135637:0|t[露营小刀]|cRXP_WARN_，之后需要|r << Rogue
    .turnin 320 >>交任务 艾沃沙酒 << !Rogue
    .turnin 320,3 >>交任务 艾沃沙酒 << Rogue
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话，NPC在里面
    .accept 412 >>接受任务 自动净化装置
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Travel up the ramp to Shimmer Ridge
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>击杀 |cRXP_ENEMY_霜鬃先知|r。拾取他们的 |cRXP_LOOT_微光草|r
    >>打开地上的 |cRXP_PICK_微光草篮|r 。拾取 |cRXP_LOOT_微光草|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_对|r |cRXP_ENEMY_冰须|r |cRXP_WARN_施放|r |T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r。拾取里面的 |cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r << !Mage !Warlock
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r << !Mage !Warlock
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .turnin 312 >>交任务 马克格拉恩的干肉
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    .vendor >>|cRXP_WARN_出售垃圾物品|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 和 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .turnin 315 >>交任务 完美烈酒
    .accept 413 >>接受任务 微光酒
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >>交任务 向马莱斯回报
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>击杀 |cRXP_ENEMY_麻风侏儒|r。拾取他们的 |cRXP_LOOT_多档齿轮|r 和 |cRXP_LOOT_自适应齿轮|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label Headhunters
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
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Run up the side of the cave entrance. 交任务 霜鬃巨魔要塞
    .isOnQuest 287
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Drop down into the small dead-end room of the cave|r
    >>|cRXP_WARN_Don't worry about dying to do this as you're about to deathskip back to Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 287 >>交任务 霜鬃巨魔要塞
    .accept 291 >>接受任务 森内尔的报告
    .target Senir Whitebeard
step << Rogue
    #optional
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .accept 2218 >>接受任务 救赎之路
    .target Hogral Bakkan
    .xp <10,1
step
    #optional
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆诺·普尔|r 对话
    .train 3273 >>训练 |T135966:0|t[急救]
    .target Thamner Pol
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话，NPC在里面
    .turnin 412 >>交任务 自动净化装置
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Grind until you have 10s30c worth of vendorables|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>前往铁炉堡
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 或 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .trainer >>如果你已主队，或有人帮忙，现在就击杀 |cRXP_ENEMY_瓦加什|r。然后找 |cRXP_FRIENDLY_布里维夫·石拳|r 学习双手锤。要不然的话找 |cRXP_FRIENDLY_比克斯|r 学习投掷。如果你不确定需要学习哪一个的话就选择投掷
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T135641:0|t[平衡飞刀]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
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
    #optional
    .isQuestAvailable 1339
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >>离开铁炉堡
    .zoneskip Ironforge,1
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Walk onto the edge of the metal floor on top of the waypoint arrow|r
    .zone Dun Morogh >>|cRXP_WARN_Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .goto 1426,57.936,50.787,0
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_稍后会用在|r |T133971:0|t[烹饪]|cRXP_WARN_上，拿来升级|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_CLICK HERE If you're struggling|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Click here for video reference|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target Rudra Amberstill
step << Warrior/Paladin
    #sticky
    #optional
    .equip 16,3103 >> |cRXP_WARN_Equip the|r |T133052:0|t[|cRXP_FRIENDLY_Coldridge Hammer|r]
    .use 3103
    .itemcount 3103,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.3
    .train 199,3
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>前往古博拉采掘场，丹莫罗
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
    .money <0.0100
step
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r 对话
    .vendor 1237 >>|cRXP_BUY_从他那里购买10片|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_需要多少买多少|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_如果需要的话|r|cRXP_BUY_可以从他那里购买5片/杯|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 433 >>接受任务 公众之仆
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接受任务 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
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
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Enter the Gol'Bolar Quarry Mine
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
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务 公众之仆
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >>刷怪练级到 10 级
    .mob Rockjaw Skullthumper
step << Priest/Rogue
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .subzoneskip 131
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .accept 5637 >>接受任务 绝望祷言 << Human/Dwarf
    .trainer >>训练你的职业技能
    .target Maxan Anvol
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .accept 2218 >>接受任务 救赎之路
    .train 674 >>训练 |T132147:0|t[双武器]
    .train 2983 >>训练 |T132307:0|t[疾跑]
    .target Hogral Bakkan
step
    #optional
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_有伤疤的峭壁野猪|r 和 |cRXP_ENEMY_老峭壁野猪|r。拾取它们的|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    .collect 769,40,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<10,1 -- shows if cooking is >10
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>前去找 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step
    .goto Dun Morogh,78.97,37.14
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    >>|cRXP_WARN_选择奖励|r |T135641:0|t[工匠匕首] << Rogue
    .turnin 417 >>交任务 驾驶员的复仇 << !Rogue
    .turnin 417,1 >>交任务 驾驶员的复仇 << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_将|r |T135641:0|t[工匠匕首] |cRXP_WARN_装备在主手|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >>前去找 |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人维拉特·麦酒|r 对话
    .turnin 413 >>交任务 微光酒
    .accept 414 >>接受任务 卡德雷尔的酒
    .target Mountaineer Barleybrew
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
    .subzone 924 >> Travel through the South Gate Pass into Loch Modan << !Rogue !Warrior
    .zone Loch Modan >> Travel through South Gate Pass into Loch Modan << Rogue/Warrior
step << !Rogue !Warrior
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .accept 224 >>接受任务 为了保卫国王的领土
    .target Mountaineer Cobbleflint
step << !Rogue !Warrior
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。登上顶楼
step << !Rogue !Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .accept 267 >>接受任务 穴居人的威胁
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,26.67,56.94
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    >>|cRXP_WARN_This is a hyperspawn area. You should not need to move from here|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << !Rogue !Warrior !Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在地堡里与 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target Mountaineer Cobbleflint
step
    #optional
    .isQuestAvailable 3524
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >>前往塞尔萨玛，洛克莫丹
step
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务 卡德雷尔的酒
    .accept 416 >>接受任务 狗头人的耳朵 << Mage/Warlock
    .accept 1339 >>接受任务 巡山人雷矛的任务 << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #completewith Cooking1 << !Mage !Rogue !Warrior !Warlock
    #completewith Hearthstove << Mage/Rogue/Warrior/Warlock
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入烈酒旅店
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .turnin 418 >>交任务 塞尔萨玛血肠
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << !Mage !Rogue !Warrior !Warlock
    #label Cooking1
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_需要的话也可以从她那里|r|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] << !Rogue
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Mage/Rogue/Warrior/Warlock
    #label Hearthstove
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r 对话，NPC在里面
    .home >>将你的炉石设置为塞尔萨玛 << Rogue/Warrior/Warlock
    .vendor >>|cRXP_BUY_从他那里购买40杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_能买多少买多少|r << !Rogue !Warrior
    .collect 1179,35 << Mage/Warlock
    .target Innkeeper Hearthstove
    .bindlocation 2101
step << Mage/Warlock
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    .vendor 1682 >>|cRXP_BUY_需要的话可以从她那里|r|cRXP_BUY_购买几个|r |T133634:0|t[棕色小包]
    .target Yanni Stoutheart
step << Rogue/Warrior/Warlock
    #optional
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_需要的话也可以从她那里|r|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包]
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
    .money <1 -- don't want them buying etc, unless rich alts, money too tight later 
step << skip
    #loop
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务 卡德雷尔的酒
    .accept 416 >>接受任务 狗头人的耳朵 << Mage/Warlock
    .accept 1339 >>接受任务 巡山人雷矛的任务 << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #requires StouttoKadrell
step << Mage/Warlock
    #optional
    #completewith Algaz
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_收好任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_稍后会用在 |T133971:0|t[烹饪] |cRXP_WARN_上|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << Mage/Rogue/Warrior/Warlock
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>前往暴风城大教堂内，与 Algaz Station
step << Mage/Rogue/Warrior/Warlock
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto Loch Modan,24.13,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_Vendor Trash|r
    .target Gothor Brumn
    .isOnQuest 1339
step << Mage/Rogue/Warrior/Warlock
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 1339 >>交任务 巡山人雷矛的任务
    .accept 1338 >>接受任务 卡尔·雷矛的订单 << Rogue/Warrior/Warlock
    .accept 307 >>接受任务 污秽的爪子 << Mage/Warlock
    .target Mountaineer Stormpike
step << Mage
    #optional
    #completewith ESSM
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step << Mage
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>击杀 |cRXP_ENEMY_坑道鼠|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿洞
step << Mage
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_矿工联盟的储物箱|r。拾取里面的 |cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
    #optional
    #completewith FilthyMountaineer
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Mage
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
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step << Mage
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .accept 1338 >>接受任务 卡尔·雷矛的订单
    .target Mountaineer Stormpike
step << Mage
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
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
    .mob +Mountain Boar
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
    .mob +Forest Lurker
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
step << Rogue/Warrior
    #completewith FlytoIF
    +Grind mobs until you have at least 30 Silver worth of money 和 vendorables << Rogue
    +Grind mobs until you have at least 10 Silver worth of money 和 vendorables << Warrior
    .money >0.3000 << Rogue
    .money >0.1000 << Warrior
step << Mage/Rogue/Warrior/Warlock
    #completewith FlytoIF
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .subzoneskip 144
step << Mage
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
    .target Mountaineer Kadrell
    .turnin 416 >>交任务 狗头人的耳朵
step << Mage
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_需要的话也可以从她那里|r|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] << !Rogue
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .accept 6387 >>接受任务 荣誉学员
    .target Brock Stoneseeker
step << Mage
    .goto Loch Modan,26.67,56.94
    .xp 12 >>刷怪到12级
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .turnin 6387 >>交任务 荣誉学员
    .accept 6391 >>接受任务 飞往铁炉堡
    .target Thorgrum Borrelson
step
    #label FlytoIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge>>飞往铁炉堡
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尼尔·石趾|r 对话
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >>交任务 飞往铁炉堡
    .accept 6388 >>接受任务 格莱斯·瑟登
step << Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .trainer >>训练你的职业技能
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丁克|r 对话
    .trainer >>训练你的职业技能
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r 对话
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>交任务 森内尔的报告
    .isOnQuest 291
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >>交任务 格莱斯·瑟登
    .accept 6392 >>接受任务 向格雷姆罗克回复
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r 和 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 2567 >>训练 投掷武器
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>学习双手锤
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
-- Warrior training Def stance in SW. Really long/bad to do in Dun Morogh. Can also train Swords while in SW for potential early 2h swords
step << Warrior skip
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r 对话
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆伦·雷矛|r 对话
    .accept 1678 >>接受任务 维吉雷克
    .target Muren Stormpike
step << Warrior skip
    #optional
    #completewith next
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> |cRXP_WARN_Exit Ironforge|r
step << Warrior skip
    .goto Dun Morogh,27.8,58.0
    >>Kill |cRXP_ENEMY_Vejrek|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior skip
    #optional
    #completewith next
    .zone Ironforge >>前往铁炉堡
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆伦·雷矛|r 对话
    .turnin 1678 >>交任务 维吉雷克
    .accept 1680 >>接受任务 托姆斯·深炉
    .target Muren Stormpike
step << Warrior skip
    .goto Ironforge,48.650,42.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托姆斯·深炉|r 对话
    .turnin 1680 >>交任务 托姆斯·深炉
    .target Tormus Deepforge
--
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << !Rogue !Warrior !Warlock
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .turnin 6388 >>交任务 格莱斯·瑟登
    .fly Menethil >>飞往米奈希尔港，湿地
    .target Gryth Thurden
step << Rogue/Warrior/Warlock
    #completewith EnterSW
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入矿道地铁
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与中站台上的 |cRXP_FRIENDLY_蒙提|r 对话
    .target Monty
    .accept 6661 >>接受任务 捕捉矿道老鼠
step << Rogue/Warrior/Warlock
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute]|cRXP_WARN_on|r|cRXP_ENEMY_矿道老鼠|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话
    .target Monty
    .turnin 6661 >>交任务 捕捉矿道老鼠
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接受任务 我的兄弟，尼普希
step << Rogue/Warrior/Warlock
    #completewith next
    .zone Stormwind City >>乘坐地铁前往暴风城
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[烹饪] |cRXP_WARN_if needed while waiting for the Tram|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[急救] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t当你下列车后与 |cRXP_FRIENDLY_尼普希|r 对话
    >>|cRXP_FRIENDLY_尼普希|r |cRXP_WARN_is on the center platform|r
    .turnin 6662 >>交任务 我的兄弟，尼普希
    .target Nipsy
step << Rogue/Warrior/Warlock
    #label EnterSW
    .zone Stormwind City >>离开暴风城
step << Warlock
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .accept 353 >>接受任务 雷矛的包裹
    .target Grimand Elmore
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>交任务 卡尔·雷矛的订单
step << Warrior
    #optional
    #sticky
    .abandon 1678 >> Abandon Vejrek. You will complete the quest for Defensive Stance in Stormwind instead
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊尔萨·考宾|r 对话
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .trainer >>训练你的职业技能
    .accept 1638 >>接受任务 战士的训练
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >>交任务 战士的训练
    .accept 1639 >>接受任务 醉鬼巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >>交任务 醉鬼巴特莱比
    .accept 1640 >>接受任务 击败巴特莱比
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击 |cRXP_ENEMY_巴特莱比|r. He will submit at 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r 对话
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>交任务 击败巴特莱比
    .accept 1665 >>接受任务 巴特莱比的酒杯
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r 对话
    .turnin 1665 >>交任务 巴特莱比的酒杯
    .target Harry Burlguard
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .trainer >>Train 1h Swords << Rogue
    .trainer >>学习双手剑 << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T135346:0|t[斗士短剑] |cRXP_BUY_from him|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 16,851 >>|cRXP_WARN_Equip the|r |T135346:0|t[斗士短剑] |cRXP_WARN_in your mainhand|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2218 >>|cRXP_WARN_Equip the|r |T135641:0|t[|cRXP_FRIENDLY_工匠匕首|r]|cRXP_WARN_in your offhand|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T133477:0|t[巨棒] |cRXP_BUY_from him|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r 对话
    >>|cRXP_BUY_Buy a|r |T133477:0|t[巨棒] |cRXP_BUY_from him|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
    #optional
    +装备|T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹与黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹与黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
    #completewith FlyMene
    .hs >>炉石到塞尔萨玛
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step << Rogue/Warrior
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .turnin 418 >>交任务 塞尔萨玛血肠
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Rogue/Warrior
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一捆|r |T135435:0|t[普通木柴] |cRXP_BUY_和一块|r |T135237:0|t[燧石和火绒]
    >>|cRXP_BUY_需要的话也可以从她那里|r|cRXP_BUY_购买一个|r |T133634:0|t[棕色小包] << !Rogue
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Rogue/Warrior
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .turnin 6392 >>交任务 向格雷姆罗克回复
    .target Brock Stoneseeker
step << Rogue/Warrior
    #label FlyMene
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Menethil >>飞往米奈希尔港，湿地
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance Warlock
#name 11-14级 艾尔文森林/丹莫罗
#next 14-20秘血岛
#subgroup RestedXP 联盟 1-20 级
#defaultfor Gnome Warlock

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fp Stormwind >>获取暴风城的飞行路径
    .target Dungar Longdrink
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 227 >>学习法杖
    .train 201 >>学习单手剑
    .target Woo Ping
    .money <0.3040
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 227 >>学习法杖
    .target Woo Ping
    .money <0.2090
step
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1688 >>接受任务 苏伦娜·凯尔东
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 1120 >>训练 |T136163:0|t[吸取灵魂] 
    .train 6201 >>训练 |T135230:0|t[制造初级治疗石]
    .train 696 >>学习 |T136185:0|t[恶魔皮肤 (等级 2)] 
    .train 707 >>学习 |T135817:0|t[献祭 (等级 2)] 
    .target Ursula Deline
step
    #completewith GoldshireQuests
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_灵魂医者|r by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .zoneskip Stormwind City,1
step
    #completewith GoldshireQuests
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>前往金雾村
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .accept 62 >>接受任务 法戈第矿洞
    .accept 239 >>接受任务 西泉要塞
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .accept 60 >>接受任务 狗头人的蜡烛
    .target William Pestle
step
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .accept 47 >>接受任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
    .target Remy "Two Times"
step
    #optional
    #sticky
    .abandon 109 >> Abandon Report to Gryan Stoutmantle
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_Some mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Enter and explore Fargodeep Mine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_Some mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 88 >>接受任务 公主必须死！
	.goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
step
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 176 >>接受任务 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r 对话
    .turnin 239 >>交任务 西泉要塞
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step
    .isOnQuest 176
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
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_can spawn in multiple locations|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r continously and use your regular DoTs to kill him|r
    >>|cRXP_WARN_You can kite him back to the guard tower, ensure you deal at least 51% damage to him|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #optional
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 来激发任务|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接受任务 收货人
step
    #completewith HoggerTurnin
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r
    .turnin 176 >>交任务 通缉：霍格
    .turnin 123 >>交任务 收货人
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .target Marshal Dughan
    .isOnQuest 123
step
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r
    .turnin 176 >>交任务 通缉：霍格
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 62 >>交任务 法戈第矿洞
    .accept 76 >>接受任务 玉石矿洞
    .target Marshal Dughan
step
    #optional
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .accept 147 >>接受任务 猎杀收货人
    .target Marshal Dughan
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    >>|cRXP_WARN_不要出售|r |T133581:0|t[弹珠袋] |cRXP_WARN_这个任务奖励是一件非常有价值的道具，一直到 70 级都很有用|r
    .turnin 47 >>交任务 金砂交易
    .target Remy "Two Times"
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .accept 61 >>接受任务 送往暴风城的货物
    .target William Pestle
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .train 755 >>训练 |T136168:0|t[生命通道]
    .train 705 >>学习 |T136197:0|t[暗影箭 (等级 3)]
    .target Maximillian Crowe
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    >>|cRXP_BUY_Buy up to 10|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_from him if you can afford it|r
    .collect 1179,10
    .target Innkeeper Farley
    .subzoneskip 87,1
step
    #optional
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >>进入 Jasperlode Mine
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>跟随 the path through middle to explore Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Exit Jasperlode Mine
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_将一只 |cRXP_ENEMY_森林熊幼崽|r 风筝拉至|r |cRXP_FRIENDLY_卫兵托马斯|r
    >>|cRXP_WARN_试图与 |cRXP_FRIENDLY_卫兵托马斯|r 对话，在 |cRXP_ENEMY_森林熊幼崽|r 死在 |cRXP_FRIENDLY_暴风城卫兵|r 的手里之前，这样可获得任务计数|r
    >>|cRXP_WARN_Make sure to deal 51%+ damage to get credit|r
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .accept 5545 >>接受任务 木材危机
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    .vendor >>把垃圾物品卖给商人
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>拾取地上的 the |cRXP_LOOT_Bundles of Wood|ron the ground at the base of the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的 |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_鱼人强盗|r will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68 health|r
    >>|cRXP_WARN_Pull the 2|r|cRXP_ENEMY_Murlocs|r|cRXP_WARN_in front of the huts, move away and cast|r |T136183:0|t[恐惧]|cRXP_WARN_on one of them constantly, and try to keep DoTs on both|r << Warlock
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #completewith BundleOT
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>拾取地上的 the |cRXP_LOOT_Bundles of Wood|ron the ground at the base of the trees
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .turnin 5545 >>交任务 木材危机
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .accept 83 >>接受任务 红色亚麻布
    .target Sara Timberlain
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
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 39 >>接受任务 托马斯的报告
step
    #completewith PrincessCollar
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>击杀 |cRXP_ENEMY_收货人莫根|r。拾取他的 |cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_苏伦娜·凯尔东|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_苏伦娜·凯尔东|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #label PrincessCollar
    .goto Elwynn Forest,69.3,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    .complete 88,1
    .mob Princess
step
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_Bandanas|r
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
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 83 >>交任务 红色亚麻布
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #sticky
    .abandon 109 >>放弃任务 向格里安·斯托曼报到。你不用完成这个任务
step
    #optional
    #sticky
    .abandon 184 >>放弃任务 法布隆的地契。你不用完成这个任务
step
    #optional
    #label SoulShards
    #completewith EncroachingGnolls
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
    .disablecheckbox
    >>|cRXP_WARN_Ensure you have at least 2|r 训练 |T136163:0|t[灵魂碎片]|cRXP_WARN_before you get to Redridge Mountains|r
    .collect 6265,2
step
    #completewith EncroachingGnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵帕克|r 对话
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>接受任务 豺狼人的入侵
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r 对话
    >>|cRXP_WARN_Be careful of high level mobs en route|r
    .turnin 244 >>交任务 豺狼人的入侵
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>Fly to 暴风城，艾尔文森林
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r 对话
    .turnin 61,1 >>交任务 送往暴风城的货物
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹与黑海岸更快交任务|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在洛克莫丹与黑海岸更快交任务|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T134342:0|t[猪大肠]
    >>|T134027:0|t[熊肉]
    >>|T134437:0|t[蜘蛛的毒液]
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Warlock
    #completewith SurenaCaledon
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Travel to The Slaughtered Lamb 和 go downstairs
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 755 >>训练 |T136168:0|t[生命通道]
    .train 705 >>学习 |T136197:0|t[暗影箭 (等级 3)]  
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label SurenaCaledon
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .turnin 1688 >>交任务 苏伦娜·凯尔东
    .accept 1689 >>接受任务 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 7728 >>|cRXP_WARN_Use the|r |T133292:0|t[血石颈环] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>消灭那些试图阻止仪式的 |cRXP_ENEMY_虚空行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #completewith next
    +|cRXP_WARN_Start casting|r |T136126:0|t[Life Tap] |cRXP_WARN_on your way back up to |cRXP_FRIENDLY_黑暗缚灵者加科因|r as you will do a deathskip momentarily|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务 誓缚
step
    #completewith GoldshireTurnins
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >>Die and respawn at the |cRXP_FRIENDLY_灵魂医者|r by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .zoneskip Stormwind City,1
step
    #completewith GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Travel to 闪金镇，艾尔文
step << Warlock
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 147 >>交任务 猎杀收货人
    .turnin 39 >>交任务 托马斯的报告
    .turnin 76 >>交任务 玉石矿洞
step << Warlock
    #label GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 39 >>交任务 托马斯的报告
    .turnin 76 >>交任务 玉石矿洞
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店楼下
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .train 755 >>训练 |T136168:0|t[生命通道]
    .train 705 >>学习 |T136197:0|t[暗影箭 (等级 3)]
    .target Maximillian Crowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .target Ma Stonefield
    .turnin 88 >>交任务 公主必须死！
    .goto Elwynn Forest,34.660,84.483
step
    #optional
    #sticky
    .abandon 59 >>Abandon Cloth 和 Leather Armor.You won't complete this quest
step
    #completewith FlyIF
    .hs >>飞往 洛克莫丹
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雅尼·铁心|r 对话
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from her|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_too from her if needed|r
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[烹饪用火]|cRXP_WARN_on Boats or Trams to level your|r |T133971:0|t[烹饪]|cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .accept 418 >>接受任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step
    #optional
    #completewith ESSM
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>击杀 |cRXP_ENEMY_山猪|r。拾取它们的|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<1,1 -- shows if cooking is >1
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith ESSM
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>击杀 |cRXP_ENEMY_Tunnel Rats|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入磨坊 Stream Mine
step
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r.拾取地上的 them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    .complete 307,1 -- Miners' Gear (4)
step
    #optional
    #completewith FilthyMountaineer
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
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
    >>击杀 |cRXP_ENEMY_Tunnel Rats|r。拾取他们的 |cRXP_LOOT_耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高索·布鲁姆|r 对话
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r 对话
    .turnin 307 >>交任务 污秽的爪子
    .turnin 353 >>交任务 雷矛的包裹
    .target Mountaineer Stormpike
step
    >>击杀 |cRXP_ENEMY_老黑熊|r。拾取他们的 |cRXP_LOOT_熊肉|r
    >>击杀 |cRXP_ENEMY_山猪|r。拾取他们的 |cRXP_LOOT_猪大肠|r
    >>击杀 |cRXP_ENEMY_森林潜伏者|r。拾取他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
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
    .mob +Mountain Boar
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
    .mob +Forest Lurker
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
    #sticky
    #label RatCatching
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r 对话
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务 狗头人的耳朵
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维德拉·壁炉|r 对话
    .turnin 418 >>交任务 塞尔萨玛血肠
    .target Vidra Hearthstove
step
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r 对话
    .turnin 6392 >>交任务 向格雷姆罗克回复
    .target Brock Stoneseeker
step
    #optional
    #requires RatCatching
step
    .goto Loch Modan,26.67,56.94
    >>击杀 |cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r。拾取他们的 |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_碎石怪斥候|r，他们会施放|r |T132222:0|t[射击] |cRXP_WARN_(远程攻击：造成14-20点伤害)|r
    >>|cRXP_WARN_This is a hyperspawn area. You should not need to move from here|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto Loch Modan,26.67,56.94
    .xp 14-1800 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地堡里的 |cRXP_FRIENDLY_拉格弗斯上尉|r 对话
    .turnin 267 >>交任务 穴居人的威胁
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人库伯弗林特|r 对话
    .turnin 224 >>交任务 为了保卫国王的领土
    .target Mountaineer Cobbleflint
step
    #completewith FlyIF
    .goto Loch Modan,26.67,56.94
    +击杀 ，直到 you have 45s worth of vendorables+money, then skip this step
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .money >0.4500
step
    .goto Loch Modan,26.67,56.94
    .xp 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 对话
    .fly Ironforge>>Fly to 铁炉堡，丹莫罗
    .target Thorgrum Borrelson
step << Warlock
#ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_Buy a|r |T135144:0|t[强效魔法杖] |cRXP_BUY_if it costs less than 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7900
--Drain Life r1 - 9s
--Corruption r2 - 9s
--Grimoire of Consume Shadows -- 15s
--Grimoire of Sacrifice -- 12s
--burning wand 33s 40c
step << Warlock
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼下的 |cRXP_FRIENDLY_哈瑞克·石鼓|r 对话
    >>|cRXP_BUY_Buy a|r |T135468:0|t[烟尘魔杖] |cRXP_BUY_from him|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7900
step << Warlock
    #optional
    +|cRXP_WARN_Equip the|r |T135468:0|t[烟尘魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话
    .train 6222 >>学习 |T136118:0|t[腐蚀术 (等级 2)] 
    .train 689 >>训练 |T136169:0|t[吸取生命]
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor >>|cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)]|cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)]|cRXP_BUY_if you can afford it|r
    .target Jubahl Corpseseeker
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .turnin 6388 >>交任务 格莱斯·瑟登
    .fly Menethil >>Fly to 米奈希尔港，湿地
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与军营底楼的 |cRXP_FRIENDLY_尼尔·奥雷|r 对话
    .vendor 1448 >>|cRXP_WARN_Buy a|r |T133024:0|t[青铜管]|cRXP_BUY_from him (if it's up)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德温·晨光|r 对话，NPC在里面
    .vendor 1453 >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往暴风城大教堂内，与 the dock for the boat to Auberdine
    .zoneskip Darkshore
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>如果船只刚到就登船，如果船只刚走就在码头等：
    .cast 818 >>|cRXP_WARN_在你的法术书常规标签下创建一个|r |T135805:0|t[基础篝火] |cRXP_WARN_|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[烹饪] 以下物品：
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[多汁狼肉]|r|cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_You need 50|r |T133971:0|t[烹饪] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook]|cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore|r
    .zone Darkshore >>乘船前往黑海岸
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>乘船前往黑海岸
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r 对话
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接受任务 钓鱼世家
    .turnin 1141 >>交任务 钓鱼世家
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #completewith BuzzBox1
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    >>|cRXP_WARN_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_from him|r
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>下楼 toward |cRXP_FRIENDLY_维兹班恩·曲针|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fp Auberdine >>获取鹰巢山飞行路径
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>击杀 |cRXP_ENEMY_小潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹幼崽|r。拾取他们的 |cRXP_LOOT_Crawler Legs|r
    >>你可能需要下水才能获得它们
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_搁浅的海洋生物|r.拾取地上的 it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[萨纳瑞恩的希望] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It can be used from any range as long as you have one targeted|r
    >>==如果附近没有熊，请不要使用该任务物品== 
    >>你可能会浪费陷阱，导致该任务无法完成！如果发生这种情况，你需要返回任务给予者那里再领取一个新的陷阱
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>朝着 Furbolg Camp 的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >>交任务 传声盒827号
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >> Abandon Buzzbox 411. You won't complete this quest
step
    #optional
    #sticky
    .abandon 4681 >>交任务 搁浅的巨兽. You won't complete this quest
step
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[急救] |cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>乘船前往秘蓝岛
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance Hunter
#name 6-10级 丹莫罗 (猎人)
#next 12-14 黑海岸
#subgroup RestedXP 联盟 1-20 级
#defaultfor Dwarf Hunter

step
    #optional
    #completewith SenirEnd
    >>击杀 |cRXP_ENEMY_峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    >>|cRXP_WARN_收好你在任务（贝尔丁的补给）中获得的|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r|cRXP_WARN_你稍后会在升级|r |T133971:0|t[烹饪]|cRXP_WARN_中需要|r
    >>|cRXP_WARN_你需要10点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在奥伯丁完成一个任务|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #completewith next
    >>|cRXP_WARN_请确保你的区域不是寒脊山小径|r
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .target Spirit Healer
    .subzoneskip 131
step
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >>Travel to 卡拉诺斯，丹莫罗
    .mob Crag Boar
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 420 >>交任务 森内尔的观察站
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .accept 384 >>接受任务 啤酒烤猪排
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔诺克·霜锤|r 对话
    .turnin 2160 >>交任务 塔诺克的补给品
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .home >>将你的炉石设置到雷酒酿制厂
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r 对话
    .accept 400 >>接受任务 贝尔丁的工具
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 和 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    >>|cRXP_WARN_在途中请勿击杀任何 |cRXP_ENEMY_黑熊幼崽|r |r
    .accept 317 >>接受任务 贝尔丁的补给
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >>接受任务 灰色洞穴
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r 和 |cRXP_FRIENDLY_罗斯洛·鲁治|r 对话
    .turnin 400 >>交任务 贝尔丁的工具
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>接受任务 海格纳的弹药
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << !Paladin !Warrior !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取他们的 |cRXP_LOOT_Fur|r
    >>击杀 |cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith Level8
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .xp 5+2125 >>击杀 to 2125+/2800xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>交任务 贝尔丁的补给
    .accept 318 >>接受任务 艾沃沙酒
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_购买一杯|r |T132800:0|t[狂想麦酒] |cRXP_BUY_从他那里|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_弹药箱|r。拾取 |cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >>交任务 海格纳的弹药
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r 对话
    >>|cRXP_BUY_Buy and equip a|r |T135611:0|t[精制短枪]|cRXP_BUY_. Skip this step if you can't afford it|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Equip the|r |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
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
    >>击杀 |cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r。拾取他们的 |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
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
    .xp 7
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .accept 312 >>接受任务 马克格拉恩的干肉
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r.拾取地上的 it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r 对话
    .turnin 312 >>交任务 马克格拉恩的干肉
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r 对话
    .vendor >>出售垃圾物品
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 和 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .turnin 318 >>交任务 艾沃沙酒
    .accept 319 >>接受任务 艾沃沙酒
    .accept 315 >>接受任务 完美烈酒
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>接受任务 针锋相对
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #completewith Level8
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
    >>击杀 |cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r, and |cRXP_ENEMY_雪豹|r
    >>|cRXP_WARN_Skip this step once you've met the XP threshold. You'll complete it later|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
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
    .xp 7+3020 >>击杀 to 3020+/4500xp
    .isQuestAvailable 384
step
    #optional
    #label Level8
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
    .xp 7+3645 >>击杀 to 3645+/4500xp
    .isQuestTurnedIn 384
step
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
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    >>击杀 |cRXP_ENEMY_冰爪熊|r 和 |cRXP_ENEMY_雪豹|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Boars|r for their|r |cRXP_LOOT_Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .mob +Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .disablecheckbox
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .disablecheckbox
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .disablecheckbox
    .mob +Snow Leopard
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_进行 丹莫罗 -> 湿地 死亡跳跃。细跟箭头指示|r
    >>|cRXP_WARN_暂时不要从任何高地跳下|r
    .zone Wetlands >>|cRXP_WARN_登山，然后沿着锯齿形状地形下走，直到区域切换成湿地|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_面朝北方或西北方，跳下山坡|r
    .deathskip >>Die 和 respawn at the Baradin Bay |cRXP_FRIENDLY_灵魂医者|r
    .isQuestAvailable 983
    .target Spirit Healer
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>朝米奈希尔港游，直到上岸
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fp Wetlands >>获取塞尔萨玛的飞行路径
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >>Hearth to 卡拉诺斯，丹莫罗
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102,1
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一杯|r |T132800:0|t[雷霆麦酒]
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加文·雷酒|r 对话
    .turnin 308 >>交任务 加文的爱好
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>点击地上的 |cRXP_PICK_无人守卫的雷酒桶|r
    .turnin 310 >>交任务 针锋相对
    .accept 311 >>接受任务 向马莱斯回报
step << Hunter
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷格·比尔姆|r 对话
    >>|cRXP_WARN_Buy 5 stacks of|r |T132384:0|t[轻弹丸]
    .collect 2516,800 --Light Shot
    .target Kreg Bilmn
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .turnin 384 >>交任务 啤酒烤猪排
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .accept 287 >>接受任务 霜鬃巨魔要塞
    .target Senir Whitebeard
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r 对话
    .turnin 313 >>交任务 灰色洞穴
    .target Pilot Stonegear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .trainer >>训练你的职业技能
    .target Grif Wildheart
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_ 风筝 |cRXP_ENEMY_瓦加什|r 下行至|r |cRXP_FRIENDLY_鲁德拉·冻石|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_CLICK HERE If you're struggling|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .accept 314 >>接受任务 保护牲畜
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_点击这里查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r 对话
    .turnin 314 >>交任务 保护牲畜
    .target Rudra Amberstill
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith QuarryStart
    .goto Dun Morogh,68.379,54.492,60 >>Travel to 古博拉采掘场，丹莫罗
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r 对话
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
    .money <0.0100
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .accept 432 >>接受任务 该死的穴居人！
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
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
    .mob Rockjaw Skullthumper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 对话
    .turnin 432 >>交任务 该死的穴居人！
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #optional
    .isQuestComplete 433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 对话
    .turnin 433 >>交任务 公众之仆
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    #completewith next
    >>击杀 |cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>前去找 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .accept 419 >>接受任务 失踪的驾驶员
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>点击地上的 |cRXP_PICK_矮人的尸体|r
    .turnin 419 >>交任务 失踪的驾驶员
    .accept 417 >>接受任务 驾驶员的复仇
step
    .goto Dun Morogh,78.97,37.14
    >>击杀 |cRXP_ENEMY_癞爪|r。拾取他的 |cRXP_LOOT_肮脏的爪子|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r 对话
    .turnin 417 >>交任务 驾驶员的复仇
    .target Pilot Hammerfoot
step
    #completewith ShimmerweedCollect
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>接受任务 自动净化装置
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Travel up the ramp to Shimmer Ridge
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>击杀 |cRXP_ENEMY_霜鬃先知|r。拾取他们的 |cRXP_LOOT_Shimmerweed|r
    >>Open the |cRXP_PICK_Shimmerweed Baskets|ron the ground.拾取地上的 them for their |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
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
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r, |cRXP_ENEMY_冰爪熊|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 对话
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >>交任务 艾沃沙酒
    .accept 320 >>接受任务 艾沃沙酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r 对话
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >>交任务 完美烈酒
    --.accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马莱斯·麦酒|r 对话
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >>交任务 向马莱斯回报
step
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>击杀 |cRXP_ENEMY_麻风侏儒|r。拾取他们的 |cRXP_LOOT_Gyromechanic Gears|r 和 |cRXP_LOOT_Restabilization Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label xp10
    .xp 9+4175 >>击杀 to 4175+/6500xp
step
    #sticky
    #label Headhunters
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
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Run up the side of the cave entrance. 交任务 霜鬃巨魔要塞
    .isOnQuest 287
step
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Drop down into the small dead-end room of the cave|r
    >>|cRXP_WARN_Don't worry about dying to do this as you're about to deathskip back to Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #requires xp10
step
    #optional
    #requires Headhunters
step
    #completewith AcceptTaming
    .deathskip >>Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r 对话
    .turnin 287 >>交任务 霜鬃巨魔要塞
    .accept 291 >>接受任务 森内尔的报告
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r 对话，NPC在里面
    .turnin 412 >>交任务 自动净化装置
    .target Razzle Sprysprocket
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r 对话
    .turnin 320 >>交任务 艾沃沙酒
    .target Pilot Bellowfiz
step
    .xp 10
step << Hunter
    #label AcceptTaming
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .trainer >>训练你的职业技能
    .accept 6064 >>接受任务 驯服野兽
step << Hunter
    .goto Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_大峭壁野猪|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6064 >>交任务 驯服野兽
    .target Grif Wildheart
    .accept 6084 >>接受任务 驯服野兽
step << Hunter
    .goto Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6084 >>交任务 驯服野兽
    .target Grif Wildheart
    .accept 6085 >>接受任务 驯服野兽
step << Hunter
    .goto Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话
    .turnin 6085 >>交任务 驯服野兽
    .target Grif Wildheart
    .accept 6086 >>接受任务 训练野兽
step << Hunter
    #completewith next
    .goto Dun Morogh,49.0,44.6,30,0
    .goto Dun Morogh,45.7,42.2,30,0
    +|cRXP_WARN_施放|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_冰爪熊|r or |cRXP_ENEMY_冬狼|r to tame it on the way to Ironforge|r
    >>|cRXP_WARN_It isn't important which one you tame as you'll tame a new pet shortly in Darkshore. Skip this step once you've tamed a pet|r
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	.unitscan Ice Claw Bear
    .unitscan Winter Wolf
    .subzoneskip 809 --gates of IF
    .usespell 1515
step << Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>Travel to 铁炉堡，丹莫罗
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼下与 |cRXP_FRIENDLY_萨古斯·雷拳|r 对话
    >>|cRXP_BUY_Buy a|r |T135613:0|t[猎人火枪] |cRXP_BUY_if you can afford it|r
    .collect 2511,1
    .money <0.1324
    .target Thalgus Thunderfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00  
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135613:0|t[猎人火枪]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 对话
    .trainer >>训练你的宠物技能
    .turnin 6086 >>交任务 训练野兽
    .target Belia Thundergranite
step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun Tram
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与中站台上的 |cRXP_FRIENDLY_蒙提|r 对话
    .target Monty
    .accept 6661 >>接受任务 捕捉矿道老鼠
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute]|cRXP_WARN_on|r|cRXP_ENEMY_矿道老鼠|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r 对话
    .target Monty
    .turnin 6661 >>交任务 捕捉矿道老鼠
step
    .zone Ironforge >>回到铁炉堡
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133912:0|t[黑海岸石斑鱼]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁炉堡拍卖师|r 对话
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r|cRXP_BUY_to level your|r |T133971:0|t[烹饪]|cRXP_BUY_with later|r
    >>|cRXP_WARN_你需要50点|r |T133971:0|t[烹饪]|cRXP_WARN_后续在夜色镇完成一个任务|r
    >>|cRXP_BUY_购买以下物品，以便稍后在黑海岸更快交任务|r
    >>|cRXP_WARN_如果你不想这样做，或者无法完成，可以跳过此步骤|r
    >>|T133972:0|t[陆行鸟肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[多汁狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r 对话
    .target Senator Barin Redstone
    .turnin 291 >>交任务 森内尔的报告
step
    #label FlyMenethil
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Menethil >>Fly to 米奈希尔港，湿地
    .target Gryth Thurden
]])