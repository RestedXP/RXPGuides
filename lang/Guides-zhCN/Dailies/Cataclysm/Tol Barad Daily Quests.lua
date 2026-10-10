if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group 托尔巴拉德
#name 托尔巴拉德 日常任务

step << Horde
    #optional
    -- Peninsula quests
    .convertquest 27948,28684
    .convertquest 28275,28696
    .convertquest 27972,28680
    .convertquest 27987,28698
    .convertquest 27970,28678
    .convertquest 28059,28682
    .convertquest 27967,28691
    .convertquest 27978,28697
    .convertquest 28063,28685
    .convertquest 27992,28692
    .convertquest 28130,28686
    .convertquest 27971,28679
    .convertquest 27966,28690
    .convertquest 28050,28681
    .convertquest 27991,28700
    .convertquest 28137,28687
    .convertquest 27949,28689
    .convertquest 27944,28683
    .convertquest 27975,28695
    .convertquest 28065,28721
    .convertquest 27973,28694
    -- South Island quests
    .convertquest 28122,28657
    .convertquest 28117,28660
    .convertquest 28186,28665
    .convertquest 28165,28663
    .convertquest 28232,28670
    .convertquest 28120,28662
    .convertquest 28188,28668
    .convertquest 28185,28664
    .convertquest 28162,28658
    .convertquest 28118,28661
    .convertquest 28223,28669

step
    #completewith next
    .zone 84 >>前往暴风城 << Alliance
	.zone 85 >>前往奥格瑞玛 << Horde
	.zoneskip 245
step
    .goto 84,73.220,18.374 << Alliance
    .goto 85,47.405,39.261 << Horde
    .zone 245 >>通过传送门前往托尔巴拉德
step << Alliance
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r、|cRXP_FRIENDLY_指挥官马库斯·约翰森|r、|cRXP_FRIENDLY_营地协调员巴拉克|r 和 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_在巴拉丁营地接取所有可用的日常任务|r
    .questcount <6,28046,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,72.933,60.937,5,0
    .goto 245,73.393,59.177,5,0
    .goto 245,73.726,57.574,5,0
    .goto 245,74.775,59.600,5,0
    .target Sergeant Gray
    .target Commander Marcus Johnson
    .target Camp Coordinator Brack
    .target Lieutenant Farnsworth
step << Horde
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r、|cRXP_FRIENDLY_指挥官拉尔玛什|r、|cRXP_FRIENDLY_普拉格上尉|r 和 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_在地狱咆哮之握接受所有可用的日常任务|r
    .questcount <6,28693,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,55.221,81.330,5,0
    .goto 245,53.526,80.582,5,0
    .goto 245,54.889,79.307,5,0
    .goto 245,55.779,78.475,5,0
    .target 3rd Officer Kronkar
    .target Commander Larmash
    .target Captain Prug
    .target Private Sarlosk
step << Alliance
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >>前往拉尔戈的瞭望台
step << Alliance
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>拾取地上的 |cRXP_LOOT_一堆炮弹|r
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Alliance
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>击杀 |cRXP_ENEMY_瞭望台鬼灵|r, |cRXP_ENEMY_瞭望台幽魂|r 和 |cRXP_ENEMY_阴森的工人|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Alliance
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>在拉尔戈的瞭望台击杀 |cRXP_ENEMY_指挥官拉尔戈|r
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Alliance
    #completewith Seabass
    .subzone 5538 >>前往洛斯贝格村
step << Alliance
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>击杀 |cRXP_ENEMY_可疑的匠人|r、|cRXP_ENEMY_忧虑的工人|r、|cRXP_ENEMY_洛斯贝格强盗|r 和 |cRXP_ENEMY_洛斯贝格渔夫|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Alliance
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>击杀 |cRXP_ENEMY_洛斯贝格渔夫|r。拾取 |cRXP_LOOT_洛斯贝格黑鲈鱼|r
    >>|cRXP_LOOT_洛斯贝格黑鲈鱼|r |cRXP_WARN_也可从 |r鱼群|cRXP_PICK_ 中拾取|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Alliance
    #completewith Tankslain
    .subzone 5534 >>前往失落希望海角
