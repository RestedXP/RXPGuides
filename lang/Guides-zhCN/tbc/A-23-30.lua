if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南 (联盟版)
<< Alliance
#name 23-24级 湿地
#subgroup RestedXP 联盟 20-32 级
#next 24-27级 赤脊山/暮色森林

step
.dungeon SFK
    #completewith FinalAccept
    +|cRXP_WARN_开始寻找影牙城堡队伍。你很快将前往银松森林去打影牙城堡|r
step
    .goto Wetlands,8.509,55.697
    詹姆斯·哈洛兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r 交谈
    .accept 484 >>接受任务小鳄鱼皮
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_德温·晨光|r 交谈
    .vendor >>|cRXP_BUY_尽可能多购买|r |T134831:0|t[治疗药水] |cRXP_BUY_有库存的话|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_德温·晨光|r 没有库存，请跳过此步骤|r
    德温·晨光
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    卡尔·波兰
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡尔·波兰|r 交谈
    .accept 279 >>接受任务海中的鱼人
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 交谈
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    谢尔雷·布隆迪尔
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    大副菲兹莫斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_大副菲兹莫斯|r 交谈
    .accept 288 >>接受任务第三舰队
    .accept 463 >>接受任务绿色守卫者
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r 交谈
    .home >>将你的炉石设置为米奈希尔港
    旅店老板赫布瑞克
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r 交谈
    >>|cRXP_BUY_购买一壶|r |T132792:0|t[壶装矮人蜜酒]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    旅店老板赫布瑞克
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >>前往楼上，朝 |cRXP_FRIENDLY_考古学家弗拉冈特|r 方向移动
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    考古学家弗拉冈特
    .turnin 942 >>交任务健忘的勘察员
    .accept 943 >>接受任务健忘的勘察员
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    考古学家弗拉冈特
    .accept 943 >>接受任务健忘的勘察员
step
    .goto Wetlands,10.89,59.66
    大副菲兹莫斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_大副菲兹莫斯|r 交谈
    .turnin 288 >>交任务第三舰队
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塞达|r 交谈
    .accept 470 >>接受任务搜寻软泥怪
    塞达
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾德温娜·蒙佐尔|r 交谈
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[锋利的箭]
    .collect 2515,1800 --Sharp Arrow (1800)
    艾德温娜·蒙佐尔
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔·奥雷|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_尼尔·奥雷|r 没有库存，请跳过此步骤|r
	尼尔·奥雷
    .bronzetube
step
    .goto Wetlands,9.861,57.486
    斯托菲队长
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_斯托菲队长|r 交谈
    .accept 464 >>接受任务龙喉战旗
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    塔雷尔·石纹
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塔雷尔·石纹|r 交谈
    .accept 305 >>接受任务寻找挖掘队
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >>击杀 |cRXP_ENEMY_苔皮豺狼人|r，同时寻找影牙城堡队伍
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>影牙城堡没有可接任务。你需要从湿地跑到银松森林。穿越阿拉希高地时务必沿着道路前进，并注意 |cRXP_ENEMY_被遗忘者信使|r
    >>|cRXP_WARN_你暂时不需要获取阿拉希高地的飞行路线|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 交谈
    .fp Southshore >>获取南海镇的飞行路径
    瑟迪克·普罗斯
    达尔拉·哈瑞斯
    被遗忘者信使
step
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >>进入影牙城堡
step
.dungeon SFK
    +影牙城堡没有可接的任务
    >>清理影牙城堡。完成后离开
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >>将炉石使用回米奈希尔港
    >>|cRXP_BUY_需要的话就去买点食物和饮水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>击杀 |cRXP_ENEMY_湿地鳄鱼幼崽|r。拾取他们的 |cRXP_LOOT_小鳄鱼皮|r
    .complete 484,1
    湿地鳄鱼幼崽
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>击杀 |cRXP_ENEMY_蓝腮鱼人|r
    >>击杀 |cRXP_ENEMY_高布勒尔|r。拾取他的 |cRXP_LOOT_头部|r
    >>|cRXP_ENEMY_高布勒尔|r |cRXP_WARN_在沼泽地小范围巡逻|r
    .complete 279,1 -- Bluegill Murloc slain (12)
    蓝鳃鱼人
    .complete 279,2 -- Gobbler's Head
    高布勒尔
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_弗拉德·飞轮|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_弗拉德·飞轮|r 没有库存，请跳过此步骤|r
	弗拉德·飞轮
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 交谈
    .accept 294 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_麦琳·石纹|r 交谈
    .turnin 305 >>交任务寻找挖掘队
    .accept 306 >>接受任务寻找挖掘队
    麦琳·石纹
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>在地上拾取 |cRXP_LOOT_弗拉贡特的化石|r
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .isOnQuest 943
    #loop    
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>击杀 |cRXP_ENEMY_杂斑迅猛龙|r 和 |cRXP_ENEMY_杂斑尖啸龙|r。拾取他们的 |cRXP_LOOT_雷鲁之石|r
    >>|cRXP_WARN_如果打完每种各 10 个还没找到，就先跳过。后面再完成|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    杂斑迅猛龙
    .complete 294,2 --Kill Mottled Screecher (x10)
    杂斑尖啸龙
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    杂斑迅猛龙
    杂斑尖啸龙
step
    #loop    
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>击杀 |cRXP_ENEMY_杂斑迅猛龙|r 和 |cRXP_ENEMY_杂斑尖啸龙|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    杂斑迅猛龙
    .complete 294,2 --Kill Mottled Screecher (x10)
    杂斑尖啸龙
step << Hunter/Warlock/Priest
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 交谈
    .turnin 294 >>交任务奥莫尔的复仇
    .accept 295 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step << Hunter/Warlock/Priest
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r
    >>|cRXP_WARN_这个任务难度很高，怪物等级远高于你，不过奖励的武器非常值得一做|r << Hunter
    >>|cRXP_WARN_这个任务很难，因为怪物等级比你高很多，但作为奖励获得的魔杖非常值得付出这些努力|r << Priest
    >>|cRXP_WARN_建议使用下方视频中展示的位置来利用怪物的寻路机制，这会让任务完成起来轻松许多。如果无法完成，请跳过这一步|r
    .link https://youtu.be/irmy9vPM9Lg >>https://youtu.be/irmy9vPM9Lg >> 点击此处查看参考视频
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    杂斑镰爪龙
    .complete 295,2 --10/10 Mottled Razormaw slain
    杂斑刺喉龙
step << Hunter/Warlock/Priest
    .isQuestComplete 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 交谈
    .turnin 295 >>交任务奥莫尔的复仇
    .accept 296 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step << Hunter/Warlock/Priest
    .isQuestTurnedIn 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 交谈
    .accept 296 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step << Hunter/Warlock/Priest
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>击杀 |cRXP_ENEMY_萨尔图斯|r。拾取他的 |cRXP_LOOT_萨尔图斯的爪子|r
    >>|cRXP_WARN_他通常在主挖掘场上方的山坡上，但有时会巡逻下来|r
    >>|cRXP_WARN_这个任务非常困难，因为他是 29 级。使用上一个任务中的卡位/寻路点，可以无限风筝他|r
    .link https://youtu.be/zIOV0XrxB80 >>https://youtu.be/zIOV0XrxB80 >> 点击此处查看参考视频
    .complete 296,1 --1/1 Sarltooth's Talon
    萨尔图斯
step << Hunter/Warlock/Priest
    .isQuestComplete 296
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 交谈
    .turnin 296 >>交任务奥莫尔的复仇
    奥莫尔·铁衣
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>击杀 |cRXP_ENEMY_龙喉兽人|r。拾取他们的 |cRXP_LOOT_龙喉战旗|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_龙喉袭击者|r 会对你施放|r |T132149:0|t[网] |cRXP_WARN_在你身上|r
    .complete 464,1 -- Dragonmaw War Banner (8)
    龙喉袭击者
    龙喉沼泽行者
    龙喉军官
    龙喉暗影守卫
    龙喉百夫长
    龙喉白骨守卫
step
    .goto Wetlands,49.916,39.368
    埃纳尔·石钳
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_埃纳尔·石钳|r 交谈
    .accept 469 >>接受任务日常供货
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_吉克斯勒|r 交谈
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_Buy|r |T134413:0|t[Liferoot] |cRXP_WARN_if |cRXP_FRIENDLY_Kixxle|r has any in stock. You need them for the|r |T132403:0|t[|cFF0070FF旋风之斧|r] |cRXP_WARN_quest later|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_吉克斯勒|r 没有库存，请跳过此步骤|r << Warrior
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_吉克斯勒|r 没有库存，请跳过此步骤|r << !Warrior
    吉克斯勒
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r 交谈
    .turnin 463 >>交任务绿色守卫者
    .accept 276 >>接受任务践踏之爪
    绿色守卫者雷希耶尔
step
    #label
    #loop
    .goto Wetlands,63.93,63.54,0
    .goto Wetlands,61.58,73.07,0
    .goto Wetlands,63.93,63.54,60,0
    .goto Wetlands,62.34,69.34,60,0
    .goto Wetlands,61.58,73.07,60,0
    .goto Wetlands,62.34,69.34
	>>击杀 |cRXP_ENEMY_藓皮豺狼人|r 和 |cRXP_ENEMY_混血藓皮豺狼人|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    藓皮豺狼人
    .complete 276,2 -- Mosshide Mongrel slain (10)
    混血藓皮豺狼人
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r 交谈
    .turnin 276 >>交任务践踏之爪
    .accept 277 >>接受任务火焰管制
    绿色守卫者雷希耶尔
step << NightElf/Draenei
    #sticky
    >>|cRXP_WARN_你很快需要前往铁炉堡。你可以选择通过洛克莫丹隧道跑过去 (更慢但简单) 或者炉石回到米奈希尔港后使用暴雪的角色卡死/脱困网页 (更快但操作更复杂)|r
    >>|cRXP_WARN_如果你打算使用网页方式，建议现在就开始打开该网页。加载通常需要几分钟。注意：暂时不要选择移动你的角色|r
    >>|cRXP_WARN_如果你之前打过死亡矿井并且已经开了铁炉堡的飞行点，请跳过这一步|r
    +在决定要走哪条路线后，点击这里完成此步骤
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> 点击此处查看参考视频
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> 点击此处前往美服角色脱困链接
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.battle.net/support/en/article/32275 >> 点这里打开欧服的角色卡死/脱困页面
    .zoneskip Ironforge
    .zoneskip Stormwind City
step
    #loop
    .goto Wetlands,54.95,44.84,0
    .goto Wetlands,51.84,37.13,0
    .goto Wetlands,37.13,35.68,0
    .goto Wetlands,31.21,37.86,0
    .goto Wetlands,26.48,40.44,0
    .goto Wetlands,20.52,45.70,0
    .goto Wetlands,17.83,50.26,0
    .goto Wetlands,14.53,47.67,0
    .goto Wetlands,20.37,45.21,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>击杀 |cRXP_ENEMY_湿地鳄鱼幼崽|r。拾取他们的 |cRXP_LOOT_小鳄鱼皮|r
    .complete 484,1
    湿地鳄鱼幼崽
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    .isQuestAvailable 1785 -- Dwarf Paladin Redemption quest
    .isOnQuest 277,464,294,279,484
    .subzone 150 >>|cRXP_WARN_跑回米奈希尔港。途中顺便刷怪练级。注意：不要使用炉石，很快就会用到|r
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    塔雷尔·石纹
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塔雷尔·石纹|r 交谈
    .turnin 306 >>交任务寻找挖掘队
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯托菲队长|r 交谈
    .turnin 464 >>交任务龙喉战旗
    斯托菲队长
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r 交谈
    .turnin 469 >>交任务日常供货
    .turnin 484 >>交任务小鳄鱼皮
    詹姆斯·哈洛兰
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡尔·波兰|r 交谈
    .turnin 279 >>交任务海中的鱼人
    卡尔·波兰
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塞达|r 交谈
    .turnin 470 >>交任务搜寻软泥怪
    塞达
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>前往楼上，前去找 |cRXP_FRIENDLY_考古学家弗拉冈特|r
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    .turnin 943 >>交任务健忘的勘察员
    考古学家弗拉冈特
    .subzoneskip 150,1
step << !NightElf !Draenei
    #optional << Dwarf Paladin
    .isOnQuest 277,464,294,279,484
	.hs >>将炉石使用回米奈希尔港
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
step << NightElf/Draenei
    .goto Loch Modan,25.11,8.99
    .hs >>|cRXP_WARN_将炉石使用回米奈希尔港，或者如果你希望通过网站解锁方法前往铁炉堡，可以选择跑过去|r
    >>|cRXP_WARN_如果你打算步行前往铁炉堡，请通过丹奥加兹隧道进入洛克莫丹|r
    .zoneskip Loch Modan --Completes if you run to Loch
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	#completewith next
	.goto Wetlands,63.9,78.6
    >>前往湿地东部水坝底部的洞穴
	.zone Loch Modan >>在洞穴最里面的蘑菇顶部下线。 
    >>重新上线后，你会被传送到塞尔萨玛
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_点击此处查看参考视频|r
step << NightElf/Draenei
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r 交谈
    .fp Thelsamar >>获取塞尔萨玛的飞行路径
    索格拉姆·伯雷森
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_在跑向丹莫罗的途中，开始脱下你的装备|r
    .deathskip >>引 |cRXP_ENEMY_有伤疤的峭壁野猪|r 送死，在进入丹莫罗后于 |cRXP_FRIENDLY_灵魂医者|r 处复活
    有伤疤的峭壁野猪
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	>>进东南边的穴居人洞穴。然后用一次下线跳过
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >>https://www.youtube.com/watch?v=yQBW3KyguCM >> |cRXP_WARN_点击此处查看参考视频|r
	.zone Ironforge >>下线跳过，或直接前往铁炉堡
step << NightElf/Draenei
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_罗斯洛·鲁治|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_罗斯洛·鲁治|r 没有库存，请跳过此步骤|r
	罗斯洛·鲁治
    .bronzetube
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >>前往铁炉堡
    .subzoneskip 150 --Completes if u hearth to Menethil
step
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>前往楼上，前去找 |cRXP_FRIENDLY_考古学家弗拉冈特|r
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    .turnin 943 >>交任务健忘的勘察员
    考古学家弗拉冈特
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塞达|r 交谈
    .turnin 470 >>交任务搜寻软泥怪
    塞达
    .zoneskip Wetlands,1
step
    .goto Wetlands,11.458,52.163
    塔雷尔·石纹
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塔雷尔·石纹|r 交谈
    .turnin 306 >>交任务寻找挖掘队
    .zoneskip Wetlands,1
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯托菲队长|r 交谈
    .turnin 464 >>交任务龙喉战旗
    斯托菲队长
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r 交谈
    .turnin 469 >>交任务日常供货
    .turnin 484 >>交任务小鳄鱼皮
    詹姆斯·哈洛兰
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡尔·波兰|r 交谈
    .turnin 279 >>交任务海中的鱼人
    卡尔·波兰
    .zoneskip Wetlands,1
