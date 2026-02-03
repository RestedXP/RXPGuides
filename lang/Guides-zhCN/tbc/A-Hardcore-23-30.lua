if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 23-24级 湿地
#next 24-27级 赤脊山/暮色森林

step
.dungeon SFK
    #completewith FinalAccept
    +|cRXP_WARN_开始寻找影牙城堡队伍。你很快将前往银松森林去打影牙城堡|r
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .accept 484 >>接受任务《物归己用》 小鳄鱼皮
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德温·晨光|r
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_德温·晨光|r 没有库存，请跳过此步骤|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r
    .accept 279 >>接受任务《物归己用》 海中的鱼人
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r
    .accept 288 >>接受任务《物归己用》 第三舰队
    .accept 463 >>接受任务《物归己用》 绿色守卫者
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r
    .home >>将你的炉石设置为米奈希尔港
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r
    >>|cRXP_BUY_购买一壶|r |T132792:0|t[壶装矮人蜜酒]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >>前往楼上，前去找 |cRXP_FRIENDLY_考古学家弗拉冈特|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    .target Archaeologist Flagongut
    .turnin 942 >>交任务《 前往熔光镇》 健忘的勘察员
    .accept 943 >>接受任务《物归己用》 健忘的勘察员
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 交谈
    .target Archaeologist Flagongut
    .accept 943 >>接受任务《物归己用》 健忘的勘察员
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 288 >>交任务《 前往熔光镇》 第三舰队
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r
    .accept 470 >>接受任务《物归己用》 搜寻软泥怪
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾德温娜·蒙佐尔|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[锋利的箭]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_尼尔·奥雷|r 没有库存，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔雷尔·石纹|r
    .accept 305 >>接受任务《物归己用》 寻找挖掘队
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
    .fp Southshore >>获取南海镇的飞行路径
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
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
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>击杀 |cRXP_ENEMY_湿地鳄鱼幼崽|r。拾取他们的 |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>击杀 |cRXP_ENEMY_蓝鳃鱼人|r
    >>击杀 |cRXP_ENEMY_高布勒尔|r。拾取他的 |cRXP_LOOT_头部|r
    >>|cRXP_ENEMY_高布勒尔|r |cRXP_WARN_在沼泽地小范围巡逻|r
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗拉德·飞轮|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_弗拉德·飞轮|r 没有库存，请跳过此步骤|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .accept 294 >>接受任务《物归己用》 奥莫尔的复仇
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦琳·石纹|r
    .turnin 305 >>交任务《 前往熔光镇》 寻找挖掘队
    .accept 306 >>接受任务《物归己用》 寻找挖掘队
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>在地上拾取 |cRXP_LOOT_弗拉贡特的化石|r
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃纳尔·石钳|r
    .accept 469 >>接受任务《物归己用》 日常供货
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吉克斯勒|r
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果有售）|r
    >>|cRXP_WARN_购买|r |T134413:0|t[活根草] |cRXP_WARN_如果 |cRXP_FRIENDLY_吉克斯勒|r 有库存。你之后的|r |T132403:0|t[|cFF0070FF旋风之斧|r] |cRXP_WARN_任务需要用到|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_吉克斯勒|r 没有库存，请跳过此步骤|r << Warrior
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_吉克斯勒|r 没有库存，请跳过此步骤|r << !Warrior
    .target Kixxle
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 463 >>交任务《 前往熔光镇》 绿色守卫者
    .accept 276 >>接受任务《物归己用》 践踏之爪
    .target Rethiel the Greenwarden
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
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 276 >>交任务《 前往熔光镇》 践踏之爪
    .accept 277 >>接受任务《物归己用》 火焰管制
    .target Rethiel the Greenwarden
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
    .goto 1437/0,-2944.700,-3675.000,70,0
    .goto 1437/0,-3024.300,-4196.400,70,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>击杀 |cRXP_ENEMY_湿地鳄鱼幼崽|r。拾取他们的 |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk

step << !NightElf !Draenei
    .isOnQuest 470,306,469,484,279
	.hs >>将炉石使用回米奈希尔港
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
    .xp <25,1 -- hs if over 25, otherwise dark threat looms
step << !NightElf !Draenei
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r
    .turnin 470 >>交任务《 前往熔光镇》 搜寻软泥怪
    .target Sida
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔雷尔·石纹|r
    .turnin 306 >>交任务《 前往熔光镇》 寻找挖掘队
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 469 >>交任务《 前往熔光镇》 日常供货
    .turnin 484 >>交任务《 前往熔光镇》 小鳄鱼皮
    .target James Halloran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 279 >>交任务《 前往熔光镇》 海中的鱼人
    .target Karl Boran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Ironforge >>飞往铁炉堡
    .target Shellei Brondir
    .subzoneskip 150,1


-- only going loch if draenei/nightelf or not 25 yet
step
    #optional
    #completewith LochArrive
    .zone Loch Modan >>跟随 the tunnel network to travel to Loch Modan
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .xp >25,1 << !Draenei !NightElf
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2426.200,-4093.000,15 >> Travel through the first tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2374.900,-4011.600,15,0
    .goto 1437/0,-2462.600,-4119.400,10 >>前往暴风城大教堂内，与 the second tunnel
    .mob Dragonmaw Grunt
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2464.400,-4312.900,10 >>Travel through the 秒 tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2480.400,-4423.400,10 >>前往暴风城大教堂内，与 the third tunnel entrance
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2674.500,-4451.100,10 >> Travel through the third tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2690.400,-4482.800,10 >>进入 fourth tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1432/0,-2698.800,-4681.800,10 >> Travel through the fourth tunnel into Loch Modan
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >>前往暴风城大教堂内，与 the Stonewrought Dam
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .accept 250 >>接受任务《物归己用》 水坝危机
    .target Chief Engineer Hinderweir VII
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .isOnQuest 250
    .goto Loch Modan,56.05,13.24
    >>点击地上的 |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >>交任务《 前往熔光镇》 水坝危机
    .accept 199 >>接受任务《物归己用》 水坝危机
step
    .isQuestTurnedIn 250
    .goto Loch Modan,56.05,13.24
    >>点击地上的 |cRXP_PICK_Suspicious Barrel|r
    .accept 199 >>接受任务《物归己用》 水坝危机
    .zoneskip Loch Modan,1
step
    .isOnQuest 199
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .turnin 199 >>交任务《 前往熔光镇》 水坝危机
    .target Chief Engineer Hinderweir VII
    .zoneskip Loch Modan,1
step
    #label LochArrive
    #optional
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >>获取塞尔萨玛的飞行路径 << NightElf/Draenei
    .fly Ironforge >>飞往铁炉堡 << !NightElf !Draenei
    .target Thorgrum Borrelson
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .zoneskip Ironforge
step << NightElf/Draenei
    #optional
    .goto Loch Modan,21.30,68.60,50 >> Travel south to the tunnel leading to Dun Morogh
step << NightElf/Draenei
    #optional
    .goto 1432/0,-2582.400,-5738.400,15,0
    .goto 1432/0,-2578.000,-5679.900,15,0
    .goto 1432/0,-2535.500,-5643.700,10 >>前往暴风城大教堂内，与 the tunnel entrance
step << NightElf/Draenei
    #optional
    #sticky
    .zone Ironforge >>前往铁炉堡
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2441.900,-5559.800,10 >> Travel through the tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2347.800,-5560.700,10 >>前往暴风城大教堂内，与 the second tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2243.100,-5634.800,10 >>Travel through the 秒 tunnel
step << NightElf/Draenei
    #optional
    .goto Dun Morogh,47.85,41.42,55 >> Travel west along the road towards Ironforge
step << NightElf/Draenei
    #optional
    .goto 1426/0,-726.200,-5193.300,20,0
    .goto 1455/0,-862.200,-4998.700,70 >> Travel up the road

step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Gather 4 |T134850:0|t[初级法力药水] and 2 |T134822:0|t[初级坚韧药剂]
    >>|cRXP_WARN_You can buy these from the Auction House, trade players for them or use|r |T136240:0|t[炼金术] |cRXP_WARN_if you have it to make them|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Gather 4 |T134850:0|t[初级法力药水] and 2 |T134822:0|t[初级坚韧药剂]
    >>|cRXP_WARN_You can buy these from the Auction House or trade players for them|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ssf
    #optional
    >>Gather 4 |T134850:0|t[初级法力药水] and 2 |T134822:0|t[初级坚韧药剂]
    >>|cRXP_WARN_Use your|r |T136240:0|t[炼金术] |cRXP_WARN_profession to craft them if possible|r
    >>|cRXP_WARN_If you are unable to acquire them, skip this step|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .isOnQuest 1072
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业技能
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .trainer >>学习 |T135757:0|t[传送：铁炉堡]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托德雷·铁矿|r
    .trainer >>训练你的职业技能
    .target Toldren Deepiron
step
    #optional
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开启任务|r
    .accept 968 >>接受任务《物归己用》 深渊之神
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛利·硬骨|r
    .turnin 968 >>交任务《 前往熔光镇》 深渊之神
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛利·硬骨|r
    .turnin 971 >>交任务《 前往熔光镇》 深渊中的知识
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知亚瓦德|r
    .trainer >>训练你的职业技能
    .target Farseer Javad
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格努斯·雷石|r
    .goto Ironforge,69.872,82.890
    .trainer >>训练你的职业技能
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝莉亚·雷岩|r
    .goto Ironforge,70.856,85.839
    .trainer >>学习你的宠物技能
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比尔班·飞钳|r
    .goto Ironforge,65.905,88.405
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>学习双手斧 << !Rogue
	.train 266 >>学习枪械 << Hunter/Warrior/Rogue
    .train 199 >>学习双手锤 << Warrior/Shaman
    .train 54 >>学习锤类武器 << Rogue/Shaman
    .train 44 >>学习斧类武器 << Shaman
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_考格斯宾|r 没有库存，请跳过此步骤|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto 1455/0,-1283.600,-4843.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛玛克·链带|r
    .target Lomac Gearstrip
    .turnin 1072 >>交任务《 前往熔光镇》 老同事
step
    #optional
    .isQuestTurnedIn 1072
    .goto Ironforge,72.08,51.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛玛克·链带|r
    .accept 1073 >>接受任务《物归己用》 失职+药剂=快乐
    .turnin 1073 >>交任务《 前往熔光镇》 失职+药剂=快乐
    .itemcount 2455,4 -- Minor Mana Potion (4)
    .itemcount 2458,2 -- Elixir of Minor Fortitude (2)
    .target Lomac Gearstrip
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
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 24-27级 赤脊山/暮色森林
#next 23-24级 湿地

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_比利巴布·旋轮|r 没有库存，请跳过此步骤|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >>前往暴风要塞
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔卢恩大使|r  
    .accept 9429 >>接受任务《物归己用》 前往夜色镇
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_夜行者奥斯伯|r
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    .train 1804 >>Train |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往楼上，在 SI:7 内前去找 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Renzik "The Shiv"|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2281 >>接受任务《物归己用》 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接受任务《物归己用》 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板奥里森|r
    .home >>将你的炉石设置为暴风城
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >>Travel to |cRXP_FRIENDLY_达索瑞恩·拉尔|r对话，NPC在里面 the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_勇气之书|r]
    .use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_勇气之书|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接受任务《物归己用》 勇气之书
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务《 前往熔光镇》 勇气之书
    .accept 1650 >>接受任务《物归己用》 勇气之书
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·加姆|r
    >>|cRXP_BUY_Buy|r |T133849:0|t[暴风城特产调料]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step
    .isOnQuest 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科林·玛伦|r
    .turnin 1075 >>交任务《 前往熔光镇》 玛伦的卷轴
    .accept 1076 >>接受任务《物归己用》 西部荒野中的恶魔
    .target Collin Mauren
