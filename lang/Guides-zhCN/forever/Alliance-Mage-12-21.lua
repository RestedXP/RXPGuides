if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-18 黑海岸 法师 AoE攻略
#version 1
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 法师快速升级指南
#defaultfor Alliance Mage
#next 18-21 赤脊山 法师 AoE攻略

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >>你可以从莱尔德（鱼类供应商）那里购买非常便宜的5级食物
step
    >>上楼到最顶层
    .goto 1439/1,519.48,6405.89
.target 维兹班恩·曲针
>>与|cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
step
    >>向下跳到1楼
    .goto 1439/1,515.55,6406.32
    .home >>将你的炉石设为奥伯丁
step
    .goto 1439/1,497.21,6427.72
.target 巴瑞萨斯·月影
>>与|cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .accept 947 >>接受任务 洞中的蘑菇
step
    .goto 1439/1,473.63,6439.07
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
step
    .goto 1439/1,397.65,6437.76
.target 萨纳瑞恩·绿树
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
step
    .goto 1439/1,362.93,6434.27
.target 特伦希斯
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
step
    .goto 1439/1,543.06,6342.57
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >>开启奥伯丁飞行点
step
    #completewith Bear
     >>击杀沿着海岸的螃蟹
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >>拾取海洋生物的战利品
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >>找到一只狂暴蓟熊。拉怪后，使用背包中的萨纳瑞恩的希望（紫色宝珠）
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >>朝着熊怪营地附近前进
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >>找到一只狂暴蓟熊。拉怪后，使用背包中的萨纳瑞恩的希望（紫色宝珠）
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >>击杀沿着海岸的螃蟹
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >>保存5份陆行鸟肉以备后用
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>交任务 传声盒827号
    .accept 1001 >>接受任务 传声盒411号
step
    .goto 1439/1,543.06,6342.57
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
.target 温尼斯·布莱葛
    .accept 4681 >>接受任务 搁浅的巨兽
step
    .goto 1439/1,535.85,6409.38,40,0
    >>跑到码头
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,734.32,6479.68,60 >>跑到码头，然后在交叉路口跳进水中
step
    .goto 1439/1,854.84,6310.26
    >>点击水下的海龟头部
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>在返回岸边的途中击杀蛇颈龙
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4681 >>交任务 搁浅的巨兽
step
    .goto 1439/1,397.65,6437.76
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
.target 萨纳瑞恩·绿树
    .accept 2138 >>接受任务 清除疫病
step
    .goto 1439/1,362.93,6434.27
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
.target 特伦希斯
    .accept 985 >>接受任务 熊怪的威胁
    .accept 4761 >>接受任务 桑迪斯·织风
step
    >>击杀熊怪
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 985 >>交任务 熊怪的威胁
.target 特伦希斯
    .accept 986 >>接受任务 丢失的主人
step
    >>上楼
    .goto 1439/1,384.55,6431.65
.target 哨兵艾莉萨·星风
>>与|cRXP_FRIENDLY_哨兵艾莉萨·星风|r 对话
    .accept 965 >>接受任务 奥萨拉克斯之塔
step
    .goto 1439/1,445.46,6536.01
.target 高尔博德·钢手
>>与|cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .accept 982 >>接受任务 深不可测的海洋
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
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
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >>进入第1艘船（通过船体的破洞），然后前往其最低层的后部
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >>进入第2艘船（通过船体的破洞），然后前往其最低层的后部
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >>交任务 传声盒411号
    .accept 1002 >>接受任务 传声盒323号
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >>接受任务 搁浅的海洋生物
step
    .goto 1448/1,48.92,6748.85
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 954 >>交任务 巴莎兰
.target 阿斯特利安
    .accept 955 >>接受任务 巴莎兰
step
    .goto 1448/1,-33.31,6660.30
     >>击杀小劣魔。从它们身上拾取耳环
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 955 >>交任务 巴莎兰
.target 阿斯特利安
    .accept 956 >>接受任务 巴莎兰
