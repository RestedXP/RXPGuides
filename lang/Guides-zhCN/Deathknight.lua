if GetLocale() ~= "zhCN" then return end
local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group RestedXP 死亡骑士开始
#next RestedXP 联盟 60-70级\59-61级 地狱火半岛 << Alliance wotlk
#next RestedXP 部落 60-70级\59-61级 地狱火半岛 << Horde wotlk
#next RXP 大灾变 60-80级 部落\59-61级 地狱火半岛 << Horde cata
#next RXP 大灾变 60-80级 联盟\59-61级 地狱火半岛 << Alliance cata
#next RXP 熊猫人之谜 60-80级(部落)\59-61级 地狱火半岛 << Horde !wotlk !cata
#next RXP 熊猫人之谜 60-80级(联盟)\59-61级 地狱火半岛 << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 血色领地

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_巫妖王|r交谈
    .target 巫妖王
    .accept 12593 >>接受任务 为巫妖王而战
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_教官拉苏维奥斯|r对话
    >>|cRXP_FRIENDLY_教官拉苏维奥斯|r |cRXP_WARN_会小范围巡逻|r
    .turnin 12593 >>交任务 为巫妖王而战
    .target 教官拉兹沃斯
    .accept 12619 >>接受任务 符文之剑
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>从其中一个武器架上拾取|T135410:0|t[|cRXP_LOOT_破旧的长剑|r]。它在墙壁周围有多个刷新点
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >>|cRXP_WARN_引导|r |T135410:0|t[|cRXP_LOOT_破旧的长剑|r] |cRXP_WARN_于|r |cRXP_PICK_符文熔炉|r处
    .timer 8,灵魂之刃刻符 剧情RP
	.use 38607
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_教官拉苏维奥斯|r对话
    >>|cRXP_FRIENDLY_教官拉苏维奥斯|r |cRXP_WARN_会小范围巡逻|r
    .turnin 12619 >>交任务 符文之剑
    .target 教官拉兹沃斯
    .accept 12842 >>接受任务 符文熔铸：战争的准备
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_再次前往|cRXP_PICK_ |r符文熔炉|r处
    >>|cRXP_WARN_在你的法术书（默认按键：P）中，点击|r |T237523:0|t[符文熔铸]
    >>|cRXP_WARN_为你的|r |T135335:0|t[|cFF0070FF符文灵魂之刃|r] |cRXP_WARN铭刻上|r |T136130:0|t[灰烬冰川符文]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >>|cRXP_WARN_装备 |r |T135335:0|t[|cFF0070FF符文灵魂之剑|r]
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_教官拉苏维奥斯|r对话
    >>|cRXP_FRIENDLY_教官拉苏维奥斯|r |cRXP_WARN_会小范围巡逻|r
    .turnin 12842 >>交任务 符文熔铸：战争的准备
    .target 教官拉兹沃斯
    .accept 12848 >>接受任务 无尽的饥渴
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >>|cRXP_WARN_装备 |r |T135335:0|t[|cFF0070FF符文灵魂之剑|r]
    .use 38707
step
    #completewith next
    .cast 54669 >>点击中央内墙上的一个|cRXP_PICK_阿彻鲁斯灵魂监牢|r，释放一名|cRXP_ENEMY_不配的学徒|r
    .timer 17,黑锋叛徒 剧情RP