step
    #optional
    .isQuestTurnedIn 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科林·玛伦|r
    .accept 1076 >>接受任务《物归己用》 西部荒野中的恶魔
    .target Collin Mauren
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>进入屠宰场。下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    .isQuestComplete 1738
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[魅魔]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[虚空行者]   
    .target Spackle Thornberry
step << Warlock
    .isOnQuest 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1738 >>交任务《 前往熔光镇》 同心树
    .accept 1739 >>接受任务《物归己用》 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1739 >>接受任务《物归己用》 誓缚
    .target Gakin the Darkbinder
step << Warlock
    .isOnQuest 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 65602 >>交任务：爱是什么？
    .accept 65603 >>接受任务《物归己用》 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 65603 >>接受任务《物归己用》 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .cast 8674 >>|cRXP_WARN_使用|r |T136065:0|t[同心树之核] |cRXP_WARN_来召唤一只|r |cRXP_ENEMY_魅魔|r
    .use 6913
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.154,77.406
    .use 6913 >>消灭那些试图阻止仪式的 |cRXP_ENEMY_魅魔|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .isOnQuest 65603
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰场的最底层|r
    .use 190186 >>|cRXP_WARN_使用|r |T136065:0|t[木制雕像] |cRXP_WARN_来召唤一个|r |cRXP_ENEMY_被召唤的魅魔|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
step << Warlock
    #completewith next
    +|cRXP_WARN_你现在可以使用|r |T136220:0|t[魅魔] |cRXP_WARN_或|r |T136221:0|t[虚空行者] |cRXP_WARN_作为你的宠物|r
    >>|cRXP_WARN_|r |T136220:0|t[魅魔] |cRXP_WARN_输出伤害很高，而|r |T136221:0|t[虚空行者] |cRXP_WARN_则提供更强的生存能力|r
step << Warlock
    .isOnQuest 1739,65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1739 >>交任务《 前往熔光镇》 誓缚
    .turnin 65603 >>交任务《 前往熔光镇》 誓缚
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>训练你的职业技能
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞曼|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[烹饪] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
    >>|T133024:0|t[青铜管]
    >>|T133970:0|t[狼肋排]
    >>|T134321:0|t[粘糊的蜘蛛腿]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T133024:0|t[青铜管]
    >>|T133970:0|t[狼肋排]
    >>|T134321:0|t[粘糊的蜘蛛腿]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >>将以下物品存入你的银行： << Shaman
    >>|T132824:0|t[装满的波涛之袋] << Shaman -- 23750
    .target Newton Burnside
step << Draenei/NightElf
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城的飞行路径
    .target Dungar Longdrink
step
    #completewith next
    .goto 1429/0,395.900,-9114.200,80 >>离开暴风城
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >>前往阿佐拉之塔。登上塔楼
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_塞欧克瑞图斯|r at the top
    .accept 94 >>接受任务《物归己用》 法师的眼线
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_当恩·布赖特斯塔|r
    .vendor >>|cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134850:0|t|T134830:0|t[药水] |cRXP_BUY_as well, which you should buy if available|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_当恩·布赖特斯塔|r |cRXP_BUY_也有一些限量供应物品，例如|r |T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_以及|r |T134830:0|t[药水] |cRXP_BUY_，如果有库存应当购买|r << Warrior/Rogue
    .target Dawn Brightstar
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
    .accept 244 >>接受任务《物归己用》 豺狼人的入侵
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .turnin 244 >>交任务《 前往熔光镇》 豺狼人的入侵
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山的飞行路径
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>接受任务《物归己用》 黑石氏族的威胁
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .accept 91 >>接受任务《物归己用》 所罗门的律法
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_码头管理员巴伦|r
    .accept 127 >>接受任务《物归己用》 卖鱼
    .accept 150 >>接受任务《物归己用》 鱼人偷猎者
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r
    .accept 386 >>接受任务《物归己用》 伸张正义
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务赤脊山的联络员
    .accept 2282 >>接受任务《物归己用》 奥瑟尔伐木场
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>击杀 |cRXP_ENEMY_鱼人斥候|r 和 |cRXP_ENEMY_鱼人招潮者|r。拾取他们的 |cRXP_LOOT_Fins|r 和 |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>击杀 |cRXP_ENEMY_黑石步兵|r 和 |cRXP_ENEMY_黑石前锋|r。拾取他们的 |cRXP_LOOT_斧|r
	>>|cRXP_WARN_注意 |cRXP_ENEMY_黑石前锋|r 会对你施放|r |T132149:0|t[网] |cRXP_WARN_在你身上|r
    >>|cRXP_WARN_在地图西南方向标记的位置轮流击杀 |cRXP_ENEMY_兽人|r 和 |cRXP_ENEMY_鱼人|r|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>击杀 |cRXP_ENEMY_鱼人斥候|r 和 |cRXP_ENEMY_鱼人招潮者|r。拾取他们的 |cRXP_LOOT_Fins|r 和 |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>交任务《 前往熔光镇》 黑石氏族的威胁
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_码头管理员巴伦|r
    .turnin 127 >>交任务《 前往熔光镇》 卖鱼
    .turnin 150 >>交任务《 前往熔光镇》 鱼人偷猎者
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卢修斯|r
    .turnin 2282 >>交任务《 前往熔光镇》 奥瑟尔伐木场
    .target Lucius
step
    .goto Redridge Mountains,26.75,46.43
    >>点击 |cRXP_PICK_通缉告示|r
    .accept 180 >>接受任务《物归己用》 通缉：范高雷中尉
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .accept 34 >>接受任务《物归己用》 不速之客
step
    .goto Redridge Mountains,15.68,49.30
    >>击杀 |cRXP_ENEMY_贝利格拉布|r。拾取他的 |cRXP_LOOT_獠牙|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 34 >>交任务《 前往熔光镇》 不速之客
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >>前往暮色森林的夜色镇
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r
    .accept 66 >>接受任务《物归己用》 斯塔文的传说
    .accept 101 >>接受任务《物归己用》 惩罚图腾
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格鲁奥|r
	>>|cRXP_WARN_你需要至少 50 点烹饪技能才能接取该任务|r
    .accept 90 >>接受任务《物归己用》 干烤狼肉串
    .turnin 90 >>交任务《 前往熔光镇》 干烤狼肉串
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 56 >>接受任务《物归己用》 守夜人
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 66 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 67 >>接受任务《物归己用》 斯塔文的传说
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者德尔兰|r  
    .turnin 9429 >>交任务《 前往熔光镇》 前往夜色镇
    .target Anchorite Delan
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莱尼·卡尔文|r
    .accept 163 >>接受任务《物归己用》 乌鸦岭
    .accept 164 >>接受任务《物归己用》 斯温的货物
    .accept 165 >>接受任务《物归己用》 隐士
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fp Duskwood>>获取暮色森林的飞行路径
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔伯|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_赫尔伯|r 没有库存，请跳过此步骤|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接受任务《物归己用》 眺望群星
    .turnin 174 >>交任务《 前往熔光镇》 眺望群星
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接受任务《物归己用》 眺望群星
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务《 前往熔光镇》 眺望群星
    .accept 177 >>接受任务《物归己用》 眺望群星
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_如果你拾取到 |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]，就开始该任务。这是暮色森林全区域掉落的物品|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .use 2794 --An Old History Book
step
	#completewith next
    >>击杀 |cRXP_ENEMY_骷髅战士|r 和 |cRXP_ENEMY_骷髅法师|r
    >>|cRXP_ENEMY_骷髅战士|r |cRXP_WARN_会施放|r |T132316:0|t[断筋]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[寒冰箭] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_The |cRXP_ENEMY_疯狂的食尸鬼|rmay be 对话，NPC在里面 of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
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
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[寒冰箭] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    #completewith Level25
    >>在暮色森林击杀 |cRXP_ENEMY_蜘蛛|r。拾取它们的 |cRXP_LOOT_粘糊的蜘蛛腿|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >>前往暮色森林西部，前去找 |cRXP_FRIENDLY_基特斯|r
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基特斯|r
    .turnin 163 >>交任务《 前往熔光镇》 乌鸦岭
    .accept 5 >>接受任务《物归己用》 饥肠辘辘的基特斯
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 164 >>交任务《 前往熔光镇》 斯温的货物
    .accept 95 >>接受任务《物归己用》 斯温的复仇
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔斯|r
    .accept 226 >>接受任务《物归己用》 恶狼成群
    .target Lars
step
    #completewith SFD
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r。拾取他们的 |cRXP_LOOT_Lean Wolf Flanks|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 165 >>交任务《 前往熔光镇》 隐士
    .accept 148 >>接受任务《物归己用》 夜色镇的补给
    .target Abercrombie
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
    >>击杀 |cRXP_ENEMY_饥饿的恐狼|r 和 |cRXP_ENEMY_疯狂的恐狼|r。拾取他们的 |cRXP_LOOT_Lean Wolf Flanks|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉尔斯|r
    .turnin 226 >>交任务《 前往熔光镇》 恶狼成群
    .target Lars
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
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .goto Duskwood,17.72,29.07
    .accept 225 >>接受任务《物归己用》 破旧的坟墓
step
    #completewith MoonbrookSt
    .zone Westfall >>前往西部荒野
