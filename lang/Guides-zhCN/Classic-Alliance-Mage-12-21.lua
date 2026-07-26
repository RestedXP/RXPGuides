if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-18 黑海岸 法师 AoE攻略
#version 1
#group RestedXP 联盟 法师
#defaultfor Alliance Mage
#next 18-21 赤脊山 法师 AoE攻略

step
    #completewith next
    .goto Darkshore,36.77,44.28
    .vendor >>你可以从莱尔德（鱼类供应商）那里购买非常便宜的5级食物
step
    >>上楼到最顶层
    .goto Darkshore,36.98,44.14
.target 维兹班恩·曲针
>>与|cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
step
    >>向下跳到1楼
    .goto Darkshore,37.04,44.13
    .home >>将你的炉石设为奥伯丁
step
    .goto Darkshore,37.32,43.64
.target 巴瑞萨斯·月影
>>与|cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .accept 947 >>接受任务 洞中的蘑菇
step
    .goto Darkshore,37.68,43.38
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
step
    .goto Darkshore,38.84,43.41
.target 萨纳瑞恩·绿树
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
step
    .goto Darkshore,39.37,43.49
.target 特伦希斯
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
step
    .goto Darkshore,36.62,45.59
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
step
    .goto Darkshore,36.34,45.58
    .fp Auberdine >>开启奥伯丁飞行点
step
    #completewith Bear
     >>击杀沿着海岸的螃蟹
    .complete 983,1 --Crawler Leg (6)
step
    .goto Darkshore,36.38,50.88
     >>拾取海洋生物的战利品
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >>找到一只狂暴蓟熊。拉怪后，使用背包中的萨纳瑞恩的希望（紫色宝珠）
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,39.01,53.70
     >>朝着熊怪营地附近前进
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >>找到一只狂暴蓟熊。拉怪后，使用背包中的萨纳瑞恩的希望（紫色宝珠）
    .goto Darkshore,38.47,57.92
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,36.61,54.29,150,0
    .goto Darkshore,36.10,44.42
    >>击杀沿着海岸的螃蟹
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >>保存5份陆行鸟肉以备后用
    .collect 5469,5,2178,1
step
    .goto Darkshore,36.66,46.26
    .turnin 983 >>交任务 传声盒827号
    .accept 1001 >>接受任务 传声盒411号
step
    .goto Darkshore,36.62,45.59
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
.target 温尼斯·布莱葛
    .accept 4681 >>接受任务 搁浅的巨兽
step
    .goto Darkshore,36.73,44.06,40,0
    >>跑到码头
    .goto Darkshore,35.74,43.70
.target 塞瑞利恩·白爪
>>与|cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .accept 963 >>接受任务 永志不渝
step
    #sticky
    #completewith Thundris
     >>在海洋中击杀黑海岸蛇颈龙
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto Darkshore,33.70,42.45,60 >>跑到码头，然后在交叉路口跳进水中
step
    .goto Darkshore,31.86,46.33
    >>点击水下的海龟头部
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.62,45.59
    >>在返回岸边的途中击杀蛇颈龙
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4681 >>交任务 搁浅的巨兽
step
    .goto Darkshore,38.84,43.41
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
.target 萨纳瑞恩·绿树
    .accept 2138 >>接受任务 清除疫病
step
    .goto Darkshore,39.37,43.49
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
.target 特伦希斯
    .accept 985 >>接受任务 熊怪的威胁
    .accept 4761 >>接受任务 桑迪斯·织风
step
    >>击杀熊怪
    .goto Darkshore,39.83,56.11
    .goto Darkshore,39.74,53.76,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto Darkshore,39.37,43.48
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 985 >>交任务 熊怪的威胁
.target 特伦希斯
    .accept 986 >>接受任务 丢失的主人
step
    >>上楼
    .goto Darkshore,39.04,43.55
.target 哨兵艾莉萨·星风
>>与|cRXP_FRIENDLY_哨兵艾莉萨·星风|r 对话
    .accept 965 >>接受任务 奥萨拉克斯之塔
step
    .goto Darkshore,38.11,41.16
.target 高尔博德·钢手
>>与|cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .accept 982 >>接受任务 深不可测的海洋
step
    #label Thundris
    .goto Darkshore,37.39,40.13
>>与|cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
.target 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
    .accept 954 >>接受任务 巴莎兰
    .accept 958 >>接受任务 上层精灵的工具
step
     #label Threshers
     #sticky
     >>沿着海岸游泳，击杀蛇颈龙
    .complete 1001,1 --Thresher Eye (3)
