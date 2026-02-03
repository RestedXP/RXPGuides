if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP 燃烧的远征 Attunement Guide
#name 1. Karazhan
#title Karazhan

step
    #optional
    +|cRXP_WARN_You must be at least level 68 to begin the Karazhan attunement questline|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >>前往暴风城大教堂内，与 Deadwind Pass in Eastern Kingdoms
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >>前往暴风城大教堂内，与 Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师奥图鲁斯|r 对话
    .accept 9824 >>接受任务《物归己用》 奥术扰动
    .accept 9825 >>接受任务《物归己用》 幽灵的活动
    .target 大法师奥图鲁斯
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >> Go down the stairs into the Master's Cellar
step
    #optional
    #completewith Reading2
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Ghosts|r surrounding Karazhan. 拾取地上的 them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob 不死的看守者
    .mob 被诅咒的灵魂
    .mob 不安宁的阴影
    .mob 哀嚎的鬼怪
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >> |cRXP_WARN_Use the|r |T134075:0|t[Violet Scrying Crystal] |cRXP_WARN_while standing in the|r |cRXP_PICK_Underground Pond|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >> |cRXP_WARN_Head back the way you came from to exit the Master's Cellar. You will shortly enter another enterance into the Master's Callar again|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >> Go down the other set of stairs into the Master's Cellar
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >> |cRXP_WARN_Use the|r |T134075:0|t[Violet Scrying Crystal] |cRXP_WARN_next to the|r |cRXP_PICK_Underground Well|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Ghosts|r surrounding Karazhan. 拾取地上的 them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob 不死的看守者
    .mob 被诅咒的灵魂
    .mob 不安宁的阴影
    .mob 哀嚎的鬼怪
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师奥图鲁斯|r 对话
    .turnin 9824 >>交任务《 前往熔光镇》 奥术扰动
    .turnin 9825 >>交任务《 前往熔光镇》 幽灵的活动
    .accept 9826 >>接受任务《物归己用》 联络达拉然
    .target 大法师奥图鲁斯
step
    #completewith next
    .zone Alterac Mountains >>前往暴风城大教堂内，与 Alterac Mountains
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师塞德瑞克|r 对话
    .turnin 9826 >>交任务《 前往熔光镇》 联络达拉然
    .accept 9829 >>接受任务《物归己用》 卡德加
    .target 大法师塞德瑞克
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德加的仆从|r 对话 
    .turnin 9829 >>交任务《 前往熔光镇》 卡德加
    .accept 9831 >>接受任务《物归己用》 卡拉赞的钥匙
    .target 卡德加
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >> |cRXP_WARN_Find a group for the Shadow Labyrinth dungeon in Terokkar Forest. Once you have found a group, zone into the Shadow Labyrinth|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_After you kill |cRXP_ENEMY_Murmur|r, open the |cRXP_PICK_Arcane Container|r on the ground to spawn the|r |cRXP_ENEMY_第一块碎片的守护者|r
    >>击杀 the |cRXP_ENEMY_First Fragment Guardian|r. Loot it for the |cRXP_LOOT_First Key Fragment|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob 第一块碎片的守护者
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德加的仆从|r 对话 
    .turnin 9831 >>交任务《 前往熔光镇》 卡拉赞的钥匙
    .accept 9832 >>接受任务《物归己用》 第二块和第三块
    .target 卡德加