step
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>击杀 |cRXP_ENEMY_沙尘恶魔|r。拾取他们的 |cRXP_LOOT_Debris|r
    >>|cRXP_ENEMY_沙尘恶魔|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
    >>|cRXP_WARN_施放|r |T132172:0|t[Eagle Eye]|cRXP_WARN_to try and find them|r << Hunter
    .complete 1076,1
    .unitscan Dust Devil
    .isOnQuest 1076
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板 (默认按键：V) 这样可以在塔内的一些拐角处看到躲在后面的敌人|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r
    >>|cRXP_WARN_这个任务是必须完成的，关系到你的|r |T132290:0|t[毒药]|r
    .turnin 2360 >>交任务《 前往熔光镇》 马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务《物归己用》 克拉文之塔
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Pick Pocket]the |cRXP_ENEMY_丑陋的迪菲亚懒汉|r.拾取地上的 it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r 出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r |T135641:0|t[弯曲木匕首] |cRXP_WARN_，并且当前没有装备|r |T135641:0|t[匕首] |cRXP_WARN_，请在此任务中装备它|r
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
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step
    #completewith MoonbrookSt
    .subzone 20 >>前往月溪镇
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>点击地上的 |cRXP_PICK_旧箱子|r
    .turnin 67 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 68 >>接受任务《物归己用》 斯塔文的传说
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    .turnin 1650 >>交任务《 前往熔光镇》 勇气之书
    .target Daphne Stilwell
    .accept 1651 >>接受任务《物归己用》 勇气之书
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    .turnin 1651 >>交任务《 前往熔光镇》 勇气之书
    .target Daphne Stilwell
    .accept 1652 >>接受任务《物归己用》 勇气之书
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
    .use 15883 >>|cRXP_WARN_使用|r |T133443:0|t[水兽敏捷坠饰] |cRXP_WARN_将其与|r |T133442:0|t[水兽耐力坠饰] |cRXP_WARN_在雷姆洛斯神殿合并|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
    >>|cRXP_WARN_这样可以节省你跑回去的时间|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 272 >>交任务《 前往熔光镇》 海狮试炼
    .accept 5061 >>接受任务《物归己用》 水栖形态
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>飞往泰达希尔
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 5061 >>交任务《 前往熔光镇》 水栖形态
step 
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step 
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Duskwood >>飞往夜色镇
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
    .target Thor
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_珊娜·弗勒|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_for you instead|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Craft an |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[赞吉尔之触] debuff|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备你的主武器|r << Rogue
    .turnin 2359 >>交任务《 前往熔光镇》 克拉文之塔
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Duskwood>>飞往暮色森林
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r
    >>如果你刚刚完成了毒药任务，现在把你的炉石绑定在夜色镇
    >>如果你的炉石已经绑定在夜色镇，请跳过这一步
    .home >>将你的炉石设置为夜色镇
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >>交任务《 前往熔光镇》 克拉文之塔
    .accept 2607 >>接受任务《物归己用》 赞吉尔之触
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>前往地下室
    .turnin 2607 >>交任务《 前往熔光镇》 赞吉尔之触
    .accept 2608 >>接受任务《物归己用》 赞吉尔之触
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>在聊天框中输入 /lay，然后等待任务自动完成
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >>交任务《 前往熔光镇》 赞吉尔之触
    .accept 2609 >>接受任务《物归己用》 赞吉尔之触
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
    .turnin 2609 >>交任务《 前往熔光镇》 赞吉尔之触
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格鲁奥|r
	>>|cRXP_WARN_你需要至少 50 点烹饪技能才能接取该任务|r
    .accept 90 >>接受任务《物归己用》 干烤狼肉串
    .turnin 90 >>交任务《 前往熔光镇》 干烤狼肉串
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厨师格鲁奥|r
    .turnin 5 >>交任务《 前往熔光镇》 饥肠辘辘的基特斯
    .accept 93 >>接受任务《物归己用》 黑蟹蛋糕
    .turnin 93 >>交任务《 前往熔光镇》 黑蟹蛋糕
    .accept 240 >>接受任务《物归己用》 基特斯的美餐
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 56 >>交任务《 前往熔光镇》 守夜人
    .target Commander Althea Ebonlocke
    .accept 57 >>接受任务《物归己用》 守夜人
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 68 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 69 >>接受任务《物归己用》 斯塔文的传说
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 225 >>交任务《 前往熔光镇》 破旧的坟墓
    .accept 227 >>接受任务《物归己用》 摩根·拉迪莫尔
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 227 >>交任务《 前往熔光镇》 摩根·拉迪莫尔
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >>删除 |T133741:0|t[摩根·拉迪莫尔的故事]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 148 >>交任务《 前往熔光镇》 夜色镇的补给
    .target Madame Eva
    .accept 149 >>接受任务《物归己用》 幽灵的发丝
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫尔伯|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_赫尔伯|r 没有库存，请跳过此步骤|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接受任务《物归己用》 眺望群星
    .turnin 174 >>交任务《 前往熔光镇》 眺望群星
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接受任务《物归己用》 眺望群星
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务《 前往熔光镇》 眺望群星
    .accept 177 >>接受任务《物归己用》 眺望群星
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 149 >>交任务《 前往熔光镇》 幽灵的发丝
    .accept 154 >>接受任务《物归己用》 归还梳子
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_如果你拾取到 |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]，就开始该任务。这是暮色森林全区域掉落的物品|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_The |cRXP_ENEMY_疯狂的食尸鬼|rmay be 对话，NPC在里面 of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 177 >>交任务《 前往熔光镇》 眺望群星
    .accept 181 >>接受任务《物归己用》 眺望群星
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 181 >>接受任务《物归己用》 眺望群星
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 154 >>交任务《 前往熔光镇》 归还梳子
    .accept 157 >>接受任务《物归己用》 送交发丝
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>点击地上的 |cRXP_PICK_松散的泥土堆|r
    .turnin 95 >>交任务《 前往熔光镇》 斯温的复仇
    .accept 230 >>接受任务《物归己用》 斯温的营地   
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 157 >>交任务《 前往熔光镇》 送交发丝
    .target Abercrombie
    .accept 158 >>接受任务《物归己用》 僵尸酒
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 230 >>交任务《 前往熔光镇》 斯温的营地
    .target Sven Yorgen
    .accept 262 >>接受任务《物归己用》 模糊的人影
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Redridge >>飞往赤脊山
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵豪维|r
    .accept 128 >>接受任务《物归己用》 悬赏：黑石氏族
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 19 >>接受任务《物归己用》 萨瑞尔祖恩
    .accept 115 >>接受任务《物归己用》 暗影魔法
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .solo
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 115 >>接受任务《物归己用》 暗影魔法
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击 |cRXP_FRIENDLY_通缉告示|r
    .accept 169 >>接受任务《物归己用》 通缉：加塞尔佐格
    .maxlevel 27
step
    #completewith LookingFurther
    >>击杀 |cRXP_ENEMY_暗皮狼人|r。拾取它们身上的 |cRXP_LOOT_徽章|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
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
    .turnin 94 >>交任务《 前往熔光镇》 法师的眼线
    .accept 248 >>接受任务《物归己用》 监视
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>点击 |cRXP_PICK_古老的狮子雕像|r
    .accept 248 >>接受任务《物归己用》 监视
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
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #completewith Gath
    >>击杀 |cRXP_ENEMY_黑石暗影法师|r。拾取他们的 |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    .goto Redridge Mountains,71.40,55.07
    >>击杀 |cRXP_ENEMY_萨瑞尔祖恩|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 4
    .goto Redridge Mountains,69.599,55.797
    >>进入石堡要塞
    >>击杀 |cRXP_ENEMY_加斯伊尔佐格|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    #label Gath
step
    .goto Redridge Mountains,66.68,56.26    
    >>击杀 |cRXP_ENEMY_黑石暗影法师|r。拾取他们的 |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>点击石堡要塞塔顶的桶上的 |cRXP_PICK_空罐子|r
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 248 >>交任务《 前往熔光镇》 监视
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>击杀 |cRXP_ENEMY_黑石勇士|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    #completewith ReturnLakeshire
    .subzone 69 >>Return to 湖畔镇，赤脊山
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 19 >>交任务《 前往熔光镇》 萨瑞尔祖恩
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 115 >>交任务《 前往熔光镇》 暗影魔法
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .turnin 91 >>交任务《 前往熔光镇》 所罗门的律法
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 180 >>交任务《 前往熔光镇》 通缉：范高雷中尉
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 169 >>交任务《 前往熔光镇》 通缉：加塞尔佐格
    .target Magistrate Solomon
    .isQuestComplete 169
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r
    .accept 386 >>接受任务《物归己用》 伸张正义
    .target Guard Berton
    .zoneskip Redridge Mountains,1
step
    #label ReturnLakeshire
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵豪维|r
    .turnin 128 >>交任务《 前往熔光镇》 悬赏：黑石氏族
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Duskwood >>飞往夜色镇
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >>前往夜色镇
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 262 >>交任务《 前往熔光镇》 模糊的人影
    .target Madame Eva
    .accept 265 >>接受任务《物归己用》 继续搜寻
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务《 前往熔光镇》 摩拉迪姆
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 265 >>交任务《 前往熔光镇》 继续搜寻
    .accept 266 >>接受任务《物归己用》 [DEPRECATED] 调查旅店
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_议员米尔斯迪普|r
    .accept 377 >>接受任务《物归己用》 罪与罚
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 158 >>交任务《 前往熔光镇》 僵尸酒
    .accept 156 >>接受任务《物归己用》 收集腐败之花
    .turnin 266 >>交任务《 前往熔光镇》 [DEPRECATED] 调查旅店
    .accept 453 >>接受任务《物归己用》 搜寻乌鸦岭
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务《 前往熔光镇》 幸存的女儿
    .accept 231 >>接受任务《物归己用》 女儿的爱
    .target Watcher Ladimore
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .accept 228 >>接受任务《物归己用》 摩拉迪姆
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r
    .accept 173 >>接受任务《物归己用》 林子里的狼人
    .target Calor
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
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r
    .turnin 173 >>交任务《 前往熔光镇》 林子里的狼人
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fly Westfall >>飞往西部荒野
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_如果你拾取到 |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]，就开始该任务。这是暮色森林全区域掉落的物品|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基特斯|r
    .turnin 453 >>交任务《 前往熔光镇》 搜寻乌鸦岭
    .accept 268 >>接受任务《物归己用》 回复斯温
    .turnin 240 >>交任务《 前往熔光镇》 基特斯的美餐
    .target Jitters
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
    >>击杀 |cRXP_ENEMY_骸骨魔|r 和 |cRXP_ENEMY_恐怖骸骨|r。拾取他们的 |cRXP_LOOT_Rot Blossoms|r 和 |cRXP_LOOT_手指|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .mob +Skeletal Fiend
    .complete 57,2 -- Skeletal Horror slain (15)
    .mob +Skeletal Horror
    .complete 156,1 -- Rot Blossom (8)
    .complete 101,3 --10/10 Skeleton Finger
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 268 >>交任务《 前往熔光镇》 回复斯温
    .accept 323 >>接受任务《物归己用》 证明你的实力
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务《 前往熔光镇》 女儿的爱
step
    .goto Duskwood,16.01,38.79
    >>击杀 |cRXP_ENEMY_骷髅袭击者|r, |cRXP_ENEMY_骷髅医师|r 和 |cRXP_ENEMY_骷髅看守|r
    >>|cRXP_WARN_进入晨光之林墓穴寻找 |cRXP_ENEMY_骷髅看守|r|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >>练怪到 27 级。如果你打算去刷监狱，可以跳过这一步
step
    .group 5
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_是一名 30 级精英，攻击力很高，但移动速度较慢。如有需要，尽量绕着大型树木风筝他|r
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 323 >>交任务《 前往熔光镇》 证明你的实力
    .accept 269 >>接受任务《物归己用》 寻求指引
    .target Sven Yorgen

step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Duskwood>>飞往夜色镇
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >>前往夜色镇
step << Warrior/Paladin
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 57 >>交任务《 前往熔光镇》 守夜人
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务《 前往熔光镇》 摩拉迪姆
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务《 前往熔光镇》 幸存的女儿
    .accept 231 >>接受任务《物归己用》 女儿的爱
    .target Watcher Ladimore
step << Warrior/Paladin
    .isQuestTurnedIn 228
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 156 >>交任务《 前往熔光镇》 收集腐败之花
    .target Tavernkeep Smitts
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fly Redridge >>飞往赤脊山
    .target Felicia Maline
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r
    .accept 386 >>接受任务《物归己用》 伸张正义
    .target Guard Berton
