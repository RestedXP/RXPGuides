if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 12-17 贫瘠之地 AOE
#version 1
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 法师A怪快速升级指南
#defaultfor Horde Mage
#next 17-21级 石爪山脉/荒芜之地 AoE指南

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
    .goto 1413/1,-2666.68,-481.94--??
.target 图加·符文图腾
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .accept 870 >>接受任务 遗忘之池
step
    .goto 1413/1,-2666.68,-481.94
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 842 >>交任务 十字路口征兵
.target 瑟格拉·黑棘
    .accept 844 >>接受任务 平原陆行鸟的威胁
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target 扎尔夫
>>与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .accept 6365 >>接受任务 送往奥格瑞玛的肉
step
    .goto 1413/1,-2636.28,-434.64
.target 加兹罗格
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .accept 869 >>接受任务 追踪窃贼
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板伯兰德|r 对话
    .home >>将你的炉石设置到十字路口
    .target 旅店老板伯兰德·草风
step
    .goto 1413/1,-2595.75,-468.43
.target 索克
>>与 |cRXP_FRIENDLY_索克|r 对话
    .accept 871 >>接受任务 野猪人的袭击
    .accept 5041 >>接受任务 十字路口的补给品
step
    .goto 1413/1,-2595.75,-441.40
    .fp The Crossroads >>获得十字路口的飞行点
step << Troll Mage
    >>不要去奥格瑞玛
    .goto 1413/1,-2595.75,-434.64
>>与 |cRXP_FRIENDLY_迪弗拉克|r 对话
    .turnin 6365 >>交任务 送往奥格瑞玛的肉
.target 迪弗拉克
    .accept 6384 >>接受任务 飞往奥格瑞玛
step
    .goto 1413/1,-2595.75,-421.13
.target 药剂师赫布瑞姆
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .accept 848 >>接受任务 菌类孢子
    .accept 1492 >>接受任务码头管理员迪兹维格
step
    #sticky
    #completewith next
    >>在此位置寻找[陈的空酒桶]。拾取它并接取任务，否则你稍后再来拿它
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受任务 老陈的空酒桶
step
    .goto 1413/1,-3011.22,-184.66
    >>击杀该区域内的野猪人
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
    .goto 1413/1,-2484.28,126.12,20 >>从这里跑上山
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>前往被火刃氏族兽人包围的洞穴
step << !Undead
    >>右键点击祭坛
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>击杀你看到的迅猛龙。拾取迅猛龙的头颅—你稍后会获得更多
    .complete 869,1 --Raptor Head (12)
step
    >>杀死陆行鸟。拾取他们的喙
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>塔顶
    .goto 1413/1,-2595.75,-475.18
>>与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 871 >>交任务 野猪人的袭击
.target 索克
    .accept 872 >>接受任务 前沿哨所的进攻
.target 达索克·快刀
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .accept 867 >>接受任务 鹰身强盗
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69.0,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>拾取该区域内的棕色箱子
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>完成击杀钢鬃野猪人
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>击杀你看到的任何斑马。拾取他们的斑马蹄
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target 雅克塞罗斯
>>与 |cRXP_FRIENDLY_雅克塞罗斯|r 对话
    .turnin 924 >>交任务  恶魔之种
step
    >>击杀你看到的任何斑马。拾取他们的蹄。在进入棘齿城前确保你有 4 个
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>建筑顶层
    .goto 1413/1,-3730.68,-840.02
.target 加兹鲁维
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .accept 887 >>接受任务 南海海盗
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >>获取棘齿城飞行路径
step
    .goto 1413/1,-3761.08,-900.83
.target 斯布特瓦夫
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .accept 894 >>接受任务 什么什么平衡器
step
    >>点击通缉告示。如果你愿意，也可以在这里使用银行
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>接受任务 通缉：嘉维伊船长
step
    .goto 1413/1,-3700.28,-934.61
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .accept 865 >>接受任务 一定是因为角
step
    .goto 1413/1,-3690.15,-981.90
>>与 |cRXP_FRIENDLY_酿酒师德罗恩|r 对话
    .turnin 819 >>交任务 老陈的空酒桶
.target 酿酒师德罗恩
    .accept 821 >>接受任务 老陈的空酒桶
step
    #sticky
    #label Southsea
    >>击杀该区域内的南海海盗
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    >>杀死巴隆·朗绍尔。从他那里拾取他的头部
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 887 >>交任务  南海海盗
.target 加兹鲁维
    .accept 890 >>接受任务 丢失的货物
    .turnin 895 >>交任务  通缉：嘉维伊船长