step
    >>You must now run the Steamvault and the Arcatraz. It does not matter which you do first
    >>Once 对话，NPC在里面 either dungeon, open the |cRXP_PICK_Arcane Container|r to spawn the |cRXP_ENEMY_Fragment Guardian|r
    >>消灭那些试图阻止仪式的 |cRXP_ENEMY_Fragment Guardian|r。拾取他们的 |cRXP_LOOT_Second Key Fragment|r 和 |cRXP_LOOT_Third Key Fragment|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob 第二块碎片的守护者
    .mob 第三块碎片的守护者
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德加的仆从|r 对话 
    .turnin 9832 >>交任务《 前往熔光镇》 第二块和第三块
    .accept 9836 >>接受任务《物归己用》 麦迪文的触摸
    .target 卡德加
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_You must now complete the Black Morass, however in order to enter the Black Morass, you must complete the quest Escape from Durnholde by completing the Old Hillsbrad dungeon in Caverns of Time|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >> |cRXP_WARN_Find a group for the Black Morass dungeon. Once you have found a group, zone into the Black Morass|r
step
    >>Complete the Black Morass
    >>|cRXP_WARN_Ensure you are standing beside |cRXP_FRIENDLY_麦迪文|r once you have killed|r |cRXP_ENEMY_埃欧努斯|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦迪文|r 对话
    .turnin 9836 >>交任务《 前往熔光镇》 麦迪文的触摸
    .accept 9837 >>接受任务《物归己用》 返回卡德加身边
    .target 麦迪文
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德加的仆从|r 对话 
    .turnin 9837 >>交任务《 前往熔光镇》 返回卡德加身边
    .accept 9838 >>接受任务《物归己用》 紫罗兰之眼
    .target 卡德加
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_Congratulations! You are now attuned for Karazhan|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP 燃烧的远征 Attunement Guide
#name 2. Serpentshrine Cavern
#title Serpentshrine Cavern

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >> |cRXP_WARN_Find a group for HEROIC: Slave Pens in Zangarmarsh. Once you have found a group, zone into the Slave Pens|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_异教徒斯卡希斯|r 对话 
    .accept 10901 >>接受任务《物归己用》 卡达什圣杖
    .target 异教徒斯卡希斯
step
    >>|cRXP_WARN_Find raids for both Gruul the Dragonslayer and Karazhan|r
    >>击杀 |cRXP_ENEMY_格鲁尔|r. Loot him for the |cRXP_LOOT_Earthen Signet|r
    >>击杀 |cRXP_ENEMY_Nightbane|r。拾取他的 |cRXP_LOOT_Blazing Signet|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir enterance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Return to |cRXP_FRIENDLY_异教徒斯卡希斯|r对话，NPC在里面 HEROIC:Slave Pens|r
    .turnin 10901 >>交任务《 前往熔光镇》 卡达什圣杖
    .target 异教徒斯卡希斯
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_Congratulations! You are now attuned for Serpentshrine Cavern|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP 燃烧的远征 Attunement Guide
#name 3. Tempest Keep
#title Tempest Keep

step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者索弗鲁斯|r 对话
    .accept 10680 >>接受任务《物归己用》 古尔丹之手
	.target 大地治愈者索弗鲁斯
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者斯普林·裂蹄|r 对话
    .accept 10681 >>接受任务《物归己用》 古尔丹之手
	.target 大地治愈者斯普林·裂蹄
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者托洛克|r 对话
    .turnin 10680 >>交任务《 前往熔光镇》 古尔丹之手 << Alliance
    .turnin 10681 >>交任务《 前往熔光镇》 古尔丹之手 << Horde
    .accept 10458 >>接受任务《物归己用》 愤怒的火灵和地灵
	.target 大地治愈者托洛克