step << Alliance
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>拾取海岸线和海底的 |cRXP_LOOT_一桶南海朗姆酒|r
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Alliance
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>击杀 |cRXP_ENEMY_海难水手|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Alliance
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>在沉船上击杀 |cRXP_ENEMY_P·哈里斯船长|r
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Alliance
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>击杀 |cRXP_ENEMY_坦克|r
    >>|cRXP_ENEMY_坦克|r |cRXP_WARN_是一条精英鲨鱼，巡逻于失落希望海角|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Alliance
    #completewith KeepLordFarson
    .subzone 5539 >>前往法尔森要塞
step << Alliance
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>击杀 |cRXP_ENEMY_发疯的守卫|r。拾取它们的 |cRXP_LOOT_生锈的步枪|r
    >>|cRXP_LOOT_生锈的步枪|r |cRXP_WARN_也可从 |r枪架|cRXP_PICK_ 上拾取|r
    >>|cRXP_WARN_继续在要塞内绕行，直到完成任务|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Alliance
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>在城堡楼上击杀 |cRXP_ENEMY_要塞领主法尔森|r
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Alliance
    #completewith ForemanWellson
    .subzone 5535 >>前往维尔松船坞
step << Alliance
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>击杀 |cRXP_ENEMY_阴森的码头工人|r、|cRXP_ENEMY_受诅的造船工人|r 和 |cRXP_ENEMY_受诅的港口工人|r。拾取他们的 |cRXP_LOOT_船坞木料|r
    >>|cRXP_LOOT_船坞木料|r |cRXP_WARN_也可从地面拾取|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Alliance
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >>|cRXP_WARN_进入一个|r |cRXP_FRIENDLY_维尔松火炮|r
    .target Wellson Cannon
step << Alliance
    .isOnQuest 28275
    >>|cRXP_WARN_施放|r |T252185:0|t[火炮冲击] (1) |cRXP_WARN_来摧毁水中的补给船|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Alliance
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>击杀 |cRXP_ENEMY_工头维尔松|r
    >>|cRXP_ENEMY_工头维尔松|r |cRXP_WARN_在维尔松船坞巡逻|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith FirstLieutenantConnor
    .subzone 5536 >>前往遗忘山丘
step << Horde
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>点击遗忘山丘中的 |cRXP_PICK_无名士兵的墓碑|r
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Horde
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>击杀 |cRXP_ENEMY_饥饿的食尸鬼|r、|cRXP_ENEMY_被遗忘的食尸鬼|r、|cRXP_ENEMY_徘徊的灵魂|r 和 |cRXP_ENEMY_骷髅兽王|r。拾取它们的 |cRXP_LOOT_被诅咒的腿骨|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Horde
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>击杀 |cRXP_ENEMY_康纳中尉|r
    >>|cRXP_ENEMY_康纳中尉|r |cRXP_WARN_会小范围巡逻|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step
    #completewith SiegeEngineScrap
    .subzone 5542 >>前往不眠前线
step << Alliance
    .isOnQuest 28046
    #loop
    .goto 245,39.23,61.12,60,0
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    >>击杀 |cRXP_ENEMY_不眠的步兵|r
    .complete 28046,1 -- Restless Infantry slain (5)
    .mob Restless Infantry
step << Horde
    .isOnQuest 28693
    #loop
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    .goto 245,39.23,61.12,60,0
    >>击杀 |cRXP_ENEMY_焦躁的士兵|r
    .complete 28693,1 -- Restless Soldier slain (5)
    .mob Restless Soldier
step
    #label SiegeEngineScrap
    .isOnQuest 27992
    #loop
    .goto 245,39.23,61.12,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Alliance
    .goto 245,43.90,60.75,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Horde
    .goto 245,43.90,60.75,60,0 << Horde
    .goto 245,39.23,61.12,60,0 << Horde
    .use 62829 >>|cRXP_WARN_在不眠前线时，使用|r |T134519:0|t[磁性废料收集器] |cRXP_WARN_，可使 |cRXP_LOOT_攻城坦克废料|r 在地面显现|r
    >>|cRXP_WARN_注意|r |T134519:0|t[磁性废料收集器] |cRXP_WARN_并非每次都能显现|r |cRXP_LOOT_攻城坦克废料|r
    >>拾取地上的 |cRXP_LOOT_攻城坦克废料|r
    .complete 27992,1 -- Siege Engine Scrap (7)
