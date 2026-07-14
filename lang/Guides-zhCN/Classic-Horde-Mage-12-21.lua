if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 贫瘠之地 AOE
#version 1
#group RestedXP 部落法师 AOE攻略
#defaultfor Horde Mage
#next 17-21级 石爪山脉/荒芜之地 AoE

step << Mage
	#era/som
    #completewith next
	+请注意，你已选择了AOE攻略指南。AOE通常比单体法师难得多，但速度要快得多
step << Mage
	#som
	#phase 3-6
    #completewith next
	+请注意你已选择了 AoE 指南。AoE 通常比单目标法师困难得多，但由于最近 SoM 中 100% 任务经验值的变化，也变得更慢了
step
    .goto The Barrens,52.2,31.8
.target 图加·符文图腾
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .accept 870 >>接受任务 遗忘之池
step
    .goto The Barrens,52.2,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 842 >>交任务 十字路口征兵
.target 瑟格拉·黑棘
    .accept 844 >>接受任务 平原陆行鸟的威胁
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target 扎尔夫
>>与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
step
    .goto The Barrens,51.9,30.3
.target 加兹罗格
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
step
    .goto The Barrens,51.5,30.8
.target 索克
>>与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 保卫前沿哨所
    .accept 5041 >>接受任务 十字路口的补给品
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>获得十字路口的飞行点
step << Troll Mage
    >>不要去奥格瑞玛
    .goto The Barrens,51.5,30.3
>>与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6365 >>交任务 送往奥格瑞玛的肉
.target 迪弗拉克
    .accept 6384 >>接受任务 飞往奥格瑞玛
step
    .goto The Barrens,51.5,30.1
.target 药剂师赫布瑞姆
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .accept 848 >>接受任务菌类孢子
    .accept 1492 >>接受任务码头管理员迪兹维格
step
    #sticky
    #completewith next
    >>在此位置寻找[陈的空酒桶]。拾取它并接取任务，否则你稍后再来拿它
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step
    .goto The Barrens,55.6,26.6
    >>杀死该区域中的野猪人
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>如果你的背包中的有瑕疵的能量石剩余时间少于 10 分钟，丢弃它，然后回去在雅克塞罗斯旁边再拾取紫色石头
    .turnin 926 >>交任务 有瑕疵的能量石
step << !Undead
    #sticky
    #completewith BeakCave
    >>如果在进行有瑕疵的能量石任务时时间充裕，顺路击杀一些陆行鸟。拾取它们的喙
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>从这里跑上山
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>前往被火刃氏族兽人包围的洞穴
step << !Undead
    >>右键点击祭坛
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>击杀你看到的迅猛龙。拾取迅猛龙的头颅—你稍后会获得更多
    .complete 869,1 --Raptor Head (12)
step
    >>杀死陆行鸟。拾取他们的喙
    .goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    >>塔顶
    .goto The Barrens,51.5,30.9
>>与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 871 >>交任务 野猪人的袭击
.target 索克
    .accept 872 >>接受任务 前沿哨所的进攻
.target 达索克·快刀
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .accept 867 >>接受任务 鹰身强盗
step
    .goto The Barrens,52.2,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 844 >>交任务  平原陆行鸟的威胁
.target 瑟格拉·黑棘
    .accept 845 >>接受任务 斑马的威胁
step
    #sticky
    #completewith Crates
    >>在收集补给箱和击杀克雷尼格的同时，顺便击杀钢鬃野猪人
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>拾取该区域内的棕色箱子
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>击杀克里尼格·糟鼻。拾取他的獠牙
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>拾取该区域内的棕色箱子
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>完成击杀钢鬃野猪人
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>击杀你看到的任何斑马。拾取他们的斑马蹄
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target 雅克塞罗斯
>>与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 924 >>交任务  恶魔之种
step
    >>击杀你看到的任何斑马。拾取他们的蹄。在进入棘齿城前确保你有 4 个
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>建筑顶层
    .goto The Barrens,62.7,36.3