step
    .goto 1448/1,-60.33,6653.40
     >>击杀萨特，拾取它们的印章
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
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
    .goto 1439/1,-383.77,7222.89
    >>使用背包中的空的水样试管
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +保留你拾取的小蛋，以后用来提升烹饪技能。保留你获得的所有轻羽毛，以后再用
step
    .goto 1439/1,-144.04,6209.82
     >>跑到山中的红色水晶处
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target 哨兵坦莎·月刃
>>与|cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .accept 953 >>接受任务 亚米萨兰的毁灭
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >>击杀阿纳雅·晨行者。她在亚米萨兰中部巡逻
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >>击杀幽灵。拾取它们身上的遗物
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >>点击地面上的石板
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >>点击亭子处的绿色火把
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >>点击地面上的石板
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target 哨兵坦莎·月刃
>>与|cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 953 >>交任务 亚米萨兰的毁灭
step
    .goto 1439/1,398.30,5677.53
    >>完成击杀狂暴蓟皮熊并获取陆行鸟肉
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>拾取海龟
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>接受任务 搁浅的海龟
step
    >>拾取海龟
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>接受任务 搁浅的海洋生物
step
    .hs >>炉石回到奥伯丁
step
    .goto 1439/1,397.65,6437.33
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2138 >>交任务 清除疫病
.target 萨纳瑞恩·绿树
    .accept 2139 >>接受任务 萨纳瑞恩的希望
step
    .goto 1439/1,445.46,6535.58
.target 高尔博德·钢手
>>与|cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .turnin 982 >>交任务 深不可测的海洋
    .vendor >>从戈博尔德处购买一些甜香料，直到足够烹饪所有鸡蛋为止
step
    .goto 1439/1,472.97,6557.85
    >>确保你的烹饪技能达到10点，否则无法接取/交还任务
.target 奥兰达利亚·夜歌
>>与|cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
step
    .goto 1439/1,491.97,6582.303
>>与|cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 958 >>交任务 上层精灵的工具
    .turnin 4762 >>交任务 壁泉河
.target 桑迪斯·织风
    .accept 4763 >>接受任务 黑木熊怪的堕落
step
    .goto 1439/1,489.35,6506.32
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .accept 729 >>接受任务 健忘的勘察员
step
    .goto 1439/1,471.66,6439.95
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
.target 哨兵戈琳达·纳希恩
    .accept 4812 >>接受任务 清洗水晶
step
    .goto 1439/1,467.08,6409.38
     >>在月亮井处填充空水瓶
    .complete 4812,1
     >>在月亮井处填充空盆
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >>从塔尔丹购买15级饮品
step
    >>回到码头
    .goto 1448/1,600.92,6424.93
.target 塞瑞利恩·白爪
>>与|cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .turnin 963 >>交任务 永志不渝
step
    .goto 1439/1,577.77,6371.39
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .accept 1138 >>接受任务 海中的水果
step
    .goto 1439/1,543.06,6342.57
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟
    .turnin 4723 >>交任务 搁浅的海洋生物
    .turnin 4728 >>交任务 搁浅的海洋生物 << Gnome
step
    .goto 1439/1,-157.79,6206.770
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
    .goto 1439/1,47.88,6748.67
.target 阿斯特利安
>>与|cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
step
    .goto 1439/1,-376.56,6805.87
    >>装备你的新魔杖
    >>从木桶中拾取黑木谷物样本，然后向东南方向跑向兽穴之母（不要与怪物战斗）
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>击杀巢穴之母。小心她的幼崽，它们会击倒你2秒
    >>刷到16级，如果觉得吃力就再试一次
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>从木桶中拾取黑木坚果样本
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>从木桶中拾取黑木水果样品。你前方以及西侧小屋之间会刷新一个怪物——可能需要跑动一下
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>对营地篝火附近的装满水的净化碗使用你背包中的道具。这会使附近所有熊怪变为友好状态。
    >>击杀在营地之间刷新并绕着篝火奔跑的萨特。从最大射程开始攻击，因为他可能比较难对付。击杀后拾取掉落在地上的篮子
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >>前往瀑布上方的洞穴
step
    .goto 1439/1,-704.06,6809.80
     >>留在洞穴的上层区域。如果顶部尽头没有毒帽蘑菇，就跳下去从下面采集一个
     >>你采完毒帽蘑菇时，洞穴口的第一个蓝色蘑菇应该已经刷新了
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>与|cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 965 >>交任务 奥萨拉克斯之塔
.target 巴苏尔·影击
    .accept 966 >>接受任务 奥萨拉克斯之塔