step << Alliance
    #completewith FirstLieutenantConnor
    .subzone 5536 >>前往遗忘山丘
step << Alliance
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>点击遗忘山丘中的 |cRXP_PICK_无名士兵的墓碑|r
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Alliance
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>击杀 |cRXP_ENEMY_饥饿的食尸鬼|r、|cRXP_ENEMY_被遗忘的食尸鬼|r、|cRXP_ENEMY_徘徊的灵魂|r 和 |cRXP_ENEMY_骷髅兽王|r。拾取它们的 |cRXP_LOOT_被诅咒的腿骨|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Alliance
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>击杀 |cRXP_ENEMY_康纳中尉|r
    >>|cRXP_ENEMY_康纳中尉|r |cRXP_WARN_会小范围巡逻|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step << Alliance
    #completewith next
    .subzone 5537 >>前往黑暗森林
step << Alliance
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>击杀 |cRXP_ENEMY_黑暗森林潜伏者|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Alliance
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>击杀 |cRXP_ENEMY_黑暗森林蛛母|r。从它们身上拾取 |cRXP_LOOT_粘性丝囊|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Horde
    #completewith ForemanWellson
    .subzone 5535 >>前往维尔松船坞
step << Horde
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>击杀 |cRXP_ENEMY_阴森的码头工人|r、|cRXP_ENEMY_受诅的造船工人|r 和 |cRXP_ENEMY_受诅的港口工人|r。拾取他们的 |cRXP_LOOT_船坞木料|r
    >>|cRXP_LOOT_船坞木料|r |cRXP_WARN_也可从地面拾取|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Horde
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >>|cRXP_WARN_进入|r |cRXP_FRIENDLY_维尔松火炮|r
    .target Wellson Cannon
step << Horde
    .isOnQuest 28275
    >>|cRXP_WARN_施放|r |T252185:0|t[火炮冲击] (1) |cRXP_WARN_来摧毁水中的补给船|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Horde
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>击杀 |cRXP_ENEMY_工头维尔松|r
    >>|cRXP_ENEMY_工头维尔松|r |cRXP_WARN_在维尔松船坞巡逻|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith KeepLordFarson
    .subzone 5539 >>前往法尔森要塞
step << Horde
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>击杀 |cRXP_ENEMY_发疯的守卫|r。拾取它们的 |cRXP_LOOT_生锈的步枪|r
    >>|cRXP_LOOT_生锈的步枪|r |cRXP_WARN_也可从 |r枪架|cRXP_PICK_ 上拾取|r
    >>|cRXP_WARN_继续在要塞内绕行，直到完成任务|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Horde
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>在城堡楼上击杀 |cRXP_ENEMY_要塞领主法尔森|r
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Horde
    #completewith Tankslain
    .subzone 5534 >>前往失落希望海角
step << Horde
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>拾取海岸线和海底的 |cRXP_LOOT_一桶南海朗姆酒|r
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Horde
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>击杀 |cRXP_ENEMY_海难水手|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Horde
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>在沉船上击杀 |cRXP_ENEMY_P·哈里斯船长|r
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Horde
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>击杀 |cRXP_ENEMY_坦克|r
    >>|cRXP_WARN_坦克是一条精英鲨鱼，巡逻于失落希望海角|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Horde
    #completewith Seabass
    .subzone 5538 >>前往洛斯贝格村
