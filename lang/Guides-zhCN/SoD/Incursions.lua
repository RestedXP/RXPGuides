if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 梦魇进犯日常任务
#name (25-32) 暮色森林梦魇进犯

step
    #optional
    #completewith travel
    +|cRXP_WARN_你已经超过了该侵入区的等级，在此处进行任务获得的经验值奖励将会衰减。请从列表中选择一个更适合你等级的其他侵入区。|r
    >>|cRXP_WARN_无论你的等级如何，获得的声望值都是相同的。然而，一旦你达到53级，你就可以通过无限上交专业材料的任务来极其快速地提升声望。|r
    .xp <33,1
    .xp >53,1
step
#ah
    >>在前往暮色森林之前，先从拍卖行购买10个|T133852:0|t[|cRXP_LOOT_梦魇苔|r]，10个|T134314:0|t[|cRXP_LOOT_梦触龙鳞|r] 和10个 |T134575:0|t[|cRXP_LOOT_冷铁矿石|r]
    >>|cRXP_WARN_如果你不在拍卖行所在地区附近或价格看起来不值得，跳过此步骤。这三个任务合计会给16000经验和225声望。|r
    .collect 219399,10 --Nightmare Moss
    .collect 219402,10 --Dream-Touched Dragonscale
    .collect 219401,10 --Cold Iron Ore
    .maxlevel 53
step
#completewith next
.zone Duskwood >>|cRXP_WARN_前往暮色森林。请确保你的任务日志有足够的空间。你需要在任务日志中同时保留来自侵入区的12到15个任务。|r
.maxlevel 53
step
    #label travel
  .goto 1431/0,-438.800,-10793.400,30 >>前往通往黎明森林的小路
  .maxlevel 53
step
    .goto 1431/0,-376.600,-10768.500,30 >>沿路向上走
    .maxlevel 53
step
    >>在所在地区寻找 |cRXP_FRIENDLY_翡翠卫士|r 的军需官，并从其处购买你的符文
    .goto Duskwood,45.6,51.2
    .target Quartermaster Falinar
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_虚无顿悟|r] |cRXP_WARN_来学习|r |T132886:0|t[虚空领域] << Priest
    .train 429308 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：熔岩护甲|r] |cRXP_WARN_来学习|r |T132221:0|t[熔岩护甲] << Mage
    .train 431747 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_痛苦符文|r] |cRXP_WARN_来学习|r |T136228:0|t[痛苦无常] << Warlock
    .train 416066 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_燃烧符文|r] |cRXP_WARN_来学习|r |T135822:0|t[燃烧] << Shaman
    .train 432297 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_敏锐符文|r] |cRXP_WARN_来学习|r |T236269:0|t[穷追猛砍] << Rogue
    .train 431611 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_爆破符文|r] |cRXP_WARN_来学习|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_溅血符文|r] |cRXP_WARN_来学习|r |T304501:0|t[淤血] << Druid
    .train 429261 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_锤头符文|r] |cRXP_WARN_来学习|r |T236262:0|t[强化愤怒之锤] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官法里纳尔|r 对话
    .vendor >>|cRXP_BUY_最多从他那里买5个|r |T134718:0|t[强效治疗药水] |cRXP_BUY_，如果你想要的话。|r |cRXP_WARN_这些只能在入侵区域内使用|r
    .target Quartermaster Falinar
    .xp >40,1
    .maxlevel 53
step
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官法里纳尔|r 对话
    .vendor >>如果需要，可以从他那里购买最多5瓶|cRXP_BUY_|T236885:0|t[|r特效治疗药水|cRXP_BUY_] |r。 |cRXP_WARN_这些药水只能在梦魇入侵区域内使用|r
    .target Quartermaster Falinar
    .xp <40,1
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .accept 81739 >>接受任务 暮色森林使命X：梦魇苔
    .accept 81740 >>接受任务 暮色森林使命XI：冷铁矿石
    .accept 81741 >>接受任务 暮色森林使命XII：梦触龙鳞
    .itemcount 219399,10 --Nightmare Moss
    .itemcount 219401,10 --Cold Iron Ore
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .accept 81739 >>接受任务 暮色森林使命X：梦魇苔
    .itemcount 219399,10 --Nightmare Moss
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .accept 81740 >>接受任务 暮色森林使命XI：冷铁矿石
    .itemcount 219401,10 --Cold Iron Ore
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .accept 81741 >>接受任务 暮色森林使命XII：梦触龙鳞
    .itemcount 219402,10 --Dream-Touched Dragonscale
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .turnin -81739 >>交任务 暮色森林使命X：梦魇苔
    .turnin -81740 >>交任务 暮色森林使命XI：冷铁矿石
    .turnin -81741 >>交任务 暮色森林使命XII：梦触龙鳞
    .isOnQuest 81739
    .isOnQuest 81740
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    >>|cRXP_WARN_你现在要开始做一轮梦魇进犯任务。所有这些任务都可以在队伍中完成，这会让效率变得更高。如果你在任务发放人附近看到任何玩家，尝试组个队。如果你找到了几个队友，你还可以顺便把那些无法单挑的Boss任务也一起做了|r
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .accept 81730 >>接受任务 暮色森林使命I：击败狼人
    .accept 81731 >>接受任务 暮色森林使命II：击败食人魔
    .accept 81732 >>接受任务 暮色森林使命III：击败龙类
    .accept 81733 >>接受任务 暮色森林使命IV：食人魔情报
    .accept 81734 >>接受任务 暮色森林使命V：狼人情报
    .accept 81735 >>接受任务 暮色森林使命VI：巨龙情报
    .accept 81736 >>接受任务 暮色森林使命VII：取回暗影之镰
    .accept 81737 >>接受任务 暮色森林使命VIII：取回食人魔法师手记
    .accept 81738 >>接受任务 暮色森林使命IX：取回龙蛋
    .accept 81745 >>接受任务 暮色森林使命XVI：营救克洛尔·丘影
    .accept 81746 >>接受任务 暮色森林使命XVII：营救阿拉菈·愈林
    .accept 81747 >>接受任务 暮色森林使命XVIII：营救艾乐诺拉·涉沼
    .maxlevel 53
step
.group 3
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    >>|cRXP_WARN_如果你在队伍中，可以考虑把击杀精英的任务也接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战起来可能会有一定难度。|r
    .accept 81742 >>接受任务 暮色森林使命XIII：击败伊兰希乌斯
    .accept 81743 >>接受任务 暮色森林使命XIV：击败瓦阿克祖
    .accept 81744 >>接受任务 暮色森林使命XV：击败阿莫卡洛克
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_点击接任务的NPC旁边的传送门|r，进入翡翠梦境位面
    .maxlevel 53
step
    .goto Duskwood,47.07,49.64,10 >>|cRXP_WARN_进入翡翠梦境后|r 离开黎明森林
    .maxlevel 53
step
    #sticky
    #label Ogres
    >>完成其他目标的同时，顺便击杀 |cRXP_ENEMY_错乱的食人魔|r 和 |cRXP_ENEMY_癫狂的织火者|r
    .complete 81731,1
    .complete 81731,2
    .mob Deranged Ogre
    .mob Demented Fire Weaver
    .maxlevel 53
step
    .goto Duskwood,32.48,69.60
    .gossipoption 122140 >>与躺在地上的 |cRXP_FRIENDLY_艾乐诺拉·涉沼|r 对话。她应该会开始跟随你
    >>|cRXP_WARN_如果她不在那里，说明有其他人正在护送她，找不到她的话就跳过这一步|r
    .target Elenora Marshwalker
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_千万要小心，如果你死了，所有跟随你的护送NPC都会回到你接到他们的地方，你必须重新去找到他们|r
    >>|cRXP_WARN_护送NPC在你接他们15分钟后将停止跟随你，所以尽快完成任务！|r
    .maxlevel 53
step
    .goto Duskwood,35.67,80.35
    >>进入洞穴，在洞穴中央的平台上拾取 [|cRXP_LOOT_食人魔法师手记|r]
    .complete 81737,1 --Ogre Magi Text(1)
    .maxlevel 53
step
    .goto Duskwood,36.62,83.75
    >>深入洞穴并与 |cRXP_FRIENDLY_梦境卫士塔林纳尔|r 对话，获得 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    .complete 81733,1
    .target Dreamwarden Thalinar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,37.6,84.6
    .group 3
    >>|cRXP_WARN_击杀|r |cRXP_ENEMY_瓦克祖尔|r|cRXP_WARN_。小心，他拥有极高的生命值，会施放|r |T135812:0|t[火球术] |cRXP_WARN_并召唤|r |T135819:0|t[火焰元素] |cRXP_WARN_小怪|r
    .complete 81743,1 --Vvarc'Zul slain
    .target Vvarc'Zul
    .isOnQuest 81743
    .maxlevel 53
