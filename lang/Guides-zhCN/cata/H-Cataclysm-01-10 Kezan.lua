if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6级 科赞
#next 6-11级 失落群岛
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25莎希·硬钳|r 对话
    .accept 14138 >>接受任务 照看生意
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25工头戴姆维克|r 对话
    .turnin 14138 >>交任务 照看生意
    .accept 14069 >>接受任务 好帮手很难找
    .accept 14075 >>接受任务 矿井的麻烦事
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>进入矿井
step
    #completewith KezanTroubleintheMines
    >>点击|cRXP_FRIENDLY_反抗的巨魔|r。这些可以在矿场外找到。
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>击杀 |cRXP_ENEMY_矿道虫|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>离开矿井
step
    >>点击|cRXP_FRIENDLY_抗命的巨魔|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25工头戴姆维克|r 对话
    .turnin 14075 >>交任务 矿井的麻烦事
    .turnin 14069 >>交任务 好帮手很难找
    .accept 25473 >>接受任务 卡亚可乐
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25莎希·硬钳|r 对话
    .turnin 25473 >>交任务 卡亚可乐
    .accept 28349 >>接受任务 市场部的梅格斯
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25梅格斯·碎纸机|r 对话
    .turnin 28349 >>交任务 市场部的梅格斯
    .accept 14071 >>接受任务 呼朋唤友
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>使用|T134246:0|t[改装跑车的钥匙]
    >>|cRXP_WARN_你可以通过按ESC，然后进入选项→快捷键→RestedXP指南，来为RestedXP的“激活物品”窗口绑定快捷键。|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>前去找|cRXP_FRIENDLY_小静|r
    >>|cRXP_WARN_使用|r |T135788:0|t[击打] |cRXP_WARN_来增加你的速度|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>前去找 |cRXP_FRIENDLY_大胖|r
    >>|cRXP_WARN_使用|r |T135788:0|t[击打] |cRXP_WARN_来增加你的速度|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>前去找 |cRXP_FRIENDLY_王牌|r
    >>|cRXP_WARN_使用|r |T135788:0|t[击打] |cRXP_WARN_来增加你的速度|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>顺着街道返回上方
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25梅格斯|r、|cFF00FF25莎希·硬钳|r和|cFF00FF25奇普|r 对话 << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25梅格斯|r、|cFF00FF25莎希·硬钳|r和|cFF00FF25“软糖”米萨|r 对话 << Male
    .turnin 14071 >>交任务 呼朋唤友
    .accept 24567 >>接受任务 参加预选赛
    .goto 194,58.28,76.57
    .accept 14070 >>接受任务 亲自动手
    .goto 194,56.43,76.95
    .accept 26711 >>接受任务 前往银行 << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>接受任务 前往银行 << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00记得使用你的|r |T134246:0|t[改装跑车的钥匙]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >>跟随箭头绕着房子走
step
    .goto 194,45.19,74.76
    >>攻击|cFFFF5722布鲁诺·防火棉|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>攻击|cFFFF5722萨德希·玛格|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>攻击|cFFFF5722“锤子”杰克|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>攻击|cFFFF5722弗兰基·吉尔斯利普|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00记得使用你的|r |T134246:0|t[改装跑车的钥匙]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入银行并与|cFF00FF25第一银行柜台员|r 对话
    .turnin 26711 >>交任务 前往银行 <<Female
    .accept 14110 >>接受任务 崭新的你 <<Female
    .turnin 26712 >>交任务 前往银行 <<Male
    .accept 14109 >>接受任务 崭新的你 <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00记得使用你的|r |T134246:0|t[改装跑车的钥匙]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25苏扎博|r 对话
    >>从他那里获得一件|cRXP_LOOT_潮人装束|r
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25“大金牙”盖比|r 对话
    >>从他那里获得|cRXP_LOOT_亮闪闪的珠宝|r
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cFF00FF25“软糖”米萨|r对话
    >>从她那里获得|cRXP_LOOT_清爽遮阳镜|r
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25克罗斯彻克教练|r 对话
    .turnin 24567 >>交任务 参加预选赛
    .accept 24488 >>接受任务 替代品
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>在驾驶|cFFDB2EEF改装跑车|r时，拾取地上的|cFFFCDC00替换零件|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25克罗斯彻克教练|r 对话
    .turnin 24488 >>交任务 替代品
    .accept 24502 >>接受任务 必要的粗暴
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>进入 |cRXP_FRIENDLY_锈水海盗队伐木机|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>使用|T134480:0|t[投掷足球炸弹]（1）击杀你面前的|cRXP_ENEMY_热砂港大鲨鱼队队员|r
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>点击任务日志中的任务，你可能需要下坐骑才能从|cFF00FF25克罗斯彻克教练|r那里接到下一个任务
    .goto 194,48.79,57.79
    .turnin 24502 >>点击小地图下方的任务以交还「必要的粗暴」
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>接受任务 四攻得分
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >>进入 |cRXP_FRIENDLY_锈水海盗队伐木机|r
    .target Bilgewater Buccaneer
