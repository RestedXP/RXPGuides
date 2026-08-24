if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP 终局指南
#subgroup 开门任务
#name 奥妮克希亚开门任务（联盟）


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_前往|r |cFFfa9602燃烧平原|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫林迪斯·河角|r 对话
    .accept 4182 >>接任务 黑龙的威胁
    .target 赫林迪斯·河角
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>击杀 |cRXP_ENEMY_黑色小龙|r, |cRXP_ENEMY_黑色龙兽|r, |cRXP_ENEMY_黑色龙裔|r 和一条 |cRXP_ENEMY_黑色幼龙|r
    >>|cRXP_ENEMY_黑色龙人|r|cRXP_WARN_、|r |cRXP_ENEMY_火鳞龙人|r |cRXP_WARN_和|r |cRXP_ENEMY_黑色幼龙|r |cRXP_WARN_都是精英怪。如有需要请组队|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫林迪斯·河角|r 对话
    .turnin 4182 >>交任务 黑龙的威胁
    .accept 4183 >>接任务 真正的主人
    .target 赫林迪斯·河角
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫林迪斯·河角|r 对话
    .accept 4183 >>接任务 真正的主人
    .target 赫林迪斯·河角
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博古斯·粗臂|r 对话
    .fly Redridge >>飞往赤脊山
    .target 博古斯·粗臂
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 4183 >>交任务 真正的主人
    .accept 4184 >>接任务 真正的主人
    .target 所罗门镇长
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target 艾蕾娜·斯托姆法瑟
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .turnin 4184 >>交任务 真正的主人
    .accept 4185 >>接任务 真正的主人
    .target 大领主伯瓦尔·弗塔根
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r 对话
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target 女伯爵卡特拉娜·普瑞斯托
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .turnin 4185 >>交任务 真正的主人
    .accept 4186 >>接任务 真正的主人
    .target 大领主伯瓦尔·弗塔根
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge>>飞往赤脊山
    .target 杜加尔·朗德瑞克
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 4186 >>交任务 真正的主人
    .accept 4223 >>接任务 真正的主人
    .target 所罗门镇长
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Burning Steppes >>飞往燃烧平原
    .target 艾蕾娜·斯托姆法瑟
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    .turnin 4223 >>交任务 真正的主人
    .accept 4224 >>接任务 真正的主人
    .target 麦克斯韦尔元帅
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >>前往火焰峰
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_狼狈不堪的约翰|r 对话
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    .turnin 4224 >>交任务 真正的主人
    .accept 4241 >>接受任务 温德索尔元帅
    .target 麦克斯韦尔元帅
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温德索尔元帅|r 对话
    >>|cRXP_WARN_如果你的队伍中没有盗贼，你可能需要击杀|r |cRXP_ENEMY_审讯官格斯塔恩|r |cRXP_WARN_来获取|r |cRXP_LOOT_监狱牢房钥匙|r |cRXP_WARN_以打开牢门|r
    .turnin 4241 >>交任务 温德索尔元帅
    .accept 4242 >>接受任务 被遗弃的希望
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>前往 |cFFfa9602燃烧平原|r 的摩根的岗哨
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    >>|cRXP_WARN_直到你在黑石深渊里找到|r |T134331:0|t[弄皱的便笺] |cRXP_WARN_该任务链将在此中断|r
    .turnin 4242 >>交任务 被遗弃的希望
    .target 麦克斯韦尔元帅
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>进入黑石深渊
step
    .isQuestTurnedIn 4242
    >>击杀黑石深渊的 |cRXP_ENEMY_矮人|r。拾取他们的 |T134331:0|t[弄皱的便笺]
    .use 11446 >>|cRXP_WARN_使用|r |T134331:0|t[弄皱的便笺] |cRXP_WARN_来开始该任务|r
    >>|cRXP_WARN_请务必在击杀首领 |cRXP_ENEMY_安格弗将军|r 和 |r傀儡统帅阿格曼奇|cRXP_ENEMY_ 之前完成此操作|r
    >>|cRXP_WARN_如果你到现在还没有找到它，就在禁闭室附近清理怪物，直到它掉落为止|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >>接受任务 弄皱的便笺
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温德索尔元帅|r 对话
    .turnin 4264 >>交任务 弄皱的便笺
    .accept 4282 >>接受任务 一丝希望
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_温德索尔元帅|r 对话
    .accept 4282 >>接受任务 一丝希望