step << Draenei
.dungeon DM
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 交谈
    >>|cRXP_WARN_如果你没有打过死亡矿井，且还没有铁炉堡的飞行点，请跳过这一步|r
    .fly Ironforge >>飞往铁炉堡
    谢尔雷·布隆迪尔
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 交谈
    .fly Ironforge >>飞往铁炉堡
    谢尔雷·布隆迪尔
step << NightElf/Draenei
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>从码头尽头跳下水，游向指示点
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Loch Modan
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色脱困自助功能直接跳转到铁炉堡。你需要先在指定位置下线，然后用另一个角色进入帮助菜单 (或者把下面的脱困链接粘贴到浏览器中)，向下滚动找到自助服务。选择你的角色并点击移动。如果无法成功脱困，请跳过此步骤，沿着山脉游泳前往西部荒野
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> 点击此处查看参考视频
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> 点击此处前往美服角色脱困链接
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.battle.net/support/en/article/32275 >> 点这里打开欧服的角色卡死/脱困页面
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Loch Modan
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 交谈
    .trainer >>训练你的职业技能
    丁克
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r 交谈
    .trainer >>学习 |T135757:0|t[传送：铁炉堡]
    贝尔斯塔弗·风暴之眼
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 交谈
    .trainer >>训练你的职业技能
    托德雷·铁矿
step
    #optional
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开启任务|r
    .accept 968 >>接受任务深渊之神
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_葛利·硬骨|r 交谈
    .turnin 968 >>交任务深渊之神
    葛利·硬骨
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_葛利·硬骨|r 交谈
    .turnin 971 >>交任务深渊中的知识
    葛利·硬骨
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_先知亚瓦德|r 交谈
    .trainer >>训练你的职业技能
    先知亚瓦德
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 交谈
    布兰度尔·铁锤
    .goto Ironforge,23.131,6.143
    .accept 2999 >>接受任务圣洁之书
    .trainer >>训练你的职业技能
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >>前往楼上，前去找 |cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_蒂萨·热炉|r 交谈
    .turnin 2999 >>交任务圣洁之书
    .accept 1645 >>接受任务圣洁之书
    .turnin 1645 >>交任务圣洁之书
    蒂萨·热炉
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_交叉针织外衣|r] to start the quest|r
    .accept 1646 >>接受任务圣洁之书
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_蒂萨·热炉|r 交谈
    .turnin 1646 >>交任务圣洁之书
    .accept 1647 >>接受任务圣洁之书
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_约翰·特纳|r 交谈
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_在拍卖行附近沿着铁炉堡外环巡逻|r
    .turnin 1647 >>交任务圣洁之书
    .accept 1648 >>接受任务圣洁之书
    .turnin 1648 >>交任务圣洁之书
    .accept 1778 >>接受任务圣洁之书
    约翰·特纳
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_蒂萨·热炉|r 交谈
    蒂萨·热炉
    .turnin 1778 >>交任务圣洁之书
    .accept 1779 >>接受任务圣洁之书
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_穆里顿·热炉|r 交谈
    穆里顿·热炉
    .turnin 1779 >>交任务圣洁之书
    .accept 1783 >>接受任务圣洁之书
step << Dwarf Paladin
    .goto Ironforge,18.10,51.60
    .isQuestAvailable 1785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r 交谈
    .home Ironforge >>将你的炉石设置为铁炉堡
    旅店老板洛雷·火酒
    .bindlocation 1537
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >>离开铁炉堡
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_使用|r |T133439:0|t[生命符记] |cRXP_WARN_对|r |cRXP_FRIENDLY_纳姆·法奥克|r
	.use 6866
	纳姆·法奥克
step << Dwarf Paladin
    #label SymbolofLife
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_纳姆·法奥克|r 交谈
    .use 6866
    .turnin 1783 >>交任务圣洁之书
    .accept 1784 >>接受任务圣洁之书
    纳姆·法奥克
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>击杀 |cRXP_ENEMY_黑铁间谍|r。拾取他们的 |cRXP_LOOT_黑铁手稿|r
    .complete 1784,1 --Dark Iron Script (1)
    黑铁间谍
step << Dwarf Paladin
	#completewith TurnInScript
    .hs >>将炉石使用回铁炉堡
    .zoneskip Ironforge
    .bindlocation 1537,1
step << Dwarf Paladin
    #completewith TurnInScript
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >>前往楼上，朝 |cRXP_FRIENDLY_穆尔顿|r 方向移动
step << Dwarf Paladin
    #label TurnInScript
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_穆里顿·热炉|r 交谈
    .turnin 1784 >>交任务圣洁之书
    .accept 1785 >>接受任务圣洁之书
    穆里顿·热炉
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_蒂萨·热炉|r 交谈
    .turnin 1785 >>交任务圣洁之书
    蒂萨·热炉
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_格莱斯·瑟登|r 交谈
    .fp Ironforge >>获取铁炉堡的飞行路径
    格莱斯·瑟登
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf Hunter/Draenei Hunter
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在里面与 |cRXP_FRIENDLY_布里维夫·石手|r 交谈
    .train 266 >>学习枪械
    布里维夫·石拳
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_雷格努斯·雷石|r 交谈
    .goto Ironforge,69.872,82.890
    .trainer >>训练你的职业技能
    雷格努斯·雷石
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝莉亚·雷岩|r 交谈
    .goto Ironforge,70.856,85.839
    .trainer >>学习你的宠物技能
    贝莉亚·雷岩
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比尔班·飞钳|r 交谈
    .goto Ironforge,65.905,88.405
    .trainer >>训练你的职业技能
    比尔班·飞钳
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_考格斯宾|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_考格斯宾|r 没有库存，请跳过此步骤|r
	考格斯宾
    .bronzetube
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>乘坐地铁前往暴风城
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >>跳到狮鹫的头顶上，然后下线再重新登录，通过下线跳过传送到地铁。
    .zone Stormwind City >>乘坐地铁前往暴风城
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 24-27级 赤脊山/暮色森林
#subgroup RestedXP 联盟 20-32 级
#next 27–30 湿地/希尔斯布莱德

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比利巴布·旋轮|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_比利巴布·旋轮|r 没有库存，请跳过此步骤|r
    .bronzetube
    比利巴布·旋轮
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >>前往暴风要塞
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_塔卢恩大使|r 交谈  
    .accept 9429 >>接受任务前往夜色镇
    塔卢恩大使
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 交谈
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    夜行者奥斯伯
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往楼上，在 SI:7 内前去找 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r 交谈
    .accept 2281 >>接受任务赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    “剃刀”雷吉克
    .accept 2360 >>接受任务马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    马迪亚斯·肖尔大师
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板奥里森|r 交谈
    .home >>将你的炉石设置为暴风城
    旅店老板奥里森
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >>前往暴风城大教堂内，与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 交谈。他会给你 |T133739:0|t[|cRXP_LOOT_勇气之书|r]
    .use 6776 >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_勇气之书|r] 来激发任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接受任务勇气之书
    达索瑞恩·拉尔
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 交谈
    .turnin 1649 >>交任务勇气之书
    .accept 1650 >>接受任务勇气之书
    达索瑞恩·拉尔
step << Human Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_虔诚的亚瑟|r 交谈
    .trainer >>训练你的职业技能
    虔诚的亚瑟
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲利希亚·加姆|r 交谈
    >>|cRXP_BUY_购买|r |T133849:0|t[暴风城特产调料]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    菲利希亚·加姆
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_厄苏拉·德林|r 交谈
    .trainer >>训练你的职业技能
    厄苏拉·德林
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 交谈
    .vendor >>|cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[魅魔]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[虚空行者]   
    斯巴克尔
step << Warlock
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 交谈
    .turnin 1738 >>交任务同心树
    .turnin 65602 >>交任务：爱是什么？
    .accept 1739 >>接受任务誓缚
    .accept 65603 >>接受任务誓缚
    黑暗缚灵者加科因
    .isOnQuest 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 交谈
    .turnin 1738 >>交任务同心树
    .accept 1739 >>接受任务誓缚
    .accept 65603 >>接受任务誓缚
    黑暗缚灵者加科因
    .isQuestTurnedIn 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 交谈
    .turnin 1738 >>交任务同心树
    .accept 1739 >>接受任务誓缚
    黑暗缚灵者加科因
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 8674 >>|cRXP_WARN_Use the|r |T136065:0|t[同心树之核] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
    .use 6913
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6913 >>击杀 |cRXP_ENEMY_被召唤的魅魔|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    魅魔
step << Warlock
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .use 190186 >>|cRXP_WARN_使用|r |T136065:0|t[木制雕像] |cRXP_WARN_来召唤一个|r |cRXP_ENEMY_被召唤的魅魔|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
    .isQuestTurnedIn 65602
step << Warlock
    #completewith next
    +|cRXP_WARN_You may now use either the|r |T136220:0|t[魅魔] |cRXP_WARN_or|r |T136221:0|t[虚空行者] |cRXP_WARN_as your pet|r
    >>|cRXP_WARN_The|r |T136220:0|t[魅魔] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[虚空行者] |cRXP_WARN_provides more survivability|r
step << Warlock
    .goto Stormwind City,25.25,78.55
    黑暗缚灵者加科因
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 交谈
    .turnin 1739 >>交任务誓缚
    .turnin 65603 >>交任务誓缚
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 交谈
    .trainer >>训练你的职业技能
    艾尔莎林
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
    拉瑞麦尼·普尔度
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 交谈
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[烹饪] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
    >>|T133024:0|t[青铜管]
    >>|T133970:0|t[狼肋排]
    >>|T134321:0|t[黏糊的蜘蛛腿]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    拍卖师亚克森
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 交谈
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T133024:0|t[青铜管]
    >>|T133970:0|t[狼肋排]
    >>|T134321:0|t[黏糊的蜘蛛腿]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    拍卖师亚克森
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r 交谈
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >>将以下物品存入你的银行： << Shaman
    >>|T132824:0|t[装满的波涛之袋] << Shaman -- 23750
    牛顿·伯恩赛德
step << !Human !Warlock
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 交谈
    .fp Stormwind >>获取暴风城的飞行路径
    杜加尔·朗德瑞克
step
    #completewith next
    .goto 1429/0,395.900,-9114.200,80 >>离开暴风城
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >>前往阿佐拉之塔。登上塔楼
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_当恩·布赖特斯塔|r 交谈
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134850:0|t|T134830:0|t[药水] |cRXP_BUY_as well, which you should buy if available|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134830:0|t[药水] |cRXP_BUY_as well, which you should buy if available|r << Warrior/Rogue
    当恩·布赖特斯塔
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>前往赤脊山
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守卫帕克|r 对话
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>接受任务豺狼人的入侵
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲尔顿副队长|r 交谈
	菲尔顿副队长
    .turnin 244 >>交任务豺狼人的入侵
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 交谈
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    艾蕾娜·斯托姆法瑟
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_治安官马瑞斯|r 交谈
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接受任务黑石氏族的威胁
    治安官马瑞斯
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r 交谈
    .accept 91 >>接受任务所罗门的律法
    拜里弗·科纳彻尔
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    码头管理员巴伦
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_码头管理员巴伦|r 交谈
    .accept 127 >>接受任务卖鱼
    .accept 150 >>接受任务鱼人偷猎者
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卫兵伯尔顿|r 交谈
    .accept 386 >>接受任务伸张正义
    卫兵伯尔顿
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卢修斯|r 交谈
    .turnin 2281 >>交任务赤脊山的联络员
    .accept 2282 >>接受任务奥瑟尔伐木场
    卢修斯
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>击杀 |cRXP_ENEMY_鱼人斥候|r 和 |cRXP_ENEMY_鱼人招潮者|r。拾取他们的 |cRXP_LOOT_鱼人的鳍|r 和 |cRXP_LOOT_斑点太阳鱼|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    鱼人斥候
    鱼人招潮者
step
    >>击杀 |cRXP_ENEMY_黑石步兵|r 和 |cRXP_ENEMY_黑石前锋|r。拾取他们的 |cRXP_LOOT_斧|r
	>>|cRXP_WARN_注意 |cRXP_ENEMY_黑石前锋|r 会对你施放|r |T132149:0|t[网] |cRXP_WARN_在你身上|r
    >>|cRXP_WARN_在地图西南方向标记的位置轮流击杀 |cRXP_ENEMY_兽人|r 和 |cRXP_ENEMY_鱼人|r|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    黑石步兵
	黑石前锋
step
    .goto Redridge Mountains,56.4,51.8
    >>击杀 |cRXP_ENEMY_鱼人斥候|r 和 |cRXP_ENEMY_鱼人招潮者|r。拾取他们的 |cRXP_LOOT_鱼人的鳍|r 和 |cRXP_LOOT_斑点太阳鱼|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    鱼人斥候
    鱼人招潮者
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >>前往奥瑟尔磨坊
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_站在指示点位置。调整好你的镜头和鼠标，使你在不移动的情况下可以一次性点到 3 个 |cRXP_PICK_练习用保险箱|r|r
    >>|cRXP_WARN_在奥瑟尔磨坊打开地上的 |cRXP_PICK_练习用保险箱|r，直到你的|r |T136058:0|t[开锁] 技能达到 80|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_治安官马瑞斯|r 交谈
	治安官马瑞斯
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>交任务黑石氏族的威胁
step
    .goto Redridge Mountains,27.724,47.377
    码头管理员巴伦
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_码头管理员巴伦|r 交谈
    .turnin 127 >>交任务卖鱼
    .turnin 150 >>交任务鱼人偷猎者
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卢修斯|r 交谈
    .turnin 2282 >>交任务奥瑟尔伐木场
    卢修斯
step
    .goto Redridge Mountains,26.75,46.43
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 180 >>接受任务通缉：范高雷中尉
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 交谈
	玛蒂·詹罗斯
    .accept 34 >>接受任务不速之客
step
    .goto Redridge Mountains,15.68,49.30
    >>击杀 |cRXP_ENEMY_贝利格拉布|r。拾取他的 |cRXP_LOOT_獠牙|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    贝利格拉布
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r 交谈
    .turnin 34 >>交任务不速之客
    玛蒂·詹罗斯
step
    #completewith next
    .subzone 42 >>前往暮色森林的夜色镇