step
    #sticky
    #label Dragons
    #requires Ogres
    >>完成其他目标时，顺便击杀 |cRXP_ENEMY_梦惧雏龙|r 和 |cRXP_ENEMY_龙族巡惧者|r
    .complete 81732,1
    .complete 81732,2
    .mob Nightterror Whelp
    .mob Wyrmkin Terrorwalker
    .maxlevel 53
step
    #requires Ogres
    .goto Duskwood,48.92,72.97
    >>拾取树桩旁地上的 [|cRXP_LOOT_未孵化的绿龙蛋|r]
    .complete 81738,1
    .maxlevel 53
step
    .goto Duskwood,49.13,77.41
    .gossipoption 122136 >>与躺在地上的 |cRXP_FRIENDLY_阿拉菈·愈林|r 对话。她应该会开始跟随你
    >>|cRXP_WARN_如果她不在那里，说明有其他人正在护送她，找不到她的话就跳过这一步|r
    .target Alara Grovemender
    .maxlevel 53
step
    .goto Duskwood,50.6,77.0
    >>进入农舍并与 |cRXP_FRIENDLY_梦境卫士阿玛利亚|r 对话，获得 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    .complete 81735,1
    .target Dreamwarden Amalia
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,49.8,74.4
    .group 3
    >>|cRXP_WARN_击杀|r |cRXP_ENEMY_伊兰希乌斯|r。|cRXP_WARN_一只在农场上空飞行的绿龙|r |cRXP_WARN_。他拥有极高的生命值，免疫自然系法术，拥有|r |T132338:0|t[顺劈斩] |cRXP_WARN_，|r |T134307:0|t[龙尾扫击] |cRXP_WARN_并会|r |T135745:0|t[召唤] |cRXP_WARN_一只|r |cRXP_ENEMY_幼龙|r |cRXP_WARN_小怪，该小怪会施放造成巨额伤害的正面吐息|r
    .complete 81742,1 --Ylanthrius (1)
    .maxlevel 53
    .isOnQuest 81742
step
    #sticky
    #label Worgen
    #requires Dragons
    >>完成其他目标的同时，顺便击杀 |cRXP_ENEMY_梦魇奔行者|r 和 |cRXP_ENEMY_梦魇编织者|r
    .complete 81730,1
    .complete 81730,2
    .mob Nightmare Runner
    .mob Nightmare Weaver
    .maxlevel 53
step
    #requires Dragons
    .goto Duskwood,66.32,76.09
    >>进入谷仓并与 |cRXP_FRIENDLY_梦境卫士多力拉|r 对话，获得 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    >>|cRXP_WARN_不要深入谷仓。你可以选中该NPC，然后使用互动键隔着内墙与他对话|r
    >>|cRXP_WARN_小心，因为boss|r |cRXP_ENEMY_阿莫卡洛克|r |cRXP_WARN_就站在NPC旁边|r
    .complete 81734,1
    .target Dreamwarden Dorilar
    .skipgossip
    .maxlevel 53
step
    .goto Duskwood,66.0,76.4
    >>|cRXP_WARN_击杀谷仓内的|r |cRXP_ENEMY_阿莫卡洛克|r |cRXP_WARN_。小心他拥有巨大的生命值并施放范围|r |T136183:0|t[恐惧]
    .complete 81744,1 --Amokarok (1)
    .maxlevel 53
    .isOnQuest 81744
    .group 3
step
    .goto Duskwood,65.99,69.36
    .gossipoption 122146 >>与躺在地上的 |cRXP_FRIENDLY_克洛尔·丘影|r 对话。她应该会开始跟随你
    >>|cRXP_WARN_如果他不在那里，说明有其他人正在护送他，找不到他的话就跳过这一步|r
    .target Kroll Mountainshade
    .maxlevel 53
step
    .goto Duskwood,65.60,67.30
    >>前往较大房子的二楼，拾取那里的箱子，获得 |T135138:0|t[|cRXP_LOOT_暗影之镰|r]
    .complete 81736,1
    .maxlevel 53
step
    #requires Worgen
    .goto Duskwood,70.93,65.90
    .goto Duskwood,44.60,65.80,50 >>一路向西走，直到你到达梦境的边界区域。你的屏幕会开始泛起绿光，随后你会被传送回入口附近。|cRXP_WARN_不用担心，你护送的NPC会跟着你一起传送回来|r
    .maxlevel 53
step
    #completewith next
    .goto 1431/0,-421.400,-10360.601,5 >>回到梦魇传送门。|cRXP_WARN_千万不要死在半路上，否则护送任务会失败！如果你安全抵达传送门，所有三个任务应该都会完成|r
    .maxlevel 53
step
    .goto 1431/0,-421.400,-10360.601
    >>确认所有护送任务都获得了进度。到达传送门时它们应该都会完成。|cRXP_WARN_如果没有获得进度，试着前后移动一下|r
    .complete 81745,1
    .complete 81746,1
    .complete 81747,1
    .maxlevel 53
step
    .goto Duskwood,46.63,47.90,5 >>返回你之前用来进入翡翠梦境的那个传送门，然后|cRXP_WARN_点击它以传送回现实世界|r
    .maxlevel 53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    .goto Duskwood,45.6,51.2
    .target Field Captain Palandar
    .turnin 81730 >>交任务 暮色森林使命I：击败狼人
    .turnin 81731 >>交任务 暮色森林使命II：击败食人魔
    .turnin 81732 >>交任务 暮色森林使命III：击败龙类
    .turnin 81733 >>交任务 暮色森林使命IV：食人魔情报
    .turnin 81734 >>交任务 暮色森林使命V：狼人情报
    .turnin 81735 >>交任务 暮色森林使命VI：巨龙情报
    .turnin 81736 >>交任务 暮色森林使命VII：取回暗影之镰
    .turnin 81737 >>交任务 暮色森林使命VIII：取回食人魔法师手记
    .turnin 81738 >>交任务 暮色森林使命IX：取回龙蛋
    .turnin 81745 >>交任务 暮色森林使命XVI：营救克洛尔·丘影
    .turnin 81746 >>交任务 暮色森林使命XVII：营救阿拉菈·愈林
    .turnin 81747 >>交任务 暮色森林使命XVIII：营救艾乐诺拉·涉沼
    .maxlevel 53
step
    #optional
    .goto Duskwood,45.6,51.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕兰达尔|r 对话
    >>|cRXP_WARN_如果你在队伍中，可以考虑把击杀精英的任务也接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战起来可能会有一定难度。|r
    .turnin -81742 >>交任务 暮色森林使命XIII：击败伊兰希乌斯
    .turnin -81743 >>交任务 暮色森林使命XIV：击败瓦阿克祖
    .turnin -81744 >>交任务 暮色森林使命XV：击败阿莫卡洛克
    .maxlevel 53
    .target Field Captain Palandar
step
    #optional
    +|cRXP_WARN_你的等级已经超过所有进犯地带，无法再接受其中的常规任务|r
    >>如果你想提升在|r |cRXP_FRIENDLY_翡翠卫士|r 中的声望，菲拉斯有可以无限重复的任务，你可以上交10个|T134186:0|t[|cRXP_LOOT_月之根|r]，|T133594:0|t[|cRXP_LOOT_强效月亮石|r] 或 |T134312:0|t[|cRXP_LOOT_月龙之鳞|r] 中的任意一种
    >>这些任务不提供经验或金币，每次交任务时奖励 100 声望。从拍卖行购买尽可能多的最具成本效益的材料，然后前往菲拉斯交任务
    .xp <53,1
step
    #optional
    +你已完成此梦魇进犯循环。这些任务将在每日重置后再次可用。|cRXP_WARN_从列表中选择其他指南以继续|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 梦魇进犯日常任务
#name (40-49) 灰谷梦魇进犯

step
    #optional
    #completewith next
    +|cRXP_WARN_你已经超过了该梦魇进犯区的等级，在此处进行任务获得的经验值奖励将会衰减。请从列表中选择一个更适合你等级的其他侵入区。|r
    >>|cRXP_WARN_无论你的等级如何，获得的声望值都是相同的。然而，一旦你达到53级，你就可以通过无限上交专业材料的任务来极其快速地提升声望。|r
    .xp <48,1
    .xp >53,1