step
    .isOnQuest 4282
    >>击杀 |cRXP_ENEMY_安格弗将军|r 和 |cRXP_ENEMY_傀儡统帅阿格曼奇|r。拾取他们的 |cRXP_LOOT_温德索尔元帅遗失的情报|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温德索尔元帅|r 对话
    >>|cRXP_WARN_确保所有队友在这一步都关闭了自动接取任务！RestedXP已在这一步默认关闭自动接取|r
    >>|cRXP_WARN_接受任务之后会开启冲破牢笼的护送任务。请确保你已清理干净监狱区域的所有怪物，以便更轻松地完成护送|r |cRXP_FRIENDLY_温德索尔元帅|r
    .turnin 4282 >>交任务 一线希望
    .accept 4322,1 >>接受任务 冲破牢笼！
step
    .isOnQuest 4322
    >>护送 |cRXP_FRIENDLY_温德索尔元帅|r 通过黑石深渊
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>前往 |cFFfa9602燃烧平原|r 的摩根的岗哨
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    .turnin 4322 >>交任务 冲破牢笼！
    .accept 6402 >>接受任务 集合在暴风城
    .target 麦克斯韦尔元帅
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    .accept 6402 >>接受任务 集合在暴风城
    .target 麦克斯韦尔元帅
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侍卫洛文|r 和 |cRXP_FRIENDLY_雷吉纳德·温德索尔|r 对话
    >>在暴风城大门口与 |cRXP_FRIENDLY_侍卫洛文|r 对话后，他会唤来 |cRXP_FRIENDLY_雷吉纳德·温德索尔|r
    >>|cRXP_WARN_如果你在队伍中，请确保没人自动接受了潜藏者任务。为此，插件已暂时关闭了自动接取任务功能|r
    .turnin 6402 >>交任务 集合在暴风城
    .accept 6403,1 >>接受任务 潜藏者
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>护送 |cRXP_FRIENDLY_雷吉纳德·温德索尔|r 进入暴风要塞
    >>在要塞内千万不要帮|cRXP_FRIENDLY_雷吉纳德·温德索尔|r 打怪。如果你插手，极有可能会白送命。老实呆在箭头标记的位置，等剧情自己放完就行。这会持续几分钟
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .turnin 6403 >>交任务 潜藏者
    .accept 6501 >>接受任务 巨龙之眼
    .target 大领主伯瓦尔·弗塔根
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .accept 6501 >>接受任务 巨龙之眼
    .target 大领主伯瓦尔·弗塔根
step
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>利用山地跳跃到达 |cRXP_FRIENDLY_哈尔琳|r
    >>开始位置已在你的地图上标记。请仔细跟随路点箭头
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_效果，使跳跃变得更容易|r << !Priest !Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_或者|r |T132917:0|t[轻羽毛]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_效果，使跳跃变得更容易|r << Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_或者|r |T132917:0|t[轻羽毛]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_或者|r |T135928:0|t[漂浮]|cRXP_WARN_效果，使跳跃变得更容易|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看视频参考|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔琳|r 对话
    .turnin 6501 >>交任务 巨龙之眼
    .accept 6502 >>接受任务 龙火护符
    .target Haleh
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    .isQuestTurnedIn 6403
    >>击杀 |cRXP_ENEMY_达基萨斯将军|r。拾取他的 |cRXP_LOOT_黑龙勇士之血|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>利用山地跳跃到达 |cRXP_FRIENDLY_哈尔琳|r
    >>开始位置已在你的地图上标记。请仔细跟随路点箭头
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_效果，使跳跃变得更容易|r << !Priest !Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_或者|r |T132917:0|t[轻羽毛]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_效果，使跳跃变得更容易|r << Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[诺格弗格药剂]|cRXP_WARN_或者|r |T132917:0|t[轻羽毛]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[缓落术] |cRXP_WARN_或者|r |T135928:0|t[漂浮]|cRXP_WARN_效果，使跳跃变得更容易|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_点击此处查看视频参考|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔琳|r 对话
    >>|cRXP_WARN_小心|cRXP_FRIENDLY_ 哈尔琳|r 面前的蓝色圆圈。踩上去会将你传送回洞穴里|r
    .turnin 6502 >>交任务 龙火护符
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔琳|r 对话
    >>|cRXP_WARN_小心！千万不要踩到 |cRXP_FRIENDLY_哈尔琳|r 前面的蓝色圆圈。这会将你传送到洞穴，里面有精英龙，你可能会死|r
    .turnin 6502 >>交任务 龙火护符
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP 终局指南
#subgroup 开门任务
#name 奥妮克希亚开门任务（部落）

