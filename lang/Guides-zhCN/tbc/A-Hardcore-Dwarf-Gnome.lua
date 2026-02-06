if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Gnome/Dwarf
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 1-20
#name 1-6级 丹莫罗
#next 10-12 Elwynn Forest

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +你选择的是侏儒和矮人专用的指南，请确保你的选择与你角色出生地一致
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >>接受任务《物归己用》 矮人的交易
    .target 斯登·粗臂
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>击杀 |cRXP_ENEMY_蓬毛幼狼|r 直到你拥有价值10铜币以上的垃圾物品
    >>|cRXP_WARN_You will train|r |T132333:0|t[战斗怒吼] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格伦德尔·哈金|r
    .vendor >>出售垃圾物品
    .target 格伦德尔·哈金
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r
    .train 6673 >>Train |T132333:0|t[战斗怒吼]
    .target 斯兰·库尔曼
    .goto Dun Morogh,28.832,67.242
    .mob 蓬毛幼狼
    .mob 蓬毛森林狼
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >>进入安威玛尔
    >>|cRXP_WARN_Unequip your Body Armor, Shirt, Pants and Boots en-route. You will vendor them|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r
    .vendor >> |cRXP_WARN_Vendor your Body Armor, Shirt, Pants and Boots along with the Food and Water in your bags. You need 10c total|r
    .target 德南·弗卡特
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .train 348 >>Train |T135817:0|t[献祭]
    .accept 1599 >>接受任务《物归己用》 开端
    .target 阿拉玛尔·格里姆
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>击杀 |cRXP_ENEMY_蓬毛幼狼|r 和 |cRXP_ENEMY_蓬毛森林狼|r。拾取他们的 |cRXP_LOOT_Tough Wolf Meat|r
    >>|cRXP_WARN_Equip any Cloth Armor you loot off the|r |cRXP_ENEMY_幼狼|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob 蓬毛幼狼
    .mob 蓬毛森林狼
step
    .xp 2 >>击杀 to 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务《 前往熔光镇》 矮人的交易
    .accept 3115 >>接受任务 被污染的备忘录 << Gnome Warlock
    .accept 233 >>接受任务《物归己用》 寒脊山谷的送信任务
    .target 斯登·粗臂
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>接受任务《物归己用》 新的威胁
    .target 巴尔林·霜锤
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >>进入 Frostmane Cave
step << Warlock
    >>击杀 |cRXP_ENEMY_霜鬃巨魔新兵|r 对话，NPC在里面 the cave. 拾取 |cRXP_LOOT_Feather Charms|r
    >>|cRXP_BUY_Equip any Cloth Armor you loot off the|r |cRXP_ENEMY_Frostmanes|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob 霜鬃巨魔新兵
step << Warlock
    --#hardcore
    #completewith next
    .hs >>炉石返回寒脊山谷
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >>交任务《 前往熔光镇》 开端
    .turnin 3115 >>交任务 被污染的备忘录 << Gnome Warlock
    .target 阿拉玛尔·格里姆
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    .target 艾德林·怒流
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务《 前往熔光镇》 矮人的交易
    .accept 233 >>接受任务《物归己用》 寒脊山谷的送信任务
    .accept 3106 >>接受任务《物归己用》 简易符文 << Dwarf Warrior
    .accept 3107 >>接受任务《物归己用》 神圣符文 << Paladin
    .accept 3109 >>接受任务《物归己用》 密文符文 << Dwarf Rogue
    .accept 3110 >>接受任务《物归己用》 神圣符文 << Priest
    .accept 3112 >>接受任务《物归己用》 简易备忘录 << Gnome Warrior
    .accept 3113 >>接受任务《物归己用》 密文备忘录 << Gnome Rogue
    .accept 3114 >>接受任务《物归己用》 雕文备忘录 << Mage
    .accept 3108 >>接受任务《物归己用》 风蚀符文 << Dwarf Hunter
    .target 斯登·粗臂
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>接受任务《物归己用》 新的威胁
    .target 巴尔林·霜锤