step
    .goto Darkshore,38.93,29.33,40,0
    .goto Darkshore,38.23,28.79
     >>进入第1艘船（通过船体的破洞），然后前往其最低层的后部
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto Darkshore,40.30,27.69,40,0
    .goto Darkshore,39.63,27.45
     >>进入第2艘船（通过船体的破洞），然后前往其最低层的后部
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto Darkshore,41.96,28.64
    .turnin 1001 >>交任务 传声盒411号
    .accept 1002 >>接受任务 传声盒323号
step
    .goto Darkshore,41.94,31.47
    .accept 4723 >>接受任务 搁浅的海洋生物
step
    .goto Felwood,27.70,10.03
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 954 >>交任务 巴莎兰
.target 阿斯特利安
    .accept 955 >>接受任务 巴莎兰
step
    .goto Felwood,29.13,12.34
     >>击杀小劣魔。从它们身上拾取耳环
    .complete 955,1 --Grell Earring (8)
step
    .goto Felwood,27.70,10.03
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 955 >>交任务 巴莎兰
.target 阿斯特利安
    .accept 956 >>接受任务 巴莎兰
step
    .goto Felwood,29.60,12.52
     >>击杀萨特，拾取它们的印章
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto Felwood,27.70,10.03
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 956 >>交任务 巴莎兰
.target 阿斯特利安
    .accept 957 >>接受任务 巴莎兰
step
    #sticky
    #completewith ReadAndy
     >>击杀任意类型的月夜猛虎。从它们身上拾取獠牙
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>击杀看到的狂犬病蓟熊。保持至少50%法力值，在它们给你施加狂犬病（减益效果）之前将其轰杀
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto Darkshore,50.77,25.43
    >>使用背包中的空的水样试管
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +保留你拾取的小蛋，以后用来提升烹饪技能。保留你获得的所有轻羽毛，以后再用
step
    .goto Darkshore,47.11,48.63
     >>跑到山中的红色水晶处
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto Darkshore,40.30,59.73
.target 哨兵坦莎·月刃
>>与|cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .accept 953 >>接受任务 亚米萨兰的毁灭
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >>击杀阿纳雅·晨行者。她在亚米萨兰中部巡逻
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >>击杀幽灵。拾取它们身上的遗物
    .complete 958,1 --Highborne Relic (7)
step
    .goto Felwood,25.98,40.62
     >>点击地面上的石板
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Felwood,25.66,39.11
     >>点击亭子处的绿色火把
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Felwood,26.71,35.53
     >>点击地面上的石板
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto Darkshore,40.30,59.73
.target 哨兵坦莎·月刃
>>与|cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 953 >>交任务 亚米萨兰的毁灭
step
    .goto Darkshore,38.83,60.82
    >>完成击杀狂暴蓟皮熊并获取陆行鸟肉
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>拾取海龟
    .goto Darkshore,37.14,62.12
    .accept 4722 >>接受任务 搁浅的海龟
step
    >>拾取海龟
    .goto Darkshore,36.02,70.79
    .accept 4728 >>接受任务 搁浅的海洋生物
step
    .hs >>炉石回到奥伯丁
step
    .goto Darkshore,38.84,43.42
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2138 >>交任务 清除疫病
.target 萨纳瑞恩·绿树
    .accept 2139 >>接受任务 萨纳瑞恩的希望
step
    .goto Darkshore,38.11,41.17
.target 高尔博德·钢手
>>与|cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .turnin 982 >>交任务 深不可测的海洋
    .vendor >>从戈博尔德处购买一些甜香料，直到足够烹饪所有鸡蛋为止
step
    .goto Darkshore,37.69,40.66
    >>确保你的烹饪技能达到10点，否则无法接取/交还任务
.target 奥兰达利亚·夜歌
>>与|cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
step
    .goto Darkshore,37.40,40.13
>>与|cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 958 >>交任务 上层精灵的工具
    .turnin 4762 >>交任务 壁泉河
.target 桑迪斯·织风
    .accept 4763 >>接受任务 黑木熊怪的堕落
step
    .goto Darkshore,37.44,41.84
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .accept 729 >>接受任务 健忘的勘察员
step
    .goto Darkshore,37.71,43.36
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
.target 哨兵戈琳达·纳希恩
    .accept 4812 >>接受任务 清洗水晶
step
    .goto Darkshore,37.78,44.06
     >>在月亮井处填充空水瓶
    .complete 4812,1
     >>在月亮井处填充空盆
    .collect 12347,1,4763,1
step
    #completewith next
    .goto Darkshore,36.83,43.91
    .vendor >>从塔尔丹购买15级饮品