.target 加兹鲁维
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .accept 887 >>接受任务 南海海盗
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >>获取棘齿城飞行路径
step
    .goto The Barrens,63.0,37.2
.target 斯布特瓦夫
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .accept 894 >>接受任务 什么什么平衡器
step
    >>点击通缉告示。如果你愿意，也可以在这里使用银行
    .goto The Barrens,62.6,37.5
    .accept 895 >>接受任务 通缉：嘉维伊船长
step
    .goto The Barrens,62.4,37.7
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .accept 865 >>接受任务 一定是因为角
step
    .goto The Barrens,62.3,38.4
>>与 |cRXP_FRIENDLY_酿酒师德罗恩|r 对话
    .turnin 819 >>交任务  老陈的空酒桶
.target 酿酒师德罗恩
    .accept 821 >>接受任务 老陈的空酒桶
step
    #sticky
    #label Southsea
    >>击杀该区域内的南海海盗
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>杀死巴隆·朗绍尔。从他那里拾取他的头部
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 887 >>交任务  南海海盗
.target 加兹鲁维
    .accept 890 >>接受任务 丢失的货物
    .turnin 895 >>交任务  通缉：嘉维伊船长
step
    .goto The Barrens,63.3,38.4
>>与 |cRXP_FRIENDLY_码头管理员迪兹维格|r 对话
    .turnin 1492 >>交任务码头主管迪兹维格
    .turnin 890 >>交任务  丢失的货物
.target 码头管理员迪兹维格
    .accept 892 >>接受任务 丢失的货物
    .accept 896 >>接受任务 矿工的宝贝
step
    .goto The Barrens,62.7,36.3
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 892 >>交任务  丢失的货物
.target 加兹鲁维
    .accept 888 >>接受任务 被窃的货物
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >>飞往十字路口
step
    .goto The Barrens,51.5,30.8
.target 索克
>>与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .turnin 872 >>交任务  前沿哨所的进攻
step
    .goto The Barrens,52.2,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 845 >>交任务  斑马的威胁
.target 瑟格拉·黑棘
    .accept 903 >>接受任务 猎杀雌狮
step
    #sticky
    #completewith next
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .accept 850 >>接受任务科卡尔首领
    .accept 855 >>接受任务 半人马护腕
    .target 雷戈萨·死门
step
    #completewith KodobaneTurnin
    >>击杀|cRXP_ENEMY_科卡尔牧民|r 和 |cRXP_ENEMY_科卡尔风暴先知|r。拾取他们的 |cRXP_LOOT_半人马护腕|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>在 遗忘之池周围采集 |cRXP_LOOT_饱满的蘑菇|r
    >>|cRXP_WARN_这个任务不必现在完成|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_注意！|cRXP_ENEMY_ |r巴拉克·科多班恩|cRXP_ENEMY_ 的近战攻击伤害非常高，而且他还受到一名 |r科卡尔牧民|r 的保护。他们可以对你施放投网，并在远程对你进行射击
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格萨 |r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .target 雷戈萨·死门
step
    #sticky
    #completewith Claws
    >>击杀你看到的迅猛龙。拾取迅猛龙的头颅—你稍后会获得更多
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>现在不用着急把他们收集齐
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>击杀觅食的灰狼，拾取它们的爪子和獠牙
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>击杀鹰身人，拾取它们的爪子
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >>如果你还没有拿到重型尖刺钉锤，可以考虑尝试从弗朗恩·凝血处购买 << Druid/Warrior
    .vendor >>如果需要的话，去这家伙这里卖垃圾
step
    #sticky
    #completewith next
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>击杀迅猛龙，拾取它们的颅骨
    .complete 869,1 --Raptor Head (12)