step
    >>击杀黑暗缚灵者。从他们身上拾取羊皮纸
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>与|cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 966 >>交任务 奥萨拉克斯之塔
.target 巴苏尔·影击
    .accept 967 >>接受任务 奥萨拉克斯之塔
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>接受任务 搁浅的海龟
step
    #sticky
    #completewith Turtles
     >>沿着海岸击杀礁石爬行者，不要特意去完成这个任务——不要击杀等级高于你4级或以上的怪物
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >>交任务 传声盒323号
    .accept 1003 >>接受任务 传声盒525号
step
    #softcore
    #label Turtles
    >>保留一些附近的鱼人别杀光，接了这个任务后你会被它们打死
    .goto 1439/1,47.88,7433.800
    .accept 4725 >>接受任务 搁浅的海龟
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >>接受任务 搁浅的海龟
step
    #softcore
    .deathskip >>在奥伯丁死亡并复活
step
    .goto 1439/1,491.97,6582.303
    >>装备你的新魔杖
.target 桑迪斯·织风
>>与|cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4763 >>交任务 黑木熊怪的堕落
step
    .goto 1439/1,397.65,6437.33
.target 萨纳瑞恩·绿树
>>与|cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2139 >>交任务 萨纳瑞恩的希望
step
    .goto 1439/1,471.66,6439.95
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4813 >>交任务 水晶中的碎骨
step
    .goto 1439/1,497.21,6427.72
>>与|cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .turnin 947 >>交任务 洞中的蘑菇
.target 巴瑞萨斯·月影
    .accept 948 >>接受任务 安努
step
    .goto 1439/1,503.10,6401.96
     >>点击旅馆外的悬赏令
    .accept 4740 >>接受任务 通缉：莫克迪普！
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .turnin 1138 >>交任务 海中的水果
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
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
    .goto 1439/1,413.37,4818.17,0
     >>击杀灰须蓟熊。从它们身上拾取头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>与|cRXP_FRIENDLY_安努|r 对话
    .turnin 948 >>交任务 安努
.target 安努
    .accept 944 >>接受任务 主宰之剑
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >>从提亚妮处购买15级的水
step << Human
    >>拾取遗骸
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>接受任务 搁浅的海洋生物
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >>清理鱼人营地，远离中央的篝火
    >>清理完所有东西后，移动到营地中央召唤莫克迪普
    >>如果你运气好的话，莫克迪普可能已经在西边约30码处的海岸边刷新了（如果之前有人死在他那里的话）。
    .complete 4740,1 --Murkdeep (1)
step
     >>沿着海岸击杀螃蟹，获取优质蟹肉
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>拾取遗骸
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>接受任务 搁浅的海洋生物
step
    >>拾取遗骸。小心，神谕者会施放90点伤害的闪电箭，且当其生命值低于55%时，会施放治疗波回满血。这里的龟头有视野
    >>始终为自己留好退路。潮猎人的威胁不算太大，但要注意他们伤害较低的毒液技能
    >>尽量把你的治疗药水留到后面再用，尤其是那些大型药水
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>接受任务 搁浅的海龟
step
    >>岛上的龟壳有视线要求
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>接受任务 搁浅的海龟
step
    >>从它的脖子处拾取，注意地形遮挡的2只怪（你只需击杀3只怪就能拾取这个）
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>接受任务 搁浅的海洋生物
step
    .goto 1439/1,602.01,4678.87
.target 勘察员雷塔维
>>与|cRXP_FRIENDLY_勘察员雷塔维|r 对话
    .turnin 729 >>交任务 健忘的勘察员
step
    .goto 1439/1,602.01,4678.87
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
    .goto 1439/1,413.37,4818.17,0
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
    .goto 1439/1,433.02,4529.09
     >>进入主宰之剑，清理中央祭坛周围的怪物
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target 瑟瑞露尼
>>与|cRXP_FRIENDLY_瑟瑞露尼|r 对话
    .accept 945 >>接受任务 护送瑟瑞露尼
step
     >>将占卜之碗从背包中丢到地上
    .turnin 944 >>交任务 主宰之剑
    .accept 949 >>接受任务 暮光之锤的营地