step
    >>回到码头
    .goto Felwood,18.10,18.48
.target 塞瑞利恩·白爪
>>与|cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .turnin 963 >>交任务 永志不渝
step
    .goto Darkshore,36.09,44.93
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .accept 1138 >>接受任务 海中的水果
step
    .goto Darkshore,36.62,45.59
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟
    .turnin 4723 >>交任务 搁浅的海洋生物
    .turnin 4728 >>交任务 搁浅的海洋生物 << Gnome
step
    .goto Darkshore,47.32,48.70
     >>点击红色水晶
    .turnin 4812 >>交任务 清洗水晶
    .accept 4813 >>接受任务 水晶中的碎骨
step
    #sticky
    #label MoonstalkersF
     >>击杀任意类型的月夜猛虎。从它们身上拾取獠牙
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto Darkshore,44.18,36.29
.target 阿斯特利安
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
step
    .goto Darkshore,50.66,34.98
    >>装备你的新魔杖
    >>从木桶中拾取黑木谷物样本，然后向东南方向跑向兽穴之母（不要与怪物战斗）
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>击杀巢穴之母。小心她的幼崽，它们会击倒你2秒
    >>刷到16级，如果觉得吃力就再试一次
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    >>从木桶中拾取黑木坚果样本
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>从木桶中拾取黑木水果样品。你前方以及西侧小屋之间会刷新一个怪物——可能需要跑动一下
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>对营地篝火附近的装满水的净化碗使用你背包中的道具。这会使附近所有熊怪变为友好状态。
    >>击杀在营地之间刷新并绕着篝火奔跑的萨特。从最大射程开始攻击，因为他可能比较难对付。击杀后拾取掉落在地上的篮子
    .goto Darkshore,52.38,33.29
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto Darkshore,54.98,32.79,35 >>前往瀑布上方的洞穴
step
    .goto Darkshore,55.66,34.89
     >>留在洞穴的上层区域。如果顶部尽头没有毒帽蘑菇，就跳下去从下面采集一个
     >>你采完毒帽蘑菇时，洞穴口的第一个蓝色蘑菇应该已经刷新了
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,54.97,24.89
>>与|cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 965 >>交任务 奥萨拉克斯之塔
.target 巴苏尔·影击
    .accept 966 >>接受任务 奥萨拉克斯之塔
step
    >>击杀黑暗缚灵者。从他们身上拾取羊皮纸
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step
    .goto Darkshore,54.97,24.89
>>与|cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 966 >>交任务 奥萨拉克斯之塔
.target 巴苏尔·影击
    .accept 967 >>接受任务 奥萨拉克斯之塔
step
    #requires MoonstalkersF
    .goto Darkshore,53.11,18.16
    .accept 4727 >>接受任务 搁浅的海龟
step
    #sticky
    #completewith Turtles
     >>沿着海岸击杀礁石爬行者，不要特意去完成这个任务——不要击杀等级高于你4级或以上的怪物
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto Darkshore,51.38,24.19,25,0
    .goto Darkshore,51.29,24.53
    .turnin 1002 >>交任务 传声盒323号
    .accept 1003 >>接受任务 传声盒525号
step
    #softcore
    #label Turtles
    >>保留一些附近的鱼人别杀光，接了这个任务后你会被它们打死
    .goto Darkshore,44.18,20.60
    .accept 4725 >>接受任务 搁浅的海龟
step
    #hardcore
    #label Turtles
    .goto Darkshore,44.18,20.60
    .accept 4725 >>接受任务 搁浅的海龟
step
    #softcore
    .deathskip >>在奥伯丁死亡并复活
step
    .goto Darkshore,37.40,40.13
    >>装备你的新魔杖
.target 桑迪斯·织风
>>与|cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4763 >>交任务 黑木熊怪的堕落
step
    .goto Darkshore,38.84,43.42
.target 萨纳瑞恩·绿树
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2139 >>交任务 萨纳瑞恩的希望
step
    .goto Darkshore,37.71,43.36
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4813 >>交任务 水晶中的碎骨
step
    .goto Darkshore,37.32,43.64
>>与|cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .turnin 947 >>交任务 洞中的蘑菇
.target 巴瑞萨斯·月影
    .accept 948 >>接受任务 安努
step
    .goto Darkshore,37.23,44.23
     >>点击旅馆外的悬赏令
    .accept 4740 >>接受任务 通缉：莫克迪普！
step
    .isQuestComplete 1138
    .goto Darkshore,36.09,44.93
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .turnin 1138 >>交任务 海中的水果
step
    #label end
    #requires bowl
    .goto Felwood,19.10,20.63
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4727 >>交任务 搁浅的海洋生物
    .turnin 4725 >>交任务 搁浅的海龟