step
    >>使用|T134480:0|t[投掷足球炸弹]（1）
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00离开载具|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25克罗斯彻克教练|r 对话
    .turnin 24503 >>交任务 四攻得分
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>接受任务 告诉莎希好消息
    .target Coach Crosscheck
step
    #completewith next
    .hs >>炉石到卡亚罗贸易公司总部
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25莎希·硬钳|r 和 |cFF00FF25奇普·英代尔|r 对话 << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25莎希·硬钳|r 和 |cFF00FF25“软糖”米萨|r 对话 << Male
    .turnin 24520 >>交任务 告诉莎希好消息
    .turnin 14070 >>交任务 亲自动手
    .goto 194,56.42,76.94
    .turnin 14110 >>交任务 崭新的你 << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>交任务 崭新的你 << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25史莉琪·剃刀|r 对话
    .accept 14010 >>接受任务 刺骨
    .train 2098 >>学习 |T132292:0|t[刺骨] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25全能战士NX-01型|r 对话
    .accept 14013 >>接受任务 冲锋
    .train 100 >>|T132337:0|t[冲锋] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25巴姆·重磅炸弹|r 对话
    .accept 14007 >>接受任务 稳固射击
    .train 56641 >>学习 |T132213:0|t[稳固射击] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25麦克斯·雪崩|r 对话
    .accept 14011 >>接受任务 根源打击
    .train 73899 >>学习 |T460956:0|t[根源打击] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25“点火器”菲兹|r 对话
    .accept 14008 >>接受任务 奥术飞弹
    .train 5143 >>学习 |T136096:0|t[奥术飞弹] << Cata
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25“点火器”菲兹|r 对话
    .accept 14008 >>接受任务 冰霜新星
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25艾沃·邪指|r 对话
    .accept 14012 >>接受任务 献祭
    .train 348 >>学习 |T135817:0|t[献祭] << Cata
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25艾沃·邪指|r 对话
    .accept 14012 >>接受任务 腐蚀术
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25修女金筛|r 对话
    .accept 14009 >>接受任务 快速治疗
    .train 2061 >>学习 |T135907:0|t[快速治疗] << Cata
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25修女金筛|r 对话
    .accept 14009 >>接受任务 学习暗言术
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T132292:0|t[刺骨]
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T132337:0|t[冲锋]
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T132213:0|t[稳固射击]
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T460956:0|t[根源打击]
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage cata
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T136096:0|t [奥术飞弹]
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 194,60.91,77.39
	>>对|cFFFF5722训练假人|r施放|T135848:0|t[冰霜新星]
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock cata
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T135817:0|t[献祭]
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Warlock !cata
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T136118:0|t[腐蚀术]
	.complete 14012,2 << !Cata --Cast Corruption (x3)
	.mob Training Dummy