step
    >>点击控制台
    .goto The Barrens,52.4,11.6
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step
    >>点击阀门
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>点击阀门。点击其中任何一个都会刷出小怪
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>点击控制台
    .goto The Barrens,52.4,11.6
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step
    >>击杀建筑物内的工匠斯尼格斯。拾取他的控制台钥匙
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step
    >>接受任务 打火钥匙
    .goto The Barrens,56.5,7.5
.target 维兹克兰克的伐木机
>>与 |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    .accept 858 >>接受任务 点火
step
    >>在这里升级到16级很重要，因为接下来的3个任务相当难。
	.xp 16 >>刷怪到16级
step
    >>击杀鲁格维兹主管（他在塔周围巡逻）。拾取他的打火钥匙
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>这将开始一个护送任务
    .goto The Barrens,56.5,7.5
>>与 |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    .turnin 858 >>交任务  点火
.target 维兹克兰克的伐木机
    .accept 863 >>接受任务 梅贝尔的隐形水
step
    #label Slugs
    >>在某个时刻会刷出2只小怪。击杀它们然后等待最后的剧情演出
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>在此区域刷怪，直到打到猫眼绿宝石为止
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>跑到奥格瑞玛的西门
step
    .goto Orgrimmar,38.79,85.68
    .trainer >>训练你的职业技能
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>与 |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .turnin 6384 >>交任务 飞往奥格瑞玛
.target 旅店老板格雷什卡
    .accept 6385 >>接受任务 双足飞龙驭手多拉斯
step
    >>跑到飞行管理员那里。不要飞往任何地方
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >>获取奥格瑞玛飞行点 << Undead
>>与 |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >>交任务 双足飞龙驭手多拉斯 << Troll Mage
.target 多拉斯
    .accept 6386 >>接受任务 返回十字路口 << Troll Mage
step
    >>跑到格罗玛什要塞
    .goto Orgrimmar,39.1,38.1
.target 佐尔·孤树
>>与 |cRXP_FRIENDLY_佐尔·孤树|r 对话
    .accept 1061 >>接受任务石爪之灵
step
    #completewith next
    .hs >>使用炉石返回十字路口
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target 扎尔夫
>>与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .turnin 6386 >>交任务 返回十字路口
step
    .goto The Barrens,51.9,30.3
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 869 >>交任务  追踪窃贼
.target 加兹罗格
    .accept 3281 >>接受任务 被偷走的银币
step
    .goto The Barrens,52.3,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 903 >>交任务  猎杀雌狮
.target 瑟格拉·黑棘
    .accept 881 >>接受任务 埃其亚基
step
    >>使用背包中的埃其亚基的号角来召唤埃其亚基。击杀他并拾取他的毛皮
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 881 >>交任务  埃其亚基
.target 瑟格拉·黑棘
    .accept 905 >>接受任务 在迅猛龙的巢穴里
step
    .goto The Barrens,52.20,31.90
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 870 >>交任务遗忘之池
.target 图加·符文图腾
    .accept 877 >>接受任务死水绿洲
step
    .goto The Barrens,52.00,31.60
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
step
    >>塔顶
    .goto The Barrens,51.6,30.9
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 867 >>交任务  鹰身强盗
.target 达索克·快刀
    .accept 875 >>接受任务 鹰身人首领
step
    .goto The Barrens,51.50,30.20
.target 药剂师赫布瑞姆
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .turnin 848 >>交任务菌类孢子
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>飞往棘齿城
step
    .goto The Barrens,63.0,37.2
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .turnin 863 >>交任务  梅贝尔的隐形水
.target 斯布特瓦夫
    .accept 1483 >>接受任务菲兹克斯
step
    .goto The Barrens,63.30,38.40
.target 码头管理员迪兹维格
>>与 |cRXP_FRIENDLY_码头管理员迪兹维格|r 对话
    .turnin 896 >>交任务  矿工的宝贝