step
     #completewith Murkdeep
     >>杀掉你遇到的任何月光追猎者之王，如果觉得没问题也杀掉女族长。从它们身上剥取毛皮。它们与灰须蓟熊共享刷新点。
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto Darkshore,38.60,80.50,0
     >>击杀灰须蓟熊。从它们身上拾取头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,43.55,76.29
>>与|cRXP_FRIENDLY_安努|r 对话
    .turnin 948 >>交任务 安努
.target 安努
    .accept 944 >>接受任务 主宰之剑
step
    #completewith next
    .goto Darkshore,43.69,76.64
    .vendor >>从提亚妮处购买15级的水
step << Human
    >>拾取遗骸
    .goto Darkshore,35.97,70.90
    .accept 4728 >>接受任务 搁浅的海洋生物
step
    #label Murkdeep
    .goto Darkshore,36.52,76.55
    >>清理鱼人营地，远离中央的篝火
    >>清理完所有东西后，移动到营地中央召唤莫克迪普
    >>如果你运气好的话，莫克迪普可能已经在西边约30码处的海岸边刷新了（如果之前有人死在他那里的话）。
    .complete 4740,1 --Murkdeep (1)
step
     >>沿着海岸击杀螃蟹，获取优质蟹肉
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>拾取遗骸
    .goto Darkshore,32.70,80.73
    .accept 4730 >>接受任务 搁浅的海洋生物
step
    >>拾取遗骸。小心，神谕者会施放90点伤害的闪电箭，且当其生命值低于55%时，会施放治疗波回满血。这里的龟头有视野
    >>始终为自己留好退路。潮猎人的威胁不算太大，但要注意他们伤害较低的毒液技能
    >>尽量把你的治疗药水留到后面再用，尤其是那些大型药水
    .goto Darkshore,31.70,83.72
    .accept 4731 >>接受任务 搁浅的海龟
step
    >>岛上的龟壳有视线要求
    .goto Darkshore,31.22,85.56
    .accept 4732 >>接受任务 搁浅的海龟
step
    >>从它的脖子处拾取，注意地形遮挡的2只怪（你只需击杀3只怪就能拾取这个）
    .goto Darkshore,31.28,87.39
    .accept 4733 >>接受任务 搁浅的海洋生物
step
    .goto Darkshore,35.72,83.69
.target 勘察员雷塔维
>>与|cRXP_FRIENDLY_勘察员雷塔维|r 对话
    .turnin 729 >>交任务 健忘的勘察员
step
    .goto Darkshore,35.72,83.69
     >>这个任务非常难。如果可能的话，和另一个玩家一起做。
     >>开始护送任务
.target 勘察员雷塔维
>>与|cRXP_FRIENDLY_勘察员雷塔维|r 对话
    .accept 731,1 >>接受任务 健忘的勘察员
step
     >>护送勘察员雷塔维
     >>让雷塔维仇恨所有怪物（怪物需要攻击他才会对他产生仇恨），然后用火球轰击怪物
     >>雷塔维非常脆弱，所以尽量从其他怪物那里接过仇恨
     >>当穴居人刷新时，对未被其攻击的那个使用变形术，然后在另一个击中他后将其爆发掉。在最后阶段附近刷新的法师射出火球击中勘探者之后，优先对其使用变形术
     >>如果你第一次做这个任务没成功，直接跳过就行——这个任务非常考验操作，而且也很看运气。
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >>杀掉你遇到的任何月光追猎者之王，如果觉得没问题也杀掉女族长。从它们身上剥取毛皮。它们与灰须蓟熊共享刷新点。
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>击杀平原陆行鸟。确保你至少留有1根轻羽毛以备后用
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto Darkshore,38.60,80.50,0
     >>击杀灰须蓟熊。从它们身上拾取头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>留意深渊之神。该物品掉率较低，是免费任务物品
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >>接受任务 深渊之神
step
    #label Glaive
    .goto Darkshore,38.30,87.12
     >>进入主宰之剑，清理中央祭坛周围的怪物
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto Darkshore,38.65,87.34
.target 瑟瑞露尼
>>与|cRXP_FRIENDLY_瑟瑞露尼|r 对话
    .accept 945 >>接受任务 护送瑟瑞露尼
step
     >>将占卜之碗从背包中丢到地上
    .turnin 944 >>交任务 主宰之剑
    .accept 949 >>接受任务 暮光之锤的营地