step
    .goto 124,48.4,29.0
    >>短暂的剧情演出后，击杀|cRXP_ENEMY_黑锋叛徒|r
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob 不配的见习者
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_教官拉苏维奥斯|r对话
    >>|cRXP_FRIENDLY_教官拉苏维奥斯|r |cRXP_WARN_会小范围巡逻|r
    .turnin 12848 >>交任务 无尽的饥渴
    .target 教官拉兹沃斯
    .accept 12636 >>接受任务 阿彻鲁斯之眼
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_炼金师卡洛夫|r 对话
    >>|cRXP_BUY_从他那里购买四个|r |T133849:0|t[尸尘] |cRXP_WARN_|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_巫妖王|r交谈
    .target 巫妖王
    .turnin 12636 >>交任务 阿彻鲁斯之眼
    .accept 12641 >>接受任务 天降厄运
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >>点击|cRXP_PICK_阿彻鲁斯之眼控制台|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_施放|r |T136158:0|t[阿彻鲁斯虹吸] (1) |cRXP_WARN_在新阿瓦隆熔炉上|r
    >>|cRXP_WARN_务必避开|r |cRXP_ENEMY_血色十字军|r |cRXP_WARN_。施放|r |T136119:0|t[召唤食尸鬼]（2）|cRXP_WARN_也能提供些许干扰|r
    >>|cFFFF0000此步骤没有箭头。建筑物的所在地区在你的地图上已标记，该建筑物上还有一个大红色的猎人标记图标|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_施放|r |T136158:0|t[阿彻鲁斯虹吸] (1) |cRXP_WARN_在血色城堡|r
    >>|cRXP_WARN_务必避开|r |cRXP_ENEMY_血色十字军|r |cRXP_WARN_。施放|r |T136119:0|t[召唤食尸鬼]（2）|cRXP_WARN_也能提供些许干扰|r
    >>|cFFFF0000此步骤没有箭头。建筑物的所在地区在你的地图上已标记，该建筑物上还有一个大红色的猎人标记图标|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_施放|r |T136158:0|t[阿彻鲁斯虹吸] (1) |cRXP_WARN_在新阿瓦隆市政厅|r
    >>|cRXP_WARN_务必避开|r |cRXP_ENEMY_血色十字军|r |cRXP_WARN_。施放|r |T136119:0|t[召唤食尸鬼]（2）|cRXP_WARN_也能提供些许干扰|r
    >>|cFFFF0000此步骤没有箭头。建筑物的所在地区在你的地图上已标记，该建筑物上还有一个大红色的猎人标记图标|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_施放|r |T136158:0|t[阿彻鲁斯虹吸] (1) |cRXP_WARN_在赤色烈焰礼拜堂|r
    >>|cRXP_WARN_务必避开|r |cRXP_ENEMY_血色十字军|r |cRXP_WARN_。施放|r |T136119:0|t[召唤食尸鬼]（2）|cRXP_WARN_也能提供些许干扰|r
    >>|cFFFF0000此步骤没有箭头。建筑物的所在地区在你的地图上已标记，该建筑物上还有一个大红色的猎人标记图标|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >>|cRXP_WARN_按下Escape或|r |T136190:0|t[召回阿彻鲁斯之眼] (5) |cRXP_WARN_来返回黑锋要塞|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_巫妖王|r交谈
    .target 巫妖王
    .turnin 12641 >>交任务 天降厄运
    .accept 12657 >>接受任务 天灾的力量
step
    #completewith next
    .goto 124,50.516,33.404,5 >>踩上紫色传送器以前往下层
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .target 大领主达里安·莫格莱尼
    .turnin 12657 >>交任务 天灾的力量
    .accept 12850 >>接受任务 向天灾指挥官萨拉诺尔报到
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r对话
    >>|cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r |cRXP_WARN_会小范围巡逻|r
    .target 天灾指挥官萨拉诺尔
    .turnin 12850 >>交任务 向天灾指挥官萨拉诺尔报到
    .accept 12670 >>接受任务 血色收割
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>骑乘|cRXP_FRIENDLY_天灾狮鹫|r 飞往死亡裂口
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉纳王子|r对话
    .target 瓦拉纳王子
    .turnin 12670 >>交任务 血色收割
    .accept 12678 >>接受任务 混乱战车，苦痛驭之
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑手萨拉纳尔|r对话
    >>|cRXP_FRIENDLY_骑手萨拉纳尔|r |cRXP_WARN_在死亡裂口巡逻|r
    .accept 12680 >>接受任务 阿彻鲁斯战马
    .target 骑手萨拉纳尔
step
    .goto 124,54.5,34.2
    .target 战斗召唤者奥尔伦
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战斗召唤者奥尔伦|r对话
    .accept 12733 >>接受任务 死亡的挑战
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target 骑手萨拉纳尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑手萨拉纳尔|r对话
    >>|cRXP_FRIENDLY_骑手萨拉纳尔|r |cRXP_WARN_在死亡裂口巡逻|r
    .accept 12680 >>接受任务 阿彻鲁斯战马
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target 遮天蔽日者奥里托斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_遮天者奥里索斯|r对话
    >>|cRXP_FRIENDLY_遮天者奥里索斯|r |cRXP_WARN_在死亡裂口巡逻|r
    .accept 12679 >>接受任务 今夜，我们在海文郡欢宴！