step << Horde
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>击杀 |cRXP_ENEMY_可疑的村民|r、|cRXP_ENEMY_忧虑的工人|r、|cRXP_ENEMY_洛斯贝格强盗|r 和 |cRXP_ENEMY_洛斯贝格渔夫|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Horde
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>击杀 |cRXP_ENEMY_洛斯贝格渔夫|r。拾取 |cRXP_LOOT_洛斯贝格黑鲈鱼|r
    >>|cRXP_LOOT_洛斯贝格黑鲈鱼|r |cRXP_WARN_也可从 |r鱼群|cRXP_PICK_ 中拾取|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Horde
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >>前往拉尔戈的瞭望台
step << Horde
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>拾取地上的 |cRXP_LOOT_一堆炮弹|r
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Horde
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>击杀 |cRXP_ENEMY_瞭望台鬼灵|r, |cRXP_ENEMY_瞭望台幽魂|r 和 |cRXP_ENEMY_阴森的工人|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Horde
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>在拉尔戈的瞭望台上击杀 |cRXP_ENEMY_指挥官拉尔戈|r
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Horde
    #completewith next
    .subzone 5537 >>前往黑暗森林
step << Horde
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>击杀 |cRXP_ENEMY_黑暗森林潜伏者|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Horde
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>击杀 |cRXP_ENEMY_黑暗森林蛛母|r。从它们身上拾取 |cRXP_LOOT_粘性丝囊|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Alliance
    #completewith BaradinBaseCampTurnins
    .goto 245,69.14,57.86,150 >>返回巴拉丁营地
    .subzoneskip 5545
step << Alliance
    .isQuestComplete 28275
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 28275 >>交任务 炮弹发射！
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27987
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 27987 >>交任务 炮弹！
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27978
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 27978 >>交任务 鬼魂毁灭者
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27991
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 27991 >>交任务 夺回拉尔戈的瞭望台
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27973
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 27973 >>交任务 当心鬼魂！
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27975
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷中士|r 对话
    .dailyturnin 27975 >>交任务 通缉令：工头维尔松
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 28059
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官马库斯·约翰森|r 对话
    .dailyturnin 28059 >>交任务 占领要塞
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28063
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官马库斯·约翰森|r 对话
    .dailyturnin 28063 >>交任务 绝不浪费武器
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28130
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官马库斯·约翰森|r 对话
    .dailyturnin 28130 >>交任务 不友善的村落
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28137
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官马库斯·约翰森|r 对话
    .dailyturnin 28137 >>交任务 弄点黑鲈鱼来
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28065
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官马库斯·约翰森|r 对话
    .dailyturnin 28065 >>交任务 设身处地
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 27948
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 27948 >>交任务 棘手的任务
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27972
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 27972 >>交任务 鼓舞士气
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27970
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 27970 >>交任务 P·哈里斯船长
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27971
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 27971 >>交任务 激怒敌人
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28050
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 28050 >>交任务 巨鲨“坦克”
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27944
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_营地协调员巴拉克|r 对话
    .dailyturnin 27944 >>交任务 削减蜘蛛的数量
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28046
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    .dailyturnin 28046 >>交任务 收尾工作
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27967
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    .dailyturnin 27967 >>交任务 康纳中尉
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27992
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    .dailyturnin 27992 >>交任务 磁铁的原理是什么呢？
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27966
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    .dailyturnin 27966 >>交任务 回收残骸
    .target Lieutenant Farnsworth
step << Alliance
    #label BaradinBaseCampTurnins
    .isQuestComplete 27949
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法恩斯沃中尉|r 对话
    .dailyturnin 27949 >>交任务 被遗忘的灵魂
    .target Lieutenant Farnsworth
step << Horde
    #completewith HellscreamsGraspTurnins
    .goto 245,52.43,68.91,150 >>返回地狱咆哮之握
    .subzoneskip 5546
step << Horde
    .isQuestComplete 28693
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普拉格上尉|r 对话
    .dailyturnin 28693 >>交任务 收尾工作
    .target Captain Prug
step << Horde
    .isQuestComplete 27967
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普拉格上尉|r 对话
    .dailyturnin 27967 >>交任务 康纳中尉
    .target Captain Prug
step << Horde
    .isQuestComplete 27992
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普拉格上尉|r 对话
    .dailyturnin 27992 >>交任务 磁铁的原理是什么呢？
    .target Captain Prug
step << Horde
    .isQuestComplete 27966
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普拉格上尉|r 对话
    .dailyturnin 27966 >>交任务 回收残骸
    .target Captain Prug
step << Horde
    .isQuestComplete 27949
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普拉格上尉|r 对话
    .dailyturnin 27949 >>交任务 被遗忘的灵魂
    .target Captain Prug