step
    .goto Darkshore,38.55,86.03
     >>点击基座上的书本。注意，如果你已经开始了任务，要小心瑟瑞露尼别跑掉
    .turnin 949 >>交任务 暮光之锤的营地
    .accept 950 >>接受任务 向安努回复
step
    #label Therylune
    #requires TheryluneE
    >>完成护送任务
    >>当你击杀最后一只通往战刃的怪物后，生起营火，将你身上剩余的肉/蛋全部烹饪，以提升烹饪技能等级
    >>你需要50点烹饪技术才能在夜色镇接到一个免费任务
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
     >>杀掉你遇到的任何月光追猎者之王，如果觉得没问题也杀掉女族长。从它们身上剥取毛皮。它们与灰须蓟熊共享刷新点
     >>如果你实在运气不好，刷怪和掉率都不理想，可以跳过这个任务
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto Darkshore,38.60,80.50
     >>击杀黑海岸南部各处的灰须蓟熊。拾取它们的头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,41.40,80.56
    .turnin 1003 >>交任务 传声盒525号
step
    #requires MoonstalkerP
    .goto Darkshore,43.55,76.29
.target 安努
>>与|cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
step
    #completewith next
    .goto Darkshore,43.69,76.63
    .vendor >>如果有需要的话，从提亚尼那里购买食物/饮料
step
    >>接受克罗尼亚的护送任务。如果他不在那里，跳过此步骤
    .goto Darkshore,44.40,76.42
.target Kerlonian Evershade
>>与|cRXP_FRIENDLY_克罗尼亚·恒影|r 对话
    .accept 5321 >>接受任务 苏醒者已醒
step
    .isOnQuest 5321
    >>拾取克罗尼亚旁边的小灰色箱子内的战利品
    .goto Darkshore,44.40,76.42
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto Ashenvale,26.84,36.74
    >>向南前往灰谷。将觉醒角力绑定到动作条上，当克罗尼亚原地走动并睡着时对他使用
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>与|cRXP_FRIENDLY_利拉迪斯·月河|r 对话
    .turnin 5321 >>交任务 苏醒者已醒
step
    .goto Ashenvale,26.19,38.70
.target 净化者德尔格伦
>>与|cRXP_FRIENDLY_净化者德尔格伦|r 对话
    .turnin 967 >>交任务 奥萨拉克斯之塔
step
    #softcore
    >>沿路向南跑，前往艾森娜神龛
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto Ashenvale,22.64,51.91
.target 瑟瑞希尔
>>与|cRXP_FRIENDLY_瑟瑞希尔|r 对话
    .turnin 945 >>交任务 护送瑟瑞露尼
step
    #hardcore
    >>沿路向南跑，前往艾森娜神龛
    .goto Ashenvale,22.64,51.91
.target 瑟瑞希尔
>>与|cRXP_FRIENDLY_瑟瑞希尔|r 对话
    .turnin 945 >>交任务 护送瑟瑞露尼
step
    .hs >>炉石回到奥伯丁
step
    .goto Darkshore,36.09,44.93
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .turnin 1138 >>交任务 海中的水果
step
    .goto Darkshore,36.62,45.60
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4730 >>交任务 搁浅的海洋生物
    .turnin 4731 >>交任务 搁浅的海龟
    .turnin 4732 >>交任务 搁浅的海龟
    .turnin 4733 >>交任务 搁浅的海洋生物
step
    .goto Darkshore,37.73,43.38
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4740 >>交任务 通缉：莫克迪普！
step
    .isQuestComplete 986
    >>将任务的下一部分保留在任务日志中，以获得+3耐力的披风。当你不再需要这件披风时，放弃该任务
    .goto Darkshore,39.37,43.48
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 986 >>交任务 丢失的主人
.target 特伦希斯
    .accept 993 >>接受任务 丢失的主人
step
    .goto Darkshore,37.44,41.84
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .turnin 731 >>交任务 健忘的勘察员
    .isQuestComplete 731
step
    .goto Darkshore,37.44,41.84
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .accept 741 >>接受任务 健忘的勘察员
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>跑回码头。等待前往达纳苏斯的船到达
    .goto Darkshore,36.43,43.84,30,0
    .goto Darkshore,33.17,40.17,40
step
    .isOnQuest 741
    .zone Teldrassil >>乘船前往达纳苏斯
step
    .isOnQuest 741
    .goto Teldrassil,55.95,89.86,30 >>穿过紫色传送门
step
    .isOnQuest 741
    .goto Darnassus,31.24,84.49
>>与|cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r 对话
    .turnin 741 >>交任务 健忘的勘察员