step
    #ah
    >>在前往灰谷之前，从拍卖行购买10个 |T132106:0|t[|cRXP_LOOT_梦之根|r]，10个 |T134306:0|t[|cRXP_LOOT_梦触龙鳞|r] 和10个 |T133848:0|t[|cRXP_LOOT_愚人金砂|r]
    >>|cRXP_WARN_如果你不在拍卖行所在地区附近或价格看起来不值得，跳过此步骤。这三个任务合计会给25875经验和225声望。|r
    .collect 219444,10 --Dreamroot
    .collect 219446,10 --Dream-Infused Dragonscale
    .collect 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #label travel
    .zone Ashenvale >>前往灰谷。|cRXP_WARN_请确保你的任务日志有足够的空间。你需要在任务日志中同时保留来自侵入区的12到15个任务。|r
    >>如果你已经开启了艾萨拉的飞行点，飞到那里再跑到灰谷会比直接飞到阿斯特兰纳更快 << Alliance
    .maxlevel 53
step
    .goto Ashenvale,88.9,42.0,65 >>前往灰谷东北部的翡翠噩梦传送门区域
    .maxlevel 53
step
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官基琳|r 对话
    .target Quartermaster Kyleen
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_虚无顿悟|r] |cRXP_WARN_来学习|r |T132886:0|t[虚空领域] << Priest
    .train 429308 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：熔岩护甲|r] |cRXP_WARN_来学习|r |T132221:0|t[熔岩护甲] << Mage
    .train 431747 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_痛苦符文|r] |cRXP_WARN_来学习|r |T136228:0|t[痛苦无常] << Warlock
    .train 416066 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_燃烧符文|r] |cRXP_WARN_来学习|r |T135822:0|t[燃烧] << Shaman
    .train 432297 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_敏锐符文|r] |cRXP_WARN_来学习|r |T236269:0|t[穷追猛砍] << Rogue
    .train 431611 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_爆破符文|r] |cRXP_WARN_来学习|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_溅血符文|r] |cRXP_WARN_来学习|r |T304501:0|t[淤血] << Druid
    .train 429261 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_锤头符文|r] |cRXP_WARN_来学习|r |T236262:0|t[强化愤怒之锤] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .accept 81777 >>接受任务 灰谷使命X：梦之根
    .accept 81778 >>接受任务 灰谷使命XI：愚人金砂
    .accept 81779 >>接受任务 灰谷使命XII：梦注龙鳞
    .itemcount 219444,10 --Dreamroot
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .accept 81777 >>接受任务 灰谷使命X：梦之根
    .itemcount 219444,10 --Dreamroot
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .accept 81778 >>接受任务 灰谷使命XI：愚人金砂
    .itemcount 219445,10 --Fool's Gold Dust
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .accept 81779 >>接受任务 灰谷使命XII：梦注龙鳞
    .itemcount 219446,10 --Dream-Infused Dragonscale
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .turnin -81777 >>交任务 灰谷使命X：梦之根
    .turnin -81778 >>交任务 灰谷使命XI：愚人金砂
    .turnin -81779 >>交任务 灰谷使命XII：梦注龙鳞
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .accept 81772 >>接受任务 灰谷使命V：萨特情报
    .accept 81785 >>接受任务 灰谷使命XVIII：营救梅瑟拉·秋月
    .accept 81784 >>接受任务 灰谷使命XVII：营救多兰·梦枝
    .accept 81783 >>接受任务 灰谷使命XVI：营救阿莱希娅·唤风者
    .accept 81776 >>接受任务 灰谷使命IX：取回梦触龙蛋
    .accept 81775 >>接受任务 灰谷使命VIII：取回艾萨拉预言
    .accept 81774 >>接受任务 灰谷使命VII：取回造梦引擎
    .accept 81773 >>接受任务 灰谷使命VI：树人情报
    .accept 81771 >>接受任务 灰谷使命IV：巨龙情报
    .accept 81768 >>接受任务 灰谷使命I：击败萨特
    .accept 81769 >>接受任务 灰谷使命II：击败树人
    .accept 81770 >>接受任务 灰谷使命III：击败龙类
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .group 3
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    >>|cRXP_WARN_如果你在队伍中，可以考虑把击杀精英的任务也接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战起来可能会有一定难度。|r
    .accept 81780 >>接受任务 灰谷使命XIII：击败拉尔瑟拉
    .accept 81781 >>接受任务 灰谷使命XIV：击败查利乌斯
    .accept 81782 >>接受任务 灰谷使命XV：击败伐木机9000型
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.60,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官基琳|r 对话
    .vendor >>|cRXP_BUY_如果需要的话，|r|cRXP_BUY_可以从她那里最多购买5瓶|r |T236885:0|t[特效治疗药水]
    >>|cRXP_WARN_这些只能在梦魇进犯区域内使用|r
    .target Quartermaster Kyleen
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>进入 |cRXP_PICK_翡翠梦境传送门|r
    >>|cRXP_WARN_径直穿过|cRXP_ENEMY_萨特|r，|cRXP_ENEMY_地狱巨犬|r和|cRXP_ENEMY_小鬼|r。在你进入传送门后，它们的仇恨会自动重置。|r
    .aura 444759
    .maxlevel 53
step
    #season 2
    #completewith EllodarReport
    >>击杀 |cRXP_ENEMY_龙族夜行者|r 和 |cRXP_ENEMY_惊惧雏龙|r
    >>|cRXP_WARN_小心。|r |cRXP_ENEMY_龙族夜行者|r |cRXP_WARN_是41级精英怪|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,87.24,43.58
    .gossipoption 122139 >>与 |cRXP_FRIENDLY_多兰·梦枝|r 对话。他应该会跟随你。
    .target Doran Dreambough
    .isOnQuest 81784
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_千万要小心，如果你死了，所有跟随你的护送NPC都会回到你接到他们的地方，你必须重新去找到他们|r
    >>|cRXP_WARN_护送NPC在你接他们15分钟后将停止跟随你，所以尽快完成任务！|r
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,86.11,45.87
    >>在地上拾取 |cRXP_LOOT_梦触龙蛋|r
    .complete 81776,1 --Dream-Touched Dragon Egg: 1/1
    .maxlevel 53
step
    #season 2
    .group 3
    .goto Ashenvale,86.0,46.0
    >>|cRXP_WARN_击杀|r |cRXP_ENEMY_拉尔瑟拉|r |cRXP_WARN_。她有巨大的生命池，免疫自然法术，有一个|r|T132338:0|t[顺劈斩]|cRXP_WARN_，|r |T134307:0|t[龙尾扫击]|cRXP_WARN_和|r |T135745:0|t[召唤]|cRXP_WARN_一条|r |cRXP_ENEMY_龙怪|r |cRXP_WARN_，它可以施放造成巨大伤害的正面吐息|r
    .complete 81780,1 --Defeat Larsera
    .isOnQuest 81780
    .maxlevel 53
step
    #season 2
    #label EllodarReport
    .goto Ashenvale,83.64,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士艾罗达|r 对话
    .complete 81771,1 --Intelligence Report: Forest Song: 1/1
    .target Dreamwarden Ellodar
    .skipgossip
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,81.54,48.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士曼多兰|r 对话
    .complete 81772,1 --Intelligence Report: Satyrnaar: 1/1
    .target Dreamwarden Mandoran
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith MasearaAut
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,79.89,49.31,0
    .goto Ashenvale,80.78,48.47,0
    .goto Ashenvale,81.72,48.52,0
    .goto Ashenvale,82.20,50.18,0
    .goto Ashenvale,80.00,46.71,0
    .goto Ashenvale,78.29,44.73,0
    .goto Ashenvale,80.72,50.24,0
    >>杀死 |cRXP_ENEMY_梦火背叛者|r 和 |cRXP_ENEMY_梦火唤魔者|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-2950.700,2791.700
    >>拾取地上的 |cRXP_LOOT_艾萨拉预言|r
    .complete 81775,1 --Azsharan Prophecy: 1/1
    .maxlevel 53