step
    .goto The Barrens,62.40,37.70
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .accept 1069 >>接受任务深苔蜘蛛的卵
step
    >>拾取箱子
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>拾取箱子
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>击杀你看到的任何迅猛龙。拾取它们的角和羽毛。小心它们的痛击
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>打开宝箱并拾取被盗的银币
    >>保存你获得的赤鳞迅猛龙的羽毛以备后用
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>在水下点击冒泡的裂隙
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>击杀半人马。拾取它们的护腕
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>击杀湖边的任意半人马，直到他们刷出维罗格（他刷新时你会在聊天框看到喊话）
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>完成击杀迅猛龙。拾取它们的角
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>与曼科里克的妻子对话
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>将你的炉石设置到陶拉祖营地
step
    .goto The Barrens,44.5,59.2
.target 碎牙
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Crossroads >>飞往十字路口
step
    .goto The Barrens,51.9,30.3
.target 加兹罗格
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 3281 >>交任务  被偷走的银币
step
    .goto The Barrens,52.2,31.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 905 >>交任务  在迅猛龙的巢穴里
.target 瑟格拉·黑棘
    .accept 3261 >>接受任务 [DEPRECATED in 4.x] 乔恩·星眼
step
    .goto The Barrens,52.2,31.9
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 877 >>交任务 死水绿洲
.target 图加·符文图腾
    .accept 880 >>接受任务变异的生物
step
    .goto The Barrens,52.0,31.6
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .turnin 4921 >>交任务在战斗中失踪
step
    #sticky
	#completewith next
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 851 >>交任务  狂热的维罗戈
.target 雷戈萨·死门
    .accept 852 >>接受任务 赫兹鲁尔·血印
step
    .goto The Barrens,45.39,28.43
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 855 >>交任务  半人马护腕
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 851 >>交任务  狂热的维罗戈
.target 雷戈萨·死门
    .accept 852 >>接受任务 赫兹鲁尔·血印
step
    #sticky
	#label CeBracers
    >>击杀半人马。拾取它们的护腕
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >>赫兹鲁尔在哀嚎洞穴的大湖附近巡逻
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 852 >>交任务  赫兹鲁尔·血印
    .turnin 855 >>交任务  半人马护腕
step
    .goto The Barrens,45.37,28.43
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .accept 4021 >>接受任务 人马无双！
step
    >>这个任务很难单独完成。可以考虑找人组队，或者把它风筝到任务NPC所在的建筑附近击杀。
    >>如果太难就跳过
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 4021 >>交任务  人马无双！
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>击杀巫翼杀戮者。拾取它们的鹰身人首领之戒
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>击杀该区域内的草原徘徊者。拾取它们的獠牙
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>与 |cRXP_FRIENDLY_希雷斯·碎石|r 对话
    .turnin 1061 >>交任务石爪之灵
.target 希雷斯·碎石
    .accept 1062 >>接受任务地精侵略者
.target 玛卡巴·扁蹄
>>与 |cRXP_FRIENDLY_玛卡巴·扁蹄|r 对话
    .accept 6548 >>接受任务为我的村庄复仇
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21级 石爪山脉/荒芜之地 AoE
#version 1
#group RestedXP 部落法师 AOE攻略
#defaultfor Horde Mage
#next 21-30级 银松森林/希尔斯布莱德 AoE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>击杀该区域内的恐怖图腾
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>与 |cRXP_FRIENDLY_玛卡巴·扁蹄|r 对话
    .turnin 6548 >>交任务为我的村庄复仇
.target 玛卡巴·扁蹄
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
step
    >>从西侧的小路进入村庄。在开始里面的任务之前，确保先击杀全部6个蛮兵。击杀主帐篷前的格鲁迪格
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>开始保护卡雅的护送任务
    .goto Stonetalon Mountains,73.5,85.8
.target 卡雅·扁蹄
>>与 |cRXP_FRIENDLY_卡雅·扁蹄|r 对话
    .accept 6523 >>接受任务保护卡雅