.target 首席考古学家杜瑟·灰胡
    .accept 942 >>接受任务 健忘的勘察员
step
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >>开启泰达希尔的飞行路径
    .fly Auberdine >>飞往奥伯丁
step
    .goto Darkshore,32.42,43.75,50,0
    .zone Wetlands >>乘船前往米奈希尔
step
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>如果你有8银，检查尼尔·艾伦是否有青铜管，如果有就买下。否则跳过此步骤
    .collect 4371,1,175,1
step
    .goto Wetlands,9.49,59.69
    .fly Ironforge >>飞往铁炉堡
step << skip --logout skip
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +通过跳到狮鹫的头顶上然后登出再登入来执行返回角色选择的跳过
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>https://www.youtube.com/watch?v=PWMJhodh6Bw >> 点击这里
step
    .zone Stormwind City >>乘坐地铁前往暴风城
step
    #completewith FlyAndy
    .goto StormwindClassic,55.21,7.04
    .vendor >>购买青铜管（如果你还没有的话）
    >>这是限量供应的物品，如果NPC没有库存，请跳过此步骤
    .bronzetube
step << Human
    #label FlyAndy
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>前往艾尔文森林
step << Gnome
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >>前往暴风城
step << Gnome
    #label FlyAndy
    >>进入暴风城并获取飞行路线
    .goto StormwindClassic,57.62,59.48,50,0
    .goto StormwindClassic,66.27,62.13
    .fp Stormwind City >>获取暴风城的飞行路径
step << Gnome
    .goto StormwindClassic,66.05,65.64,12,0
    .goto StormwindClassic,64.97,67.69,18 >>沿着白色墙壁跑，跳到下方的小平台上。小心。沿着平台边缘跑向暴风城出口
step
    >>跑到闪金镇旅馆的楼上
    .goto Elwynn Forest,42.97,65.65,15,0
    .goto Elwynn Forest,43.81,66.46,15,0
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业技能
step
    .goto Elwynn Forest,91.42,73.59,125,0
    .zone Redridge Mountains >>一路向东跑到赤脊山。途中整理好键位，确保法术都舒适地放在技能栏上
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-21 赤脊山 法师 AoE攻略
#version 1
#group RestedXP 联盟 法师
#defaultfor Alliance Mage
#next 21-22 暮色森林 法师 AoE攻略

step
    #sticky
    #completewith Gnolls
    +开始对看到的3只以上任务怪进行AOE拉怪。
    >>如果需要的话，请将此教程保留在另一个标签页中，以便用于赤脊山AOE部分：
    .link https://youtu.be/SxMc2GoP33c?t=56 >>https://youtu.be/SxMc2GoP33c?t=56 >> 点击这里
step
    >>与卫兵队长帕克对话。他在十字路口周围巡逻
    .goto Elwynn Forest,99.05,72.15
.target 卫兵帕克
>>与|cRXP_FRIENDLY_卫兵队长帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
step
    #sticky
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
>>与|cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
.target 菲尔顿副队长
    .accept 246 >>接受任务 审时度势
step
    .goto Redridge Mountains,30.59,59.40
    .fp Redridge Mountains >>获取赤脊山的飞行路径
step
    #requires Gnolls
    .goto Redridge Mountains,33.51,48.96
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .accept 20 >>接受任务黑石氏族的威胁
step
    .goto Redridge Mountains,32.14,48.64
.target Foreman Oslow
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .accept 125 >>接受任务 丢失的工具
step
    .goto Redridge Mountains,30.94,47.24
.target Verner Osgood
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .accept 118 >>接受任务 马掌
step
    >>在议政厅内
    .goto Redridge Mountains,29.72,44.26
.target 拜里弗·科纳彻尔
>>与|cRXP_FRIENDLY_拜里弗·科纳彻尔|r交谈
    .accept 91 >>接受任务 所罗门的律法
step
    .goto Redridge Mountains,29.99,44.45
    >>进入建筑内
.target 所罗门镇长
>>与|cRXP_FRIENDLY_所罗门镇长|r对话
    .accept 120 >>接受任务 送往暴风城的信
step
    .goto Redridge Mountains,27.72,47.38
.target 码头管理员巴伦
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .accept 127 >>接受任务卖鱼
step
    .goto Redridge Mountains,26.75,46.42
    .accept 180 >>接受任务 通缉：范高雷中尉
step
    >>在旅馆内
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>与 |cRXP_FRIENDLY_达希|r 对话
    .accept 129 >>接受任务 免费的午餐
step
    .goto Redridge Mountains,27.01,44.82
    .home >>将你的炉石设置在湖畔镇