step
    #season 2
    #label MasearaAut
    #season 2
    .goto 1440/1,-2978.000,2739.500
    .gossipoption 122150 >>与 |cRXP_FRIENDLY_马塞拉·秋月|r 对话。她应该会跟在你身后
    .target Maseara Autumnmoon
    .isOnQuest 81785
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,80.74,51.19,0
    .goto Ashenvale,80.72,50.24,0
    .goto Ashenvale,80.74,51.19,50,0
    .goto Ashenvale,79.89,49.31,50,0
    .goto Ashenvale,80.78,48.47,50,0
    .goto Ashenvale,81.72,48.52,50,0
    .goto Ashenvale,82.20,50.18,50,0
    .goto Ashenvale,80.00,46.71,50,0
    .goto Ashenvale,78.29,44.73,50,0
    .goto Ashenvale,80.72,50.24,50,0
    >>杀死 |cRXP_ENEMY_梦火背叛者|r 和 |cRXP_ENEMY_梦火唤魔者|r
    .complete 81768,2 --Dreamfire Betrayer slain: 10/10
    .mob +Dreamfire Betrayer
    .complete 81768,1 --Dreamfire Hellcaller slain: 10/10
    .mob +Dreamfire Hellcaller
    .maxlevel 53
step
    #season 2
    .goto 1440/1,-3394.600,2540.900
    >>打开 |cRXP_PICK_震动的箱子|r。拾取其中的 |cRXP_LOOT_造梦引擎|r
    .complete 81774,1 --Dreamengine: 1/1
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,90.14,58.08,10 >>进入卡加希亚要塞
    >>|cRXP_WARN_入口被一个|r |cRXP_ENEMY_梦境收割者|r|cRXP_WARN_（41级精英怪）阻挡。控制或击杀它，然后跑进去|r
    .mob Dreamharvester
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,91.23,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士拉娜莉亚|r 对话
    .complete 81773,1 --Intelligence Report: Warsong Lumber Camp: 1/1
    .target Dreamwarden Lanaria
    .skipgossip
    .maxlevel 53
step
.group 3
    #season 2
    .goto Ashenvale,87.6,62.2
    >>|cRXP_WARN_击杀|r |cRXP_ENEMY_伐木机9000型|r。小心，他拥有极高的生命值，|T132338:0|t[顺劈斩] 和 |T132338:0|t[范围击退]技能
    .complete 81782,1 --Defeat Shredder 9000
    .isOnQuest 81782
    .maxlevel 53
step
    #sticky
    #label Treants
    .goto Ashenvale,85.6,65.6,0
    .goto Ashenvale,86.6,59.6,0
    .goto Ashenvale,90.0,50.2,0
    >>击杀区域内的 |cRXP_ENEMY_狂怒的树人|r
    >>|cRXP_WARN_请注意，它们是精英怪物。如果你还不能单挑它们，请跳过此步骤|r
    .complete 81769,1 --Vengeful Ancient slain (7)
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,92.11,54.21
    .gossipoption 122138 >>与 |cRXP_FRIENDLY_阿莱希娅·唤风者|r 对话。他应该会跟随你
    .target Alyssian Windcaller
    .isOnQuest 81783
    .maxlevel 53
step
    #season 2
    #requires Treants
    .goto Ashenvale,81.0,50.6
    .group 3
    >>击杀 |cRXP_ENEMY_查利乌斯|r|cRXP_WARN_。小心，它有极高的生命值|r
    .complete 81781,1 --Defeat Zalius (1)
    .isOnQuest 81781
    .maxlevel 53
step
    #season 2
    #loop
    .goto Ashenvale,86.31,43.07,0
    .goto Ashenvale,86.57,47.66,50,0
    .goto Ashenvale,87.03,45.92,50,0
    .goto Ashenvale,88.26,42.14,50,0
    .goto Ashenvale,86.31,43.07,50,0
    .goto Ashenvale,84.36,45.06,50,0
    .goto Ashenvale,83.90,47.38,50,0
    >>完成击杀 |cRXP_ENEMY_龙族夜行者|r 和 |cRXP_ENEMY_惊惧雏龙|r
    >>|cRXP_WARN_小心。|r |cRXP_ENEMY_龙族夜行者|r |cRXP_WARN_是41级精英怪|r
    .complete 81770,1 --Wyrmkin Nightstalker slain: 3/3
    .mob +Wyrmkin Nightstalker
    .complete 81770,2 --Terror Whelp slain: 10/10
    .mob +Terror Whelp
    .maxlevel 53
step
    #season 2
    #requires Treants
    #label IncursionsComplete
    .goto Ashenvale,93.97,38.02
    >>前往 |cRXP_PICK_翡翠梦境传送门|r
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_马塞拉|r，|cRXP_FRIENDLY_阿莱希娅|r 或 |cRXP_FRIENDLY_多兰|r 不再跟随你，返回并再次与他们对话|r
    >>|cRXP_WARN_在箭头标记的地点（传送门斜坡底部）来回走动几次。这会让NPC跨越判定线，从而让你获得任务进度|r
    .complete 81783,1 --Rescue Alyssian Windcaller: 1/1
    .target +Alyssian Windcaller
    .goto Ashenvale,92.11,54.21,0
    .complete 81784,1 --Rescue Doran Dreambough: 1/1
    .goto Ashenvale,87.24,43.58,0
    .target +Doran Dreambough
    .complete 81785,1 --Rescue Maseara Autumnmoon: 1/1
    .goto Ashenvale,81.16,50.28,0
    .target +Maseara Autumnmoon
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Ashenvale,93.94,38.21,25,0
    .goto Ashenvale,94.27,35.13,20 >>退出 |cRXP_PICK_翡翠梦境传送门|r
    .aura -444759
    .maxlevel 53
step
    #season 2
    .goto Ashenvale,89.57,40.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .turnin 81771 >>交任务 灰谷使命IV：巨龙情报
    .turnin 81772 >>交任务 灰谷使命V：萨特情报
    .turnin 81773 >>交任务 灰谷使命VI：树人情报
    .turnin 81774 >>交任务 灰谷使命VII：取回造梦引擎
    .turnin 81775 >>交任务 灰谷使命VIII：取回艾萨拉预言
    .turnin 81776 >>交任务 灰谷使命IX：取回梦触龙蛋
    .turnin 81783 >>交任务 灰谷使命XVI：营救阿莱希娅·唤风者
    .turnin 81784 >>交任务 灰谷使命XVII：营救多兰·梦枝
    .turnin 81785 >>交任务 灰谷使命XVIII：营救马塞拉·秋月
    .turnin 81768 >>交任务 灰谷使命I：击败萨特
    .turnin 81769 >>交任务 灰谷使命II：击败树人
    .turnin 81770 >>交任务 灰谷使命III：击败龙类
    .target Field Captain Hannalah
    .maxlevel 53
step
    #season 2
    #optional
    .goto Ashenvale,89.53,40.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长汉娜拉|r 对话
    .turnin -81780 >>交任务 灰谷使命XIII：击败拉尔瑟拉
    .turnin -81781 >>交任务 灰谷使命XIV：击败查利乌斯
    .turnin -81782 >>交任务 灰谷使命XV：切割机9000
    .target Field Captain Hannalah
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_你的等级已经超过所有进犯地带，无法再接受其中的常规任务|r
    >>如果你想提升在|r |cRXP_FRIENDLY_翡翠卫士|r 中的声望，菲拉斯有可以无限重复的任务，你可以上交10个|T134186:0|t[|cRXP_LOOT_月之根|r]，|T133594:0|t[|cRXP_LOOT_强效月亮石|r] 或 |T134312:0|t[|cRXP_LOOT_月龙之鳞|r] 中的任意一种
    >>这些任务不提供经验或金币，每次交任务时奖励 100 声望。从拍卖行购买尽可能多的最具成本效益的材料，然后前往菲拉斯交任务
    .xp <53,1
step
    #optional
    +你已完成此梦魇进犯循环。这些任务将在每日重置后再次可用。|cRXP_WARN_从列表中选择其他指南以继续|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 梦魇进犯日常任务
#name (50-53) 辛特兰梦魇进犯


step
    #ah
    >>在前往辛特兰之前，从拍卖行购买10个 |T134207:0|t[|cRXP_LOOT_星辉莲|r]，10个 |T134964:0|t[|cRXP_LOOT_星之壳|r] 和10个 |T237436:0|t[|cRXP_LOOT_星银矿石|r]
    >>|cRXP_WARN_如果你不在拍卖行所在地区附近或价格看起来不值得，跳过此步骤。这三个任务合计会给38250经验和300声望。|r
    .collect 219454,10 --Star Lotus
    .collect 219487,10 --Starshell
    .collect 219486,10 --Starsilver Ore
    .maxlevel 53
step
    #completewith next
    #label travel
    .zone The Hinterlands >>前往辛特兰
    .maxlevel 53