step
     >>护送卡雅并紧跟在她身边。篝火处会刷出3个恐怖图腾。在她到达营地之前，先吃喝恢复好状态
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target 辛吉拉
>>与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .accept 6461 >>接受任务盗窃的蜘蛛
step
    #sticky
    #label deepmossegg
    >>点击树附近的蜘蛛卵
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>击杀该区域内的深苔结网蛛
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1483 >>交任务菲兹克斯
.target 菲兹克斯
    .accept 1093 >>接受任务超级收割机6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>击杀风险投资公司樵夫，同时寻找风险投资公司操作员来获得超级收割机6000型的设计图
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>击杀风险投资公司操作员，直到获得超级收割机6000型的设计图
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>完成击杀风险投资公司樵夫
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1093 >>交任务超级收割机6000
.target 菲兹克斯
    .accept 1094 >>接受任务新的指示
step
    .hs >>使用炉石返回陶拉祖营地
step
    .goto The Barrens,44.9,59.1
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 3261 >>交任务  [DEPRECATED in 4.x] 乔恩·星眼
.target 乔恩·星眼
    .accept 882 >>接受任务 伊沙姆哈尔
step
    #sticky
    #label Lizard
    >>击杀雷角蜥蜴。拾取它们的角
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>找到并击杀拉克塔曼尼（灰色科多兽）。拾取它们的蹄子。如果找不到就跳过这个任务。
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务拉克塔曼尼
step
    >>击杀大量野猪人。拾取它们的獠牙。留着你拿到的血岩碎片
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>绕着湖走并A海龟。拾取它们的龟壳
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>在该区域内击杀一只斑马。拾取斑马肉
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>在枯树处使用新鲜的斑马肉来召唤伊沙姆哈尔。击杀并拾取它的牙齿
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>跑回棘齿城
.target 加兹鲁维
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 888 >>交任务  被窃的货物
step
    .goto The Barrens,63.0,37.2
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 1094 >>交任务新的指示
.target 斯布特瓦夫
    .accept 1095 >>接受任务新的指示
step
    .goto The Barrens,62.4,37.6
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .turnin 865 >>交任务一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
step
    .goto The Barrens,62.3,38.4
.target 酿酒师德罗恩
>>与 |cRXP_FRIENDLY_酿酒师德罗恩|r 对话
    .turnin 821 >>交任务  老陈的空酒桶
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>飞往十字路口
step
    .goto The Barrens,52.2,31.9
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 880 >>交任务变异的生物
.target 图加·符文图腾
    .accept 1489 >>接受任务哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
step
    .goto The Barrens,52.0,31.6
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .turnin 899 >>交任务复仇的怒火
step
    >>塔顶
    .goto The Barrens,51.60,30.90
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 875 >>交任务  鹰身人首领
.target 达索克·快刀
    .accept 876 >>接受任务 塞瑞娜·血羽
step
    >>这会开启一个限时任务
    .goto The Barrens,51.4,30.2
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .turnin 848 >>交任务菌类孢子
.target 药剂师赫布瑞姆
    .accept 853 >>接受任务 药剂师扎玛
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>飞往陶拉祖营地
step
    .goto The Barrens,53.0,52.1
    >>击杀野猪人以获得血岩碎片
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务野猪人的内战
.target 碎牙
    .accept 5052 >>接受任务阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务阿迦玛甘的血岩碎片
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
.target 乔恩·星眼
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .accept 1130 >>接受任务 梅洛的关注
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 883 >>交任务拉克塔曼尼
step
    .goto The Barrens,44.8,59.1
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
.target 乔恩·星眼
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .accept 1130 >>接受任务 梅洛的关注
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>在这个区域搜索奥瓦坦卡（蓝色雷霆蜥蜴）。如果找到他，拾取他的尾刺并接受任务。如果找不到他，就跳过这个任务
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务奥瓦坦卡
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>击杀雷霆蜥蜴。拾取它们的血液
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
.target 乔恩·星眼
    .accept 913 >>接受任务 雷鹰的嘶鸣