step
    .goto Duskwood,75.81,45.29
    伊瓦夫人
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_伊瓦夫人|r 交谈
    .accept 66 >>接受任务斯塔文的传说
    .accept 101 >>接受任务惩罚图腾
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板崔莱尼|r 交谈
    .home >>将你的炉石设置为暮色森林
    旅店老板崔莱尼
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_厨师格鲁奥|r 交谈
	>>|cRXP_WARN_你需要至少 50 点烹饪技能才能接取该任务|r
    .accept 90 >>接受任务干烤狼肉串
    .turnin 90 >>交任务干烤狼肉串
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    厨师格鲁奥
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 交谈
    .accept 56 >>接受任务守夜人
    指挥官阿尔泰娅·埃伯洛克
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_书记员达尔塔|r 交谈
    .turnin 66 >>交任务斯塔文的传说
    .accept 67 >>接受任务斯塔文的传说
    书记员达尔塔
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_学者德尔兰|r 交谈  
    .turnin 9429 >>交任务前往夜色镇
    学者德尔兰
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卡洛尔|r 交谈
    .accept 173 >>接受任务林子里的狼人
    卡洛尔
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莱尼·卡尔文|r 交谈
    .accept 163 >>接受任务乌鸦岭
    .accept 164 >>接受任务斯温的货物
    .accept 165 >>接受任务隐士
    艾莱尼·卡尔文
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_菲利希亚·玛林|r 交谈
    .fp Duskwood>>获取暮色森林的飞行路径
    菲利希亚·玛林
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_赫尔伯|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_赫尔伯|r 没有库存，请跳过此步骤|r
    .bronzetube--skips the step if you have a bronze tube
    赫尔伯
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .accept 174 >>接受任务眺望群星
    .turnin 174 >>交任务眺望群星
    .itemcount 4371,1 -- Bronze Tube (1)
    维克托·安特拉斯
step
    .goto Duskwood,79.80,48.02
    维克托·安特拉斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .accept 175 >>接受任务眺望群星
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r 交谈
    .turnin 175 >>交任务眺望群星
    .accept 177 >>接受任务眺望群星
    盲眼玛丽
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务一本破旧的历史书
    .use 2794 --An Old History Book
step
	#completewith next
    >>击杀 |cRXP_ENEMY_骷髅战士|r 和 |cRXP_ENEMY_骷髅法师|r
    >>|cRXP_ENEMY_骷髅战士|r |cRXP_WARN_会施放|r |T132316:0|t[断筋]
    >>|cRXP_ENEMY_骷髅法师|r |cRXP_WARN_会施放|r |T135846:0|t[寒冰箭] |cRXP_WARN_并且还会用|r |T135843:0|t[冰霜护甲] |cRXP_WARN_减速你|r
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    骷髅战士
    骷髅法师
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r 可能在教堂内，或在外面四处游荡|r
    .complete 177,1
    疯狂的食尸鬼
    .isQuestTurnedIn 174
step
    #loop
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>击杀 |cRXP_ENEMY_骷髅战士|r 和 |cRXP_ENEMY_骷髅法师|r
    >>|cRXP_ENEMY_骷髅战士|r |cRXP_WARN_会施放|r |T132316:0|t[断筋]
    >>|cRXP_ENEMY_骷髅法师|r |cRXP_WARN_施放|r |T135846:0|t[寒冰箭] |cRXP_WARN_并且还会用|r |T135843:0|t[冰霜护甲] |cRXP_WARN_减速你|r
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    骷髅战士
    骷髅法师
step
    #completewith Level25
    >>在暮色森林击杀 |cRXP_ENEMY_蜘蛛|r。拾取它们的 |cRXP_LOOT_粘糊的蜘蛛腿|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    结网毒蜘蛛
    .mob Green Recluse
    小型黑寡妇蜘蛛
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >>前往暮色森林西部，前去找 |cRXP_FRIENDLY_基特斯|r
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基特斯|r 交谈
    .turnin 163 >>交任务乌鸦岭
    .accept 5 >>接受任务饥肠辘辘的基特斯
    基特斯
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 交谈
    .turnin 164 >>交任务斯温的货物
    .accept 95 >>接受任务斯温的复仇
    斯温·约根
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔斯|r 交谈
    .accept 226 >>接受任务恶狼成群
    拉尔斯
step
    #completewith SFD
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r。拾取他们的 |cRXP_LOOT_狼肋排|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 交谈
    .turnin 165 >>交任务隐士
    .accept 148 >>接受任务夜色镇的补给
    亚伯克隆比
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r。拾取他们的 |cRXP_LOOT_狼肋排|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔斯|r 交谈
    .turnin 226 >>交任务恶狼成群
    拉尔斯
step
    #label Level25
    .xp 25
step
	.goto Duskwood,32.4,36.6,0
	.goto Duskwood,29.6,50.4,0
    .goto Duskwood,33.6,60.4,0
    .goto Duskwood,12.2,69.8,0
    .goto Duskwood,10.6,37.0,0
    .goto Duskwood,33.6,60.4,70,0
    .goto Duskwood,12.2,69.8,70,0
    .goto Duskwood,10.6,37.0,70,0
    .goto Duskwood,12.8,55.6,70,0
	.goto Duskwood,32.4,36.6,70,0
	.goto Duskwood,29.6,50.4,70,0
    >>在暮色森林击杀 |cRXP_ENEMY_蜘蛛|r。拾取它们的 |cRXP_LOOT_粘糊的蜘蛛腿|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    结网毒蜘蛛
    .mob Green Recluse
    小型黑寡妇蜘蛛
step
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .goto Duskwood,17.72,29.07
    .accept 225 >>接受任务破旧的坟墓
step
    #completewith MoonbrookSt
    .zone Westfall >>前往西部荒野
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 交谈
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    索尔
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板 (默认按键：V) 这样可以在塔内的一些拐角处看到躲在后面的敌人|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 交谈
    >>|cRXP_WARN_这个任务是必须完成的，关系到你的|r |T132290:0|t[毒药]|r
    .turnin 2360 >>交任务马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务克拉文之塔
    密探吉尔妮
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[搜索] |cRXP_ENEMY_丑陋的迪菲亚懒汉|r。拾取地上的物品以获得 |cRXP_LOOT_迪菲亚塔楼钥匙|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    丑陋的迪菲亚懒汉
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[曲木匕首] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_前往塔楼的第2层顶楼。在|r |T132320:0|t[潜行] |cRXP_WARN_状态下，并且 |cRXP_ENEMY_迪菲亚哨兵|r 不在你身旁时，跳到椅子上，再跳到灯上，最后跳到路径点位置顶部的书架上|r
    >>|cRXP_WARN_手动|r |T132320:0|t[取消潜行]|cRXP_WARN_，然后按下你的 "与目标互动" 快捷键来打开 |cRXP_PICK_暮色森林宝箱|r。拾取其中的|r |cRXP_LOOT_克拉文·摩特维克的日志|r
    >>|cRXP_WARN_注意：你的|r |T132320:0|t[潜行] |cRXP_WARN_在拾取|r |cRXP_LOOT_克拉文·摩特维克的日志|r 后会暂时失效 
    >>|cRXP_WARN_如果你在第2层没有击杀 |cRXP_ENEMY_迪菲亚哨兵|r，请做好逃跑的准备。当你站在书架顶部时，他们很可能会一直对你产生仇恨 (但不会攻击你) ，因为那里是一个脱战点|r
    >>|cRXP_WARN_如果你的背包中或已装备|r |T135641:0|t[匕首] |cRXP_WARN_，你可以施放|r |T132282:0|t[伏击] |cRXP_WARN_对付里面的 |cRXP_ENEMY_迪菲亚巡塔员|r 和 |cRXP_ENEMY_迪菲亚哨兵|r，从而瞬间击杀他们。击杀第一个 |cRXP_ENEMY_迪菲亚哨兵|r 后请做好逃跑准备，并记住你可能会从上方被攻击。这种方法更慢，但安全性高得多|r
    >>|cRXP_WARN_注意，如果你需要跑出塔楼，|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 和 |cRXP_ENEMY_迪菲亚苦工|r 可能会在塔楼入口处|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点这里看视频教学
    迪菲亚巡塔员
    迪菲亚哨兵
step
    #completewith MoonbrookSt
    .subzone 20 >>前往月溪镇
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>点击地上的 |cRXP_PICK_旧箱子|r
    .turnin 67 >>交任务斯塔文的传说
    .accept 68 >>接受任务斯塔文的传说
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r 交谈
    .turnin 1650 >>交任务勇气之书
    达芙妮·斯迪威尔
    .accept 1651 >>接受任务勇气之书
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r 交谈
    .turnin 1651 >>交任务勇气之书
    达芙妮·斯迪威尔
    .accept 1652 >>接受任务勇气之书
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >>游向海中
step << Druid
    .goto Westfall,17.928,33.099
    >>打开 |cRXP_PICK_奇怪的保险箱|r。拾取 |cRXP_LOOT_水兽耐力坠饰|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[水兽敏捷坠饰] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    >>|cRXP_WARN_这样可以节省你跑回去的时间|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 交谈
    .turnin 272 >>交任务海狮试炼
    .accept 5061 >>接受任务水栖形态
    德迪利特·星焰
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    洛甘纳尔
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r 对话
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>飞往泰达希尔
    希尔瓦·菲纳雯斯
step << Druid
    .goto Darnassus,35.375,8.405
    玛斯雷·驭熊者
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .turnin 5061 >>交任务水栖形态
step 
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step 
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Duskwood >>飞往夜色镇
    索尔
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    索尔
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >>将炉石使用回暴风城
	.cooldown item,6948,>0,1
    .zoneskip Stormwind City
    .bindlocation 1519,1
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备你的主武器|r << Rogue
    .turnin 2359 >>交任务克拉文之塔
    马迪亚斯·肖尔大师
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 交谈
    .fly Duskwood>>飞往暮色森林
    杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r 交谈
    >>如果你刚刚完成了毒药任务，现在把你的炉石绑定在夜色镇
    >>如果你的炉石已经绑定在夜色镇，请跳过这一步
    .home >>将你的炉石设置为夜色镇
    旅店老板崔莱尼
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >>交任务克拉文之塔
    .accept 2607 >>接受任务赞吉尔之触
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>前往地下室
    .turnin 2607 >>交任务赞吉尔之触
    .accept 2608 >>接受任务赞吉尔之触
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>在聊天框中输入 /lay，然后等待任务自动完成
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >>交任务赞吉尔之触
    .accept 2609 >>接受任务赞吉尔之触
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>从可疑的商人那里购买一个铅瓶
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>去找卖花的商人
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>在拍卖行购买一个青铜管
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>前往大教堂广场与花园之间桥旁的商店
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>如果你找不到青铜管，就必须跳过这个任务，先把急救练到 80，在暮色森林刷蜘蛛获取一个小毒囊，制作抗毒药剂，并移除赞吉尔的毒素。
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >>交任务赞吉尔之触
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格鲁奥|r 交谈
	>>|cRXP_WARN_你需要至少 50 点烹饪技能才能接取该任务|r
    .accept 90 >>接受任务干烤狼肉串
    .turnin 90 >>交任务干烤狼肉串
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    厨师格鲁奥
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格鲁奥|r 交谈
    .turnin 5 >>交任务饥肠辘辘的基特斯
    .accept 93 >>接受任务黑蟹蛋糕
    .turnin 93 >>交任务黑蟹蛋糕
    .accept 240 >>接受任务基特斯的美餐
    厨师格鲁奥
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 交谈
    .turnin 56 >>交任务守夜人
    指挥官阿尔泰娅·埃伯洛克
    .accept 57 >>接受任务守夜人
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r 交谈
    .turnin 68 >>交任务斯塔文的传说
    .accept 69 >>接受任务斯塔文的传说
    书记员达尔塔
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉·沃宁迪|r 交谈
    .turnin 225 >>交任务破旧的坟墓
    .accept 227 >>接受任务摩根·拉迪莫尔
    希拉·沃宁迪
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 交谈
    .turnin 227 >>交任务摩根·拉迪莫尔
    .accept 228 >>接受任务摩拉迪姆
    指挥官阿尔泰娅·埃伯洛克
step
    #sticky
    .destroy 2154 >>Delete the |T133741:0|t[摩根·拉迪莫尔的故事]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 交谈
    .turnin 148 >>交任务夜色镇的补给
    伊瓦夫人
    .accept 149 >>接受任务幽灵的发丝
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔伯|r 交谈
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_赫尔伯|r 没有库存，请跳过此步骤|r
    .bronzetube--skips the step if you have a bronze tube
    赫尔伯
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .accept 174 >>接受任务眺望群星
    .turnin 174 >>交任务眺望群星
    .itemcount 4371,1 -- Bronze Tube (1)
    维克托·安特拉斯
step
    .goto Duskwood,79.80,48.02
    维克托·安特拉斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .accept 175 >>接受任务眺望群星
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r 交谈
    .turnin 175 >>交任务眺望群星
    .accept 177 >>接受任务眺望群星
    盲眼玛丽
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r 交谈
    .turnin 149 >>交任务幽灵的发丝
    .accept 154 >>接受任务归还梳子
    盲眼玛丽
step
	#completewith next
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务一本破旧的历史书
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r 可能在教堂内，或在外面四处游荡|r
    .complete 177,1
    疯狂的食尸鬼
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .turnin 177 >>交任务眺望群星
    .accept 181 >>接受任务眺望群星
    维克托·安特拉斯
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 交谈
    .accept 181 >>接受任务眺望群星
    维克托·安特拉斯
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 交谈
    .turnin 154 >>交任务归还梳子
    .accept 157 >>接受任务送交发丝
    伊瓦夫人
step
    .goto Duskwood,49.85,77.71
    >>点击地上的 |cRXP_PICK_松散的泥土堆|r
    .turnin 95 >>交任务斯温的复仇
    .accept 230 >>接受任务斯温的营地   
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 交谈
    .turnin 157 >>交任务送交发丝
    亚伯克隆比
    .accept 158 >>接受任务僵尸酒
step << Hunter/Warrior/Paladin
    .goto Duskwood,19.59,37.28
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_是一名 30 级精英，攻击力很高，但移动速度较慢。如有需要，尽量绕着大型树木风筝他|r
    >>|cRXP_WARN_这个任务非常困难。如有需要请组队完成。如果你无法找到队伍或无法单刷，请跳过这一步，之后还会有机会再做|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    摩拉迪姆
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 对话
    .turnin 230 >>交任务斯温的营地
    斯温·约根
    .accept 262 >>接受任务模糊的人影
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Duskwood>>飞往夜色镇
    索尔
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >>前往夜色镇
step << Warrior/Paladin
    #optional
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话
    .turnin 262 >>交任务模糊的人影
    伊瓦夫人
    .accept 265 >>接受任务继续搜寻
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 228 >>交任务摩拉迪姆
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step << Warrior/Paladin
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r 对话
    .turnin 265 >>交任务继续搜寻
    .accept 266 >>接受任务调查旅店
    .turnin 68 >>交任务斯塔文的传说
    .accept 69 >>接受任务斯塔文的传说
    书记员达尔塔
    .subzoneskip 42,1
