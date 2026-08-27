if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 终局指南
#subgroup 开门任务
#name 卡拉赞地穴开门任务

step
    #completewith next
    .subzone 2268 >>前往位于 |cRXP_LOOT_东瘟疫之地|r 的 |cRXP_PICK_圣光之愿礼拜堂|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>点击礼拜堂入口右侧标题为 |cRXP_FRIENDLY_寻找干练冒险者|r 的告示板
    .accept 86964 >>接受任务 为了财富与荣耀！
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >>前往 |cRXP_PICK_逆风小径|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >>向南前往 |cRXP_LOOT_卡拉赞|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>寻找一具 |cRXP_FRIENDLY_身亡的冒险者|r 的尸体
    .turnin 86964 >>交任务 为了财富与荣耀！
    .accept 86965 >>接受任务 非凡暗影
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>向北前往达拉然特工营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探金娜 |r 对话
    .turnin 86965 >>交任务 非凡暗影
    .accept 86966 >>接受任务 寻找幸存者
step
    .goto Deadwind Pass,59.2,73.4,30 >>向南前往食人魔洞穴的入口
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>进入洞穴，寻找 |cRXP_FRIENDLY_受伤的冒险者|r，他被锁在笼子里
    .turnin 86966 >>交任务 寻找幸存者
    .accept 86967 >>接受任务 实施营救
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>击杀任意 |cRXP_ENEMY_食人魔|r 并拾取它们，直到你找到一把 |cRXP_LOOT_逆风囚笼“钥匙”|r。在笼子上使用它来完成任务
    >>|cRXP_WARN_如果其他人在你附近完成了这个目标，即使你没有与他们组队，你也会获得任务进度|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>回到北方的达拉然特工营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里森·琼斯|r对话
    .turnin 86967 >>交任务 实施营救
    .accept 86968 >>接受任务 你怕黑吗？
    .target 哈里森·琼斯
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探金娜|r 对话
    .turnin 86968 >>交任务 你怕黑吗？
    .accept 86969 >>接受任务 魔法假说
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >>前往 |cRXP_PICK_湿地|r 寻找 |T132839:0|t[生命之焰]
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >>前往通往 |cRXP_LOOT_格瑞姆巴托|r 道路的起点
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>击杀该区域的任何 |cRXP_ENEMY_龙类|r，直到你拾取 |T132839:0|t[|cRXP_LOOT_生命之火|r]
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +寻找一个 |cRXP_LOOT_厄运之槌西区|r 或者 |cRXP_LOOT_恶魔屠魔峡谷|r 的队伍，然后进入副本
    >>|cRXP_WARN_请记住，你需要完成开门任务才能进入恶魔之陨峡谷。|r 你可以在满级指南 > 开门任务的章节中找到相关教程
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>击杀副本中的第一个首领 |cRXP_ENEMY_特迪斯·扭木|r。拾取他的 |T135139:0|t[铁木枝条]
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>击杀副本中的第一个首领 |cRXP_ENEMY_晦根|r。拾取他的 |T135139:0|t[铁木枝条]
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >>前往 |cRXP_PICK_冬泉谷|r 寻找 |T136116:0|t[热切的小精灵]
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >>前往 |cRXP_LOOT_暗语峡谷|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>向南前往并寻找 |cRXP_FRIENDLY_热情的小精灵|r。与它交互然后进行拾取
    >>|cRXP_WARN_避免与该区域的精英恶魔战斗。你直接跑过去就行了|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #label Hypothesis
    >>收集 |T132839:0|t[生命之火]。由 |cRXP_ENEMY_湿地|r 的 |cRXP_LOOT_格瑞姆巴托|r 附近的 |cRXP_PICK_精英龙人|r 掉落
    >>收集 |T135139:0|t[铁木树枝]。由 |cRXP_ENEMY_恶魔之落峡谷|r|cRXP_LOOT_（副本）|r 中的 |cRXP_WARN_晦根|r，或 |cRXP_ENEMY_厄运之槌西区|r|cRXP_LOOT_（副本）|r 中的 |cRXP_WARN_特迪斯·扭木|r 掉落
    >>收集 |T136116:0|t[热情的随从]。它是位于 |cRXP_FRIENDLY_冬泉谷|r 的 |cRXP_LOOT_暗语峡谷|r 中一个可互动的 |cRXP_PICK_友方NPC|r
    >>|cRXP_WARN_这些物品可以按任意顺序收集|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >>返回 |cRXP_PICK_D逆风小径|r
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>前往达拉然特工营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探金娜|r 对话
    .turnin 86969 >>交任务 魔法假说
    .accept 86970 >>接受任务 验证假说
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>前往位于卡拉赞西面的摩根墓地。|cRXP_WARN_走进那里的巨大暗影球体|r
    >>进入后使用你的 |T135432:0|t[|cRXP_FRIENDLY_魔化火印|r] 并等待剧情完成
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>向北返回达拉然特工营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探金娜|r 对话
    .turnin 86970 >>交任务 验证假说
    .target Agent Keanna