step
	#completewith next
	>>击杀 |cRXP_ENEMY_血色十字军战士|r 和 |cRXP_ENEMY_海文郡预备兵|r。拾取地上的 |cRXP_PICK_萨隆邪铁箭矢|r
    >>|cRXP_WARN_现在不要特意去完成这个|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob 血色医者
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>召唤一只 |cRXP_FRIENDLY_海文郡雌马|r 或 |cRXP_FRIENDLY_海文郡雄马|r。骑乘回到死亡裂口
    >>|cRXP_WARN_务必避开在该区域巡逻的精英|cRXP_ENEMY_马厩管理员基特里克|r|r
    .target 海文郡母马
    .target 海文郡种马
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_骑乘回死亡裂口|r
    >>|cRXP_WARN_施放|r |T132226:0|t[急奔] (2) |cRXP_WARN_来增加移动速度|r
    >>|cRXP_WARN_施放|r |T132261:0|t[上缴取来的马] (1) |cRXP_WARN_在|r |cRXP_FRIENDLY_骑兵队长萨拉纳尔|r处使用一次
    >>|cRXP_FRIENDLY_骑手萨拉纳尔|r |cRXP_WARN_在死亡裂口巡逻|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target 骑手萨拉纳尔
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑手萨拉纳尔|r对话
    .turnin 12680 >>交任务 阿彻鲁斯战马
    .target 骑手萨拉纳尔
    .accept 12687 >>接受任务 进入暗影界
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >>杀死一名 |cRXP_ENEMY_阿彻鲁斯黑暗骑士|r。之后召唤 |cRXP_FRIENDLY_阿彻鲁斯死亡战马|r
    .mob 阿克鲁斯暗骑士
    .target 阿克鲁斯死亡战马
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >>回到死亡裂口
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_施放|r |T136129:0|t[骑手的召唤]（1次）|cRXP_WARN_在死亡裂口处使用一次。等待短暂的剧情动画结束|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target 骑手萨拉纳尔
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑手萨拉纳尔|r对话
    .turnin 12687 >>交任务 进入暗影界
step
	#completewith DuelDK
	.cast 48778 >>|cRXP_WARN_你现在已经拥有|r |T237534:0|t[阿彻鲁斯死亡战马]|cRXP_WARN_。记得从坐骑面板（默认快捷键：Shift+P）将它添加到你的动作条上|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>击杀 |cRXP_ENEMY_血色十字军战士|r 和 |cRXP_ENEMY_海文郡预备兵|r。拾取地上的 |cRXP_PICK_萨隆邪铁箭矢|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob 血色医者
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>与|cRXP_FRIENDLY_死亡骑士新兵|r对话，并在决斗中击败他们
	>>|cRXP_WARN_不要跑出30码的对战范围|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target 死亡骑士见习成员
    .mob 死亡骑士见习成员
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target 遮天蔽日者奥里托斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_遮天者奥里索斯|r对话
    >>|cRXP_FRIENDLY_遮天者奥里索斯|r |cRXP_WARN_在死亡裂口巡逻|r
    .turnin 12679 >>交任务 今夜，我们在海文郡欢宴！