step
    #era
    #completewith Rockjaw
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob 石腭穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob 壮实的石腭穴居人
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r
    .target 塔林·锐眼
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >>交任务《 前往熔光镇》 寒脊山谷的送信任务
    .accept 183 >>接受任务《物归己用》 猎杀野猪
    .accept 234 >>接受任务《物归己用》 寒脊山谷的送信任务
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>击杀 |cRXP_ENEMY_小型峭壁野猪|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob 小型峭壁野猪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔林·锐眼|r
    .target 塔林·锐眼
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >>交任务《 前往熔光镇》 猎杀野猪
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >>击杀 to 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >>交任务《 前往熔光镇》 寒脊山谷的送信任务
    .accept 182 >>接受任务 巨魔洞穴
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob 石腭穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob 壮实的石腭穴居人
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里斯·激流
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >>接受任务《物归己用》 热酒快递
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >>前往暴风城大教堂内，与 Anvilmar
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务《 前往熔光镇》 热酒快递
    .accept 3365 >>接受任务《物归己用》 归还酒杯
    .target 德南·弗卡特
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target 索加斯·格瑞姆森
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 3108 >>交任务《 前往熔光镇》 风蚀符文
    .train 1978 >> Train Serpent Sting
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .target 布罗莫斯·格鲁诺尔
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >>交任务《 前往熔光镇》 神圣符文
    .trainer >>训练你的职业技能
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .target 玛瑞克·斯托纳尔
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >>交任务《 前往熔光镇》 雕文备忘录
    .trainer >>训练你的职业技能
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .target 阿拉玛尔·格里姆
    .goto Dun Morogh,28.650,66.145
    .trainer >> Train your Corruption
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r
    .target 巴尔林·霜锤
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >>交任务《 前往熔光镇》 新的威胁
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    >>|cRXP_WARN_Buy 2 stacks of|r |T132384:0|t[轻弹丸]
    .collect 2516,400 -- Light Shot (400)
    .target 艾德林·怒流
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob 石腭穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob 壮实的石腭穴居人
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>击杀 |cRXP_ENEMY_霜鬃巨魔新兵|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob 霜鬃巨魔新兵
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>击杀 |cRXP_ENEMY_霜鬃巨魔新兵|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob 霜鬃巨魔新兵
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>击杀 |cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭穴居人|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob 石腭穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob 壮实的石腭穴居人
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >>击杀 to 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >>交任务 巨魔洞穴
    .accept 218 >>接受任务 被窃取的日记
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里斯·激流
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >>交任务《 前往熔光镇》 归还酒杯
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >>进入 Frostmane Cave
step
    .goto Dun Morogh,26.8,79.9,35,0
    .goto Dun Morogh,29.0,79.0,20,0
    .goto Dun Morogh,30.6,80.3
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r. Loot him for his |cRXP_LOOT_Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob 冷酷的格瑞克尼尔
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里斯·激流
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >>接受任务《物归己用》 热酒快递
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务《物归己用》 森内尔的观察站
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >>前往暴风城大教堂内，与 Anvilmar
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务《 前往熔光镇》 热酒快递
    .accept 3365 >>接受任务《物归己用》 归还酒杯
    .target 德南·弗卡特
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索姆·哈格林|r
    .target 索姆·哈格林
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >>交任务《 前往熔光镇》 密文备忘录 << Gnome Rogue
    .turnin 3109 >>交任务《 前往熔光镇》 密文符文 << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    .target 布兰斯托克·卡德尔
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >>交任务《 前往熔光镇》 神圣符文
    .trainer >>训练你的职业技能
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯兰·库尔曼|r
    .target 斯兰·库尔曼
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >>交任务《 前往熔光镇》 简易符文 << Dwarf Warrior
    .turnin 3112 >>交任务《 前往熔光镇》 简易备忘录 << Gnome Warrior
    .trainer >>训练你的职业技能
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尔林·霜锤|r
    .target 巴尔林·霜锤
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >>交任务《 前往熔光镇》 新的威胁
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >>出售垃圾物品
    >>|cRXP_BUY_购买10瓶|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target 艾德林·怒流
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格瑞林·白须
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >>交任务 被窃取的日记
    .accept 282 >>接受任务《物归己用》 森内尔的观察站
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里斯·激流
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >>交任务《 前往熔光镇》 归还酒杯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人萨鲁斯|r
    .target 巡山人萨鲁斯
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >>交任务《 前往熔光镇》 森内尔的观察站
    .accept 420 >>接受任务《物归己用》 森内尔的观察站
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_汉兹·跳链|r
    .target 汉兹·跳链
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >>接受任务《物归己用》 塔诺克的补给品
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>穿过寒脊山小径
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>击杀 |cRXP_ENEMY_峭壁野猪|r and |cRXP_ENEMY_大峭壁野猪|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >>前往 Halfhill Kharanos. Grind to 2145/+2800xp killing |cRXP_ENEMY_峭壁野猪|r en-route << Priest
    .xp 5+2415 >>前往 Halfhill Kharanos. Grind to 2415/+2800xp killing |cRXP_ENEMY_峭壁野猪|r en-route << !Priest
    .mob 峭壁野猪
    .mob 大峭壁野猪
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >>前往纳格兰. 击杀 |cRXP_ENEMY_峭壁野猪|r en-route
    .mob 峭壁野猪
    .mob 大峭壁野猪
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务《 前往熔光镇》 森内尔的观察站
    .target 森内尔·白须
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r
    .trainer >>训练你的职业技能
    .target 吉姆瑞兹·黑轮
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹尼·血泡|r
    .vendor >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)]|cRXP_BUY_if you can afford it. If not you will buy it later|r
    .target 丹尼·血泡
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >>击杀 to 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业技能
    .train 3044 >> Train Arcane Shot
    .target 格瑞夫
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格纳·雷酒|r
    .target 拉格纳·雷酒
    .goto Dun Morogh,46.825,52.361
    .accept 384 >>接受任务《物归己用》 啤酒烤猪排
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔诺克·霜锤|r
    .target 塔诺克·霜锤
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >>交任务《 前往熔光镇》 塔诺克的补给品
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克雷格·比尔姆|r
    .vendor >>|cRXP_BUY_Buy and equip a|r |T135426:0|t[小飞刀]
    .target 克雷格·比尔姆
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .target 霍格拉尔·巴坎
    .goto Dun Morogh,47.563,52.608
    .trainer >>训练你的职业技能
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .target 玛济斯·石衣
    .goto Dun Morogh,47.498,52.076
    .trainer >>训练你的职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .target 阿扎尔·战锤
    .goto Dun Morogh,47.597,52.070
    .trainer >>训练你的职业技能
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .target 马克萨恩·安沃尔
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >>接受任务《物归己用》 圣光之衣
step << Priest
    >>Use Lesser Heal Rank 2 和 then Power Word:Fortitude on |cRXP_FRIENDLY_巡山人多尔夫|r
    .target 巡山人多尔夫
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .target 马克萨恩·安沃尔
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >>交任务《 前往熔光镇》 圣光之衣
    .trainer >>训练你的职业技能