step << Warrior/Paladin
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r 对话
    .turnin 158 >>交任务僵尸酒
    .accept 156 >>接受任务收集腐败之花
    .turnin 266 >>交任务调查旅店
    .accept 453 >>接受任务搜寻乌鸦岭
    旅店老板斯密茨
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r 对话
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务幸存的女儿
    .accept 231 >>接受任务女儿的爱
    守夜人拉迪摩尔
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r 对话
    .fly Westfall >>飞往西部荒野
    菲利希亚·玛林
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务女儿的爱
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Redridge >>飞往赤脊山
    索尔
    .zoneskip Redridge Mountains
    .maxlevel 27
step
    .goto Redridge Mountains,31.53,57.85
    卫兵豪维
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵豪维|r 对话
    .accept 128 >>接受任务悬赏：黑石氏族
    .maxlevel 27
step
    .goto Redridge Mountains,33.50,48.96
    治安官马瑞斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .accept 19 >>接受任务萨瑞尔祖恩
    .accept 115 >>接受任务暗影魔法
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击 |cRXP_FRIENDLY_通缉告示|r
    .accept 169 >>接受任务通缉：加塞尔佐格
    .maxlevel 27
step
    #completewith LookingFurther
    >>击杀 |cRXP_ENEMY_暗皮狼人|r。拾取它们身上的 |cRXP_LOOT_徽章|r
    .complete 91,1 -- Shadowhide Pendant (10)
    疯狂的暗皮豺狼人
    暗皮豺狼人
    暗皮刺客
    暗皮战士
    暗皮巫师
    暗皮杀手
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>击杀 |cRXP_ENEMY_范高雷中尉|r。拾取他的 |cRXP_LOOT_爪子|r
    >>|cRXP_ENEMY_方高雷中尉|r |cRXP_WARN_会与另外 2 个 |cRXP_ENEMY_豺狼人|r 一起交战|r
    >>|cRXP_ENEMY_范高雷中尉|r |cRXP_WARN_对暗影伤害免疫。确保你有队友可以协助，否则可以跳过这一步|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>点击 |cRXP_PICK_古老的狮子雕像|r
    .turnin 94 >>交任务法师的眼线
    .accept 248 >>接受任务监视
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>点击 |cRXP_PICK_古老的狮子雕像|r
    .accept 248 >>接受任务监视
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>击杀 |cRXP_ENEMY_暗皮狼人|r。拾取它们身上的 |cRXP_LOOT_徽章|r
    .complete 91,1 -- Shadowhide Pendant (10)
    疯狂的暗皮豺狼人
    暗皮豺狼人
    暗皮刺客
    暗皮战士
    暗皮巫师
    暗皮杀手
	.isOnQuest 91
step
    #completewith Gath
    >>击杀 |cRXP_ENEMY_黑石暗影法师|r。拾取他们的 |cRXP_LOOT_宝珠|r
    .complete 115,1 -- Midnight Orb (3)
    黑石暗影法师
    .isOnQuest 115
step
    .goto Redridge Mountains,71.40,55.07
    >>击杀 |cRXP_ENEMY_萨瑞尔祖恩|r。拾取他的 |cRXP_LOOT_头部|r
    >>|cRXP_ENEMY_萨瑞尔祖恩|r |cRXP_WARN_是一名 25 级精英|r
    >>|cRXP_WARN_这个任务非常困难。如有需要请组队完成。如果你找不到队伍或无法单刷，就跳过这一步|r
    .complete 19,1 -- Tharil'zun's Head
    萨瑞尔祖恩
	.isOnQuest 19
step
    #label Gath
    .group 2
    .goto Redridge Mountains,69.599,55.797
    >>进入石堡要塞
    >>击杀 |cRXP_ENEMY_加斯伊尔佐格|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 169,1 -- Head of Gath'Ilzogg
    加塞尔佐格
    .isOnQuest 169
step
    .goto Redridge Mountains,66.68,56.26    
    >>击杀 |cRXP_ENEMY_黑石暗影法师|r。拾取他们的 |cRXP_LOOT_宝珠|r
    .complete 115,1 -- Midnight Orb (3)
    黑石暗影法师
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>点击石堡要塞塔顶的桶上的 |cRXP_PICK_空罐子|r
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 248 >>交任务监视
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>击杀 |cRXP_ENEMY_黑石勇士|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    .goto Redridge Mountains,28.388,12.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在雷德的石头背后与 |cRXP_FRIENDLY_基沙恩下士|r 对话
    >>|cRXP_WARN_如果他不在，就跳过这一步|r
    .accept 219 >>接受任务失踪的士兵
    基沙恩下士
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.414,48.499
    >>护送 |cRXP_FRIENDLY_基沙恩下士|r 返回湖畔镇
    >>|cRXP_WARN_小心，离开洞穴后不要拉太多怪|r
    .complete 219,1
	.isOnQuest 219
    基沙恩下士
step
    .goto Redridge Mountains,33.50,48.96
    治安官马瑞斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 219 >>交任务失踪的士兵
	.isQuestComplete 219
step
    .goto Redridge Mountains,33.50,48.96
    治安官马瑞斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 19 >>交任务萨瑞尔祖恩
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    治安官马瑞斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r 对话
    .turnin 115 >>交任务暗影魔法
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 180 >>交任务通缉：范高雷中尉
    .isQuestComplete 180
    所罗门镇长
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r 对话
    .turnin 91 >>交任务所罗门的律法
    .isQuestComplete 91
    拜里弗·科纳彻尔
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 169 >>交任务通缉：加塞尔佐格
    所罗门镇长
    .isQuestComplete 169
step
    .goto Redridge Mountains,31.53,57.85
    卫兵豪维
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵豪维|r 对话
    .turnin 128 >>交任务悬赏：黑石氏族
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >>炉石回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Duskwood >>飞往夜色镇
    艾蕾娜·斯托姆法瑟
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >>前往夜色镇
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话
    .turnin 262 >>交任务模糊的人影
    伊瓦夫人
    .accept 265 >>接受任务继续搜寻
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 228 >>交任务摩拉迪姆
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r 对话
    .turnin 265 >>交任务继续搜寻
    .accept 266 >>接受任务调查旅店
    .turnin 68 >>交任务斯塔文的传说
    .accept 69 >>接受任务斯塔文的传说
    书记员达尔塔
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_议员米尔斯迪普|r 对话
    .accept 377 >>接受任务罪与罚
    议员米尔斯迪普
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r 对话
    .turnin 158 >>交任务僵尸酒
    .accept 156 >>接受任务收集腐败之花
    .turnin 266 >>交任务调查旅店
    .accept 453 >>接受任务搜寻乌鸦岭
    旅店老板斯密茨
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r 对话
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务幸存的女儿
    .accept 231 >>接受任务女儿的爱
    守夜人拉迪摩尔
step
    #loop
    .goto Duskwood,66.0,44.6,0
    .goto Duskwood,64.2,38.8,0
    .goto Duskwood,60.8,37.4,0
    .goto Duskwood,61.2,46.0,0
    .goto Duskwood,67.6,46.6,0
    .goto Duskwood,63.6,41.2,0
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2,60,0
	>>击杀 |cRXP_ENEMY_夜行织影狼人|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	夜行织影狼人
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .turnin 173 >>交任务林子里的狼人
    .accept 221 >>接受任务林子里的狼人
    卡洛尔
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r 对话
    .fly Westfall >>飞往西部荒野
    菲利希亚·玛林
step
	#completewith HistoryB3
    >>|cRXP_WARN_If you loot |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] start the quest. This is a zone-wide drop in Duskwood|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务一本破旧的历史书
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基特斯|r 对话
    .turnin 453 >>交任务搜寻乌鸦岭
    .accept 268 >>接受任务回复斯温
    .turnin 240 >>交任务基特斯的美餐
    基特斯
step
    #loop
    .goto Duskwood,22.95,44.75,0
    .goto Duskwood,20.39,47.02,0
    .goto Duskwood,15.65,42.81,0
    .goto Duskwood,22.11,46.93,0
    .goto Duskwood,21.21,47.07,0
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07,70,0
    >>击杀 |cRXP_ENEMY_骸骨魔|r 和 |cRXP_ENEMY_恐怖骸骨|r。拾取他们的 |cRXP_LOOT_腐烂花|r 和 |cRXP_LOOT_手指|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    骸骨魔
    .complete 57,2 -- Skeletal Horror slain (15)
    腐烂恐魔
    .complete 156,1 -- Rot Blossom (8)
    .complete 101,3 --10/10 Skeleton Finger
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 对话
    .turnin 268 >>交任务回复斯温
    .accept 323 >>接受任务证明你的实力
    斯温·约根
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务女儿的爱
step
    .goto Duskwood,16.01,38.79
    >>击杀 |cRXP_ENEMY_骷髅袭击者|r, |cRXP_ENEMY_骷髅医师|r 和 |cRXP_ENEMY_骷髅看守|r
    >>|cRXP_WARN_进入晨光之林墓穴寻找 |cRXP_ENEMY_骷髅看守|r|r
    .complete 323,1 -- Skeletal Raider slain (15)
    骷髅袭击者
    .complete 323,2 -- Skeletal Healer slain (3)
    骷髅医师
    .complete 323,3 -- Skeletal Warder slain (3)
    骷髅看守
step
	.xp 27 >>练怪到 27 级。如果你打算去刷监狱，可以跳过这一步
step
    .goto Duskwood,19.59,37.28
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_是一名 30 级精英，攻击力极高，但移动速度较慢。如有需要，可绕着大型树木风筝他|r
    >>|cRXP_WARN_这个任务非常困难。如有需要请组队完成。如果你无法找到队伍或无法单刷，请跳过这一步，之后还会有机会再做|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    摩拉迪姆
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 对话
    .turnin 323 >>交任务证明你的实力
    .accept 269 >>接受任务寻求指引
    斯温·约根
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Duskwood>>飞往夜色镇
    索尔
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 228 >>交任务摩拉迪姆
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r 对话
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务幸存的女儿
    .accept 231 >>接受任务女儿的爱
    守夜人拉迪摩尔
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r 对话
    .fly Westfall >>飞往西部荒野
    菲利希亚·玛林
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务女儿的爱
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_你很快就要前往暴风城，尽量为监狱组好队伍|r
step
.dungeon !Stockades
    #completewith TLOS
    .deathskip >>前往艾尔文森林，主动拉一群低等级怪故意死亡，然后在金雾村复活
step
    #completewith next
    .subzone 87 >>前往金雾村
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话   
    .trainer >>训练你的职业技能
    里瑞亚·杜拉克
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    威尔海姆修士
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .turnin 69 >>交任务斯塔文的传说
    .accept 70 >>接受任务斯塔文的传说
    旅店老板法雷
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>上楼
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
	.trainer >>训练你的职业技能
    女牧师洁塞塔
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .trainer >>训练你的职业技能
    科瑞恩·塞尔留斯
step
    .goto Elwynn Forest,44.302,65.823
    >>打开 |cRXP_PICK_储物箱|r。拾取 |cRXP_LOOT_一封未寄出的信件|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >>前往暴风城
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >>|cRXP_WARN_施放|r |T135763:0|t[传送：暴风城]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    艾尔莎林
	詹妮亚·坎农
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知安布洛尔|r 对话
	.trainer >>训练你的职业技能
    先知安布洛尔
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>前往屠宰场，进入地下室
step
    .goto Stormwind City,26.44,78.66
    黑爪加尔德斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑爪加尔德斯|r 对话
    .accept 335 >>接受任务名酿
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    厄苏拉·德林
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员弗索姆|r 对话
    .turnin 70 >>交任务斯塔文的传说
    管理员弗索姆
    .accept 72 >>接受任务斯塔文的传说
step
    .goto Stormwind City,29.44,61.52
    >>点击地上的 |cRXP_PICK_密封的箱子|r
    .turnin 72 >>交任务斯塔文的传说
    .accept 74 >>接受任务斯塔文的传说
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .trainer >>训练你的职业技能
    沙德拉斯·月树
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    达索瑞恩·拉尔
    .turnin 1652 >>交任务勇气之书
step
    .goto Stormwind City,40.551,30.959
    萨尔努修士
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔努修士|r 对话
    .accept 2923 >>接受任务工匠大师欧沃斯巴克
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法席恩主教|r 对话
    .turnin 269 >>交任务寻求指引
    .accept 270 >>接受任务被诅咒的舰队
    主教法席恩
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .accept 389 >>接受任务巴基尔·斯瑞德
    巴隆斯·阿历克斯顿
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    恩瑞斯·锐矛
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡苏斯修士|r 对话
    >>|cRXP_BUY_Buy 2|r |T134419:0|t[传送符文] |cRXP_BUY_from him|r
    .collect 17031,2 --Rune of Teleportation (2)
    卡苏斯修士
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼科瓦·拉斯克|r 对话
    >>|cRXP_FRIENDLY_尼科瓦·拉斯克|r |cRXP_WARN_在旧城区巡逻|r
    .accept 388 >>接受任务鲜血的颜色
    尼科瓦·拉斯克
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .accept 387 >>接受任务镇压暴动
    .turnin 389 >>交任务巴基尔·斯瑞德
    .accept 391 >>接受任务监狱暴动
    典狱官塞尔沃特
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .accept 391 >>接受任务监狱暴动
    .accept 387 >>接受任务镇压暴动
    典狱官塞尔沃特
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .accept 387 >>接受任务镇压暴动
    典狱官塞尔沃特
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +寻找队伍前往监狱
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>击杀 |cRXP_ENEMY_迪菲亚|r。拾取他们身上的 |cRXP_LOOT_头巾|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>击杀 |cRXP_ENEMY_可怕的塔戈尔|r。拾取他的 |cRXP_LOOT_头部|r。|cRXP_ENEMY_塔戈尔|r 的刷新位置是随机的
    >>在监狱西侧监区击杀 |cRXP_ENEMY_迪克斯特·瓦德|r。拾取他的 |cRXP_LOOT_手|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    可怕的塔格尔
    迪克斯特·瓦德