step
    .goto 1413/1,-3791.48,-981.90
>>与 |cRXP_FRIENDLY_码头管理员迪兹维格|r 对话
    .turnin 1492 >>交任务码头管理员迪兹维格
    .turnin 890 >>交任务  丢失的货物
.target 码头管理员迪兹维格
    .accept 892 >>接受任务 丢失的货物
    .accept 896 >>接受任务 矿工的宝贝
step
    .goto 1413/1,-3730.68,-840.02
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 892 >>交任务  丢失的货物
.target 加兹鲁维
    .accept 888 >>接受任务 被窃的货物
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >>飞往十字路口
step
    .goto 1413/1,-2595.75,-468.43
.target 索克
>>与 |cRXP_FRIENDLY_索克|r 对话
    .turnin 5041 >>交任务  十字路口的补给品
    .turnin 872 >>交任务  前沿哨所的进攻
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .accept 850 >>接受任务 科卡尔首领
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
    .goto 1413/1,-1943.16,89.64
    >>潜入水下，前往 |cRXP_PICK_气泡裂隙|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>击杀 |cRXP_ENEMY_巴拉克·科多班恩|r，并拾取他的 |cRXP_LOOT_头颅|r
    >>|cRXP_WARN_注意！|cRXP_ENEMY_ |r巴拉克·科多班恩|cRXP_ENEMY_ 的近战攻击伤害非常高，而且他还受到一名 |r科卡尔牧民|r 的保护。他们可以对你施放投网，并在远程对你进行射击
    .complete 850,1 --Kodobane's Head (1)
    .mob 巴拉克·科多班恩
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
    .turnin 850 >>交任务  科卡尔首领
    .accept 851 >>接受任务 狂热的维罗戈
    .turnin 855 >>交任务  半人马护腕
    .target 雷戈萨·死门
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷戈萨|r 对话
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
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>现在不用着急把他们收集齐
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>击杀觅食的灰狼，拾取它们的爪子和獠牙
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>击杀鹰身人，拾取它们的爪子
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >>如果你还没有拿到重型尖刺钉锤，可以考虑尝试从弗朗恩·凝血处购买 << Druid/Warrior
    .vendor >>如果需要的话，去这家伙这里卖垃圾
step
    #sticky
    #completewith next
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>击杀迅猛龙，拾取它们的颅骨
    .complete 869,1 --Raptor Head (12)
step
    >>点击控制台
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>交任务  什么什么平衡器
    .accept 900 >>接受任务 什么什么平衡器
step
    >>点击阀门
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>点击阀门。点击其中任何一个都会刷出小怪
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>点击控制台
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>交任务  什么什么平衡器
    .accept 901 >>接受任务 什么什么平衡器
step
    >>击杀建筑物内的工匠斯尼格斯。拾取他的控制台钥匙
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>交任务  什么什么平衡器
    .accept 902 >>接受任务 什么什么平衡器
step
    >>接受任务 打火钥匙
    .goto 1413/1,-3102.42,1105.78
.target 维兹克兰克的伐木机
>>与 |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    .accept 858 >>接受任务 点火
step
    >>在这里升级到16级很重要，因为接下来的3个任务相当难。
	.xp 16 >>刷怪到16级
step
    >>击杀鲁格维兹主管（他在塔周围巡逻）。拾取他的打火钥匙
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>这将开始一个护送任务
    .goto 1413/1,-3102.42,1105.78
>>与 |cRXP_FRIENDLY_维兹克兰克的伐木机|r 对话
    .turnin 858 >>交任务  点火
.target 维兹克兰克的伐木机
    .accept 863 >>接受任务 梅贝尔的隐形水
step
    #label Slugs
    >>在某个时刻会刷出2只小怪。击杀它们然后等待最后的剧情演出
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>在此区域刷怪，直到打到猫眼绿宝石为止
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>跑到奥格瑞玛的西门
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >>训练你的职业技能
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
>>与 |cRXP_FRIENDLY_旅店老板格雷什卡|r 对话
    .turnin 6384 >>交任务 飞往奥格瑞玛
.target 旅店老板格雷什卡
    .accept 6385 >>接受任务 双足飞龙驭手多拉斯