step << Priest
    .xp 6 >>击杀 to 6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .target 旅店老板贝尔姆
    .goto Dun Morogh,47.377,52.523
    .home >>将你的炉石设置为铁炉堡 Distillery
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_as you can afford|r << Priest/Mage/Warlock
    .bindlocation 2102
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .target 格兰尼斯·快斧
    .goto Dun Morogh,47.360,52.646
    .trainer >>训练你的职业技能
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >>前往暴风城大教堂内，与 the Blacksmith
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托格努斯·燧火|r
    .target 托格努斯·燧火
    .goto Dun Morogh,45.3,51.9
    .trainer >>学习 |T136241:0|t[锻造]
    >>|cRXP_WARN_This will allow you to make |T135248:0|t[劣质磨刀石] which increase melee hits by +2 Damage. This is very significant early on|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make |T135255:0|t[劣质平衡石] which increase melee hits by +2 Damage. This is very significant early on|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r
    .target 萨雷克·暗岩
    .goto Dun Morogh,46.021,51.676
    .accept 400 >>接受任务《物归己用》 贝尔丁的工具
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    >>|cRXP_WARN_在途中请勿击杀任何 |cRXP_ENEMY_黑熊幼崽|r |r
    .target 驾驶员贝隆·风箱
    .accept 317 >>接受任务《物归己用》 贝尔丁的补给
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target 驾驶员迪恩·石轮
    .goto Dun Morogh,49.622,48.612
    .accept 313 >>接受任务 灰色洞穴
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔丁·钢架|r
    .target 贝尔丁·钢架
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >>交任务《 前往熔光镇》 贝尔丁的工具
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .target 罗斯洛·鲁治
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >>接受任务《物归己用》 海格纳的弹药
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick]|cRXP_BUY_if you trained|r |T135232:0|t[锻造]
    .collect 2901,1
    .target 罗斯洛·鲁治
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚尔·锤石|r
    .trainer >>学习 |T134708:0|t[采矿]
    .target 亚尔·锤石
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取他们的 |cRXP_LOOT_Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob 黑熊幼崽
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
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
    .goto Dun Morogh,43.5,52.5
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取他们的 |cRXP_LOOT_Fur|r
    >>击杀 |cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob 黑熊幼崽
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob 峭壁野猪
    .mob 大峭壁野猪
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .target 驾驶员贝隆·风箱
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>交任务《 前往熔光镇》 贝尔丁的补给
    .accept 318 >>接受任务《物归己用》 艾沃沙酒
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor >>|cRXP_BUY_Buy as much|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_as you can afford|r
    .target 旅店老板贝尔姆
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_as you can afford|r
    .target 旅店老板贝尔姆
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >>前往暴风城大教堂内，与 The Grizzled Den
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>击杀 |cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r。拾取他们的 |cRXP_LOOT_Manes|r
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_so you can craft|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[劣质的石头]|r |cRXP_WARN_so you can craft|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob 雪怪
    .mob 雪怪幼崽
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_弹药箱|r。拾取 |cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r
    .target 海格纳·重枪
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >>交任务《 前往熔光镇》 海格纳的弹药
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海格纳·重枪|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Buy and equip a|r |T135611:0|t[精制短枪]|cRXP_BUY_. Skip this step if you can't afford it|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target 海格纳·重枪
step << !Paladin !Warrior !Rogue
    .xp 7 >>击杀 to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>击杀 |cRXP_ENEMY_黑熊幼崽|r。拾取他们的 |cRXP_LOOT_Fur|r
    >>击杀 |cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob 黑熊幼崽
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob 峭壁野猪
    .mob 大峭壁野猪
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>击杀 |cRXP_ENEMY_大峭壁野猪|r 和 |cRXP_ENEMY_峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob 峭壁野猪
    .mob 大峭壁野猪
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .target 驾驶员贝隆·风箱
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>交任务《 前往熔光镇》 贝尔丁的补给
    .accept 318 >>接受任务《物归己用》 艾沃沙酒
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target 驾驶员迪恩·石轮
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >>交任务 灰色洞穴
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick]|cRXP_BUY_if you trained|r |T135232:0|t[锻造]
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >>击杀 to 7
step << Warrior/Rogue
    #som
    .xp 8 >>击杀 nearby mobs to 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .target 霍格拉尔·巴坎
    .goto Dun Morogh,47.563,52.608
    .trainer >>训练你的职业技能
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .target 阿扎尔·战锤
    .goto Dun Morogh,47.597,52.070
    .trainer >>训练你的职业技能
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .target 格兰尼斯·快斧
    .goto Dun Morogh,47.360,52.646
    .trainer >>训练你的职业技能
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .vendor >>|cRXP_BUY_Buy up to 20|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >>|cRXP_BUY_Buy up to 10|r |T133968:0|t[刚出炉的面包] << Paladin
    .target 旅店老板贝尔姆
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >>前去找 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    >>击杀 |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_狼|r en-route
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target 图德拉·马克格拉恩
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>接受任务《物归己用》 马克格拉恩的干肉
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >>前去找 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    >>击杀 |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_狼|r en-route
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target 图德拉·马克格拉恩
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>接受任务《物归己用》 马克格拉恩的干肉
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >>前往暴风城大教堂内，与 Brewnall Village
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r
    .goto Dun Morogh,30.453,46.005
    .vendor >>出售垃圾物品
    .target 基格·吉布恩
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r
    .goto Dun Morogh,30.453,46.005
    .vendor >>|cRXP_BUY_Buy up to 20|r |T132815:0|t[冰镇牛奶]
    .target 基格·吉布恩
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target 雷杰德·麦酒
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >>交任务《 前往熔光镇》 艾沃沙酒
    .accept 319 >>接受任务《物归己用》 艾沃沙酒
    .accept 315 >>接受任务《物归己用》 完美烈酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马莱斯·麦酒|r
    .target 马莱斯·麦酒
    .goto Dun Morogh,30.186,45.531
    .accept 310 >>接受任务《物归己用》 针锋相对
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>击杀 |cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob 冰爪熊
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob 老峭壁野猪
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob 雪豹
step
    >>击杀 |cRXP_ENEMY_老峭壁野猪|r。拾取他们的 |cRXP_LOOT_峭壁野猪肋排|r
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob 老峭壁野猪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target 雷杰德·麦酒
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >>交任务《 前往熔光镇》 艾沃沙酒
    .accept 320 >>接受任务《物归己用》 艾沃沙酒
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>If you have already turned in the quest Beer Basted Boar Ribs, grind until 4360+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    .xp 7+3735 >>击杀 ，直到 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
	#completewith next
    .hs >>Hearth to 卡拉诺斯，丹莫罗
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt]|cRXP_BUY_and a|r |T132800:0|t[雷霆麦酒]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target 旅店老板贝尔姆
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加文·雷酒|r 对话
    .turnin 308 >>交任务《 前往熔光镇》 加文的爱好
    .target 加文·雷酒