step
    #completewith next
    .subzone 340 >>前往 |cFFfa9602荒芜之地|r 的卡加斯
step
    .goto Badlands,5.81,47.52
	>>与 |cRXP_FRIENDLY_军官高图斯|r 对话来接收 |T133473:0|t[|cRXP_LOOT_高图斯的命令|r]。使用它来接受任务
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>接受任务 高图斯的命令
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个5-10人副本|r
step
    #sticky
    #label ImportantDocuments
    >>拾取 |cRXP_LOOT_重要的黑石文件|r
    >>它在副本里有4个不同的随机刷新位置：
    >>|cRXP_WARN_在|r 维姆萨拉克|cRXP_ENEMY_的脚下|r
    >>|cRXP_WARN_在|r 指挥官沃恩|cRXP_ENEMY_ 旁边的一个空角落里|r
    >>|cRXP_WARN_在|r 欧莫克大王|cRXP_ENEMY_ 附近|r
    >>|cRXP_WARN_在 |cRXP_ENEMY_乌洛克|r 的贡品堆旁边|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>击杀 |cRXP_ENEMY_欧莫克大王|r、|cRXP_ENEMY_指挥官沃恩|r 和 |cRXP_ENEMY_维姆萨拉克|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>前往 |cFFfa9602荒芜之地|r 的卡加斯
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_军官高图斯|r 对话
    .turnin 4903 >>交任务 高图斯的命令
    .accept 4941 >>接受任务 伊崔格的智慧
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>前往|cFFfa9602奥格瑞玛|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊崔格|r 对话并完成对话，然后与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 4941 >>交任务 伊崔格的智慧
    .accept 4974 >>接受任务 为部落而战！
    .target 伊崔格
    .target 萨尔
    .skipgossip
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .subzone 1583,2 >>进入黑石塔
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>击杀 |cRXP_ENEMY_雷德·黑手|r。拾取他的 |cRXP_LOOT_头颅|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>前往|cFFfa9602奥格瑞玛|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 4974 >>交任务 为部落而战！
    .accept 6566 >>接受任务 风吹来的消息
    .target 萨尔
step
    .goto Orgrimmar,31.74,37.82
    >>聆听 |cRXP_FRIENDLY_萨尔|r 的故事
    .complete 6566,1 --Thrall's Tale
    .target 萨尔
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .turnin 6566 >>交任务 风吹来的消息
    .accept 6567 >>接受任务 部落的勇士
    .target 萨尔
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_多拉斯|r 对话
    .fly Sun Rock Retreat >>飞往烈日石居
    .target 多拉斯
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷克萨|r 对话
    >>|cRXP_FRIENDLY_雷克萨|r会由北向南巡逻穿过|cRXP_WARN_凄凉之地|cFFfa9602|r。他的巡逻路线已在地图上标出。跟随路径点箭头，以确保你覆盖了他的整条巡逻路线|r
    >>他一旦到达|cRXP_WARN_菲拉斯|cFFfa9602的双塔山就会消失。经过5分钟的倒计时后，他会在|r石爪山脉/凄凉之地边界|cFFfa9602处重新刷新|r
    .turnin 6567 >>交任务 部落的勇士
    .accept 6568 >>接受任务 雷克萨的遗言
    .unitscan 雷克萨