step << Warrior/Paladin
    .isOnQuest 231
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Westfall >>飞往西部荒野
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fly Westfall >>飞往西部荒野
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务《 前往熔光镇》 女儿的爱
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_你很快就要前往暴风城，尽量为监狱组好队伍|r
step
    #completewith next
    .subzone 87 >>前往金雾村
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r   
    .trainer >>训练你的职业技能
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r
    .trainer >>训练你的职业技能
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 69 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 70 >>接受任务《物归己用》 斯塔文的传说
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>上楼
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r
	.trainer >>训练你的职业技能
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .trainer >>训练你的职业技能
    .target Keryn Sylvius
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
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科林·玛伦|r
    .turnin 1076 >>交任务《 前往熔光镇》 西部荒野中的恶魔
    .target Collin Mauren
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知安布洛尔|r
	.trainer >>训练你的职业技能
    .target Farseer Umbrua
step
    #completewith GRB
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Duskwood >>飞往夜色镇
    .target Dungar Longdrink
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 57 >>交任务《 前往熔光镇》 守夜人
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务《 前往熔光镇》 摩拉迪姆
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务《 前往熔光镇》 幸存的女儿
    .target Watcher Ladimore
step
    #label GRB
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 156 >>交任务《 前往熔光镇》 收集腐败之花
    .target Tavernkeep Smitts
step
.dungeon Stockades
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fly Redridge >>飞往赤脊山
    .target Felicia Maline
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r
    .accept 386 >>接受任务《物归己用》 伸张正义
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << !Mage
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .fly Stormwind >>飞往暴风城
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
.dungeon Stockades
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >>|cRXP_WARN_施放|r |T135763:0|t[传送：暴风城]
step << !Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科林·玛伦|r
    .turnin 1076 >>交任务《 前往熔光镇》 西部荒野中的恶魔
    .target Collin Mauren
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>前往屠宰场，进入地下室
step
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑爪加尔德斯|r
    .accept 335 >>接受任务《物归己用》 名酿
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员弗索姆|r
    .turnin 70 >>交任务《 前往熔光镇》 斯塔文的传说
    .target Caretaker Folsom
    .accept 72 >>接受任务《物归己用》 斯塔文的传说
step
    .goto Stormwind City,29.44,61.52
    >>点击地上的 |cRXP_PICK_密封的箱子|r
    .turnin 72 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 74 >>接受任务《物归己用》 斯塔文的传说
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r
    .trainer >>训练你的职业技能
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .target Duthorian Rall
    .turnin 1652 >>交任务《 前往熔光镇》 勇气之书
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔努修士|r
    .accept 2923 >>接受任务《物归己用》 工匠大师欧沃斯巴克
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法席恩主教|r
    .turnin 269 >>交任务《 前往熔光镇》 寻求指引
    .accept 270 >>接受任务《物归己用》 被诅咒的舰队
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .accept 389 >>接受任务《物归己用》 巴基尔·斯瑞德
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业技能
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡苏斯修士|r
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买 2 枚|r |T134419:0|t[传送符文]
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .turnin 337 >>交任务《 前往熔光镇》 一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    .accept 538 >>接受任务《物归己用》 南海镇
    .target Milton Sheaf
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼科瓦·拉斯克|r
    >>|cRXP_FRIENDLY_尼科瓦·拉斯克|r |cRXP_WARN_在旧城区巡逻|r
    .accept 388 >>接受任务《物归己用》 鲜血的颜色
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .accept 387 >>接受任务《物归己用》 镇压暴动
    .turnin 389 >>交任务《 前往熔光镇》 巴基尔·斯瑞德
    .accept 391 >>接受任务《物归己用》 监狱暴动
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .accept 391 >>接受任务《物归己用》 监狱暴动
    .accept 387 >>接受任务《物归己用》 镇压暴动
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .accept 387 >>接受任务《物归己用》 镇压暴动
    .target Warden Thelwater
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
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>在监狱东侧监区击杀 |cRXP_ENEMY_巴基尔·斯瑞德|r。拾取他的 |cRXP_LOOT_头部|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[丝绸] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 387 >>交任务《 前往熔光镇》 镇压暴动
    .turnin 391 >>交任务《 前往熔光镇》 监狱暴动
    .accept 392 >>接受任务《物归己用》 好奇的访客
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 387 >>交任务《 前往熔光镇》 镇压暴动
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 392 >>交任务《 前往熔光镇》 好奇的访客
    .accept 393 >>接受任务《物归己用》 往日的阴影
    .target Baros Alexston
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼科瓦·拉斯克|r
    >>|cRXP_FRIENDLY_尼科瓦·拉斯克|r |cRXP_WARN_在旧城区巡逻|r
    .turnin 388 >>交任务《 前往熔光镇》 鲜血的颜色
    .unitscan Nikova Raskol
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 393 >>交任务《 前往熔光镇》 往日的阴影
    .accept 350 >>接受任务《物归己用》 老朋友
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 350 >>交任务《 前往熔光镇》 老朋友
    .accept 2745 >>接受任务《物归己用》 潜入城堡
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里恩|r
    .turnin 2745 >>交任务《 前往熔光镇》 潜入城堡
    .accept 2746 >>接受任务《物归己用》 必备物品
    .target Tyrion
    .isQuestTurnedIn 391
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰里恩|r
    >>|cRXP_WARN_在你接取 进攻 之前，确保你的小队成员都已经交付了事关重大的物品|r
    >>|cRXP_WARN_此步骤已关闭自动接取任务。注意：如果有其他人正在进行该任务，你可能无法接取|r
    .turnin 2746 >>交任务《 前往熔光镇》 必备物品
    .accept 434,1 >>接受任务《物归己用》 伏击！
    .timer 124,进攻！剧情
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_在庭院中央等待 |cRXP_ENEMY_葛瑞格·莱斯科瓦公爵|r 和 |cRXP_ENEMY_沉默之刃马尔松|r 到达。大约需要 2 分钟|r
    >>击杀 |cRXP_ENEMY_葛瑞格·莱斯科瓦公爵|r 和 |cRXP_ENEMY_沉默之刃马尔松|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_埃林·提亚斯|r 对话
    .turnin 434 >>交任务《 前往熔光镇》 伏击！
    .accept 394 >>接受任务《物归己用》 禽兽的首级
    .target Elling Trias
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 394 >>交任务《 前往熔光镇》 禽兽的首级
    .accept 395 >>接受任务《物归己用》 兄弟会的灭亡
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 395 >>交任务《 前往熔光镇》 兄弟会的灭亡
    .accept 396 >>接受任务《物归己用》 觐见国王
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >>前往暴风要塞
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r
    .turnin 396 >>交任务《 前往熔光镇》 觐见国王
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞往赤脊山
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵伯尔顿|r
    .turnin 386 >>交任务《 前往熔光镇》 伸张正义
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送：暴风城]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .accept 2928 >>接受任务《物归己用》 陀螺式挖掘机
    .target Shoni the Shilent
step << Mage
    #completewith next
    .zone Ironforge >>|cRXP_WARN_施放|r |T135757:0|t[传送：铁炉堡]
step << !Mage
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>进入矿道地铁。乘坐地铁前往铁炉堡
step
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .turnin 2923 >>交任务《 前往熔光镇》 工匠大师欧沃斯巴克
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_诺恩|r, |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r 和 |cRXP_FRIENDLY_科罗莫特·钢尺|r
    .accept 2927 >>接受任务《物归己用》 灾难之后
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >>交任务《 前往熔光镇》 工匠大师欧沃斯巴克
    .accept 2922 >>接受任务《物归己用》 拯救尖端机器人！
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >>接受任务《物归己用》 大叛徒
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >>接受任务《物归己用》 抢救数据
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >>接受任务《物归己用》 基础模组
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
    .goto Ironforge,18.10,51.60
    .home >>将你的炉石设置为铁炉堡
    .target Innkeeper Firebrew
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r
    .turnin 2927 >>交任务《 前往熔光镇》 灾难之后
    .accept 2926 >>接受任务《物归己用》 诺恩
    .target Ozzie Togglevolt
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
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >>前往 Halfhill |cRXP_FRIENDLY_奥齐·电环|r in Kharanos
    >>|cRXP_WARN_当你进入副本时，会接到一个后续任务|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r
    .turnin 2926 >>交任务《 前往熔光镇》 诺恩
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r
    .accept 2962 >>接受任务《物归己用》 更多的辐射尘！
    .target Ozzie Togglevolt
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
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>击杀 |cRXP_ENEMY_泰克巴特|r。拾取他的 |cRXP_LOOT_记忆核心|r
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_这个任务是在副本外完成的|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克努比|r
    >>|cRXP_WARN_这将触发护送任务。|cRXP_FRIENDLY_克努比|r 会随机出现在宿舍，正好在侏儒安全区外|r
    .accept 2904 >>接受任务《物归己用》 一团混乱
    .unitscan Kernobee
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
    .mob Irradiated Slime
    .mob Irradiated Lurker
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Open the |cRXP_PICK_Artificial Extrapolators|r.拾取地上的 them for |cRXP_LOOT_基础模组|r
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
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_红色穿孔卡片|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
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
    >>Open the |cRXP_PICK_Artificial Extrapolators|r.拾取地上的 them for |cRXP_LOOT_基础模组|r
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
    .accept 2945 >>接受任务《物归己用》 脏兮兮的戒指
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_将|r |T135230:0|t[|cRXP_LOOT_脏兮兮的戒指|r] |cRXP_WARN_交给 |cRXP_PICK_闪光机5200|r，在清洁区内使用|r
    *你需要回到副本入口附近的净化区，确保你的队友在场以协助你返回
    .turnin 2945 >>交任务《 前往熔光镇》 脏兮兮的戒指
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>再次点击 |cRXP_PICK_闪光机 5200|r
    .accept 2947 >>接受任务《物归己用》 戒指归来
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥齐·电环|r
    .turnin 2962 >>交任务《 前往熔光镇》 更多的辐射尘！
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
    .turnin 2947 >>交任务《 前往熔光镇》 戒指归来
    .accept 2948 >>接受任务《物归己用》 侏儒的手艺
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
    >>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[银锭] |cRXP_WARN_and a|r |T134105:0|t[绿玛瑙] |cRXP_WARN_finish this quest. If not, abandon it|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >>交任务《 前往熔光镇》 侏儒的手艺
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r 和 |cRXP_FRIENDLY_科罗莫特·钢尺|r
    .turnin -2922,1 >>交任务《 前往熔光镇》 拯救尖端机器人！
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >>交任务《 前往熔光镇》 大叛徒
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >>交任务《 前往熔光镇》 抢救数据
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >>交任务《 前往熔光镇》 基础模组
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Wetlands>>飞往湿地
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 23-24级 湿地
#next 29-30 Ashenvale

