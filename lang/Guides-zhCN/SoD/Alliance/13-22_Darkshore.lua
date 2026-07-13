if GetLocale() ~= "zhCN" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" and RXP.gameVersion > 20000 then return end
RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< NightElf
#group RestedXP 联盟 1-20 级
#name 13-20级 黑海岸 探索赛季
#displayname 13-20级 黑海岸 << NightElf SoD !Priest
#displayname 13-22级 黑海岸 << NightElf SoD Priest
#displayname 15-18级 黑海岸 << !NightElf SoD
#next 20-22级 黑海岸 探索赛季 << !sod/Warrior/Rogue/Druid/Hunter
#next 22-24级 RestedXP 联盟 20-30\湿地 探索赛季 << sod Priest

-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod
step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6344 >>交任务 尼莎·影歌
    .accept 6341 >>接受任务 泰达希尔的渔业
    .target 尼莎·影歌
step << NightElf
	.goto Teldrassil,58.39,94.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .turnin 6341 >>交任务 泰达希尔的渔业
    .accept 6342 >>接受任务 飞往奥伯丁
    .target 维斯派塔斯
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Auberdine >>飞往黑海岸
    .target 维斯派塔斯
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>当船最接近奥伯丁海岸时跳下船
    .subzone 442 >>游向奥伯丁
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务 海中的水果 << !sod/Hunter/Druid
    .accept 1141 >>接受任务 钓鱼世家
    .turnin 1141 >>交任务《钓鱼世家》
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target 古博·布拉普
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1141 >>接受任务 钓鱼世家
    .turnin 1141 >>交任务《钓鱼世家》
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target 古博·布拉普
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务 海中的水果
    .target 古博·布拉普
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    >>|cRXP_WARN_从他那里购买最多40个|r |T133918:0|t[长嘴泥鳅] |cRXP_WARN_。出售你的所有5级或以下的食物|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >>交任务 飞往奥伯丁
    .accept 6343 >>接受任务 飞回泰达希尔 << Druid sod
    .target 莱尔德
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    .turnin 6342 >>交任务 飞往奥伯丁
    .target 莱尔德
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    >>|cRXP_WARN_从他那里购买最多40个|r |T133918:0|t[长嘴泥鳅] |cRXP_WARN_。出售你的所有5级或以下的食物|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target 莱尔德
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板莎希因|r 对话
    .home >>将你的炉石设为奥伯丁 << !Druid sod !Priest sod
    .target 旅店老板莎希因
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >>下楼前往 |cRXP_FRIENDLY_维兹班恩·曲针|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
    .target 维兹班恩·曲针
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 983 >>接受任务 传声盒827号
    .target 维兹班恩·曲针
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .accept 947 >>接受任务 洞中的蘑菇
    .target 巴瑞萨斯·月影
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
    .target 哨兵戈琳达·纳希恩
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .accept 947 >>接受任务 洞中的蘑菇
    .target 巴瑞萨斯·月影
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
    .target 哨兵戈琳达·纳希恩
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2118 >>接受任务 瘟疫蔓延
    .target 萨纳瑞恩·绿树
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .accept 984 >>接受任务 熊怪的威胁
    .target 特伦希斯
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .accept 3524 >>接受任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fp Auberdine >>开启奥伯丁飞行点
    .target 凯莱斯·月羽
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_让你的宠物去攻击一只 |cRXP_ENEMY_蓟熊|r。当你的宠物被 |cRXP_ENEMY_蓟熊|r 击晕后，解散你的宠物并开始驯服它|r
    .tame 2163 >>|cRXP_WARN_对|r 蓟熊|cRXP_WARN_ 施放|cRXP_ENEMY_ |T132164:0|t[驯服野兽] |r来驯服它|r
    .target 蓟熊
step << Warlock
    #season 2
    #label ExplorerImpDarkshore
    #sticky
    #completewith DarkshoreEnd
    >>在任务过程中，对怪物施放 |T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r 直到获得一个 |T133257:0|t|cRXP_LOOT_探险之魂|r。|cRXP_WARN_使用它来学习如何召唤|r |T236294:0|t|cRXP_FRIENDLY_[探险小鬼]|r
    .train 445459 >>|cRXP_WARN_使用|r |T133257:0|t|T236294:0|t|cRXP_LOOT_探险之魂|r |cRXP_WARN_学习如何召唤|r |T236294:0|t|T236294:0|t[|cRXP_FRIENDLY_探险小鬼|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshore << Warlock
    #sticky
    #completewith DarkshoreEnd
    #label FelPortalRuneDarkshore
    >>你所在的区域有|cRXP_FRIENDLY_邪能传送门|r。如果发现一个，召唤你的|T236294:0|t[|cRXP_FRIENDLY_探险小鬼|r]，并在传送门旁与它对话，派遣它去探险。10-20分钟后它会带回战利品，并有几率奖励你|T134419:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r] << Warlock
    >>你所在的区域存在|cRXP_FRIENDLY_邪能传送门|r。如果发现一个，使用|T134945:0|t|T134939:0|t|cRXP_LOOT_空间修复卷轴|r将其关闭。这将奖励你|T134939:0|t|T134939:0|t|cRXP_FRIENDLY_法术笔记：怨火之箭|r << Mage
    >>|cRXP_WARN_留意传送门，直到获得符文|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Skips if you don't have a Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith DarkshoreEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r |T134419:0|t|T136216:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r] |cRXP_WARN_学习|r |T136216:0|t|T136216:0|t[召唤恶魔卫士] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r |T134939:0|t|T135809:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t|T135809:0|t[怨火之箭] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>击杀 |cRXP_ENEMY_小潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹幼崽|r，拾取它们的 |cRXP_LOOT_蟹腿|r
    >>你可能需要下水才能获得它们
    .complete 983,1 --Crawler Leg (6)
    .mob 小潮行蟹
    .mob 暗礁蟹幼崽
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>打开 |cRXP_PICK_搁浅的海洋生物|r，拾取地上的物品以获得 |cRXP_LOOT_海洋生物骨骼|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_将你的|r|T136065:0|t[草药学]|cRXP_WARN_提升至15点，以便稍后能为重要的职业任务采集|r|T134187:0|t[地根草]|cRXP_WARN_。之后你可以遗忘该专业|r
    >>|cRXP_WARN_如果你更愿意稍后从拍卖行购买 5 个|r |T134187:0|t[地根草]|cRXP_WARN_，可跳过此步骤|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_将你的 |r|T136065:0|t[草药学]|cRXP_WARN_提升至 15，以便采集 5 个 |r|T134187:0|t[地根草]|cRXP_WARN_，完成即将到来的重要职业任务。完成后你可以将其忘却|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>通过 |T134187:0|t[草药学] 收集 5 个 |T136065:0|t[地根草]|cRXP_WARN_，偶尔也可从 |cRXP_PICK_破旧宝箱|r 获得，用于将来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_对|r |T134335:0|t|T134335:0|t[萨纳瑞恩的希望] |cRXP_WARN_使用在|cRXP_ENEMY_狂暴蓟熊|r身上。该技能射程为50码|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan 狂暴蓟熊
    .use 7586
step << Hunter
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r。拾取它们的 |T237270:0|t[|cRXP_LOOT_螃蟹点心|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >>|cRXP_WARN_对 |r |T237270:0|t[|cRXP_LOOT_暗礁蟹幼崽|r] |cRXP_WARN_使用 |cRXP_ENEMY_螃蟹点心|r 来获得|r |T134419:0|t[|cRXP_FRIENDLY_野兽控制符文|r]
    .collect 208701,1 -- Beast Mastery (1)
    .target 暗礁蟹幼崽
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 410110 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_野兽控制符文|r] |cRXP_WARN_来训练|r |T132270:0|t[野兽控制]
    .use 208701
    .itemcount 208701,1
step << !sod/Warrior/Rogue
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .subzoneskip 442
step
    .goto Darkshore,38.90,53.59
    >>朝熊怪营地的边缘跑去
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >>刷怪到7300+/8800经验
step << Hunter
    #season 2
    #optional
    #requires Treats3
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_传声盒827号|r
    .turnin 983 >>交任务 传声盒827号
    .accept 1001 >>接受任务 传声盒411号
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_传声盒827号|r
    .turnin 983 >>交任务 传声盒827号
    .accept 1001 >>接受任务 传声盒411号 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>点击地上的 |cRXP_PICK_传声盒827号|r
    .accept 1001 >>接受任务 传声盒411号
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 3524 >>交任务 搁浅的巨兽
    .accept 4681 >>接受任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>前往码头上的 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
step << Priest
    #season 2
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    .accept 6343 >>接受任务 飞回泰达希尔
    .target 莱尔德
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .accept 963 >>接受任务 永志不渝
    .target 塞瑞利恩·白爪
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>前往码头尽头，然后跳入水中
step << Rogue
    #season 2
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>前往码头尽头，然后跳入水中
    .train 424785,3
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>击杀 |cRXP_ENEMY_黑海岸蛇颈龙|r。拾取它们的 |cRXP_LOOT_蛇颈龙的眼球|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step << Rogue
    #season 2
    #optional << !NightElf
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>游向有灯塔的小岛
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .goto Darkshore,32.729,37.093
    >>打开树干的|cRXP_PICK_灯塔储藏箱|r，拾取获得|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_军刀猛刺符文|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_军刀猛刺符文|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>打开 |cRXP_PICK_海龟骨头|r，拾取其中的 |cRXP_LOOT_海龟的残骸|r
    .complete 4681,1 --Sea Turtle Remains (1)
step << Priest
    #season 2
    .goto Darkshore,30.5,47.5
    >>点击小岛上的|cRXP_PICK_捐献光耀残渣|r。拾取以获得|T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_帝王消陨的预言|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    #season 2
    >>你现在必须获得2个|T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想]BUFF
    >>你必须在以下地点之一使用/kneel命令：月井、北郡修道院、暴风城大教堂、安威玛尔的光明祭坛、洛克莫丹或铁炉堡的神秘结界
    >>为了获得第二个|T135934:0|t|T136057:0|t|T135934:0|t|T136057:0|t[冥想]增益效果，你需要跪在一位与你拥有不同|T135934:0|t|T135934:0|t|T136057:0|t|T136057:0|t[冥想]的牧师面前，并且该牧师必须以你为目标进行/pray
    .train 402849 >>|cRXP_WARN_一旦你同时拥有|r |T135934:0|t|T136057:0|t|T135975:0|t|T136149:0|t[冥想] |cRXP_WARN_增益效果，使用|r |T135975:0|t|T135975:0|t[|cRXP_FRIENDLY_国王陨落预言]|r |cRXP_WARN_来学习|r |T136149:0|t|T136149:0|t[暗言术：灭]
    >>|cRXP_WARN_如果你现在无法完成此步骤，请跳过，并稍后完成|r
    .use 205932
    .itemcount 205932,1
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务 海中的水果
    .target 古博·布拉普
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4681 >>交任务 搁浅的巨兽
    .target 温尼斯·布莱葛
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .accept 947 >>接受任务 洞中的蘑菇
    .target 巴瑞萨斯·月影
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4811 >>接受任务 红色水晶
    .target 哨兵戈琳达·纳希恩
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2118 >>交任务 瘟疫蔓延
    .accept 2138 >>接受任务 清除疫病
    .target 萨纳瑞恩·绿树
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 984 >>交任务 熊怪的威胁
    .accept 985 >>接受任务 熊怪的威胁
    .accept 4761 >>接受任务 桑迪斯·织风
    .target 特伦希斯


----Start of Optional Early Level 14 Druid Turnin/train----


step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将用于后续提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_WARN_技能等级|r  |cRXP_WARN_至10点|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-10)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将用于后续提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_WARN_技能等级|r  |cRXP_WARN_至50点|r
    >>|cRXP_WARN_现在不要特意去刷这个。只需记住把鸡蛋留好，并计算一下还需要多少点才能把烹饪升到50级|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto 1439,43.126,45.593,15 >>进入 |cRXP_PICK_月夜枭兽之石|r 洞穴
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto Darkshore,43.50,45.97
    .cast 18974 >>在洞穴内的|cRXP_WARN_枭兽之石|r使用|cRXP_WARN_ |T132857:0|t[|cRXP_PICK_塞纳里奥月尘|r]|cRXP_ENEMY_，以在洞穴入口处召唤|r月爪|r
    .timer 4,身心之力 剧情BP
    .use 15208
    .isOnQuest 6001
step << Druid
    #season 0
    #optional
    #label EarlyLunaclaw
    .goto Darkshore,43.09,45.55
    >>杀死 |cRXP_ENEMY_月爪枭兽|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob 月爪枭兽
    .xp <13+9500,1
step << Druid
    #optional
    #label DruidEarlyNessa
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    .accept 6343 >>接受任务 飞回泰达希尔
    .target 莱尔德
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith EarlyBody
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fly Teldrassil >>飞往泰达希尔
    .target 凯莱斯·月羽
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .target 尼莎·影歌
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .turnin 6001 >>交任务 身心之力
    .accept 6121 >>接受任务 新的课程
    .trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    #label EarlyBody
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .accept 6121 >>接受任务 新的课程
    .trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 6121 >>交任务 新的课程
    .accept 6122 >>接受任务 毒水之源
    .target 德迪利特·星焰
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    #completewith AmethStart
    .hs >>炉石回黑海岸
    .isQuestTurnedIn 6001



----End of Optional Early Level 14 Druid Turnin/train----



step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .accept 982 >>接受任务 深不可测的海洋
    .target 高尔博德·钢手
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_库德拉姆·石锤|r 和 |cRXP_FRIENDLY_迪尔弗拉姆·火须|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    .goto Darkshore,38.249,41.008
    .train 2018 >>学习 |T136241:0|t[锻造]
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .target Kurdram Stonehammer
    .target Delfrum Flintbeard
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾丽萨·钢拳|r 对话
    >>|cRXP_BUY_购买一把|r |T134708:0|t[矿工锄]|cRXP_BUY_从她那里|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >>|cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .accept 982 >>接受任务 深不可测的海洋
    .target 高尔博德·钢手
    .xp <13,1
step << !sod/Warrior/Rogue
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉姆·长爪|r对话
    .vendor 4183 >>|cRXP_BUY_如果钱够，从他那里购买|r |T135640:0|t[双刃弯刀] |cRXP_BUY_|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step << !Druid sod
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_达蒙德|r 对话
    .vendor 4182 >>|cRXP_BUY_从他那里按需尽可能多地购买|r |T133634:0|t[棕色小包] |cRXP_BUY_或|r |T133634:0|t[棕色小皮包] |cRXP_BUY_|r
    >>|cRXP_BUY_从他那里购买|r |T132382:0|t[锋利的箭] |cRXP_BUY_或|r |T132384:0|t[重弹丸] |cRXP_BUY_直到你的箭袋/弹药满为止|r << Hunter
    .target Dalmond
step << !Druid sod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
    .accept 954 >>接受任务 巴莎兰
    .accept 958 >>接受任务 上层精灵的工具 << !sod
    .target 桑迪斯·织风
    .xp >16,1
--XX if 16+, skip Tools
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
    .accept 954 >>接受任务 巴莎兰
    .target 桑迪斯·织风
    .xp >18,1
--XX if 18+, skip Bashal
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
 step << !sod/Warrior/Rogue
    #optional
    #completewith AsterionTravel << era
    #completewith AsterionTravelSoD << sod
    .goto 1439,43.509,33.207,0
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob 森林陆行鸟雏鸟
step << Warrior/Rogue
    #season 2
    .goto 1439,41.901,31.339
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4723 >>接受任务 搁浅的海洋生物
step << !Warrior !Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>前往 |cRXP_PICK_神秘的红色水晶|r 处
    >>|cRXP_WARN_注意 |cRXP_ENEMY_神秘的红色水晶|r 西侧的两组各 2 只 |cRXP_PICK_狂暴的月夜枭兽|r，彼此距离最近的那两组是联动仇恨的|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #season 2
    .xp 14-1600 >>刷枭兽直到距离14级还差1600点经验
step << skip --logout skip !Warrior !Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>前往附近的洞穴
step << skip --logout skip !Warrior !Rogue
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_击杀月夜枭兽圣者，进入并跳到洞穴后方的大蘑菇上，然后执行 返回角色选择 跳过（通过登出重新登入）|r


----Start of SoD Druid Starsurge segment----

step << Druid
    #optional
    #season 2
    #completewith next
    .subzone 442 >>前往奥伯丁
step << Druid
    #season 2
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_达蒙德|r 对话
    .vendor 4182 >>|cRXP_BUY_从他那里按需尽可能多地购买|r |T133634:0|t[棕色小包] |cRXP_BUY_或|r |T133634:0|t[棕色小皮包] |cRXP_BUY_|r
    >>|cRXP_BUY_从他那里购买|r |T132382:0|t[锋利的箭] |cRXP_BUY_或|r |T132384:0|t[重弹丸] |cRXP_BUY_直到你的箭袋/弹药满为止|r << Hunter
    .target Dalmond