step
    #completewith next
    .zone Western Plaguelands >>前往 |cFFfa9602西瘟疫之地|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巫女麦兰达|r 对话
    .turnin 6568 >>交任务 雷克萨的遗言
    .accept 6569 >>接受任务 黑龙幻象
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>击杀任何类型的 |cRXP_ENEMY_龙类|r。拾取它们的 |cRXP_LOOT_黑色龙人的眼球|r
    >>|cRXP_WARN_只有黑石塔上层中的 |cRXP_ENEMY_龙类|r 才能掉落 |cRXP_LOOT_眼球|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>前往 |cFFfa9602西瘟疫之地|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巫女麦兰达|r 对话
    .turnin 6569 >>交任务 黑龙幻象
    .accept 6570 >>接受任务 埃博斯塔夫
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入埃博斯塔夫
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_当心！确保你使用|r |T133608:0|t[龙形护符] |cRXP_WARN_在接近|cRXP_ENEMY_埃博斯塔夫|r之前，否则他可能会把你杀掉|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃博斯塔夫|r 对话
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙形护符] |cRXP_WARN_来伪装自己|r
    .turnin 6570 >>交任务 埃博斯塔夫
    .accept 6582 >>接受任务 龙骨试炼，斯克利尔
    .accept 6583 >>接受任务 龙骨试炼，索姆努斯
    .accept 6584 >>接受任务 龙骨试炼，克鲁纳里斯
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>在 |cRXP_ENEMY_冬泉谷|r 击杀 |cFFfa9602斯克利尔|r
    >>在 |cRXP_ENEMY_悲伤沼泽|r 击杀 |cFFfa9602索姆努斯|r
    >>在 |cRXP_ENEMY_塔纳利斯|r 击杀 |cFFfa9602克鲁纳里斯|r
    >>从他们身上获取 |cRXP_LOOT_头骨|r
    >>|cRXP_WARN_他们的位置标记在地图上。建议至少与5名玩家一起进行此任务|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>进入索瑞尔洞穴
step
    .goto Winterspring,52.91,55.77
    >>在洞窟深处击杀 |cRXP_ENEMY_斯克利尔|r。拾取他的 |cRXP_LOOT_颅骨|r
    >>|cRXP_WARN_小心他的|r |T135848:0|t[冰息术] |cRXP_WARN_技能（它面前的AOE喷吐）|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>前往 |cFFfa9602悲伤沼泽|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>击杀 |cRXP_ENEMY_索姆努斯|r。拾取它的 |cRXP_LOOT_颅骨|r
    >>|cRXP_WARN_小心他的|r |T136007:0|t[腐蚀酸液吐息] |cRXP_WARN_技能（它面前的AOE喷吐）|r
    >>|cRXP_WARN_他在湖的东南面绕着小圈巡逻|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>前往 |cFFfa9602塔纳利斯|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>前往时光之穴
step
    .goto Tanaris,64.85,50.52
    >>击杀 |cRXP_ENEMY_克鲁纳里斯|r。拾取它的 |cRXP_LOOT_颅骨|r
    >>|cRXP_WARN_小心他的|r |T135831:0|t[沙尘之息] |cRXP_WARN_技能（它面前的AOE喷吐）|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入埃博斯塔夫的洞穴
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_当心！确保你使用|r |T133608:0|t[龙形护符] |cRXP_WARN_在接近|cRXP_ENEMY_埃博斯塔夫|r之前，否则他可能会把你杀掉|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃博斯塔夫|r 对话
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙形护符] |cRXP_WARN_来伪装自己|r
    .turnin 6582 >>交任务 龙骨试炼，斯克利尔
    .turnin 6583 >>交任务 龙骨试炼，索姆努斯
    .turnin 6584 >>交任务 龙骨试炼，克鲁纳里斯
    .accept 6585 >>接受任务 龙骨试炼，埃克托兹
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>前往 |cFFfa9602湿地|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>前往龙喉大门
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>杀死 |cRXP_ENEMY_埃克托兹|r。拾取他的 |cRXP_LOOT_颅骨|r
    >>|cRXP_WARN_小心他的|r |T135831:0|t[火息术] |cRXP_WARN_技能（它面前的AOE喷吐）|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入埃博斯塔夫的洞穴
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_当心！确保你使用|r |T133608:0|t[龙形护符] |cRXP_WARN_在接近|cRXP_ENEMY_埃博斯塔夫|r之前，否则他可能会把你杀掉|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃博斯塔夫|r 对话
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙形护符] |cRXP_WARN_来伪装自己|r
    .turnin 6585 >>交任务 龙骨试炼，埃克托兹
    .accept 6601 >>接受任务 晋升……
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷克萨|r 对话
    >>|cRXP_FRIENDLY_雷克萨|r会由北向南巡逻穿过|cRXP_WARN_凄凉之地|cFFfa9602|r。他的巡逻路线已在地图上标出。跟随路径点箭头，以确保你覆盖了他的整条巡逻路线|r
    >>他一旦到达|cRXP_WARN_菲拉斯|cFFfa9602的双塔山就会消失。经过5分钟的倒计时后，他会在|r石爪山脉/凄凉之地边界|cFFfa9602处重新刷新|r
    .turnin 6601 >>交任务 晋升……
    .accept 6602 >>接受任务 黑龙勇士之血
    .unitscan 雷克萨
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    .isQuestTurnedIn 6601
    >>击杀 |cRXP_ENEMY_达基萨斯将军|r。拾取他的 |cRXP_LOOT_黑龙勇士之血|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>前往 |cFFfa9602凄凉之地|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷克萨|r 对话
    >>|cRXP_FRIENDLY_雷克萨|r会由北向南巡逻穿过|cRXP_WARN_凄凉之地|cFFfa9602|r。他的巡逻路线已在地图上标出。跟随路径点箭头，以确保你覆盖了他的整条巡逻路线|r
    >>他一旦到达|cRXP_WARN_菲拉斯|cFFfa9602的双塔山就会消失。经过5分钟的倒计时后，他会在|r石爪山脉/凄凉之地边界|cFFfa9602处重新刷新|r
    .turnin 6602 >>交任务 黑龙勇士之血
    .unitscan 雷克萨

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#subgroup 开门任务
#group RestedXP 终局指南
#name 熔火之心开门任务