step
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[灵魂图腾] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Fire Spirits|r and |cRXP_ENEMY_Enraged Earth Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[灵魂图腾]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob 愤怒的地灵
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob 愤怒的火灵
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者托洛克|r 对话
    .turnin 10458 >>交任务《 前往熔光镇》 愤怒的火灵和地灵
    .accept 10480 >>接受任务《物归己用》 愤怒的水灵
	.target 大地治愈者托洛克
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[灵魂图腾] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Water Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[灵魂图腾]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob 愤怒的水灵
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者托洛克|r 对话
    .turnin 10480 >>交任务《 前往熔光镇》 愤怒的水灵
    .accept 10481 >>接受任务《物归己用》 愤怒的气灵
	.target 大地治愈者托洛克
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Use the|r |T135462:0|t[灵魂图腾] |cRXP_WARN_and kill|r |cRXP_ENEMY_Enraged Air Spirits|r
    >>|cRXP_WARN_Ensure you kill them while they are beside the|r |T135462:0|t[灵魂图腾]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob 愤怒的气灵
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者托洛克|r 对话
    .turnin 10481 >>交任务《 前往熔光镇》 愤怒的气灵
    .accept 10513 >>接受任务《物归己用》 欧鲁诺克·裂心
	.target 大地治愈者托洛克
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧鲁诺克·裂心|r 对话
    .turnin 10513 >>交任务《 前往熔光镇》 欧鲁诺克·裂心
    .accept 10514 >>接受任务《物归己用》 历经沧桑……
	.target 欧鲁诺克·裂心
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_站在地面的小植物上使用|r |T132161:0|t[欧鲁诺克的野猪哨] |cRXP_WARN_让附近的驯养的地狱野猪挖出|r |cRXP_LOOT_影月块茎|r
    >>|cRXP_WARN_切记千万不要击杀任何驯养的地狱野猪|r
    >>拾取地上的 the |cRXP_LOOT_影月块茎|rthat appear on the ground after
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧鲁诺克·裂心|r 对话
    .turnin 10514 >>交任务《 前往熔光镇》 历经沧桑……
    .accept 10515 >>接受任务《物归己用》 严厉的教训
	.target 欧鲁诺克·裂心
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>点击地上的 |cRXP_ENEMY_Ravenous Flayer Eggs|r on the ground to destroy them
    >>|cRXP_WARN_小心精英怪|r |cRXP_ENEMY_贪婪的剥石者女王|r |cRXP_WARN_在附近巡逻|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧鲁诺克·裂心|r 对话
    .turnin 10515 >>交任务《 前往熔光镇》 严厉的教训
    .accept 10519 >>接受任务《物归己用》 诅咒密码 - 真相和历史
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target 欧鲁诺克·裂心
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧鲁诺克·裂心|r 对话
    .turnin 10519 >>交任务《 前往熔光镇》 诅咒密码 - 真相和历史
    .accept 10521 >>接受任务《物归己用》 格洛姆托，欧鲁诺克之子
    .accept 10527 >>接受任务《物归己用》 阿托尔，欧鲁诺克之子
    .accept 10546 >>接受任务《物归己用》 伯拉克，欧鲁诺克之子
	.target 欧鲁诺克·裂心
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r 对话
    .turnin 10521 >>交任务《 前往熔光镇》 格洛姆托，欧鲁诺克之子
    .accept 10522 >>接受任务《物归己用》 诅咒密码 - 格洛姆托的命令
	.target 格洛姆托，欧鲁诺克之子
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>击杀 |cRXP_ENEMY_Coilskar Nagas|r。拾取他们的 |cRXP_LOOT_Coilskar Chest Keys|r
    >>打开 |cRXP_PICK_Coilskar Chests|r ，直到 you loot the |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob 库斯卡卫士
	.mob 库斯卡监视者
	.mob 库斯卡侍从
	.mob 库斯卡海妖
	.mob 库斯卡女巫
	.mob 库斯卡护水者
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格洛姆托，欧鲁诺克之子|r 对话
    .turnin 10522 >>交任务《 前往熔光镇》 诅咒密码 - 格洛姆托的命令
    .accept 10523 >>接受任务《物归己用》 诅咒密码 - 第一块碎片
	.target 格洛姆托，欧鲁诺克之子
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托尔，欧鲁诺克之子|r 对话
    .turnin 10527 >>交任务《 前往熔光镇》 阿托尔，欧鲁诺克之子
    .accept 10528 >>接受任务《物归己用》 恶魔的水晶牢笼
	.target 阿托尔，欧鲁诺克之子