step << Priest cata
    .goto 194,58.24,77.40
	>>对 |cFF00FF25受伤的雇员|r 施放 |T135907:0|t[快速治疗]
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Priest !cata
    .goto 194,60.91,77.39
	>>对 |cFFFF5722训练假人|r 施放 |T136207:0|t[暗言术：痛]
	.complete 14009,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25史莉琪·剃刀|r 对话
    .turnin 14010 >>交任务 刺骨
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25全能战士NX-01型|r 对话
    .turnin 14013 >>交任务 冲锋
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25巴姆·重磅炸弹|r 对话
    .turnin 14007 >>交任务 稳固射击
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25麦克斯·雪崩|r 对话
    .turnin 14011 >>交任务 根源打击
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25“点火器”菲兹|r 对话
    .turnin 14008 >>交任务 奥术飞弹
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25“点火器”菲兹|r 对话
    .turnin 14008 >>交任务 冰霜新星
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25艾沃·邪指|r 对话
    .turnin 14012 >>交任务 献祭
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25艾沃·邪指|r 对话
    .turnin 14012 >>交任务 献祭
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25修女金筛|r 对话
    .turnin 14009 >>交任务 快速治疗
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25修女金筛|r 对话
    .turnin 14009 >>交任务 学习暗言术
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25奇普·英代尔|r 对话 << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25“软糖”米萨|r 对话 << Male
    .accept 14153 >>接受任务 聚会生活 << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>接受任务 聚会生活 << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>对正在饮酒的 |cRXP_FRIENDLY_地精|r 使用|T132809:0|t[香槟酒]（1）
    >>对看起来醉醺醺或迷糊的|cRXP_FRIENDLY_地精|r 使用|T132806:0|t[水桶]（2）
    >>与正在跳舞的 |cRXP_FRIENDLY_地精|r 一起|T133836:0|t[跳舞]（3）
    >>对有火花的 |cRXP_FRIENDLY_地精|r 使用|T134285:0|t[烟花]（4）
    >>对正在吃东西的 |cRXP_FRIENDLY_地精|r 使用|T237329:0|t[开胃小吃]（5）
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25莎希·硬钳|r 对话
    .turnin 14153 >>交任务 聚会生活 << Female
	.turnin 14113 >>交任务 聚会生活 << Male
    .accept 14115 >>接受任务 捣乱的海盗
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>击杀 捣乱的海盗|cRXP_ENEMY_
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25莎希·硬钳|r 对话
    .turnin 14115 >>交任务 捣乱的海盗
    .accept 14116 >>接受任务 不速之客
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>上楼梯
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25贸易大王加里维克斯|r 对话
    .turnin 14116 >>交任务 不速之客
    .accept 14120 >>接受任务 万亿杏仁币
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t从窗口跳出并与 |cFF00FF25莎希·硬钳|r 对话
    .turnin 14120 >>交任务 万亿杏仁币
    .accept 14122 >>接受任务 紧急措施
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .accept 14121 >>接受任务 热力追踪
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .accept 14124 >>接受任务 搜刮卡亚矿石
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_记得使用你的|r |T134246:0|t[改装跑车的钥匙] |cRXP_WARN_，乘车时免疫摔落伤害|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>将|T133712:0|t[不靠谱炸弹] 投向 |cRXP_PICK_卡亚矿藏|r，并拾取矿洞附近地面上的|cFF00BCD4一大块卡亚矿石|r
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25史莉琪·剃刀|r 对话。她会四处走动
    .accept 14123 >>接受任务 别墅漫步
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_记得使用你的|r |T134246:0|t[改装跑车的钥匙] |cRXP_WARN_，乘车时免疫摔落伤害|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>看到|cFFFF5722受雇的抢掠者|r时开车碾过他们
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>点击 |cRXP_PICK_科赞避难所第一银行|r
    >>|cRXP_WARN_按照屏幕中央显示的指示操作|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>看到|cFFFF5722受雇的抢掠者|r时开车碾过他们
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00记得使用 改装跑车的钥匙|r。
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00避开巡逻的|r |cFFFF5722巨怪保安|r |cFFFCDC00和|r |cFFFF5722肚肥鼻尖的猪|r |cFFFCDC00因为他们能侦测到你并杀死你|r
    .mob Keensnout Potbelly
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>拾取 |cFF00BCD4终极炸弹|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>拾取 |cFF00BCD4地精丽莎的画像|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>上楼梯
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>拾取 |cFF00BCD4玛尔迪的猎鹰|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>从窗户跳出，跑向敌对的|cFFFF5722巨怪保安|r或|cFFFF5722肚肥鼻尖的猪|r以送死
    .deathskip >>送死并在 |cFF00FF25灵魂医者|r 处复活
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keensnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>跟随路线前往总部
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25史莉琪·剃刀|r 对话。她会四处走动
    .turnin 14123 >>交任务 别墅漫步
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .target Foreman Dampwick
    .turnin 14124 >>交任务 搜刮卡亚矿石
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .target Megs Dreadshredder
    .turnin 14121 >>交任务 热力追踪
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .target Sassy Hardwrench
    .turnin 14122 >>交任务 紧急措施
    .accept 14125 >>接受任务 447
step
    .goto 194/648,1371.00000,-8420.79980
    >>进入房间，点击 |cFF00BCD4故障的发电机|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>点击 |cFF00BCD4渗漏的炉子|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>上楼，然后点击 |cFF00BCD4易燃的床垫|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>从窗户跳出去并点击 |cFF00BCD4燃气型清理机器人控制面板|r
    >>|cRXP_WARN_等待剧情演出结束|r
    .timer 17,447 剧情演出
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_事故勘察员|r 对话
    .target Claims Adjuster
    .turnin 14125 >>交任务 447
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .target Sassy Hardwrench
    .accept 14126 >>接受任务 毕生积蓄
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00记得使用你的|r |T134246:0|t[改装跑车的钥匙]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>前往加里维克斯的别墅
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >>点击大炮
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25贸易大王加里维克斯|r 对话
    .turnin 14126 >>交任务 毕生积蓄
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11级 失落群岛
#next 10-22级 艾萨拉
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP 大灾变 1-80 (部落) << cata
#group RXP 熊猫人之谜 1-80级 (部落) << mop
#subweight 10000

step
    #completewith next
    >>有时可能会卡住，需要重新登录或使用 /reload
    .timer 45 >>还不是见圣光的时候 剧情演出
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cFF00FF25扎普诺兹医生|r 和 |cFF00FF25“发明家”盖格林登|r 对话
    .turnin 14239 >>交任务 还不是见圣光的时候！
    .goto 174,24.62,77.86
    .accept 14001 >>接受任务 地精逃生舱
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎普诺兹医生|r 对话
    >>有时可能会卡住，需要重新登录或使用 /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>交任务 莫入鬼门关
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"发明家"盖格林登|r 对话
    .accept 14001 >>接受任务 地精逃生舱
    .target Geargrinder Gizmo