step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_洛索斯·天痕|r 对话
    .accept 7848 >>接受任务 熔火之心的传送门
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    #softcore
    >>在进入讲学厅之前向右转，并在|cRXP_LOOT_熔火之心|r副本传送门外的地面上拾取|cFFfa9602熔火碎片|r
    >>|cRXP_WARN_最快到达这里的方法是从岩浆里游过去。这需要从|r伊森迪乌斯勋爵|cRXP_ENEMY_的平台开始|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>在进入讲学厅之前向右转，并在|cRXP_LOOT_熔火之心|r副本传送门外的地面上拾取|cFFfa9602熔火碎片|r
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛索斯·天痕|r 对话
    .turnin 7848 >>交任务 熔火之心的传送门
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP 终局指南
#subgroup 开门任务
#name 黑翼之巢开门任务

step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>击杀 |cRXP_ENEMY_裂盾军需官|r。拾取他的 |T133473:0|t[|cRXP_LOOT_黑手的命令|r]。用它来接受任务
    >>|cRXP_WARN_这是一个强大的55级精英。为了安全起见，找个队伍一起做|r
    >>|cRXP_WARN_他位于黑石塔副本传送门右边的走廊中|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>接受任务 黑手的命令
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>击杀 |cRXP_ENEMY_裂盾军需官|r。拾取他的 |T133473:0|t[|cRXP_LOOT_黑手的命令|r]。用它来接受任务
    >>|cRXP_WARN_他位于黑石塔副本传送门右边的走廊中|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>接受任务 黑手的命令
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个10人副本。你或者你的队伍中的某人必须拥有|r |T133343:0|t[|cRXP_LOOT_晋升印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>点击位于|cRXP_PICK_达基萨斯将军|r 身后，黑石塔上层最终房间内的|cRXP_ENEMY_达基萨斯的烙印|r
    .turnin 7761 >>交任务 黑手的命令

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP 终局指南
#subgroup 钥匙
#name 黑石塔上层钥匙

step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_确保你已组好队伍|r
step
    >>击杀黑石塔中的各种小怪，直到你拾取一个 |T135725:0|t[|cRXP_LOOT_原始晋升印章|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_裂盾渗透者|r 对话
    >>|cRXP_WARN_在你刚进入副本的霍德玛尔城时，他会位于你左侧的一个平台上|r
    .accept 4742 >>接受任务 晋升印章
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>击杀 |cRXP_ENEMY_欧莫克大王|r。拾取他的 |cRXP_LOOT_尖石宝钻|r
    >>击杀 |cRXP_ENEMY_指挥官沃恩|r。拾取他的 |cRXP_LOOT_燃棘宝钻|r
    >>击杀 |cRXP_ENEMY_维姆萨拉克|r。拾取他的 |cRXP_LOOT_血斧宝钻|r
    >>|cRXP_WARN_这些|r|cRXP_LOOT_宝钻|r|cRXP_WARN_的掉落几率约为30%。你很可能需要打多次黑石塔下层|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_裂盾渗透者|r 对话
    >>|cRXP_WARN_在你刚进入副本的霍德玛尔城时，他会位于你左侧的一个平台上|r
    .turnin 4742 >>交任务 晋升印章
    .accept 4743 >>接受任务 晋升印章
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_打开|r |T132595:0|t[维埃兰的礼物] |cRXP_WARN_来拾取|r |T133276:0|t[|cRXP_LOOT_未铸造的晋升印章|r] |cRXP_WARN_和|r |T134334:0|t[|cRXP_LOOT_龙力宝珠|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>前往 |cFFfa9602尘泥沼泽|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入埃博斯塔夫的洞穴
    >>|cRXP_WARN_你需要一个至少有3名玩家的队伍才能完成接下来的部分|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入埃博斯塔夫的洞穴
    >>|cRXP_WARN_你需要至少3个玩家的队伍来完成下一阶段，包括一个坦克和一个治疗者以确保安全！|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_在开怪|r 埃博斯塔夫|cRXP_LOOT_ 之前，先将|r |T133276:0|t[|cRXP_WARN_未淬火的晋升印章|r] |cRXP_ENEMY_放在地上|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_攻击|r |cRXP_ENEMY_埃博斯塔夫|r。|cRXP_WARN_当他的血量低于10%时，使用|r |T134334:0|t[|cRXP_LOOT_龙力宝珠|r] |cRXP_WARN_来控制|r |cRXP_ENEMY_埃博斯塔夫|r
    >>|cRXP_WARN_施放|r |T135824:0|t[黑龙之焰] |cRXP_WARN_来锻造你放在地上的|r |T133276:0|t[|cRXP_LOOT_未铸造的晋升印章|r] |cRXP_WARN_|r
    >>完成后，拾取地上的 |cRXP_PICK_锻造的晋升印章|r
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>进入黑石塔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_裂盾渗透者|r 对话
    >>|cRXP_WARN_在你刚进入副本的霍德玛尔城时，他会位于你左侧的一个平台上|r
    .turnin 4743 >>交任务 晋升印章
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP 终局指南
#subgroup 钥匙
#name 通灵学院钥匙（联盟）

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_前往任何主城的拍卖行并购买2个|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >>前往 |cFFfa9602铁炉堡|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使考雷·落锤|r 对话
    >>|cRXP_FRIENDLY_信使考雷·落锤|r |cRXP_WARN_在整个铁炉堡巡逻|r
    >>|cRXP_WARN_此任务也可在|r |cFFfa9602暴风城|r |cRXP_WARN_或者|r |cFFfa9602达纳苏斯|r 接取
    .acceptmultiple 5091,5090,5066 >>接受任务战斗的号角：瘟疫之地！
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>前往|cFFfa9602西瘟疫之地|r的冰风岗
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5066 >>交任务战斗的号角：瘟疫之地！
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5091 >>交任务战斗的号角：瘟疫之地！
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5090 >>交任务战斗的号角：瘟疫之地！
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5092 >>接任务 扫清道路
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>击杀 |cRXP_ENEMY_骷髅剥皮者|r 和 |cRXP_ENEMY_被奴役的食尸鬼|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5098 >>接受任务 标记哨塔
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5098 >>交任务 标记哨塔
    .accept 5533 >>接受任务 通灵学院
    .target 指挥官阿什拉姆·瓦罗菲斯特
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>摧毁 |T135432:0|t[信号火炬]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5533 >>交任务 通灵学院
    .accept 5537 >>接受任务 骸骨碎片
    .target 化学家阿尔比顿
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>击杀 |cRXP_ENEMY_骷髅刽子手|r 和 |cRXP_ENEMY_骷髅侍僧|r。拾取他们的 |cRXP_LOOT_骸骨碎片|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5537 >>交任务 骸骨碎片
    .accept 5538 >>接受任务 昂贵的模具
    .target 化学家阿尔比顿
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克林科·古德斯迪尔|r 对话
    >>|cRXP_WARN_交任务需要支付15金钱|r
    .turnin 5538 >>交任务 昂贵的模具
    .accept 5801 >>接受任务 火羽山
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_如果你之前没有购买它们，前往任何主城的拍卖行并购买2个|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博拉·石锤|r 对话
    .fly Un'Goro >>飞往安戈洛环形山
    .target 博拉·石锤
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>前往火羽山的山顶
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_在岩浆池中使用|r |T134457:0|t[骷髅钥匙模具] |cRXP_WARN_来制造|r |cRXP_LOOT_未完工的骷髅钥匙|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>前往|cFFfa9602西瘟疫之地|r的冰风岗
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5801 >>交任务 火羽山
    .accept 5803 >>接受任务 阿拉基的圣甲虫
    .target 化学家阿尔比顿
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>前往安多哈尔废墟的中心
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强大的精英怪。建议至少3名玩家组队击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有的话，对他使用|r |T134961:0|t[疫病中和器] |cRXP_WARN_|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强大的精英怪。建议至少3名玩家组队击杀他|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强力的精英，并且周围有许多怪物，请小心清理它们。建议组成一个至少有4名玩家的队伍来击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有的话，对他使用|r |T134961:0|t[疫病中和器] |cRXP_WARN_|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强力的精英，并且周围有许多怪物，请小心清理它们。建议组成一个至少有4名玩家的队伍来击杀他|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5803 >>交任务 阿拉基的圣甲虫
    .target 化学家阿尔比顿
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5505 >>交任务 通灵学院的钥匙
    .target 化学家阿尔比顿

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP 终局指南
#subgroup 钥匙
#name 通灵学院钥匙（部落）


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_前往任何主城的拍卖行并购买2个|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>前往 |cFFfa9602幽暗城|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者巴萨扎德|r 对话
    .acceptmultiple 5093,5094,5095 >>接受任务战斗的号角：瘟疫之地！
    >>|cRXP_WARN_此任务也可在|r |cFFfa9602奥格瑞玛|r |cRXP_WARN_或者|r |cFFfa9602雷霆崖|r 接取
    .unitscan 公告员高拉克 --ORG
    .unitscan Harbinger Balthazadd --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >>前往|cFFfa9602提瑞斯法林地|r 的亡灵壁垒
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5093 >>交任务战斗的号角：瘟疫之地！
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5094 >>交任务战斗的号角：瘟疫之地！
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5095 >>交任务战斗的号角：瘟疫之地！
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>点击火堆边的 |cRXP_PICK_火岩箱|r
	.collect 12814,1,5095,1 --Flame in a Bottle (1)
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .accept 5096 >>接受任务 误导血色十字军
	.target 高级执行官德灵顿
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>点击 |cRXP_PICK_指挥官帐篷|r，然后使用你的 |T132484:0|t[天灾战旗]
	>>|cRXP_WARN_这些怪物比较难打，而且容易引到周围的怪，小心点|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5096 >>交任务 误导血色十字军
    .accept 5098 >>接受任务 标记哨塔
	.target 高级执行官德灵顿
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_在哨塔入口旁使用|r |T135432:0|t[信号火炬] |cRXP_WARN_。你可以在不引到里面精英|cRXP_ENEMY_ 骷髅军官|r 的情况下完成此操作|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德灵顿|r 对话
    .turnin 5098 >>交任务 标记哨塔
    .accept 838 >>接受任务 通灵学院
	.target 高级执行官德灵顿
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>摧毁 |T135432:0|t[信号火炬]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 838 >>交任务 通灵学院
    .accept 964 >>接受任务 骸骨碎片
	.target 药剂师迪瑟斯
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>击杀 |cRXP_ENEMY_骷髅刽子手|r 和 |cRXP_ENEMY_骷髅侍僧|r。拾取他们的 |cRXP_LOOT_骸骨碎片|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 964 >>交任务 骸骨碎片
    .accept 5514 >>接受任务 昂贵的模具
	.target 药剂师迪瑟斯
step
    #completewith next
    .subzone 976 >>前往|cFFfa9602塔纳利斯|r的加基森
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克林科·古德斯迪尔|r 对话
    >>|cRXP_WARN_交任务需要支付15金钱|r
    .turnin 5514 >>交任务 昂贵的模具
    .accept 5802 >>接受任务 火羽山
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_如果你之前没有购买它们，前往任何主城的拍卖行并购买2个|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁克|r 对话
    .fly Un'Goro >>飞往安戈洛环形山
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>前往火羽山的山顶
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_在岩浆池中使用|r |T134457:0|t[骷髅钥匙模具] |cRXP_WARN_来制造|r |cRXP_LOOT_未完工的骷髅钥匙|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >>前往|cFFfa9602提瑞斯法林地|r 的亡灵壁垒
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 5802 >>交任务 火羽山
    .accept 5804 >>接受任务 阿拉基的圣甲虫
	.target 药剂师迪瑟斯
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>前往安多哈尔废墟的中心
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强大的精英怪。建议至少3名玩家组队击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有的话，对他使用|r |T134961:0|t[疫病中和器] |cRXP_WARN_|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强大的精英怪。建议至少3名玩家组队击杀他|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强力的精英，并且周围有许多怪物，请小心清理它们。建议组成一个至少有4名玩家的队伍来击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有的话，对他使用|r |T134961:0|t[疫病中和器] |cRXP_WARN_|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>击杀 |cRXP_ENEMY_召唤者阿拉基|r。拾取地上 |cRXP_PICK_阿拉基的护符匣|r 以获得 |cRXP_LOOT_阿拉基的圣甲虫|r
    >>|cRXP_ENEMY_阿拉基|r |cRXP_WARN_是一个强力的精英，并且周围有许多怪物，请小心清理它们。建议组成一个至少有4名玩家的队伍来击杀他|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 5804 >>交任务 阿拉基的圣甲虫
	.target 药剂师迪瑟斯
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪瑟斯|r 对话
    .turnin 5511 >>交任务 通灵学院的钥匙
	.target 药剂师迪瑟斯

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP 终局指南
#subgroup 钥匙
#name 黑石深渊钥匙


step
    #completewith next
    .subzone 254 >>前往 |cFFfa9602黑石山|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗兰克罗恩·铸铁|r 对话
    >>|cRXP_WARN_你必须处于|r |T132331:0|t[灵魂状态] |cRXP_WARN_才能与|r |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r 对话
    >>|cRXP_WARN_跳进黑石山的岩浆中送死，最好是在熔火之心传送门入口附近|r
    .accept 3801 >>接受任务 黑铁的遗产
    .turnin 3801 >>交任务 黑铁的遗产
    .accept 3802 >>接受任务 黑铁的遗产
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_点击|r |cRXP_PICK_烬视火盆|r |cRXP_WARN_来获得|r |T136215:0|t[烬辉视界] |cRXP_WARN_debuff|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗兰克罗恩·铸铁|r 对话
    >>|cRXP_WARN_你必须拥有|r |T136215:0|t[烬辉视界] |cRXP_WARN_debuff才能看到他|r
    .accept 3801 >>接受任务 黑铁的遗产
    .turnin 3801 >>交任务 黑铁的遗产
    .accept 3802 >>接受任务 黑铁的遗产
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>在你的尸体处复活并进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你已组好队伍|r
step
    >>击杀|cRXP_ENEMY_弗诺斯·达克维尔|r。拾取 |cRXP_LOOT_铁胆之锤|r
    >>|cRXP_WARN_他在伊森迪奥斯房间外的采石场巡逻|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>跑回到秩序竞技场上方的区域附近
    >>点击 |cRXP_PICK_弗兰克罗恩·铸铁的雕像|r
    .turnin 3802 >>交任务 黑铁的遗产
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP 终局指南
#subgroup 钥匙
#name 厄运之槌 钥匙

step
    #completewith next
    .zone Feralas >>前往 |cFFfa9602菲拉斯|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>进入厄运之槌的东入口
    >>|cRXP_WARN_确保你已组好队伍|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普希林|r 对话
    >>|cRXP_WARN_这是副本入口处的一只绿名|cRXP_FRIENDLY_小鬼|r。和他对话后他会逃跑。你需要一路追赶并多次和他对话，直到他在隐秘林地的大厅里变成敌对状态|r
    .skipgossip
    .unitscan Pusillin
step
    >>击杀变成敌对状态的 |cRXP_ENEMY_普希林|r。搜刮他的尸体以拾取 |T134244:0|t[|cRXP_LOOT_月牙钥匙|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP 终局指南
#name 屠魔峡谷开门任务
#subgroup 开门任务
<<sod

step
    #completewith next
    .subzone 2479 >>前往位于 |cFFfa9602费伍德森林|r 的翡翠圣地
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r对话
    .accept 84384 >>接受任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>前往 |cFFfa9602冬泉谷|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>击杀 |cRXP_ENEMY_狂暴枭兽|r。拾取他它们的 |T237413:0|t[|cRXP_LOOT_枭兽的松果腺|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>前往位于 |cFFfa9602费伍德森林|r 的翡翠圣地
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_影齿大使|r对话
    .turnin 84384 >>交任务 恶魔骗术
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