step
    .goto Dun Morogh,47.716,52.696
    >>点击地上的 |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >>交任务《 前往熔光镇》 针锋相对
    .accept 311 >>接受任务《物归己用》 向马莱斯回报
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_拉格纳·雷酒|r 对话
    .target 拉格纳·雷酒
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >>交任务《 前往熔光镇》 啤酒烤猪排
step << !Paladin !Rogue !Warrior
    .xp 8 >>击杀 to 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业技能
    .train 5116>> Train Concussive Shot
    .target 格瑞夫
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r
    .target 吉姆瑞兹·黑轮
    .trainer >>训练你的职业技能
    .train 5782 >>Train |T136183:0|t[恐惧]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r
    .vendor >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)]|cRXP_BUY_if you can afford it. If not you will buy it later|r
    .target 吉姆瑞兹·黑轮
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .target 霍格拉尔·巴坎
    .goto Dun Morogh,47.563,52.608
    .trainer >>训练你的职业技能
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_阿扎尔·战锤|r 对话
    .target 阿扎尔·战锤
    .goto Dun Morogh,47.597,52.070
    .trainer >>训练你的职业技能
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格兰尼斯·快斧|r 对话，NPC在里面
    .target 格兰尼斯·快斧
    .goto Dun Morogh,47.360,52.646
    .trainer >>训练你的职业技能
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_玛济斯·石衣|r 对话
    .target 玛济斯·石衣
    .goto Dun Morogh,47.498,52.076
    .trainer >>训练你的职业技能
    .train 118 >>Train |T136071:0|t[变形术]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马克萨恩·安沃尔|r 对话，NPC在里面
    .target 马克萨恩·安沃尔
    .goto Dun Morogh,47.342,52.190
    .trainer >>训练你的职业技能
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 萨姆诺·普尔
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135321:0|t[步兵剑]
    .target 格劳恩·索姆温
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T132401:0|t[双刃战斧]
    .target 格劳恩·索姆温
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一把|r |T135641:0|t[卷刃的剑]
    .target 格劳恩·索姆温
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备一梗|r |T133053:0|t[木槌棒]
    .target 格劳恩·索姆温
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .goto Dun Morogh,47.377,52.523
    .vendor >>|cRXP_BUY_Buy up to 30|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >>|cRXP_BUY_Buy up to 15|r |T133968:0|t[刚出炉的面包] << Paladin
    .target 旅店老板贝尔姆
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .target 旅店老板贝尔姆
    .goto Dun Morogh,47.377,52.523
    .vendor >>|cRXP_BUY_Buy up to 30|r |T132815:0|t[冰镇牛奶]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r
    .target 森内尔·白须
    .goto Dun Morogh,46.726,53.826
    .accept 287 >>接受任务《物归己用》 霜鬃巨魔要塞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target 驾驶员迪恩·石轮
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >>交任务 灰色洞穴
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .target 驾驶员贝隆·风箱
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_Choose the|r |T135637:0|t[露营小刀]|cRXP_WARN_reward. Save it for later|r << Rogue
    .turnin 320 >>交任务《 前往熔光镇》 艾沃沙酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r
    .target 拉兹·滑链
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>接受任务《物归己用》 自动净化装置
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >>前往暴风城大教堂内，与 Shimmer Ridge. 跟随 the arrow 和 run up the mountain
step
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
    >>|cRXP_LOOT_Shimmerweed|r can also be looted from |cRXP_PICK_Shimmerweed Baskets|r on the ground
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob 霜鬃先知
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_MacGrann's Meat Locker|r。拾取 |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_对|r |cRXP_WARN_冰须|r |cRXP_ENEMY_施放|r |T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>打开 |cRXP_PICK_MacGrann's Meat Locker|r。拾取 |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target 图德拉·马克格拉恩
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >>交任务《 前往熔光镇》 马克格拉恩的干肉
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[冰镇牛奶]
    .target 基格·吉布恩
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>出售垃圾物品
    .target 基格·吉布恩
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target 雷杰德·麦酒
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >>交任务《 前往熔光镇》 完美烈酒
    .accept 413 >>接受任务《物归己用》 微光酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马莱斯·麦酒|r
    .target 马莱斯·麦酒
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >>交任务《 前往熔光镇》 向马莱斯回报
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>击杀 |cRXP_ENEMY_麻风侏儒|r。拾取他们的 |cRXP_LOOT_Gears|r 和 |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob 麻风侏儒
step
    #era
    .xp 9 >>击杀 to 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >>接受任务 霜鬃巨魔要塞