step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 279 >>交任务《 前往熔光镇》 海中的鱼人
    .accept 281 >>接受任务《物归己用》 夺回雕像
    .target Karl Boran
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 469 >>交任务《 前往熔光镇》 日常供货
    .turnin 484 >>交任务《 前往熔光镇》 小鳄鱼皮
    .accept 471 >>接受任务《物归己用》 学徒的职责
    .target James Halloran
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r
    .accept 289 >>接受任务《物归己用》 被诅咒的船员
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 270 >>交任务《 前往熔光镇》 被诅咒的舰队
    .accept 321 >>接受任务《物归己用》 光铸铁
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r
    .target Innkeeper Helbrek
    .home >>将你的炉石设置为米奈希尔港
    .bindlocation 2104
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r
    .turnin 470 >>交任务《 前往熔光镇》 搜寻软泥怪
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r
    .accept 470 >>接受任务《物归己用》 搜寻软泥怪
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈尔罗·巴纳比|r
    .accept 472 >>接受任务《物归己用》 丹莫德的陷落
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >>前往堡垒的楼上
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯托菲队长|r
    .accept 464 >>接受任务《物归己用》 龙喉战旗
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔雷尔·石纹|r
    .turnin 306 >>交任务《 前往熔光镇》 寻找挖掘队
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
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .mob +Mottled Raptor
    .mob +Mottled Screecher
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
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>点击地上的 |cRXP_PICK_破损的箱子|r
    .turnin 281 >>交任务《 前往熔光镇》 夺回雕像
    .accept 284 >>接受任务《物归己用》 继续搜寻
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>点击地上的 |cRXP_PICK_密封的桶|r
    .turnin 284 >>交任务《 前往熔光镇》 继续搜寻
    .accept 285 >>接受任务《物归己用》 搜寻雕像
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>点击地上的 |cRXP_PICK_半埋的大桶|r
    .turnin 285 >>交任务《 前往熔光镇》 搜寻雕像
    .accept 286 >>接受任务《物归己用》 归还雕像
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>击杀 |cRXP_ENEMY_诅咒的水手|r、|cRXP_ENEMY_诅咒的水兵|r 和 |cRXP_ENEMY_大副斯涅利格|r。拾取他的 |cRXP_LOOT_鼻烟盒|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig  
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>击杀 |cRXP_ENEMY_巨型湿地鳄鱼|r。拾取他们的 |cRXP_LOOT_Skin|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>击杀 |cRXP_ENEMY_藓皮豺狼人|r。拾取它们身上的 |cRXP_LOOT_粗制打火石|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,44.25,25.61
    >>击杀 |cRXP_ENEMY_赤色软泥怪|r、|cRXP_ENEMY_巨大软泥怪|r 和 |cRXP_ENEMY_黑色软泥怪|r。拾取它们的 |cRXP_LOOT_塞达的背包|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze
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
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>击杀 |cRXP_ENEMY_Dragonmaw Orcs|r。拾取他们的 |cRXP_LOOT_龙喉战旗|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_龙喉袭击者|r 会对你施放|r |T132149:0|t[网] |cRXP_WARN_在你身上|r
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    #completewith next
    .goto 1437/0,-1993.600,-3498.400,20 >> Take the shortcut to Whelgar's Excavation Site
    .subzoneskip 1036,1 -- angerfang encampment (orcs)
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 294 >>交任务《 前往熔光镇》 奥莫尔的复仇
    .accept 295 >>接受任务《物归己用》 奥莫尔的复仇
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r
    .accept 299 >>接受任务《物归己用》 发现历史
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
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
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
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
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 295 >>交任务《 前往熔光镇》 奥莫尔的复仇
    .accept 296 >>接受任务《物归己用》 奥莫尔的复仇
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r
    .turnin 299 >>交任务《 前往熔光镇》 发现历史
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>击杀 |cRXP_ENEMY_杂斑镰爪龙|r 和 |cRXP_ENEMY_杂斑刺喉龙|r。拾取它们的 |cRXP_LOOT_雷鲁之石|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>击杀 |cRXP_ENEMY_萨尔图斯|r。拾取他的 |cRXP_LOOT_利爪|r
    >>|cRXP_WARN_他通常在主挖掘场上方的山坡上，但有时会巡逻下来|r
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
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
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 296 >>交任务《 前往熔光镇》 奥莫尔的复仇
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员维尔加|r
    .turnin 299 >>交任务《 前往熔光镇》 发现历史
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 277 >>交任务《 前往熔光镇》 火焰管制
    .target Rethiel the Greenwarden
    .accept 275 >>接受任务《物归己用》 大地上的脓疱
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .target Rethiel the Greenwarden
    .accept 275 >>接受任务《物归己用》 大地上的脓疱
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >>将炉石使用回米奈希尔港
	>>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家弗拉冈特|r
    .turnin 943 >>交任务《 前往熔光镇》 健忘的勘察员
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 289 >>交任务《 前往熔光镇》 被诅咒的船员
    .accept 290 >>接受任务《物归己用》 解除诅咒
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞达|r
    .turnin 470 >>交任务《 前往熔光镇》 搜寻软泥怪
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 286 >>交任务《 前往熔光镇》 归还雕像
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 471 >>交任务《 前往熔光镇》 学徒的职责
    .target James Halloran
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >>前往堡垒的楼上
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯托菲队长|r
    .turnin 464 >>交任务《 前往熔光镇》 龙喉战旗
    .accept 465 >>接受任务《物归己用》 纳克罗什的优势
    .target Captain Stoutfist
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>爬上船的桅杆
    >>击杀 |cRXP_ENEMY_哈林多尔船长|r。拾取他的 |cRXP_LOOT_Strongbox Key|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>从船侧的大洞进入
    >>点击地上的 |cRXP_PICK_保险箱|r
    .turnin 290 >>交任务《 前往熔光镇》 解除诅咒
    .accept 292 >>接受任务《物归己用》 帕雷斯之眼
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
    .mob Fen Creeper
    .isOnQuest 275
step
    .goto Wetlands,47.45,47.01
    >>点击 |cRXP_PICK_龙喉投石车|r
    .turnin 465 >>交任务《 前往熔光镇》 纳克罗什的优势
    .accept 474 >>接受任务《物归己用》 击败纳克罗什
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 275 >>交任务《 前往熔光镇》 大地上的脓疱
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    #completewith next
    .goto 1437/0,-2673.700,-3708.900,45,0
    .goto 1437/0,-2601.200,-3707.000,40 >>|cRXP_WARN_Approach |cRXP_ENEMY_纳克罗什酋长|r from the rear. It will be easier to pull some of the |cRXP_ENEMY_Orcs|r surrounding him|r
step
    .goto Wetlands,53.459,54.663
    >>击杀 |cRXP_ENEMY_酋长内克罗什|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坚毅者长须|r
    .turnin 472 >>交任务《 前往熔光镇》 丹莫德的陷落
    .accept 304 >>接受任务《物归己用》 艰巨的任务
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特雷·加玛森|r
    .accept 303 >>接受任务《物归己用》 黑铁战争
    .target Motley Garmason
step
    #completewith next
    >>击杀 |cRXP_ENEMY_黑铁矮人|r, |cRXP_ENEMY_黑铁隧道工|r, |cRXP_ENEMY_黑铁破坏者|r 和 |cRXP_ENEMY_黑铁爆破手|r
    >>|cRXP_ENEMY_黑铁破坏者|r |cRXP_WARN_死亡时会施放|r |T135826:0|t[工兵自爆] |cRXP_WARN_，对附近单位造成火焰伤害|r
    >>|cRXP_ENEMY_黑铁爆破手|r |cRXP_WARN_会持续从远处投掷|r |T135826:0|t[炸弹] |cRXP_WARN_|r
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>击杀 |cRXP_ENEMY_邪恶的巴尔加拉斯|r。拾取他的 |cRXP_LOOT_耳朵|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
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
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_坚毅者长须|r
    .turnin 304 >>交任务《 前往熔光镇》 艰巨的任务
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫特雷·加玛森|r
    .turnin 303 >>交任务《 前往熔光镇》 黑铁战争
    .target Motley Garmason
    .isQuestComplete 303
step
    #completewith MenethilTurnins2
    .subzone 150 >>将炉石使用回米奈希尔港
    .subzoneskip 2104
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_斯托菲队长|r 交谈
    .goto Wetlands,9.86,57.48
    .turnin 474 >>交任务《 前往熔光镇》 击败纳克罗什
    .target Captain Stoutfist
step
    #label MenethilTurnins2
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 292 >>交任务《 前往熔光镇》 帕雷斯之眼
    .accept 293 >>接受任务《物归己用》 净化帕雷斯之眼
    .target Glorin Steelbrow
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 29-30 Ashenvale
#next 30-31 Wetlands

step
    #completewith next
    .goto Wetlands,5.429,57.485,25 >>前往米奈希尔港码头
step
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>乘船前往黑海岸
    >>|cRXP_WARN_在等待期间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    #completewith FSL
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
	.target Caylais Moonfeather
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    .goto 1440/1,-300.900,2796.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德瑞尔·速火|r 
    .target Shindrell Swiftfire
    .accept 4581 >>接受任务《物归己用》 凯尼斯·静风
step
    #label FSL
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .accept 1035 >>接受任务《物归己用》 坠星湖
step
    #completewith ShamefulWaste
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r
    .fly Forest Song >>飞往林歌神殿，灰谷
    .target Daelyshia
step
    .goto 1440/1,-3149.800,2899.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳亚尔|r
    >>|cRXP_FRIENDLY_纳亚尔|r |cRXP_WARN_patrols slightly|r
    .target Gnarl
    .accept 9526 >>接受任务《物归己用》 收复冥火岭
step
    .goto 1440/1,-3215.500,2954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尼斯·静风|r
    .target Kayneth Stillwind
    .turnin 4581 >>交任务《 前往熔光镇》 凯尼斯·静风
    .accept 1011 >>接受任务《物归己用》 被遗忘者的病菌
    .accept 9519 >>接受任务《物归己用》 失落的圣杯
step
    .goto 1440/1,-3260.400,2966.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵卢希尔·星语|r 
    .target Sentinel Luciel Starwhisper
    .accept 9518 >>接受任务《物归己用》 毁灭的使者
step
    .goto 1440/1,-3286.700,2996.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官维达尔|r 
    .target Vindicator Vedaar
    .accept 9516 >>接受任务《物归己用》 消灭军团
step
    .goto 1440/1,-3323.700,3001.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莉亚娜|r 
    .target Illiyana
    .accept 1021 >>接受任务《物归己用》 身陷危险的树妖！
step
    #label ShamefulWaste
    .goto 1440/1,-3307.000,2949.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_建筑师尼莫斯|r 
    .target Architect Nemos
    .accept 9517 >>接受任务《物归己用》 可耻的浪费
step
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加罗迪努斯|r 
    .fp Azshara>>获取塞尔萨玛的飞行路径
    .target Jarrodenus
    .isOnQuest 1017
step
    #completewith next
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加罗迪努斯|r 
    .fly Forest Song>>飞往林歌神殿，灰谷
    .target Jarrodenus
    .subzoneskip 2358
    .subzoneskip 430
step
    .goto 1440/1,-2994.000,2793.600
    >>拾取散发绿光的 |cRXP_PICK_Chalice of Elune|r on the large monument
    .complete 9519,1 --|Chalice of Elune: 1/1
step
    #loop
    .goto 1440/1,-3023.600,2772.900,0
    .goto 1440/1,-2958.200,2698.000,15,0
    .goto 1440/1,-2914.100,2763.800,15,0
    .goto 1440/1,-3023.600,2772.900,15,0
    .goto 1440/1,-2974.000,2686.500,15,0
    >>Loot the |cRXP_PICK_Tainted Wood|r on the ground. They look like small bundles of wood next to the trees around Satyrnaar
    .complete 9517,2 --|Satyrnaar Fel Wood: 5/5
step
#completewith next
#optional
    >>击杀 |cRXP_ENEMY_战歌伐木机|r, |cRXP_ENEMY_Horde Deforesters|r 和 |cRXP_ENEMY_部落斥候|r
    >>拾取散发绿光的 |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    >>击杀 |cRXP_ENEMY_监工古尔萨克|r
    .goto 1440/1,-3419.300,2383.000
    .complete 9518,1 --|Overseer Gorthak slain: 1/1
    .mob Overseer Gorthak