step
    .goto Shadowmoon Valley,28.005,47.568
    >>击杀 |cRXP_ENEMY_痛苦女王加布莉萨|r 拾取它的 |cRXP_LOOT_晶体钥匙|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob 痛苦女王加布莉萨
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托尔，欧鲁诺克之子|r 对话
    .turnin 10528 >>交任务《 前往熔光镇》 恶魔的水晶牢笼
	.target 阿托尔，欧鲁诺克之子
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托尔的灵魂|r 对话
    .accept 10537 >>接受任务《物归己用》 洛恩戈鲁，裂心之弓
	.target 阿托尔的灵魂
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0  
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>击杀 |cRXP_ENEMY_伊利达雷|r 拾取它们的 |cRXP_LOOT_洛恩戈鲁，裂心之弓|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob 伊利达雷恐怖使者
	.mob 伊利达雷鞭笞者
	.mob 伊利达雷暗影行者
	.mob 伊利达雷突击队员
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托尔的灵魂|r 对话
    .turnin 10537 >>交任务《 前往熔光镇》 洛恩戈鲁，裂心之弓
    .accept 10540 >>接受任务《物归己用》 诅咒密码 - 阿托尔的命令
	.target 阿托尔的灵魂
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_带着 |cRXP_FRIENDLY_阿托尔的灵魂|r 前往东南方，在该区域走动，直到他召唤出|r |cRXP_ENEMY_维内拉图斯|r
    >>击杀 |cRXP_ENEMY_维内拉图斯|r。拾取他的 |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob 维内拉图斯
	.target 阿托尔的灵魂
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿托尔的灵魂|r 对话
    .turnin 10540 >>交任务《 前往熔光镇》 诅咒密码 - 阿托尔的命令
    .accept 10541 >>接受任务《物归己用》 诅咒密码 - 第二块碎片
	.target 阿托尔的灵魂
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10546 >>交任务《 前往熔光镇》 伯拉克，欧鲁诺克之子
    .accept 10547 >>接受任务《物归己用》 血蓟交易……
	.target 伯拉克，欧鲁诺克之子
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>拾取散发绿光的 |cRXP_PICK_Rotten Arakkoa Eggs|r on the ground
    >>|cRXP_WARN_Be careful because they can damage you upon looting|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暴食者托比亚斯|r 对话
    .turnin 10547 >>交任务《 前往熔光镇》 血蓟交易……
    .accept 10550 >>接受任务《物归己用》 一捆血蓟
	.target 暴食者托比亚斯
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10550 >>交任务《 前往熔光镇》 一捆血蓟
    .accept 10570 >>接受任务《物归己用》 血蓟瘾君子
	.target 伯拉克，欧鲁诺克之子
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Use the|r |T133651:0|t[一捆血蓟] |cRXP_WARN_at the end of the bridge|r
    .timer 78,血蓟瘾君子剧情表演
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>当 |cRXP_ENEMY_伊喀琉斯大使|r 变为可攻击时将其击杀，拾取 |cRXP_LOOT_怒风的信件|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob 伊喀琉斯大使
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10570 >>交任务《 前往熔光镇》 血蓟瘾君子
    .accept 10576 >>接受任务《物归己用》 影月谷的乔装者
	.target 伯拉克，欧鲁诺克之子
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>击杀 |cRXP_ENEMY_Eclipsions|r。拾取他们的 |cRXP_LOOT_护甲|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob 日蚀法师
	.mob 日蚀血骑士
	.mob 日蚀血护卫
	.mob 日蚀百夫长
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10576 >>交任务《 前往熔光镇》 影月谷的乔装者
    .accept 10577 >>接受任务《物归己用》 伊利丹的信使……
	.target 伯拉克，欧鲁诺克之子
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Use the|r |T133564:0|t[血精灵伪装包]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>与 |cRXP_FRIENDLY_总指挥官卢斯克|r 对话
    >>|cRXP_WARN_Ensure you have the|r |T133564:0|t[血精灵伪装包] |cRXP_WARN_on|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target 总指挥官卢斯克
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10577 >>交任务《 前往熔光镇》 伊利丹的信使……
    .accept 10578 >>接受任务《物归己用》 诅咒密码 - 伯拉克的命令
	.target 伯拉克，欧鲁诺克之子
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>击杀 |cRXP_ENEMY_亵渎者鲁尔|r。拾取他的 |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    >>|cRXP_ENEMY_亵渎者鲁尔|r |cRXP_WARN_hits very hard. It is recommended you complete this with a full group including a tank and healer|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob 亵渎者鲁尔
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伯拉克，欧鲁诺克之子|r 对话
    .turnin 10578 >>交任务《 前往熔光镇》 诅咒密码 - 伯拉克的命令
    .accept 10579 >>接受任务《物归己用》 诅咒密码 - 第三块碎片
	.target 伯拉克，欧鲁诺克之子
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧鲁诺克·裂心|r 对话
    .turnin 10523 >>交任务《 前往熔光镇》 诅咒密码 - 第一块碎片
    .turnin 10541 >>交任务《 前往熔光镇》 诅咒密码 - 第二块碎片
    .turnin 10579 >>交任务《 前往熔光镇》 诅咒密码 - 第三块碎片
    .accept 10588 >>接受任务《物归己用》 诅咒密码
	.target 欧鲁诺克·裂心
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Channel the|r |T134423:0|t[诅咒密码]|cRXP_WARN_for 20 seconds to summon|r|cRXP_ENEMY_Cyrukh the Firelord|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>击杀 |cRXP_ENEMY_火焰之王森卢肯|r
    >>|cRXP_ENEMY_火焰之王森卢肯|r |cRXP_WARN_has 369k HP. It is recommended you complete this with a full group including a tank and healer. The NPCs will also assist you|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob 火焰之王森卢肯
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大地治愈者托洛克|r 对话
    .turnin 10588 >>交任务《 前往熔光镇》 诅咒密码
	.target 大地治愈者托洛克
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡德加|r 对话 
    .accept 10883 >>接受任务《物归己用》 风暴钥匙
    .target 卡德加
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达尔|r 对话
    .turnin 10883 >>交任务《 前往熔光镇》 风暴钥匙
    .accept 10884 >>接受任务《物归己用》 纳鲁的试炼：仁慈
    .accept 10885 >>接受任务《物归己用》 纳鲁的试炼：力量
    .accept 10886 >>接受任务《物归己用》 纳鲁的试炼：坚韧
    .target 阿达尔