step << Druid
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4761 >>交任务 桑迪斯·织风
    .accept 4762 >>接受任务 壁泉河
    .accept 954 >>接受任务 巴莎兰
    .target 桑迪斯·织风
step << Druid
    #season 2
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
    .accept 4812 >>接受任务 清洗水晶
    .target 哨兵戈琳达·纳希恩
step << Druid
    #season 2
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r |T134865:0|t[空水瓶] |cRXP_WARN_在奥伯丁的月亮井处使用|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << Druid
    #season 2
    #softcore
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>|cRXP_WARN_乘船前往米奈希尔港。接下来你要去湿地获取|r |T135730:0|t|T135730:0|t[星涌术] |cRXP_WARN_符文，这个符文在当前等级下非常强大|r
    >>|cRXP_WARN_在此过程中，你可能会死亡几次|r
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古基姆登|r 对话
    >>|cRXP_WARN_他会给你一个|r |T134052:0|t[|cRXP_LOOT_蘑菇|r]
    .collect 210499,1 -- Marshroom (1)
    .target Grugimdern
    .train 424718,1
    .link https://youtu.be/fWVaDR-NnKU >>https://youtu.be/fWVaDR-NnKU >> |cRXP_WARN_点击此处查看视频参考|r
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328,15 >>前往湖面突出的树桩处
    .train 424718,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_使用|r |T134052:0|t[|cRXP_LOOT_蘑菇|r] |cRXP_WARN_来食用它|r
    >>|cRXP_WARN_确保你在使用前是安全的，如果死亡就必须重新获取蘑菇|r
    .use 210499
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃德亚诺伊|r 对话
    >>只有先吃了蘑菇你才能看到这个NPC
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .train 424718 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_星辰符文|r] |cRXP_WARN_来学习|r |T135730:0|t[星涌术]
    .use 210500
    .itemcount 210500,1
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>施放传送：月光林地
    .usespell 18960
    >>|cRXP_WARN_它会在你的法术书中|r
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5921 >>交任务 月光林地
    .target 德迪利特·星焰
    .accept 5929 >>接受任务 巨熊之灵
step << Druid
    #season 2
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巨熊之灵|r 对话
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target 巨熊之灵
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>施放传送：月光林地
    >>|cRXP_WARN_这样可以让你更快返回|r
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 5929 >>交任务  巨熊之灵
    .target 德迪利特·星焰
    .accept 5931 >>接受任务 返回达纳苏斯
step << Druid
    #season 2
    .hs >>炉石返回到达纳苏斯
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 在中层对话
    .trainer >>训练你的职业技能
    .turnin 5931 >>交任务  返回达纳苏斯
    .target 玛斯雷·驭熊者
    .accept 6001 >>接受任务 身心之力
step << Druid
    #season 2
    #completewith FlyAuberdine
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid
    #optional
    #season 2
    #label FlyAuberdine
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .target 尼莎·影歌
step << Druid
    #season 2
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >>进入 |cRXP_PICK_月夜枭兽之石|r 洞穴
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>在洞穴内的|cRXP_WARN_枭兽之石|r使用|cRXP_WARN_ |T132857:0|t[|cRXP_PICK_塞纳里奥月尘|r]|cRXP_ENEMY_，以在洞穴入口处召唤|r月爪|r
    .timer 4,身心之力 剧情BP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 2
    .goto Darkshore,43.09,45.55
    >>杀死 |cRXP_ENEMY_月爪枭兽|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob 月爪枭兽
step << Druid
    #season 2
    .goto 1439,47.314,48.676
    >>点击 |cRXP_PICK_神秘的红色水晶|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_神秘的红色水晶|r 西侧的两组各 2 只 |cRXP_PICK_狂暴的月夜枭兽|r，彼此距离最近的那两组是联动仇恨的|r
    .turnin 4812 >>交任务 清洗水晶
    .accept 4813 >>接受任务 水晶中的碎骨
    .isQuestTurnedIn 4811
step << skip --logout skip Druid
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>前往附近的洞穴
step << skip --logout skip Druid
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_击杀月夜枭兽圣者，进入并跳到洞穴后方的大蘑菇上，然后执行 返回角色选择 跳过（通过登出重新登入）|r


----End of SoD Druid Starsurge segment----

step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >>前往 |cRXP_FRIENDLY_阿斯特利安|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    >>|cRXP_WARN_途中尽量避免击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r|r
    .turnin 954 >>交任务 巴莎兰
    .accept 955 >>接受任务 巴莎兰
    .target 阿斯特利安
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    >>|cRXP_WARN_途中尽量避免击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r|r
    .turnin 954 >>交任务 巴莎兰
    .target 阿斯特利安
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .accept 955 >>接受任务 巴莎兰
    .target 阿斯特利安
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>击杀 |cRXP_ENEMY_野生劣魔|r 和 |cRXP_ENEMY_恶灵劣魔|r。拾取他们的 |cRXP_LOOT_劣魔耳环|r
    >>|cRXP_WARN_暂时避免击杀 |cRXP_ENEMY_戴瑟雷萨特|r |r
    .complete 955,1 --Grell Earring (8)
    .mob 野生劣魔
    .mob 恶灵劣魔
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 955 >>交任务 巴莎兰
    .accept 956 >>接受任务 巴莎兰
    .target 阿斯特利安
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .accept 956 >>接受任务 巴莎兰
    .target 阿斯特利安
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >>放弃任务 巴莎兰
    .isQuestAvailable 955
step
    #xprate >1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>击杀 |cRXP_ENEMY_戴瑟雷萨特|r。拾取他们的 |cRXP_LOOT_远古月亮石封印|r
    >>|cRXP_WARN_他们没有动态刷新。如果找不到，请跳过此步骤|r |cRXP_ENEMY_戴瑟雷萨特|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob 戴瑟雷萨特
    .isQuestTurnedIn 955
step
    #xprate <1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>击杀 |cRXP_ENEMY_戴瑟雷萨特|r。拾取他们的 |cRXP_LOOT_远古月亮石封印|r
    >>|cRXP_WARN_请注意它们没有动态刷新|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob 戴瑟雷萨特
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 956 >>交任务 巴莎兰
    .target 阿斯特利安
    .isQuestComplete 956
step << !sod/Warrior/Rogue
    #optional
    #completewith RedCrystal
    #season 2
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob 森林陆行鸟雏鸟
step << !Warrior !Rogue
    #season 2
    #sticky
    #completewith MushroomCaveSoD
    >>击杀所有见到的|cRXP_ENEMY_狂暴蓟熊|r。|cRXP_WARN_你不需要现在完成这个任务，但进入娜迦洞穴时最好已经击杀了15只以上|r << Priest
    >>杀掉所有见到的|cRXP_ENEMY_狂暴蓟熊|r。|cRXP_WARN_你不需要现在完成这个任务|r << !Priest
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 --Rabid Thistle Bears (20)
    .mob 狂暴蓟熊
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,50.81,25.50
    >>|cRXP_WARN_使用|r |T134865:0|t[空的水样试管] |cRXP_WARN_在峭壁之泉河的河底使用|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step << !Warrior !Rogue
    #optional
    #completewith next
    #season 2
    #label MushroomCaveSoD
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往壁泉河洞穴
step << !Warrior !Rogue
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 2
    >>拾取地上的 |cRXP_LOOT_粗柄蘑菇|r 和 |cRXP_LOOT_毒帽蘑菇|r
    >>|cRXP_WARN_待在上层区域。如果上侧尽头没有 |cRXP_LOOT_毒帽蘑菇|r，就跳下去到下方南侧的房间获取一个|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_雷鳞御浪者|r 会施放|r |T135836:0|t[水流喷射] |cRXP_WARN_（远程瞬发：对附近敌人造成伤害并将其击退）——确保你站在不会被击退到洞穴下层的位置|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << !Warrior !Rogue
    .hs >>炉石返回到奥伯丁
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>0,1
step << skip --logout skip !Warrior !Rogue
    #optional
    #label MushroomLSSoD
    #completewith CavetoAuberSoD
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_跳到洞穴顶层最高的岩石上，调整角色位置直到看起来像是漂浮状态，然后通过登出重新登入执行返回角色选择跳过|r
step
    #season 2 << Warrior/Rogue
    #season 0 << Mage/Warlock/Priest/Paladin/Hunter/Druid
    #completewith LateTurtleStart << era
    #completewith RedCrystal << sod
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将用于后续提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_WARN_技能等级|r  |cRXP_WARN_至10点|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step << Warrior/Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>前往 |cRXP_PICK_神秘的红色水晶|r 处
    >>|cRXP_WARN_注意 |cRXP_ENEMY_神秘的红色水晶|r 西侧的两组各 2 只 |cRXP_PICK_狂暴的月夜枭兽|r，彼此距离最近的那两组是联动仇恨的|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << skip --logout skip Warrior/Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>前往附近的洞穴
step << skip --logout skip Warrior/Rogue
    #completewith next
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_击杀月夜枭兽圣者，进入并跳到洞穴后方的大蘑菇上，然后执行 返回角色选择 跳过（通过登出重新登入）|r
step << !Warrior !Rogue
    #optional
    #season 2
    #label CavetoAuberSoD
    #completewith CliffspringEnd
    .subzone 442 >>前往奥伯丁
step << !Warrior !Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4762 >>交任务 壁泉河
    .accept 4763 >>接受任务 黑木熊怪的堕落
    .target 桑迪斯·织风

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Druid/Warrior
    #season 2 << Warrior/Rogue
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to 奥伯丁，黑海岸
step << Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r 对话
    .accept 729 >>接受任务 健忘的勘察员
    .target 考古学家霍莉
step << !Warrior !Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .turnin 947 >>交任务 洞中的蘑菇
    .accept 948 >>接受任务 安努
    .target 巴瑞萨斯·月影
step << NightElf/Hunter/Druid/Rogue
    #season 2 << Warrior/Rogue
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶 << !Druid sod
    .accept 4812 >>接受任务 清洗水晶 << !Druid sod
    .turnin 4813 >>交任务 水晶中的碎骨 << Druid sod
    .target 哨兵戈琳达·纳希恩
    .xp >17,1 << !Warrior
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
    .accept 4812 >>接受任务 清洗水晶
    .target 哨兵戈琳达·纳希恩
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
    .xp >17,1
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .accept 4812 >>接受任务 清洗水晶
    .target 哨兵戈琳达·纳希恩
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
    .xp >17,1
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #season 2 << Warrior/Rogue
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r |T134865:0|t[空水瓶] |cRXP_WARN_在奥伯丁的月亮井处使用|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_在奥伯丁月亮井|r|cRXP_WARN_使用|r |T133748:0|t[空的净化碗]
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << NightElf/Hunter/Druid/Warrior/Rogue
    #season 2 << Warrior/Rogue
    #optional
    #season 0 << Hunter/Druid/Rogue/Priest
    #completewith MysteriousCrystalHuntDruidEnd << era
    #completewith Anaya << sod
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #completewith EarlyCrystalEnd
    #season 2 << Warrior/Rogue
    #season 0 << Hunter/Druid/Rogue/Priest
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将用于后续提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_WARN_技能等级|r  |cRXP_WARN_至10点|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>杀死 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob 月夜猛虎幼崽
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << !Druid sod
    #season 2
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>点击 |cRXP_PICK_神秘的红色水晶|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_神秘的红色水晶|r 西侧的两组各 2 只 |cRXP_PICK_狂暴的月夜枭兽|r，彼此距离最近的那两组是联动仇恨的|r
    .turnin 4812 >>交任务 清洗水晶
    .accept 4813 >>接受任务 水晶中的碎骨
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << skip --logout skip
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-33.200,6141.300,20 >>前往附近的洞穴
step <<  skip --logout skip
    #optional
    #label OracleLSTwo
    #completewith MysteriousCrystalHuntDruidEnd
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_击杀月夜枭兽圣者，进入并跳到洞穴后方的大蘑菇上，然后执行 返回角色选择 跳过（通过登出重新登入）|r
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    #optional
    #label MysteriousCrystalHuntDruidEnd
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Return to 奥伯丁，黑海岸
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    >>选择 |T135641:0|t[曲木匕首] 作为奖励，因为你应该留一把 |T135641:0|t[|cRXP_WARN_匕首|r] |cRXP_WARN_以便稍后完成你的|r |T132290:0|t[|cRXP_WARN_毒药|r] |cRXP_WARN_任务|r << Rogue
    .turnin 4813 >>交任务 水晶中的碎骨 << !Hunter !Druid
    .turnin 4813,3 >>交任务 水晶中的碎骨 << Hunter/Druid
    .target 哨兵戈琳达·纳希恩
    .isQuestTurnedIn 4811
    .isOnQuest 4813
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_装备|r |T135145:0|t[橡木法杖]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    .accept 6343 >>接受任务 飞回泰达希尔
    .target 莱尔德
step << Druid
    #optional
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 13+9500 >>刷怪达到9500+/11400经验
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fly Teldrassil >>飞往泰达希尔
    .target 凯莱斯·月羽
    .isQuestAvailable 6001
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .target 尼莎·影歌
    .isQuestAvailable 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .turnin 6001 >>交任务 身心之力
    .accept 6121 >>接受任务 新的课程
    .trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
    .isQuestAvailable 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .accept 6121 >>接受任务 新的课程
    .trainer >>训练你的职业技能
    .target 玛斯雷·驭熊者
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 6121 >>交任务 新的课程
    .accept 6122 >>接受任务 毒水之源
    .target 德迪利特·星焰
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >>炉石回黑海岸
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step
    #season 0
    #optional
    #completewith AmethStart
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>杀死 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob 月夜猛虎幼崽
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>击杀 |cRXP_ENEMY_月夜猛虎|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4722 >>接受任务 搁浅的海龟
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .accept 953 >>接受任务 亚米萨兰的毁灭
    .target 哨兵坦莎·月刃
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>杀死 |cRXP_ENEMY_月夜猛虎幼崽|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob 月夜猛虎幼崽
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |T132832:0|t|cRXP_LOOT_[小蛋]|r
    >>|cRXP_WARN_这将用于后续提升你的|r |T133971:0|t|T133971:0|t[烹饪] |cRXP_WARN_技能等级|r  |cRXP_WARN_至10点|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob 小月夜枭兽
    .mob 狂暴的月夜枭兽
    .mob 月夜枭兽圣者
    .mob 月夜枭兽
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>击杀 |cRXP_ENEMY_安娜雅·晨路|r，从她身上拾取 |cRXP_LOOT_吊坠|r
    >>|cRXP_WARN_请注意她的刷新时间是7-8分钟，而且在亚米萨兰有4个不同的刷新点|r
    >>|cRXP_WARN_如果你找不到她，而且也愿意稍后可能需要击杀更多怪物来补经验，那就跳过这一步|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan 安娜雅·晨行者
    .solo
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>击杀 |cRXP_ENEMY_安娜雅·晨路|r，从她身上拾取 |cRXP_LOOT_吊坠|r
    >>|cRXP_WARN_请注意她的刷新时间是7-8分钟，而且在亚米萨兰有4个不同的刷新点|r
    >>|cRXP_WARN_如果你找不到她，可以与附近的玩家组队。在综合频道（/1）询问是否有其他也在找她的人一起组队。|r
    >>|cRXP_WARN_如果你找不到她，而且也愿意稍后可能需要击杀更多怪物来补经验，那就跳过这一步|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan 安娜雅·晨行者
    .group
step
    #season 0
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>击杀 |cRXP_ENEMY_被诅咒的上层精灵|r, |cRXP_ENEMY_痛苦的上层精灵|r 和 |cRXP_ENEMY_哀嚎的上层精灵鬼魂|r。拾取他们的 |cRXP_LOOT_圣物|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦的上层精灵
    .mob 哀嚎的上层精灵鬼魂
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .accept 953 >>接受任务 亚米萨兰的毁灭
    .target 哨兵坦莎·月刃
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>点击地上的 |cRXP_PICK_亚米萨兰的毁灭|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>点击 |cRXP_PICK_远古之焰|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>点击地上的 |cRXP_PICK_亚米萨兰的衰落|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 953 >>交任务 亚米萨兰的毁灭
    .target 哨兵坦莎·月刃
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrindEnd
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_小心它们会在低于30% 生命值时|r |T132307:0|t[逃跑] |cRXP_WARN_|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrindEnd
    >>击杀 |cRXP_ENEMY_月夜猛虎幼崽|r 和 |cRXP_ENEMY_月夜猛虎|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob 月夜猛虎幼崽
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrindEnd
    #season 0
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step << Warrior/Rogue
    #optional
    #completewith LateTurtleStart
    #season 2
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step << Priest
    #season 2
    .goto Darkshore,42.0,66.6
    .goto Darkshore,42.0,64.5,0
    .goto Darkshore,42.0,68.2,0
    .goto Darkshore,38.7,68.0,0
    .goto Darkshore,38.7,66.3,0
    .goto Darkshore,38.7,64.5,0
    >>完成击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step << !sod/Warrior/Rogue/Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4722 >>接受任务 搁浅的海龟