step
    >>跑到飞行管理员那里。不要飞往任何地方
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    .fp Orgrimmar >>获取奥格瑞玛飞行点 << Undead
>>与 |cRXP_FRIENDLY_多拉斯|r 对话
    .turnin 6385 >>交任务 双足飞龙驭手多拉斯 << Troll Mage
.target 多拉斯
    .accept 6386 >>接受任务 返回十字路口 << Troll Mage
step
    >>跑到格罗玛什要塞
    .goto 1454/1,-4229.02,1917.48
.target 佐尔·孤树
>>与 |cRXP_FRIENDLY_佐尔·孤树|r 对话
    .accept 1061 >>接受任务石爪之灵
step
    #completewith next
    .hs >>使用炉石返回十字路口
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target 扎尔夫
>>与 |cRXP_FRIENDLY_扎尔夫|r 对话
    .turnin 6386 >>交任务 返回十字路口
step
    .goto 1413/1,-2636.28,-434.64
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 869 >>交任务  追踪窃贼
.target 加兹罗格
    .accept 3281 >>接受任务 被偷走的银币
step
    .goto 1413/1,-2676.82,-481.94.0
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 903 >>交任务  猎杀雌狮
.target 瑟格拉·黑棘
    .accept 881 >>接受任务 埃其亚基
step
    >>使用背包中的埃其亚基的号角来召唤埃其亚基。击杀他并拾取他的毛皮
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 881 >>交任务  埃其亚基
.target 瑟格拉·黑棘
    .accept 905 >>接受任务 在迅猛龙的巢穴里
step
    .goto 1413/1,-2666.68,-481.94.90
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 870 >>交任务  遗忘之池
.target 图加·符文图腾
    .accept 877 >>接受任务 死水绿洲
step
    .goto 1413/1,-2646.42,-522.480
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .accept 899 >>接受任务 复仇的怒火
    .accept 4921 >>接受任务 在战斗中失踪
step
    >>塔顶
    .goto 1413/1,-2605.88,-475.18
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 867 >>交任务  鹰身强盗
.target 达索克·快刀
    .accept 875 >>接受任务 鹰身人首领
step
    .goto 1413/1,-2595.75,-427.890
.target 药剂师赫布瑞姆
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .turnin 848 >>交任务 菌类孢子
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>飞往棘齿城
step
    .goto 1413/1,-3761.08,-900.83
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 902 >>交任务  什么什么平衡器
    .turnin 863 >>交任务 梅贝尔的隐形水
.target 斯布特瓦夫
    .accept 1483 >>接受任务菲兹克斯
step
    .goto 1413/1,-3791.48,-981.900
.target 码头管理员迪兹维格
>>与 |cRXP_FRIENDLY_码头管理员迪兹维格|r 对话
    .turnin 896 >>交任务  矿工的宝贝
step
    .goto 1413/1,-3700.28,-934.610
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .accept 1069 >>接受任务深苔蜘蛛的卵
step
    >>拾取箱子中的物品
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>拾取箱子中的物品
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>击杀你看到的任何迅猛龙。拾取它们的角和羽毛。小心它们的痛击
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>打开宝箱并拾取被盗的银币
    >>保存你获得的赤鳞迅猛龙的羽毛以备后用
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>在水下点击冒泡的裂隙
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>击杀半人马。拾取它们的护腕
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>击杀湖边的任意半人马，直到他们刷出维罗格（他刷新时你会在聊天框看到喊话）
    .goto 1413/1,-2742.68,-1209.59
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto 1413/1,-3023.38,-1234.58,25,0
	.goto 1413/1,-3000.07,-1208.23,25,0
	.goto 1413/1,-2959.54,-1196.75,25,0
	.goto 1413/1,-2953.46,-1241.34,25,0
	.goto 1413/1,-2977.78,-1304.17,25,0
	.goto 1413/1,-3029.46,-1324.44,25,0
	.goto 1413/1,-3066.95,-1311.61,25,0
	.goto 1413/1,-3059.86,-1264.31,25,0
	.goto 1413/1,-3023.38,-1234.58,25,0
    >>在死水绿洲周围收集 |cRXP_LOOT_饱满的蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>点击蛋。你需要从迅猛龙那里获得的赤鳞迅猛龙的羽毛
    .goto 1413/1,-2646.42,-1529.16
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    >>完成击杀迅猛龙。拾取它们的角
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>与曼科里克的妻子对话
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>将你的炉石设置到陶拉祖营地
step
    .goto 1413/1,-1886.42,-2387.20