step
.dungeon Stockades
    #label Bazil
    >>在监狱东侧监区击杀 |cRXP_ENEMY_巴基尔·斯瑞德|r。拾取他的 |cRXP_LOOT_头部|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[丝绸] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    巴基尔·斯瑞德
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .turnin 387 >>交任务镇压暴动
    .turnin 391 >>交任务监狱暴动
    .accept 392 >>接受任务好奇的访客
    典狱官塞尔沃特
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r 对话
    .turnin 387 >>交任务镇压暴动
    典狱官塞尔沃特
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .turnin 392 >>交任务好奇的访客
    .accept 393 >>接受任务往日的阴影
    巴隆斯·阿历克斯顿
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼科瓦·拉斯克|r 对话
    >>|cRXP_FRIENDLY_尼科瓦·拉斯克|r |cRXP_WARN_在旧城区巡逻|r
    .turnin 388 >>交任务鲜血的颜色
    尼科瓦·拉斯克
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    .turnin 393 >>交任务往日的阴影
    .accept 350 >>接受任务老朋友
    马迪亚斯·肖尔大师
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 350 >>交任务老朋友
    .accept 2745 >>接受任务潜入城堡
    埃林·提亚斯
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里恩|r 对话
    .turnin 2745 >>交任务潜入城堡
    .accept 2746 >>接受任务必备物品
    泰里恩
    .isQuestTurnedIn 391
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务一本破旧的历史书
    .turnin 337 >>交任务一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    米尔顿·西弗
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    .accept 538 >>接受任务南海镇
    米尔顿·西弗
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >>离开暴风城。前往艾尔文森林的克拉拉农舍
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>拾取桌子上的 |cRXP_LOOT_克拉拉的新鲜苹果|r
    >>|cRXP_WARN_If you still need|r |T132905:0|t[丝绸] |cRXP_WARN_buy some from the Auction House|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>拾取桌子上的 |cRXP_LOOT_克拉拉的新鲜苹果|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里恩|r 对话
    >>|cRXP_WARN_在你接取 进攻 之前，确保你的小队成员都已经交付了事关重大的物品|r
    >>|cRXP_WARN_此步骤已关闭自动接取任务。注意：如果有其他人正在进行该任务，你可能无法接取|r
    .turnin 2746 >>交任务必备物品
    .accept 434,1 >>接受任务伏击！
    进攻！剧情
    泰里恩
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_在庭院中央等待 |cRXP_ENEMY_葛瑞格·莱斯科瓦公爵|r 和 |cRXP_ENEMY_沉默之刃马尔松|r 到达。大约需要 2 分钟|r
    >>击杀 |cRXP_ENEMY_葛瑞格·莱斯科瓦公爵|r 和 |cRXP_ENEMY_沉默之刃马尔松|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    葛瑞格·莱斯科瓦公爵
    沉默之刃马尔松
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 434 >>交任务伏击！
    .accept 394 >>接受任务禽兽的首级
    埃林·提亚斯
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    .turnin 394 >>交任务禽兽的首级
    .accept 395 >>接受任务兄弟会的灭亡
    马迪亚斯·肖尔大师
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r 对话
    .turnin 395 >>交任务兄弟会的灭亡
    .accept 396 >>接受任务觐见国王
    巴隆斯·阿历克斯顿
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >>前往暴风要塞
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r 对话
    .turnin 396 >>交任务觐见国王
    女伯爵卡特拉娜·普瑞斯托
    .isQuestTurnedIn 391


--xx
step << Rogue skip
    .goto Ironforge,45.2,6.6
    >>购买 41 级武器升级(17 DPS)
    .collect 2520,1
    .collect 2526,1
    >>如果你能在拍卖行找到更好的武器，请跳过这一步
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>学习双手斧 << !Rogue
	.train 266 >>学习枪械 << Hunter/Warrior/Rogue
    .train 199 >>学习双手锤 << Warrior/Shaman
    .train 54 >>学习锤类武器 << Rogue/Shaman
    .train 44 >>学习斧类武器 << Shaman
--xx


step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往赤脊山
    杜加尔·朗德瑞克
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r 对话
    .turnin 386 >>交任务伸张正义
    卫兵伯尔顿
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    艾蕾娜·斯托姆法瑟
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +|cRXP_WARN_开始寻找一个诺莫瑞根的小队。你很快就会去打诺莫瑞根|r
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .accept 2928 >>接受任务陀螺式挖掘机
    沉默的舒尼
step << Mage
    #completewith next
    .zone Ironforge >>|cRXP_WARN_施放|r |T135757:0|t[传送: 铁炉堡]