step
    .goto The Hinterlands,60.81,37.86,20 >>前往通向瑟拉丹的大桥
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官阿兰德拉|r 对话
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_虚无顿悟|r] |cRXP_WARN_来学习|r |T132886:0|t[虚空领域] << Priest
    .train 429308 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：熔岩护甲|r] |cRXP_WARN_来学习|r |T132221:0|t[熔岩护甲] << Mage
    .train 431747 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_痛苦符文|r] |cRXP_WARN_来学习|r |T136228:0|t[痛苦无常] << Warlock
    .train 416066 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_燃烧符文|r] |cRXP_WARN_来学习|r |T135822:0|t[燃烧] << Shaman
    .train 432297 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_敏锐符文|r] |cRXP_WARN_来学习|r |T236269:0|t[穷追猛砍] << Rogue
    .train 431611 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_爆破符文|r] |cRXP_WARN_来学习|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_溅血符文|r] |cRXP_WARN_来学习|r |T304501:0|t[淤血] << Druid
    .train 429261 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_锤头符文|r] |cRXP_WARN_来学习|r |T236262:0|t[强化愤怒之锤] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #optional
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >>接受任务 辛特兰使命X：星辉莲
    .accept 81834 >>接受任务 辛特兰使命XI：星银矿石
    .accept 81835 >>接受任务 辛特兰使命XII：星之壳
    .itemcount 219454,10 --Star Lotus
    .itemcount 219487,10 --Starshell
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .accept 81833 >>接受任务 辛特兰使命X：星辉莲
    .itemcount 219454,10 --Star Lotus
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .accept 81834 >>接受任务 辛特兰使命XI：星银矿石
    .itemcount 219486,10 --Starsilver Ore
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .accept 81835 >>接受任务 辛特兰使命XII：星之壳
    .itemcount 219487,10 --Starshell
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .turnin -81833 >>交任务 辛特兰使命X：星辉莲
    .turnin -81834 >>交任务 辛特兰使命XI：星银矿石
    .turnin -81835 >>交任务 辛特兰使命XII：星之壳
    .target Field Captain Korlian
step
    >>过桥并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_战地队长科尔里安|r 对话
    .goto The Hinterlands,61.4,34.6
    .accept 82068 >>接受任务 抗击梦魇进犯
    .accept 81786 >>接受任务 辛特兰使命I：击败枭兽
    .accept 81787 >>接受任务 辛特兰使命II：击败巨龟
    .accept 81788 >>接受任务 辛特兰使命III：击败龙类
    .accept 81789 >>接受任务 辛特兰使命IV：巨龙情报
    .accept 81817 >>接受任务 辛特兰使命V：巨龟情报
    .accept 81820 >>接受任务 辛特兰使命VI：枭兽情报
    .accept 81826 >>接受任务 辛特兰使命VII：取回星触龙蛋
    .accept 81830 >>接受任务 辛特兰使命VIII：取回艾露纳圣物
    .accept 81832 >>接受任务 辛特兰使命IX：取回梦境珍珠
    .accept 81850 >>接受任务 辛特兰使命XVI：营救伊利阿纳尔·啜影者
    .accept 81851 >>接受任务 辛特兰使命XVII：营救瑟丽娜·星辉
    .accept 81852 >>接受任务 辛特兰使命XVIII：营救维阿娜·云梦
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    .group 3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长考利安|r 对话
    >>|cRXP_WARN_如果你在队伍中，可以考虑把击杀精英的任务也接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战起来可能会有一定难度。|r
    .accept 81837 >>接受任务 辛特兰使命XIII：击败弗洛里斯
    .accept 81838 >>接受任务 辛特兰使命XIV：击败末日枭兽
    .accept 81839 >>接受任务 辛特兰使命XV：击败加摩拉伽
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53
step
    .goto The Hinterlands,61.4,34.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官阿兰德拉|r 对话
    .vendor >>如果需要，可以从她那里购买最多5瓶|cRXP_BUY_|T236885:0|t[|r特效治疗药水|cRXP_BUY_] |r。 |cRXP_WARN_这些药水只能在梦魇进犯区域内使用|r
    .target Quartermaster Alandra
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_点击接任务的NPC旁边的传送门|r，进入翡翠梦境位面
step
    .goto 1425/0,-3788.100,468.800,20 >>前往隐匿石。避开|cRXP_WARN_ 不稳定的幽灵|cRXP_ENEMY_，|r否则它们会自爆并对你造成大约700点伤害|r
    .maxlevel 53
step
    #sticky
    #label Moonkin
    .goto The Hinterlands,57.9,39.6,0
    >>杀死隐匿石中的的 |cRXP_ENEMY_堕落的枭兽|r
    .complete 81786,1 --Fallen Moonkin slain (20)
    .mob Fallen Moonkin
    .maxlevel 53
step
    >>进入洞穴并清理通往右侧的斜坡。打开那里的宝箱并拾取|T133247:0|t[|cRXP_PICK_艾露纳圣物|r]
    .goto 1425/0,-3799.300,354.700
    .complete 81830,1 --|Elunar Relic: 1/1
    .maxlevel 53
step
    .solo
    >>清理至洞穴底部的大房间，与 |cRXP_FRIENDLY_梦境卫士瓦罗丽|r 对话，获取他的 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    >>|cRXP_WARN_他就在|r|cRXP_ENEMY_末日枭兽|r|cRXP_WARN_首领旁边潜行。想办法快速获取情报后立刻撤离，不要与首领交战|r
    >>|cRXP_WARN_执行此任务时你很可能会因为|r |cRXP_ENEMY_末日枭兽|r |cRXP_WARN_的高伤害而死亡，但复活跑尸距离很短|r
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    #sticky
    #label groupSkulk
    .group 3
    >>清理至洞穴底部的大房间，与 |cRXP_FRIENDLY_梦境卫士瓦罗丽|r 对话，获取他的 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    >>|cRXP_WARN_他处于潜行状态，就在|r 末日枭兽|cRXP_ENEMY_ |rboss的旁边|cRXP_WARN_。
    .goto 1425/0,-3756.200,357.000
    .complete 81820,1 --|Intelligence Report: Skulk Rock: 1/1
    .target Dreamwarden Valori
    .skipgossip
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,56.6,44.6
    >>击杀洞穴底部大房间内的 |cRXP_ENEMY_末日枭兽|r boss。
    >>|cRXP_WARN_小心，他会施放|r |T136096:0|t[月火术] |cRXP_WARN_和|r |T136006:0|t[愤怒] |cRXP_WARN_造成高伤害并有范围|r |T136183:0|t[恐惧]
    .complete 81838,1 --Defeat Doomkin
    .mob Doomkin
    .isOnQuest 81838
    .maxlevel 53
step
    #requires Moonkin
    #requires groupSkulk
    .goto The Hinterlands,53.58,39.10
    .gossipoption 122141 >>与躺在地上的 |cRXP_FRIENDLY_伊利阿纳尔·啜影者|r 对话。他应该会开始跟随你
    >>|cRXP_WARN_你可以从木栅栏背面与他对话，无需进入里面|r
    >>|cRXP_WARN_如果他不在那里，说明有其他人正在护送他，找不到他的话就跳过这一步|r
    .target Ealianar Shadowdrinker
    .maxlevel 53
step
    #sticky
    #label Dragonkin
    .goto The Hinterlands,46.7,39.9,0
    >>击杀废墟中的 |cRXP_ENEMY_愤怒的雏龙|r 和 |cRXP_ENEMY_龙族狩星者|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_龙族狩星者|r |cRXP_WARN_是精英怪并会施放|r |T135812:0|t[火球术] |cRXP_WARN_造成500以上的伤害。如果你无法单刷它们就跳过这个任务|r
    .complete 81788,1 --Wrath Whelp Slain (10)
    .complete 81788,2 --Wyrmkin Starhunter SLain (3)
    .mob Wrath Whelp
    .mob Wyrmkin Starhunter
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_千万要小心，如果你死了，所有跟随你的护送NPC都会回到你接到他们的地方，你必须重新去找到他们|r
    >>|cRXP_WARN_护送NPC在你接他们15分钟后将停止跟随你，所以尽快完成任务！|r
    .maxlevel 53
step
    .goto The Hinterlands,46.85,41.17
    >>与在标记位置潜行的 |cRXP_FRIENDLY_梦境卫士拉妮纳尔|r 对话，获取 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    .complete 81789,1 --|Intelligence Report: Agol'watha: 1/1
    .target Dreamwarden Laninar
    .skipgossip
    .maxlevel 53