step
    >>点击 |cRXP_PICK_地精逃生舱|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,27.9,75.5
    .turnin 14001 >>交任务 地精逃生舱
    .accept 14014 >>接受任务 夺回工具箱！
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r 对话
    .goto 174,27.85,74.29
    .accept 14473 >>接受任务 收拾烂摊子
    .trainer >>训练你的职业技能 << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 对话
    .goto 174,27.95,74.43
    .accept 14019 >>接受任务 闯祸的猴子
    .trainer >>训练你的职业技能 << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_修女金筛|r 对话
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“点火器”菲兹|r 对话
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾沃·邪指|r 对话
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_全能战士NX-01型|r 对话
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史莉琪·剃刀|r 对话
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>在|cRXP_ENEMY_掷弹猴子|r旁使用|T133979:0|t[硝化钾香蕉]，并击杀|cRXP_ENEMY_刺角雏龙|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>收集[|cRXP_LOOT_工具箱|r]
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r 和 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 对话
    .turnin 14473 >>交任务 收拾烂摊子
    .goto 174,27.85,74.29
    .turnin 14019 >>交任务 闯祸的猴子
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,27.9,75.5
    .turnin 14014 >>交任务 夺回工具箱！
    .accept 14248 >>接受任务 急需帮助
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .goto 174,31.27,79.26
    .turnin 14248 >>交任务 急需帮助
    .accept 14021 >>接受任务 矿工的麻烦
    .accept 14031 >>接受任务 捕获未知的信息
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>跟随并保护|cRXP_FRIENDLY_惊恐的矿工|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>使用 |T134442:0|t[卡亚罗牌自动成像机] 拍摄墙上带有漂浮相机标记的画
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>使用 |T134442:0|t[卡亚罗牌自动成像机] 拍摄天花板上带有漂浮相机标记的画
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>使用 |T134442:0|t[卡亚罗牌自动成像机] 拍摄墙上带有漂浮相机标记的画
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>使用 |T134442:0|t[卡亚罗牌自动成像机] 拍摄墙上带有漂浮相机标记的画
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t尝试与 |cRXP_FRIENDLY_死亡的兽人斥候|r 对话
    .accept 14233 >>接受任务 兽人会写字？
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>跟随并保护|cRXP_FRIENDLY_惊恐的矿工|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开洞穴并与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .turnin 14021 >>交任务 矿工的麻烦
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .turnin 14031 >>交任务 捕获未知的信息
    .turnin 14233 >>交任务 兽人会写字？
    .accept 14234 >>接受任务 敌人的敌人就是……
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>沿着小路往山上走
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格娜|r 对话
    .goto 174,37.63,78.02
    .turnin 14234 >>交任务 敌人的敌人就是……
    .accept 14235 >>接受任务 恶花谷
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基拉格·血牙|r 对话
    .goto 174,35.43,75.71
    .turnin 14235 >>交任务 恶花谷
    .accept 14236 >>接受任务 除草无双
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>使用 |cRXP_FRIENDLY_除草机|r，并穿过 |cRXP_ENEMY_植物|r 将它们消灭
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基拉格·血牙|r 对话
    .goto 174,35.43,75.71
    .turnin 14236 >>交任务 除草无双
    .accept 14303 >>接受任务 向阿格娜复命
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格娜|r 对话
    .goto 174,37.63,78.02
    .turnin 14303 >>交任务 向阿格娜复命
    .accept 14237 >>接受任务 继续前进
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基拉格·血牙|r 对话
    .goto 174,34.62,66.85
    .turnin 14237 >>交任务 继续前进
    .accept 14238 >>接受任务 死亡的红外光
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>击杀 |cRXP_ENEMY_军情七处刺客|r
    >>|cRXP_WARN_使用你的|r |T133149:0|t[红外感温眼镜] |cRXP_WARN_来看清它们|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基拉格·血牙|r 对话
    .goto 174,34.61,66.85
    .turnin 14238 >>交任务 死亡的红外光
    .accept 14240 >>接受任务 前往峭壁
    .timer 52,骑上巴斯蒂亚
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>等到 |cRXP_FRIENDLY_斥候布拉克斯|r 抵达
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斥候布拉克斯|r 对话
    .goto 174,25.28,59.84
    .turnin 14240 >>交任务 前往峭壁
    .accept 14241 >>接受任务 旋翼机！
    .target Scout Brax
step
    >>击杀|cRXP_ENEMY_军情7处特工|r和|cRXP_ENEMY_旋翼机飞行员|r，拾取[|cRXP_LOOT_旋翼机钥匙|r]
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>与 |cRXP_FRIENDLY_旋翼机|r 互动
    >>|cRXP_WARN_你可以忽略这些 |r旋翼机飞行员|cRXP_ENEMY_ 敌人|r
    .turnin 14241 >>交任务 旋翼机！
    .accept 14242 >>接受任务 珍贵的货物
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下到船舱里与 |cRXP_FRIENDLY_萨尔|r 对话
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target 萨尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .goto 174,11.8,62.8
    .turnin 14242 >>交任务 珍贵的货物
    .accept 14326 >>接受任务 甲板上见
    .target 萨尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到外面去，在甲板上与 |cRXP_FRIENDLY_萨尔|r 会合
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>交任务 甲板上见
    .accept 14243 >>接受任务 酋长的复仇
    .target 萨尔