step
    .goto 124,54.5,34.2
    .target 战斗召唤者奥尔伦
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_战斗召唤者奥尔伦|r对话
    .turnin 12733 >>交任务 死亡的挑战
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉纳王子|r对话
    .target 瓦拉纳王子
    .turnin 12678 >>交任务 混乱战车，苦痛驭之
    .accept 12697 >>接受任务 收割者戈提克
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收割者戈提克|r 对话
    .target 收割者戈提克
    .turnin 12697 >>交任务 收割者戈提克
    .accept 12698 >>接受任务 惊喜连连
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_进入海文郡矿洞|r
    .use 39253 >>|cRXP_WARN_在|r |T133882:0|t[收割者的礼物] |cRXP_WARN_用于|cRXP_ENEMY_血色矿工|r，趁他们脱离战斗时使用。不要击杀或攻击他们|r
    >>|cRXP_WARN_当你拥有5只|cRXP_FRIENDLY_血色食尸鬼|r跟随你时，返回|r |cRXP_ENEMY_收割者戈提克|r处
    >>|cRXP_WARN_击杀任意与你交战的|cRXP_ENEMY_血色鬼魂|r|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_收割者戈提克|r对话
    .target 收割者戈提克
    .turnin 12698 >>交任务 惊喜连连
    .accept 12700 >>接受任务 伺机待发
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉纳王子|r对话
    .turnin 12700 >>交任务 伺机待发
    .accept 12701 >>接受任务 炮轰圣光哨站
    .target 瓦拉纳王子
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_沿着箭头前往血色舰船。从小山丘上跳下|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >>|cRXP_WARN_再次从下方跳下|r
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >>|cRXP_WARN_沿着坡道跑上血色战舰。进入|r |cRXP_PICK_血色火炮|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_施放|r |T136186:0|t[血色火炮] (1) |cRXP_WARN_来击杀|r |cRXP_ENEMY_血色舰队防御者|r
    >>|cRXP_WARN_施放|r |T136099:0|t[电磁脉冲] (2) |cRXP_WARN_如果任何 |cRXP_ENEMY_血色舰队防御者|r 开始近距离攻击你的加农炮|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>vehicle,52588,52589 >>|cRXP_WARN_施放|r |T135766:0|t[骷髅狮鹫] (5) |cRXP_WARN_回到死亡裂口|r
    .timer 70,死亡裂口飞行
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉纳王子|r对话
    .target 瓦拉纳王子
    .turnin 12701 >>交任务 炮轰圣光哨站
    .accept 12706 >>接受任务 死亡裂口大捷！
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >>骑上|cRXP_FRIENDLY_天灾狮鹫|r返回阿彻鲁斯
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .target 大领主达里安·莫格莱尼
    .turnin 12706 >>交任务 死亡裂口大捷！
    .accept 12714 >>接受任务 巫妖王的意志
step
    .goto 124,47.472,26.550
    .target 索瓦尔勋爵
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索瓦尔勋爵|r对话
    .accept 12849 >>接受任务 鲜血、冰霜与邪恶的力量
	.turnin 12849 >>交任务 鲜血、冰霜与邪恶的力量
	.trainer >>训练你的职业技能 << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>骑乘|cRXP_FRIENDLY_天灾狮鹫|r 飞往死亡裂口
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉纳王子|r对话
    .target 瓦拉纳王子
    .turnin 12714 >>交任务 巫妖王的意志
    .accept 12715 >>接受任务 追忆墓穴
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肮脏的哈古斯|r 对话
    >>|cRXP_BUY_从他那里购买20个|r |T133849:0|t[尸尘] |cRXP_WARN_|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>点击|cRXP_PICK_被遗弃的信件|r
    >>|cRXP_WARN_你也可以使用这个 |cRXP_PICK_邮箱|r 如果你想给自己发送任何物品|r
    .turnin 12711 >>交任务 被遗弃的信件
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师诺斯|r对话
    .target 诺斯·瘟疫使者
    .accept 12716 >>接受任务 药剂师的要求
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >>进入追忆墓穴
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯雷塞斯王子|r对话
    .target 凯勒塞斯王子
    .turnin 12715 >>交任务 追忆墓穴
    .accept 12719 >>接受任务 无路可逃，无处可藏
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞文戴尔男爵|r对话
    .target 瑞文戴尔男爵
    .accept 12722 >>接受任务 羊入虎口
step
	#completewith QuimbyRegistry
	>>击杀 |cRXP_ENEMY_血色十字军敌人|r 和 |cRXP_ENEMY_新阿瓦隆预备兵|r。拾取他们的 |cRXP_LOOT_十字军徽记|r
    >>|cRXP_WARN_现在不要特意去完成这个|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >>返回新阿瓦隆市政厅
step
    #label QuimbyRegistry
	>>击杀 |cRXP_ENEMY_奎比镇长|r。拾取桌子上的 |cRXP_PICK_新阿瓦隆户籍册|r
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >>回到追忆墓穴
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯雷塞斯王子|r对话
    .target 凯勒塞斯王子
    .turnin 12719 >>交任务 无路可逃，无处可藏
    .accept 12720 >>接受任务 说服者
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞文戴尔男爵|r对话
    .target 瑞文戴尔男爵
    .turnin 12722 >>交任务 羊入虎口