.target 碎牙
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .accept 878 >>接受任务野猪人的内战
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >>获得陶拉祖营地的飞行点
    .fly Crossroads >>飞往十字路口
step
    .goto 1413/1,-2636.28,-434.64
.target 加兹罗格
>>与 |cRXP_FRIENDLY_加兹罗格|r 对话
    .turnin 3281 >>交任务  被偷走的银币
step
    .goto 1413/1,-2666.68,-481.94
>>与 |cRXP_FRIENDLY_瑟格拉·黑棘|r 对话
    .turnin 905 >>交任务  在迅猛龙的巢穴里
.target 瑟格拉·黑棘
    .accept 3261 >>接受任务 [DEPRECATED in 4.x] 乔恩·星眼
step
    .goto 1413/1,-2666.68,-481.94--??
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 877 >>交任务  死水绿洲
.target 图加·符文图腾
    .accept 880 >>接受任务 变异的生物
step
    .goto 1413/1,-2646.42,-522.48
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .turnin 4921 >>交任务在战斗中失踪
step
    #sticky
	#completewith next
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-1976.6,-308.30
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 851 >>交任务  狂热的维罗戈
.target 雷戈萨·死门
    .accept 852 >>接受任务 赫兹鲁尔·血印
step
    .goto 1413/1,-1976.6,-308.30
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 855 >>交任务  半人马护腕
    .isQuestComplete 855
step
    .goto 1413/1,-1976.6,-308.30
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
    .goto 1413/1,-2025.24,-1144.050
    >>赫兹鲁尔在哀嚎洞穴的大湖附近巡逻
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 852 >>交任务  赫兹鲁尔·血印
    .turnin 855 >>交任务  半人马护腕
step
    .goto 1413/1,-1974.58,-308.30
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .accept 4021 >>接受任务 人马无双！
step
    >>这个任务很难单独完成。可以考虑找人组队，或者把它风筝到任务NPC所在的建筑附近击杀。
    >>如果太难就跳过
    .goto 1413/1,-1869.19,-288.71
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto 1413/1,-1976.6,-308.98
.target 雷戈萨·死门
>>与 |cRXP_FRIENDLY_雷戈萨·死门|r 对话
    .turnin 4021 >>交任务  人马无双！
step
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67
    >>击杀巫翼杀戮者。拾取它们的鹰身人首领之戒
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>击杀该区域内的草原徘徊者。拾取它们的獠牙
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>与 |cRXP_FRIENDLY_希雷斯·碎石|r 对话
    .turnin 1061 >>交任务石爪之灵
.target 希雷斯·碎石
    .accept 1062 >>接受任务地精侵略者
.target 玛卡巴·扁蹄
>>与 |cRXP_FRIENDLY_玛卡巴·扁蹄|r 对话
    .accept 6548 >>接受任务为我的村庄复仇
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 17-21级 石爪山脉/荒芜之地 AoE指南
#version 1
#group RestedXP魔兽世界无限练级指南（部落版）
#subgroup 法师A怪快速升级指南
#defaultfor Horde Mage
#next 21-30 银松森林/希尔斯布莱德 AoE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    >>击杀该区域内的恐怖图腾
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>与 |cRXP_FRIENDLY_玛卡巴·扁蹄|r 对话
    .turnin 6548 >>交任务为我的村庄复仇
.target 玛卡巴·扁蹄
    .accept 6629 >>接受任务杀死格鲁迪格·黑云
step
    >>从西侧的小路进入村庄。在开始里面的任务之前，确保先击杀全部6个蛮兵。击杀主帐篷前的格鲁迪格
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>开始保护卡雅的护送任务
    .goto 1442/1,-343.42,122.80
.target 卡雅·扁蹄
>>与 |cRXP_FRIENDLY_卡雅·扁蹄|r 对话
    .accept 6523 >>接受任务保护卡雅
step
     >>护送卡雅并紧跟在她身边。篝火处会刷出3个恐怖图腾。在她到达营地之前，先吃喝恢复好状态
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
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
    .goto 1442/1,437.92,435.4,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto 1442/1,365.2,878.29
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1483 >>交任务菲兹克斯
.target 菲兹克斯
    .accept 1093 >>接受任务 超级收割机6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>击杀风险投资公司樵夫，同时寻找风险投资公司操作员来获得超级收割机6000型的设计图
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>击杀风险投资公司操作员，直到获得超级收割机6000型的设计图
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>完成击杀风险投资公司樵夫
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto 1442/1,365.2,878.29
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1093 >>交任务超级收割机6000
.target 菲兹克斯
    .accept 1094 >>接受任务 新的指示