step << !sod/Warrior/Rogue/Priest
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob 黑木探路者
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob 黑木风语者
step
    #xprate <1.5
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11875 >>刷到11875+/14400经验
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11000 >>刷怪升到11000+/14400经验
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+600 >>刷怪达到600+/14400经验
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 14+12210 >>刷怪达到12210+/12900经验
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step << !sod/Warrior/Rogue/Priest
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >>Return to 奥伯丁，黑海岸
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟
    .turnin 4723 >>交任务 搁浅的海洋生物
    .target 温尼斯·布莱葛
    .isOnQuest 4723
step << !sod/Warrior/Rogue/Priest
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟
    .turnin 4723 >>交任务 搁浅的海洋生物 << Warrior sod
    .target 温尼斯·布莱葛
step
    #season 0 << !Warrior !Rogue
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务 海中的水果
    .target 古博·布拉普
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>回去找码头上的 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    >>|cRXP_WARN_如果有人刚交了任务，你可能需要等待他完成 RP|r
    .turnin 963 >>交任务 永志不渝
    .target 塞瑞利恩·白爪
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4811 >>交任务 红色水晶
    .accept 4812 >>接受任务 清洗水晶
    .target 哨兵戈琳达·纳希恩
    .isOnQuest 4811
step << !sod/Warrior/Rogue/Priest
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4812 >>交任务 清洗水晶
    .target 哨兵戈琳达·纳希恩
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_使用|r |T134865:0|t[空水瓶] |cRXP_WARN_在奥伯丁的月亮井处使用|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2138 >>交任务 清除疫病
    .accept 2139 >>接受任务 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
    .isQuestComplete 2138
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 2139 >>接受任务 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
    .isQuestTurnedIn 2138
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 985 >>交任务 熊怪的威胁
    .accept 986 >>接受任务 丢失的主人 << !sod
    .target 特伦希斯
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >>上楼
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_哨兵艾莉萨·星风|r 对话
    .accept 965 >>接受任务 奥萨拉克斯之塔
    .target 哨兵艾莉萨·星风


----Start of SoD Priest early level 18 wand quest + meditation quest detour----

step << Priest
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
    .isOnQuest 957
    .target 阿斯特利安