step
    >>|cRXP_WARN_恭喜，你现在已经完成了卡拉赞地穴的开门任务！|r
    >>你可以 |Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈里森·琼斯|r 对话，从他那里接取一个可以在副本内完成的任务
    .accept 86971 >>接受任务 珍奇卡拉赞珍玩！
    .target 哈里森·琼斯
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group RestedXP 满级指南
#subgroup 开门任务
#name 血色领地序章

step
   #completewith next
   .subzone 2268 >>前往位于 |cRXP_LOOT_东瘟疫之地|r 的 |cRXP_PICK_圣光之愿礼拜堂|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与礼拜堂内的 |cRXP_FRIENDLY_莱尼德·巴萨罗梅|r 对话
   .accept 87459 >>接受任务 血色活动
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰希卡·查伯斯|r 对话
    .home >>如果你愿意|cRXP_WARN_，你可以把炉石绑在这里|r。这将帮助你更快地从提瑞斯法林地返回
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_凯琳·斯蒂文|r 对话
    .fly Chillwind >>飞往西瘟疫之地
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与外面的 |cRXP_FRIENDLY_乔吉亚|r 对话
    .target Georgia
    .fly Undercity >>飞往幽暗城
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >>离开幽暗城
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >>前往提瑞斯法林地
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>向北前往血色营地 << Alliance
   >>向东前往血色营地 << Horde
   >>点击小帐篷外的 |cRXP_PICK_锁链|r。它会生成一个会攻击你的 |cRXP_WARN_精英|r |cRXP_ENEMY_血色渗透者|r
   >>击杀并 |cRXP_LOOT_拾取|r 他以获得 |T133471:0|t[高级指挥官的命令]
   .complete 87459,1 --Orders from the Commander
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >>返回 |cRXP_LOOT_东瘟疫之地|r 的 |cRXP_PICK_圣光之愿礼拜堂|r
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与礼拜堂内的 |cRXP_FRIENDLY_莱尼德·巴萨罗梅|r 对话
    .turnin 87459 >>交任务 血色活动
    .accept 87493 >>接受任务 提尔之手的骚乱
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>向南前往血色十字军营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官碧阿崔克丝|r 对话
    .turnin 87493 >>交任务 提尔之手的骚乱
    .accept 87497 >>接受任务 分裂
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官贝亚特丽丝|r 对话并完成她的所有对话
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>返回圣光之愿礼拜堂
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_莱尼德·巴萨罗梅|r 对话
    .turnin 87497 >>交任务 分裂
    .accept 87498 >>接受任务 血色救赎
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>返回血色十字军营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官碧阿崔克丝|r 对话
    .turnin 87498 >>交任务 血色救赎
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血色审判官凯尔多兰|r 对话
    .accept 87502 >>接受任务 收集情报
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_审判官乔瑟芬妮|r 对话 |cRXP_WARN_来获得临时血色伪装|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>进入提尔之手并前往中央的大教堂
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>走左边的路进入新阿瓦隆
step
    >>前往新阿瓦隆的堡垒
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_血色血犬|r |cRXP_WARN_它们会看穿你的伪装!|r
    >>你可以使用 |T132328:0|t[追踪野兽] 来帮助跟踪血犬的位置 << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>前往法师塔
    >>|cRXP_WARN_小心|r|cRXP_ENEMY_血色血犬|r |cRXP_WARN_它们会看穿你的伪装!|r
    >>你可以使用 |T132328:0|t[追踪野兽] 来帮助跟踪血犬的位置 << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>返回血色十字军营地
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_血色审判官凯尔多兰|r 对话
    .turnin 87502 >>交任务 收集情报
    .accept 87506 >>接受任务 瓦解城防
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>你现在可以通过收集4件可制作的血色套装，然后使用提供的 |T134503:0|t[|cRXP_WARN_血色徽记|r] |cFF0070FF来解锁永久的血色伪装|r
    >>你应该可以在拍卖行找到这些。这不是强制性的，但会让以后穿梭新阿瓦隆变得轻松得多
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_审判官乔瑟芬妮|r 对话
    .accept 90510 >>接受任务 新阿瓦隆
    .use 237020 --Scarlet Insignia
step
    >>进入提尔之手并寻找 |cRXP_ENEMY_血色围城指挥官|r
    >>|cRXP_WARN_通常可以在攻城武器附近或城墙上找到它们|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>返回血色十字军营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官碧阿崔克丝|r 对话
    .turnin 87506 >>交任务 瓦解城防
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银色特使|r 对话
    .accept 87508 >>接受任务 向泰罗索斯男爵报告
step
    >>返回圣光之愿礼拜堂
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 87508 >>交任务 向泰罗索斯男爵报告
    .accept 87509 >>接受任务 黎明之怒
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>返回血色十字军营地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官碧阿崔克丝|r 对话
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官碧阿崔克丝|r 对话
    .turnin 87509 >>交任务 黎明之怒
    .accept 87516 >>接受任务 斩首行动
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>该任务需要你击杀 |cRXP_ENEMY_新血色领地副本中的第一个Boss|r |cRXP_WARN_巴纳扎尔|r
    >>找一个团队，祝你狩猎顺利！
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_领主麦克斯韦尔·泰罗索斯|r 对话，他位于你在团队副本中击败巴纳扎尔后被传送到的监狱里
    .turnin 87516 >>交任务 斩首行动
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_恭喜！你已完成血色领地的序章任务线！|r
]])