step
	#completewith Dawn
	>>击杀 |cRXP_ENEMY_血色十字军敌人|r 和 |cRXP_ENEMY_新阿瓦隆预备兵|r。拾取他们的 |cRXP_LOOT_十字军徽记|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>拾取铁匠铺内墙上的|cRXP_PICK_铁链|r
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >>进入旅店
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>拾取在地下室的 |cRXP_PICK_空大锅|r
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >>|cRXP_WARN_打开|r |T132595:0|t[精致的珠宝箱] |cRXP_WARN_以获取2个|r |T135271:0|t[凯雷塞斯的说服者]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >>|cRXP_WARN_装备|r |T135271:0|t[凯雷塞斯的说服者] |cRXP_WARN_在你的主手|r
    .equip 17,39371 >>|cRXP_WARN_装备|r |T135271:0|t[凯雷塞斯的说服者] |cRXP_WARN_在你的副手|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_攻击任意|cRXP_ENEMY_血色十字军|r成员，直到任务完成。如果运气不好，这可能需要一小段时间才能完成|r
    >>|cRXP_WARN_你必须装备|r |T135271:0|t[凯雷塞斯的说服者] |cRXP_WARN_才能完成目标|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >>|cRXP_WARN_装备 |r |T135335:0|t[|cFF0070FF符文灵魂之剑|r]
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>击杀 |cRXP_ENEMY_血色十字军敌人|r 和 |cRXP_ENEMY_新阿瓦隆预备兵|r。拾取他们的 |cRXP_LOOT_十字军徽记|r
    >>|cRXP_ENEMY_新阿瓦隆的居民|r |cRXP_WARN_可以在建筑物内找到|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_药剂师诺斯|r对话
    .target 诺斯·瘟疫使者
    .turnin 12716 >>交任务 药剂师的要求
    .accept 12717 >>接受任务 诺斯的特殊药剂
step
    .goto 124,56.157,52.008
    >>点击|cRXP_PICK_瘟疫大锅|r
    .turnin 12717 >>交任务 诺斯的特殊药剂
step
    #optional
    .goto 124,56.157,52.008
    >>再次点击 |cRXP_PICK_瘟疫大锅|r
    .turnin 12718 >>交还更多颅骨来换取药剂
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >>回到追忆墓穴
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞文戴尔男爵|r对话
    .target 瑞文戴尔男爵
    .turnin 12722 >>交任务 羊入虎口
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯雷塞斯王子|r对话
    .target 凯勒塞斯王子
    .turnin 12720 >>交任务 说服者
    .accept 12723 >>接受任务 深入血色敌后