step
    .goto 1439/1,416.64,4576.69
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
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >>杀掉你遇到的任何月光追猎者之王，如果觉得没问题也杀掉女族长。从它们身上剥取毛皮。它们与灰须蓟熊共享刷新点
     >>如果你实在运气不好，刷怪和掉率都不理想，可以跳过这个任务
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >>击杀黑海岸南部各处的灰须蓟熊。拾取它们的头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >>交任务 传声盒525号
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target 安努
>>与|cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >>如果有需要的话，从提亚尼那里购买食物/饮料
step
    >>接受克罗尼亚的护送任务。如果他不在那里，跳过此步骤
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>与|cRXP_FRIENDLY_克罗尼亚·恒影|r 对话
    .accept 5321 >>接受任务 苏醒者已醒
step
    .isOnQuest 5321
    >>拾取克罗尼亚旁边的小灰色箱子内的战利品
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>向南前往灰谷。将觉醒角力绑定到动作条上，当克罗尼亚原地走动并睡着时对他使用
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>与|cRXP_FRIENDLY_利拉迪斯·月河|r 对话
    .turnin 5321 >>交任务 苏醒者已醒
step
    .goto 1440/1,189.71,3185.390
.target 净化者德尔格伦
>>与|cRXP_FRIENDLY_净化者德尔格伦|r 对话
    .turnin 967 >>交任务 奥萨拉克斯之塔
step
    #softcore
    >>沿路向南跑，前往艾森娜神龛
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target 瑟瑞希尔
>>与|cRXP_FRIENDLY_瑟瑞希尔|r 对话
    .turnin 945 >>交任务 护送瑟瑞露尼
step
    #hardcore
    >>沿路向南跑，前往艾森娜神龛
    .goto 1440/1,394.43,2677.63
.target 瑟瑞希尔
>>与|cRXP_FRIENDLY_瑟瑞希尔|r 对话
    .turnin 945 >>交任务 护送瑟瑞露尼
step
    .hs >>炉石回到奥伯丁
step
    .goto 1439/1,577.77,6371.39
.target 古博·布拉普
>>与|cRXP_FRIENDLY_古博·布拉普|r 对话
    .turnin 1138 >>交任务 海中的水果
step
    .goto 1439/1,543.06,6342.130
.target 温尼斯·布莱葛
>>与|cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4730 >>交任务 搁浅的海洋生物
    .turnin 4731 >>交任务 搁浅的海龟
    .turnin 4732 >>交任务 搁浅的海龟
    .turnin 4733 >>交任务 搁浅的海洋生物
step
    .goto 1439/1,470.35,6439.07
.target 哨兵戈琳达·纳希恩
>>与|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4740 >>交任务 通缉：莫克迪普！
step
    .isQuestComplete 986
    >>将任务的下一部分保留在任务日志中，以获得+3耐力的披风。当你不再需要这件披风时，放弃该任务
    .goto 1439/1,362.93,6434.71
>>与|cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 986 >>交任务 丢失的主人
.target 特伦希斯
    .accept 993 >>接受任务 丢失的主人
step
    .goto 1439/1,489.35,6506.32
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .turnin 731 >>交任务 健忘的勘察员
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target 考古学家霍莉
>>与|cRXP_FRIENDLY_考古学家 霍莉|r 对话
    .accept 741 >>接受任务 健忘的勘察员
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>跑回码头。等待前往达纳苏斯的船到达
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >>乘船前往达纳苏斯
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >>穿过紫色传送门
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>与|cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r 对话
    .turnin 741 >>交任务 健忘的勘察员
.target 首席考古学家杜瑟·灰胡
    .accept 942 >>接受任务 健忘的勘察员
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >>开启泰达希尔的飞行路径
    .fly Auberdine >>飞往奥伯丁
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >>乘船前往米奈希尔
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >>如果你有8银，检查尼尔·艾伦是否有青铜管，如果有就买下。否则跳过此步骤
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >>飞往铁炉堡
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +通过跳到狮鹫的头顶上然后登出再登入来执行返回角色选择的跳过
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>https://www.youtube.com/watch?v=PWMJhodh6Bw >> 点击这里
step
    .zone Stormwind City >>乘坐地铁前往暴风城
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >>购买青铜管（如果你还没有的话）
    >>这是限量供应的物品，如果NPC没有库存，请跳过此步骤
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >>前往艾尔文森林
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >>前往暴风城
step << Gnome
    #label FlyAndy
    >>进入暴风城并获取飞行路线
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >>获取暴风城的飞行路径
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >>沿着白色墙壁跑，跳到下方的小平台上。小心。沿着平台边缘跑向暴风城出口
step
    >>跑到闪金镇旅馆的楼上
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >>训练你的职业技能
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >>一路向东跑到赤脊山。途中整理好键位，确保法术都舒适地放在技能栏上
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-21 赤脊山 法师 AoE攻略
#version 1
#group RestedXP魔兽世界无限练级指南（联盟版）
#subgroup 法师快速升级指南
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
    .goto 1429/0,-1902.44,-9609.56