step
    #completewith next
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step
    --#hardcore
    >>|cRXP_WARN_Drop down to this location to explore Frostmane Hold. If there are mobs below, clear around normally and do NOT drop down|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step << Hunter
    #completewith next
    .xp 10-2325
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>击杀 |cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob 霜鬃猎头者
step << Hunter
    .xp 10-1400
step
    --#hardcore
	#completewith next
	.hs >>Hearth to 卡拉诺斯，丹莫罗
	.cooldown item,6948,>0,1
step
    --#hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >>前往暴风城大教堂内，与 Kharanos
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r
   .target 拉兹·滑链
   .turnin 412 >>交任务《 前往熔光镇》 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_森内尔·白须|r
    .target 森内尔·白须
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >>交任务《 前往熔光镇》 霜鬃巨魔要塞
    .accept 291 >>接受任务《物归己用》 森内尔的报告
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_霍格拉尔·巴坎|r 对话
    .target 霍格拉尔·巴坎
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >>接受任务《物归己用》 救赎之路
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >>训练 |T135966:0|t[急救]
    .target 萨姆诺·普尔
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹·滑链|r
    .target 拉兹·滑链
    .turnin 412 >>交任务《 前往熔光镇》 自动净化装置
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target 格瑞夫
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >>接受任务《物归己用》 驯服野兽
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_大峭壁野猪|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob 大峭壁野猪
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务《 前往熔光镇》 驯服野兽
    .target 格瑞夫
    .accept 6084 >>接受任务《物归己用》 驯服野兽
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob 雪豹
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务《 前往熔光镇》 驯服野兽
    .target 格瑞夫
    .accept 6085 >>接受任务《物归己用》 驯服野兽
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob 冰爪熊
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务《 前往熔光镇》 驯服野兽
    .target 格瑞夫
    .accept 6086 >>接受任务《物归己用》 训练野兽
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_Grind until you have 10s30c, then run into Ironforge|r
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>前往铁炉堡
step << Hunter
    .goto Ironforge,70.86,85.83
    .target 贝莉亚·雷岩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝莉亚·雷岩|r
    .turnin 6086 >>交任务《 前往熔光镇》 训练野兽
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比克斯|r
    .trainer >>Train Thrown
    .target 比克斯
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与 |cRXP_FRIENDLY_布雷文·寒钢|r 对话
    >>|cRXP_BUY_Buy a|r |T135641:0|t[平衡飞刀] 和 equip it|r
    .target 布雷文·寒钢
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >>离开铁炉堡
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r
    .target 鲁德拉·冻石
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >>接受任务《物归己用》 保护牲畜
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Run up this part of the mountain
step
    .goto Dun Morogh,62.6,46.1
    >>击杀 |cRXP_ENEMY_瓦加什|r。拾取他的 |cRXP_LOOT_利牙|r
    >>|cRXP_WARN_这个任务有点难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    >>|cRXP_WARN_请先看以下的短视频，然后再击杀 |cRXP_ENEMY_瓦加什|r。任何职业都可以单刷它|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob 瓦加什
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁德拉·冻石|r
    >>|cRXP_WARN_Choose|r |T133052:0|t[|cRXP_FRIENDLY_寒脊之锤|r]|cRXP_WARN_as your reward. Don't worry if you can't equip it yet, you will train 2H Maces very soon!|r << Warrior
    .target 鲁德拉·冻石
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>交任务《 前往熔光镇》 保护牲畜
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >>前往暴风城大教堂内，与 Gol'Bolar Quarry
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>Train |T133971:0|t[烹饪]
    .target 厨师格瑞姆
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_if needed|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Buy|r |T133968:0|t[刚出炉的面包]|cRXP_BUY_and|r |T132815:0|t[冰镇牛奶]|cRXP_BUY_if needed|r << !Warrior !Rogue
    .target 卡杉·莫格什
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >>接受任务《物归己用》 公众之仆
    .target 参议员梅尔·圣石
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接受任务《物归己用》 该死的穴居人！
    .goto Dun Morogh,69.084,56.330
    .target 工头乔尼·石眉
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>击杀 |cRXP_ENEMY_石腭击颅者|r 和 |cRXP_ENEMY_石腭断骨者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob 石腭击颅者
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob 石腭断骨者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >>交任务《 前往熔光镇》 该死的穴居人！
    .target 工头乔尼·石眉
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务《 前往熔光镇》 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target 参议员梅尔·圣石
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >>击杀 to 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target 驾驶员塞克·锤足
    .goto Dun Morogh,83.892,39.188
    .accept 419 >>接受任务《物归己用》 失踪的驾驶员
step
    >>点击地上的 |cRXP_PICK_Dwarven Corpse|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>交任务《 前往熔光镇》 失踪的驾驶员
    .accept 417 >>接受任务《物归己用》 驾驶员的复仇