step
    #completewith next
    .goto 124,56.150,79.986,15 >>前往血色旅店。与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r和|cRXP_FRIENDLY_萨萨里安|r 在楼上对话
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r对话
    .target 奥尔巴兹·血毒
    .turnin 12723 >>交任务 深入血色敌后
    .accept 12724 >>接受任务 十字军的巡逻路线
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_萨萨里安|r对话
    .target 萨萨里安
    .accept 12725 >>接受任务 死亡骑士的兄弟情谊
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >>进入血色城堡，进入地下室
    >>|cRXP_WARN_不要释放灵魂（如果你死亡）。一名 |cRXP_FRIENDLY_瓦格里女武神|r 会复活你|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在地下室的 |cRXP_FRIENDLY_库尔迪拉·织亡者|r对话
    .target 库尔迪拉·织亡者
    .turnin 12725 >>交任务 死亡骑士的兄弟情谊
    .accept 12727 >>接受任务 杀出一条血路
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_不要防守|r|cRXP_FRIENDLY_库尔迪拉·织亡者|r
    >>前往顶层。拾取桌上的|cRXP_PICK_新阿瓦隆巡逻日程表|r
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>返回地下室的 |cRXP_FRIENDLY_库尔迪拉·织亡者|r处
    >>击杀|cRXP_ENEMY_瓦洛斯|r。拾取地上的|cRXP_PICK_高阶审判官瓦洛斯的遗骸|r以获得|cRXP_LOOT_瓦洛斯的徽记|r
	>>|cRXP_WARN_在等待|cRXP_FRIENDLY_瓦洛斯|r刷新时，你可能需要击杀攻击|cRXP_ENEMY_科尔提拉·死亡编织者|r的小怪|r
    >>|cRXP_WARN_如果剧情已完成，与 |cRXP_FRIENDLY_库尔迪拉·织亡者|r 再次对话以激发它|r
    >>|cRXP_WARN_站在|r |T136178:0|t[反魔法领域] |cRXP_WARN_以减少法术伤害|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>前往顶层。拾取桌上的|cRXP_PICK_新阿瓦隆巡逻日程表|r
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>点击|cRXP_PICK_瘟疫大锅|r
    .turnin 12718 >>交还更多颅骨来换取药剂
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >>回到血色旅店。与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r和|cRXP_FRIENDLY_萨萨里安|r 在楼上对话
step
	#completewith ACFV
	.destroy 39328 >>删除你拥有的任意的 |T133730:0|t[十字军徽记]
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r对话
    .target 奥尔巴兹·血毒
    .turnin 12724 >>交任务 十字军的巡逻路线
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_萨萨里安|r对话
    .target 萨萨里安
    .turnin 12727 >>交任务 杀出一条血路
    .accept 12738 >>接受任务 复仇的呐喊！
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r对话
    >>|cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r |cRXP_WARN_巡逻礼拜堂|r
    .turnin 12738 >>交任务 复仇的呐喊！
    .target 骑士指挥官瘟疫铁拳
    .accept 12748 >>接受任务 特殊的怜悯 << Orc
    .accept 12739 >>接受任务 特殊的怜悯 << Tauren
    .accept 12742 >>接受任务 特殊的怜悯 << Human
    .accept 12743 >>接受任务 特殊的怜悯 << NightElf
    .accept 12744 >>接受任务 特殊的怜悯 << Dwarf
    .accept 12745 >>接受任务 特殊的怜悯 << Gnome
    .accept 12746 >>接受任务 特殊的怜悯 << Draenei
    .accept 12747 >>接受任务 特殊的怜悯 << BloodElf
    .accept 12749 >>接受任务 特殊的怜悯 << Troll
    .accept 12750 >>接受任务 特殊的怜悯 << Undead
    .accept 28649 >>接受任务 特殊的怜悯 << Worgen
    .accept 28650 >>接受任务 特殊的怜悯 << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>短暂剧情后，击杀|cRXP_ENEMY_库格·铁颚|r
    .complete 12748,1 --Kug Ironjaw (1)
    .mob 库格·铁腭
step << Tauren
    .goto 124,54.505,83.856
	>>短暂剧情后，击杀|cRXP_ENEMY_玛拉尔·勇角|r
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob 马拉尔·勇角
step << Human
    .goto 124,53.536,83.785
	>>短暂剧情后，击杀 |cRXP_ENEMY_艾琳·斯坦布雷|r
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob 艾伦·斯坦桥
step << NightElf
    .goto 124,54.246,83.908
	>>短暂剧情后，击杀 |cRXP_ENEMY_亚米娜·橡刺|r
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob 雅兹明娜·橡荆
step << Dwarf
    .goto 124,54.018,83.285
	>>短暂剧情后，击杀|cRXP_ENEMY_多诺凡·普弗斯特|r
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob 多诺瓦·雪山n Pul冰霜
step << Gnome
    .goto 124,53.928,83.803
	>>短暂剧情后，击杀|cRXP_ENEMY_戈比·雷管|r
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob 戈比·爆破海默
step << Draenei
    .goto 124,54.538,83.423
	>>短暂剧情后，击杀|cRXP_ENEMY_正义的瓦洛克|r
    .complete 12746,1 -- Valok the Righteous (1)
    .mob 瓦洛克正义者
step << BloodElf
    .goto 124,54.285,83.303
	>>短暂剧情后，击杀|cRXP_ENEMY_艾欧妮丝女士|r
    .complete 12747,1 --Lady Eonys (1)
    .mob 伊欧妮丝女士
step << Troll
    .goto 124,53.801,83.756
	>>短暂剧情后，击杀|cRXP_ENEMY_伊吉·暗齿|r
    .complete 12749,1 --Iggy Darktusk(1)
    .mob 伊吉·暗牙