step
    .hs >>使用炉石返回陶拉祖营地
step
    .goto 1413/1,-1926.95,-2380.44
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
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>找到并击杀拉克塔曼尼（灰色科多兽）。拾取它们的蹄子。如果找不到就跳过这个任务。
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接受任务 拉克塔曼尼
step
    >>击杀大量野猪人。拾取它们的獠牙。留着你拿到的血岩碎片
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
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
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>在该区域内击杀一只斑马。拾取斑马肉
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>在枯树处使用新鲜的斑马肉来召唤伊沙姆哈尔。击杀并拾取它的牙齿
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>击杀陆行鸟。拾取它们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>跑回棘齿城
.target 加兹鲁维
>>与 |cRXP_FRIENDLY_加兹鲁维|r 对话
    .turnin 888 >>交任务  被窃的货物
step
    .goto 1413/1,-3761.08,-900.83
>>与 |cRXP_FRIENDLY_斯布特瓦夫|r 对话
    .turnin 1094 >>交任务 新的指示
.target 斯布特瓦夫
    .accept 1095 >>接受任务 新的指示
step
    .goto 1413/1,-3700.28,-927.85
.target 麦伯克·米希瑞克斯
>>与 |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r 对话
    .turnin 865 >>交任务  一定是因为角
    .turnin 1069 >>交任务深苔蜘蛛的卵
step
    .goto 1413/1,-3690.15,-981.90
.target 酿酒师德罗恩
>>与 |cRXP_FRIENDLY_酿酒师德罗恩|r 对话
    .turnin 821 >>交任务 老陈的空酒桶
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>飞往十字路口
step
    .goto 1413/1,-2666.68,-481.94--??
>>与 |cRXP_FRIENDLY_图加·符文图腾|r 对话
    .turnin 880 >>交任务  变异的生物
.target 图加·符文图腾
    .accept 1489 >>接受任务 哈缪尔·符文图腾
    .accept 3301 >>接受任务茉拉·符文图腾
step
    .goto 1413/1,-2646.42,-522.48
.target 曼科里克
>>与 |cRXP_FRIENDLY_曼科里克|r 对话
    .turnin 899 >>交任务复仇的怒火
step
    >>塔顶
    .goto 1413/1,-2605.88,-475.180
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 875 >>交任务  鹰身人首领
.target 达索克·快刀
    .accept 876 >>接受任务 塞瑞娜·血羽
step
    >>这会开启一个限时任务
    .goto 1413/1,-2585.62,-427.89
>>与 |cRXP_FRIENDLY_药剂师赫布瑞姆|r 对话
    .turnin 848 >>交任务 菌类孢子
.target 药剂师赫布瑞姆
    .accept 853 >>接受任务药剂师扎玛
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>飞往陶拉祖营地
step
    .goto 1413/1,-2747.75,-1907.51
    >>击杀野猪人以获得血岩碎片
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 878 >>交任务野猪人的内战
.target 碎牙
    .accept 5052 >>接受任务阿迦玛甘的血岩碎片
    .turnin 5052 >>交任务阿迦玛甘的血岩碎片
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
.target 乔恩·星眼
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .accept 1130 >>接受任务 梅洛的关注
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 883 >>交任务拉克塔曼尼
step
    .goto 1413/1,-1916.82,-2380.44
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 882 >>交任务  伊沙姆哈尔
.target 乔恩·星眼
    .accept 907 >>接受任务 被激怒的雷霆蜥蜴
    .accept 1130 >>接受任务 梅洛的关注
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25.0,0
    >>在这个区域搜索奥瓦坦卡（蓝色雷霆蜥蜴）。如果找到他，拾取他的尾刺并接受任务。如果找不到他，就跳过这个任务
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>接受任务 奥瓦坦卡
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>击杀雷霆蜥蜴。拾取它们的血液
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
.target 乔恩·星眼
    .accept 913 >>接受任务 雷鹰的嘶鸣