step
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob 癞爪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target 驾驶员塞克·锤足
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>交任务《 前往熔光镇》 驾驶员的复仇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .target 巡山人维拉特·麦酒
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >>交任务《 前往熔光镇》 微光酒
    .accept 414 >>接受任务《物归己用》 卡德雷尔的酒
step
    #completewith HonorStudents
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >>前往暴风城大教堂内，与 Loch Modan
step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务《 前往熔光镇》 卡德雷尔的酒
    .accept 1339 >>接受任务《物归己用》 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接受任务《物归己用》 荣誉学员
    .target 布洛克·寻石者
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_会沿着通往塞尔萨玛的道路巡逻|r
    .turnin 414 >>交任务《 前往熔光镇》 卡德雷尔的酒
    .accept 1339 >>接受任务《物归己用》 巡山人雷矛的任务
    .target 巡山人卡德雷尔
step
    #completewith next
    .subzone 925 >>前往暴风城大教堂内，与 Algaz Station
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务《 前往熔光镇》 巡山人雷矛的任务
    .accept 1338 >>接受任务《物归己用》 卡尔·雷矛的订单
    .target 巡山人雷矛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .target 索格拉姆·伯雷森
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >>交任务《 前往熔光镇》 荣誉学员
    .accept 6391 >>接受任务《物归己用》 飞往铁炉堡
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target 索格拉姆·伯雷森
    .zoneskip Loch Modan,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尼尔·石趾|r
    .target 高尼尔·石趾
    .goto Ironforge,51.521,26.311
    .turnin 6391 >>交任务《 前往熔光镇》 飞往铁炉堡
    .accept 6388 >>接受任务《物归己用》 格莱斯·瑟登
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .target 格莱斯·瑟登
    .goto Ironforge,55.501,47.742
    .turnin 6388 >>交任务《 前往熔光镇》 格莱斯·瑟登
    .accept 6392 >>接受任务《物归己用》 向格雷姆罗克回复
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_参议员巴林·红石|r
    .target 参议员巴林·红石
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>交任务《 前往熔光镇》 森内尔的报告
step << Warrior
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布里维夫·石手|r
    .train 199 >>学习双手锤
    .target 布里维夫·石拳
step << Warrior
    #sticky
    .equip 16,3103 >>|cRXP_WARN_Equip the|r |T133052:0|t[|cRXP_FRIENDLY_寒脊之锤|r]
    .use 3103
    .itemcount 3103,1
step
    .goto 1455/0,-857.000,-4840.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
    .home >>将你的炉石设置为铁炉堡
    .target 旅店老板洛雷·火酒
    .bindlocation 1537
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Gnome/Dwarf
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 1-20
#name 10-12 Elwynn Forest
#next 12-14 黑海岸

step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun Tram
    .zoneskip Stormwind City
step
    .goto Ironforge,78.00,52.00,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与中站台上的 |cRXP_FRIENDLY_蒙提|r 对话
    .target 蒙提
    .accept 6661 >>接受任务《物归己用》 捕捉矿道老鼠
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute]|cRXP_WARN_on|r|cRXP_ENEMY_矿道老鼠|r
    .complete 6661,1 --Rats Captured (x5)
    .mob 矿道老鼠
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒙提|r
    .target 蒙提
    .turnin 6661 >>交任务《 前往熔光镇》 捕捉矿道老鼠
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接受任务《物归己用》 我的兄弟，尼普希
step
    #completewith next
    .zone Stormwind City >>乘坐地铁前往暴风城
    >>|cRXP_WARN_如果需要，利用等地铁的时间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[急救] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t当你下列车后与 |cRXP_FRIENDLY_尼普希|r 对话
    >>|cRXP_FRIENDLY_尼普希|r |cRXP_WARN_is on the center platform|r
    .turnin 6662 >>交任务《 前往熔光镇》 我的兄弟，尼普希
    .target 尼普希
step
    .zone Stormwind City >>离开暴风城
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r
    .target 弗伦·长须
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>交任务《 前往熔光镇》 卡尔·雷矛的订单
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .target 高阶牧师劳瑞娜
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .turnin 5634 >>交任务《 前往熔光镇》 绝望祷言
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .train 13908 >>Train |T135954:0|t[绝望祷言]
    .target 高阶牧师劳瑞娜
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >>训练你的职业技能
    .accept 1638 >>接受任务《物归己用》 战士的训练
    .target 伊尔萨·考宾
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >>进入 Tavern
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r
    .target 哈里·伯加德
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >>交任务《 前往熔光镇》 战士的训练
    .accept 1639 >>接受任务《物归己用》 醉鬼巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r
    .target 巴特莱比
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >>交任务《 前往熔光镇》 醉鬼巴特莱比
    .accept 1640 >>接受任务《物归己用》 击败巴特莱比
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击 |cRXP_ENEMY_巴特莱比|r. He will submit at 1%
    .complete 1640,1 --Beat Bartleby
    .mob 巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴特莱比|r
    .target 巴特莱比
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>交任务《 前往熔光镇》 击败巴特莱比
    .accept 1665 >>接受任务《物归己用》 巴特莱比的酒杯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里·伯加德|r
    .target 哈里·伯加德
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >>交任务《 前往熔光镇》 巴特莱比的酒杯
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1688 >>接受任务《物归己用》 苏伦娜·凯尔东
    .target 黑暗缚灵者加科因
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r
    .target 吴平
    .goto StormwindClassic,57.129,57.698
    .trainer >>Train 1h Swords << Rogue/Mage
    .trainer >>学习锤类武器 << Priest
    .trainer >>Train 1h Swords 和 Staves << Warlock
    .trainer >>Train 2h Swords << Warrior/Paladin