step
    >>|cRXP_WARN_You now have the 3 Trial quests. These quests all require to be completed while running the dungeons on HEROIC difficulty|r
    >>|cRXP_WARN_The dungeons you must complete are: Shattered Halls, Steamvaults, Arcatraz and the Shadow Labyrinth|r
    >>Complete Shattered Halls within 55 minutes after killing |cRXP_ENEMY_Grand Warlock Nethekurse|r. You must kill the |cRXP_ENEMY_Shattered Hand Executioner|r at the end of the dungeon within the time limit. Loot him for the |cRXP_LOOT_Unused Axe of the Executioner|r
    >>击杀 |cRXP_ENEMY_Warlord Kalithresh|r in the Steamvaults. 拾取地上的 him for |cRXP_LOOT_Kalithresh's Trident|r
    >>击杀 |cRXP_ENEMY_Murmur|r in the Shadow Labyrinth. 拾取地上的 him for |cRXP_LOOT_Murmur's Essence|r
    >>Complete the Arcatraz. Ensure |cRXP_FRIENDLY_米尔豪斯·法力风暴|r stays alive after defeating the final boss, |cRXP_ENEMY_Harbinger Skyriss|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达尔|r 对话
    .turnin 10884 >>交任务《 前往熔光镇》 纳鲁的试炼：仁慈
    .turnin 10885 >>交任务《 前往熔光镇》 纳鲁的试炼：力量
    .turnin 10886 >>交任务《 前往熔光镇》 纳鲁的试炼：坚韧
    .accept 10888 >>接受任务《物归己用》 纳鲁的试炼：玛瑟里顿
    .target 阿达尔
step
    >>击杀 |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达尔|r 对话
    .turnin 10888 >>交任务《 前往熔光镇》 纳鲁的试炼：玛瑟里顿
    .target 阿达尔
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_Congratulations! You are now attuned for The Eye: Tempest Keep|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP 燃烧的远征 Attunement Guide
#name 4. Mount Hyjal
#title Mount Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >>前往暴风城大教堂内，与 the Caverns of Time
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索莉多米|r 对话
    >>|cRXP_FRIENDLY_索莉多米|r |cRXP_WARN_patrols slightly|r
    .accept 10445 >>接受任务《物归己用》 永恒水瓶
    .target 索莉多米