step
    >>使用 |T237589:0|t[闪电打击] (1) 来击杀 |cRXP_FRIENDLY_联盟水手|r。
    >>|cRXP_WARN_瞄准那些更小的船|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .goto 174,35.92,66.72
    .turnin 14243 >>交任务 酋长的复仇
    .accept 14445 >>接受任务 暂时的离别
    .target 萨尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,36.02,67.53
    .turnin 14445 >>交任务 暂时的离别
    .accept 14244 >>接受任务 爬升，爬升，火箭分离！
    .target Sassy Hardwrench
step
    >>点击 |cRXP_PICK_火箭弹射器|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .goto 174,44.54,64.36
    .turnin 14244 >>交任务 爬升，爬升，火箭分离！
    .accept 14245 >>接受任务 胶囊镇
    .target Foreman Dampwick
step
    >>点击 |cRXP_PICK_胶囊镇活塞|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工头戴姆维克|r 对话
    .goto 174,45.36,64.74
    .turnin 14245 >>交任务 胶囊镇
    .accept 27139 >>接受任务 霍巴特需要你
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,45.34,65.22
    .turnin 27139 >>交任务 霍巴特需要你
    .accept 24671 >>接受任务 飞翔的肉鸡
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里米·油指|r 对话
    .home >>将炉石设置在胶囊镇
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_修女金筛|r 对话
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 对话
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“点火器”菲兹|r 对话
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾沃·邪指|r 对话
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r 对话
    .trainer >>训练你的职业技能
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_全能战士NX-01型|r 对话
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史莉琪·剃刀|r 对话
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>使用你的 |T134273:0|t[远程遥控焰火] 捕获城镇周围的 |cRXP_PICK_野生肉鸡|r
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 和 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 对话
    .turnin 24671 >>交任务 飞翔的肉鸡
    .goto 174,45.34,65.22
    .accept 24741 >>接受任务 以小换大
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>使用 |T236997:0|t[野生肉鸡蛋] 将蛋放入陷阱中。然后等待 |cRXP_ENEMY_骨刺迅猛龙|r 进入陷阱，并拾取 |cRXP_PICK_骨刺迅猛龙蛋|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 和 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .turnin 24741 >>交任务 以小换大
    .goto 174,45.25,64.85
    .accept 24744 >>接受任务 史上第一巨蛋
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>击杀 |cRXP_ENEMY_机动战鸡|r。拾取掉落在地上的 |cRXP_LOOT_史上第一巨蛋|r
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,45.34,65.21
    .turnin 24744 >>交任务 史上第一巨蛋
    .accept 24816 >>接受任务 到底谁站在食物链顶层？
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>击杀|cRXP_ENEMY_饥饿潜伏者|r，拾取[|cRXP_LOOT_鲨鱼肉块|r]
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .goto 174,45.27,65.57
    .turnin 24816 >>交任务 到底谁站在食物链顶层？
    .accept 24817 >>接受任务 披着鲨鱼皮的地精
    .target Assistant Greely
step
    >>点击 |cRXP_PICK_X型蒸汽机械鲨鱼控制器|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>使用 |T132345:0|t[疯狂激光柱] (1) 和 |T135821:0|t[爆炸蛋幕] (2) 来击杀 |cRXP_ENEMY_巨锤|r
    >>|cRXP_WARN_需要时使用|r |T132996:0|t[修理] |cRXP_WARN_来治疗|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,45.34,65.21
    .turnin 24817 >>交任务 披着鲨鱼皮的地精
    .accept 24856 >>接受任务 迫在眉睫的威胁
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .goto 174,52.2,73.2
    .turnin 24856 >>交任务 迫在眉睫的威胁
    .accept 24858 >>接受任务 锈水财阀的地权主张
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“硬币”布雷特|r 对话
    .goto 174,52.20,73.22
    .accept 24859 >>接受任务 纳迦皮
    .target Brett "Coins" McQuid