step
    >>拾取帐篷内的|T236997:0|t[|cRXP_PICK_星触龙蛋|r]
    >>|cRXP_WARN_尝试沿着墙壁外侧绕行，避免引到该区域的精英龙族。你可以从帐篷后方拾取龙蛋，无需与任何精英战斗。|r
    .goto 1425/0,-3320.800,474.500
    .complete 81826,1 --|Star-Touched Dragonegg: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,46.0,39.8
    >>击杀 |cRXP_ENEMY_弗洛里斯|r 这条在废墟上方飞行的绿龙
    >>|cRXP_WARN_小心，他有巨大的生命池，免疫自然法术，有一个|r|T132338:0|t[顺劈斩]|cRXP_WARN_，|r |T134307:0|t[龙尾扫击]|cRXP_WARN_和|r |T135745:0|t[召唤]|cRXP_WARN_一条|r |cRXP_ENEMY_龙怪|r |cRXP_WARN_，它可以施放造成巨大伤害的正面吐息|r
    .complete 81837,1 --Defeat Florius
    .mob Florius
    .isOnQuest 81837
    .maxlevel 53
step
    #requires Dragonkin
    .goto The Hinterlands,42.31,31.43
    .goto The Hinterlands,60.67,38.32,150 >>向西走入山脉，直到屏幕开始发出绿光，你将被传送至靠近起始位置的地方
    >>|cRXP_WARN_别担心，所有护送NPC最终都会跟随你的|r
    .maxlevel 53
step
    #sticky
    #label Turtles
    .goto The Hinterlands,62.9,41.0,0
    .goto The Hinterlands,62.9,45.0,0
    .goto The Hinterlands,67.1,41.5,0
    .goto The Hinterlands,66.0,47.5,0
    .goto The Hinterlands,71.5,45.3,0
    .goto The Hinterlands,69.8,51.2,0
    .goto The Hinterlands,65.1,39.1,0
    .goto The Hinterlands,58.6,36.0,0
    >>在完成其他目标时顺手击杀 |cRXP_ENEMY_梦水钳颚龟|r
    .complete 81787,1 --Dreamwater Vicejaw slain (20)
    .mob Dreamwater Vicejaw
    .maxlevel 53
step
    .goto The Hinterlands,57.30,42.95
    .gossipoption 122151 >>爬上山顶。与躺在地上的 |cRXP_FRIENDLY_维阿娜·云梦|r 对话。她应该会开始跟随你
    >>|cRXP_WARN_如果她不在那里，说明有其他人正在护送她，找不到她的话就跳过这一步|r
    .target Veanna Cloudsleeper
    .maxlevel 53
step
    .goto The Hinterlands,71.09,48.14
    .gossipoption 122149 >>进入小木堡，与躺在地上的 |cRXP_FRIENDLY_瑟丽娜·星辉|r 对话。她应该会开始跟随你
    >>|cRXP_WARN_如果她不在那里，说明有其他人正在护送她，找不到她的话就跳过这一步|r
    .target Serlina Starbright
    .maxlevel 53
step
    >>进入沙尔瓦萨废墟并拾取|T237371:0|t[|cRXP_PICK_梦境珍珠|r]。|cRXP_WARN_小心不要引到boss|r|cRXP_ENEMY_加摩拉伽|r
    .goto 1425/0,-4355.400,79.400
    .complete 81832,1 --|Dreampearl: 1/1
    .maxlevel 53
step
    .group 3
    .goto The Hinterlands,72.7,54.2
    >>杀死 |cRXP_ENEMY_加摩拉杰|r
    >>|cRXP_WARN_小心，她会施放|r |T136231:0|t[刺穿护甲] |cRXP_WARN_和|r |T132270:0|t[三重噬咬]，|cRXP_WARN_这是一种会快速连续攻击你3次的技能。|r |T132270:0|t[三重噬咬] |cRXP_WARN_也可以在远程击中你。|r
    .complete 81839,1 --Defeat Ghamoo-Raja
    .isOnQuest 81839
    .maxlevel 53
step
    >>与潜行在标记位置的 |cRXP_FRIENDLY_梦境卫士萨娜瑟尔|r 对话，获取 |T134939:0|t[|cRXP_LOOT_情侦报告|r]
    .goto 1425/0,-4389.800,81.400
    .complete 81817,1 --|Intelligence Report: Shaol'watha: 1/1
    .target Dreamwarden Sanathel
    .skipgossip
    .maxlevel 53
step
    .goto The Hinterlands,77.13,54.35
    .goto The Hinterlands,60.67,38.32,150 >>向东走，直到屏幕开始泛绿光。你会被传送到更靠近起始位置的地方
    >>|cRXP_WARN_别担心，所有护送NPC最终都会跟随你的|r
    .maxlevel 53
step
    #requires Turtles
    .goto 1425/0,-4010.800,758.000
    >>确保你已获得所有护送任务的进度。当你抵达巨大的梦境传送门时，这些任务应该都会完成
    >>|cRXP_WARN_如果这三个NPC中的任何一个不再跟随你，请返回并再次与他们对话|r
    >>|cRXP_WARN_在箭头标记的地点（传送门斜坡底部）来回走动几次。这会让NPC跨越判定线，从而让你获得任务进度|r
    .complete 81850,1
    .complete 81851,1
    .complete 81852,1
    .maxlevel 53
step
    .goto The Hinterlands,61.35,34.58,5 >>穿过传送门返回现实世界中的辛特兰
    .maxlevel 53
step
    >>与|cRXP_FRIENDLY_战地队长科尔里安|r对话
    .goto The Hinterlands,61.4,34.6
    .turnin 82068 >>交任务 抗击梦魇进犯
    .turnin 81786 >>交任务 辛特兰使命I：击败枭兽
    .turnin 81787 >>交任务 辛特兰使命II：击败巨龟
    .turnin 81788 >>交任务 辛特兰使命III：击败龙类
    .turnin 81789 >>交任务 辛特兰使命IV：巨龙情报
    .turnin 81817 >>交任务 辛特兰使命V：巨龟情报
    .turnin 81820 >>交任务 辛特兰使命VI：枭兽情报
    .turnin 81826 >>交任务 辛特兰使命VII：取回星触龙蛋
    .turnin 81830 >>交任务 辛特兰使命VIII：取回艾露纳圣物
    .turnin 81832 >>交任务 辛特兰使命IX：取回梦境珍珠
    .turnin 81850 >>交任务 辛特兰使命XVI：营救伊利阿纳尔·啜影者
    .turnin 81851 >>交任务 辛特兰使命XVII：营救瑟丽娜·星辉
    .turnin 81852 >>交任务 辛特兰使命XVIII：营救维阿娜·云梦
    .target Field Captain Korlian
    .maxlevel 53
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长帕考利安|r 对话
    .turnin -81837 >>交任务 辛特兰使命XIII：击败弗洛留斯
    .turnin -81838 >>交任务 辛特兰使命XIV：击败末日枭兽
    .turnin -81839 >>交任务 辛特兰使命XV：击败加摩拉伽
    .goto The Hinterlands,61.4,34.6
    .target Field Captain Korlian
    .maxlevel 53

step
    #optional
    +|cRXP_WARN_你的等级已经超过所有进犯地带，无法再接受其中的常规任务|r
    >>如果你想提升在|r |cRXP_FRIENDLY_翡翠卫士|r 中的声望，菲拉斯有可以无限重复的任务，你可以上交10个|T134186:0|t[|cRXP_LOOT_月之根|r]，|T133594:0|t[|cRXP_LOOT_强效月亮石|r] 或 |T134312:0|t[|cRXP_LOOT_月龙之鳞|r] 中的任意一种
    >>这些任务不提供经验或金币，每次交任务时奖励 100 声望。从拍卖行购买尽可能多的最具成本效益的材料，然后前往菲拉斯交任务
    .xp <53,1
step
    #optional
    +你已完成此梦魇进犯循环。这些任务将在每日重置后再次可用。|cRXP_WARN_从列表中选择其他指南以继续|r
    ]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 梦魇进犯日常任务
#name (50-53) 菲拉斯梦魇进犯

step
    #ah
    >>在前往辛特兰之前，从拍卖行购买10个 |T134186:0|t[|cRXP_LOOT_月之根|r]，|T133594:0|t[|cRXP_LOOT_强效月亮石|r] 和 |T134312:0|t[|cRXP_LOOT_月龙之鳞|r]
    >>|cRXP_WARN_如果你不在拍卖行所在地区附近或价格看起来不值得，跳过此步骤。这三个任务合计会给38250经验和300声望。|r
    .maxlevel 53
    .collect 219514,10 --Moonroot
    .collect 219517,10 --Moondragon Scale
    .collect 219515,10 --Greater Moonstone
step
    #completewith next
    .zone Feralas >>前往菲拉斯
    .maxlevel 53