step
    .goto The Barrens,44.9,59.1
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 884 >>交任务奥瓦坦卡
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
.target 乔恩·星眼
    .accept 913 >>接受任务 雷鹰的嘶鸣
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>击杀一只雷鹰。拾取它的翅膀
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 913 >>交任务  雷鹰的嘶鸣
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>交出你的血岩碎片，获取碎牙的风之魂的buff。如果你不小心卖掉了碎片，请跳过这一步
.target 碎牙
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 889 >>交任务 风之魂
step
    .goto Thunder Bluff,32.0,66.9,60 >>跑向电梯并乘坐它去雷霆崖
step
    .goto Thunder Bluff,45.814,64.711
    .home >>将你的炉石设置到雷霆崖
step
    .goto Thunder Bluff,61.538,80.919
>>与 |cRXP_FRIENDLY_梅洛·石蹄|r 对话
    .turnin 1130 >>交任务 梅洛的关注
.target 梅洛·石蹄
    .accept 1131 >>接受任务钢齿土狼
step
 	>>进入幻象之池
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target 药剂师扎玛
>>与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>训练你的职业技能
	>>先要洗成AoE天赋（如果你已经点了火法）
step
    .goto Thunder Bluff,28.4,27.7
.target 克拉莉斯·弗斯特
>>与 |cRXP_FRIENDLY_克拉莉斯·弗斯特|r 对话
    .accept 264 >>接受任务 至死方休
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >>开启雷霆崖飞行点
    .fly Crossroads >>飞往十字路口
step
    >>击杀塞瑞娜·血羽。拾取她的头颅
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>与 |cRXP_FRIENDLY_希雷斯·碎石|r 对话
    .turnin 1062 >>交任务地精侵略者
>>与 |cRXP_FRIENDLY_玛卡巴·扁蹄|r 对话
    .turnin 6629 >>交任务杀死格鲁迪格·黑云
    .turnin 6523 >>交任务保护卡雅
.target 玛卡巴·扁蹄
    .accept 6401 >>接受任务卡雅还活着
.target 希雷斯·碎石
    .accept 1063 >>接受任务巫婆长老
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target 辛吉拉
>>与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .turnin 6461 >>交任务盗窃的蜘蛛
step
    .goto Stonetalon Mountains,58.989,62.599
.target 菲兹克斯
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1095 >>交任务新的指示
step
    .goto Stonetalon Mountains,47.5,58.4
.target 塔姆拉·荒原
>>与 |cRXP_FRIENDLY_塔姆拉·荒原|r 对话
    .turnin 6401 >>交任务卡雅还活着
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>>开启烈日石居飞行点
step
    #completewith next
    .hs >>使用炉石返回雷霆崖
step
    .goto Thunder Bluff,70.00,30.90
>>与 |cRXP_FRIENDLY_玛加萨·恐怖图腾|r 对话
    .turnin 1063 >>交任务巫婆长老
.target 玛加萨·恐怖图腾
    .accept 1064 >>接受任务 被遗忘者的援助
step
    .goto Thunder Bluff,78.62,28.56
>>与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .turnin 1489 >>交任务哈缪尔·符文图腾
.target 大德鲁伊哈缪尔·符文图腾
    .accept 1490 >>接受任务纳拉·蛮鬃
step
    .goto Thunder Bluff,75.65,31.62
.target 纳拉·蛮鬃
>>与|cRXP_FRIENDLY_纳拉·蛮鬃|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
step
    .goto Thunder Bluff,23.00,21.0
>>与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 1064 >>交任务  被遗忘者的援助
.target 药剂师扎玛
    .accept 1065 >>接受任务 前往塔伦米尔
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>如果需要的话，训练你的职业法术
	>>如果你还没有洗天赋，请洗成冰法AOE天赋
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>飞往十字路口
step
    .goto The Barrens,51.60,30.90
	>>上楼
.target 达索克·快刀
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 876 >>交任务 塞瑞娜·血羽
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >>飞往奥格瑞玛
]])