step
#loop
    .goto 1440/1,-3329.900,2429.100,0
    .goto 1440/1,-3345.300,2238.000,40,0
    .goto 1440/1,-3141.600,2410.000,40,0
    .goto 1440/1,-3306.200,2618.000,40,0
    .goto 1440/1,-3412.900,2651.100,40,0
    >>击杀 |cRXP_ENEMY_战歌伐木机|r, |cRXP_ENEMY_Horde Deforesters|r 和 |cRXP_ENEMY_部落斥候|r
    >>拾取散发绿光的 |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    #completewith demons
    >>击杀 |cRXP_ENEMY_Mannoroc Lashers|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Searing Infernals|r. Loot them for the |T134943:0|t[|cRXP_LOOT_恶魔的计划|r]
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_恶魔的计划|r] |cRXP_WARN_to begin the quest|r
    >>|cRXP_WARN_This item has a very low drop rate, don't go out of your way to get it|r
    .collect 23777,1,9520
    .accept 9520 >>接受任务《物归己用》 恶魔的计划
    .mob Roaming Felguard
    .mob Searing Infernal
    .mob Mannoroc Lasher
    --Seems low drop rate? might be worth skipping if bad luck
step
#label dirtmound
#sticky
#loop    
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-2993.200,1968.600,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3026.300,2057.500,0
    >>点击地上的 |cRXP_PICK_Fertile Dirt Mounds|r on the ground
    .complete 9526,1
step
#label demons
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3157.000,1725.400,40,0
    .goto 1440/1,-3061.900,1624.000,40,0
    .goto 1440/1,-3147.000,1935.900,40,0
    .goto 1440/1,-3168.500,1855.500,0
    >>击杀 |cRXP_ENEMY_玛诺洛克鞭笞者|r, |cRXP_ENEMY_咆哮的恶魔卫士|r 和 |cRXP_ENEMY_灼热的地狱火|r
    .complete 9516,1 --|Mannoroc Lasher slain: 6/6
    .mob +Mannoroc Lasher
    .complete 9516,2 --|Roaming Felguard slain: 6/6
    .mob +Roaming Felguard
    .complete 9516,3 --|Searing Infernal slain: 6/6
    .mob +Searing Infernal
step
#optional
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_恶魔的计划|r] |cRXP_WARN_to begin the quest|r
    .collect 23777,1,9520
    .accept 9520 >>接受任务《物归己用》 恶魔的计划
    .itemcount 23777,1
step
#requires dirtmound
    .goto Ashenvale,75.29,72.00
    >>拾取散发绿光的 |cRXP_LOOT_Bottle of Disease|r on the table
    >>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
    .complete 1011,1 -- Bottle of Disease (1)
step
    .goto Ashenvale,66.649,82.189
    >>击杀 the |cRXP_ENEMY_沼泽兽智者|r. 拾取地上的 it for the |cRXP_LOOT_Fallen Moonstone|r
    .complete 1035,1
    .mob Shadethicket Oracle
step
    #requires slimes
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >>前往暴风城大教堂内，与 The Barrens. 跟随 the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >>Ascend Dreadmist Peak. 跟随 the Arrow to the top
    .isOnQuest 1017
step
    .goto The Barrens,48.22,19.15
    >>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only 等级 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.98,20.01,20,0
    .goto The Barrens,50.42,21.93,25,0
    .goto The Barrens,51.60,24.87,25,0
    .goto The Barrens,58.76,25.28,60,0
    .goto The Barrens,63.08,37.16
    .subzone 392>>前往暴风城大教堂内，与 Ratchet. 跟随 the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布拉高克|r
    .fp Ratchet >>获取棘齿城飞行路径
    .disablecheckbox
    .fly Forest Song >>飞往林歌神殿，灰谷
    .target Bragok
    .isOnQuest 1017
    .zoneskip The Barrens,1

step
    .goto 1440/1,-3215.400,2954.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尼斯·静风|r
    .target Kayneth Stillwind
    .turnin 9519 >>交任务《 前往熔光镇》 失落的圣杯
    .turnin 1011 >>交任务《 前往熔光镇》 被遗忘者的病菌
step
    .goto 1440/1,-3262.000,2967.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵卢希尔·星语|r
    .target Sentinel Luciel Starwhisper
    .turnin 9518 >>交任务《 前往熔光镇》 毁灭的使者
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官维达尔|r
    .target Vindicator Vedaar
    .turnin 9516 >>交任务《 前往熔光镇》 消灭军团
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官维达尔|r
    .target Vindicator Vedaar
    .turnin 9520 >>交任务《 前往熔光镇》 恶魔的计划
    .isOnQuest 9520
step
    .goto 1440/1,-3154.100,2898.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳亚尔|r
    >>|cRXP_FRIENDLY_纳亚尔|r |cRXP_WARN_patrols slightly|r
    .target Gnarl
    .turnin 9517 >>交任务《 前往熔光镇》 可耻的浪费
    .turnin 9526 >>交任务《 前往熔光镇》 收复冥火岭
step
    .goto 1440/1,-2817.500,2949.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安妮莉亚|r
    .target Anilia
    .turnin 1021 >>交任务《 前往熔光镇》 身陷危险的树妖！
    .accept 1031 >>接受任务《物归己用》 塞纳留斯的树枝
step
    .goto Ashenvale,77.99,42.41
    >>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch of Cenarius|r
    .complete 1031,1
    .mob Geltharis
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莉亚娜|r
    .target Illiyana
    .turnin 1031 >>交任务《 前往熔光镇》 塞纳留斯的树枝
    .accept 1032 >>接受任务《物归己用》 猎杀萨特！
    .xp <31,1
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莉亚娜|r
    .target Illiyana
    .turnin 1031 >>交任务《 前往熔光镇》 塞纳留斯的树枝
step
    >>击杀 |cRXP_ENEMY_Satyrs|r。拾取他们的 |cRXP_LOOT_Horns|r
    .goto 1440/1,-2818.000,2925.500
    .complete 1032,1 --|Satyr Horns: 16/16
    --Kill Xavian satyrs
    .isOnQuest 1032
step
    .goto 1440/1,-3323.100,3001.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊莉亚娜|r
    .target Illiyana
    .turnin 1032 >>交任务《 前往熔光镇》 猎杀萨特！
    .isQuestComplete 1032
step
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索拉莱斯·远风|r
    .target Suralais Farwind
    .goto 1440/1,-3205.700,3001.200
    .fly Astranaar >>飞往阿斯特兰纳，灰谷
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .turnin 1035 >>交任务《 前往熔光镇》 坠星湖
step
    .goto Ashenvale,49.79,67.21    
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .turnin 1017 >>交任务《 前往熔光镇》 召唤者
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[艾露恩之光号]
    >>|T134754:0|t[艾露恩之光号]|cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r
    .target Sentinel Velene Starstrike
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .hs >>炉石到米奈希尔港
	>>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 30-31 Wetlands
#next 30-32 暮色森林/荆棘谷

step
    #optional
    #completewith BlessedArm
    .zone Wetlands >>飞往湿地
step
    >>点击 |cRXP_PICK_浸水的箱子|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>交任务《 前往熔光镇》 光铸铁
    .accept 324 >>接受任务《物归己用》 丢失的铁锭
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
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #label BlessedArm
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 324 >>交任务《 前往熔光镇》 丢失的铁锭
    .accept 322 >>接受任务《物归己用》 格瑞曼德·艾尔默
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    #completewith PleaTurnin
    .subzone 205 >>前往暴风城大教堂内，与 Dun Modr
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r
    .accept 631 >>接受任务《物归己用》 萨多尔大桥
    .target Rhag Garmason
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>沿桥上的螺旋楼梯下去
    >>点击 |cRXP_PICK_伊贝尼瑟的尸体|r
    .turnin 631 >>交任务《 前往熔光镇》 萨多尔大桥
    .accept 632 >>接受任务《物归己用》 萨多尔大桥
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 632 >>交任务《 前往熔光镇》 萨多尔大桥
    .accept 633 >>接受任务《物归己用》 萨多尔大桥
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_醉鬼马克里尔|r
    >>|cRXP_WARN_先跳到隐形链上，然后跳到桥上的断梁。所有职业都可以完成这个跳跃。如果你跳不过，就跳过这一步|r
    .accept 647 >>接受任务《物归己用》 马克里尔的月光酒
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_点击此处查看视频指南|r
step
    .goto Arathi Highlands,44.28,92.877
    >>潜入水下
    >>打开 |cRXP_PICK_浸水的信件|r。拾取其中的 |T133469:0|t[|cRXP_LOOT_浸水的信封|r]
    >>|cRXP_WARN_使用 |T133469:0|t[|cRXP_LOOT_浸水的信封|r] 来接取任务|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>接受任务《物归己用》 苏利·巴鲁的信
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 633 >>交任务《 前往熔光镇》 萨多尔大桥
    .accept 634 >>接受任务《物归己用》 请求援助
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >>前往庇护点
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼艾丝队长|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>交任务《 前往熔光镇》 请求援助
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟迪克·普罗斯|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >>获取阿拉希高地的飞行路径
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在地下室与 |cRXP_FRIENDLY_布鲁米·比格尔|r 对话
    >>|cRXP_WARN_如果你未能在限定时间内完成此任务，请放弃任务并跳过这一步|r
    .turnin 647 >>交任务《 前往熔光镇》 马克里尔的月光酒
    .target Brewmeister Bilger
    .isOnQuest 647
step
    #optional
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博学者迪布斯|r
    .turnin 538 >>交任务《 前往熔光镇》 南海镇
    .target Loremaster Dibbs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>获取南海镇的飞行路径
    .target Darla Harris
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
    .mob Snapjaw
step
    #completewith next
    .zone Western Plaguelands >>前往西部荒野 Plaguelands
    >>|cRXP_WARN_NOTE: You may encounter a level 34 |cRXP_ENEMY_山地狮|r on the way there. Just run away from it if you agro it|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>>获取西瘟疫之地的飞行路径
    .fly Ironforge >>飞往铁炉堡 << !Mage
    .target Bibilfaz Featherwhistle
step << Mage
    #completewith KingsTribute
    .zone Ironforge >>|cRXP_WARN_施放|r |T135757:0|t[传送：铁炉堡]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    .target Elsharin
	.target Jennea Cannon
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知亚瓦德|r
    .accept 9551 >>接受任务《物归己用》 空气的召唤
    .trainer >>训练你的职业技能
    .target Farseer Javad
step << Rogue/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_芬斯维克|r << Rogue
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .trainer >>训练你的职业技能
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·巴鲁|r
    .turnin 637 >>交任务《 前往熔光镇》 苏利·巴鲁的信
    .timer 17,苏利·巴鲁的信剧情
    .accept 683 >>接受任务《物归己用》 萨拉·巴鲁的请求
    .target Sara Balloo