step
    .goto Feralas,48.0,13.2,50 >>前往菲拉斯西北部的翡翠噩梦传送门区域
    .maxlevel 53
step
    .goto Feralas,48.6,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官瓦尔达内|r 对话
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .target Quartermaster Valdane
    .maxlevel 53
step
    #completewith next
    .train 431705 >>|cRXP_WARN_使用|r |T135791:0|t[|cRXP_FRIENDLY_虚无顿悟|r] |cRXP_WARN_来学习|r |T132886:0|t[虚空领域] << Priest
    .train 429308 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术笔记：熔岩护甲|r] |cRXP_WARN_来学习|r |T132221:0|t[熔岩护甲] << Mage
    .train 431747 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_痛苦符文|r] |cRXP_WARN_来学习|r |T136228:0|t[痛苦无常] << Warlock
    .train 416066 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_燃烧符文|r] |cRXP_WARN_来学习|r |T135822:0|t[燃烧] << Shaman
    .train 432297 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_敏锐符文|r] |cRXP_WARN_来学习|r |T236269:0|t[穷追猛砍] << Rogue
    .train 431611 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_爆破符文|r] |cRXP_WARN_来学习|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_溅血符文|r] |cRXP_WARN_来学习|r |T304501:0|t[淤血] << Druid
    .train 429261 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_锤头符文|r] |cRXP_WARN_来学习|r |T236262:0|t[强化愤怒之锤] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer
    .train 431705,1 << Priest
    .train 429308,1 << Mage
    .train 431747,1 << Warlock
    .train 416066,1 << Shaman
    .train 432297,1 << Rogue
    .train 431611,1 << Hunter
    .train 431447,1 << Druid
    .train 429261,1 << Paladin
    .train 427080,1 << Warrior
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .accept 81865 >>接受任务 菲拉斯使命X：月之根
    .accept 81866 >>接受任务 菲拉斯使命XI：强效月亮石
    .accept 81867 >>接受任务 菲拉斯使命XII：强效月龙之鳞
    .itemcount 219514,10 --Moonroot
    .itemcount 219517,10 --Moondragon Scale
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .accept 81865 >>接受任务 菲拉斯使命X：月之根
    .itemcount 219514,10 --Moonroot
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .accept 81866 >>接受任务 菲拉斯使命XI：强效月亮石
    .itemcount 219515,10 --Greater Moonstone
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .accept 81867 >>接受任务 菲拉斯使命XII：强效月龙之鳞
    .itemcount 219517,10 --Moondragon Scale
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .turnin -81865 >>交任务 菲拉斯使命X：月之根
    .turnin -81866 >>交任务 菲拉斯使命XI：强效月亮石
    .turnin -81867 >>交任务 菲拉斯使命XII：强效月龙之鳞
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .accept 81855 >>接受任务 菲拉斯使命I：击败塞纳留斯之子
    .accept 81856 >>接受任务 菲拉斯使命II：击败鹰身人
    .accept 81857 >>接受任务 菲拉斯使命III：击败龙类
    .accept 81858 >>接受任务 菲拉斯使命IV：巨龙情报
    .accept 81859 >>接受任务 菲拉斯使命V：塞纳里奥情报
    .accept 81860 >>接受任务 菲拉斯使命VI：鹰身人情报
    .accept 81861 >>接受任务 菲拉斯使命VII：取回月光龙蛋
    .accept 81863 >>接受任务 菲拉斯使命VIII：取回守护者的笔记
    .accept 81864 >>接受任务 菲拉斯使命IX：取回鹰身人长文
    .accept 81872 >>接受任务 菲拉斯使命XVI：营救梅里阿斯·护地者
    .accept 81873 >>接受任务 菲拉斯使命XVII：营救奈勒内·溪吟
    .accept 81874 >>接受任务 菲拉斯使命XVIII：营救贾姆尼斯·愈树者
    .accept 82068 >>接受任务 抗击梦魇进犯
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    >>|cRXP_WARN_如果你在队伍中，可以考虑把击杀精英的任务也接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战起来可能会有一定难度。|r
    .accept 81868 >>接受任务 菲拉斯使命XIII：击败泰兰尼库斯
    .accept 81870 >>接受任务 菲拉斯使命XIV：击败阿隆迪乌斯
    .accept 81871 >>接受任务 菲拉斯使命XV：击败斯蕾娜
    .target Field Captain Arunnel
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>进入 |cRXP_PICK_翡翠梦境传送门|r
    >>|cRXP_WARN_径直穿过|cRXP_ENEMY_萨特|r，|cRXP_ENEMY_地狱巨犬|r和|cRXP_ENEMY_小鬼|r。在你进入传送门后，它们的仇恨会自动重置。|r
    .aura 444762
    .maxlevel 53
step
    #season 2
    #completewith DreamWardenGorlas
    >>击杀 |cRXP_ENEMY_癫狂的雏龙|r 和 |cRXP_ENEMY_龙族狂暴者|r
    >>|cRXP_WARN_小心。|r |cRXP_ENEMY_龙族狂暴者|r |cRXP_WARN_是精英，单刷可能比较困难|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,49.64,15.44
    .gossipoption 122147 >>与 |cRXP_FRIENDLY_梅里阿斯·护地者|r 对话。她应该会跟在你身后
    .target Mellias Earthtender
    .isOnQuest 81872
    .maxlevel 53
step
    #completewith next
    +|cRXP_WARN_千万要小心，如果你死了，所有跟随你的护送NPC都会回到你接到他们的地方，你必须重新去找到他们|r
    >>|cRXP_WARN_护送NPC在你接他们15分钟后将停止跟随你，所以尽快完成任务！|r
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.71,17.17
    >>在地上拾取 |cRXP_LOOT_月光龙蛋|r
    .complete 81861,1 --Moonglow Dragonegg: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,53.2,16.6
    >>击杀龙族首领 |cRXP_ENEMY_泰兰尼库斯|r
    >>|cRXP_WARN_小心，他有极高的血量，能免疫自然法术，有一个|r|T132338:0|t[顺劈斩]|cRXP_WARN_，|r |T134307:0|t[龙尾扫击]|cRXP_WARN_和|r |T135745:0|t[召唤]|cRXP_WARN_一条|r |cRXP_ENEMY_龙怪|r |cRXP_WARN_，它可以施放造成巨大伤害的正面吐息|r
    .complete 81868,1 --Tyrannikus slain
    .mob Tyrannikus
    .maxlevel 53
step
    #season 2
    .goto Feralas,50.73,19.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士谢尔德林|r 对话
    .complete 81858,1 --Intelligence Report: Oneiros: 1/1
    .target Dreamwarden Sheldryn
    .skipgossip
    .maxlevel 53
step
    .solo
    #completewith RuinsofRav
    #season 2
    +|cRXP_WARN_小心|r |cRXP_WARN_阿隆迪乌斯|r|cRXP_WARN_，他是一个在道路上巡逻的首领精英怪，尽量绕开他|r
    .unitscan Alondrius
    .maxlevel 53
step
    .group 3
    #completewith RuinsofRav
    #season 2
    #label Alondrius
    .goto Feralas,46.8,19.6
    .line Feralas,47.6,25.5,48.1,24.2,48.0,23.0,46.9,22.2,46.2,20.9,46.3,18.1,46.3,16.2,46.1,14.1
    >>|cRXP_WARN_寻找|r |cRXP_WARN_阿隆迪乌斯|r|cRXP_WARN_，一个在道路上巡逻的精英首领。击杀他|r
    .complete 81870,1 --Alondrius Slain
    .unitscan Alondrius
    .maxlevel 53
step
    #season 2
    #label DreamWardenGorlas
    .goto Feralas,47.14,21.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士高拉斯|r 对话
    .complete 81859,1 --Intelligence Report: Twin Colossals: 1/1
    .target Dreamwarden Gorlas
    .skipgossip
    .maxlevel 53
step
    #season 2
    #completewith RuinsofRav
    #requires Alondrius
    >>击杀 |cRXP_ENEMY_迷失之女|r 和 |cRXP_ENEMY_复仇之子|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #requires Alondrius
    .goto Feralas,46.63,18.94
    >>在地上拾取 |cRXP_LOOT_疯狂守护者的笔记|r
    .complete 81863,1 --Mad Keeper's Notes: 1/1
    .maxlevel 53
step
    #season 2
    .goto Feralas,45.81,16.47
    .gossipoption 122148 >>与 |cRXP_FRIENDLY_奈勒内·溪吟|r 对话。她应该会跟在你身后
    .target Nerene Brooksinger
    .skipgossip
    .isOnQuest 81873
    .maxlevel 53