step << Undead
    .goto 124,53.542,83.304
	>>短暂剧情后，击杀|cRXP_ENEMY_安东尼·布拉克|r
    .complete 12750,1 -- Antoine Brack (1)
    .mob 安托万·布拉克
step << Worgen
    .goto 124,54.144,83.282
	>>短暂剧情后，击杀|cRXP_ENEMY_哈尔福特勋爵|r
    .complete 28649,1 -- Lord Harford (1)
    .mob 哈福德领主
step << Goblin
    .goto 124,54.113,83.753
	>>短暂剧情后，击杀|cRXP_ENEMY_加里·顽渍|r
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob 盖利·疙瘩污
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r对话
    >>|cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r |cRXP_WARN_巡逻礼拜堂|r
    .turnin 12748 >>交任务 特殊的怜悯 << Orc
    .turnin 12739 >>交任务 特殊的怜悯 << Tauren
    .turnin 12742 >>交任务 特殊的怜悯 << Human
    .turnin 12743 >>交任务 特殊的怜悯 << Nightelf
    .turnin 12744 >>交任务 特殊的怜悯 << Dwarf
    .turnin 12745 >>交任务 特殊的怜悯 << Gnome
    .turnin 12746 >>交任务 特殊的怜悯 << Draenei
    .turnin 12747 >>交任务 特殊的怜悯 << Bloodelf
    .turnin 12749 >>交任务 特殊的怜悯 << Troll
    .turnin 12750 >>交任务 特殊的怜悯 << Undead
    .turnin 28649 >>交任务 特殊的怜悯 << Worgen
    .turnin 28650 >>交任务 特殊的怜悯 << Goblin
    .target 骑士指挥官瘟疫铁拳
	.accept 12751 >>接受任务 欢迎回家
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >>回到血色旅店。与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r和|cRXP_FRIENDLY_萨萨里安|r 在楼上对话
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨萨里安|r对话
    .target 萨萨里安
    .turnin 12751 >>交任务 欢迎回家
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_奥尔巴兹·血毒|r 对话
    .target 奥尔巴兹·血毒
    .accept 12754 >>接受任务 悬崖伏击
step
    #completewith ScarletCourier
    .subzone 4360 >>前往血色悬崖
step
    #completewith ScarletCourier
    .cast 53061 >>|cRXP_WARN_使用|r |T136065:0|t[伪装工具] |cRXP_WARN_在血色悬崖|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>击杀 |cRXP_ENEMY_血色信使|r。拾取他的 |cRXP_LOOT_血色信使的衣物|r 和 |cRXP_LOOT_血色信使的信件|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob 血色信使
step
    #completewith next
    .goto 124,56.150,79.986,15 >>返回血色旅店。与楼上的|cRXP_FRIENDLY_奥尔巴兹·血毒|r 对话
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r对话
    .target 奥尔巴兹·血毒
    .turnin 12754 >>交任务 悬崖伏击
    .accept 12755 >>接受任务 命运的交汇点
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉尼亚·阿比迪斯|r对话
    .target 阿比迪斯将军
    .turnin 12755 >>交任务 命运的交汇点
    .accept 12756 >>接受任务 血色先锋军
step
    #completewith next
    .goto 124,56.150,79.986,15 >>返回血色旅店。与楼上的|cRXP_FRIENDLY_奥尔巴兹·血毒|r 对话
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与 |cRXP_FRIENDLY_奥尔巴兹·血毒|r对话
    .target 奥尔巴兹·血毒
    .turnin 12756 >>交任务 血色先锋军
    .accept 12757 >>接受任务 血色十字军进犯……
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >>|cRXP_WARN_穿过|cRXP_PICK_阿彻鲁斯传送门|r，它位于|r |cRXP_FRIENDLY_奥巴兹·血毒|r身后
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .target 大领主达里安·莫格莱尼
    .turnin 12757 >>交任务 血色十字军进犯……
    .accept 12778 >>接受任务 血色十字军的末日
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿曼萨加德|r 对话
    .target 阿曼萨加德
    .trainer >>训练你的职业技能
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>骑乘|cRXP_FRIENDLY_天灾狮鹫|r 飞往死亡裂口
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_巫妖王|r交谈
    .target 巫妖王
    .turnin 12778 >>交任务 血色十字军的末日
    .accept 12779 >>接受任务 万物的终结……