step << Hunter/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kelv Sternhammer|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto 1455/0,-1269.700,-5047.600 << Warrior
    .trainer >>训练你的职业技能
    .accept 1718 >>接受任务《物归己用》 岛民 << Warrior
    .target Regnus Thundergranite << Hunter
    .target Kelv Sternhammer << Warrior
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_飞行员比罗·长须|r
    .accept 1179 >>接受任务《物归己用》 防撞头盔
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼下与 |cRXP_FRIENDLY_萨古斯·雷拳|r 对话
    >>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_重型箭袋|r]
	.collect 7371,1
    .target Thalgus Thunderfist
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格尼·铜须国王|r
    .turnin 683 >>交任务《 前往熔光镇》 萨拉·巴鲁的请求
    .accept 686 >>接受任务《物归己用》 国王的礼物
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
    .turnin 686 >>交任务《 前往熔光镇》 国王的礼物
    .accept 689 >>接受任务《物归己用》 国王的礼物
    .target Grand Mason Marblesten
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Travel to Kharanos and buy your|r |T132247:0|t[机械陆行鸟] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Travel to Amberstill Ranch and buy your|r |T132248:0|t[山羊] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor >>|cRXP_BUY_Buy a|r |T133024:0|t[青铜管] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_比利巴布·旋轮|r 没有库存，请跳过此步骤|r
    .bronzetube
    .target Billibub Cogspinner
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group 选择生存向指南 (A)
#subgroup RXP Survival Guide 20-32
#name 30-32 暮色森林/荆棘谷
#next 32-33 闪光平原

step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2928 >>交任务《 前往熔光镇》 陀螺式挖掘机
    .target Shoni the Shilent
    .isQuestComplete 2928
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 322 >>交任务《 前往熔光镇》 格瑞曼德·艾尔默
    .accept 325 >>接受任务《物归己用》 整装待发
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target Brother Joshua
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯|r
    >>|cRXP_FRIENDLY_托马斯|r |cRXP_WARN_在大教堂内四处走动|r
    .accept 1274 >>接受任务《物归己用》 失踪的使节
    .target Thomas
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教本尼迪塔斯|r
    .turnin 293 >>交任务《 前往熔光镇》 净化帕雷斯之眼
    .target Archbishop Benedictus
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托马斯|r
    >>|cRXP_FRIENDLY_托马斯|r |cRXP_WARN_在大教堂内四处走动|r
    .accept 1274 >>接受任务《物归己用》 失踪的使节
    .target Thomas
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 322 >>交任务《 前往熔光镇》 格瑞曼德·艾尔默
    .accept 325 >>接受任务《物归己用》 整装待发
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 2928 >>交任务《 前往熔光镇》 陀螺式挖掘机
    .target Shoni the Shilent
    .isQuestComplete 2928
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .turnin 337 >>交任务《 前往熔光镇》 一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    .accept 538 >>接受任务《物归己用》 南海镇
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德拉维主教|r
    .turnin 1274 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1241 >>接受任务《物归己用》 失踪的使节
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔贞|r
    .turnin 1241 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1242 >>接受任务《物归己用》 失踪的使节
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1242 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1243 >>接受任务《物归己用》 失踪的使节
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >>将以下物品存入你的银行：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，以便稍后在暮色森林更快交任务
    >>|T133024:0|t[青铜管]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Duskwood>>飞往暮色森林
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_议员米尔斯迪普|r
    .turnin 377 >>交任务《 前往熔光镇》 罪与罚
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    >>|cRXP_WARN_如果你还没找到青铜管，请跳过这一步|r
    .accept 174 >>接受任务《物归己用》 眺望群星
    .turnin 174 >>交任务《 前往熔光镇》 眺望群星
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接受任务《物归己用》 眺望群星
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务《 前往熔光镇》 眺望群星
    .accept 177 >>接受任务《物归己用》 眺望群星
    .isQuestTurnedIn 174
    .target Blind Mary 
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>击杀 |cRXP_ENEMY_疯狂的食尸鬼|r。拾取他的 |cRXP_LOOT_玛丽的眼镜|r
    >>|cRXP_WARN_The |cRXP_ENEMY_疯狂的食尸鬼|rmay be 对话，NPC在里面 of the chapel or walking around outside|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 177 >>交任务《 前往熔光镇》 眺望群星
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 181 >>接受任务《物归己用》 眺望群星
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .accept 159 >>接受任务《物归己用》 送酒
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r
    .home >>将你的炉石设置为暮色森林
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .accept 58 >>接受任务《物归己用》 守夜人
    .target Commander Althea Ebonlocke
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .accept 228 >>接受任务《物归己用》 摩拉迪姆
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务《 前往熔光镇》 摩拉迪姆
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务《 前往熔光镇》 幸存的女儿
    .accept 231 >>接受任务《物归己用》 女儿的爱
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1243 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1244 >>接受任务《物归己用》 失踪的使节
    .target Watcher Backus
step
    #completewith next 
    .goto Elwynn Forest,84.60,69.37,100 >>前往东谷伐木场 
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 74 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 75 >>接受任务《物归己用》 斯塔文的传说
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>到屋子里上楼
    >>打开 |cRXP_PICK_哈加德的箱子|r。拾取 |cRXP_LOOT_一张褪色的日记书页|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 75 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 78 >>接受任务《物归己用》 斯塔文的传说
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯蒂·亨特|r 和 |cRXP_FRIENDLY_兰达尔·亨特|r
    .vendor >>|cRXP_BUY_Buy a|r |T132261:0|t[|cFF0070FF马|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 79 >>接受任务《物归己用》 斯塔文的传说
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 79 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 80 >>接受任务《物归己用》 斯塔文的传说
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 97 >>接受任务《物归己用》 斯塔文的传说
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 98 >>接受任务《物归己用》 斯塔文的传说
    .target Commander Althea Ebonlocke
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
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话，NPC在里面
    .turnin 98 >>交任务《 前往熔光镇》 斯塔文的传说
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>>飞往西部荒野
    .target Felicia Maline
step << !Shaman
    #completewith JuiceDelivery
    .goto Duskwood,28.10,31.46,100 >>前往暮色森林西部，前去找 |cRXP_FRIENDLY_亚伯克隆比|r in Duskwood
step << !Shaman
    #completewith JuiceDelivery
    >>击杀 |cRXP_ENEMY_怪物|r 以协助 |cRXP_FRIENDLY_亚伯克隆比|r。拾取地上的物品以获得 |cRXP_LOOT_蜘蛛毒液瓶|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    #label JuiceDelivery
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 159 >>交任务《 前往熔光镇》 送酒
    .accept 133 >>接受任务《物归己用》 食尸鬼雕像
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>击杀 |cRXP_ENEMY_天灾食尸鬼|r。拾取它们的 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_毒牙|r
    >>|cRXP_WARN_其他 |cRXP_ENEMY_食尸鬼|r 也可能掉落 |cRXP_LOOT_肋骨|r 和 |cRXP_LOOT_毒牙|r，但重点击杀 |cRXP_ENEMY_瘟疫传播者|r|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 133 >>交任务《 前往熔光镇》 食尸鬼雕像
    .accept 134 >>接受任务《物归己用》 食人魔小偷
    .target Abercrombie
step
    #completewith next
    >>沿路击杀 |cRXP_ENEMY_黑寡妇幼蛛|r 前往迪菲亚之家
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
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
    .mob Zzarc' Vul
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
    >>击杀 |cRXP_ENEMY_小型黑寡妇蜘蛛|r 和 |cRXP_ENEMY_食腐独行蛛|r。拾取他们的 |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 134 >>交任务《 前往熔光镇》 食人魔小偷
    .accept 160 >>接受任务《物归己用》 给镇长的信
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务《 前往熔光镇》 女儿的爱
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 325 >>交任务《 前往熔光镇》 整装待发
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .accept 55 >>接受任务《物归己用》 摩本特·费尔
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group 3
    #completewith next
    >>清理沿途敌人，前往房屋的2楼
    .cast 8913 >>|cRXP_WARN_装备|r |T135142:0|t[摩本特的克星] |cRXP_WARN_在你的副手|r
    >>|cRXP_WARN_使用|r |T135142:0|t[摩本特的克星] |cRXP_WARN_对|r |cRXP_ENEMY_摩本特·费尔|r |cRXP_WARN_使用以削弱他|r
    >>|cRXP_WARN_在削弱他之后，记得重新装备你的主手/副手武器|r
    .use 7297
step
    .group 3
    .goto Duskwood,16.90,33.40
    >>击杀 |cRXP_ENEMY_摩本特·费尔|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯温·约根|r
    .turnin 55 >>交任务《 前往熔光镇》 摩本特·费尔
    .isQuestComplete 55
    .target Sven Yorgen
step
    .group 3
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_是一名 30 级精英，攻击力很高，但移动速度较慢。如有需要，尽量绕着大型树木风筝他|r
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .isOnQuest 181,101,78,58,160
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >>使用 |T136010:0|t[星界传送] 返回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r
    .fly Duskwood>>飞往夜色镇
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 79 >>接受任务《物归己用》 斯塔文的传说
    .target Tavernkeep Smitts
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务《 前往熔光镇》 摩拉迪姆
    .accept 229 >>接受任务《物归己用》 幸存的女儿
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    >>|cRXP_FRIENDLY_守夜人拉迪摩尔|r |cRXP_WARN_在夜色镇周围巡逻|r
    .turnin 229 >>交任务《 前往熔光镇》 幸存的女儿
    .accept 231 >>接受任务《物归己用》 女儿的爱
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    >>|cRXP_WARN_她可能已经死亡或正在与 |cRXP_ENEMY_缝合怪|r 战斗|r |cRXP_WARN_如果他攻击夜色镇。如果发生这种情况，可以考虑在城镇附近刷怪直到她复活，或者更换你的位面(如果可能)|r
    .turnin 58 >>交任务《 前往熔光镇》 守夜人
    .turnin 79 >>交任务《 前往熔光镇》 斯塔文的传说 << !Shaman
    .accept 80 >>接受任务《物归己用》 斯塔文的传说 << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 97 >>接受任务《物归己用》 斯塔文的传说
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 160 >>交任务《 前往熔光镇》 给镇长的信
    .accept 251 >>接受任务《物归己用》 [DEPRECATED] 翻译亚伯克隆比的信
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 251 >>交任务《 前往熔光镇》 [DEPRECATED] 翻译亚伯克隆比的信
    .target Sirra Von'Indi
    .accept 401 >>接受任务《物归己用》 等待希拉完工
    .turnin 401 >>交任务《 前往熔光镇》 等待希拉完工
    .accept 252 >>接受任务《物归己用》 翻译好的信件
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 252 >>交任务《 前往熔光镇》 翻译好的信件
    .target Lord Ello Ebonlocke
step
    .group
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .accept 253 >>接受任务《物归己用》 [DEPRECATED] 藏尸者的妻子
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Throw away the |T134939:0|t[翻译好的藏尸者信件] you no longer need it
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务《 前往熔光镇》 斯塔文的传说
    .accept 98 >>接受任务《物归己用》 斯塔文的传说
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 181 >>交任务《 前往熔光镇》 眺望群星
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话，NPC在里面
    .turnin 101 >>交任务《 前往熔光镇》 惩罚图腾
    .target Madame Eva
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1244 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1245 >>接受任务《物归己用》 失踪的使节
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>拾取地上的 |cRXP_LOOT_蒂罗亚之泪|r
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >>击杀 |cRXP_ENEMY_斯塔尔凡·迷雾披风|r。拾取他的 |cRXP_LOOT_家族戒指|r
	>>|cRXP_ENEMY_斯塔文·密斯特曼托|r |cRXP_WARN_攻击力很高。如有需要，将他引回城镇，并向 |cRXP_FRIENDLY_凝视者|r 求助|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊瓦夫人|r 对话，NPC在里面
    .turnin 98 >>交任务《 前往熔光镇》 斯塔文的传说
    .target Madame Eva
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r
    .accept 221 >>接受任务《物归己用》 林子里的狼人
    .target Calor
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
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r
    .turnin 221 >>交任务《 前往熔光镇》 林子里的狼人
    .accept 222 >>接受任务《物归己用》 林子里的狼人
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >>击杀 |cRXP_ENEMY_夜行邪齿狼人|r 和 |cRXP_ENEMY_夜行堕落狼人|r
	>>|cRXP_WARN_小心，这个区域内的所有怪物会在几分钟后同时刷新|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >>向南前往荆棘谷
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼兹尔|r
    .fp Rebel >>获取反抗军营地的飞行路径
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_注意特殊事件 |cRXP_FRIENDLY_列兵索尔森|r。他会每 30 分钟沿着从叛军营地延伸的道路巡逻|r
    >>|cRXP_FRIENDLY_列兵索尔森|r |cRXP_WARN_将会被 2 个 |cRXP_ENEMY_库尔森的密探|r 攻击。如果你没有看到这个事件，忽略这一步|r
    >>击杀 both of |cRXP_ENEMY_库尔森的密探|r和 then accept |cRXP_FRIENDLY_Private Thorsen's|rquest which becomes available after saving him
    .accept 215 >>接受任务《物归己用》 丛林中的秘密
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴尼尔·石罐|r 和 |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
    .accept 583 >>接受任务《物归己用》 欢迎来到丛林
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >>交任务《 前往熔光镇》 欢迎来到丛林
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾耶克·罗欧克|r 和 |cRXP_FRIENDLY_埃尔加丁爵士|r
    .accept 185 >>接受任务《物归己用》 制服猛虎
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >>接受任务《物归己用》 制服猎豹
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>击杀 |cRXP_ENEMY_猎豹幼崽|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
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
    .mob Young Stranglethorn Tiger
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
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾耶克·罗欧克|r 和 |cRXP_FRIENDLY_埃尔加丁爵士|r
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 185 >>交任务《 前往熔光镇》 制服猛虎
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>交任务《 前往熔光镇》 制服猎豹
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多伦上尉|r
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 215 >>交任务《 前往熔光镇》 丛林中的秘密
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >>跑回暮色森林
step
    .group 2
    .goto Duskwood,28.864,30.765
    >>点击地上的 |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_伊莉莎|r
    >>击杀 |cRXP_ENEMY_伊莉莎|r。拾取她的 |cRXP_LOOT_防腐师之心|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[寒冰箭] |cRXP_WARN_and|r |T135848:0|t[冰霜新星] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .turnin 231 >>交任务《 前往熔光镇》 女儿的爱
step << Druid
    #completewith next
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>训练你的职业技能
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >>将炉石使用回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >>使用 |T136010:0|t[星界传送] 返回夜色镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
    >>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >>跑回夜色镇
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 253 >>交任务《 前往熔光镇》 [DEPRECATED] 藏尸者的妻子
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r
    .turnin 222 >>交任务《 前往熔光镇》 林子里的狼人
    .accept 223 >>接受任务《物归己用》 林子里的狼人
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔纳森·卡尔文|r
    .turnin 223 >>交任务《 前往熔光镇》 林子里的狼人
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>>飞往暴风城
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >>|cRXP_WARN_施放|r |T135763:0|t[传送：暴风城]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚|r 对话
    .trainer >>训练你的职业技能
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师马林|r
    .accept 690 >>接受任务《物归己用》 马林的要求
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
    .accept 1301 >>接受任务《物归己用》 [DEPRECATED] 詹姆斯·海厄尔
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849 >>从你的银行中取出以下物品：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    .target Newton Burnside    
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知安布洛尔|r
	.trainer >>训练你的职业技能
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1245 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1246 >>接受任务《物归己用》 失踪的使节
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴|r 或 |cRXP_FRIENDLY_伊尔莎|r 对话
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>训练你的职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥斯本|r 对话
    .trainer >>训练你的职业技能
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达舍尔·石拳|r
    >>|cRXP_ENEMY_达舍尔·石拳|r |cRXP_WARN_在接取后续任务后会变为敌对。击败他|r
    .turnin 1246 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1447,1 >>接受任务《物归己用》 失踪的使节
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>击败 |cRXP_ENEMY_达舍尔·石拳|r
    >>|cRXP_ENEMY_达舍尔·石拳|r |cRXP_WARN_还会与 2 个 |cRXP_ENEMY_旧城区暴徒|r 一起攻击。忽略他们，集中攻击 |cRXP_ENEMY_达舍尔·石拳|r|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达舍尔·石拳|r
    .turnin 1447 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1247 >>接受任务《物归己用》 失踪的使节
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1247 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1248 >>接受任务《物归己用》 失踪的使节
    .target Elling Trias
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >>从你的银行中取出以下物品：
    >>|T134187:0|t[麝鼠根] -- 2784
    >>|T132765:0|t[一箱防撞头盔] -- 5849
    >>|T132824:0|t[装满的波涛之袋] << Shaman
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师马林|r
    .accept 690 >>接受任务《物归己用》 马林的要求
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
    .accept 1301 >>接受任务《物归己用》 [DEPRECATED] 詹姆斯·海厄尔
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>进入屠宰场, 下楼
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑爪加尔德斯|r
    .turnin 335 >>交任务《 前往熔光镇》 名酿
    .accept 336 >>接受任务《物归己用》 名酿
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业技能
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1798 >>接受任务《物归己用》 寻找斯坦哈德
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德米赛特·克劳斯|r
    >>|cRXP_WARN_如果你之前在铁炉堡接过相同的任务，请跳过这一步|r
    .accept 4738 >>接受任务《物归己用》 寻找梅纳拉·沃伦德
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>训练你的职业技能
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔舒修士|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >>训练你的职业技能
    .target Brother Joshua    
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲍雷斯·维沙克公爵|r
    .turnin 336 >>交任务《 前往熔光镇》 名酿
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r] you may turn it in|r
    .accept 337 >>接受任务《物归己用》 一本破旧的历史书
    .turnin 337 >>交任务《 前往熔光镇》 一本破旧的历史书
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米尔顿·西弗|r
    .accept 538 >>接受任务《物归己用》 南海镇
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
    .accept 543 >>接受任务《物归己用》 匹瑞诺德王冠
    .target Count Remington Ridgewell
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，以便稍后在南海镇更快交任务
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>10 |T134026:0|t[海龟肉]
    .collect 3712,10,555,1 
    .target Auctioneer Jaxon