step
    #completewith next
    >>击杀 |cRXP_ENEMY_瓦丝耶兰战士|r 和 |cRXP_ENEMY_瓦丝耶兰海妖|r。拾取他们的 |cRXP_LOOT_皮|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>点击 |cRXP_PICK_纳迦旗帜|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>击杀 |cRXP_ENEMY_瓦丝耶兰战士|r 和 |cRXP_ENEMY_瓦丝耶兰海妖|r。拾取他们的 |cRXP_LOOT_皮|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“硬币”布雷特|r 和 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .turnin 24859 >>交任务 纳迦皮
    .goto 174,52.2,73.22
    .turnin 24858 >>交任务 锈水财阀的地权主张
    .accept 24864 >>接受任务 无法抗拒的池塘小马
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>到达水边后使用|T132261:0|t[无法抗拒的池塘小马]。
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳迦幼崽|r 对话
    >>|cRXP_WARN_可以用范围技能（AOE），但注意别误杀幼崽|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .goto 174,52.2,73.15
    .turnin 24864 >>交任务 无法抗拒的池塘小马
    .accept 24868 >>接受任务 和谈的希望
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>南行前往瓦丝耶兰废墟
step
    .goto 174,54.07,90.06
    >>击杀 |cRXP_ENEMY_深渊无面者|r
    >>|cRXP_WARN_等待刷新动画（紫色护盾）结束。他很快就会跳下来|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅格斯·碎纸机|r 对话
    .goto 174,52.20,73.15
    .turnin 24868 >>交任务 和谈的希望
    .accept 24897 >>接受任务 返回胶囊镇
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>返回胶囊镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,45.18,64.91
    .turnin 24897 >>交任务 返回胶囊镇
    .accept 24901 >>接受任务 胶囊镇：遭到攻击
    .target Sassy Hardwrench
step
    >>点击 |cRXP_PICK_B.C.消除者|r 进入其中，朝 |cRXP_ENEMY_乌姆洛特战士|r 射击
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_离开载具|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,45.2,64.9
    .turnin 24901 >>交任务 胶囊镇：遭到攻击
    .accept 24924 >>接受任务 乌姆洛特村
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>前往乌姆洛特村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_小静|r 对话
    .goto 174,56.56,71.96
    .turnin 24924 >>交任务 乌姆洛特村
    .accept 24925 >>接受任务 营救俘虏
    .accept 24929 >>接受任务 传递信息
    .target Izzy
step
    #completewith next
    >>击杀 |cRXP_ENEMY_乌姆洛特萨满祭司|r 来解救 |cRXP_FRIENDLY_地精俘虏|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>击杀 |cRXP_ENEMY_英格维|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>击杀 |cRXP_ENEMY_乌姆洛特萨满祭司|r 来解救 |cRXP_FRIENDLY_地精俘虏|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_小静|r 对话
    .goto 174,56.56,71.96
    .turnin 24925 >>交任务 营救俘虏
    .turnin 24929 >>交任务 传递信息
    .accept 24937 >>接受任务 危机解除
    .target Izzy
step
    #completewith next
    .hs >>炉石回到胶囊镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,45.2,64.9
    .turnin 24937 >>交任务 危机解除
    .accept 24940 >>接受任务 前往火山口
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_爬山时避开|cRXP_ENEMY_|r地精僵尸|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗斯彻克教练|r、|cRXP_FRIENDLY_工头戴姆维克|r 和 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .turnin 24940 >>交任务 前往火山口
    .accept 24942 >>接受任务 僵尸大战超级火箭靴
    .goto 174,51.8,47.1
    .accept 24945 >>接受任务 三个小俾格米人
    .goto 174,51.85,47.19
    .accept 24946 >>接受任务 摇滚粉末
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_如果你是暗牧，需要先取消暗影形态才能用这双鞋子|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_使用|T133029:0|t[超级助推火箭靴]|r
step
    #completewith next
    >>使用火箭靴踩过 |cRXP_ENEMY_地精僵尸|r 将其击杀
    >>|cRXP_WARN_避开|cRXP_ENEMY_|r乌斯坦猎头者|r|cRXP_WARN_，他们很容易将你击杀|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>拾取地面上的|cRXP_PICK_摇滚粉末|r
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>击杀 |cRXP_ENEMY_马奥默|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>击杀 |cRXP_ENEMY_塔卢可|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>击杀|cRXP_ENEMY_加奥|r
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>四处查看并拾取剩余的|cRXP_PICK_摇滚粉末|r
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>使用火箭靴踩过 |cRXP_ENEMY_地精僵尸|r 将其击杀
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头戴姆维克|r,|cRXP_FRIENDLY_助手格瑞里|r, 和|cRXP_FRIENDLY_克罗斯彻克教练|r对话
    .turnin 24945 >>交任务 三个小俾格米人
    .goto 174,51.85,47.20
    .turnin 24946 >>交任务 摇滚粉末
    .goto 174,51.73,47.38
    .turnin 24942 >>交任务 僵尸大战超级火箭靴
    .accept 24952 >>接受任务 火箭靴的威力
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>使用|T133029:0|t[沾满摇滚粉末的火箭靴]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,68.93,46.44
    .turnin 24952 >>交任务 火箭靴的威力
    .accept 24954 >>接受任务 龟神的子嗣
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>击杀|cRXP_ENEMY_沃卡洛斯之子|r，从它们身上拾取[|cRXP_LOOT_火囊|r]
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,68.93,46.44
    .turnin 24954 >>交任务 龟神的子嗣
    .accept 24958 >>接受任务 沃卡洛斯！
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>在路径点处对|cRXP_ENEMY_沃卡洛斯|r连续使用|T135624:0|t[地精火箭筒]
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .turnin 24958 >>交任务 沃卡洛斯！
    .accept 25023 >>接受任务 老朋友
    .timer 110,老朋友任务飞行RP
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 25023 >>交任务 老朋友
    .accept 25024 >>接受任务 击退伞兵
    .target 萨尔
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .accept 25058 >>接受任务 以地精的方式拆除地雷
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格娜|r 对话
    .accept 25093 >>接受任务 军情七处的头目们
    .target Aggra