step << Horde
    .isQuestComplete 28275
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 28275 >>交任务 炮弹发射！
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27987
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 27987 >>交任务 炮弹！
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27978
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 27978 >>交任务 鬼魂毁灭者
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27991
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 27991 >>交任务 夺回拉尔戈的瞭望台
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27973
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 27973 >>交任务 当心鬼魂！
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27975
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_列兵萨罗斯克|r 对话
    .dailyturnin 27975 >>交任务 通缉令：工头维尔松
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27948
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 27948 >>交任务 棘手的任务
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27972
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 27972 >>交任务 鼓舞士气
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27970
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 27970 >>交任务 P·哈里斯船长
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27971
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 27971 >>交任务 激怒敌人
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28050
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 28050 >>交任务 巨鲨“坦克”
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27944
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_三副克隆卡尔|r 对话
    .dailyturnin 27944 >>交任务 削减蜘蛛的数量
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28059
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官拉尔玛什|r 对话
    .dailyturnin 28059 >>交任务 占领要塞
    .target Commander Larmash
step << Horde
    .isQuestComplete 28063
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官拉尔玛什|r 对话
    .dailyturnin 28063 >>交任务 绝不浪费武器
    .target Commander Larmash
step << Horde
    .isQuestComplete 28130
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官拉尔玛什|r 对话
    .dailyturnin 28130 >>交任务 不友善的村落
    .target Commander Larmash
step << Horde
    .isQuestComplete 28137
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官拉尔玛什|r 对话
    .dailyturnin 28137 >>交任务 弄点黑鲈鱼来
    .target Commander Larmash
step << Horde
    #label HellscreamsGraspTurnins
    .isQuestComplete 28065
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官拉尔玛什|r 对话
    .dailyturnin 28065 >>交任务 设身处地
    .target Commander Larmash
step
    #completewith next
    .goto 245,66.83,81.42,30,0
    .goto 244,40.80,20.76
    .zone 244 >>|cRXP_WARN_你已完成今日托尔巴拉德半岛的所有日常任务。南行前往托尔巴拉德继续完成那里的日常任务|r
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_万斯沃斯少尉|r、|cRXP_FRIENDLY_法洛斯元帅|r、|cRXP_FRIENDLY_帕克中士|r 和 |cRXP_FRIENDLY_指挥官斯蒂文斯|r 对话
    .daily 28186 >>接受任务 被诅咒的镣铐
    .daily 28165 >>接受任务 恶魔监狱
    .daily 28185 >>接受任务 斯瓦诺斯
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .daily 28232 >>接受任务 下面的食物
    .daily 28188 >>接受任务 监狱暴动
    .daily 28223 >>接受任务 典狱官
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .daily 28122 >>接受任务 巨大的问题
    .daily 28162 >>接受任务 沼泽之饵
    .daily 28163 >>接受任务 负隅顽抗
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .daily 28117 >>接受任务 清理地牢
    .daily 28120 >>接受任务 以史为鉴
    .daily 28118 >>接受任务 被囚禁的大法师
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹加尔上士|r、|cRXP_FRIENDLY_指挥官扎诺斯|r、|cRXP_FRIENDLY_列兵加尔诺斯|r 和 |cRXP_FRIENDLY_拉斯格斯教官|r 对话
    .daily 28232 >>接受任务 下面的食物
    .daily 28188 >>接受任务 监狱暴动
    .daily 28223 >>接受任务 典狱官
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .daily 28122 >>接受任务 巨大的问题
    .daily 28162 >>接受任务 沼泽之饵
    .daily 28659 >>接受任务 负隅顽抗
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .daily 28117 >>接受任务 清理地牢
    .daily 28120 >>接受任务 以史为鉴
    .daily 28118 >>接受任务 被囚禁的大法师
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .daily 28186 >>接受任务 被诅咒的镣铐
    .daily 28165 >>接受任务 恶魔监狱
    .daily 28185 >>接受任务 斯瓦诺斯
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    #completewith GalusStaff
    .goto 244,61.330,50.108
    .subzone 5658 >>进入咒怨地牢