.target 卫兵帕克
>>与|cRXP_FRIENDLY_卫兵队长帕克|r 对话
    .accept 244 >>接受任务 豺狼人的入侵
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>与|cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 244 >>交任务豺狼人的入侵
.target 菲尔顿副队长
    .accept 246 >>接受任务 审时度势
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >>获取赤脊山的飞行路径
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .accept 20 >>接受任务 黑石氏族的威胁
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .accept 125 >>接受任务 丢失的工具
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .accept 118 >>接受任务 马掌
step
    >>在议政厅内
    .goto 1433/0,-2216.00,-9215.85
.target 拜里弗·科纳彻尔
>>与|cRXP_FRIENDLY_拜里弗·科纳彻尔|r交谈
    .accept 91 >>接受任务 所罗门的律法
step
    .goto 1433/0,-2221.87,-9218.60
    >>进入建筑内
.target 所罗门镇长
>>与|cRXP_FRIENDLY_所罗门镇长|r对话
    .accept 120 >>接受任务 送往暴风城的信
step
    .goto 1433/0,-2172.59,-9261.02
.target 码头管理员巴伦
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .accept 127 >>接受任务 卖鱼
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>接受任务 通缉：范高雷中尉
step
    >>在旅馆内
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>与 |cRXP_FRIENDLY_达希|r 对话
    .accept 129 >>接受任务 免费的午餐
step
    .goto 1433/0,-2157.18,-9223.96
    .home >>将你的炉石设置在湖畔镇
step
    .goto 1433/0,-2207.32,-9351.66
.target 肖恩
>>与|cRXP_FRIENDLY_肖恩|r 对话
    .accept 3741 >>接受任务 希拉里的项链
step
    >>在水下寻找希拉里的项链。它在棕色的泥土区域
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +AOE击杀营地中的豺狼人
step
    .goto 1433/0,-1902.54,-9609.83
>>与|cRXP_FRIENDLY_卫兵队长帕克|r 对话
    .turnin 129 >>交任务 免费的午餐
.target 卫兵帕克
    .accept 130 >>接受任务 寻访草药师
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >>飞往暴风城
step
    >>进入暴风城。前往武器训练师处
   .goto 1453/0,612.99,-8796.14
   .trainer >>训练单手剑和匕首
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +前往拍卖行。如果价格合适的话，购买一根青铜管
    >>如果这里没有，或者价格太贵，你也可以尝试从矮人区的比力巴普那里购买一个
    >>如果你找不到的话就跳过此步
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >>在矮人区检查比利巴布是否有青铜管。如果有的话就买一个
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>与|cRXP_FRIENDLY_马库斯·乔纳森将军|r 对话
    .turnin 120 >>交任务 送往暴风城的信
.target General Marcus Jonathan
    .accept 121 >>接受任务 送往暴风城的信
step
    >>跑往闪金镇
    .goto 1429/0,87.73,-9456.79
>>与|cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .turnin 118 >>交任务 马掌
.target 铁匠阿古斯
    .accept 119 >>接受任务 回复弗纳
step
    >>跑向哨兵岭
    .goto 1436/0,1045.12,-10508.80
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
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >>开启西部荒野的飞行路径 << Gnome
    .fly Redridge >>飞往 Redridge
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 119 >>交任务 回复弗纳
.target Verner Osgood
    .accept 122 >>接受任务 雏龙的鳞片
    .accept 124 >>接受任务 豺狼人的乱吠
step
    >>进入要塞
    .goto 1433/0,-2220.56,-9218.74