step
    #completewith Paratroopers
    >>使用 |T133716:0|t[一袋手榴弹] 来摧毁地上的 |cRXP_PICK_地雷|r
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>击杀 |cRXP_ENEMY_联盟伞兵|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>击杀|cRXP_ENEMY_指挥官亚林登|r，从他身上拾取[|cRXP_LOOT_指挥官亚林登的徽记|r]
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>击杀|cRXP_ENEMY_阿莱克西·默嚎|r，从他身上拾取[|cRXP_LOOT_阿莱克西·默嚎的徽记|r]
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>击杀|cRXP_ENEMY_黑刃希恩|r，从他身上拾取[|cRXP_LOOT_黑刃希恩的徽记|r]
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>击杀 |cRXP_ENEMY_联盟伞兵|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>使用 |T133716:0|t[一袋手榴弹] 来摧毁地上的 |cRXP_PICK_地雷|r
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>前往酋长瞭望台
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格娜|r 对话
    .turnin 25093 >>交任务 军情七处的头目们
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 25024 >>交任务 击退伞兵
    .target 萨尔
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .turnin 25058 >>交任务 以地精的方式拆除地雷
    .accept 25066 >>接受任务 科赞的骄傲
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎希·硬钳|r对话以进入载具
    .target Sassy Hardwrench
step
    >>摧毁 |cRXP_ENEMY_诺莫瑞根隐形战机|r
    >>|cRXP_WARN_卡CD使用|r |T134273:0|t[狂野狡诈火箭] |cRXP_WARN_(2)|r |cRXP_WARN_并狂按|r |T135627:0|t[机枪] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>飞回酋长瞭望台
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,37.36,41.92
    .turnin 25066 >>交任务 科赞的骄傲
    .accept 25098 >>接受任务 觐见酋长
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .goto 174,36.79,43.13
    .turnin 25098 >>交任务 觐见酋长
    .accept 25099 >>接受任务 借巴斯蒂亚一用
    .target 萨尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基拉格·血牙|r 对话
    .goto 174,33.8,38.8
    .turnin 25099 >>交任务 借巴斯蒂亚一用
    .accept 25100 >>接受任务 奔跑吧
    .timer 87,黑豹骑行
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t骑上黑豹后，与|cRXP_FRIENDLY_史莉琪·剃刀|r 对话
    .goto 174,53.71,34.94
    .turnin 25100 >>交任务 奔跑吧
    .accept 25109 >>接受任务 加里维克斯劳工矿井
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_修女金筛|r 对话
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴姆·重磅炸弹|r 对话
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“点火器”菲兹|r 对话
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾沃·邪指|r 对话
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯·雪崩|r 对话
    .trainer >>训练你的职业技能
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_全能战士NX-01型|r 对话
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_史莉琪·剃刀|r 对话
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>进入洞穴，跳下去
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .turnin 25109 >>交任务 加里维克斯劳工矿井
    .accept 25110 >>接受任务 卡亚可乐，给你灵感！(注册商标)
    .target Assistant Greely
step
    >>拾取地上的 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .goto 174,53.17,36.55
    .turnin 25110 >>交任务 卡亚可乐，给你灵感！(注册商标)
    .accept 25122 >>接受任务 重振士气
    .accept 25123 >>接受任务 摧毁灵魂石！
    .target Assistant Greely