step << Priest
    #season 2
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>打开 |cRXP_PICK_黑木谷物储藏箱|r，从中拾取 |T134939:0|t|cRXP_LOOT_[黑木谷物]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_蓟熊幼崽|r，它们可以将你击晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob 雌蓟熊
step << Priest
    #season 2
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>打开 |cRXP_PICK_黑木坚果储藏箱|r，从中拾取 |T133944:0|t|cRXP_LOOT_[黑木坚果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>打开 |cRXP_PICK_黑木水果储藏箱|r，从中拾取 |T134013:0|t|cRXP_LOOT_[黑木水果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r |T134712:0|t[装满水的净化碗] |cRXP_WARN_在 |cRXP_PICK_篝火|r 处来召唤|r |cRXP_ENEMY_萨巴克希斯|r
    .timer 17,黑木熊怪的堕落 剧情
    .use 12347
step << Priest
    #season 2
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>击杀 |cRXP_ENEMY_萨巴克希斯|r。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的 |cRXP_LOOT_堕落护符|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob 萨巴克希斯
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 965 >>交任务 奥萨拉克斯之塔
    .accept 966 >>接受任务 奥萨拉克斯之塔
    .target 巴苏尔·影击
step << Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>击杀 |cRXP_ENEMY_暗滩狂热者|r，拾取他们的 |cRXP_LOOT_破旧的羊皮纸|r
    .complete 966,1 --Worn Parchment (4)
    .mob 暗滩狂热者
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 966 >>交任务 奥萨拉克斯之塔
    .accept 967 >>接受任务 奥萨拉克斯之塔
    .target 巴苏尔·影击
step << skip --logout skip Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    .xp 18 >>刷怪升至18级。|cRXP_WARN_如果你离得远，可以利用娜迦蘑菇洞下线跳过，直接到奥伯丁交任务|r
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>使用炉石回到达纳苏斯
    .zoneskip Darnassus
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾德莉亚|r 对话
    .trainer >>训练你的职业技能
    .target 贾德莉亚
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_麦丝拉·炉心|r 对话
    .accept 78192 >>接受任务 圣光之谜
    .target Maethra Slagheart
step << Priest
    #season 2
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
step << Priest
    #season 2
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .target 尼莎·影歌
step << Priest
    #season 2
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
    .zoneskip Darkshore
step << Priest
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2139 >>交任务 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
step << Priest
    #season 2
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4763,1 >>交任务 黑木熊怪的堕落
    .target 桑迪斯·织风
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>从你的背包中删除 |T134939:0|t|cRXP_LOOT_[黑木谷物]|r ，因为不再需要它了
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>从你的背包中摧毁 |T133944:0|t|cRXP_LOOT_[黑木坚果]|r，因为不再需要了
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>从你的背包中摧毁 |T134013:0|t|cRXP_LOOT_[黑木水果]|r，因为不再需要了
step << Priest
    #season 2
    #completewith next
    +|cRXP_WARN_装备|r |T135469:0|t[月石魔杖]
    .use 15204
    .itemcount 15204,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.61

----End of SoD Priest early level 18 wand quest + meditation quest detour----


step << !Hunter
    #season 0 << Druid/Priest
    #season 2 << Warrior/Rogue
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r |T134059:0|t[甜香料] |cRXP_BUY_，直到你拥有的|r |T134059:0|t[甜香料] |cRXP_BUY_数量等于或多于你当前拥有的|r |T132832:0|t[小蛋] |cRXP_BUY_数量|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target 高尔博德·钢手
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .accept 982 >>接受任务 深不可测的海洋
    .target 高尔博德·钢手
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .turnin 982 >>交任务 深不可测的海洋
    .target 高尔博德·钢手
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_朝地面上的 |cRXP_PICK_营火|r 前进|r
    +|cRXP_WARN_开始|r |T133971:0|t[烹饪] |T132834:0|t[草药烘蛋]|cRXP_WARN_。重复制作，直到你的|r |T133971:0|t[烹饪]|cRXP_WARN_至少达到10级|r
    >>|cRXP_WARN_继续提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能，直到你用完|r |T132832:0|t[小蛋] << !sod
    >>|cRXP_WARN_之后在暮色森林有一个任务需要你的|r |T133971:0|t[烹饪] |cRXP_WARN_达到 50 或更高。你也可以在稍后上船时烹饪这些|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 958 >>交任务 上层精灵的工具 << !sod
    .turnin 4762 >>交任务 壁泉河 << sod
    .accept 4763 >>接受任务 黑木熊怪的堕落 << sod
    .target 桑迪斯·织风
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
    .isOnQuest 957
    .target 阿斯特利安
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r 和 |cRXP_ENEMY_森林陆行鸟|r，拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_森林陆行鸟雏鸟|r |T132307:0|t[逃跑]|cRXP_WARN_会在生命值低于 30% 时触发|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟雏鸟
    .mob 森林陆行鸟
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4725 >>接受任务 搁浅的海龟
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>击杀 |cRXP_ENEMY_暗礁蟹|r。拾取他们的 |cRXP_LOOT_优质蟹肉|r
    >>如果掉落不错的话，可以考虑跳过一些17级的任务。|cRXP_WARN_你现在不必完成这个任务|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob 暗礁蟹
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_使用|r |T134865:0|t[空的水样试管] |cRXP_WARN_在峭壁之泉河的河底使用|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
----Start of Hunter/Druid 1x and SoD Warrior/Rogue early Althalaxx section (for money+xp)----


step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>击杀 |cRXP_ENEMY_月夜猛虎|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>前去找 |cRXP_FRIENDLY_巴苏尔·影击|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 965 >>交任务 奥萨拉克斯之塔
    .accept 966 >>接受任务 奥萨拉克斯之塔
    .target 巴苏尔·影击
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>击杀 |cRXP_ENEMY_暗滩狂热者|r，拾取他们的 |cRXP_LOOT_破旧的羊皮纸|r
    .complete 966,1 --Worn Parchment (4)
    .mob 暗滩狂热者
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 966 >>交任务 奥萨拉克斯之塔
    .accept 967 >>接受任务 奥萨拉克斯之塔
    .target 巴苏尔·影击
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>击杀 |cRXP_ENEMY_狂暴蓟熊|r
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>击杀 |cRXP_ENEMY_月夜猛虎|r。拾取它们的 |cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>击杀 |cRXP_ENEMY_森林陆行鸟雏鸟|r。拾取它们的 |cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob 森林陆行鸟
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>点击地上的 |cRXP_PICK_传声盒323号|r
    .turnin 1002 >>交任务 传声盒323号
    .accept 1003 >>接受任务 传声盒525号
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>前往壁泉河洞穴
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>|cRXP_WARN_使用|r |T134776:0|t[空的峭壁之泉取样器] |cRXP_WARN_在峭壁之泉河洞入口处的水中使用|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step << Warrior
    #season 1 -- not loading for now
    #optional
    #sticky
    #label EndlessRage
    .goto Darkshore,55.40,36.05,0,0
    >>击杀 |cRXP_ENEMY_Lady Sedorax|r。拾取她的 |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r]
    >>|cRXP_ENEMY_塞多拉克斯女士|r |cRXP_WARN_是一个18级精英怪，周围还有其他怪物。你也可以选择去西部荒野获取，那里要容易得多|r
    >>|cRXP_WARN_在综合聊天频道(/1)询问是否有其他人也想击杀她或能提供帮助，尝试组队|r
    >>|cRXP_WARN_如果无法完成，请跳过此步骤|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
    .group
step << Warrior
    #season 1 -- not loading for now
    #sticky
    #label EndlessRageEnd
    #requires EndlessRage
    #optional
    .train 403489 >>|cRXP_WARN_使用|r |T132347:0|t[|cRXP_FRIENDLY_无尽怒气符文|r] |cRXP_WARN_来学习|r |T132347:0|t[无尽怒气]
    .use 208741
    .itemcount 208741,1
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>拾取地上的 |cRXP_LOOT_粗柄蘑菇|r 和 |cRXP_LOOT_毒帽蘑菇|r
    >>|cRXP_WARN_待在上层区域。如果上侧尽头没有 |cRXP_LOOT_毒帽蘑菇|r，就跳下去到下方南侧的房间获取一个|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_雷鳞御浪者|r 会施放|r |T135836:0|t[水流喷射] |cRXP_WARN_（远程瞬发：对附近敌人造成伤害并将其击退）——确保你站在不会被击退到洞穴下层的位置|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << skip --logout skip Warrior/Rogue
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_跳到洞穴顶层最高的岩石上，调整角色位置直到看起来像是漂浮状态，然后通过登出重新登入执行返回角色选择跳过|r
step
    #optional
    #season 0 << !Warrior !Rogue
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >>前往奥伯丁

----Start of SoD 250% xp buff early southern Darkshore one loop----

step << Warrior/Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4762 >>交任务 壁泉河
    .accept 4763 >>接受任务 黑木熊怪的堕落
    .target 桑迪斯·织风
step << Warrior/Rogue
    #season 2
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_朝地面上的 |cRXP_PICK_营火|r 前进|r
    +|cRXP_WARN_开始|r |T133971:0|t[烹饪] |T132834:0|t[草药烘蛋]|cRXP_WARN_。重复制作，直到你的|r |T133971:0|t[烹饪]|cRXP_WARN_至少达到10级|r
    >>|cRXP_WARN_继续提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能，直到你用完|r |T132832:0|t[小蛋] << !sod
    >>|cRXP_WARN_之后在暮色森林有一个任务需要你的|r |T133971:0|t[烹饪] |cRXP_WARN_达到 50 或更高。你也可以在稍后上船时烹饪这些|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step << Warrior/Rogue
    #season 2
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .accept 2178 >>接受任务 炖陆行鸟
    .turnin 2178 >>交任务 炖陆行鸟
    .target 奥兰达利亚·夜歌
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178
step << !Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r 对话
    .accept 729 >>接受任务 健忘的勘察员
    .target 考古学家霍莉
step
    #season 2
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    >>选择 |T135641:0|t[曲木匕首] 作为奖励，因为你应该留一把 |T135641:0|t[|cRXP_WARN_匕首|r] |cRXP_WARN_以便稍后完成你的|r |T132290:0|t[|cRXP_WARN_毒药|r] |cRXP_WARN_任务|r << Rogue
    .turnin 4813 >>交任务 水晶中的碎骨 << !Hunter !Druid
    .turnin 4813,3 >>交任务 水晶中的碎骨 << Hunter/Druid
    .target 哨兵戈琳达·纳希恩
    .isQuestTurnedIn 4811
step
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_在奥伯丁月亮井|r|cRXP_WARN_使用|r |T133748:0|t[空的净化碗]
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << Warrior/Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴瑞萨斯·月影|r 对话
    .turnin 947 >>交任务 洞中的蘑菇
    .accept 948 >>接受任务 安努
    .target 巴瑞萨斯·月影
step
    #season 2
    .goto Darkshore,37.21,44.22
    >>点击 |cRXP_PICK_通缉布告|r
    .accept 4740 >>接受任务 通缉：莫克迪普！
step << Druid/Priest
    #season 2
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板基姆利雅|r 对话
    .home >>将你的炉石绑定到 阿斯特兰纳
    .target 旅店老板基姆利雅
step << Warrior/Rogue
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4725 >>交任务 搁浅的海龟
    .target 温尼斯·布莱葛
    .isOnQuest 4725
step << Druid/Hunter
    #season 2
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接受任务 海中的水果
    .target 古博·布拉普
step << Druid
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r。拾取它们的 |T237270:0|t[|cRXP_LOOT_螃蟹点心|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >>|cRXP_WARN_对 |r |T237270:0|t[|cRXP_LOOT_暗礁蟹幼崽|r] |cRXP_WARN_使用 |cRXP_ENEMY_螃蟹点心|r 来获得|r |T134419:0|t[|cRXP_FRIENDLY_割伤符文|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target 暗礁蟹幼崽
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 416049 >>|cRXP_WARN_使用|r |T134419:0|t|T132131:0|t[|cRXP_FRIENDLY_割伤符文|r] |cRXP_WARN_来学习|r |T132131:0|t|T132131:0|t[割伤]
    .use 208687
    .itemcount 208687,1
step << !Warrior !Rogue !Priest
    #season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>击杀 |cRXP_ENEMY_黑木探路者|r 和 |cRXP_ENEMY_黑木风语者|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob 黑木探路者
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob 黑木风语者
step << !Warrior !Rogue !Priest
    #season 2
    #sticky
    #completewith SealSoD
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>击杀 |cRXP_ENEMY_安娜雅·晨路|r，从她身上拾取 |cRXP_LOOT_吊坠|r
    >>|cRXP_WARN_注意她有7-8分钟的刷新时间和4个不同的刷新点在亚米萨兰。如果她不在就跳过此任务|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan 安娜雅·晨行者
step << !warrior !Rogue !Priest
    #season 2
    #label SealSoD
    .goto 1439,42.373,61.815
    >>点击 |cRXP_PICK_远古之焰|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>击杀 |cRXP_ENEMY_安娜雅·晨路|r，从她身上拾取 |cRXP_LOOT_吊坠|r
    >>|cRXP_WARN_注意她有7-8分钟的刷新时间和4个不同的刷新点在亚米萨兰。如果她不在就跳过此任务|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan 安娜雅·晨行者
step << !Priest
    #optional
    #season 2
    #completewith OnuSoD
    >>击杀|cRXP_ENEMY_狂暴蓟熊|r。|cRXP_WARN_你不需要现在完成这个任务，但最好在到达安努|r时已经击杀15只以上
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step
    #season 2
    #completewith OnuSoD
    .goto 1439,43.555,76.293,80 >>旅行到古树之林
step
    #season 2
    #label OnuSoD
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .turnin 952 >>交任务 古树之林 << Warrior/Rogue
    .turnin 948 >>交任务 安努
    .accept 944 >>接受任务 主宰之剑
    .target 安努
step
    #season 2
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >>前往主宰之剑
    .subzoneskip 449
    .isOnQuest 944
step
    #season 2
    #optional
    #completewith MasterEnd
    >>击杀 |cRXP_ENEMY_暮光信徒|r 和 |cRXP_ENEMY_暮光暴徒|r，拾取它们掉落的 |T133743:0|t[|cRXP_LOOT_书籍：地下的力量|r]
    *|cRXP_WARN_小心 |cRXP_ENEMY_暮光暴徒|r 能够|r |T132343:0|t[缴械] |cRXP_WARN_你6秒|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_小心，|cRXP_ENEMY_暮光信徒|r 会施放|r |T135953:0|t[恢复] |cRXP_WARN_和3秒的|r |T135915:0|t[治疗术]
    >>|cRXP_WARN_此物品的掉落几率极低。不要为了刷取它而费力|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob 暮光信徒
    .mob 暮光暴徒
--  .use 13536
step
    #optional
    #season 2
    .goto 1439,38.537,86.050
    >>发现主宰之剑
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #season 2
    #completewith next
    .cast 5809 >>|cRXP_WARN_使用|r |T134715:0|t[占卜之水] |cRXP_WARN_并将其放置在地面上|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 2
    >>|cRXP_WARN_点击地上的 |cRXP_PICK_占卜之碗|r|r
    .turnin 944 >>交任务 主宰之剑
    .accept 949 >>接受任务 暮光之锤的营地
    .use 5251
step
    #label MasterEnd
    #season 2
    .goto 1439,38.537,86.050
    >>点击北侧基座上的 |cRXP_PICK_暮光典籍|r
    .turnin 949 >>交任务 暮光之锤的营地
    .accept 950 >>接受任务 向安努回复
step
    #optional
    #sticky
    #season 2
    .isQuestTurnedIn 949
    .destroy 5251 >>从你的背包中摧毁 |T134715:0|t[占卜之水]，因为不再需要它
step << !Warrior !Druid !Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .target 安努
step
    #sticky
    #label prospector
    #season 2
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r 对话
    >>|cRXP_WARN_你可能需要等待他重新刷新，或等其他玩家完成护送|r
    .turnin 729 >>交任务 健忘的勘察员
    .target 勘察员雷塔维
step
    #season 2
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷姆塔维尔|r 对话。这将开始一个护送任务
    .accept 731,1 >>接受任务 健忘的勘察员
    >>|cRXP_WARN_此任务非常困难。如果失败，请跳过此步骤|r << !Warrior
    >>|cRXP_WARN_这个任务你很可能无法独自完成！|r 除非你能找到其他玩家组队，否则我建议你甚至不要尝试 << Warrior
    >>如果失败或没有人组队，请跳过此步骤 << Warrior
    .link https://youtu.be/3d-htESNztE >>https://youtu.be/3d-htESNztE >> |cRXP_WARN_点击此处观看视频指南|r << Hunter
    .link https://youtu.be/md926sh3L6U >>https://youtu.be/md926sh3L6U >> |cRXP_WARN_点击此处查看视频攻略|r << !Hunter
    .target 勘察员雷塔维
step
    #requires prospector
    #season 2
    >>|cRXP_WARN_护送 |cRXP_FRIENDLY_勘察员雷塔维|r 穿过挖掘场|r
    >>|cRXP_WARN_此任务非常困难。如果失败，请跳过此步骤|r
    .link https://youtu.be/3d-htESNztE >>https://youtu.be/3d-htESNztE >> |cRXP_WARN_点击此处观看视频指南|r << Hunter
    .complete 731,1
    .isOnQuest 731
step << Druid/Hunter/Warrior
    #sticky
    #completewith CompleteThistleBears << Hunter/Druid
    #completewith SodMurk << Warrior
    #season 2
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>击杀 |cRXP_ENEMY_硬壳潮行蟹|r 和 |cRXP_ENEMY_暗礁蟹|r。拾取他们的 |cRXP_LOOT_优质蟹肉|r
    >>|cRXP_WARN_你不需要现在完成这个任务，但理想情况下，在本节结束时你至少应该有4个|r << !Warrior
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 暗礁蟹
    .mob 硬壳潮行蟹
step << !Warrior
    #season 2
    .goto 1439,31.251,87.419
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4733 >>接受任务 搁浅的海洋生物
    >>|cRXP_WARN_这个任务可能会非常困难。请与 |cRXP_ENEMY_鱼人|r 逐个交战，否则你可能会同时引到多个|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_点击此处查看视频指南|r << Hunter
step << !Warrior
	#season 2
    .goto 1439,31.229,85.564
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4732 >>接受任务 搁浅的海龟
step << !Warrior
	#season 2
    .goto 1439,31.690,83.700
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4731 >>接受任务 搁浅的海龟
step
	#season 2
    .goto 1439,32.644,80.711
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4730 >>接受任务 搁浅的海洋生物
step
    #season 2
    #label SodMurk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_请务必检查 |cRXP_ENEMY_莫克迪普|r 是否已经在水中刷新(可能是之前有人战斗失败，或在他刷新时那一波里的 |cRXP_ENEMY_灰雾猎人|r 没有被击杀)|r
    >>击杀营地内的 |cRXP_ENEMY_灰雾战士|r 和 |cRXP_ENEMY_灰雾猎人|r
    >>|cRXP_WARN_移动到营地中央的篝火处以触发 |cRXP_ENEMY_莫克迪普|r 的战斗：|r
    >>|cRXP_WARN_将从水中刷新 3 波敌人，每击杀上一波才会出现下一波：第 1 波为 3 个 12–13 级 |cRXP_ENEMY_灰雾滩行者|r；第 2 波为 2 个 15–16 级 |cRXP_ENEMY_灰雾战士|r；第 3 波为 1 个 19 级 |cRXP_ENEMY_莫克迪普|r 和 1 个 16–17 级 |cRXP_ENEMY_灰雾猎人|r。你可以离开篝火以避免拉到下一波仇恨|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan 莫克迪普
    .mob 灰雾战士
    .mob 灰雾猎人
    .mob 灰雾滩行者
step << Warrior
    #season 2
    .goto Darkshore,35.7,73.5
    >>击杀|cRXP_ENEMY_结壳潮行蟹|r和|cRXP_ENEMY_礁石爬行者|r，从它们身上拾取|cRXP_LOOT_优质蟹肉|r
    >>|cRXP_WARN_如果附近没有更多螃蟹，请跳过此步骤|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 暗礁蟹
    .mob 硬壳潮行蟹
step << !Priest
    #season 2
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>点击地上的 |cRXP_PICK_搁浅的海洋生物|r
    .accept 4728 >>接受任务 搁浅的海洋生物
step << !Priest
    #season 2
    .goto Darkshore,38.9,64.9
    >>完成击杀 |cRXP_ENEMY_狂暴蓟熊|r。
    >>|cRXP_WARN_小心，它们会施放|r |T135914:0|t[狂犬病] |cRXP_WARN_如果你没有足够快击杀它们（瞬发近战：在 10 分钟内减少所有生命恢复 50%）|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob 狂暴蓟熊
step << !Warrior !Rogue !Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4722 >>接受任务 搁浅的海龟
step << skip -- Hunter
    .goto Darkshore,39.5,55.5
    .xp 19+800 >>一直练到19级获得800点经验值。这样你在达纳苏斯交完所有任务后，就能升到20级学习技能了

----Start of SoD Priest Ashenvale Meditation quest section----


step << Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
    .target 安努
step << Priest
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗尼亚·恒影|r 对话来开启护送任务
    >>|cRXP_WARN_如果他不在那里就跳过这一步。他最多需要25分钟才会重新刷新|r
    .accept 5321 >>接受任务 苏醒者已醒
    .target Kerlonian Evershade
step << Priest
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开 |cRXP_PICK_克罗尼亚的箱子|r。拾取 |T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Priest
    #season 2
    #completewith towersod
    .zone Ashenvale >>向南前往灰谷
    .goto Ashenvale,29.7,13.6
step << Priest
    #season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送 |cRXP_FRIENDLY_克罗尼亚|r 前往灰谷的梅伊瑟娜岗哨|r
    .use 13536 >>|cRXP_WARN_每当|r|cRXP_LOOT_克罗尼亚|r|cRXP_WARN_在他身边睡着时，就吹|cRXP_FRIENDLY_ |T134229:0|t[|r唤醒号角|r]
    >>|cRXP_WARN_尽可能避免在主干道上奔跑。只有当你在路上时敌人才会刷新|r
    .complete 5321,2
    .isOnQuest 5321
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利拉迪斯·月河|r 对话
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>如果你还没有完成这个任务，请跳过此步骤
    .turnin 5321 >>交任务 苏醒者已醒
step << Priest
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r 对话
	.target 净化者德尔格伦
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务 奥萨拉克斯之塔
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r 对话
	.target 奥雷迪尔·阔叶
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接受任务 巴斯兰的头发
step << Priest
    #season 2
    #sticky
    #completewith PriestHairSoD
    >>在寻找植物捆的过程中，击杀|cRXP_ENEMY_被遗忘者草药师|r和|cRXP_ENEMY_被遗忘者搜寻者|r
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
    #label PriestHairSoD
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地上的 |cRXP_PICK_植物捆|r，拾取其中的 |cRXP_LOOT_巴斯兰的毛发|r
    >>|cRXP_WARN_它们看起来像小棕色袋子，不容易看见|r
    .complete 1010,1
    .isOnQuest 1010
step << Priest
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>完成击杀|cRXP_ENEMY_被遗忘者草药师|r和|cRXP_ENEMY_被遗忘者搜寻者|r
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r 对话
	.target 奥雷迪尔·阔叶
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务 巴斯兰的头发
    .accept 1020 >>接受任务 奥雷迪尔的药剂
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r 对话
    .fp Astranaar>>获取阿斯特兰纳的飞行点
	.target 黛琳希亚
step << Priest
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r 对话
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1020 >>交任务 奥雷迪尔的药剂
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>炉石回到奥伯丁
    >>|cRXP_WARN_如果你的炉石在冷却中，就飞回去|r
    .zoneskip Darkshore
    .subzoneskip 442
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r 对话
    .fly Auberdine >>飞回奥伯丁
	.target 黛琳希亚


----End of SoD Priest Ashenvale Meditation quest section----


step
    #season 2
    #completewith CleansingTharnariunSod
    .subzone 442 >>前往奥伯丁
step
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4722 >>交任务 搁浅的海龟
    .turnin 4728 >>交任务 搁浅的海洋生物 << !Priest
    .turnin 4730 >>交任务 搁浅的海洋生物
    .turnin 4731 >>交任务 搁浅的海龟 << !Warrior
    .turnin 4732 >>交任务 搁浅的海龟 << !Warrior
    .turnin 4733 >>交任务 搁浅的海洋生物 << !Warrior
    .target 温尼斯·布莱葛
step << Warrior
    .goto Darkshore,36.096,44.931
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务 海中的水果
    .target 古博·布拉普
    .isQuestComplete 1138
step << !Warrior !Rogue !Priest
    #optional
    #completewith next
    #season 2
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>回去找码头上的 |cRXP_FRIENDLY_塞瑞利恩·白爪|r
step << !Warrior !Rogue !Priest
    #optional
    #season 2
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    >>|cRXP_WARN_如果有人刚交了任务，你可能需要等待他完成 RP|r
    .turnin 963 >>交任务 永志不渝
    .target 塞瑞利恩·白爪
    .isQuestComplete 963
step
    .goto 1439,37.703,43.393
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r 对话
    .turnin 4740 >>交任务 通缉：莫克迪普！
    .target 哨兵戈琳达·纳希恩
step << !Priest
    #label CleansingTharnariunSod
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2138 >>交任务 清除疫病
    .accept 2139 >>接受任务 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 985 >>交任务 熊怪的威胁
    .target 特伦希斯
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_哨兵艾莉萨·星风|r 对话
    .accept 965 >>接受任务 奥萨拉克斯之塔
    .target 哨兵艾莉萨·星风
step
    .goto 1439,37.439,41.839
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家霍莉|r 对话
    .turnin 731 >>交任务 健忘的勘察员
    .accept 741 >>接受任务 健忘的勘察员
    .target 考古学家霍莉
    .isQuestComplete 731
step << Druid
    #season 2
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >>放弃任务 收集解药
step
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尔德|r 对话
    .accept 6343 >>接受任务 飞回泰达希尔
    .target 莱尔德
    .isQuestComplete 741 << Rogue sod
step << NightElf
    #season 2
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯莱斯·月羽|r 对话
    .fly Teldrassil >>飞往泰达希尔
    .target 凯莱斯·月羽
    .isQuestComplete 741 << Rogue
step << NightElf
    #season 2 << !sod Priest
    #season 1 << sod Priest
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_尼莎·影歌|r 对话
    .turnin 6343 >>交任务 飞回泰达希尔
    .target 尼莎·影歌
    .isQuestComplete 741 << Rogue sod
step << !NightElf
    #season 2
    .goto 1439,33.169,40.179,15 >>前往达纳苏斯船的码头
step << !NightElf
    #season 2
    .goto 1439,33.213,39.883
    >>|cRXP_WARN_提升你的|r |T135966:0|t[急救] |cRXP_WARN_等级，如有需要可在等候前往米奈希尔港的船时进行|r << Warrior/Paladin/Rogue
    .zone Teldrassil >>乘船前往达纳苏斯
    .zoneskip Stormwind City << Warrior
    .zoneskip Ironforge << Warrior
    .zoneskip Darnassus
    .dungeon !DM << !Dwarf/!Hunter
step << !Druid
    #completewith next
    #season 2
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>进入通往达纳苏斯的紫色传送门
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买并装备一根|r |T135157:0|t|T135157:0|t[占卜法杖]
    .collect 928,1
    .target 阿瑞耶尔·天影
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    #season 2
    #completewith next
    +|cRXP_WARN_装备|r |T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    .goto Darnassus,58.72,34.92
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r对话
    .trainer >>训练你的职业技能
    .target 阿雷亚斯塔·刃歌
step << Hunter
    #season 2
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_祖卡斯特|r 对话
    >>|cRXP_WARN_确保训练后剩余70银币。你需要用这些钱来购买弓|r
    .trainer >>训练你的职业技能
    .target 祖卡斯特
step << Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r 对话
    .turnin 741 >>交任务 健忘的勘察员
    .accept 942 >>接受任务 健忘的勘察员
    .target 首席考古学家杜瑟·灰胡
    .isQuestComplete 741
step << Hunter
    #completewith startSoD
    #label RecruveReinforcedSoD
    #season 2
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰德瑞亚|r 对话
    >>|cRXP_WARN_购买1把|r |T135489:0|t[重型弯弓]
    >>|cRXP_WARN_补充 |T132382:0|t[锋利的箭] 库存|r
    .collect 3027,1
    .target 兰德瑞亚
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforcedSoD
    #completewith next
    #season 2
    +|cRXP_WARN_装备|r |T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    >>进入塞纳里奥区
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞尤娜|r 对话
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    >>|cRXP_WARN_确保训练后身上至少有1金30银。你要用这些钱购买武器|r
    .trainer >>训练你的职业技能
    .target 塞尤娜
    .isQuestComplete 741
step << Rogue
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿瑞耶尔·天影|r 对话
    >>|cRXP_BUY_购买并装备两个|r |T135342:0|t[波刃短剑]
    .collect 2209,2
    .target 阿瑞耶尔·天影
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .isQuestComplete 741
step << Rogue
    #season 2
    #completewith next
    +|cRXP_WARN_装备|r 两个 |T135342:0|t[波刃短剑]
    .use 2209
    .itemcount 2209,2
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
step << !Druid !Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r 对话
    .turnin 741 >>交任务 健忘的勘察员
    .accept 942 >>接受任务 健忘的勘察员
    .target 首席考古学家杜瑟·灰胡
    .isQuestComplete 741
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贾德莉亚|r 对话
    .trainer >>训练你的职业技能
    .target 贾德莉亚
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_麦丝拉·炉心|r 对话
    .turnin 78192 >>交任务
    .accept 78193 >>接受任务
    .target Maethra Slagheart
step << !Druid !Hunter
    #season 2
    .hs >>炉石回到奥伯丁
    >>|cRXP_WARN_如果你的炉石在冷却中，就飞回去|r
    .zoneskip Darkshore
    .subzoneskip 442
    .isQuestComplete 741 << Rogue
    .cooldown item,6948,>0,1
step << !Druid !Hunter
    #season 2
    #label startSoD
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >>通过紫色传送门前往鲁瑟兰村
    .isQuestComplete 741 << Rogue
step << !Druid !Hunter
    #season 2
    #label FlyAuberdineSoD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维斯派塔斯|r 对话
    .fly Darkshore >>飞往黑海岸
    .target 维斯派塔斯
    .zoneskip Darkshore
    .isQuestComplete 741 << Rogue

----Start of Druid/Hunter Quest+SoD rune section----


step << Druid
    #optional
    #season 2
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛斯雷·驭熊者|r 对话
    .turnin 6001 >>交任务 身心之力
    .accept 26 >>接受任务 必修的课程
    .trainer >>训练你的职业技能
    >>你很快就会获得许多强力的猫形态符文，使得野性猫成为更快的升级方式。|cRXP_WARN_如果你愿意的话，可以将天赋从平衡洗成野性|r。如果尽快点出猫形态的移动速度天赋，会为你节省大量跑路时间。
    .target 玛斯雷·驭熊者
    .isQuestComplete 6001
step << Druid
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r 对话
    .turnin 741 >>交任务 健忘的勘察员
    .accept 942 >>接受任务 健忘的勘察员
    .target 首席考古学家杜瑟·灰胡
step << Druid/Hunter
    #season 2
    #optional
    #completewith next
    +现在前往泰达希尔获取|T133816:0|t|T133816:0|t[铭刻手套 - 割碎] << Druid
    +现在前往泰达希尔获取|T236178:0|t|T236178:0|t[爆炸射击] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    .goto 1438,40.411,54.076
    .subzone 141 >>前往泰达希尔
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    #label Banethil1
    #completewith Rune
    .goto 1438,40.411,54.076,40,0
    .goto 1438,42.225,54.161,40,0
    .goto 1438,44.474,56.354,40,0
    .goto 1438,44.197,58.040
    .subzone 262 >>进入班奈希尔兽穴
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    #requires Banethil1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >>去找里面的 |cRXP_ENEMY_怒爪|r
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #loop
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>击杀里面底层的 |cRXP_ENEMY_怒爪|r。拾取他的 |T136061:0|t|cRXP_LOOT_[怒熊神像]|r << Druid
    >>击杀里面底层的 |cRXP_ENEMY_怒爪|r。拾取他的 |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .mob Rageclaw
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T136061:0|t|cRXP_LOOT_[怒熊神像]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #season 2
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_在|r |T132276:0|t[熊形态]|cRXP_WARN_中维持50或更多怒气60秒|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid/Hunter
    #season 2
    #label Rune
    .train 410025 >>|cRXP_WARN_使用|r |T136061:0|t|T132135:0|t|cRXP_LOOT_[怒熊神像]|r |cRXP_WARN_学习|r |T132135:0|t|T132135:0|t[割碎] << Druid
    .train 410123 >>|cRXP_WARN_使用|r |T134419:0|t|T236178:0|t|cRXP_LOOT_[爆炸射击符文]|r |cRXP_WARN_来学习|r |T236178:0|t|T236178:0|t[爆炸射击] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .use 206954 << Druid
    .use 206169 << Hunter
    .aura -414824 << Druid
step << Druid
    #optional
    #completewith TotL
    .cast 18960 >>施放传送：月光林地
    .zoneskip Moonglade
    step << Druid
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德迪利特·星焰|r 对话
    .turnin 26 >>交任务必修的课程
    .accept 29 >>接受任务湖中试炼
    .target 德迪利特·星焰
step << Druid
    .goto Moonglade,52.6,51.6
    >>游入月神湖
    >>打开一个 |cRXP_PICK_神殿灵珠容器|r。拾取 |T134125:0|t[神殿灵珠]
    >>|cRXP_WARN_它可能会在水下的不同位置刷新|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >>施放传送：月光林地
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_在雷姆洛斯神殿|r|cRXP_WARN_使用|r |T134125:0|t[神殿灵珠]
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔加里|r 对话
    .turnin 29 >>交任务湖中试炼
    .accept 272 >>接受任务海狮试炼
    .target 塔加里
step << Druid/Hunter
    #optional
    .hs >>炉石回黑海岸
    .zoneskip Darkshore


----End of Druid Quest+SoD rune section----


step << Priest
    #season 2
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>前往米奈希尔港码头
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Priest
    #season 2
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM


----End of SoD 250% xp buff early southern Darkshore one loop----

]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
<< !sod/Warrior/Rogue/Hunter/Druid
#group RestedXP 联盟 1-20 级
#name 20-22级 黑海岸 探索赛季
#displayname 20-22级 黑海岸 << sod !Warrior
#displayname 20-22级 黑海岸/灰谷 << sod Warrior
#next RestedXP 联盟 20-30级\22-24级 湿地 探索赛季

step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_使用|r |T133748:0|t[空的净化碗]|cRXP_WARN_在|r|cRXP_PICK_奥伯丁月亮井|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿斯特利安|r 对话
    .turnin 957 >>交任务 巴莎兰
    .isOnQuest 957
    .target 阿斯特利安
step << Warlock
    #season 2
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label ExplorerImpDarkshoreTwo
    >>在任务过程中，对怪物施放 |T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r 直到获得一个 |T133257:0|t|cRXP_LOOT_探险之魂|r。|cRXP_WARN_使用它来学习如何召唤|r |T236294:0|t|cRXP_FRIENDLY_[探险小鬼]|r
    .train 445459 >>|cRXP_WARN_使用|r |T133257:0|t|T236294:0|t|cRXP_LOOT_探险之魂|r |cRXP_WARN_学习如何召唤|r |T236294:0|t|T236294:0|t[|cRXP_FRIENDLY_探险小鬼|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshoreTwo << Warlock
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label FelPortalRuneDarkshore
    >>你所在的区域有|cRXP_FRIENDLY_邪能传送门|r。如果发现一个，召唤你的|T236294:0|t[|cRXP_FRIENDLY_探险小鬼|r]，并在传送门旁与它对话，派遣它去探险。10-20分钟后它会带回战利品，并有几率奖励你|T134419:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r] << Warlock
    >>你所在的区域存在|cRXP_FRIENDLY_邪能传送门|r。如果发现一个，使用|T134945:0|t|T134939:0|t|cRXP_LOOT_空间修复卷轴|r将其关闭。这将奖励你|T134939:0|t|T134939:0|t|cRXP_FRIENDLY_法术笔记：怨火之箭|r << Mage
    >>|cRXP_WARN_留意传送门，直到你获得符文|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith TravelMenethilNoDMBoat
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_使用|r |T134419:0|t|T136216:0|t[|cRXP_FRIENDLY_恶魔卫士符文|r] |cRXP_WARN_学习|r |T136216:0|t|T136216:0|t[召唤恶魔卫士] << Warlock
    .train 428878 >>|cRXP_WARN_使用|r |T134939:0|t|T135809:0|t[|cRXP_FRIENDLY_法术笔记：怨火之箭|r |cRXP_WARN_来学习|r |T135809:0|t|T135809:0|t[怨火之箭] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>打开 |cRXP_PICK_黑木谷物储藏箱|r，从中拾取 |T134939:0|t|cRXP_LOOT_[黑木谷物]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r。拾取她的 |T132942:0|t[|cRXP_FRIENDLY_野性神像|r]
    >>|cRXP_WARN_注意 |cRXP_ENEMY_蓟熊幼崽|r，它们可以将你击晕2秒|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob 雌蓟熊
    .train 407988,1
step
    #season 0 << Warrior
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_蓟熊幼崽|r，它们可以将你击晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob 雌蓟熊
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>打开 |cRXP_PICK_黑木坚果储藏箱|r，从中拾取 |T133944:0|t|cRXP_LOOT_[黑木坚果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>打开 |cRXP_PICK_黑木水果储藏箱|r，从中拾取 |T134013:0|t|cRXP_LOOT_[黑木水果]|r
    >>|cRXP_WARN_拾取该物品会刷新 2 个 |cRXP_ENEMY_黑木熊怪|r，它们会立刻仇恨并向你冲来。请做好战斗准备，或想办法重置它们|r
    >>|cRXP_WARN_如果你看到 |cRXP_ENEMY_萨巴克希斯|r 在聊天中喊话，或看到有人在与他战斗，请帮忙。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的|r |cRXP_LOOT_堕落护符|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_使用|r |T134712:0|t[装满水的净化碗] |cRXP_WARN_在 |cRXP_PICK_篝火|r 处来召唤|r |cRXP_ENEMY_萨巴克希斯|r
    .timer 17,黑木熊怪的堕落 剧情
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>击杀 |cRXP_ENEMY_萨巴克希斯|r。打开他掉落在地上的 |cRXP_PICK_萨巴克希斯的恶魔之包|r，拾取其中的 |cRXP_LOOT_堕落护符|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob 萨巴克希斯
step << Warrior
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>击杀 |cRXP_ENEMY_雌蓟熊|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_蓟熊幼崽|r，它们可以将你击晕2秒|r
    .complete 2139,1 --Den Mother (1)
    .mob 雌蓟熊
step << skip --logout skip Warrior
    #season 2
    .goto Darkshore,51.48,38.43
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_在兽穴之母洞穴后面的蘑菇顶部跳跃，并通过在其上登出来执行登出跳过|r
step << Warrior
    #optional
    #season 2
    #completewith BlackwoodSod
    .subzone 442 >>前往奥伯丁
step
    #season 0 << Warrior
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 965 >>交任务 奥萨拉克斯之塔
    .accept 966 >>接受任务 奥萨拉克斯之塔
    .target 巴苏尔·影击
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto Darkshore,56.20,26.46
    >>|cRXP_WARN_留意前往奥萨拉克斯之塔的队伍。如果看到有人进去，就慢慢跟在他们后面进入，这样你就能在塔顶拾取|cRXP_PICK_奇异宝珠|r
    >>|cRXP_WARN_小心，这座塔的怪物对你来说不可能击杀（等级28-31）|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    >>打开奥萨拉克斯之塔顶桌子上的|cRXP_PICK_奇异宝珠|r，拾取获得|cRXP_LOOT_奥萨拉克斯宝珠|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step << Warlock
    #season 2
    #optional
    #completewith Parchments
    >>|cRXP_WARN_留意是否有队伍进入奥萨拉克斯之塔。若看到有人，便悄悄尾随他们慢慢进入塔内，以便在塔顶拾取|cRXP_PICK_阿尔泰克之枝|r，完成|T135153:0|t|T135153:0|t[阿尔泰克之枝]任务
    >>|cRXP_WARN_这是为了你稍后的|r |T237558:0|t[恶魔变形] |cRXP_WARN_符文。如果不想做，可以跳过此步骤|r
    >>|cRXP_WARN_小心，这座塔的怪物对你来说不可能击杀（等级28-31）|r
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
    .train 403938,1
    .dungeon SFK
    .isQuestAvailable 78680
step << Warlock
    #season 2
    #sticky
    #label Channeling
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .waypoint 1439,55.743,25.915,50,0
    .waypoint 1439,56.047,26.586,50,0
    .waypoint 1439,56.544,26.598,50,0
    .waypoint 1439,57.046,26.234,50,0
    .waypoint 1439,57.278,26.311,50,0
    .waypoint 1439,56.790,27.621,50,0
    .waypoint 1439,56.194,27.071,50,0
    .waypoint 1439,55.815,26.972,50,0
    .waypoint 1439,55.763,26.695,50,0
    .waypoint 1439,55.369,27.025,50,0
    .waypoint 1439,55.231,26.508,50,0
    >>击杀|cRXP_ENEMY_暗滩狂热者|r。从他们身上拾取|T134419:0|t|T134419:0|t[|cRXP_FRIENDLY_引导符文|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob 暗滩狂热者
    .train 403932,1
step << Warlock
    #season 2
    #sticky
    #label ChannelingEnd
    #requires Channeling
    .train 403932 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_引导符文|r] |cRXP_WARN_来学习|r |T136168:0|t[引导大师]
    .use 208750
    .itemcount 208750,1
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #label Parchments << Warlock --Season 2 SFK
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>击杀 |cRXP_ENEMY_暗滩狂热者|r，拾取他们的 |cRXP_LOOT_破旧的羊皮纸|r
    .complete 966,1 --Worn Parchment (4)
    .mob 暗滩狂热者
step
    #xprate >1.59
    #season 0 << Warrior
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >>刷怪升级到15000+/19400经验
    .mob 暗滩狂热者
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #requires Channeling << Warlock --Season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 966 >>交任务 奥萨拉克斯之塔
    .accept 967 >>接受任务 奥萨拉克斯之塔 << !Hunter
    .target 巴苏尔·影击
step << Priest
    #season 1 -- Skipping this rune cus its useless
    #completewith next
    >>击杀|cRXP_ENEMY_暴鳞娜迦战士|r、|cRXP_ENEMY_暴鳞娜迦勇士|r和|cRXP_ENEMY_暴鳞娜迦女巫|r，从它们身上拾取|T236364:0|t|T236364:0|t[|cRXP_LOOT_碎矛供品|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step
    #season 0
    #requires ChannelingEnd << Warlock --Season 2
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>在地上拾取 |cRXP_LOOT_玛塞斯特拉遗物|r
    .complete 951,1 -- Mathystra Relics (6)
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>击杀|cRXP_ENEMY_暴鳞娜迦战士|r、|cRXP_ENEMY_暴鳞娜迦勇士|r和|cRXP_ENEMY_暴鳞娜迦女巫|r，从它们身上拾取|T236364:0|t|T236364:0|t[|cRXP_LOOT_碎矛供品|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_在水下的碎矛神像处使用|r |T236364:0|t|T136222:0|t[|cRXP_LOOT_碎矛供品|r] |cRXP_WARN_，即可获得|r |T136222:0|t|T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t|T237566:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r] |cRXP_WARN_来训练|r |T237566:0|t|T237566:0|t[扭曲信仰]
    >>|cRXP_WARN_你必须在圣洁区域（如北郡修道院、暴风城大教堂、安威玛尔的光线祭坛、洛克莫丹或铁炉堡的神秘结界）输入/kneel以获得|r |T135934:0|t|T136057:0|t|T136057:0|t|T136057:0|t[冥想] |cRXP_WARN_增益效果|r
    .use 205905
    .itemcount 205905,1
step << !sod/Hunter/Druid
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r 对话
    .accept 2098 >>接受任务 基尔卡克的钥匙
    .target 基尔卡克·旋杆
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r，拾取他们的 |cRXP_LOOT_基尔卡克钥匙的尾部|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_狂暴暗礁蟹|r 的|r |T132152:0|t[痛击] |cRXP_WARN_技能。它们的近战攻击可能会瞬间造成200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob 狂暴暗礁蟹
    .mob 硬壳潮行蟹
step << !sod/Hunter/Druid
    .goto Darkshore,54.93,12.19
    >>击杀 |cRXP_ENEMY_灰雾智者|r 和 |cRXP_ENEMY_灰雾潮行者|r，拾取他们的 |cRXP_LOOT_基尔卡克钥匙的中部|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_灰雾智者|r 的|r |T136048:0|t[闪电箭] |cRXP_WARN_伤害，他们还会使用|r |T136052:0|t[治疗波]|r
    >>|cRXP_WARN_你可以在沉船周围卡视角（LoS）来躲避 |cRXP_ENEMY_灰雾智者|r 的|r  |T136048:0|t[闪电箭] |cRXP_WARN_伤害|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob 灰雾潮行者
    .mob 灰雾智者
step << !sod/Hunter/Druid
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>击杀 |cRXP_ENEMY_狂暴暗礁蟹|r 和 |cRXP_ENEMY_硬壳潮行蟹|r，拾取他们的 |cRXP_LOOT_基尔卡克钥匙的尾部|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_狂暴暗礁蟹|r 的|r |T132152:0|t[痛击] |cRXP_WARN_技能。它们的近战攻击可能会瞬间造成200点伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob 狂暴暗礁蟹
    .mob 硬壳潮行蟹
step << !sod/Hunter/Druid
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>击杀 |cRXP_ENEMY_凶猛的森林陆行鸟|r，拾取它们的 |cRXP_LOOT_基尔卡克钥匙的头部|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob 凶猛的森林陆行鸟
step
    #xprate <1.59
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>击杀 |cRXP_ENEMY_月夜雄虎|r 和 |cRXP_ENEMY_月夜雌虎|r，拾取它们的 |cRXP_LOOT_毛皮|r
    >>|cRXP_WARN_注意 |cRXP_ENEMY_月夜雌虎|r。它们身边总会带着一只 |cRXP_ENEMY_月夜猛虎幼崽|r 一起攻击|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob 月夜雄虎
    .mob 月夜雌虎
    .mob 月夜猛虎幼崽
step << !sod/Hunter/Druid
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r 对话
    >>|cRXP_WARN_开始为“基尔卡克的报复”寻找队伍/|r|cRXP_ENEMY_机械打手4100型|r << Warrior/Paladin/Rogue
    .turnin 2098 >>交任务 基尔卡克的钥匙
    .accept 2078 >>接受任务 基尔卡克的报复
    .target 基尔卡克·旋杆
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >>与 |cRXP_FRIENDLY_机械打手4100型|r 对话以开始护送任务
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_这个任务非常困难|r
    .target 机械打手4100型
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step << !sod/Hunter
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4727 >>接受任务 搁浅的海龟
step << !sod/Hunter/Druid
    .goto Darkshore,55.81,18.29,10,0
    .goto 1439,56.654,13.484
    #optional
    >>护送 |cRXP_FRIENDLY_机械打手4100型|r 前往 |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >>在其变为敌对后击杀 |cRXP_ENEMY_机械打手4100型|r
    >>|cRXP_WARN_这个任务非常困难|r
    *仅使用远程攻击逃离它，避免处于近战范围 << Druid
    >>尽量完成这个任务，因为它会奖励 |T134797:0|t[|cRXP_WARN_水下呼吸药剂|r]，|cRXP_WARN_能为后续的水下任务节省时间|r << !Druid !Warlock
    >>|cRXP_WARN_使用|r |T136100:0|t[纠缠根须] |cRXP_WARN_在他变成敌对时，然后拉开距离并使用即时施放的咒语来风筝|r << Druid
    >>|cRXP_WARN_如果你无法击杀|cRXP_ENEMY_ 机械打手4100型|r，跳过这一步|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >>https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_点击此处查看视频指南|r
    .mob 机械打手4100型
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step << !sod/Hunter/Druid
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔卡克·旋杆|r 对话
    .turnin 2078 >>交任务 基尔卡克的报复
    .target 基尔卡克·旋杆
    .isQuestComplete 2078
step
    #optional
    #season 0 << Warrior
    #completewith BeachedCloak
    .abandon 2078 >>放弃任务 基尔卡克的报复
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>杀死 |cRXP_ENEMY_硬壳潮行蟹|r。拾取他们的 |cRXP_LOOT_优质蟹肉|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob 硬壳潮行蟹
step << !sod/Hunter/Druid
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >>从背包中删除|T134459:0|t|T134459:0|t[基尔卡克的钥匙]，因为不再需要了
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>点击地上的 |cRXP_PICK_搁浅的海龟|r
    .accept 4727 >>接受任务 搁浅的海龟
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_对|r |cRXP_WARN_生病的鹿|r |cRXP_ENEMY_使用|r |T132801:0|t[动物医疗药膏]
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_游到水中|r
    >>打开 |cRXP_PICK_奇怪的保险箱|r，并从中拾取 |cRXP_LOOT_水兽敏捷坠饰|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshire 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>前往月光林地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .trainer >>训练你的职业技能
    .target 洛甘纳尔
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith BlackwoodSod
    .hs >>炉石回到奥伯丁
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step << Druid
    #season 2
    #optional
    #completewith BlackwoodSod
    .goto Moonglade,48.0,67.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_辛德拉尔|r 对话
    .fly Auberdine >>|cRXP_WARN_如果你的炉石仍在冷却中，就飞往奥伯丁|r
step << !Warrior
    #season 2
    #optional
    #completewith BlackwoodSod
    .hs >>炉石回到奥伯丁
    .subzoneskip 442
    .cooldown item,6948,>0,1
step << !Druid !Warrior
    #optional
    #season 2
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>如果你的炉石无法使用，就跑回奥伯丁
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_桑迪斯·织风|r 对话
    .turnin 4763 >>交任务 黑木熊怪的堕落
    .target 桑迪斯·织风
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>从你的背包中删除 |T134939:0|t|cRXP_LOOT_[黑木谷物]|r ，因为不再需要它了
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>从你的背包中摧毁 |T133944:0|t|cRXP_LOOT_[黑木坚果]|r，因为不再需要了
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>从你的背包中摧毁 |T134013:0|t|cRXP_LOOT_[黑木水果]|r，因为不再需要了
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达蒙德|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一个|r |T135237:0|t[燧石和火绒] |cRXP_BUY_和一个|r |T135435:0|t[普通木柴]
    >>这是为了稍后在船上时，顺便提升你的 |T133971:0|t[|cRXP_WARN_烹饪|r] |cRXP_WARN_技能等级|r
    >>|cRXP_WARN_你需要 50 点|r |T133971:0|t[烹饪] |cRXP_WARN_技能，以便之后在暮色森林完成一个任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .vendor 6301 >>|cRXP_BUY_从他那里购买|r |T134059:0|t[甜香料] |cRXP_BUY_，直到你拥有的|r |T134059:0|t[甜香料] |cRXP_BUY_数量等于或多于你当前拥有的|r |T132832:0|t[小蛋] |cRXP_BUY_数量|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target 高尔博德·钢手
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 2139 >>交任务 萨纳瑞恩的希望
    .target 萨纳瑞恩·绿树
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特伦希斯|r 对话
    .turnin 986 >>交任务 丢失的主人
    .target 特伦希斯
    .isQuestComplete 986
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务 海中的水果
    .target 古博·布拉普
    .isQuestComplete 1138
step
    #season 1 << Warrior sod -- won't load
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温尼斯·布莱葛|r 对话
    .turnin 4727 >>交任务 搁浅的海龟
    .target 温尼斯·布莱葛


----Start of SoD Warrior short ashenvale bit to catch up xp----


step << Warrior
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
    .target 安努
step << Warrior
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗尼亚·恒影|r 对话来开启护送任务
    >>|cRXP_WARN_如果他不在那里就跳过这一步。他最多需要25分钟才会重新刷新|r
    .accept 5321 >>接受任务 苏醒者已醒
    .target Kerlonian Evershade
step << Warrior
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开 |cRXP_PICK_克罗尼亚的箱子|r。拾取 |T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Warrior
    #season 2
    #sticky
    >>|cRXP_WARN_护送 |cRXP_FRIENDLY_克罗尼亚|r 前往灰谷的梅伊瑟娜岗哨|r
    .use 13536 >>|cRXP_WARN_每当|r|cRXP_LOOT_克罗尼亚|r|cRXP_WARN_在他身边睡着时，就吹|cRXP_FRIENDLY_ |T134229:0|t[|r唤醒号角|r]
    >>|cRXP_WARN_尽可能避免在主干道上奔跑。只有当你在路上时敌人才会刷新|r
    .complete 5321,2
    .isOnQuest 5321
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_哨兵阿娜莎|r 对话来开始任务
    .accept 5713 >>接受任务 一击必杀
    .target Sentinel Aynasha
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>三波怪物会依次刷新，每波之间有间隔时间。等待下一波刷新时，你可以击杀区域内的其他怪物
    >>|cRXP_WARN_做这个任务时别忘了继续唤醒|r |cRXP_FRIENDLY_克罗尼亚|r |cRXP_WARN_，他会帮你对付怪物|r
    .complete 5713,1
step << Warrior
    #season 2
    #completewith towersod
    .zone Ashenvale >>向南前往灰谷
    .goto Ashenvale,29.7,13.6
step << Warrior
    #season 2
    .goto Ashenvale,26.6,36.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_哨兵奥奈雅|r 对话
    .turnin 5713,1 >>交任务 一击必杀
    .target Sentinel Onaeya
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利拉迪斯·月河|r 对话
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>如果你还没有完成这个任务，请跳过此步骤
    .turnin 5321 >>交任务 苏醒者已醒
step << Warrior
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r 对话
	.target 净化者德尔格伦
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务 奥萨拉克斯之塔
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r 对话
	.target 奥雷迪尔·阔叶
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>接受任务 巴斯兰的头发
step << Warrior
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>打开地上的 |cRXP_PICK_植物捆|r，拾取其中的 |cRXP_LOOT_巴斯兰的毛发|r
    >>|cRXP_WARN_它们看起来像小棕色袋子，不容易看见|r
    .complete 1010,1
    .isOnQuest 1010
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷迪尔·阔叶|r 对话
	.target 奥雷迪尔·阔叶
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>交任务 巴斯兰的头发
    .accept 1020 >>接受任务 奥雷迪尔的药剂
step << Warrior
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r 对话
	.target 皮尔图拉斯·怀特姆恩
    .turnin 1020 >>交任务 奥雷迪尔的药剂
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r 对话
    .fp Astranaar>>获取阿斯特兰纳的飞行点
	.target 黛琳希亚
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r 对话
    .fly Auberdine >>飞回奥伯丁
	.target 黛琳希亚


----End of SoD Warrior short ashenvale bit to catch up xp----


----Start of Druid SoD Wild Strikes run segment----

step << Druid
    #season 2
    #optional
    #completewith next
    +|cRXP_WARN_现在你将获得|r |T132143:0|t|T132143:0|t[|cRXP_FRIENDLY_狂野打击|r] |cRXP_WARN_符文。这需要前往石爪山脉，虽然路途较远，但该符文在后续升级过程中极为强大|r
step << Druid
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .turnin 950 >>交任务 向安努回复
    .target 安努
step << Druid
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗尼亚·恒影|r 对话来开启护送任务
    >>|cRXP_WARN_如果他不在那里就跳过这一步。他最多需要25分钟才会重新刷新|r
    .accept 5321 >>接受任务 苏醒者已醒
    .target Kerlonian Evershade
step << Druid
#season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>打开 |cRXP_PICK_克罗尼亚的箱子|r。拾取 |T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Druid
#season 2
    #completewith towersod
    .zone Ashenvale >>向南前往灰谷
    .goto Ashenvale,29.7,13.6
step << Druid
#season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_护送 |cRXP_FRIENDLY_克罗尼亚|r 前往灰谷的梅伊瑟娜岗哨|r
    .use 13536 >>|cRXP_WARN_每当|r|cRXP_LOOT_克罗尼亚|r|cRXP_WARN_在他身边睡着时，就吹|cRXP_FRIENDLY_ |T134229:0|t[|r唤醒号角|r]
    >>|cRXP_WARN_尽可能避免在主干道上奔跑。只有当你在路上时敌人才会刷新|r
    .complete 5321,2
    .isOnQuest 5321
step << Druid
#season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利拉迪斯·月河|r 对话
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>交任务 苏醒者已醒
    .isQuestComplete 5321
step << Druid
#season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_净化者德尔格伦|r 对话
	.target 净化者德尔格伦
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>交任务 奥萨拉克斯之塔
step << Druid
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛琳希亚|r 对话
    .fp Astranaar>>获取阿斯特兰纳的飞行点
	.target 黛琳希亚
step << Druid
    #season 2
    .goto Ashenvale,34.8,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哨兵塞恩希尔|r对话
    .target Sentinel Thenysil
    .accept 1070 >>接受任务守卫石爪山
step << Druid
    #season 2
    .goto Ashenvale,42.4,72.3,30 >>前往通往石爪山脉的深苔小径
step << Druid
    #season 2
    .goto Stonetalon Mountains,78.2,42.6,40 >>穿过隧道进入石爪山脉
step << Druid
    #season 2
    .goto Stonetalon Mountains,59.8,66.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_凯拉·影矛|r 对话
    .target Kaela Shadowspear
    .turnin 1070 >>交任务 守卫石爪山
step << Druid
    #season 2
    .goto Stonetalon Mountains,71.5,86.5,40 >>前往地图上标记的恐怖图腾村
step << Druid
    #season 2
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>击杀|cRXP_ENEMY_恐怖图腾者|r。从他们身上拾取|T134233:0|t|T134233:0|t[|cRXP_FRIENDLY_蛮荒神像|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    .equip 18,210534 >>|cRXP_WARN_装备|r |T134233:0|t[|cRXP_FRIENDLY_蛮荒神像|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #sticky
    #completewith wildStrikesEnd
    >>|cRXP_WARN_施放|r |T136085:0|t|T136041:0|t[愈合] |cRXP_WARN_或|r |T136041:0|t|T136041:0|t[治疗之触] |cRXP_WARN_在10个不同的友方野兽身上，例如猎人的宠物/熊形态下的德鲁伊/幽魂之狼下的萨满|r << Horde
    >>|cRXP_WARN_施放|r |T136085:0|t|T136041:0|t[愈合] |cRXP_WARN_或|r |T136041:0|t|T136041:0|t[治疗之触] |cRXP_WARN_在10个不同的友方野兽身上，例如猎人的宠物或处于熊/猎豹形态的德鲁伊|r << Alliance
    >>这可能需要一些时间，具体取决于你找到多少友善的野兽。|cRXP_WARN_切勿死亡或卸下遗物|r，直到你获得10层灵感，否则进度将丢失
    .train 410021 >>|cRXP_WARN_使用|r |T134233:0|t|T132143:0|t[|cRXP_FRIENDLY_蛮荒神像|r] |cRXP_WARN_来训练|r |T132143:0|t|T132143:0|t[狂野打击]
    .itemcount 210534,1
step << Druid
    #season 2
    #optional
	#completewith next
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,52.53,40.57
	>>前往月光林地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 6756 >>训练你的职业技能
    .target 洛甘纳尔
step << Druid
    #optional
    .hs >>炉石回黑海岸
    .zoneskip Darkshore

----End of Druid SoD Wild Strikes run segment----



----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of Rogue Poison Quest Section----



step
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>前往米奈希尔港码头
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
 step << Rogue
    #season 2
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_德温·晨光|r 对话
    .vendor 1453 >>|cRXP_WARN_尽可能多地购买|r |T134831:0|t [治疗药水] |cRXP_WARN_能买多少买多少|r
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_德温·晨光|r 没有库存，请跳过此步骤|r
    .target 德温·晨光
step << Rogue
    #season 2
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_尼尔·奥雷|r 对话
    .vendor >>|cRXP_WARN_购买一个|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应物品。如果 |cRXP_FRIENDLY_尼尔·奥雷|r 没有库存，请跳过此步骤|r
	.target 尼尔·奥雷
    .bronzetube
step << Rogue
    #season 2
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_旅店老板赫布瑞克|r 对话
    .target 旅店老板赫布瑞克
    .home >>将你的炉石设置为米奈希尔港
step << Rogue
    #season 2
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在楼上与 |cRXP_FRIENDLY_考古学家弗拉冈特|r 对话
    .target 考古学家弗拉冈特
    .turnin 942 >>交任务 健忘的勘察员
    .accept 943 >>接受任务 健忘的勘察员
    .isQuestComplete 942
step << Rogue
    #season 2
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 对话
    .vendor >>|cRXP_BUY_尽可能多购买|r |T134831:0|t[治疗药水] |cRXP_BUY_有库存的话|r
    >>|cRXP_WARN_这是限量供应物品，如果 |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r 没有库存，请跳过此步骤|r
    .target Samor Festivus
step << Rogue
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target 谢尔雷·布隆迪尔
    .dungeon !DM
step << NightElf Rogue
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>从码头尽头跳下水，游向指示点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色脱困自助功能直接跳转到铁炉堡。你需要先在指定位置下线，然后用另一个角色进入帮助菜单 (或者把下面的脱困链接粘贴到浏览器中)，向下滚动找到自助服务。选择你的角色并点击移动。如果无法成功脱困，请跳过此步骤，沿着山脉游泳前往西部荒野
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> 点击此处查看视频
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> 点击此处前往美服角色卡死链接
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>如果网站卡死不可用，请游泳前往西部荒野
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>沿着海岸跑上去，前往哨兵岭
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target 索尔
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 65 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>跑向暴风城
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 201 >>学习单手剑 << Rogue
    .train 202 >>学习双手剑 << Warrior
    .target 吴平
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开始任务|r
    .accept 968 >>接受任务 深渊之神
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_葛利·硬骨|r 对话
    .turnin 968 >>交任务 深渊之神
    .target 葛利·硬骨
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << skip --logout skip Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到狮鹫的头顶。通过登出再登录来执行返回角色选择跳过|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target 考格斯宾
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入矿道地铁
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_在坐地铁期间，如有需要可提升你的 |r|T135966:0|t[急救]|cRXP_WARN_和|r|T133971:0|t[烹饪] |cRXP_WARN_|r
    >>|cRXP_WARN_后面的任务需要你的|r |T135966:0|t[急救] |cRXP_WARN_达到80点以上|r << Rogue !Dwarf
    .zone Stormwind City >>乘坐地铁前往暴风城
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor 5519 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target 比利巴布·旋轮
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_如果你有闲钱，并且装备或背包里有|r|T132282:0|t[匕首]|cRXP_WARN_，可以学习|r|T135641:0|t[伏击]|cRXP_WARN_。这在以后会为你节省时间|r
    .train 8676 >>学习 |T132282:0|t[伏击]
    .target 夜行者奥斯伯
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保你学习了|r |T132320:0|t[潜行]|cRXP_WARN_，|r |T133644:0|t[搜索]|cRXP_WARN_和|r |T136058:0|t[开锁]|cRXP_WARN_，因为你之后会需要它们|r
    .train 1784 >>学习 |T132320:0|t[潜行]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保你学习了|r |T133644:0|t[搜索]|cRXP_WARN_和|r |T136058:0|t[开锁]|cRXP_WARN_，因为你之后会需要它们|r
    >>|cRXP_WARN_在接下来的步骤中，请务必精打细算。只买必要的法术，因为很快就需要花钱学[消失]，而且在回到湿地后还得准备75银币用于获取符文。|r
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    >>|cRXP_WARN_在接下来的步骤中，请务必精打细算。只买必要的法术，因为很快就需要花钱学[消失]，而且在回到湿地后还得准备75银币用于获取符文。|r
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往军情七处总部二楼，去找|cRXP_FRIENDLY_“剃刀”雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r 对话
    .accept 2281 >>接受任务 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接受任务 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与里面的 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里购买一把|r |T135342:0|t[波刃短剑] |cRXP_BUY_或在拍卖行寻找更好的/更便宜的|r
    >>|cRXP_WARN_在接下来的步骤中，请务必精打细算。如果钱不够就只购买一把匕首，因为很快就需要花钱学[消失]，而且在回到湿地后还得准备75银币用于获取符文。|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_WARN_如果钱够的话|r|cRXP_BUY_购买一把|r |T135342:0|t[波刃短剑]
    >>|cRXP_WARN_在接下来的步骤中，请务必精打细算。如果钱不够就只购买一把匕首，因为很快就需要花钱学[消失]，而且在回到湿地后还得准备75银币用于获取符文。|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_装备|r |T135342:0|t[波刃短剑]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买|T134437:0|t[抗毒药剂] 用于你稍后的 |T132290:0|t[毒药] 职业任务，其余的留着稍后在赤脊山快速交任务 << !Dwarf
    >>购买以下物品，以便稍后在赤脊山更快地完成任务 << Dwarf
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134437:0|t[抗毒药剂] << !Dwarf
    >>|T134172:0|t[巨型血牙野猪头]
    >>|T134028:0|t[硬秃鹫肉]
    >>|T134321:0|t[香脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target 拍卖师亚克森
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fp Stormwind >>获取暴风城的飞行路径 << !Human
    .fly Westfall >>飞往西部荒野 << Human
    .target 杜加尔·朗德瑞克
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >>前往西部荒野
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 65 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Sentinel Hill >>获取哨兵岭的飞行路径 << !Human
    .fly Redridge >>飞往赤脊山 << Human
    .target 索尔
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往赤脊山
    .target 杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与阿祖拉之塔顶部的|cRXP_FRIENDLY_塞欧克瑞图斯|r 对话
    .accept 94 >>接受任务 法师的眼线
    .target Theocritus
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往赤脊山
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在里面与 |cRXP_FRIENDLY_厨师布雷纳|r 对话
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上里面的 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
    .accept 132 >>接受任务 迪菲亚兄弟会
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2281 >>交任务 赤脊山的联络员
    .accept 2282 >>接受任务 奥瑟尔伐木场
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
    .accept 89 >>接受任务 止水湖上的桥
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>可以在前往奥瑟尔伐木场的路上顺路杀一些豺狼人。在返回的路上你会接着完成这个目标
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >>前往奥瑟尔伐木场
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_站在路径点位置。调整你的镜头和鼠标位置，使你无需移动即可一次性点击 3 个|cRXP_PICK_ |r练习用保险箱|r
    .skill lockpicking,80 >>|cRXP_WARN_在奥瑟尔磨坊打开地上的 |cRXP_PICK_练习用保险箱|r，直到你的|r |T136058:0|t[开锁] 技能达到 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>继续击杀 |cRXP_WARN_豺狼人|r 收集完修桥的材料
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_工头奥斯洛|r 对话
    .turnin 89 >>交任务 止水湖上的桥
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2282 >>交任务 奥瑟尔伐木场
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>从你的背包中摧毁 |T134328:0|t[偷窃技能认证书]，因为不再需要了
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >>在离开赤脊山之前，确保你21级的经验值至少达到1.4万。如果还没到，可以考虑去完成|cRXP_ENEMY_肖恩|r 提供的 |cRXP_FRIENDLY_希拉里的项链|r 任务，或者 |cRXP_ENEMY_工头奥斯洛|r 提供的 |cRXP_FRIENDLY_遗失的工具|r 任务
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径 << !Human
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 132 >>交任务 迪菲亚兄弟会
    .accept 135 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>击杀|cRXP_ENEMY_小型结网毒蜘蛛|r和|cRXP_ENEMY_结网毒蜘蛛|r，拾取|cRXP_LOOT_小毒囊|r和|cRXP_LOOT_粘糊的蜘蛛腿|r
    >>|cRXP_WARN_你需要一个|cRXP_LOOT_小毒囊|r来做成|r |T134437:0|t[抗毒药剂] |cRXP_WARN_，后面用来解除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_的debuff|r
    >>|cRXP_WARN_把|cRXP_LOOT_粘糊的蜘蛛腿|r留着后面用|r
    >>|cRXP_WARN_如果你有一个|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，可以直接跳过这步，之后请他们帮你解掉就行|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob 小型结网毒蜘蛛
    .mob 结网毒蜘蛛
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板（默认按键：V）这样可以在塔内的一些拐角处看到躲在后面的敌人|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    >>|cRXP_WARN_你必须完成这个任务来获取你的|r|T132290:0|t[毒药]
    .turnin 2360 >>交任务马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务 克拉文之塔
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[搜索] |cRXP_ENEMY_丑陋的迪菲亚懒汉|r。拾取 |cRXP_LOOT_迪菲亚塔楼钥匙|r
    >>|cRXP_WARN_你必须处于|r |T132320:0|t[潜行] |cRXP_WARN_状态下才能使用|r |T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r出现在塔楼入口处，随后会在塔楼外侧巡逻|r
    >>|cRXP_WARN_小心，他伤害很高。如果你的|r |T132320:0|t[潜行] |cRXP_WARN_被打破，立刻使用|r |T132307:0|t[疾跑] |cRXP_WARN_并逃离|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5sIew15IcG0 >> 点击此处查看视频指南
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r|T135641:0|t[匕首]|cRXP_WARN_，请为这个任务装备上|r|T135641:0|t[曲木匕首]|cRXP_WARN_ |r
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
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
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_施放 |T136225:0|t[石像形态] ，来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 22-8200 >>刷怪直到距离22级还差8200经验。你需要回到暴风城达到这个等级，以便学习|T132331:0|t|T132331:0|t[消失]，这是后续获取一个极其强大的符文所必需的
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备上你的主武器|r << Rogue !sod
    .turnin 135 >>交任务 迪菲亚兄弟会
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >>交任务 克拉文之塔
    .target 马迪亚斯·肖尔大师
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与建筑一层的 |cRXP_FRIENDLY_贾斯伯·菲尔|r 对话
    >>从他那里购买制作 |T132273:0|t[|cRXP_FRIENDLY_速效毒药|r] 和 |T132331:0|t[|cRXP_FRIENDLY_消失|r] 所需的材料
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>打开你的法术书，在通用选项卡中找到 |T136242:0|t[|cRXP_FRIENDLY_毒药|r] 技能。打开它并制作20份速效毒药。|cRXP_WARN_记得在战斗中始终将毒药涂在你的两把武器上|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_在接下来请务必非常小心地管理你的资金。只购买必不可少的技能。在完成湿地的几个任务后，你将需要75银币来获取一枚符文|r
    >>训练|cRXP_WARN_ |T132331:0|t[消失] 和 |T132320:0|t[潜行]（等级2）。你需要它来解锁 |T236270:0|t[致命阴谋]|r
    .train 1856 >>学习 |T132331:0|t[消失]
    .train 1785 >>训练 |T132320:0|t[潜行]（等级2）
    .target 夜行者奥斯伯
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >>炉石回米奈希尔港。|cRXP_WARN_如果炉石正在冷却中，则去暴风城监狱使用副本炉石返回|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_进入暴风城监狱|r
    >>|cRXP_WARN_进入内部后：|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_点击这里复制 + 粘贴这个宏到聊天框来传送回奥伯丁|r
    .zone Darkshore >>|cRXP_WARN_如果你无法完成此操作，请自行返回奥伯丁|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入矿道地铁
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_在坐地铁期间，如有需要可提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 和 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    .zone Ironforge >>乘坐矿道地铁前往铁炉堡
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target 考格斯宾
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开启任务|r
    .accept 968 >>接受任务 深渊之神
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_葛利·硬骨|r 对话
    .turnin 968 >>交任务 深渊之神
    .target 葛利·硬骨
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM

----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fly Menethil >>飞往湿地
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >>将炉石使用回米奈希尔港
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM


----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_你现在将开始前往死亡矿井|r
    >>|cRXP_WARN_提升你的|r |T135966:0|t[急救] |cRXP_WARN_等级，如有需要可在等候前往米奈希尔港的船时进行|r << Warrior/Paladin/Rogue
    .zone Wetlands >>乘船前往米奈希尔港
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fly Ironforge >>飞往铁炉堡
    .target 谢尔雷·布隆迪尔
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r 对话
    .fp Menethil Harbor >>获取米奈希尔港的飞行路径
    .target 谢尔雷·布隆迪尔
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>从码头尽头跳下水，游向指示点
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色脱困自助功能直接跳转到铁炉堡。你需要先在指定位置下线，然后用另一个角色进入帮助菜单 (或者把下面的脱困链接粘贴到浏览器中)，向下滚动找到自助服务。选择你的角色并点击移动。如果无法成功脱困，请跳过此步骤，沿着山脉游泳前往西部荒野
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> 点击此处查看视频
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> 点击此处前往美服角色卡死连接
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM


----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>如果网站的角色卡死服务不可用，就游到西部荒野
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>沿着海岸跑上去，前往哨兵岭
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Sentinel Hill >>获取哨兵岭的飞行路径
    .target 索尔
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 65 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>跑向暴风城
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风城大教堂内的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 附近
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .trainer >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在里面与 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 197 >>学习双手斧技能 << Warrior
    .train 199 >>训练双手锤 << Warrior
    .train 266 >>学习枪械 << Hunter
    .target 布里维夫·石拳
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135425:0|t[锐利的飞刀]
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_装备|r |T135425:0|t[锐利的飞刀]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开启任务|r
    .accept 968 >>接受任务 深渊之神
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_葛利·硬骨|r 对话
    .turnin 968 >>交任务 深渊之神
    .target 葛利·硬骨
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>去找里面的 |cRXP_FRIENDLY_吉恩|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_吉恩|r 对话
    >>|cRXP_BUY_从她那里购买最多4个|r |T134419:0|t[传送符文] |cRXP_BUY_|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target 吉恩
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r 对话
    .train 3562 >>学习 |T135757:0|t[传送：铁炉堡]
    .target 贝尔斯塔弗·风暴之眼
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_丁克|r 对话
    .trainer >>训练你的职业技能
    .target 丁克
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_托德雷·铁矿|r 对话
    .trainer >>训练你的职业技能
    .target 托德雷·铁矿
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到|cRXP_FRIENDLY_宾克|r上方的柱子顶端，然后向她的东边稍微走一点，走到箭头指示的位置。调整你的角色位置，直到看起来像是在悬空漂浮，然后通过下线并重新上线来执行下线跳过操作|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布瑞尔索恩|r 对话
    .trainer >>训练你的职业技能
    .target 布瑞尔索恩
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>进入 |cRXP_FRIENDLY_寻尸者祖贝尔|r 的房子
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_寻尸者祖贝尔|r 对话
    .vendor 6382 >>|cRXP_BUY_如果愿意，可为你的宠物购买|r |T133738:0|t[魔典]|cRXP_BUY_|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床顶，然后跳到书架顶。通过下线并重新上线来执行下线跳过操作|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >>进入 |cRXP_FRIENDLY_寻尸者祖贝尔|r 的房子
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床顶，然后跳到书架顶。通过下线并重新上线来执行下线跳过操作|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到狮鹫的头顶。通过登出再登录来执行返回角色选择跳过|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target 考格斯宾
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入矿道地铁
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_在坐地铁期间，如有需要可提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 和 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_后面的任务需要你的|r |T135966:0|t[急救] |cRXP_WARN_达到80点以上|r << Rogue !Dwarf
    .zone Stormwind City >>乘坐地铁前往暴风城
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor 5519 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .accept 2040 >>接受任务 地底突袭
    .target 沉默的舒尼
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_弗伦·长须|r 对话
    .turnin 1338 >>交任务 卡尔·雷矛的订单
    .target 弗伦·长须
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .accept 167 >>接受任务 我的兄弟……
    .accept 168 >>接受任务 收集记忆
    .goto StormwindClassic,65.438,21.175
    .target 维尔德·蓟草
    .target 沉默的舒尼
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在里面与 |cRXP_FRIENDLY_卡瑞娜·麦肯达|r 对话
    .trainer 2879 >>训练你的宠物技能
    .target 卡瑞娜·麦肯达
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer 5515 >>训练你的职业技能
    .target 恩瑞斯·锐矛
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维尔德·蓟草|r 对话
    .accept 167 >>接受任务 我的兄弟……
    .accept 168 >>接受任务 收集记忆
    .target 维尔德·蓟草
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_如果你有闲钱，并且装备或背包里有|r|T132282:0|t[匕首]|cRXP_WARN_，可以学习|r|T135641:0|t[伏击]|cRXP_WARN_。这在以后会为你节省时间|r
    .train 8676 >>学习 |T132282:0|t[伏击]
    .target 夜行者奥斯伯
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保你训练|r |T132320:0|t[潜行]|cRXP_WARN_，|r |T133644:0|t[搜索]|cRXP_WARN_和|r |T136058:0|t[开锁]|cRXP_WARN_，因为你之后会需要它们|r
    .train 1784 >>学习 |T132320:0|t[潜行]
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_确保你学习了|r |T133644:0|t[搜索]|cRXP_WARN_和|r |T136058:0|t[开锁]|cRXP_WARN_，因为你之后会需要它们|r
    .train 921 >>学习 |T133644:0|t[偷窃技能]
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    >>|cRXP_WARN_务必学习|r |T136058:0|t[开锁] |cRXP_WARN_，因为之后会用到|r
    .train 1804 >>学习 |T136058:0|t[开锁]
    .trainer >>训练你的职业技能
    .target 夜行者奥斯伯
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>前往军情七处总部二楼，去找|cRXP_FRIENDLY_“剃刀”雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_"剃刀"雷吉克|r 和 |cRXP_FRIENDLY_马迪亚斯·肖尔|r 对话
    .accept 2281 >>接受任务 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>接受任务 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的 |cRXP_FRIENDLY_武神|r 附近
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .trainer >>训练你的职业技能
    .target 武神
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_吴平|r 对话
    .train 201 >>学习单手剑 << Mage/Rogue/Warlock
    .train 1180 >>学习 匕首 << Mage/Druid/Priest
    .train 202 >>学习双手剑 << Warrior/Paladin/Hunter
    .target 吴平
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_装备|r |T135329:0|t[刽子手之剑]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与里面的 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_向她购买|r |T135324:0|t[长剑]|cRXP_BUY_，或者去拍卖行看看是否有更好或更便宜的选择|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_WARN_如果你钱够的话|r|cRXP_BUY_购买|r |T135324:0|t[长剑]
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂内，与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话。他会给你 |T133739:0|t[|cRXP_LOOT_勇气之书|r]
    .use 6776 >>|cRXP_WARN_使用 |T133739:0|t[|cRXP_LOOT_勇气之书|r] 来激发任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>接受任务勇气之书
    .target 达索瑞恩·拉尔
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1649 >>交任务勇气之书
    .accept 1650 >>接受任务勇气之书
    .target 达索瑞恩·拉尔
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .trainer >>训练你的职业技能
    .target 虔诚的亚瑟
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r 对话
    .accept 3765 >>接受任务 遥远的旅途
    .target 阿古斯·夜语
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与里面的 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里购买一把|r |T135280:0|t[微光重剑] |cRXP_BUY_或者从拍卖行查看更好/更便宜的装备|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_阿德温·凯伦|r 对话
    .vendor 1312 >>|cRXP_BUY_如果你钱够的话|r|cRXP_BUY_购买|r |T135469:0|t[黄昏魔杖]
    >>|cRXP_BUY_或者，如果拍卖行的价格低于52银47铜，也可以从那里购买|r|T135144:0|t[强效魔法杖]|cRXP_BUY_ |r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_阿德温·凯伦|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一个|r |T135469:0|t[暮色魔杖]
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_装备|r |T135469:0|t[暮色魔杖]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_装备|r |T135144:0|t[强效魔法杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .trainer >>训练你的职业技能
    .target 厄苏拉·德林
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_斯巴克尔|r 对话
    .vendor >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买|r |T133738:0|t[魔典：折磨（等级 2）]
    .target 斯巴克尔
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_使用|r |T133738:0|t[魔典：折磨（等级 2）]
    .target 斯巴克尔
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>攀登法师塔。穿过绿色的传送门
    .goto Stormwind City,39.681,79.538,15 >>前往 |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r 对话
    .train 3561 >>学习 |T135763:0|t[传送：暴风城]
    .target 拉瑞麦尼·普尔度
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿古斯·夜语|r 对话
    .accept 3765 >>接受任务 遥远的旅途
    .target 阿古斯·夜语
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沙德拉斯·月树|r 对话
    .train 6756 >>训练你的职业技能
    .target 沙德拉斯·月树
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>进入位于贸易区中环的“空箭袋”店
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r 对话
    >>|cRXP_BUY_从他那里|r|cRXP_BUY_购买一个|r |T135489:0|t[重型弯弓] |cRXP_BUY_和一个|r |T134410:0|t[中型箭袋]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target 兰德瑞亚
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r 对话
    >>|cRXP_BUY_从他那里购买一个|r |T135489:0|t[重型弯弓] |cRXP_BUY_和一个|r |T134410:0|t[中型箭袋] |cRXP_BUY_，或在拍卖行查找更好或更便宜的|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target 兰德瑞亚
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买|T134437:0|t[抗毒药剂] 用于你稍后的 |T132290:0|t[毒药] 职业任务，其余的留着稍后在赤脊山快速交任务 << !Dwarf Rogue
    >>购买以下物品以加快即将在赤脊山和西部荒野完成任务 << Paladin
    >>购买以下物品，以便稍后在赤脊山更快地完成任务 << !Paladin !Rogue/Dwarf Rogue
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134437:0|t[抗毒药剂] << !Dwarf Rogue
    >>|T132794:0|t[灯油] << Paladin
    >>|T134172:0|t[巨型血牙野猪头]
    >>|T134028:0|t[硬秃鹫肉]
    >>|T134321:0|t[香脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target 拍卖师亚克森
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_拍卖师亚克森|r 对话
    >>购买|T134437:0|t[抗毒药剂] 用于你稍后的 |T132290:0|t[毒药] 职业任务，其余的留着稍后在赤脊山和西部荒野快速交任务 << !Dwarf Rogue
    >>购买以下物品，以加快即将在赤脊山和西部荒野完成任务 << !Rogue/Dwarf Rogue
    >>这样可以节省时间，因为你不需要四处跑去找怪击杀。如果你不想购买，可以跳过这一步
    >>|T134437:0|t[抗毒药剂] << !Dwarf Rogue
    >>|T132794:0|t[灯油]
    >>|T134172:0|t[巨型血牙野猪头]
    >>|T134028:0|t[硬秃鹫肉]
    >>|T134321:0|t[香脆蜘蛛肉]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target 拍卖师亚克森
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fp Stormwind >>获取暴风城的飞行路径 << !Human
    .fly Westfall >>飞往西部荒野 << Human
    .target 杜加尔·朗德瑞克
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >>前往西部荒野
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .accept 65 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fp Sentinel Hill >>获取哨兵岭的飞行路径 << !Human
    .fly Redridge >>飞往赤脊山 << Human/Warlock
    .target 索尔
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往赤脊山
    .target 杜加尔·朗德瑞克
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与阿祖拉之塔顶部的|cRXP_FRIENDLY_塞欧克瑞图斯|r 对话
    .accept 94 >>接受任务 法师的眼线
    .target Theocritus
    .dungeon DM
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>前往赤脊山
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在里面与 |cRXP_FRIENDLY_厨师布雷纳|r 对话
    .accept 92 >>接受任务 赤脊山炖肉
    .turnin 92 >>交任务 赤脊山炖肉
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上里面的 |cRXP_FRIENDLY_黑衣威利|r 对话
    .turnin 65 >>交任务 迪菲亚兄弟会
    .accept 132 >>接受任务 迪菲亚兄弟会
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2281 >>交任务 赤脊山的联络员
    .accept 2282 >>接受任务 奥瑟尔伐木场
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_你必须完成这一步，才能进行之后的|r |T132290:0|t[毒药] |cRXP_WARN_任务|r
    >>|cRXP_WARN_站在路径点位置。调整你的镜头和鼠标位置，使你无需移动即可一次性点击 3 个|cRXP_PICK_ |r练习用保险箱|r
    .skill lockpicking,80 >>|cRXP_WARN_在奥瑟尔磨坊打开地上的 |cRXP_PICK_练习用保险箱|r，直到你的|r |T136058:0|t[开锁] 技能达到 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>打开 |cRXP_PICK_卢修斯的保险箱|r。从中拾取 |cRXP_LOOT_盗贼徽记|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_卢修斯|r 对话
    .turnin 2282 >>交任务 奥瑟尔伐木场
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>从你的背包中删除 |T134328:0|t[偷窃技能认证书]，因为不再需要了
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fp Redridge Mountains >>获取赤脊山的飞行路径 << !Human !Warlock
    .fly Westfall >>飞往西部荒野
    .target 艾蕾娜·斯托姆法瑟
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 132 >>交任务 迪菲亚兄弟会
    .accept 135 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>击杀|cRXP_ENEMY_小型结网毒蜘蛛|r和|cRXP_ENEMY_结网毒蜘蛛|r，拾取|cRXP_LOOT_小毒囊|r和|cRXP_LOOT_粘糊的蜘蛛腿|r
    >>|cRXP_WARN_你需要一个|cRXP_LOOT_小毒囊|r来做成|r |T134437:0|t[抗毒药剂] |cRXP_WARN_，后面用来解除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_的debuff|r
    >>|cRXP_WARN_把|cRXP_LOOT_粘糊的蜘蛛腿|r留着后面用|r
    >>|cRXP_WARN_如果你有一个|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，可以直接跳过这步，之后请他们帮你解掉就行|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob 小型结网毒蜘蛛
    .mob 结网毒蜘蛛
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==注意接下来的内容==|r
    >>|cRXP_WARN_按下 Esc，然后进入 → 选项 → 控制|r
    >>|cRXP_WARN_勾选 "启用交互键" 并将 "与目标互动" 绑定到一个按键|r
    >>|cRXP_WARN_另外，建议启用敌方姓名板（默认按键：V）这样可以在塔内的一些拐角处看到躲在后面的敌人|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_密探吉尔妮|r 对话
    >>|cRXP_WARN_你必须完成这个任务来获取你的|r|T132290:0|t[毒药]
    .turnin 2360 >>交任务马迪亚斯和迪菲亚盗贼
    .accept 2359 >>接受任务克拉文之塔
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_如果你还没有装备|r |T135641:0|t[弯曲木匕首] |cRXP_WARN_，并且当前没有装备|r |T135641:0|t[匕首] |cRXP_WARN_，请在此任务中装备它|r
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_施放 |T136225:0|t[石像形态] ，来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .target 索尔
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>前去找 |cRXP_FRIENDLY_珊娜·弗勒|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .skill firstaid,80 >>|cRXP_WARN_将你的|r |T135966:0|t[急救] |cRXP_WARN_提升到 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_珊娜·弗勒|r 对话
    >>|cRXP_WARN_如果你有|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_或者|r |T625999:0|t|cFFFF7C0A德鲁伊|r |cRXP_WARN_朋友，建议让他们帮你移除|r |T136230:0|t[赞吉尔之触] |cRXP_WARN_，而不是自己处理|r
    .train 7934 >>|cRXP_WARN_学习|r |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>制作一枚 |T134437:0|t[抗毒药剂]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_使用你背包里的 |T134437:0|t[抗毒药剂] 来移除 |T136230:0|t[赞吉尔之触] 的减益效果|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>进入 SI:7 总部。前往楼上，前去找 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r 对话
    >>|cRXP_WARN_如果你之前切换成了|r |T135641:0|t[匕首] |cRXP_WARN_，记得重新装备上你的主武器|r << Rogue
    .turnin 135 >>交任务 迪菲亚兄弟会
    .accept 141 >>接受任务 迪菲亚兄弟会
    .turnin 2359 >>交任务 克拉文之塔 << Rogue
    .target 马迪亚斯·肖尔大师
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +开始为死亡矿井集结队伍
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Westfall >>飞往西部荒野
    .target 杜加尔·朗德瑞克
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 141 >>交任务 迪菲亚兄弟会
    .accept 142 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >>前往月溪镇
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>杀死 |cRXP_ENEMY_迪菲亚信使|r。拾取他的 |cRXP_LOOT_神秘的信件|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚信使|r 在月溪镇刷新。它沿着月溪镇北面的道路行走，前往金海岸矿洞和詹戈洛德矿洞。如果你在路上看不到它，就在月溪镇等待它刷新|r
    >>|cRXP_WARN_它的刷新时间为4-5分钟|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 142 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_迪菲亚叛徒|r 对话
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_迪菲亚叛徒|r不在，你可能需要等待他刷新|r
    >>|cRXP_WARN_如果你已经组好了队伍，确保你的队伍已经把前置部分交完了，然后再开始护送|r
    .accept 155 >>接受任务 迪菲亚兄弟会
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>护送 |cRXP_FRIENDLY_迪菲亚叛徒|r 到死亡矿井
    >>|cRXP_WARN_时刻待在|cRXP_FRIENDLY_迪菲亚叛徒|r 身边。在抵达月溪镇时，准备好与 |cRXP_ENEMY_迪菲亚强盗|r 和 |cRXP_ENEMY_迪菲亚路霸|r 战斗|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 155 >>交任务 迪菲亚兄弟会
    .accept 166 >>接受任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .accept 214 >>接受任务 红色丝质面罩
    .target 哨兵瑞尔
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_在哨兵岭南侧刷 |cRXP_ENEMY_豺狼人|r，同时组建一个死亡矿井队伍|r
    .subzone 20 >>当你的小队集结完毕后，前往月溪镇
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >>与小队一起进入迪菲亚斯藏身处
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>击杀 |cRXP_ENEMY_迪菲亚|r。拾取他们身上的 |cRXP_LOOT_红色丝质头巾|r
    >>|cRXP_WARN_你也可以在死亡矿井副本内完成这个|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_工头希斯耐特|r，拾取他的 |cRXP_LOOT_徽章|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan 工头希斯耐特
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀 |cRXP_ENEMY_骷髅矿工|r、|cRXP_ENEMY_亡灵爆破者|r 和 |cRXP_ENEMY_亡灵挖掘者|r，拾取他们的 |cRXP_LOOT_卡片|r
    >>|cRXP_WARN_该任务需要在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob 骷髅矿工
    .mob 亡灵爆破者
    .mob 亡灵挖掘者
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>进入死亡矿井副本
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>击杀死亡矿井内的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>击杀死亡矿井内的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>击杀 |cRXP_ENEMY_斯尼德|r，拾取他的 |cRXP_LOOT_小型高能发动机|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>击杀 |cRXP_ENEMY_艾德温·范克里夫|r，拾取他的 |cRXP_LOOT_头颅|r 以及 |T133471:0|t[|cRXP_LOOT_未寄出的信|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_（如果可能的话）询问你的队友，看他们能否留下来，稍后帮你一起完成圣骑士专属的|cRXP_FRIENDLY_达芙妮·斯迪威尔|r护送任务|r << Paladin
    .subzone 920 >>从 |cRXP_ENEMY_艾德温·范克里夫|r 东侧的后门离开死亡矿井
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >>前往农田里去找|cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r 在她的田地里对话，开始护送
    >>|cRXP_WARN_她在田地里来回巡逻|r
    >>|cRXP_WARN_小心，这会有点困难。你将面对3波各3个，然后4个，然后5个17-18级 |cRXP_ENEMY_迪菲亚袭击者|r
    .turnin 1650 >>交任务勇气之书
    .accept 1651,1 >>接受任务勇气之书
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >>https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> 点击此处查看视频指南
    .target 达芙妮·斯迪威尔
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>保护 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    >>|cRXP_WARN_如果你或 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r 死亡，任务将失败，你必须重新尝试|r
    >>|cRXP_WARN_小心，这会有点困难。你将面对3波各3个，然后4个，然后5个17-18级 |cRXP_ENEMY_迪菲亚袭击者|r
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达芙妮·斯迪威尔|r 对话
    >>|cRXP_WARN_她在田地里来回巡逻|r
    .turnin 1651 >>交任务勇气之书
    .accept 1652 >>接受任务勇气之书
    .target 达芙妮·斯迪威尔
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >>前往西部荒野灯塔
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .accept 103 >>接受任务 长明的灯塔
    .turnin 103 >>交任务 长明的灯塔
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .accept 104 >>接受任务 海岸上的威胁
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀 |cRXP_ENEMY_老瞎眼|r，拾取他的 |cRXP_LOOT_鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r |cRXP_WARN_在长滩来回巡逻。如果找不到他，跳过这一步|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_葛瑞森船长|r对话
    .turnin 104 >>交任务 海岸上的威胁
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >>放弃任务 长明的灯塔
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >>独自进入迪菲亚藏身处
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>击杀死亡矿井副本外的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>击杀死亡矿井内的 |cRXP_ENEMY_迪菲亚|r，拾取他们的 |cRXP_LOOT_红色丝质面罩|r
    >>|cRXP_WARN_如果死亡矿井内没有更多的 |cRXP_ENEMY_迪菲亚|r，改为在外面击杀他们|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >>死亡并在 |cRXP_FRIENDLY_灵魂医者|r 处重生
    .target 灵魂医者
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_装备|r |T135280:0|t[微光重剑]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_装备|r |T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格里安·斯托曼|r 对话
    .turnin 166 >>交任务 迪菲亚兄弟会
    .target 格里安·斯托曼
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_哨兵瑞尔|r 对话
    .turnin 214 >>交任务 红色丝质面罩
    .target 哨兵瑞尔
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >>放弃任务 未寄出的信。这个任务后面再做
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>施放|T135763:0|t[传送：暴风城]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .train 2138 >>训练你的职业技能
    .target 艾尔莎林
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索尔|r 对话
    .fly Stormwind >>飞往暴风城
    .zoneskip Stormwind City
    .target 索尔
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入屠宰场。下楼
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .train 6202 >>训练你的职业技能
    .target 厄苏拉·德林
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂内，与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1652 >>交任务勇气之书
    .accept 1653 >>接受任务 正义试炼
    .target 达索瑞恩·拉尔
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 19835 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风城大教堂内的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 附近
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .train 8103 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    .train 1856 >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的 |cRXP_FRIENDLY_武神|r 附近
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .train 6192 >>训练你的职业技能
    .target 武神
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_维尔德·蓟草|r 对话
    .turnin 167 >>交任务 我的兄弟……
    .turnin 168 >>交任务 收集记忆
    .target 维尔德·蓟草
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .trainer >>训练你的职业技能
    .target 恩瑞斯·锐矛
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沉默的舒尼|r 对话
    .turnin 2040 >>交任务 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target 沉默的舒尼
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_比利巴布·旋轮|r 对话
    .vendor 5519 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target 比利巴布·旋轮
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂内，与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_达索瑞恩·拉尔|r 对话
    .turnin 1652 >>交任务勇气之书
    .accept 1653 >>接受任务 正义试炼
    .target 达索瑞恩·拉尔
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 19835 >>训练你的职业技能
    .target 虔诚的亚瑟
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>前往暴风城大教堂内的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 附近
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .train 8103 >>训练你的职业技能
    .target 高阶牧师劳瑞娜
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_夜行者奥斯伯|r 对话
    .train 1856 >>训练你的职业技能
    .target 夜行者奥斯伯
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>前往指挥中心内的 |cRXP_FRIENDLY_武神|r 附近
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_武神|r 对话
    .train 6192 >>训练你的职业技能
    .target 武神
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>施放|T135763:0|t[传送：暴风城]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与塔顶的 |cRXP_FRIENDLY_艾尔莎林|r 对话
    .train 2138 >>训练你的职业技能
    .target 艾尔莎林
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >>施放传送：月光林地
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>前往月光林地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洛甘纳尔|r 对话
    .train 8926 >>训练你的职业技能
    .target 洛甘纳尔
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>进入矿道地铁
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_在坐地铁期间，如有需要可提升你的 |r|T135966:0|t[急救]|cRXP_WARN_ 和 |r|T133971:0|t[烹饪] |cRXP_WARN_技能|r
    .zone Ironforge >>乘坐矿道地铁前往铁炉堡
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考格斯宾|r 对话
    .vendor 5175 >>|cRXP_BUY_从他这里|r|T133024:0|t|cRXP_BUY_买一个|r [青铜管] (如果有)
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target 考格斯宾
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 在里面与 |cRXP_FRIENDLY_布里维夫·石手|r 对话
    .train 197 >>学习双手斧技能 << Warrior
    .train 199 >>训练双手锤 << Warrior
    .train 266 >>学习枪械 << Hunter
    .target 布里维夫·石拳
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布雷文·寒钢|r 在楼下对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135427:0|t[重型飞刀]
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target 布雷文·寒钢
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_装备|r |T135427:0|t[重型飞刀]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .fp Ironforge >>获取铁炉堡的飞行路径
    .target 格莱斯·瑟登
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_书籍：下层的力量|r] 来开启任务|r
    .accept 968 >>接受任务 深渊之神
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与里面的 |cRXP_FRIENDLY_葛利·硬骨|r 对话
    .turnin 968 >>交任务 深渊之神
    .target 葛利·硬骨
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >>炉石回黑海岸
    .zoneskip Darkshore
    .dungeon DM


----End of Hunter/All 2x Deadmines section----

    ]])