step
    #completewith GalusStaff
    .isOnQuest 28117
    >>击杀 |cRXP_ENEMY_被囚禁的鬼灵|r、|cRXP_ENEMY_阴森的罪犯|r 和 |cRXP_ENEMY_牢房软泥怪|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith GalusStaff
    .isOnQuest 28120
    >>拾取地上的|cRXP_LOOT_满是灰尘的狱中日记|r
    .complete 28120,1 -- Cursed Shackles (8)
step
    #label GalusStaff
    .isOnQuest 28118
    .goto 244,56.31,54.75
    >>击杀 |cRXP_ENEMY_大法师加鲁斯|r。拾取 |cRXP_LOOT_大法师加鲁斯的法杖|r
    .complete 28118,1 -- Archmage Galus' Staff (1)
    .mob Archmage Galus
step
    #completewith next
    .isOnQuest 28117
    >>击杀 |cRXP_ENEMY_被囚禁的鬼灵|r、|cRXP_ENEMY_阴森的罪犯|r 和 |cRXP_ENEMY_牢房软泥怪|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28120
    >>拾取地上的|cRXP_LOOT_满是灰尘的狱中日记|r
    .complete 28120,1 -- Cursed Shackles (8)
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28117
    >>击杀 |cRXP_ENEMY_被囚禁的鬼灵|r、|cRXP_ENEMY_阴森的罪犯|r 和 |cRXP_ENEMY_牢房软泥怪|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith SvarnosCollar
    .goto 244,42.722,38.648
    .subzone 5657 >>前往恶魔监狱
step
    #completewith SvarnosCollar
    .isOnQuest 28165
    >>击杀|cRXP_ENEMY_恶魔|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    #completewith SvarnosCollar
    .isOnQuest 28186
    >>拾取地上的 |cRXP_LOOT_被诅咒的镣铐|r
    .complete 28186,1 -- Cursed Shackles (8)
step
    #label SvarnosCollar
    .isOnQuest 28185
    .goto 244,48.26,30.75
    >>击杀 |cRXP_ENEMY_斯瓦诺斯|r。拾取 |cRXP_LOOT_斯瓦诺斯的诅咒颈环|r
    .complete 28185,1 -- Svarnos' Cursed Collar (1)
    .mob Svarnos
step
    #completewith next
    .isOnQuest 28165
    >>击杀|cRXP_ENEMY_恶魔|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28186
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>拾取地上的 |cRXP_LOOT_被诅咒的镣铐|r
    .complete 28186,1 -- Cursed Shackles (8)
step
    .isOnQuest 28165
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>击杀|cRXP_ENEMY_恶魔|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28162
    #loop
    .goto 244,39.8,55.0,70,0
    .goto 244,34.4,49.0,70,0
    .goto 244,39.6,40.2,70,0
    .goto 244,45.0,48.0,70,0
    >>击杀 |cRXP_ENEMY_巴拉丁鳄鱼|r，拾取它们的 |cRXP_LOOT_鳄鱼皮|r
    .complete 28162,1 -- Crocolisk Hide (8)
    .mob Baradin Crocolisk
step
    #completewith WardensKeys
    .goto 244,43.93,70.10
    .subzone 5659 >>前往矿渣洞
step
    #completewith WardensKeys
    .isOnQuest 28188
    >>在矿渣洞内杀死 |cRXP_ENEMY_囚徒|r
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28232
    #completewith WardensKeys
    >>击杀 |cRXP_ENEMY_被囚禁的工人|r。拾取 |cRXP_LOOT_囚犯的口粮|r
    >>|cRXP_LOOT_囚犯的口粮|r |cRXP_WARN_也可从地面拾取|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #label WardensKeys
    .isOnQuest 28223
    .goto 244,37.375,71.036
    >>击杀 |cRXP_ENEMY_典狱官席尔瓦|r。拾取 |cRXP_LOOT_典狱官的钥匙|r
    .complete 28223,1 -- Warden's Keys (1)
    .mob Warden Silva