step
    .goto 1413/1,-1926.95,-2380.44
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 884 >>交任务奥瓦坦卡
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 907 >>交任务  被激怒的雷霆蜥蜴
.target 乔恩·星眼
    .accept 913 >>接受任务 雷鹰的嘶鸣
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>击杀一只雷鹰。拾取它的翅膀
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target 乔恩·星眼
>>与 |cRXP_FRIENDLY_乔恩·星眼|r 对话
    .turnin 913 >>交任务 雷鹰的嘶鸣
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>交出你的血岩碎片，获取碎牙的风之魂的buff。如果你不小心卖掉了碎片，请跳过这一步
.target 碎牙
>>与 |cRXP_FRIENDLY_碎牙|r 对话
    .turnin 889 >>交任务 风之魂
step
    .goto 1456/1,182.67,-1315.51,60 >>跑向电梯并乘坐它去雷霆崖
step
    .goto 1456/1,38.48,-1300.28
    .home >>将你的炉石设置到雷霆崖
step
    .goto 1456/1,-125.64,-1413.06
>>与 |cRXP_FRIENDLY_梅洛·石蹄|r 对话
    .turnin 1130 >>交任务 梅洛的关注
.target 梅洛·石蹄
    .accept 1131 >>接受任务 钢齿土狼
step
 	>>进入幻象之池
	.goto 1456/1,202.5,-1058.75.0,30,0
	.goto 1456/1,276.6,-996.120
.target 药剂师扎玛
>>与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 853 >>交任务药剂师扎玛
step
    .goto 1456/1,254.06,-995.78
    .trainer >>训练你的职业技能
	>>先要洗成AoE天赋（如果你已经点了火法）
step
    .goto 1456/1,220.24,-1042.75
.target 克拉莉斯·弗斯特
>>与 |cRXP_FRIENDLY_克拉莉斯·弗斯特|r 对话
    .accept 264 >>接受任务 至死方休
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >>开启雷霆崖飞行点
    .fly Crossroads >>飞往十字路口
step
    >>击杀塞瑞娜·血羽。拾取她的头颅
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
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
    .goto 1442/1,-235.98,-180.03
.target 辛吉拉
>>与 |cRXP_FRIENDLY_辛吉拉|r 对话
    .turnin 6461 >>交任务盗窃的蜘蛛
step
    .goto 1442/1,365.2,878.29
.target 菲兹克斯
>>与 |cRXP_FRIENDLY_菲兹克斯|r 对话
    .turnin 1095 >>交任务 新的指示
step
    .goto 1442/1,926.25,1015.02
.target 塔姆拉·荒原
>>与 |cRXP_FRIENDLY_塔姆拉·荒原|r 对话
    .turnin 6401 >>交任务 卡雅还活着
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>>开启烈日石居飞行点
step
    #completewith next
    .hs >>使用炉石返回雷霆崖
step
    .goto 1456/1,-213.96,-1065.010
>>与 |cRXP_FRIENDLY_玛加萨·恐怖图腾|r 对话
    .turnin 1063 >>交任务巫婆长老
.target 玛加萨·恐怖图腾
    .accept 1064 >>接受任务 被遗忘者的援助
step
    .goto 1456/1,-303.93,-1048.73
>>与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .turnin 1489 >>交任务  哈缪尔·符文图腾
.target 大德鲁伊哈缪尔·符文图腾
    .accept 1490 >>接受任务纳拉·蛮鬃
step
    .goto 1456/1,-272.93,-1070.02
.target 纳拉·蛮鬃
>>与|cRXP_FRIENDLY_纳拉·蛮鬃|r 对话
    .turnin 1490 >>交任务  纳拉·蛮鬃
step
    .goto 1456/1,276.6,-996.12
>>与 |cRXP_FRIENDLY_药剂师扎玛|r 对话
    .turnin 1064 >>交任务  被遗忘者的援助
.target 药剂师扎玛
    .accept 1065 >>接受任务 前往塔伦米尔
step
    .goto 1456/1,254.06,-995.78
    .trainer >>如果需要的话，训练你的职业法术
	>>如果你还没有洗天赋，请洗成冰法AOE天赋
step
    .goto 1456/1,28.19,-1197.92.0
    .fly The Crossroads >>飞往十字路口
step
    .goto 1413/1,-2605.88,-475.180
	>>上楼
.target 达索克·快刀
>>与 |cRXP_FRIENDLY_达索克·快刀|r 对话
    .turnin 876 >>交任务 塞瑞娜·血羽
step
    .goto 1413/1,-2595.75,-437.35
    .fly Orgrimmar >>飞往奥格瑞玛
]])