step
    #season 2
    #label RuinsofRav
    .goto Feralas,41.94,12.93
    .subzone 1114 >>前往鸦风废墟
    .maxlevel 53
step
    #season 2
    #completewith IncursionsComplete3
    >>击杀 |cRXP_ENEMY_梦泉游荡者|r 和 |cRXP_ENEMY_梦泉唤雷者|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    .goto Feralas,38.94,13.13
    >>拾取地上的 |cRXP_LOOT_鹰身人长文|r
    >>|cRXP_WARN_拾取是瞬间完成的。|r |cRXP_ENEMY_斯蕾娜|r |cRXP_WARN_可能会攻击你，请提前清理好逃跑路线|r
    .complete 81864,1 --Harpy Screed: 1/1
    .maxlevel 53
step
    #optional
    .group 3
    .goto Feralas,39.6,13.8
    >>击杀鹰身人首领 |cRXP_ENEMY_斯蕾娜|r
    >>小心，她会施放|cRXP_WARN_ |T136015:0|t[闪电链]、|r |T136018:0|t[包围之风] |cRXP_WARN_一个持续10秒的飓风控制，以及|r |T132104:0|t[酸雨] |cRXP_WARN_一个如果不躲开就会持续造成伤害的圆圈|r
    .complete 81871,1 --Slirena slain
    .mob Slirena
    .maxlevel 53
step
    #season 2
    .goto Feralas,37.71,12.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梦境卫士阿纳德|r 对话
    .complete 81860,1 --Intelligence Report: Ruins of Ravenwind: 1/1
    .target Dreamwarden Anadelle
    .skipgossip
    .maxlevel 53
step
    #season 2
    #label IncursionsComplete3
    .goto Feralas,40.58,8.09
    .gossipoption 122145 >>与 |cRXP_FRIENDLY_贾姆尼斯·愈树者|r 对话。她应该会跟在你身后
    .target Jamniss Treemender
    .isOnQuest 81874
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,42.11,9.07,0
    .goto Feralas,38.98,16.20,0
    .goto Feralas,42.11,9.07,60,0
    .goto Feralas,42.19,11.58,60,0
    .goto Feralas,41.02,13.08,60,0
    .goto Feralas,40.19,15.21,60,0
    .goto Feralas,38.98,16.20,60,0
    .goto Feralas,38.31,15.77,60,0
    .goto Feralas,37.95,14.21,60,0
    .goto Feralas,39.42,13.77,60,0
    .goto Feralas,39.58,10.69,60,0
    >>击杀 |cRXP_ENEMY_梦泉游荡者|r 和 |cRXP_ENEMY_梦泉唤雷者|r
    .complete 81856,1 --Dreamspring Roguefeather 10/10
    .mob +Dreamspring Roguefeather
    .complete 81856,2 --Dreamspring Stormcaller 10/10
    .mob +Dreamspring Stormcaller
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,46.44,15.89,0
    .goto Feralas,45.36,22.36,0
    .goto Feralas,44.45,12.29,50,0
    .goto Feralas,46.44,15.89,50,0
    .goto Feralas,46.35,18.82,50,0
    .goto Feralas,45.36,22.36,50,0
    .goto Feralas,45.55,19.10,50,0
    >>击杀 |cRXP_ENEMY_迷失之女|r 和 |cRXP_ENEMY_复仇之子|r
    .complete 81855,1 --Lost Daughter slain 10/10
    .mob +Lost Daughter
    .complete 81855,2 --Vengeful Son slain 10/10
    .mob +Vengeful Son
    .maxlevel 53
step
    #season 2
    #loop
    .goto Feralas,49.81,15.80,0
    .goto Feralas,53.85,12.74,0
    .goto Feralas,49.81,15.80,50,0
    .goto Feralas,50.68,17.37,50,0
    .goto Feralas,51.62,19.54,50,0
    .goto Feralas,52.76,16.27,50,0
    .goto Feralas,53.68,15.81,50,0
    .goto Feralas,53.85,12.74,50,0
    .goto Feralas,54.32,10.44,50,0
    >>击杀 |cRXP_ENEMY_癫狂的雏龙|r 和 |cRXP_ENEMY_龙族狂暴者|r
    >>|cRXP_WARN_小心。|r |cRXP_ENEMY_龙族狂暴者|r |cRXP_WARN_是精英，单刷可能比较困难|r
    .complete 81857,1 --Frenzied Whelp slain 10/10
    .mob +Frenzied Whelp
    .complete 81857,2 --Wyrmkin Berserker slain 10/10
    .mob +Wyrmkin Berserker
    .maxlevel 53
step
    #season 2
    .goto Feralas,51.00,11.69
    >>前往 |cRXP_PICK_翡翠梦境传送门|r
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_梅里阿斯|r，|cRXP_FRIENDLY_奈勒内|r 或 |cRXP_FRIENDLY_贾姆尼斯|r 不再跟随你，请回去再与他们对话|r
    >>|cRXP_WARN_在箭头标记的地点（传送门斜坡底部）来回走动几次。这会让NPC跨越判定线，从而让你获得任务进度|r
    .complete 81872,1 --Rescue Mellias Earthtender: 1/1
    .goto Feralas,49.64,15.44,0
    .target +Mellias Earthtender
    .complete 81873,1 --Rescue Nerene Brooksinger: 1/1
    .goto Feralas,45.81,16.47,0
    .target +Nerene Brooksinger
    .complete 81874,1 --Rescue Jamniss Treemender: 1/1
    .goto Feralas,40.58,8.09,0
    .target
    .target +Jamniss Treemender
    .maxlevel 53
step
    #season 2
    #completewith next
    .goto Feralas,50.95,11.67,30,0
    .goto Feralas,51.28,10.64,20 >>退出 |cRXP_PICK_翡翠梦境传送门|r
    .aura -444762
    .maxlevel 53
step
    #season 2
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    .turnin 81855 >>交任务 菲拉斯使命I：击败塞纳留斯之子
    .turnin 81856 >>交任务 菲拉斯使命II：击败鹰身人
    .turnin 81857 >>交任务 菲拉斯使命III：击败龙类
    .turnin 81858 >>交任务 菲拉斯使命IV：巨龙情报
    .turnin 81859 >>交任务 菲拉斯使命V：塞纳里奥情报
    .turnin 81860 >>交任务 菲拉斯使命VI：鹰身人情报
    .turnin 81861 >>交任务 菲拉斯使命VII：取回月光龙蛋
    .turnin 81863 >>交任务 菲拉斯使命VIII：取回守护者的笔记
    .turnin 81864 >>交任务 菲拉斯使命IX：取回鹰身人长文
    .turnin 81872 >>交任务 菲拉斯使命XVI：营救梅里阿斯·护地者
    .turnin 81873 >>交任务 菲拉斯使命XVII：营救奈勒内·溪吟
    .turnin 81874 >>交任务 菲拉斯使命XVIII：营救贾姆尼斯·愈树者
    .turnin 82068 >>交任务 抗击梦魇进犯
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    .goto Feralas,48.49,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战地队长阿伦奈尔|r 对话
    >>|cRXP_WARN_如果你处于组队状态，可以考虑把精英击杀任务也一起接了。这些任务需要击杀的首领拥有极高的生命值，根据你队伍的配置，挑战可能会有一定难度|r
    .turnin -81868 >>交任务 菲拉斯使命XIII：击败泰兰尼库斯
    .turnin -81870 >>交任务 菲拉斯使命XIV：击败阿隆德留斯
    .turnin -81871 >>交任务 菲拉斯使命XV：击败斯蕾娜
    .target Field Captain Arunnel
    .maxlevel 53
step
    #optional
    +|cRXP_WARN_你的等级已经超过所有梦魇进犯地区，无法再接受其中的常规任务|r
    >>如果你想提升在|r |cRXP_FRIENDLY_翡翠卫士|r 中的声望，菲拉斯有可以无限重复的任务，你可以上交10个|T134186:0|t[|cRXP_LOOT_月之根|r]，|T133594:0|t[|cRXP_LOOT_强效月亮石|r] 或 |T134312:0|t[|cRXP_LOOT_月龙之鳞|r] 中的任意一种
    >>这些任务不提供经验或金币，每次交任务时奖励 100 声望。从拍卖行购买尽可能多的最具成本效益的材料，然后前往菲拉斯交任务
    .xp <53,1
step
    #optional
    +你已完成此梦魇进犯循环。这些任务将在每日重置后再次可用。|cRXP_WARN_从列表中选择其他指南以继续|r
]])