step
    #completewith FreeGobber
    >>拾取地上的 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    >>选中 |cRXP_FRIENDLY_科赞公民|r 并使用 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title 解救王牌
    >>选中 |cRXP_FRIENDLY_王牌|r 并使用 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title 解救小静
    >>选中 |cRXP_FRIENDLY_小静|r 并使用 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>击杀 |cRXP_ENEMY_残酷主人“裂影”|r 并拾取 |cRXP_PICK_“裂影”的灵魂石|r。
    .use 52481 >>|cRXP_WARN_对|r |cRXP_WARN_残酷主人“裂影”|r |cRXP_ENEMY_的尸体使用|r |T134336:0|t[“裂影”的灵魂石]
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>选中 |cRXP_FRIENDLY_大胖|r 并使用 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>拾取地上的 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    >>选中 |cRXP_FRIENDLY_科赞公民|r 并使用 |T132808:0|t[|cRXP_LOOT_卡亚零一度可乐|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .turnin 25123 >>交任务 摧毁灵魂石！
    .turnin 25122 >>交任务 重振士气
    .accept 25125 >>接受任务 矿道尽头的亮光
    .target Assistant Greely
step
    >>与 |cRXP_PICK_矿车|r 互动
    .goto 174,56.29,27.33
    .turnin 25125 >>交任务 矿道尽头的亮光
    .accept 25184 >>接受任务 乘坐采矿车
step
    >>乘坐矿车
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .goto 174,54.4,16.9
    .turnin 25184 >>交任务 乘坐采矿车
    .accept 25200 >>接受任务 清理伐木机
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克罗斯彻克教练|r对话
    .goto 174,54.44,16.93
    .accept 25201 >>接受任务 终极足球炸弹制服
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>击杀 |cRXP_ENEMY_热砂港大鲨鱼队队员|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>拾取 |cRXP_LOOT_备用伐木机零件|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克罗斯彻克教练|r对话
    .goto 174,54.44,16.93
    .turnin 25201 >>交任务 终极足球炸弹制服
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .goto 174,54.4,16.93
    .turnin 25200 >>交任务 清理伐木机
    .accept 25204 >>接受任务 打开阀门
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_王牌|r 对话
    .goto 174,54.16,17.21
    .accept 25203 >>接受任务 奇普是什么鬼名字？
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_小静|r 对话
    .goto 174,54.01,16.98
    .accept 25202 >>接受任务 通往他的内心的捷径
    .target Izzy
step
    >>点击 |cRXP_PICK_阀门|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>点击 |cRXP_PICK_阀门|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>击杀|cRXP_ENEMY_奇普·英代尔|r，从他身上拾取[|cRXP_LOOT_项链|r]
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>击杀|cRXP_ENEMY_奇普·英代尔|r，从他身上拾取[|cRXP_LOOT_项链|r]
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>点击 |cRXP_PICK_阀门|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>点击 |cRXP_PICK_阀门|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>与 |cRXP_PICK_平台上控制面板|r 互动
    .goto 174,51.4,13.1
    .turnin 25204 >>交任务 打开阀门
    .accept 25207 >>接受任务 再见，甜蜜的油井
step
    >>点击 |cRXP_PICK_红色大按钮|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_王牌|r 对话
    .goto 174,54.16,17.19
    .turnin 25203 >>交任务 奇普是什么鬼名字？
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_小静|r 对话
    .goto 174,54.01,16.97
    .turnin 25202 >>交任务 通往他的内心的捷径
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_助手格瑞里|r 对话
    .goto 174,54.4,16.9
    .turnin 25207 >>交任务 再见，甜蜜的油井
    .accept 25213 >>接受任务 奴隶营
    .timer 24,乘坐伐木机
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t乘坐伐木机后与 |cRXP_FRIENDLY_莎希·硬钳|r 对话
    .goto 174,43.63,25.32
    .turnin 25213 >>交任务 奴隶营
    .accept 25244 >>接受任务 小甜甜是什么鬼名字？ << Female
	.accept 25243 >>接受任务 她爱我。她不爱我！ << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,43.85,25.30
    .accept 25214 >>接受任务 极速逃逸
    .target Hobart Grapplehammer
step
    #completewith next
    >>点击 |cRXP_FRIENDLY_被俘的地精|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>击杀 |cRXP_ENEMY_小甜甜|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>点击 |cRXP_FRIENDLY_被俘的地精|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_霍巴特·钩锤|r 对话
    .goto 174,43.85,25.30
    .turnin 25214 >>交任务 极速逃逸
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,43.63,25.32
    .turnin 25244 >>交任务 小甜甜是什么鬼名字？ << Female
	.turnin 25243 >>交任务 她爱我。她不爱我！ << Male
    .accept 25251 >>接受任务 最后的对峙
    .target Sassy Hardwrench
step
    >>进入|cRXP_FRIENDLY_终极足球炸弹制服|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>锁定 |cRXP_ENEMY_贸易大王加里维克斯|r，技能全部卡冷却使用
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>跳下
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .goto 174,43.6,25.3
    .turnin 25251 >>交任务 最后的对峙
    .accept 25265 >>接受任务 胜利！
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .goto 174,42.16,17.37
    .turnin 25265 >>交任务 胜利！
    .accept 25266 >>接受任务 酋长的大使
    .target 萨尔
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎希·硬钳|r对话
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库卡隆忠诚者|r 对话
    .goto 1,57.65,9.78
    .turnin 25266 >>交任务 酋长的大使
    .accept 25267 >>接受任务 给萨鲁法尔的消息
    .timer 75,飞往奥格瑞玛
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>进入奥格瑞玛
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r对话
    .turnin 25267 >>交任务 给萨鲁法尔的消息
    .accept 25275 >>接受任务 向劳工队长报道
    .target 加尔鲁什·地狱咆哮
]])