step << !Mage
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>进入矿道地铁。乘坐地铁前往铁炉堡
step
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    工匠大师欧沃斯巴克
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r 对话
    .turnin 2923 >>交任务工匠大师欧沃斯巴克
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺恩|r, |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r 和 |cRXP_FRIENDLY_科罗莫特·钢尺|r 对话
    .accept 2927 >>接受任务灾难之后
    诺恩
    .goto Ironforge,69.182,50.556
    .turnin -2923 >>交任务工匠大师欧沃斯巴克
    .accept 2922 >>接受任务拯救尖端机器人！
    工匠大师欧沃斯巴克
    .goto Ironforge,69.540,50.325
    .accept 2929 >>接受任务大叛徒
    大工匠梅卡托克
    .goto Ironforge,68.743,48.969
    .accept 2930 >>接受任务抢救数据
    大机械师卡斯派普
    .goto Ironforge,69.823,48.101
    .accept 2924 >>接受任务基础模组
    科罗莫特·钢尺
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r 对话
    .goto Ironforge,18.10,51.60
    .home >>将你的炉石设置为铁炉堡
    旅店老板洛雷·火酒
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>离开铁炉堡
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r 对话
    .turnin 2927 >>交任务灾难之后
    .accept 2926 >>接受任务诺恩
    奥齐·电环
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >>前往诺莫瑞根
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[空铅瓶] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_使用时，|cRXP_ENEMY_辐射入侵者|r 或 |cRXP_ENEMY_辐射抢劫者|r 必须存活|r
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    辐射入侵者
    辐射抢劫者
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >>前往卡拉诺斯，找 |cRXP_FRIENDLY_奥齐·电环|r
    >>|cRXP_WARN_当你进入副本时，会接到一个后续任务|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r 对话
    .turnin 2926 >>交任务诺恩
    奥齐·电环
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r 对话
    .accept 2962 >>接受任务更多的辐射尘
    奥齐·电环
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >>前往诺莫瑞根
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>击杀 |cRXP_ENEMY_穴居人|r 和 |cRXP_ENEMY_侏儒|r。拾取它们以获得 |T133215:0|t[|cRXP_LOOT_白色穿孔卡|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>击杀 |cRXP_ENEMY_泰克巴特|r。拾取他的 |cRXP_LOOT_记忆核心|r
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    尖端机器人
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>击杀 |cRXP_ENEMY_穴居人|r 和 |cRXP_ENEMY_侏儒|r。拾取它们以获得 |T133215:0|t[|cRXP_LOOT_白色穿孔卡|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_使用|r |T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r] |cRXP_WARN_在|r |cRXP_PICK_矩阵打孔机 3005-A|r
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >>进入诺莫瑞根副本入口
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>击杀所有 |cRXP_ENEMY_诺莫瑞根怪物|r。拾取它们身上的 |cRXP_LOOT_机械内脏|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_使用|r |T133215:0|t[|cRXP_LOOT_黄色穿孔卡片|r] |cRXP_WARN_在|r |cRXP_PICK_矩阵打孔机 3005-B|r
    >>这个看起来像控制台的机器位于最底层的侏儒安全区内，就在刷软泥怪的那个大型圆形房间旁边
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克努比|r 对话
    >>|cRXP_WARN_这将触发护送任务。|cRXP_FRIENDLY_克努比|r 会随机出现在宿舍，正好在侏儒安全区外|r
    .accept 2904 >>接受任务一团混乱
    克努比
step
.dungeon Gnomer
    >>护送 |cRXP_FRIENDLY_克努比|r 回到地下城起点
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[沉重的铅瓶] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
    >>|cRXP_WARN_使用时，|cRXP_ENEMY_辐射泥浆怪|r、|cRXP_ENEMY_辐射潜伏者|r 或 |cRXP_ENEMY_辐射恐兽|r 必须存活|r
    >>|cRXP_WARN_注意：你必须在获得|r |T136006:0|t[高强度放射性残留物] 后的 2 小时内交付该任务|r
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    辐射泥浆怪
    .mob Irradiated Lurker
    辐射水元素
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>打开 |cRXP_PICK_人工推算器|r。拾取地上的物品以获得 |cRXP_LOOT_基础模组|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>|cRXP_WARN_使用|r |T133215:0|t[|cRXP_LOOT_蓝色穿孔卡片|r] |cRXP_WARN_在|r |cRXP_PICK_矩阵打孔机 3005-C|r
    >>打孔机位于悬浮平台上，就在 |cRXP_ENEMY_电刑器6000型|r 旁边
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    电刑器6000型
step
.dungeon Gnomer
    >>|cRXP_WARN_使用|r |T133215:0|t[|cRXP_LOOT_红色打孔卡|r] |cRXP_WARN_在|r |cRXP_PICK_矩阵打孔机 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>击杀 |cRXP_ENEMY_机械师瑟玛普拉格|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>打开 |cRXP_PICK_人工推算器|r。拾取地上的物品以获得 |cRXP_LOOT_基础模组|r
    >>如果你还没完成这个任务，就回到之前拾取它们的地点，因为它们几分钟后会刷新
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>击杀所有 |cRXP_ENEMY_诺莫瑞根怪物|r。拾取它们身上的 |cRXP_LOOT_机械内脏|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_使用|r |T135230:0|t[|cRXP_LOOT_脏兮兮的戒指|r] |cRXP_WARN_以开始任务|r
    .accept 2945 >>接受任务脏兮兮的戒指
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_将|r |T135230:0|t[|cRXP_LOOT_脏兮兮的戒指|r] |cRXP_WARN_交给 |cRXP_PICK_闪光机5200|r，在清洁区内使用|r
    *你需要回到副本入口附近的净化区，确保你的队友在场以协助你返回
    .turnin 2945 >>交任务脏兮兮的戒指
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>再次点击 |cRXP_PICK_闪光机 5200|r
    .accept 2947 >>接受任务戒指归来
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >>将炉石使用回铁炉堡
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>离开铁炉堡
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r 对话
    .turnin 2962 >>交任务更多的辐射尘
    奥齐·电环
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r 对话
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    宾吉·羽哨
    米利·羽哨
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    维隆·冻石
    奥萨姆·铁角
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >>前往铁炉堡
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r 对话
    .turnin 2947 >>交任务戒指归来
    .accept 2948 >>接受任务侏儒的手艺
    塔瓦斯德·基瑟尔
    .isOnQuest 2947
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r 对话
    >>|cRXP_WARN_如果你能够获得|r |T133215:0|t[银锭] |cRXP_WARN_和|r |T134105:0|t[绿玛瑙] |cRXP_WARN_就完成这个任务。如果没有，就放弃它|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >>交任务侏儒的手艺
    塔瓦斯德·基瑟尔
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r 和 |cRXP_FRIENDLY_科罗莫特·钢尺|r 对话
    .turnin -2922,1 >>上交 拯救尖端机器人！
    工匠大师欧沃斯巴克
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >>上交大叛徒
    大工匠梅卡托克
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >>交任务抢救数据
    大机械师卡斯派普
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >>交任务基础模组
    科罗莫特·钢尺
    .goto Ironforge,67.925,46.101
step
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Wetlands>>飞往湿地
    格莱斯·瑟登
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南(联盟版)
<< Alliance
#name 27–30 湿地/希尔斯布莱德
#subgroup RestedXP 联盟 20-32 级
#next 30–32 暮色森林/荆棘谷

step
    .isQuestComplete 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r 对话
    .turnin 279 >>交任务海中的鱼人
    .accept 281 >>接受任务夺回雕像
    卡尔·波兰
step
    .isQuestTurnedIn 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r 对话
    .accept 281 >>接受任务夺回雕像
    卡尔·波兰
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r 对话
    .turnin 469 >>交任务日常供货
    .turnin 484 >>交任务小鳄鱼皮
    .accept 471 >>接受任务学徒的职责
    詹姆斯·哈洛兰
step
    .goto Wetlands,10.89,59.66
    大副菲兹莫斯
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r 对话
    .accept 289 >>接受任务被诅咒的船员
step
    .goto Wetlands,10.585,60.592
    戈罗林·钢眉
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r 对话
    .turnin 270 >>交任务被诅咒的舰队
    .accept 321 >>接受任务光铸铁
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r 对话
    旅店老板赫布瑞克
    .home >>将你的炉石设置为米奈希尔港
    .bindlocation 2104
step
    .goto Wetlands,11.796,57.991
    塞达
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r 对话
    .accept 470 >>接受任务搜寻软泥怪
step
    .goto Wetlands,10.84,55.89
    哈尔罗·巴纳比
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔罗·巴纳比|r 对话
    .accept 472 >>接受任务丹莫德的陷落
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_斯托菲队长|r 对话
    .turnin 464 >>交任务龙喉战旗
    .accept 465 >>接受任务纳克罗什的优势
    斯托菲队长
step
    .goto Wetlands,11.458,52.163
    塔雷尔·石纹
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔雷尔·石纹|r 对话
    .turnin 306 >>交任务寻找挖掘队
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>点击地上的 |cRXP_PICK_破损的箱子|r
    .turnin 281 >>交任务夺回雕像
    .accept 284 >>接受任务继续搜寻
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>点击地上的 |cRXP_PICK_密封的桶|r
    .turnin 284 >>交任务继续搜寻
    .accept 285 >>接受任务搜寻雕像
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>点击地上的 |cRXP_PICK_半埋的大桶|r
    .turnin 285 >>交任务搜寻雕像
    .accept 286 >>接受任务归还雕像
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>击杀 |cRXP_ENEMY_诅咒的水手|r、|cRXP_ENEMY_诅咒的水兵|r 和 |cRXP_ENEMY_大副斯涅利格|r。拾取他的 |cRXP_LOOT_鼻烟盒|r
    .complete 289,1 -- Cursed Sailor slain (13)
    被诅咒的水手
    .complete 289,2 -- Cursed Marine slain (5)
    被诅咒的水兵
    .complete 289,3 -- Snellig's Snuffbox
    大副斯涅利格
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>击杀 |cRXP_ENEMY_巨型湿地鳄鱼|r。拾取它们的 |cRXP_LOOT_鳄鱼皮|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    巨型湿地鳄鱼
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>击杀 |cRXP_ENEMY_藓皮豺狼人|r。拾取它们身上的 |cRXP_LOOT_粗制打火石|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    藓皮蛮兵
    藓皮捕兽者
    藓皮沼泽行者
    藓皮织雾者
    藓皮秘法师
    藓皮突击队员
step
    .goto Wetlands,44.25,25.61
    >>击杀 |cRXP_ENEMY_赤色软泥怪|r、|cRXP_ENEMY_巨大软泥怪|r 和 |cRXP_ENEMY_黑色软泥怪|r。拾取它们的 |cRXP_LOOT_塞达的背包|r
    .complete 470,1 -- Sida's Bag (1)
    红色软泥怪
    残忍的软泥怪
    黑色软泥怪
step    
    #loop
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .goto Wetlands,30.8,31.0,80,0
    .goto Wetlands,37.8,29.6,80,0
    .goto Wetlands,43.0,33.2,80,0
    >>击杀 |cRXP_ENEMY_藓皮豺狼人|r。拾取它们身上的 |cRXP_LOOT_粗制打火石|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    藓皮蛮兵
    藓皮捕兽者
    藓皮沼泽行者
    藓皮织雾者
    藓皮秘法师
    藓皮突击队员
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 对话
    .turnin 294 >>交任务奥莫尔的复仇
    .accept 295 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r 对话
    .accept 299 >>接受任务发现历史
    .goto Wetlands,38.809,52.386
    勘察员维尔加
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>在地上拾取 |cRXP_LOOT_弗拉贡特的化石|r
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>打开 |cRXP_PICK_远古的圣物|r 和 |cRXP_PICK_松散的泥土|r。拾取它们的 |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_|cRXP_LOOT_碎片|r 在挖掘场的刷新位置是随机的|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r。拾取它们的 |cRXP_LOOT_雷鲁之石|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    杂斑镰爪龙
    .complete 295,2 --10/10 Mottled Razormaw slain
    杂斑刺喉龙
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .isOnQuest 943
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    杂斑镰爪龙
    .complete 295,2 --10/10 Mottled Razormaw slain
    杂斑刺喉龙
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 对话
    .turnin 295 >>交任务奥莫尔的复仇
    .accept 296 >>接受任务奥莫尔的复仇
    奥莫尔·铁衣
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r 对话
    .turnin 299 >>交任务发现历史
    .goto Wetlands,38.809,52.386
    勘察员维尔加
step
    .isOnQuest 943
    #completewith FragmentDone
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r。拾取它们的 |cRXP_LOOT_雷鲁之石|r
    .complete 943,1 --1/1 Stone of Relu
    杂斑刺喉龙
    杂斑镰爪龙
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>击杀 |cRXP_ENEMY_萨尔图斯|r。拾取他的 |cRXP_LOOT_利爪|r
    >>|cRXP_WARN_他通常在主挖掘场上方的山坡上，但有时会巡逻下来|r
    .complete 296,1 --1/1 Sarltooth's Talon
    萨尔图斯
step
    #label FragmentDone
    #loop
    .goto Wetlands,34.32,51.79,40,0
    .goto Wetlands,35.73,49.06,40,0
    .goto Wetlands,33.86,46.85,40,0
    .goto Wetlands,34.91,44.22,40,0
    .goto Wetlands,36.62,42.16,40,0
    >>打开 |cRXP_PICK_远古的圣物|r 和 |cRXP_PICK_松散的泥土|r。拾取它们的 |cRXP_LOOT_碎片|r
    >>|cRXP_WARN_|cRXP_LOOT_碎片|r 在挖掘场的刷新位置是随机的，包括 |cRXP_ENEMY_萨尔图斯|r 所在的高地|r
    >>|cRXP_WARN_别忘了检查地图上标记的大树后面|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r。拾取它们的 |cRXP_LOOT_雷鲁之石|r
    .complete 943,1 --1/1 Stone of Relu
    杂斑刺喉龙
    杂斑镰爪龙
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r 对话
    .turnin 296 >>交任务奥莫尔的复仇
    奥莫尔·铁衣
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r 对话
    .turnin 299 >>交任务发现历史
    .goto Wetlands,38.809,52.386
    勘察员维尔加
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r 对话
    .turnin 277 >>交任务火焰管制
    绿色守卫者雷希耶尔
    .accept 275 >>接受任务大地上的脓疱
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r 对话
    绿色守卫者雷希耶尔
    .accept 275 >>接受任务大地上的脓疱
step
    .goto Wetlands,64.78,75.31
    >>拾取地上的 |cRXP_LOOT_蒂罗亚根|r
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    洛甘纳尔
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >>将炉石使用回米奈希尔港
	>>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>前往楼上，前去找 |cRXP_FRIENDLY_考古学家弗拉冈特|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 对话
    .turnin 943 >>交任务健忘的勘察员
    考古学家弗拉冈特
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r 对话
    .turnin 289 >>交任务被诅咒的船员
    .accept 290 >>接受任务解除诅咒
    大副菲兹莫斯
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r 对话
    .turnin 470 >>交任务搜寻软泥怪
    塞达
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r 对话
    .turnin 286 >>交任务归还雕像
    卡尔·波兰
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r 对话
    .turnin 471 >>交任务学徒的职责
    詹姆斯·哈洛兰
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>爬上船的桅杆
    >>击杀 |cRXP_ENEMY_哈林多尔船长|r。拾取他的 |cRXP_LOOT_保险箱钥匙|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    哈林多尔船长
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>从船侧的大洞进入
    >>点击地上的 |cRXP_PICK_保险箱|r
    .turnin 290 >>交任务解除诅咒
    .accept 292 >>接受任务帕雷斯之眼
step
    #loop
    .goto Wetlands,27.6,37.2,50,0
    .goto Wetlands,40.8,32.8,50,0
    .goto Wetlands,46.6,29.6,50,0
    .goto Wetlands,48.8,37.2,50,0
    .goto Wetlands,54.8,37.8,50,0
    .goto Wetlands,27.6,37.2,0
    .goto Wetlands,40.8,32.8,0
    .goto Wetlands,46.6,29.6,0
    .goto Wetlands,48.8,37.2,0
    .goto Wetlands,54.8,37.8,0
    .goto Wetlands,20.72,28.74,50,0
    >>击杀 |cRXP_ENEMY_沼泽爬行者|r 
    >>|cRXP_ENEMY_沼泽爬行者|r |cRXP_WARN_在|r |T132320:0|t[潜行] |cRXP_WARN_状态下沿着河流巡逻|r
    .complete 275,1 --12/12 Fen Creeper
    沼泽爬行者
    .isOnQuest 275
step
    .goto Wetlands,47.45,47.01
    >>点击 |cRXP_PICK_龙喉投石车|r
    .turnin 465 >>交任务纳克罗什的优势
    .accept 474 >>接受任务击败纳克罗什
step
    .goto Wetlands,53.459,54.663
    >>击杀 |cRXP_ENEMY_酋长内克罗什|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 474,1 --1/1 Nek'rosh's Head
    纳克罗什酋长
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r 对话
    .turnin 275 >>交任务大地上的脓疱
    绿色守卫者雷希耶尔
    .isQuestComplete 275
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r 对话
    .accept 631 >>接受任务萨多尔大桥
    拉格·加玛森
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坚毅者长须|r 对话
    .turnin 472 >>交任务丹莫德的陷落
    .accept 304 >>接受任务艰巨的任务
    坚毅者长须
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特雷·加玛森|r 对话
    .accept 303 >>接受任务黑铁战争
    莫特雷·加玛森
step
    #completewith next
    >>击杀 |cRXP_ENEMY_黑铁矮人|r, |cRXP_ENEMY_黑铁隧道工|r, |cRXP_ENEMY_黑铁破坏者|r 和 |cRXP_ENEMY_黑铁爆破手|r
    >>|cRXP_ENEMY_黑铁破坏者|r |cRXP_WARN_死亡时会施放|r |T135826:0|t[工兵自爆] |cRXP_WARN_，对附近单位造成火焰伤害|r
    >>|cRXP_ENEMY_黑铁爆破手|r |cRXP_WARN_会持续从远处投掷|r |T135826:0|t[炸弹] |cRXP_WARN_|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    黑铁矮人
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    黑铁隧道工
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    黑铁破坏者
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    黑铁爆破手
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>击杀 |cRXP_ENEMY_邪恶的巴尔加拉斯|r。拾取他的 |cRXP_LOOT_耳朵|r
    .complete 304,1 -- Ear of Balgaras
    邪恶的巴尔加拉斯
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>击杀 |cRXP_ENEMY_黑铁矮人|r, |cRXP_ENEMY_黑铁隧道工|r, |cRXP_ENEMY_黑铁破坏者|r 和 |cRXP_ENEMY_黑铁爆破手|r
    >>|cRXP_ENEMY_黑铁破坏者|r |cRXP_WARN_死亡时会施放|r |T135826:0|t[工兵自爆] |cRXP_WARN_，对附近单位造成火焰伤害|r
    >>|cRXP_ENEMY_黑铁爆破手|r |cRXP_WARN_会持续从远处投掷|r |T135826:0|t[炸弹] |cRXP_WARN_|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    黑铁矮人
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    黑铁隧道工
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    黑铁破坏者
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    黑铁爆破手
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坚毅者长须|r 对话
    .turnin 304 >>交任务艰巨的任务
    坚毅者长须
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特雷·加玛森|r 对话
    .turnin 303 >>交任务黑铁战争
    莫特雷·加玛森
    .isQuestComplete 303
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>沿桥上的螺旋楼梯下去
    >>点击 |cRXP_PICK_伊贝尼瑟的尸体|r
    .turnin 631 >>交任务萨多尔大桥
    .accept 632 >>接受任务萨多尔大桥
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r 对话
    .turnin 632 >>交任务萨多尔大桥
    .accept 633 >>接受任务萨多尔大桥
    拉格·加玛森
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_醉鬼马克里尔|r 对话
    >>|cRXP_WARN_先跳到隐形链上，然后跳到桥上的断梁。所有职业都可以完成这个跳跃。如果你跳不过，就跳过这一步|r
    .accept 647 >>接受任务马克里尔的月光酒
    醉鬼马克里尔
    .link https://www.twitch.tv/videos/646111384 >>https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_点击此处查看视频指南|r
step
    .goto Arathi Highlands,44.28,92.877
    >>潜入水下
    >>打开 |cRXP_PICK_浸水的信件|r。拾取其中的 |T133469:0|t[|cRXP_LOOT_浸水的信封|r]
    >>|cRXP_WARN_使用 |T133469:0|t[|cRXP_LOOT_浸水的信封|r] 来接取任务|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>接受任务苏利·巴鲁的信
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>向东游向此处的斜坡
step
    .goto Arathi Highlands,48.789,88.058
    >>点击 |cRXP_PICK_爆炸品|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r 对话
    .turnin 633 >>交任务萨多尔大桥
    .accept 634 >>接受任务请求援助
    拉格·加玛森
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >>前往庇护点
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼艾丝队长|r 对话
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>交任务请求援助
    尼艾丝队长
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟迪克·普罗斯|r 对话
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >>获取阿拉希高地的飞行路径
    瑟迪克·普罗斯
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在地下室与 |cRXP_FRIENDLY_布鲁米·比格尔|r 对话
    >>|cRXP_WARN_如果你未能在限定时间内完成此任务，请放弃任务并跳过这一步|r
    .turnin 647 >>交任务马克里尔的月光酒
    布鲁米·比格尔
    .isOnQuest 647
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r 对话
    .accept 536 >>接受任务清理海岸
    法尔林·奥里涅尔中尉
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博学者迪布斯|r 对话
    .turnin 538 >>交任务南海镇
    博学者迪布斯
step << Hunter
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯雷|r 对话
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >>将你的宠物放入兽栏。你很快就会驯服一只 |cRXP_ENEMY_老食苔蛛|r
    维斯雷
step << Hunter
    .goto Hillsbrad Foothills,56.6,53.8
    >>|cRXP_WARN_对 |cRXP_ENEMY_老食苔蛛|r |cRXP_WARN_施放 |T132164:0|t[驯服野兽] |r 以驯服它|r -- .tame 2348
    .train 17264 >>|cRXP_WARN_使用它攻击怪物以学习|r |T132278:0|t[撕咬 (等级 4)]
    .link https://www.wow-petopia.com/classic/training.php >>https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处了解更多关于宠物训练的信息|r
	老食苔蛛
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    >>击杀 |cRXP_ENEMY_碎鳍潮行鱼人|r 和 |cRXP_ENEMY_碎鳍智者|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    碎鳍潮行鱼人
    .complete 536,2 --10/10 Torn Fin Oracle slain
    碎鳍智者
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r 对话
    .turnin 536 >>交任务清理海岸
    .accept 559 >>接受任务法尔林的证据
    法尔林·奥里涅尔中尉
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    >>击杀 |cRXP_ENEMY_碎鳍潮行鱼人|r, |cRXP_ENEMY_碎鳍智者|r, |cRXP_ENEMY_碎鳍滩行鱼人|r 和 |cRXP_ENEMY_碎鳍泥浆鱼人|r。拾取他们的 |cRXP_LOOT_头部|r
    .complete 559,1 --10/10 Murloc Head
    碎鳍泥浆鱼人
    碎鳍滩行鱼人
    碎鳍潮行鱼人
    碎鳍智者
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r 对话
    .turnin 559 >>交任务法尔林的证据
    .accept 560 >>接受任务法尔林的证据
    法尔林·奥里涅尔中尉
step << Hunter
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官雷德帕斯|r 对话
    .turnin 560 >>交任务法尔林的证据
    .accept 561 >>接受任务法尔林的证据
    治安官雷德帕斯
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r 对话
    .turnin 561 >>交任务法尔林的证据
    .accept 562 >>接受任务升官之道
    法尔林·奥里涅尔中尉
step << Hunter
    #loop
    .goto Hillsbrad Foothills,52.97,64.67,0
    .goto Hillsbrad Foothills,55.32,63.35,0
    .goto Hillsbrad Foothills,58.35,66.37,0
    .goto Hillsbrad Foothills,59.55,73.43,0
    .goto Hillsbrad Foothills,56.97,67.01,0
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01,60,0
    >>击杀 |cRXP_ENEMY_刺脊滩行者|r 和 |cRXP_ENEMY_刺脊海妖|r
    >>|cRXP_WARN_你可能需要游到水里去找它们|r
    .complete 562,1 --10/10 Daggerspine Shorehunter
    刺脊滩行者
    .complete 562,2 --10/10 Daggerspine Siren
    刺脊海妖
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r 对话
    .turnin 562 >>交任务升官之道
    .accept 563 >>接受任务人事调动
    法尔林·奥里涅尔中尉
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>获取南海镇的飞行路径
    达尔拉·哈瑞斯
    .zoneskip Hillsbrad Foothills,1
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>沿着小溪向北前进，击杀途中遇到的 |cRXP_ENEMY_钳嘴龟|r，并拾取它们的 |cRXP_LOOT_海龟肉|r
    >>|cRXP_WARN_你现在不需要收集所有 |cRXP_LOOT_海龟肉|r|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    钳嘴龟
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r 对话
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>>获取西瘟疫之地的飞行路径
    比比尔法兹
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r 对话
    .goto Western Plaguelands,42.924,85.061
    .fly Wetlands >>飞往湿地
    比比尔法兹
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_斯托菲队长|r 对话
    .goto Wetlands,9.86,57.48
    .turnin 474 >>交任务击败纳克罗什
    斯托菲队长
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r 对话
    .turnin 292 >>交任务帕雷斯之眼
    .accept 293 >>接受任务净化帕雷斯之眼
    戈罗林·钢眉
step
    >>点击 |cRXP_PICK_浸水的箱子|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>交任务光铸铁
    .accept 324 >>接受任务丢失的铁锭
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>击杀 |cRXP_ENEMY_蓝鳃袭击者|r。拾取他们的 |cRXP_LOOT_因苟特|r
    .complete 324,1 --5/5 Lightforge Ingot
    蓝腮袭击者
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    .xp 30-6600 >>练怪直到距离 30 级还有 6600 经验 (29700/36300)
    蓝腮袭击者
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r 对话
    .turnin 324 >>交任务丢失的铁锭
    .accept 322 >>接受任务格瑞曼德·艾尔默
    戈罗林·钢眉
    .isQuestTurnedIn 270
step << !Mage
    #completewith KingsTribute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .goto Wetlands,9.49,59.70
    .fly Ironforge >>飞往铁炉堡
    谢尔雷·布隆迪尔
    .zoneskip Ironforge
step << Mage
    #completewith KingsTribute
    .zone Ironforge >>|cRXP_WARN_施放|r |T135757:0|t[传送: 铁炉堡]
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·巴鲁|r 对话
    .turnin 637 >>交任务苏利·巴鲁的信
    苏利·巴鲁的信剧情
    .accept 683 >>接受任务萨拉·巴鲁的请求
    萨拉·巴鲁
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_飞行员比罗·长须|r 对话
    .accept 1179 >>接受任务防撞头盔
    飞行员比罗·长须
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼下与 |cRXP_FRIENDLY_萨古斯·雷拳|r 对话
    >>|cRXP_BUY_购买一个|r |T134402:0|t[|cRXP_FRIENDLY_重型箭袋|r]
	.collect 7371,1
    萨古斯·雷拳
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格尼·铜须国王|r 对话
    .turnin 683 >>交任务萨拉·巴鲁的请求
    .accept 686 >>接受任务国王的礼物
    麦格尼·铜须国王
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大石匠玛布勒斯坦|r 对话
    .turnin 686 >>交任务国王的礼物
    .accept 689 >>接受任务国王的礼物
    大石匠玛布勒斯坦
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》练级指南 (联盟版)
<< Alliance
#name 30–32 暮色森林/荆棘谷
#subgroup RestedXP 联盟 20-32 级
#next 32–33 闪光平原

step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_考格斯宾|r 没有库存，请跳过此步骤|r
	考格斯宾
    .bronzetube
    .zoneskip Ironforge,1
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[机械陆行鸟] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[山羊] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r 对话
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    宾吉·羽哨
    米利·羽哨
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    维隆·冻石
    奥萨姆·铁角
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    .goto Ironforge,16.57,84.04
    .zone Ironforge >>回到铁炉堡
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>乘坐地铁前往暴风城
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_比利巴布·旋轮|r 没有库存，请跳过此步骤|r
    .bronzetube
    比利巴布·旋轮
step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .turnin 2928 >>交任务陀螺式挖掘机
    沉默的舒尼
    .isQuestComplete 2928
step << Mage
    #completewith CleansingtheEye
    .zone Stormwind City >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    艾尔莎林
	詹妮亚·坎农
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    恩瑞斯·锐矛
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑞娜·麦肯达|r 对话
    .trainer >>训练你的宠物技能
    卡瑞娜·麦肯达
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 322 >>交任务格瑞曼德·艾尔默
    .accept 325 >>接受任务整装待发
    格瑞曼德·艾尔默
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话 
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    乔舒修士
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯|r 对话
    >>|cRXP_FRIENDLY_托马斯|r |cRXP_WARN_在大教堂内四处走动|r
    .accept 1274 >>接受任务失踪的使节
    托马斯
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教本尼迪塔斯|r 对话
    .turnin 293 >>交任务净化帕雷斯之眼
    大主教本尼迪塔斯
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯|r 对话
    >>|cRXP_FRIENDLY_托马斯|r |cRXP_WARN_在大教堂内四处走动|r
    .accept 1274 >>接受任务失踪的使节
    托马斯
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r 对话
    .turnin 322 >>交任务格瑞曼德·艾尔默
    .accept 325 >>接受任务整装待发
    格瑞曼德·艾尔默
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .turnin 2928 >>交任务陀螺式挖掘机
    沉默的舒尼
    .isQuestComplete 2928
step << Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    厄苏拉·德林
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .trainer >>训练你的职业技能
    沙德拉斯·月树
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务一本破旧的历史书
    .turnin 337 >>交任务一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    米尔顿·西弗
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    .accept 538 >>接受任务南海镇
    米尔顿·西弗
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德拉维主教|r 对话
    .turnin 1274 >>交任务失踪的使节
    .accept 1241 >>接受任务失踪的使节
    德拉维主教
step << Hunter
    .isOnQuest 563
    .goto Stormwind City,72.571,15.888
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔森少校|r 对话
    .turnin 563 >>交任务人事调动
    萨缪尔森少校
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    武神
    伊尔萨·考宾
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .accept 1718 >>接受任务岛民
    武神
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    夜行者奥斯伯
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔贞|r 对话
    .turnin 1241 >>交任务失踪的使节
    .accept 1242 >>接受任务失踪的使节
    乔贞
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知安布洛尔|r 对话
    .accept 10491 >>接受任务空气的召唤
	.trainer >>训练你的职业技能
    先知安布洛尔
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 1242 >>交任务失踪的使节
    .accept 1243 >>接受任务失踪的使节
    埃林·提亚斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r 对话
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >>将以下物品存入你的银行：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    牛顿·伯恩赛德
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>|T133024:0|t[青铜管]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    拍卖师亚克森
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Duskwood>>飞往暮色森林
    杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_议员米尔斯迪普|r 对话
    .turnin 377 >>交任务罪与罚
    议员米尔斯迪普
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    >>|cRXP_WARN_如果你还没找到青铜管，请跳过这一步|r
    .accept 174 >>接受任务眺望群星
    .turnin 174 >>交任务眺望群星
    维克托·安特拉斯
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .accept 175 >>接受任务眺望群星
    .isQuestTurnedIn 174
    维克托·安特拉斯
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r 对话
    .turnin 175 >>交任务眺望群星
    .accept 177 >>接受任务眺望群星
    .isQuestTurnedIn 174
    盲眼玛丽 
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r 可能在教堂内，或在外面四处游荡|r
    .complete 177,1 --1/1 Mary's Looking Glass
    疯狂的食尸鬼
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .turnin 177 >>交任务眺望群星
    .isQuestTurnedIn 174
    维克托·安特拉斯
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .accept 181 >>接受任务眺望群星
    .isQuestTurnedIn 174
    维克托·安特拉斯
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r 对话
    .turnin 156 >>交任务收集腐败之花
    .accept 159 >>接受任务送酒
    旅店老板斯密茨
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r 对话
    .home >>将你的炉石设置为暮色森林
    旅店老板崔莱尼
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 57 >>交任务守夜人
    .accept 58 >>接受任务守夜人
    指挥官阿尔泰娅·埃伯洛克
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 228 >>交任务摩拉迪姆
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .accept 229 >>接受任务幸存的女儿
    指挥官阿尔泰娅·埃伯洛克
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r 对话
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务幸存的女儿
    .accept 231 >>接受任务女儿的爱
    守夜人拉迪摩尔
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人巴库斯|r 对话
    .turnin 1243 >>交任务失踪的使节
    .accept 1244 >>接受任务失踪的使节
    守夜人巴库斯
step
    #completewith next 
    .goto Elwynn Forest,84.60,69.37,100 >>前往东谷伐木场 
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官哈迦德|r 对话
    .turnin 74 >>交任务斯塔文的传说
    .accept 75 >>接受任务斯塔文的传说
    治安官哈迦德
step
    .goto Elwynn Forest,85.70,69.53
    >>到屋子里上楼
    >>打开 |cRXP_PICK_哈加德的箱子|r。拾取 |cRXP_LOOT_一张褪色的日记书页|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官哈迦德|r 对话
    .turnin 75 >>交任务斯塔文的传说
    .accept 78 >>接受任务斯塔文的传说
    治安官哈迦德
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯蒂·亨特|r 和 |cRXP_FRIENDLY_兰达尔·亨特|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132261:0|t[|cFF0070FF马|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    凯蒂·亨特
    兰达尔·亨特
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r 对话
    .turnin 78 >>交任务斯塔文的传说
    .accept 79 >>接受任务斯塔文的传说
    旅店老板斯密茨
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 79 >>交任务斯塔文的传说
    .accept 80 >>接受任务斯塔文的传说
    指挥官阿尔泰娅·埃伯洛克
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r 对话
    .turnin 80 >>交任务斯塔文的传说
    .accept 97 >>接受任务斯塔文的传说
    书记员达尔塔
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 97 >>交任务斯塔文的传说
    .accept 98 >>接受任务斯塔文的传说
    指挥官阿尔泰娅·埃伯洛克
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>拾取地上的 |cRXP_LOOT_蒂罗亚之泪|r
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >>击杀 |cRXP_ENEMY_斯塔尔凡·迷雾披风|r。拾取他的 |cRXP_LOOT_家族戒指|r
	>>|cRXP_ENEMY_斯塔文·密斯特曼托|r |cRXP_WARN_攻击力很高。如有需要，将他引回城镇，并向 |cRXP_FRIENDLY_凝视者|r 求助|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    斯塔文·密斯特曼托
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话，NPC在里面
    .turnin 98 >>交任务斯塔文的传说
    伊瓦夫人
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r 对话
    .goto Duskwood,77.49,44.28
    .fly Westfall>>飞往西部荒野
    菲利希亚·玛林

--xx
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>对亨兹·法奥克使用生命符记
    .turnin 1786 >>交任务圣洁之书
    .accept 1787 >>接受任务圣洁之书
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>击杀岛屿周围的迪菲亚巫师
    .complete 1787,1 --Defias Script (1)
--xx

step << !Shaman
    #completewith next
    .goto Duskwood,28.10,31.46,100 >>前往暮色森林，找 |cRXP_FRIENDLY_亚伯克隆比|r
step << !Shaman
    #completewith next
    >>击杀 |cRXP_ENEMY_怪物|r 以协助 |cRXP_FRIENDLY_亚伯克隆比|r。拾取地上的物品以获得 |cRXP_LOOT_蜘蛛毒液瓶|r
    .complete 101,2 --Vial of Spider Venom(5)
    小型黑寡妇蜘蛛
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 159 >>交任务送酒
    .accept 133 >>接受任务食尸鬼雕像
    亚伯克隆比
step
    .goto Duskwood,24.26,32.90
    >>击杀 |cRXP_ENEMY_天灾食尸鬼|r。拾取它们的 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_毒牙|r
    >>|cRXP_WARN_其他 |cRXP_ENEMY_食尸鬼|r 也可能掉落 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_毒牙|r，但重点击杀 |cRXP_ENEMY_瘟疫传播者|r|r
    .complete 58,1 --20/20 Plague Spreader slain
    天灾食尸鬼
    .complete 133,1 --7/7 Ghoul Rib
    天灾食尸鬼
    食腐者
    腐烂者
    噬骨者
    .complete 101,1 --10/10 Ghoul Fang
    天灾食尸鬼
    食腐者
    腐烂者
    噬骨者
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 133 >>交任务食尸鬼雕像
    .accept 134 >>接受任务食人魔小偷
    亚伯克隆比
step
    #completewith next
    >>沿路击杀 |cRXP_ENEMY_黑寡妇幼蛛|r 前往迪菲亚之家
    .complete 101,2 --Vial of Spider Venom(5)
    小型黑寡妇蜘蛛
step
    .goto Duskwood,23.926,72.075
    >>打开 |cRXP_PICK_迪菲亚保险箱|r。拾取 |cRXP_LOOT_迪菲亚文件|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>拾取地上的 |cRXP_LOOT_阿伯克隆比的箱子|r
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >>进入沃古尔食人魔洞穴
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>击杀 |cRXP_ENEMY_扎克乌尔|r。拾取他的 |cRXP_LOOT_单片眼镜|r
    >>|cRXP_ENEMY_扎克乌尔|r |cRXP_WARN_在洞穴内有 2 个刷新点|r
    .complete 181,1 --1/1 Ogre's Monocle
    扎克乌尔
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>击杀 |cRXP_ENEMY_小型黑寡妇蜘蛛|r 和 |cRXP_ENEMY_食腐独行蛛|r。拾取它们的 |cRXP_LOOT_蜘蛛毒液|r
    .complete 101,2 --5/5 Vial of Spider Venom
    小型黑寡妇蜘蛛
    食腐独行蛛
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 134 >>交任务食人魔小偷
    .accept 160 >>接受任务给镇长的信
    亚伯克隆比
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务女儿的爱
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 对话
    .turnin 325 >>交任务整装待发
    .accept 55 >>接受任务摩本特·费尔
    斯温·约根
    .isQuestTurnedIn 322
step
    #completewith next
    >>清理沿途敌人，前往房屋的2楼
    .cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[摩本特的克星] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use|r |T135142:0|t[摩本特的克星] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_在削弱他之后，记得重新装备你的主手/副手武器|r
    .use 7297
step
    .goto Duskwood,16.90,33.40
    >>击杀 |cRXP_ENEMY_摩本特·费尔|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    摩本特·费尔
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r 对话
    .turnin 55 >>交任务摩本特·费尔
    .isQuestComplete 55
    斯温·约根
step
    .isOnQuest 181,101,78,58,160
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >>使用 |T136010:0|t[星界传送] 返回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Duskwood>>飞往夜色镇
    索尔
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r 对话
    .turnin 78 >>交任务斯塔文的传说
    .accept 79 >>接受任务斯塔文的传说
    旅店老板斯密茨
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    >>|cRXP_WARN_她可能已经死亡或正在与|r |cRXP_ENEMY_缝合怪|r |cRXP_WARN_战斗，如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 58 >>交任务守夜人
    .turnin 79 >>交任务斯塔文的传说 << !Shaman
    .accept 80 >>接受任务斯塔文的传说 << !Shaman
    指挥官阿尔泰娅·埃伯洛克
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r 对话
    .turnin 80 >>交任务斯塔文的传说
    .accept 97 >>接受任务斯塔文的传说
    书记员达尔塔
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .turnin 160 >>交任务给镇长的信
    .accept 251 >>接受任务翻译亚伯克隆比的信
    艾尔罗·埃伯洛克公爵
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉·沃宁迪|r 对话
    .turnin 251 >>交任务翻译亚伯克隆比的信
    希拉·沃宁迪
    .accept 401 >>接受任务等待希拉完工
    .turnin 401 >>交任务等待希拉完工
    .accept 252 >>接受任务翻译好的信件
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .turnin 252 >>交任务翻译好的信件
    艾尔罗·埃伯洛克公爵
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .accept 253 >>接受任务藏尸者的妻子
    艾尔罗·埃伯洛克公爵
step
    #optional
    #sticky
    .destroy 3248 >>Throw away the |T134939:0|t[翻译好的藏尸者信件] you no longer need it
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 97 >>交任务斯塔文的传说
    .accept 98 >>接受任务斯塔文的传说
    .turnin 101 >>交任务惩罚图腾
    指挥官阿尔泰娅·埃伯洛克
step << Shaman
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在屋内与 |cRXP_FRIENDLY_伊瓦夫人|r 对话
    .turnin 101 >>交任务惩罚图腾
    伊瓦夫人
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .turnin 181 >>交任务眺望群星
    维克托·安特拉斯
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人巴库斯|r 对话
    .turnin 1244 >>交任务失踪的使节
    .accept 1245 >>接受任务失踪的使节
    守夜人巴库斯
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>拾取地上的 |cRXP_LOOT_蒂罗亚之泪|r
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >>击杀 |cRXP_ENEMY_斯塔文·密斯特曼托|r。拾取他的 |cRXP_LOOT_家族戒指|r
	>>|cRXP_ENEMY_斯塔文·密斯特曼托|r |cRXP_WARN_攻击力很高。如有需要，将他引回城镇，并向 |cRXP_FRIENDLY_凝视者|r 求助|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    斯塔文·密斯特曼托
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在屋内与 |cRXP_FRIENDLY_伊瓦夫人|r 对话
    .turnin 98 >>交任务斯塔文的传说
    伊瓦夫人
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>击杀 |cRXP_ENEMY_夜行黑暗狼人|r
    >>|cRXP_ENEMY_夜行黑暗狼人|r |cRXP_WARN_移动速度非常快，仇恨范围比正常更大|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    夜行黑暗狼人
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .turnin 221 >>交任务林子里的狼人
    .accept 222 >>接受任务林子里的狼人
    卡洛尔
step
    .goto Duskwood,62.33,81.77
    >>击杀 |cRXP_ENEMY_夜行邪齿狼人|r 和 |cRXP_ENEMY_夜行堕落狼人|r
	>>|cRXP_WARN_小心，这个区域内的所有怪物会在几分钟后同时刷新|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    夜行邪齿狼人
    .complete 222,2 --8/8 Nightbane Tainted One slain
    夜行堕落狼人
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >>向南前往荆棘谷
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼兹尔|r 对话
    .fp Rebel >>获取反抗军营地的飞行路径
    尼兹尔
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_注意特殊事件 |cRXP_FRIENDLY_列兵索尔森|r。他会每 30 分钟沿着从叛军营地延伸的道路巡逻|r
    >>|cRXP_FRIENDLY_列兵索尔森|r |cRXP_WARN_会被 2 个 |cRXP_ENEMY_库尔森的密探|r 攻击。如果你没有看到这个事件，跳过此步骤|r
    >>击杀两个 |cRXP_ENEMY_库尔森的密探|r，然后接取 |cRXP_FRIENDLY_列兵索尔森|r 的任务，该任务在救下他后可用
    .accept 215 >>接受任务丛林中的秘密
    列兵索尔森
    库尔森的密探
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尼尔·石罐|r 和 |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r 对话
    .accept 583 >>接受任务欢迎来到丛林
    巴尼尔·石罐
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >>交任务欢迎来到丛林
    赫米特·奈辛瓦里二世
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾耶克·罗欧克|r 和 |cRXP_FRIENDLY_埃尔加丁爵士|r 对话
    .accept 185 >>接受任务制服猛虎
    艾耶克·罗欧克
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >>接受任务制服猎豹
    埃尔加丁爵士
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>击杀 |cRXP_ENEMY_猎豹幼崽|r
    .complete 190,1 --10/10 Young Panther slain
    猎豹幼崽
step
    #loop
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,0
    .goto Stranglethorn Vale,31.76,9.00,0
    .goto Stranglethorn Vale,35.40,12.50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
	>>击杀 |cRXP_ENEMY_荆棘谷猛虎幼崽|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    荆棘谷猛虎幼崽
step
    #loop
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,42.74,12.40,0
    .goto Stranglethorn Vale,41.43,9.77,0
    .goto Stranglethorn Vale,40.67,11.65,0
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
	>>击杀 |cRXP_ENEMY_猎豹幼崽|r
    .complete 190,1 --10/10 Young Panther slain
    猎豹幼崽
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾耶克·罗欧克|r 和 |cRXP_FRIENDLY_埃尔加丁爵士|r 对话
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 185 >>交任务制服猛虎
    --.accept 186 >> Accept Tiger Mastery
    艾耶克·罗欧克
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>交任务制服猎豹
    --.accept 191 >> Accept Panther Mastery
    埃尔加丁爵士
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多伦上尉|r 对话
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 215 >>交任务丛林中的秘密
    多伦上尉
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >>跑回暮色森林
step
    .goto Duskwood,28.864,30.765
    >>点击 |cRXP_PICK_伊莉莎的坟墓土|r 以召唤 |cRXP_ENEMY_伊莉莎|r
    >>击杀 |cRXP_ENEMY_伊莉莎|r。拾取她的 |cRXP_LOOT_防腐师之心|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[冰霜新星] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
    .complete 253,1 --1/1 The Embalmer's Heart
    伊莉莎
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    洛甘纳尔
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >>使用 |T136010:0|t[星界传送] 返回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_如有需要，购买食物|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >>跑回夜色镇
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .turnin 253 >>交任务藏尸者的妻子
    .isQuestComplete 253
    艾尔罗·埃伯洛克公爵
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .turnin 222 >>交任务林子里的狼人
    .accept 223 >>接受任务林子里的狼人
    卡洛尔
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔纳森·卡尔文|r 对话
    .turnin 223 >>交任务林子里的狼人
    乔纳森·卡尔文
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r 对话
    .goto Duskwood,77.49,44.28
    .fly Stormwind>>飞往暴风城
    菲利希亚·玛林
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >>|cRXP_WARN_施放|r |T135763:0|t[传送：暴风城]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    艾尔莎林
	詹妮亚·坎农
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师马林|r 对话
    .accept 690 >>接受任务马林的要求
    大法师马林
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科诺尔·瑞沃斯|r 对话
    .accept 1301 >>接受任务詹姆斯·海厄尔
    科诺尔·瑞沃斯
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r 对话
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >>从你的银行中取出以下物品：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    牛顿·伯恩赛德    
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知安布洛尔|r 对话
	.trainer >>训练你的职业技能
    先知安布洛尔
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 1245 >>交任务失踪的使节
    .accept 1246 >>接受任务失踪的使节
    埃林·提亚斯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    武神
    伊尔萨·考宾
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .accept 1718 >>接受任务岛民
    武神
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    夜行者奥斯伯
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达舍尔·石拳|r 对话
    >>|cRXP_ENEMY_达舍尔·石拳|r |cRXP_WARN_在接取后续任务后会变为敌对。击败他|r
    .turnin 1246 >>交任务失踪的使节
    .accept 1447,1 >>接受任务失踪的使节
    达舍尔·石拳
step
    .goto Stormwind City,70.549,44.887
    >>击败 |cRXP_ENEMY_达舍尔·石拳|r
    >>|cRXP_ENEMY_达舍尔·石拳|r |cRXP_WARN_还会与 2 个 |cRXP_ENEMY_旧城区暴徒|r 一起攻击。忽略他们，集中攻击 |cRXP_ENEMY_达舍尔·石拳|r|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    达舍尔·石拳
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达舍尔·石拳|r 对话
    .turnin 1447 >>交任务失踪的使节
    .accept 1247 >>接受任务失踪的使节
    达舍尔·石拳
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 1247 >>交任务失踪的使节
    .accept 1248 >>接受任务失踪的使节
    埃林·提亚斯
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r 对话
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >>从你的银行中取出以下物品：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    >>|T132824:0|t[装满的波涛之袋] << Shaman -- 23750 
    牛顿·伯恩赛德
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师马林|r 对话
    .accept 690 >>接受任务马林的要求
    大法师马林
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科诺尔·瑞沃斯|r 对话
    .accept 1301 >>接受任务詹姆斯·海厄尔
    科诺尔·瑞沃斯
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>进入屠宰场, 下楼
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑爪加尔德斯|r 对话
    .turnin 335 >>交任务名酿
    .accept 336 >>接受任务名酿
    黑爪加尔德斯
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    厄苏拉·德林
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r 对话
    .accept 1798 >>接受任务寻找斯坦哈德
    黑暗缚灵者加科因
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德米赛特·克劳斯|r 对话
    >>|cRXP_WARN_如果你之前在铁炉堡接过相同的任务，请跳过这一步|r
    .accept 4738 >>接受任务寻找梅纳拉·沃伦德
    德米赛特·克劳斯
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    虔诚的亚瑟
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 对话 
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    乔舒修士    
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲍雷斯·维沙克公爵|r 对话
    .turnin 336 >>交任务名酿
    鲍雷斯·维沙克公爵
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务一本破旧的历史书
    .turnin 337 >>交任务一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    米尔顿·西弗
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r 对话
    .accept 538 >>接受任务南海镇
    米尔顿·西弗
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r 对话
    .accept 543 >>接受任务匹瑞诺德王冠
    雷明顿·瑞治维尔伯爵
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买以下物品，以便稍后在南海镇更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>10 |T134026:0|t[海龟肉]
    .collect 3712,10,555,1 
    拍卖师亚克森


--xx
step << Human Paladin
    .goto Stormwind City,38.6,26.7
    .turnin 1787 >>交任务圣洁之书
    .accept 1788 >>接受任务圣洁之书
step << Human Paladin
    .goto Stormwind City,39.9,29.8
    .turnin 1788 >>交任务圣洁之书
--xx


step << Druid
    #completewith DruidMount
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r 对话
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>飞往泰达希尔
    希尔瓦·菲纳雯斯
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱兰奈|r 和 |cRXP_FRIENDLY_贾萨姆|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FF霜刃豹|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FF夜刃豹|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    莱兰奈
    贾萨姆
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    维斯派塔斯
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>进入矿道地铁。乘坐地铁前往铁炉堡
    >>|cRXP_WARN_如果需要，利用等地铁的时间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >>|cRXP_WARN_施放|r |T135757:0|t[传送：铁炉堡]  
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[机械陆行鸟] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[山羊] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r 对话
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    宾吉·羽哨
    米利·羽哨
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    维隆·冻石
    奥萨姆·铁角
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    #completewith next
    .goto Ironforge,16.57,84.04
    .zone Ironforge >>回到铁炉堡
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
	.fly Wetlands >>飞往湿地
    格莱斯·瑟登
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r 对话
    .home >>将你的炉石设置为米奈希尔港
    旅店老板赫布瑞克
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r 对话
	>>|cRXP_WARN_接取此任务会使 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r 在旅店入口处|r |T132320:0|t[潜行] |cRXP_WARN_并跑到外面|r
    .turnin 1248 >>交任务失踪的使节
    .accept 1249,1 >>接受任务失踪的使节
    米克哈尔
    “干柴”塔伯克·贾恩
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_迅速跑到外面!|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r。|cRXP_ENEMY_斯利姆的朋友|r 会在 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r 投降后逃跑|r
    >>|cRXP_WARN_如有需要，对 |cRXP_ENEMY_塔伯克的伙伴|r 使用任何控制技能 (CC) |r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    “干柴”塔伯克·贾恩
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r 对话
    >>|cRXP_WARN_等待剧情演出完成|r
    .turnin 1249 >>交任务失踪的使节
    米克哈尔
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"干柴"塔伯克·贾恩|r 对话
    .accept 1250 >>接受任务失踪的使节
    “干柴”塔伯克·贾恩
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r 对话
    .turnin 1250 >>交任务失踪的使节
    .accept 1264 >>接受任务失踪的使节
    米克哈尔
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>乘船前往黑海岸
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fly Teldrassil >>飞往泰达希尔
	凯莱斯·月羽
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱兰奈|r 和 |cRXP_FRIENDLY_贾萨姆|r 对话
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FF霜刃豹|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FF夜刃豹|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    莱兰奈
    贾萨姆
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >>将炉石使用回米奈希尔港
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    维斯派塔斯
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>乘船前往黑海岸
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >>乘船前往秘蓝岛
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >>从后门进入埃索达
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>沿斜坡前去找 |cRXP_FRIENDLY_先知诺布杜|r
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 交谈
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    预言者努波顿
    .turnin 10491 >>交任务空气的召唤
    .accept 9552 >>接受任务空气的召唤
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_象群管理者妥拉留斯|r 和 |cRXP_FRIENDLY_埃亚伦|r 对话
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Buy a|r |T132255:0|t[|cFF0070FF雷象|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    象群管理者妥拉留斯
    埃亚伦
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r 对话
    .fly Blood Watch >>飞往血环堡
    斯泰法努斯
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9504 >>交任务水之召唤
    .accept 9508 >>接受任务水之召唤
    阿奎欧斯
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >>点击 |cRXP_PICK_污秽之桶|r 以召唤 |cRXP_ENEMY_污染者塔希恩|r
    水之召唤剧情
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>击杀 |cRXP_ENEMY_污染者塔希恩|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    污染者塔希恩
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9508 >>交任务水之召唤
    .accept 9509 >>接受任务水之召唤
    阿奎欧斯
step << Shaman
	.deathskip >>故意淹死。然后在 |cRXP_FRIENDLY_灵魂医者|r 处复活
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >>前往血环堡
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 交谈
    .fly The Exodar>>飞往埃索达
    兰度
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >>紧跟箭头绕过埃索达外部，前往狂风小径
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >>继续沿着狂风小径前进
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兰达|r 对话
    .turnin 9552 >>交任务空气的召唤
    .accept 9553 >>接受任务空气的召唤
    维兰达
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏苏鲁斯|r 对话
    .turnin 9553 >>交任务空气的召唤
    .accept 9554 >>接受任务空气的召唤
    苏苏鲁斯
step << Shaman
    .gossip 17435,0 >>再次与 |cRXP_FRIENDLY_苏苏鲁斯|r 对话以返回埃索达
    风之召唤剧情
    .skipgossip
    .subzoneskip 3581,1
    苏苏鲁斯
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >>再次进入埃索达
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 交谈
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    >>|cRXP_WARN_完成此任务后，你将获得|r |T136022:0|t[疾风] |cRXP_WARN_增益，持续 1 小时，使你的移动速度提高 40%，攻击速度提高 30%|r
    >>|cRXP_WARN_确保在拥有这个增益时不要挂机!|r
    预言者努波顿
    .turnin 9509 >>交任务水之召唤
    .turnin 9554 >>交任务空气的召唤
step << Draenei
    #optional
	.hs >>将炉石使用回米奈希尔港
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >>|T136010:0|t[星界传送] 到湿地
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>乘船前往黑海岸
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_文森特·海厄尔|r 对话
    .turnin 1301 >>交任务詹姆斯·海厄尔
    .accept 1302 >>接受任务詹姆斯·海厄尔
    文森特·海厄尔
step
    #label TheramoreBoat
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >>乘船前往塞拉摩
    >>|cRXP_WARN_在等待期间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])