step
	#completewith next
	.use 39700
	.vehicle >>|cRXP_WARN_使用|r |T134228:0|t[冰霜巨龙号角] |cRXP_WARN_以骑乘|r |cRXP_FRIENDLY_冰霜征服者|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_施放|r |T135851:0|t[冰冷死亡之箭] (1) |cRXP_WARN_击杀|cRXP_ENEMY_血色士兵|r并摧毁|r |cRXP_ENEMY_血色弩车|r
    >>|cRXP_WARN_施放|r |T136217:0|t[吞噬人型生物]（3）|cRXP_WARN_于一名|cRXP_ENEMY_血色十字军|r身上，以恢复生命值和法力值|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >>飞回|cRXP_FRIENDLY_巫妖王|r
step
    #completewith TLKC
    .exitvehicle >>|cRXP_WARN_退出|r |cRXP_FRIENDLY_冰霜征服者|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_巫妖王|r交谈
    .turnin 12779 >>交任务 万物的终结……
    .target 巫妖王
    .accept 12800 >>接受任务 巫妖王的命令
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >>穿过剧毒小径前往布洛米尔
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r对话
    .turnin 12800 >>交任务 巫妖王的命令
    .target 天灾指挥官萨拉诺尔
    .accept 12801 >>接受任务 黎明之光
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >>|cRXP_WARN_与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话以开始剧情演出|r
    >>|cRXP_WARN_如果他不在 |cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r 旁边，这意味着战斗正在进行或准备中，相关信息应该显示在你的屏幕顶部。移动到圣光之愿礼拜堂并等待剧情演出|r
    .skipgossip
    .subzoneskip 2268
    .target 大领主达里安·莫格莱尼
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_在圣光之愿礼拜堂等待剧情演出。你可以坐下，请在战斗期间远离战斗|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .turnin 12801 >>交任务 黎明之光
    .target 大领主达里安·莫格莱尼
    .accept 13165 >>接受任务 夺回阿彻鲁斯
step
    #optional
    .equip 16,38633 >>|cRXP_WARN_装备 |r |T132480:0|t[|cFF0070FF黑锋巨斧|r]
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >>|cRXP_WARN_装备 |r |T135335:0|t[|cFF0070FF黑锋重剑|r]
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >>|cRXP_WARN_施放|r |T135766:0|t[黑锋之门]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >>|cRXP_WARN_穿过|r |T135766:0|t[黑锋之门]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .target 大领主达里安·莫格莱尼
    .turnin 13165 >>交任务 夺回阿彻鲁斯
    .accept 13166 >>接受任务 黑锋要塞之战
    .trainer >>训练你的职业技能 << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >>踩上紫色传送点以前往上层
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_在|r |T136130:0|t[灰烬冰河符文] |cRXP_WARN_处，用|r |cRXP_PICK_符文熔炉|r为你的新武器铭刻符文
step
	#completewith Pwerk
	>>击杀|cRXP_ENEMY_天灾军团|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>击杀|cRXP_ENEMY_帕奇维克|r
    .complete 13166,1 --Patchwerk (1)
    .mob 帕奇沃克
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>击杀|cRXP_ENEMY_天灾军团|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >>踩上紫色传送器以前往下层
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .turnin 13166 >>交任务 黑锋要塞之战
    .target 大领主达里安·莫格莱尼
    .accept 13188 >>接受任务 王者之城 << Alliance
    .accept 13189 >>接受任务 萨鲁法尔的祝福 << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>乘传送门前往奥格瑞玛
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target 萨尔 << wotlk/cata
    .target 加尔鲁什·地狱咆哮 << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 13189 >>交任务 萨鲁法尔的祝福
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >>使用传送点前往诅咒之地
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>通过传送门前往暴风城
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瓦里安·乌瑞恩国王|r对话
    .target 瓦里安·乌瑞恩国王
    .turnin 13188 >>交任务 王者之城
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >>使用法师塔中的传送点前往诅咒之地
    .zoneskip Stormwind City,1
]])