step
    >>击杀 |cRXP_ENEMY_瓦丝琪|r。拾取她的 |cRXP_LOOT_Vashj's Vial Remnant|r
    >>击杀 |cRXP_ENEMY_凯尔萨斯·逐日者|r. Loot him for |cRXP_LOOT_Kael's Vial Remnant|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >> Return to the Caverns of Time
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索莉多米|r 对话
    >>|cRXP_FRIENDLY_索莉多米|r |cRXP_WARN_patrols slightly|r
    .turnin 10445 >>交任务《 前往熔光镇》 永恒水瓶
    .target 索莉多米
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_Congratulations! You are now attuned for Mount Hyjal|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP 燃烧的远征 Attunement Guide
#name 5. Black Temple
#title Black Temple

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >>前往影月谷
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者希拉|r 对话
    .accept 10568 >>接受任务《物归己用》 巴尔里石板
	.target 学者希拉
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >>前往影月谷
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师塞里斯|r 对话
    .accept 10683 >>接受任务《物归己用》 巴尔里石板
    .target 奥术师塞里斯
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>拾取散发绿光的 |cRXP_PICK_Baa'ri Tablet Fragments|r on the ground
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>拾取散发绿光的 |cRXP_PICK_Baa'ri Tablet Fragments|r on the ground
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者希拉|r 对话
    .turnin 10568 >>交任务《 前往熔光镇》 巴尔里石板
    .accept 10571 >>接受任务《物归己用》 长者奥洛努
	.target 学者希拉
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师塞里斯|r 对话
    .turnin 10683 >>交任务《 前往熔光镇》 巴尔里石板
    .accept 10684 >>接受任务《物归己用》 长者奥洛努
    .target 奥术师塞里斯
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>击杀阳台上的 |cRXP_ENEMY_奥洛努|r
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob 长者奥洛努
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>击杀阳台上的 |cRXP_ENEMY_奥洛努|r
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob 长者奥洛努
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者希拉|r 对话
    .turnin 10571 >>交任务《 前往熔光镇》 长者奥洛努
    .accept 10574 >>接受任务《物归己用》 灰舌腐蚀者
	.target 学者希拉
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师塞里斯|r 对话
    .turnin 10684 >>交任务《 前往熔光镇》 长者奥洛努
    .accept 10685 >>接受任务《物归己用》 灰舌腐蚀者
    .target 奥术师塞里斯
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>摧毁保护着 |cRXP_ENEMY_拉坎恩|r 的图腾。击杀并拾取他的 |cRXP_LOOT_勋章碎片|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob 拉坎恩
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>摧毁保护着 |cRXP_ENEMY_乌拉鲁|r 的图腾。击杀并拾取 他的 |cRXP_LOOT_勋章碎片|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob 乌拉鲁
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>摧毁保护着 |cRXP_ENEMY_埃肯尼|r 的图腾。击杀并拾取他的 |cRXP_LOOT_勋章碎片|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob 埃肯尼
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>摧毁保护着 |cRXP_ENEMY_哈鲁姆|r.击杀并拾取 him for |cRXP_LOOT_哈鲁姆的勋章碎片|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob 哈鲁姆
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>摧毁保护着 |cRXP_ENEMY_哈鲁姆|r.击杀并拾取 him for |cRXP_LOOT_哈鲁姆的勋章碎片|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob 哈鲁姆
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>摧毁保护着 |cRXP_ENEMY_埃肯尼|r 的图腾。击杀并拾取他的 |cRXP_LOOT_勋章碎片|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob 埃肯尼
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>摧毁保护着 |cRXP_ENEMY_乌拉鲁|r 的图腾。击杀并拾取 他的 |cRXP_LOOT_勋章碎片|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob 乌拉鲁
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>摧毁保护着 |cRXP_ENEMY_拉坎恩|r 的图腾。击杀并拾取他的 |cRXP_LOOT_勋章碎片|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob 拉坎恩
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者希拉|r 对话
    .turnin 10574 >>交任务《 前往熔光镇》 灰舌腐蚀者
    .accept 10575 >>接受任务《物归己用》 守望者的牢笼
	.target 学者希拉
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥术师塞里斯|r 对话
    .turnin 10685 >>交任务《 前往熔光镇》 灰舌腐蚀者
    .accept 10686 >>接受任务《物归己用》 守望者的牢笼
    .target 奥术师塞里斯
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨诺鲁|r 对话
    .turnin 10575 >>交任务《 前往熔光镇》 守望者的牢笼
    .accept 10622 >>接受任务《物归己用》 忠诚的证明
	.target 萨诺鲁
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨诺鲁|r 对话
    .turnin 10686 >>交任务《 前往熔光镇》 守望者的牢笼
    .accept 10622 >>接受任务《物归己用》 忠诚的证明
	.target 萨诺鲁
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>击杀 |cRXP_ENEMY_杉德拉斯|r
    >>|cRXP_ENEMY_杉德拉斯|r |cRXP_WARN_在楼顶巡逻|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob 杉德拉斯
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨诺鲁|r 对话
    .turnin 10622 >>交任务《 前往熔光镇》 忠诚的证明
    .accept 10628 >>接受任务《物归己用》 阿卡玛
	.target 萨诺鲁
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    >>|cRXP_FRIENDLY_阿卡玛|r |cRXP_WARN_在守望者牢笼更深处|r
    .turnin 10628 >>交任务《 前往熔光镇》 阿卡玛
    .accept 10705 >>接受任务《物归己用》 先知乌达鲁
	.target 阿卡玛
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >>|cRXP_WARN_Find a group for the Arcatraz. You must talk with |cRXP_FRIENDLY_乌达鲁|r inside the dungeon|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌达鲁|r 对话
    .turnin 10705 >>交任务《 前往熔光镇》 先知乌达鲁
    .accept 10706 >>接受任务《物归己用》 神秘的征兆
	.target 乌达鲁
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    .turnin 10706 >>交任务《 前往熔光镇》 神秘的征兆
    .accept 10707 >>接受任务《物归己用》 阿塔玛平台
	.target 阿卡玛
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Kill the three |cRXP_ENEMY_Shadowmoon Soulstealers|r to make |cRXP_ENEMY_暗影领主达斯维尔|r land on the ground|r
    >>击杀 |cRXP_ENEMY_暗影领主达斯维尔|r。拾取他的 |cRXP_LOOT_愤怒之心|r
    >>|cRXP_WARN_It is recommended you complete this with a full group including a tank and healer|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob 暗影领主达斯维尔
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    .turnin 10707 >>交任务《 前往熔光镇》 阿塔玛平台
    .accept 10708 >>接受任务《物归己用》 阿卡玛的保证
	.target 阿卡玛
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达尔|r 对话
    .turnin 10708 >>交任务《 前往熔光镇》 阿卡玛的保证
	.target 阿达尔