step << Druid
    #completewith DruidMount
	.cast 18960 >>|cRXP_WARN_施放|r |T135758:0|t[传送：月光林地]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>飞往泰达希尔
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱兰奈|r 和 |cRXP_FRIENDLY_贾萨姆|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FF霜刃豹|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FF夜刃豹|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_宾吉·羽哨|r 和 |cRXP_FRIENDLY_米利·羽哨|r
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FF机械陆行鸟|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维隆·冻石|r 和 |cRXP_FRIENDLY_奥萨姆·铁角|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FF山羊|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r
	.fly Wetlands >>飞往湿地
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r
    .home >>将你的炉石设置为米奈希尔港
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r
	>>|cRXP_WARN_接取此任务会使 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r 在旅店入口处|r |T132320:0|t[潜行] |cRXP_WARN_并跑到外面|r
    .turnin 1248 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1249,1 >>接受任务《物归己用》 失踪的使节
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_迅速跑到外面!|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r。|cRXP_ENEMY_斯利姆的朋友|r 会在 |cRXP_ENEMY_"干柴"塔伯克·贾恩|r 投降后逃跑|r
    >>|cRXP_WARN_如有需要，对 |cRXP_ENEMY_塔伯克的伙伴|r 使用任何控制技能 (CC) |r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r
    >>|cRXP_WARN_等待剧情演出完成|r
    .turnin 1249 >>交任务《 前往熔光镇》 失踪的使节
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_“干柴”塔伯克·贾恩|r
    .accept 1250 >>接受任务《物归己用》 失踪的使节
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1250 >>交任务《 前往熔光镇》 失踪的使节
    .accept 1264 >>接受任务《物归己用》 失踪的使节
    .target Mikhail
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >>飞往泰达希尔
	.target Caylais Moonfeather
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱兰奈|r 和 |cRXP_FRIENDLY_贾萨姆|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FF霜刃豹|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FF夜刃豹|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞往黑海岸
    .target Vesprystus
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    .target Farseer Nobundo
    .turnin 9551 >>交任务《 前往熔光镇》 空气的召唤
    .accept 9552 >>接受任务《物归己用》 空气的召唤
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>离开埃索达
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_象群管理者妥拉留斯|r 和 |cRXP_FRIENDLY_埃亚伦|r
    .train 33388 >>学习 |T136103:0|t[初级骑术]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Buy a|r |T132255:0|t[|cFF0070FF雷象|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Blood Watch >>飞往血环堡
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9504 >>交任务《 前往熔光镇》 水之召唤
    .accept 9508 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >>点击 |cRXP_PICK_污秽之桶|r 以召唤 |cRXP_ENEMY_污染者塔希恩|r
    .timer 3,水之召唤剧情
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>击杀 |cRXP_ENEMY_污染者塔希恩|r。拾取他的 |cRXP_LOOT_头部|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿奎欧斯|r 对话
    .turnin 9508 >>交任务《 前往熔光镇》 水之召唤
    .accept 9509 >>接受任务《物归己用》 水之召唤
    .target Aqueous
step << Shaman
	.deathskip >>Drown intentionally.Die 和 respawn at the |cRXP_FRIENDLY_灵魂医者|r
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >>前往血环堡
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰度|r 对话
    .fly The Exodar>>飞往埃索达
    .target Laando
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兰达|r
    .turnin 9552 >>交任务《 前往熔光镇》 空气的召唤
    .accept 9553 >>接受任务《物归己用》 空气的召唤
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苏苏鲁斯|r
    .turnin 9553 >>交任务《 前往熔光镇》 空气的召唤
    .accept 9554 >>接受任务《物归己用》 空气的召唤
    .target Susurrus
step << Shaman
    .gossip 17435,0 >>再次与 |cRXP_FRIENDLY_苏苏鲁斯|r 对话以返回埃索达
    .timer 89,风之召唤剧情
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >>再次进入埃索达
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_预言者努波顿|r 对话
    >>|cRXP_FRIENDLY_预言者努波顿|r |cRXP_WARN_偶尔巡逻|r
    >>|cRXP_WARN_完成此任务后，你将获得|r |T136022:0|t[疾风] |cRXP_WARN_增益，持续 1 小时，使你的移动速度提高 40%，攻击速度提高 30%|r
    >>|cRXP_WARN_确保在拥有这个增益时不要挂机!|r
    .target Farseer Nobundo
    .turnin 9509 >>交任务《 前往熔光镇》 水之召唤
    .turnin 9554 >>交任务《 前往熔光镇》 空气的召唤
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_文森特·海厄尔|r
    .turnin 1301 >>交任务《 前往熔光镇》 [DEPRECATED] 詹姆斯·海厄尔
    .accept 1302 >>接受任务《物归己用》 [DEPRECATED] 詹姆斯·海厄尔
    .target Vincent Hyal
step
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >>乘船前往塞拉摩
    >>|cRXP_WARN_在等待期间提升你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])