>>与|cRXP_FRIENDLY_所罗门镇长|r对话
    .turnin 121 >>交任务 送往暴风城的信
.target 所罗门镇长
    .accept 143 >>接受任务 送往西部荒野的信
.target 拜里弗·科纳彻尔
>>与|cRXP_FRIENDLY_拜里弗·科纳彻尔|r交谈
    .accept 91 >>接受任务 所罗门的律法
step
    >>进入旅馆的顶楼
    .goto 1433/0,-2145.45,-9231.63
>>与|cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
.target Wiley the Black
    .accept 132 >>接受任务 迪菲亚兄弟会
step
    .goto 1433/0,-2205.58,-9351.52
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
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>对区域内的鱼人使用范围效果。你必须对唤潮者使用单体目标攻击（闪电箭+治疗波）
    >>你可以对海岸袭击者（冲锋）和噬肉者（攻击时有25点即时吸血效果）进行AOE拉怪。灵活安排拉怪路线
    >>保留8个鱼鳍以备后用
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>从附近区域获取秃鹫肉和幼龙鳞片。如果正在等待刷新，则向东去拿一些斧头，然后再返回这里
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>从这片区域获取龙鳞。如果正在等待刷新，就去东边拿一些斧头，然后返回这里
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>范围攻击该区域的兽人。战利品他们的斧头。小心，追猎者会使用网，背逆者会盾击。
    >>尽量避开叛徒，因为他们等级较高。每次最多拉3只。在此处使用AOE风险极高，收益中等
    >>先别急着拿所有斧头，你后面有更好的机会来完成这个任务
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>潜入水下。拾取灰色盒子
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>在这里完成野猪鼻子的任务
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target 菲尔顿副队长
>>与|cRXP_FRIENDLY_菲尔顿副队长|r 对话
    .turnin 246 >>交任务 审时度势
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 20 >>交任务 黑石氏族的威胁
step
    .goto 1433/0,-2268.54,-9279.12
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .turnin 125 >>交任务 丢失的工具
.target Foreman Oslow
    .accept 89 >>接受任务 止水湖上的桥
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 122 >>交任务 雏龙的鳞片
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .turnin 127 >>交任务卖鱼
.target 码头管理员巴伦
    .accept 150 >>接受任务 鱼人偷猎者
    .turnin 150 >>交任务 鱼人偷猎者
step
    .goto 1433/0,-2172.59,-9261.02
.target 码头管理员巴伦
>>与|cRXP_FRIENDLY_码头管理员巴伦|r 对话
    .turnin 127 >>交任务卖鱼
step
    .goto 1433/0,-2045.38,-9245.82
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
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target 玛蒂·詹罗斯
>>与|cRXP_FRIENDLY_玛蒂·詹罗斯|r 对话
    .turnin 34 >>交任务 不速之客
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>杀死豺狼人。从它们身上拾取长矛和铆钉
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>击杀排列整齐的兽人群。拾取它们以凑齐斧头
    >>如果在清理近距离的怪物群时运气不好，你稍后还有一次机会
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >>跑向蜘蛛
step
    #era/som
    >>击杀蜘蛛。从它们身上拾取肉
    >>小心，他们的毒药会造成不小的伤害
    >>小心查特（稀有），因为他有一个8秒的晕眩
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>完成击杀兽人以获得斧头
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target 治安官马瑞斯
>>与|cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 20 >>交任务 黑石氏族的威胁
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>与|cRXP_FRIENDLY_工头奥斯洛|r交谈
    .turnin 89 >>交任务 止水湖上的桥
step
    .goto 1433/0,-2243.36,-9259.57
>>与|cRXP_FRIENDLY_弗纳·奥斯古|r交谈
    .turnin 124 >>交任务 豺狼人的乱吠
.target Verner Osgood
    .accept 126 >>接受任务 群山中的嚎叫
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>与 |cRXP_FRIENDLY_达希|r 对话
    .turnin 131 >>交任务 水仙诉衷情
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >>购买15级饮料
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>离开旅店。向西走，然后进入建筑
.target Chef Breanna
>>与|cRXP_FRIENDLY_厨师布雷纳|r 对话
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +将所有的野猪肉烹饪至烹饪技术达到50点
    >>如果肉不够的话，在前往夜色镇的路上杀几只野猪
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >>前往暮色森林
]])