step
    #completewith next
    .subzone 3607 >> |cRXP_WARN_Enter the Serpentshrine Cavern raid. You must defeat the boss |cRXP_ENEMY_Fathom-Lord Karathress|r, then talk to |cRXP_FRIENDLY_Seer Olum|r who is located behind him|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Seer Olum|r
    .accept 10944 >>接受任务《物归己用》 危险的秘密
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    .turnin 10944 >>交任务《 前往熔光镇》 危险的秘密
    .accept 10946 >>接受任务《物归己用》 灰舌的计谋
	.target 阿卡玛
step
    .use 31946 >>击杀 |cRXP_ENEMY_A'lar|r in Tempest Keep while wearing the |T133132:0|t[Ashtongue Cowl]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    .turnin 10946 >>交任务《 前往熔光镇》 灰舌的计谋
    .accept 10947 >>接受任务《物归己用》 往日的神器
	.target 阿卡玛
step
    >>击杀 |cRXP_ENEMY_Rage Winterchill|r in Mount Hyjal. 拾取地上的 him for the |cRXP_LOOT_Time-Phased Phylactery|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿卡玛|r 对话
    .turnin 10947 >>交任务《 前往熔光镇》 往日的神器
    .accept 10948 >>接受任务《物归己用》 灵魂之囚
	.target 阿卡玛
step
    #completewith next
    .zone Shattrath City >>前往暴风城大教堂内，与 Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿达尔|r 对话
    .turnin 10948 >>交任务《 前往熔光镇》 灵魂之囚
    .accept 10949 >>接受任务《物归己用》 进入黑暗神殿
	.target 阿达尔
step
    #completewith next
    .zone Shadowmoon Valley >>前往影月谷
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克希利|r
    >>|cRXP_WARN_If you are in a group, ensure other party members have turned in before accepting the next quest. Auto accept has been turned off for this step|r
    .turnin 10949 >>交任务《 前往熔光镇》 进入黑暗神殿
    .accept 10985,1 >>接受任务《物归己用》 帮助阿卡玛
    .target 克希利
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Talk to |cRXP_FRIENDLY_克希利|r to begin the RP. You may need to wait beside him for 1-2 minutes for |cRXP_FRIENDLY_阿卡玛|r to turn up. Once |cRXP_FRIENDLY_阿卡玛|r has arrived, follow him and continue through the RP|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target 克希利
    .target 阿卡玛
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克希利|r
    .turnin 10985 >>交任务《 前往熔光镇》 帮助阿卡玛
    .accept 10958 >>接受任务《物归己用》 寻找灰舌
    .target 克希利
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_Congratulations! You are now attuned for Black Temple|r
]])