step
    .goto Redridge Mountains,29.32,53.64
.target 肖恩
>>与|cRXP_FRIENDLY_肖恩|r 对话
    .accept 3741 >>接受任务 希拉里的项链
step
    >>在水下寻找希拉里的项链。它在棕色的泥土区域
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto Redridge Mountains,15.47,62.40,0
    +AOE击杀营地中的豺狼人
step
    .goto Redridge Mountains,15.28,71.47
>>与|cRXP_FRIENDLY_卫兵队长帕克|r 对话
    .turnin 129 >>交任务 免费的午餐
.target 卫兵帕克
    .accept 130 >>接受任务 寻访草药师
step
    .goto Redridge Mountains,30.59,59.41
    .fly Stormwind >>飞往暴风城
step
    >>进入暴风城。前往武器训练师处
   .goto StormwindClassic,57.13,57.71
   .trainer >>训练单手剑和匕首
step
    #softcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    +前往拍卖行。如果价格合适的话，购买一根青铜管
    >>如果这里没有，或者价格太贵，你也可以尝试从矮人区的比力巴普那里购买一个
    >>如果你找不到的话就跳过此步
    .bronzetube
step
    #hardcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor >>在矮人区检查比利巴布是否有青铜管。如果有的话就买一个
    .bronzetube
step
    .goto StormwindClassic,63.99,75.34
>>与|cRXP_FRIENDLY_马库斯·乔纳森将军|r 对话
    .turnin 120 >>交任务 送往暴风城的信
.target General Marcus Jonathan
    .accept 121 >>接受任务 送往暴风城的信
step
    >>跑往闪金镇
    .goto Elwynn Forest,41.71,65.55
>>与|cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .turnin 118 >>交任务 马掌
.target 铁匠阿古斯
    .accept 119 >>接受任务 回复弗纳
step
    >>跑向哨兵岭
    .goto Westfall,56.33,47.52
.target 格里安·斯托曼
>>与|cRXP_FRIENDLY_格里安·斯托曼|r交谈
    .accept 65 >>接受任务 迪菲亚兄弟会
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >>湖畔镇 >> 如果炉石冷却完毕，直接炉石回湖畔镇
step
    #completewith hsLakeshire
    #label WFFP
    .goto Westfall,56.55,52.65
    .fp Westfall >>开启西部荒野的飞行路径 << Gnome
    .fly Redridge >>飞往 Redridge
step
    #requires WFFP
    .goto Redridge Mountains,30.97,47.27
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 119 >>交任务 回复弗纳
.target Verner Osgood
    .accept 122 >>接受任务 雏龙的鳞片
    .accept 124 >>接受任务 豺狼人的乱吠
step
    >>进入要塞
    .goto Redridge Mountains,29.93,44.46
>>与|cRXP_FRIENDLY_所罗门镇长|r对话
    .turnin 121 >>交任务 送往暴风城的信
.target 所罗门镇长
    .accept 143 >>接受任务 送往西部荒野的信
.target 拜里弗·科纳彻尔
>>与|cRXP_FRIENDLY_拜里弗·科纳彻尔|r交谈
    .accept 91 >>接受任务 所罗门的律法
step
    >>进入旅馆的顶楼
    .goto Redridge Mountains,26.47,45.35
>>与|cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
.target Wiley the Black
    .accept 132 >>接受任务 迪菲亚兄弟会
step
    .goto Redridge Mountains,29.24,53.63
.target Hilary
>>与 |cRXP_FRIENDLY_希拉里|r 对话
    .turnin 3741 >>交任务 希拉里的项链