step << Rogue
#ah
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[斗士短剑] |cRXP_BUY_or|r check the Auction House for something better/cheaper|r
	.collect 851,1
    .target 冈瑟尔·维勒
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
#ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_冈瑟尔·维勒|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[斗士短剑]
	.collect 851,1
    .target 冈瑟尔·维勒
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
    #sticky
    .equip 16,851 >>|cRXP_WARN_Equip the|r |T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城的飞行路径
    .target 杜加尔·朗德瑞克
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >>前往金雾村
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r
    .target 治安官杜汉
    .accept 62 >>接受任务《物归己用》 法戈第矿洞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r
    .target 威廉·匹斯特
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >>接受任务《物归己用》 狗头人的蜡烛
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往堡垒的楼上
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target 科瑞恩·塞尔留斯
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Remy "Two Times"|r
    .target 雷米
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >>接受任务《物归己用》 鱼人的威胁
    .accept 47 >>接受任务《物归己用》 金砂交易
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r
    .target 威尔海姆修士
    .goto Elwynn Forest,41.096,66.041
    .trainer >>训练你的职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 和 |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 88 >>接受任务《物归己用》 公主必须死！
    .target 斯通菲尔德妈妈
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >>接受任务《物归己用》 丢失的项链
    .target 波尼斯·斯通菲尔德姑妈
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r
    .target 比利·马科伦
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >>交任务《 前往熔光镇》 丢失的项链
    .accept 86 >>接受任务《物归己用》 比利的馅饼
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >>接受任务《物归己用》 年轻的恋人
    .target 梅贝尔·马科伦
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >>交任务《 前往熔光镇》 年轻的恋人
    .accept 111 >>接受任务《物归己用》 托米的祖母
    .target 托米·乔·斯通菲尔德
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    >>|cRXP_WARN_Skip the turn in for now if you don't have enough [|cRXP_LOOT_Chunks of Boar Meat|r]|r
    .turnin 86 >>交任务《 前往熔光镇》 比利的馅饼
    .isQuestComplete 86
    .target 波尼斯·斯通菲尔德姑妈
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莱德·斯通菲尔德|r
    .turnin 111 >>交任务《 前往熔光镇》 托米的祖母
    .accept 107 >>接受任务《物归己用》 给威廉·匹斯特的信
    .target 米莱德·斯通菲尔德
step
    #completewith next
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
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
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob 狗头人隧道工
    .mob 狗头人矿工
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >>前往金雾村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .target 雷米
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >>交任务《 前往熔光镇》 金砂交易
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r
    .target 治安官杜汉
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>交任务《 前往熔光镇》 法戈第矿洞
    .accept 76 >>接受任务《物归己用》 玉石矿洞
    .turnin 40 >>交任务《 前往熔光镇》 鱼人的威胁
    .accept 35 >>接受任务《物归己用》 卫兵托马斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r
    .target 威廉·匹斯特
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >>交任务《 前往熔光镇》 狗头人的蜡烛
    .accept 61 >>接受任务《物归己用》 送往暴风城的货物
    .turnin 107 >>交任务《 前往熔光镇》 给威廉·匹斯特的信
    .accept 112 >>接受任务《物归己用》 收集海藻
step
    >>击杀 |cRXP_ENEMY_鱼人|r 和 |cRXP_ENEMY_鱼人士兵|r. 拾取 |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob 鱼人
	.mob 鱼人士兵
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >>进入 Jasperlode Mine
step
    >>|cRXP_WARN_Follow the path through middle to explore Jasperlode Mine|r
    >>|cRXP_WARN_Exit Jasperlode Mine as soon as the objective completes|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >>交任务《 前往熔光镇》 卫兵托马斯
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >>接受任务《物归己用》 失踪的卫兵
    .accept 52 >>接受任务《物归己用》 保卫边境
step
    #era
    #completewith Prowlers
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_森林熊幼崽|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #era
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >>交任务《 前往熔光镇》 失踪的卫兵
    .accept 45 >>接受任务《物归己用》 罗尔夫的下落
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r
    .target 管理员莱琳
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >>接受任务《物归己用》 木材危机
step
    #era
    #completewith Bundles
    >>拾取散发绿光的 |cRXP_LOOT_Bundle of Wood|r on the ground.|cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的 |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_鱼人|r may agro once you click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_ENEMY_鱼人强盗|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    .turnin 45 >>交任务《 前往熔光镇》 罗尔夫的下落
    .accept 71 >>接受任务《物归己用》 回复托马斯
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>击杀 |cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .mob 觅食的灰狼
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob 森林熊幼崽
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>拾取散发绿光的 |cRXP_LOOT_Bundle of Wood|r on the ground.|cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r
    .target 管理员莱琳
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >>交任务《 前往熔光镇》 木材危机
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target 萨拉·迪博雷恩
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >>接受任务 红色亚麻布
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r
    .target 卫兵托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务《 前往熔光镇》 保卫边境
    .turnin 71 >>交任务《 前往熔光镇》 回复托马斯
    .accept 39 >>接受任务《物归己用》 托马斯的报告
    .accept 109 >>接受任务《物归己用》 向格里安·斯托曼报到
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_苏伦娜·凯尔东|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob 苏伦娜·凯尔东
step
    #era
    #completewith next
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们的 |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob 迪菲亚强盗
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    .complete 88,1
    .mob 公主