step
    #completewith next
    .isOnQuest 28188
    >>在矿渣洞内杀死 |cRXP_ENEMY_囚徒|r
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28232
    >>击杀 |cRXP_ENEMY_被囚禁的工人|r。拾取 |cRXP_LOOT_囚犯的口粮|r
    >>|cRXP_LOOT_囚犯的口粮|r |cRXP_WARN_也可从地面拾取|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28188
    >>在矿渣洞内杀死 |cRXP_ENEMY_囚徒|r
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28163 << Alliance
    .isOnQuest 28659 << Horde
    #loop
    .goto 244,36.2,68.4,60,0 -- sw
    .goto 244,51.4,29.0,60,0 -- north
    .goto 244,64.8,63.8,60,0 -- se
    >>击杀熔渣车间、典狱官岗哨或铁甲兵营处的 |cRXP_ENEMY_部落步兵|r << Alliance
    >>击杀熔渣车间、典狱官岗哨或铁甲兵营处的 |cRXP_ENEMY_联盟步兵|r << Horde
    .complete 28163,1 << Alliance -- Horde Infantry slain (12)
    .complete 28659,1 << Horde -- Alliance Infantry slain (12)
    .mob Horde Druid Infantry << Alliance
    .mob Horde Rogue Infantry << Alliance
    .mob Horde Mage Infantry << Alliance
    .mob Horde Shaman Infantry << Alliance
    .mob Alliance Hunter Infantry << Horde
    .mob Alliance Warrior Infantry << Horde
    .mob Alliance Mage Infantry << Horde
    .mob Alliance Paladin Infantry << Horde
step
    .isOnQuest 28122
    #loop
    .goto 244,51.0,36.6,80,0
    .goto 244,34.2,38.4,80,0
    .goto 244,38.2,60.6,80,0
    .goto 244,62.0,58.0,80,0
    .goto 244,58.6,36.8,80,0
    >>击杀 |cRXP_ENEMY_普罗布里姆|r
    >>|cRXP_ENEMY_普罗布里姆|r |cRXP_WARN_沿道路巡逻|r
    .complete 28122,1 -- Problim slain (1)
    .mob Problim
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_万斯沃斯少尉|r、|cRXP_FRIENDLY_法洛斯元帅|r、|cRXP_FRIENDLY_帕克中士|r 和 |cRXP_FRIENDLY_指挥官斯蒂文斯|r 对话
    .dailyturnin 28186 >>交任务 被诅咒的镣铐
    .dailyturnin 28165 >>交任务 恶魔监狱
    .dailyturnin 28185 >>交任务 斯瓦诺斯
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .dailyturnin 28232 >>交任务 下面的食物
    .dailyturnin 28188 >>交任务 监狱暴动
    .dailyturnin 28223 >>交任务 典狱官
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .dailyturnin 28122 >>交任务 巨大的问题
    .dailyturnin 28162 >>交任务 沼泽之饵
    .dailyturnin 28163 >>交任务 负隅顽抗
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .dailyturnin 28117 >>交任务 清理地牢
    .dailyturnin 28120 >>交任务 以史为鉴
    .dailyturnin 28118 >>交任务 被囚禁的大法师
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉兹加尔上士|r、|cRXP_FRIENDLY_指挥官扎诺斯|r、|cRXP_FRIENDLY_列兵加尔诺斯|r 和 |cRXP_FRIENDLY_拉斯格斯教官|r 对话
    .dailyturnin 28232 >>交任务 下面的食物
    .dailyturnin 28188 >>交任务 监狱暴动
    .dailyturnin 28223 >>交任务 典狱官
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .dailyturnin 28122 >>交任务 巨大的问题
    .dailyturnin 28162 >>交任务 沼泽之饵
    .dailyturnin 28659 >>交任务 负隅顽抗
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .dailyturnin 28117 >>交任务 清理地牢
    .dailyturnin 28120 >>交任务 以史为鉴
    .dailyturnin 28118 >>交任务 被囚禁的大法师
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .dailyturnin 28186 >>交任务 被诅咒的镣铐
    .dailyturnin 28165 >>交任务 恶魔监狱
    .dailyturnin 28185 >>交任务 斯瓦诺斯
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    +|cRXP_WARN_你已完成今日托尔巴拉德的所有日常任务|r
]])