step
    #era/som
    #completewith Murlocs
    >>在做其他任务的同时，顺便刷取赤脊山炖肉的前3件材料。同时收集足够的野猪肉块，将烹饪技能提升到50点
    >>尽量集中火力对付裂蹄牛，暂时不用太担心蜘蛛肉的问题
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>击杀雏龙。拾取它们的鳞片
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>对该区域的豺狼人进行AoE击杀。如果需要的话，可以参考AOE视频
    >>在AoE拉怪时利用死区规避偷猎者，这样你就不会被射击
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>对区域内的鱼人使用范围效果。你必须对唤潮者使用单体目标攻击（闪电箭+治疗波）
    >>你可以对海岸袭击者（冲锋）和噬肉者（攻击时有25点即时吸血效果）进行AOE拉怪。灵活安排拉怪路线
    >>保留8个鱼鳍以备后用
    .goto Redridge Mountains,48.82,69.49
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>从附近区域获取秃鹫肉和幼龙鳞片。如果正在等待刷新，则向东去拿一些斧头，然后再返回这里
    .goto Redridge Mountains,61.04,77.55
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>从这片区域获取龙鳞。如果正在等待刷新，就去东边拿一些斧头，然后返回这里
    .goto Redridge Mountains,61.04,77.55
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>范围攻击该区域的兽人。战利品他们的斧头。小心，追猎者会使用网，背逆者会盾击。
    >>尽量避开叛徒，因为他们等级较高。每次最多拉3只。在此处使用AOE风险极高，收益中等
    >>先别急着拿所有斧头，你后面有更好的机会来完成这个任务
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>潜入水下。拾取灰色盒子
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>在这里完成野猪鼻子的任务
    .goto Redridge Mountains,32.07,70.54
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto Redridge Mountains,30.74,60.00
.target 菲尔顿副队长
>>与|cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 246 >>交任务 审时度势
step
    .isQuestComplete 20
    .goto Redridge Mountains,33.50,48.96
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 20 >>交任务黑石氏族的威胁
step
    .goto Redridge Mountains,32.14,48.63
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .turnin 125 >>交任务 丢失的工具
.target Foreman Oslow
    .accept 89 >>接受任务 止水湖上的桥
step
    .goto Redridge Mountains,30.98,47.27
.target Verner Osgood
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 122 >>交任务 雏龙的鳞片
step
    #level 20
    .goto Redridge Mountains,27.72,47.38
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .turnin 127 >>交任务卖鱼
.target 码头管理员巴伦
    .accept 150 >>接受任务 鱼人偷猎者
    .turnin 150 >>交任务鱼人偷猎者
step
    .goto Redridge Mountains,27.72,47.38
.target 码头管理员巴伦
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .turnin 127 >>交任务卖鱼
step
    .goto Redridge Mountains,21.86,46.33
>>与|cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 130 >>交任务 寻访草药师
.target 玛蒂·詹罗斯
    .accept 131 >>接受任务 水仙诉衷情
    .accept 34 >>接受任务 不速之客
step
    >>杀死贝利格拉布。将其一路风筝到镇里的卫兵亚当斯那里
    >>小心她的震颤（瞬间80点AOE伤害）和冲锋（尽量保持减速并冰环她）
    >>确保你造成主要伤害（51%以上）
    >>这个任务非常非常困难
    .goto Redridge Mountains,15.66,49.31
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto Redridge Mountains,21.85,46.32
.target 玛蒂·詹罗斯
>>与|cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 34 >>交任务 不速之客
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    >>杀死豺狼人。从它们身上拾取长矛和铆钉
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>击杀排列整齐的兽人群。拾取它们以凑齐斧头
    >>如果在清理近距离的怪物群时运气不好，你稍后还有一次机会
    .goto Redridge Mountains,37.05,45.15,50,0
    .goto Redridge Mountains,38.28,41.85,50,0
    .goto Redridge Mountains,40.46,40.52,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto Redridge Mountains,49.25,39.66,150 >>跑向蜘蛛
step
    #era/som
    >>击杀蜘蛛。从它们身上拾取肉
    >>小心，他们的毒药会造成不小的伤害
    >>小心查特（稀有），因为他有一个8秒的晕眩
    .goto Redridge Mountains,57.23,45.24
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>完成击杀兽人以获得斧头
    .goto Redridge Mountains,61.74,42.82
    .complete 20,1 --Blackrock Axe (10)
step
    .goto Redridge Mountains,33.50,48.96
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 20 >>交任务黑石氏族的威胁
step
    .goto Redridge Mountains,32.15,48.64
.target Foreman Oslow
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .turnin 89 >>交任务 止水湖上的桥
step
    .goto Redridge Mountains,30.98,47.28
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 124 >>交任务 豺狼人的乱吠
.target Verner Osgood
    .accept 126 >>接受任务 群山中的嚎叫
step
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>与 |cRXP_FRIENDLY_达希|r 对话
    .turnin 131 >>交任务 水仙诉衷情
step
    .goto Redridge Mountains,27.01,44.81
    .vendor >>购买15级饮料
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>离开旅店。向西走，然后进入建筑
.target Chef Breanna
>>与|cRXP_FRIENDLY_厨师布雷纳|r 对话
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
step
    #era/som
    #completewith next
    .goto Redridge Mountains,26.54,44.90
    +将所有的野猪肉烹饪至烹饪技术达到50点
    >>如果肉不够的话，在前往夜色镇的路上杀几只野猪
step
    .goto Redridge Mountains,6.50,91.18,90,0
    .zone Duskwood >>前往暮色森林
]])