step
    #completewith next
    >>击杀 |cRXP_ENEMY_迪菲亚强盗|r。拾取他们身上的 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 来激发任务|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]|cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接受任务《物归己用》 法布隆的地契
step
    #era
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
    .mob 迪菲亚强盗
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target 萨拉·迪博雷恩
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >>交任务 红色亚麻布
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往赤脊山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
    .target 卫兵帕克
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>接受任务《物归己用》 豺狼人的入侵
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE|r
    .turnin 244 >>交任务《 前往熔光镇》 豺狼人的入侵
    .target 菲尔顿副队长
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务《 前往熔光镇》 送往暴风城的货物
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target 摩根·匹斯特
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，进入地下室
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .trainer >>训练你的职业技能
    .turnin 1688 >>交任务《 前往熔光镇》 苏伦娜·凯尔东
    .accept 1689 >>接受任务《物归己用》 誓缚
    .target 黑暗缚灵者加科因
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
    .mob 虚空行者
step << Warlock
    --#hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .target 黑暗缚灵者加科因
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务《 前往熔光镇》 誓缚
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >>前往金雾村
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target 里瑞亚·杜拉克
    .trainer >>训练你的职业技能
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务《 前往熔光镇》 托马斯的报告
    .turnin 76 >>交任务《 前往熔光镇》 玉石矿洞
    .accept 239 >>接受任务《物归己用》 西泉要塞
    .target 治安官杜汉
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >>交任务《 前往熔光镇》 收集海藻
    .accept 114 >>接受任务《物归己用》 梅贝尔的隐形水
    .target 威廉·匹斯特
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>前往堡垒的楼上
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .target 扎尔迪玛·维夫希尔特
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target 科瑞恩·塞尔留斯
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r
    .target 女牧师洁塞塔
    .trainer >>训练你的职业技能
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>前往暴风城大教堂内，与 The Maclure Vineyards
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务《 前往熔光镇》 梅贝尔的隐形水
    .target 梅贝尔·马科伦
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .target 斯通菲尔德妈妈
    .turnin 88 >>交任务《 前往熔光镇》 公主必须死！
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    >>|cRXP_WARN_Skip the turn in for now if you don't have enough [Chunks of Boar Meat]|r
    .target 波尼斯·斯通菲尔德姑妈
    .turnin 86 >>交任务《 前往熔光镇》 比利的馅饼
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandon Pie for Billy
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >>前往西部荒野 Garrison
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务《 前往熔光镇》 西泉要塞
    .goto Elwynn Forest,24.234,74.450
    .target 瑞尼尔副队长
step << Dwarf Paladin
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
    >>击杀 |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |T132889:0|t[亚麻布]
    >>|cRXP_WARN_You need 10 for an upcoming Paladin class quest|r
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_农夫法布隆|r
    .target 农夫法布隆
    .goto Westfall,59.95,19.35
    .turnin 184 >>交任务《 前往熔光镇》 法布隆的地契
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗娜·法布隆|r
    >>|cRXP_WARN_Don't accept the other quests|r
    .accept 36 >>接受任务《物归己用》 杂味炖肉
    .goto Westfall,59.92,19.42
	.target 弗娜·法布隆
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔玛·萨丁|r
    >>|cRXP_WARN_Don't accept the other quests|r
    .target 萨尔玛·萨丁
    .goto Westfall,56.40,30.50
    .turnin 36 >>交任务《 前往熔光镇》 杂味炖肉
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r
    .target 格里安·斯托曼
    .goto Westfall,56.33,47.52
    .turnin 109 >>交任务《 前往熔光镇》 向格里安·斯托曼报到
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target 索尔
step
    .hs >>将炉石使用回铁炉堡
	.cooldown item,6948,>0,1
    .zoneskip Ironforge
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Ironforge >>飞往铁炉堡
    .target 索尔
    .zoneskip Ironforge
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .target 布兰度尔·铁锤
    .goto Ironforge,23.131,6.143
    .accept 2999 >>接受任务《物归己用》 圣洁之书
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >>前往楼上，前去找 |cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 2999 >>交任务《 前往熔光镇》 圣洁之书
    .accept 1645 >>接受任务《物归己用》 圣洁之书
    .turnin 1645 >>交任务《 前往熔光镇》 圣洁之书
    .target 蒂萨·热炉
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_圣洁之书|r] 来激发任务|r
    .accept 1646 >>接受任务《物归己用》 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1646 >>交任务《 前往熔光镇》 圣洁之书
    .accept 1647 >>接受任务《物归己用》 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约翰·特纳|r
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_在拍卖行附近沿着铁炉堡外环巡逻|r
    .turnin 1647 >>交任务《 前往熔光镇》 圣洁之书
    .accept 1648 >>接受任务《物归己用》 圣洁之书
    .turnin 1648 >>交任务《 前往熔光镇》 圣洁之书
    .accept 1778 >>接受任务《物归己用》 圣洁之书
    .unitscan 约翰·特纳
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 交谈
    .target 蒂萨·热炉
    .turnin 1778 >>交任务《 前往熔光镇》 圣洁之书
    .accept 1779 >>接受任务《物归己用》 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆里顿·热炉|r
    >>|cRXP_WARN_先不要接取后续任务|r
    .target 穆里顿·热炉
    .turnin 1779 >>交任务《 前往熔光镇》 圣洁之书
]])