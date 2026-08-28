if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 十字军打击 - 4 (艾尔文森林)
#title 十字军打击
#next 激励典范 - 6 (艾尔文森林)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_你必须至少达到4级才能获取|r |T133816:0|t[铭刻手套 - 十字军打击] |cRXP_WARN_因为这是获取|r |T135959:0|t[审判] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 十字军打击] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >>前往艾尔文森林
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>前去找 |cRXP_FRIENDLY_萨缪尔修士|r
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .train 20271 >>学习 |T135959:0|t[审判]
    .target 萨缪尔修士
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>击杀|cRXP_ENEMY_迪菲亚暴徒|r。从他们身上拾取|T134916:0|t|cRXP_LOOT_[审判圣契]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob 迪菲亚暴徒
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判圣契]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_施放|r |T135959:0|t[审判] |cRXP_WARN_10次以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益效果|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[审判圣契]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 十字军打击 - 4 (丹莫罗)
#title 十字军打击
#next 激励典范 - 6 (丹莫罗)

step
    +|cRXP_WARN_你必须至少达到4级才能获取|r |T133816:0|t[铭刻手套 - 十字军打击] |cRXP_WARN_因为这是获取|r |T135959:0|t[审判] 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 十字军打击] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>前往 丹莫罗
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>前去找 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r对话
    .train 20271 >>学习 |T135959:0|t[审判]
    .target 布罗莫斯·格鲁诺尔
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>击杀|cRXP_ENEMY_霜鬃巨魔幼崽|r。拾取它们的|T134916:0|t|cRXP_LOOT_[审判圣契]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob 霜鬃巨魔新兵
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判圣契]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_施放|r |T135959:0|t[审判] |cRXP_WARN_10次以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益效果|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[审判圣契]|r |cRXP_WARN_学习|r |T133816:0|t[铭刻手套 - 十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 清算之手 - 14 (洛克莫丹)
#title 清算之手
#next 激励典范 - 6 (艾尔文森林)


step
    +|cRXP_WARN_你应该至少达到14级才能在洛克莫丹独自获得|r |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_|r
    >>|cRXP_WARN_你必须至少达到8级，因为这是装备|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_你应该至少达到14级才能在洛克莫丹独自获得|r |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>前往铁炉堡
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .train 853 >>训练 |T135963:0|t[正义之锤号]
    .target 布兰度尔·铁锤
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >>前往洛克莫丹
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>前往碎石洞穴
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>前往水下洞穴内的 |cRXP_PICK_沉没的圣物箱|r
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>打开水下的 |cRXP_PICK_沉没的圣物箱|r。拾取其中的 |T134916:0|t|cRXP_LOOT_[公正圣契]|r
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>离开洞穴
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 碎石穴居人
    .mob 碎石怪斥候
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >>前往湿地
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob 湿地鳄鱼幼崽
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 清算之手]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 手套
#name 清算之手 - 20 (西部荒野)
#title 清算之手
#next 驱邪术 - 24 (暮色森林)


step
    +|cRXP_WARN_你应该至少达到20级才能在西部荒野独自获得|r |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_|r
    >>|cRXP_WARN_你必须至少达到8级，因为这是装备|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r 的等级要求
    >>在尝试获取 |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_之前，你需要先提升更多等级|r
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_你应该至少达到20级才能在西部荒野独自获得|r |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +强烈建议你改为在洛克莫丹获取 |T133816:0|t[铭刻手套 - 清算之手] |cRXP_WARN_，因为这样简单得多|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 853 >>训练 |T135963:0|t[制裁之锤]
    .target 虔诚的亚瑟
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >>前往西部荒野
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>击杀 |cRXP_ENEMY_迪菲亚苦工|r。拾取他们的 |T134916:0|t|cRXP_LOOT_[公正圣契]|r
    >>|cRXP_WARN_因为|cRXP_ENEMY_迪菲亚苦工|r 是两只成对巡逻的，所以要特别小心|r
    >>|cRXP_WARN_避开 |cRXP_ENEMY_丑陋的迪菲亚懒汉|r，因为他伤害极高|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    .mob 矮小的河爪豺狼人
    .mob 河爪豺狼人前锋
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_将敌人打至残血。对其施放|r |T135963:0|t[制裁之锤] |cRXP_WARN_，并在其处于昏迷状态下将其击杀。如此重复10次，以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_效果|r
    .mob 结网毒蜘蛛
    .mob 小型结网毒蜘蛛
    .mob 饥饿的恐狼
    .mob 疯狂的恐狼
    .mob 绿色独行蛛
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[公正圣契]|r |cRXP_WARN_来学习|r |T133816:0|t[铭刻手套 - 清算之手]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 神圣之地 - 4 (洛克莫丹)
#title 神圣之地
#next 清算之手 - 14 (洛克莫丹)

step
    +|cRXP_WARN_你必须至少达到4级才能获取|r |T133815:0|t[铭刻胸部 - 神圣之地] |cRXP_WARN_因为这是获取|r |T135906:0|t[力量祝福] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 神圣之地]之前，你需要先提升更多等级|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>前往铁炉堡
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .target 布兰度尔·铁锤
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >>前往洛克莫丹
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>进入塞尔萨玛旅店
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>进入底层最东边的房间
    .goto Loch Modan,35.80,49.57,8 >>去找 |T134916:0|t|cRXP_LOOT_[祝福圣契]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>拾取在桌子上的 |T134916:0|t|cRXP_LOOT_[祝福圣契]|r
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[祝福圣契]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_对5位不同的友方玩家（包括你自己） |r施放|cRXP_WARN_ |T135906:0|t[力量祝福] |r或者|cRXP_WARN_ |T135970:0|t[智慧祝福] 以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_对5位不同的友方玩家（包括你自己） |r施放|cRXP_WARN_ |T135906:0|t[力量祝福] 以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_使用|r |T134916:0|t[祝福圣契] |cRXP_WARN_来学习|r |T133815:0|t[铭刻胸部 - 神圣之地]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 洛丹伦号角 - 12 (西部荒野)
#title 洛丹伦的号角
#next 清算之手 - 20 (西部荒野)


step
    +|cRXP_WARN_你应该至少达到12级才能在西部荒野独自获得|r |T133815:0|t[铭刻胸部 - 洛丹伦号角] |cRXP_WARN_|r
    >>|cRXP_WARN_你必须至少达到4级，因为这是学习|r |T135906:0|t[力量祝福] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 洛丹伦号角]之前，你需要先提升更多等级|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_你应该至少达到12级才能在西部荒野独自获得|r |T133815:0|t[铭刻胸部 - 洛丹伦号角] |cRXP_WARN_|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 20271 >>学习 |T135959:0|t[审判]
    .train 19740 >>学习 |T135906:0|t[力量祝福]
    .target 虔诚的亚瑟
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_强烈建议你改为在洛克莫丹获取|r |T134229:0|t[洛丹伦号角] |cRXP_WARN_，因为这样简单得多|r
    >>|cRXP_WARN_不建议使用|r |T134229:0|t[洛丹伦号角符文] |cRXP_WARN_来替代|r |T236250:0|t[神圣风暴符文] |cRXP_WARN_或|r |T135961:0|t[殉道者圣印符文]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>前往西部荒野
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>攻击|cRXP_WARN_ 不死的劳工|cRXP_ENEMY_。|r当它倒地时（你有10秒的时间执行此操作），使用|r |T135920:0|t[神圣伤害] |cRXP_WARN_例如|r |T135959:0|t[审判] |cRXP_WARN_将其击杀。然后摸尸体获取|r |T134916:0|t|cRXP_LOOT_[祝福圣契]|r
    >>|cRXP_WARN_|cRXP_ENEMY_不死的劳工|r显示为精英，但血量和伤害与普通小怪相同|r
    >>|cRXP_WARN_|cRXP_ENEMY_不死的劳工|r 与整个金海岸矿洞和詹戈洛德矿洞内的怪物共享刷新。如果你在其中一个地方找不到它，可以去另一个地方碰碰运气|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[祝福圣契]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_对5位不同的友方玩家（包括你自己） |r施放|cRXP_WARN_ |T135906:0|t[力量祝福] |r或者|cRXP_WARN_ |T135970:0|t[智慧祝福] 以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_对5位不同的友方玩家（包括你自己） |r施放|cRXP_WARN_ |T135906:0|t[力量祝福] 以获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_增益|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[祝福圣契]|r |cRXP_WARN_学习|r |T133815:0|t[铭刻胸部 - 洛丹伦号角]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 神盾 - 8 (艾尔文森林)
#title 神盾
#next 责难 - 10 (暴风城)

step
    +|cRXP_WARN_你必须至少达到8级才能获取|r |T133815:0|t[铭刻胸部 - 责难] |cRXP_WARN_因为这是获取|r |T135949:0|t[纯净术] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 神盾]之前，你需要先提升更多等级|r
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 1152 >>训练 |T135949:0|t[纯净术]
    .target 虔诚的亚瑟
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>前往艾尔文森林
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>进入玉石矿洞
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >>去找在洞穴地面的 |cRXP_FRIENDLY_受伤的冒险者|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_对|r受伤的冒险者|cRXP_WARN_|r |cRXP_FRIENDLY_施放|r |T135949:0|t[纯净术]
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_对|cRXP_FRIENDLY_受伤的冒险者|r施放|r|T135949:0|t[纯净术] |cRXP_WARN_后与他对话，即可获得|r|T134419:0|t[神盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t神盾符文 |cRXP_WARN_学习|r |T133815:0|t[铭刻胸甲 - 神盾]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 神盾 - 8 (丹莫罗)
#title 神盾
#next 责难 - 10 (铁炉堡)

step
    +|cRXP_WARN_你必须至少达到8级才能获取|r |T133815:0|t[铭刻胸部 - 责难] |cRXP_WARN_因为这是获取|r |T135949:0|t[纯净术] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T133815:0|t[铭刻胸部 - 神盾]之前，你需要先提升更多等级|r
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>前往铁炉堡
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_布兰度尔·铁锤|r 对话
    .train 1152 >>训练 |T135949:0|t[纯净术]
    .target 布兰度尔·铁锤
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >>前往 丹莫罗
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >>去找地上 |cRXP_FRIENDLY_受伤的冒险者|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_对|r受伤的冒险者|cRXP_WARN_|r |cRXP_FRIENDLY_施放|r |T135949:0|t[纯净术]
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_对|cRXP_FRIENDLY_受伤的冒险者|r施放|r|T135949:0|t[纯净术] |cRXP_WARN_后与他对话，即可获得|r|T134419:0|t[神盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t神盾符文 |cRXP_WARN_学习|r |T133815:0|t[铭刻胸甲 - 神盾]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 神圣之光 - 10 (暴风城)
#title 神圣之光
#next 洛丹伦号角 - 12 (西部荒野)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到10级才能在暴风城独自获得|r |T133815:0|t[铭刻胸部 - 神圣之光] |cRXP_WARN_|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>前往暴风城
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>去找大教堂里面的 |cRXP_FRIENDLY_罗姆鲁斯修士|r
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>与|cRXP_FRIENDLY_罗姆鲁斯修士|r 对话
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>下楼进入大教堂地下墓穴的西侧
    .goto StormwindClassic,32.86,24.77,8 >>去找墓穴中的|cRXP_LOOT_烧焦的笔记|r
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>拾取蜡烛旁的|cRXP_LOOT_烧焦的笔记|r
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>去找岛上的 |cRXP_FRIENDLY_艾达·盖尔哈特|r
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>与 |cRXP_FRIENDLY_艾达·盖尔哈特|r 对话来开始战斗
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>击败 |cRXP_ENEMY_艾达·盖尔哈特|r
    >>|cRXP_WARN_记得 |r对她|cRXP_WARN_ 预读|r |T135924:0|t[十字军圣印]
    >>|cRXP_WARN_注意她的施法|r |T136197:0|t[暗影震击] |cRXP_WARN_（立即造成45点暗影伤害，消耗她75点法力值。你应尽快击杀她，让她最多只能施放3次）|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_艾达·盖尔哈特|r 之后：|r
    >>与 |cRXP_FRIENDLY_艾达·盖尔哈特|r 再次对话以获得 |T134419:0|t[神圣之光符文]
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >>从背包中摧毁|T134939:0|t[烧焦的笔记]，因为不再需要了
step
    .train 410015 >>|cRXP_WARN_使用|r |T134419:0|t[神圣之光符文] |cRXP_WARN_学习|r |T133815:0|t[铭刻胸甲 - 神圣之光]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 胸部
#name 神圣风暴 - 25 (黑海岸)
#title 神圣风暴
#next 神圣牺牲 - 25 (艾泽拉斯)

step
    #completewith LibramS
    +|cRXP_WARN_为了获取|r |T133815:0|t[铭刻胸部 - 神圣风暴] |cRXP_WARN_你应当至少达到25级，并且建议寻找至少2名其他25级的圣骑士一起轻松完成|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >>前往黑海岸
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>前往奥萨拉克斯之塔
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>打开奥萨拉克斯之塔顶部桌子上的|cRXP_PICK_奇异宝珠|r。拾取|cRXP_LOOT_奥萨拉克斯宝珠|r
    >>|cRXP_WARN_小心这座塔中的小怪很强（28-31级）|r
    >>|cRXP_WARN_请务必小心，因为|cRXP_ENEMY_暗滩唤魔师|r会施放|r |T136197:0|t[暗影箭] |cRXP_WARN_（远程法术：造成约175点暗影伤害）。建议尽可能多利用卡视角来躲避它们|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >>前往灰谷
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>前去找 |cRXP_FRIENDLY_净化者德尔格伦|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>与|cRXP_FRIENDLY_净化者德尔格伦|r 对话
    .turnin 78088 >>交任务 奇怪的神器
    .accept 78089 >>接受任务 暴风城的建议
    .target 净化者德尔格伦
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>与|cRXP_FRIENDLY_净化者德尔格伦|r 对话
    .accept 78089 >>接受任务 暴风城的建议
    .target 净化者德尔格伦
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >>前往暴风城
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>去找大教堂里面的|cRXP_FRIENDLY_纯洁的凯萨琳|r
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>与|cRXP_FRIENDLY_纯洁的凯萨琳|r 对话
    .turnin 78089 >>交任务 来自暴风城的建议
    .accept 78090 >>接受任务 第二意见
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>去找“已宰的羔羊”旅店内的|cRXP_FRIENDLY_厄休拉·德林|r
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>与|cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .turnin 78090 >>交任务 第二意见
    .accept 78091 >>接受任务 赚取你的盐分
    .target 厄苏拉·德林
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往赤脊山
    .zoneskip Redridge Mountains
    .target 杜加尔·朗德瑞克
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_如果你还没有|r |T134596:0|t[铭刻裤子 - 复仇者之盾] |cRXP_WARN_，建议现在去获取。如果你不想做，可以跳过此步骤|r
    >>击杀 |cRXP_ENEMY_亵渎者多赞姆|r。拾取他的 |T134419:0|t[复仇者符文]|r
    >>|cRXP_WARN_他在外面有3个刷新点：东南部（撕裂者山谷）、中部（石堡要塞哨塔外的营地）和北部（撕裂者营地）。虽然他是“稀有”怪物，但刷新速度很快|r
    >>|cRXP_WARN_为了缩短你的寻找时间，可以在综合频道中询问是否有人见过他（在聊天框中输入 /1）|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[复仇者符文] |cRXP_WARN_来学习|r |T134596:0|t[铭刻裤子 - 复仇者之盾]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>击杀 |cRXP_ENEMY_黑石召唤师|r， |cRXP_ENEMY_黑石勇士|r 和 |cRXP_ENEMY_黑石追踪者|r。拾取它们的 |cRXP_LOOT_召唤师之盐|r
    >>|cRXP_WARN_|cRXP_LOOT_召唤师之盐|r 是独立分配的（每只怪都有几率为队伍中的每个人掉落该物品），因此你完全可以轻松地与他人组队完成这个任务|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >>前往暴风城
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>去找“已宰的羔羊”旅店内的|cRXP_FRIENDLY_厄休拉·德林|r
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>与|cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .turnin 78091 >>交任务 赚取盐分
    .accept 78092 >>接受任务 它必须被销毁
    .target 厄苏拉·德林
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >>前往灰谷
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>前往屠魔峡谷
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>击杀|cRXP_ENEMY_灼热的地狱火|r，|cRXP_ENEMY_恶魔卫士|r，|cRXP_ENEMY_玛诺洛克鞭笞者|r 和 |cRXP_ENEMY_军团犬|r。拾取它们的 |cRXP_LOOT_玛诺洛斯微粒|r
    >>|cRXP_WARN_|cRXP_LOOT_玛诺洛斯微粒|r是独立掉落的（每个怪物都有几率分别为队伍中的每个人掉落微粒），因此你完全可以轻松地与他人组队完成这个任务|r
    >>|cRXP_WARN_请务必小心，因为 |cRXP_ENEMY_灼热的地狱火|r 拥有 |r |T135802:0|t[献祭光环] |cRXP_WARN_（被动近战范围伤害：每3秒造成27-28点火焰伤害），|cRXP_ENEMY_恶魔卫士|r 会施放 |r |T132154:0|t[击倒] |cRXP_WARN_（瞬发近战：造成约140点伤害并击晕2秒），而|cRXP_ENEMY_玛诺洛克鞭笞者|r 会施放 |r |T135817:0|t[火焰之鞭] |cRXP_WARN_（瞬发远程：造成约45点火焰伤害，随后在21秒内每3秒造成12-13点火焰伤害）和 |r |T136197:0|t[暗影箭] |cRXP_WARN_（远程读条：造成约125点暗影伤害）|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>点击空中的 |cRXP_PICK_玛诺洛斯之矛|r，然后点击地上的 |cRXP_PICK_碎裂的宝珠|r
    .turnin 78092 >>交任务 必毁无疑
    .goto Ashenvale,89.48,77.03
    .accept 78093 >>接受任务 回到德格伦
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>前去找 |cRXP_FRIENDLY_净化者德尔格伦|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>与|cRXP_FRIENDLY_净化者德尔格伦|r 对话
    .turnin 78093 >>交任务 回到德格伦
    .train 410014 >>这将教会你 |T133815:0|t[铭刻胸甲 - 神圣风暴]
    .target 净化者德尔格伦
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 激励典范 - 6 (艾尔文森林)
#title 激励典范
#next 神盾 - 8 (艾尔文森林)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到6级才能在艾尔文森林独自获得|r |T134596:0|t[铭刻裤子 - 激励典范] |cRXP_WARN_|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>前往艾尔文森林
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>去找 |cRXP_FRIENDLY_冒险者的残骸|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_与守在|cRXP_FRIENDLY_ 冒险者的残骸|r 旁的另一位圣骑士、牧师或德鲁伊组队，或者在综合频道中寻求圣骑士、牧师或德鲁伊的帮助（在聊天框中输入 /1）|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_完成仪式后，会刷新一个|cRXP_FRIENDLY_冒险者的灵魂|r并随后死去。拾取|r |T134419:0|t|cRXP_LOOT_[激励符文]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[激励符文]|r |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 激励典范]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 激励典范 - 6 (丹莫罗)
#title 激励典范
#next 神盾 - 8 (丹莫罗)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到6级才能在丹莫罗独自获得|r |T134596:0|t[铭刻裤子 - 激励典范] |cRXP_WARN_|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>前往 丹莫罗
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>进入灰色洞穴
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>去找洞穴里地上的 |cRXP_FRIENDLY_冒险者的残骸|r
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_与守在|cRXP_FRIENDLY_ 冒险者的残骸|r 旁的另一位圣骑士、牧师或德鲁伊组队，或者在综合频道中寻求圣骑士、牧师或德鲁伊的帮助（在聊天框中输入 /1）|r
    >>|cRXP_WARN_与地上的|cRXP_FRIENDLY_|r冒险者的残骸|r|cRXP_WARN_对话以开始仪式，或者在加入队伍后，点击其他玩家的|r |T136223:0|t[灵魂仪式]
    >>|cRXP_WARN_完成仪式后，会刷新一个|cRXP_FRIENDLY_冒险者的灵魂|r并随后死去。拾取|r |T134419:0|t|cRXP_LOOT_[激励符文]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[激励符文]|r |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 激励典范]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 责难 - 10 (铁炉堡)
#title 责难
#next 殉道圣印 - 10 (暴风城)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到10级才能在铁炉堡独自获得|r |T134596:0|t[铭刻裤子 - 责难] |cRXP_WARN_|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>前往铁炉堡
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>朝旅店内的|cRXP_FRIENDLY_布鲁克·麦须|r走去
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>与|cRXP_FRIENDLY_布鲁克·麦须|r 对话
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>与|cRXP_FRIENDLY_布鲁亚特|r对话以开始战斗
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心，他会施放|r |T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得 |r对他|cRXP_WARN_ 预读|r |T135924:0|t[十字军圣印]
    >>|cRXP_WARN_千万不要失误对他施放|r |T135906:0|t[力量祝福] |cRXP_WARN_|r
    >>|cRXP_WARN_如果必要的话|r |cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t[圣光术]
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_布鲁阿特|r
    >>|cRXP_WARN_小心，他会施放|r |T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得 |r对他|cRXP_WARN_ 预读|r |T135924:0|t[十字军圣印]
    >>|cRXP_WARN_千万不要对他施放|r |T135906:0|t[力量祝福] |cRXP_WARN_|r
    >>|cRXP_WARN_将他风筝到楼上的阳台，然后从旅店外跳下，必要时施放|r |T135920:0|t[圣光术] |cRXP_WARN_如果必要的话|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_布鲁阿尔特|r后：|r
    >>再次与|cRXP_FRIENDLY_布鲁克·麦须|r对话，领取|T134419:0|t[责难符文]
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t[责难符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_布鲁阿特|r 战斗|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[责难符文] |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 责难]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 责难 - 10 (暴风城)
#title 责难
#next 殉道圣印 - 10 (暴风城)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到10级才能在暴风城独自获得|r |T134596:0|t[铭刻裤子 - 责难] |cRXP_WARN_|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>前往暴风城
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>前往公园旅店内的|cRXP_FRIENDLY_丽芙·布拉德福德|r 处
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>与 |cRXP_FRIENDLY_丽芙·布拉德弗|r 对话
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>与 |cRXP_FRIENDLY_斯图阿特|r 对话来开始一场战斗
    >>击败 |cRXP_ENEMY_斯图阿特|r
    >>|cRXP_WARN_小心，他会施放|r |T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得 |r对他|cRXP_WARN_ 预读|r |T135924:0|t[十字军圣印]
    >>|cRXP_WARN_千万不要失误对他施放|r |T135906:0|t[力量祝福] |cRXP_WARN_|r
    >>|cRXP_WARN_把他风筝到楼上，然后跳下来，如有需要就施放|r|T135920:0|t[圣光术] |cRXP_WARN_|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>击败 |cRXP_ENEMY_斯图阿特|r
    >>|cRXP_WARN_小心，他会施放|r |T132939:0|t[反手一击] |cRXP_WARN_（击晕你2秒）|r
    >>|cRXP_WARN_记得 |r对他|cRXP_WARN_ 预读|r |T135924:0|t[十字军圣印]
    >>|cRXP_WARN_千万不要不小心对他施放|r|T135906:0|t[力量祝福] |cRXP_WARN_|r
    >>|cRXP_WARN_把他风筝到楼上，然后跳下来，如有需要就施放|r|T135920:0|t[圣光术] |cRXP_WARN_|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_斯图阿特|r 之后：|r
    >>再次与|cRXP_FRIENDLY_丽芙·布拉德弗|r 对话以获得|T134419:0|t[责难符文]
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t[责难符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_斯图阿特|r 战斗|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[责难符文] |cRXP_WARN_学习|r |T134596:0|t[铭刻裤子 - 责难]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 光环掌握- 24 (暮色森林)
#title 光环掌握
#next 圣光道标 - 25 (声望)

step
    +|cRXP_WARN_你必须至少达到24级才能获取|r |T134596:0|t[铭刻裤子 - 光环掌握] |cRXP_WARN_因为这是获取|r |T135983:0|t[超度亡灵] 的等级要求
    >>在尝试获得|cRXP_WARN_ |T134596:0|t[铭刻裤子 - 光环掌握]之前，你需要先提升更多等级|r
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_虔诚的亚瑟|r 对话
    .train 2878 >>训练 |T135983:0|t[超度亡灵]
    .target 虔诚的亚瑟
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >>前往暮色森林
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>击杀 |cRXP_ENEMY_迪菲亚夜行者|r，|cRXP_ENEMY_迪菲亚夜贼|r 和 |cRXP_ENEMY_迪菲亚附魔师|r。拾取它们的 |T134916:0|t|cRXP_LOOT_[逐魔圣契]|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_迪菲亚夜行者|r 和 |cRXP_ENEMY_迪菲亚夜贼|r 会施放|r |T136093:0|t[减速毒药] |cRXP_WARN_（降低移动速度35%，持续25秒），|r |T132090:0|t[背刺] |cRXP_WARN_（从背后造成双倍伤害）。 |cRXP_ENEMY_迪菲亚夜行者|r 处于|r |T132320:0|t[潜行]|cRXP_WARN_状态， |cRXP_ENEMY_迪菲亚附魔师|r 会施放|r |T135812:0|t[火球术] |cRXP_WARN_（造成150点火焰伤害）和|r |T135843:0|t[冰甲术] |cRXP_WARN_（被击中后会降低对方的移动和攻击速度）|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[逐魔圣契]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>击杀|cRXP_ENEMY_骸骨魔|r 和|cRXP_ENEMY_恐怖骸骨|r
    .aura 408828 >>|cRXP_WARN_施放|r |T135983:0|t[超度亡灵] |cRXP_WARN_然后用|r |T135903:0|t[驱邪术] 击杀它们 |cRXP_WARN_5次来获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须在能提供经验值的敌人身上完成此操作才能获得层数|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[逐魔圣契]|r |cRXP_WARN_来学习|r |T134596:0|t[铭刻裤子 - 光环掌握]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腿部
#name 复仇者之盾 - 25 (赤脊山)
#title 复仇者之盾
#next 激励典范 - 6 (艾尔文森林)

step
    +|cRXP_WARN_你应该至少达到25级才能在赤脊山独自获得|r |T134596:0|t[铭刻裤子 - 责难] |cRXP_WARN_|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >>前往赤脊山
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>杀死 |cRXP_ENEMY_亵渎者多赞姆|r。拾取他的 |T134419:0|t[复仇者符文]|r
    >>|cRXP_WARN_他在外面有3个刷新点：东南部（撕裂者山谷）、中部（石堡要塞哨塔外的营地）和北部（撕裂者营地）。虽然他是“稀有”怪物，但刷新速度很快|r
    >>|cRXP_WARN_为了缩短你的寻找时间，可以在综合频道中询问是否有人见过他（在聊天框中输入 /1）|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[复仇者符文] |cRXP_WARN_来学习|r |T134596:0|t[铭刻裤子 - 复仇者之盾]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#title 灵活防护
#name 灵活防护 - 34 (阿拉希高地)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_你必须至少达到34级才能获得|r |T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_你必须学习|r |T135971:0|t[公正圣印] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_你必须学习|r |T135896:0|t[圣盾术] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_你必须学习|r |T135971:0|t[公正圣印] |cRXP_WARN_来获得|r |T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>前往阿拉希高地
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_阿拉希高地的巨魔和食人魔也会掉落|r |T135261:0|t[|cRXP_LOOT_失去光泽的祈祷念珠|r]
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>击杀|cRXP_ENEMY_辛迪加雇佣兵|r、|cRXP_ENEMY_辛迪加巡路者|r 和 |cRXP_ENEMY_辛迪加路霸|r。拾取他们的|T135261:0|t[|cRXP_LOOT_失去光泽的祈祷念珠 I|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob 辛迪加雇佣兵
    .mob 辛迪加巡路者
    .mob 辛迪加路霸
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_在自己身上|r |cRXP_WARN_施放|r |T135906:0|t[力量祝福]
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_继续击杀敌人来获得|r |T135260:0|t[|cRXP_LOOT_神圣祈祷念珠|r]
    >>|cRXP_WARN_你必须有一个活跃的|r |T135906:0|t[力量祝福] |cRXP_WARN_buff|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>击杀|cRXP_ENEMY_辛迪加雇佣兵|r、|cRXP_ENEMY_辛迪加巡路者|r 和 |cRXP_ENEMY_辛迪加路霸|r。拾取他们的|T135261:0|t[|cRXP_LOOT_失去光泽的祈祷念珠 I|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob 辛迪加雇佣兵
    .mob 辛迪加巡路者
    .mob 辛迪加路霸
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_在战斗中且生命值低于40% 时施放|r |T135896:0|t[圣盾术] |cRXP_WARN_|r 来获得 |T135260:0|t[|cRXP_LOOT_神圣祈祷念珠|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>击杀|cRXP_ENEMY_辛迪加雇佣兵|r、|cRXP_ENEMY_辛迪加巡路者|r 和 |cRXP_ENEMY_辛迪加路霸|r。拾取他们的|T135261:0|t[|cRXP_LOOT_失去光泽的祈祷念珠 I|r]
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob 辛迪加雇佣兵
    .mob 辛迪加巡路者
    .mob 辛迪加路霸
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_对正在逃跑的敌人施放|r |T135971:0|t[公正圣印] |cRXP_WARN_随后施放|r |T135959:0|t[审判] |cRXP_WARN_以获得|r |T135260:0|t[|cRXP_LOOT_神圣祈祷念珠 III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_使用|r |T135260:0|t[|cRXP_LOOT_神圣祈祷念珠|r] |cRXP_WARN_将它们组合成|r |T133289:0|t[|cRXP_LOOT_圣光念珠|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与激流堡内的|cRXP_FRIENDLY_阿提库斯修士|r对话，以获得|T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_虔敬符文|r] |cRXP_WARN_来学习|r |T236251:0|t[灵活防护]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 腰带
#name 圣光出鞘 - 40 (艾泽拉斯)
#title 圣光出鞘

step
    #completewith next
    .zone Desolace >>前往凄凉之地
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>拾取地上的 |cRXP_PICK_破碎的战锤|r 以获得 |T133041:0|t[|cRXP_LOOT_破碎的锤子|r]
    .use 215441 >>|cRXP_WARN_使用 |T133041:0|t[|cRXP_LOOT_破碎的锤子|r] 来开启任务|r
    .collect 215441,1
    .accept 79939 >>接受任务 破碎的锤子
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>击杀 |cRXP_ENEMY_火刃召唤师|r。拾取它们的 |T133471:0|t[|cRXP_LOOT_被撕碎的信|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>前往暴风城
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_纯洁的凯瑟琳|r对话
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>交任务 破碎者锤子
    .accept 79940 >>接受任务 迷失的兄弟
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_纯洁的凯瑟琳|r对话
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>交任务 迷失的兄弟
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>前往米奈希尔港，湿地
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >>与|cRXP_FRIENDLY_哈洛德·李格斯|r 对话。确保点完他所有的对话选项
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >>|cRXP_WARN_向南游，一路绕行到丹莫罗。你很快就需要击杀一只40级的精英怪。建议组个队友一起完成这一步！|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >>与建筑内的|cRXP_FRIENDLY_被害的血色十字军战士|r 对话
    >>|cRXP_WARN_这会召唤出一只40级的精英|r|cRXP_ENEMY_血色十字军刺客|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>击杀 |cRXP_ENEMY_血色十字军刺客|r。拾取 |T133471:0|t[|cRXP_LOOT_大十字军战士谕令|r]
    .use 215468 >>|cRXP_WARN_使用 |T133471:0|t[|cRXP_LOOT_大十字军战士谕令|r] 来开启任务|r
    .collect 215468,1,79945,1
    .accept 79945 >>接受任务 大十字军战士谕令
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>前往暴风城
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_纯洁的凯瑟琳|r 对话
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>交任务 大十字军战士谕令
    .accept 79946 >>接受任务 急需帮助的兄弟
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_纯洁的凯瑟琳|r 对话
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_你现在必须进入血色修道院并完整打通一次大教堂|r
    >>击杀 |cRXP_ENEMY_莫格莱尼|r 和 |cRXP_ENEMY_怀特迈恩|r 后，在后面的房间与 |cRXP_FRIENDLY_埃奥纳斯|r 对话
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>交任务 需要帮助的兄弟
    .accept 79963 >>接受任务 圣光的恩赐
    .target Aeonas
step
    .train 426178,1
    >>将 |cRXP_FRIENDLY_艾奥纳斯|r 治疗至满血
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾奥纳斯|r 对话
    .turnin 79963 >>交任务 圣光的恩赐
    .accept 79970 >>接受任务 洗刷冤屈的艾奥纳斯
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>前往暴风城
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洗冤者埃欧纳斯|r 对话
    .turnin 79970 >>交任务 洗刷冤屈的艾奥纳斯
    .train 426178 >>训练 |T236263:0|t[圣光出鞘]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 圣光守护 - 30 (奥特兰克山脉)
#title 圣光守护

step
    #optional
    .train 416035,1
    +|cRXP_WARN_你必须至少30级才能获得|r |T134419:0|t[|cRXP_FRIENDLY_守护者符文|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >>|cRXP_WARN_你必须学习|r |T136106:0|t[神圣干涉] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_守护者符文|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_从任意施法材料商|r |cRXP_BUY_购买至少一个|r |T135259:0|t[神圣符印]
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_接下来的步骤请务必带上一位|cFFFFFFFF牧师|r，|cFFF58CBA圣骑士|r 或 |cFFFF7D0A德鲁伊|r 队友！因为需要有人复活你，接下来的部分是无法单人完成的！|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>前往奥特兰克山脉
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>点击地上的 |cRXP_PICK_冰冻残骸|r。拾取 |cRXP_LOOT_休眠的神圣符文|r
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >>|cRXP_WARN_对一直陪伴你的朋友施放|r |T136106:0|t[神圣干涉]
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_让你的朋友移除|r |T136106:0|t[神圣干涉] |cRXP_WARN_buff并复活你|r
    >>|cRXP_WARN_你将获得|r |T134419:0|t[|cRXP_FRIENDLY_守护者符文|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_守护者符文|r] |cRXP_WARN_来训练|r |T237537:0|t[圣光守护]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 布兹
#name 圣洁护盾 - 30 (凄凉之地)
#title 圣洁护盾

step
    #optional
    .train 416028,1
    +|cRXP_WARN_你必须至少18级才能获得|r |T236249:0|t[圣洁护盾] |cRXP_WARN_符文|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >>|cRXP_WARN_你必须学习|r |T135968:0|t[自由祝福] |cRXP_WARN_才能获得|r |T236249:0|t[圣洁护盾] |cRXP_WARN_符文|r
step
    .train 416028,1
    #completewith Deliverance
    +确保至少多组一个 法师|cRXP_WARN_ 朋友！接下来的部分无法单人完成！|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>前往凄凉之地
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>拾取桌子上的 |T134916:0|t[|cRXP_FRIENDLY_解脱圣契|r]
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >>|cRXP_WARN_装备|r |T134916:0|t[|cRXP_FRIENDLY_解脱圣契|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >>|cRXP_WARN_当其他玩家移动受阻时|r ，对其施放|cRXP_WARN_ |T135968:0|t[自由祝福] 5次。每次成功施放，你都会获得一层|r |T237556:0|t[积累灵感] |cRXP_WARN_效果|r
    >>|cRXP_WARN_一旦你有5层|r |T237556:0|t[积累灵感]|cRXP_WARN_，你将获得|r |T136116:0|t[灵感勃发] |cRXP_WARN_buff|r
    >>|cRXP_WARN_在玛拉顿外完成这个任务。|r |cRXP_ENEMY_玛洛迪争斗者|r |cRXP_WARN_在那里施放|r |T132149:0|t[投网]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_使用|r |T134916:0|t[|cRXP_FRIENDLY_解脱圣契|r] |cRXP_WARN_来学习|r |T236249:0|t[圣洁护盾]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 狂信 - 44 (艾泽拉斯)

step
    #optional
    .train 426178 >>|cRXP_WARN_你必须先学会|r |T236263:0|t[圣光出鞘] |cRXP_WARN_的符文才能获得这个|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洗冤者埃欧纳斯|r 对话
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>接受任务 一些好消息
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_纯洁的凯瑟琳|r 对话
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>交任务 一些好消息
    .accept 81764 >>接受任务 神秘的商人
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>前往尘泥沼泽/塞拉摩岛 |cRXP_WARN_（例如从米奈希尔港乘船前往塞拉摩）|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆里的 |cRXP_FRIENDLY_艾尔利克|r 对话
    *|cRXP_WARN_两个45级的敌人将在你接受任务后攻击你|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>交任务 神秘的商人
    .accept 81765 >>接受任务 艾尔利克，白银之手圣骑士
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔利克|r 对话
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>杀死 |cRXP_ENEMY_艾尔利克|r。拾取他的 |T133471:0|t[|cRXP_LOOT_染血信函|r]
    >>|cRXP_WARN_使用|r |T133471:0|t[|cRXP_LOOT_染血信函|r] |cRXP_WARN_来获得任务|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>接受任务 染血信函
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>前往暴风城
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纯洁的凯瑟琳|r 对话 |cRXP_WARN_来学习|r |T135905:0|t[狂信]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>交任务 染血信函
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#name 光之优雅 - 40 (菲拉斯)

step
    #optional
    .train 5599 >>|cRXP_WARN_你必须已经学习了|r |T135964:0|t[保护祝福] |cRXP_WARN_才能获得|r |T135931:0|t[光之优雅] |cRXP_WARN_符文|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>使用传送器前往藏宝海湾的菲拉斯
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>前往菲拉斯
    .goto Feralas,85.27,43.66,8 >>使用 |cRXP_PICK_奇械世界传送器|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>到达平台
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_在声望窗口中，将加基森阵营设置为“交战”状态|r
    >>2) 前往导航点的确切位置
    >>3) 寻找木屋旁边的绿色灌木丛
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_当|cRXP_ENEMY_塔防自动机|r刚好处于你和灌木丛之间时，等待并攻击它|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_治疗|r |cRXP_FRIENDLY_弗力克希·希基克斯|r |cRXP_WARN_直到他站起来|r。
    .gossip 220930,1 >>之后与 |cRXP_FRIENDLY_弗力克希·希基克斯|r 对话
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>前往荆棘谷/藏宝海湾
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_力克希·希基克斯|r 对话并购买 |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_优雅符文|r] |cRXP_WARN_来训练|r |T236249:0|t[圣洁护盾]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 头盔
#name 愤怒 - 43 (辛特兰)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_你必须学会了|r |T135974:0|t[感知亡灵] |cRXP_WARN_才能获得|r |T236260:0|t[愤怒] |cRXP_WARN_符文|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_你只能在晚上9点至早上6点之间获得|r |T236260:0|t[愤怒] |cRXP_WARN_符文|r
step
    #completewith next
    .zone The Hinterlands >>前往辛特兰
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_使用|r |T135974:0|t[感知亡灵] |cRXP_WARN_才能看见|r |cRXP_ENEMY_复仇之灵|r
    >>击杀 |cRXP_ENEMY_复仇之灵|r。拾取 |T134419:0|t[|cRXP_FRIENDLY_愤怒符文|r]
    *|cRXP_ENEMY_复仇之魂|r 在湖边游荡
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_愤怒符文|r] |cRXP_WARN_来训练|r |T236260:0|t[愤怒]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 护腕
#name 正义之锤 - 50 (艾泽拉斯)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_在获取这个符文之前，你必须先学会|r|T236253:0|t[正义之锤]|cRXP_WARN_符文|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>前往费伍德森林
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洗冤者埃欧纳斯|r 对话
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_格雷格里|r对话
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_格雷格里|r对话
    .accept 81790,1 >>接受任务 关键材料
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>击杀|cRXP_ENEMY_地狱火哨兵|r，|cRXP_ENEMY_地狱火保镖|r，|cRXP_ENEMY_热能野兽|r 和 |cRXP_ENEMY_热能恐兽|r。拾取他们的|cRXP_LOOT_|T136030:0|t[炽炎地狱火核心]|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title 玛拉顿
    .zone Desolace >>前往玛拉顿
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_建议组成5人小队。|r
    >>击杀玛拉顿的最终首领|cRXP_ENEMY_瑟莱德丝公主|r。拾取她的|cRXP_LOOT_|T134389:0|t[幻光墓穴之尘]|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title 黑石深渊
    .zone Searing Gorge >>前往黑石深渊
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_建议组成5人小队，还需要3个金币。|r
    >>穿过黑石深渊直到你到达黑铁酒吧。|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_普拉格|r 对话并购买|T135262:0|t[三酿熔火窖酒]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵石炬|r 对话
    .target Brave Stonetorch
    .accept 81944,1 >>接受任务 新发现的意图
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>前往希尔斯布莱德丘陵
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵石炬|r 对话
    .target Brave Stonetorch
    .accept 81944,1 >>接受任务 新发现的意图
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>前往灼热峡谷
    .train 410013,1
step << Horde
    >>|cRXP_WARN_建议组成5人小队，还需要3个金币。|r
    >>穿过黑石深渊直到你到达黑铁酒吧。|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_普拉格|r 对话并购买|T135262:0|t[三酿熔火窖酒]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>前往费伍德森林
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_格雷格里|r 对话
    .turnin 81790 >>接受任务 关键材料
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洗冤者埃欧纳斯|r 对话
    .accept 81885,1 >>接受任务 仪式
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_格雷格里|r 对话
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_洗冤者埃欧纳斯|r 对话
    .turnin 81885 >>交任务 仪式
    .target Aeonas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 正义盾击 - 60 (东瘟疫之地)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_如果你想解锁此符文，将需要击杀斯坦索姆（亡灵区）内的一个首领。现在就可以开始寻找队伍了|r
    .zone Eastern Plaguelands >>前往东瘟疫之地
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>寻找一只 |cRXP_ENEMY_错颚的食尸鬼|r。击杀他并与出现的一只矮人灵魂 |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_奥尔塔兹|r 对话。开始这个任务
    >>|cRXP_WARN_|r错颚的食尸鬼|cRXP_ENEMY_|r |cRXP_WARN_在墓穴与科林路口之间的道路以南区域巡逻|r
    .accept 84318 >>接受任务 喂！
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>进入考林路口的那间房子。拾取二楼的 |T133040:0|t[|cRXP_PICK_华丽的战锤|r] |cRXP_WARN_|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>使用|T134566:0|t[奥尔塔兹最爱的金牙]再次召唤|cRXP_FRIENDLY_奥尔塔兹|r。与他对话交任务并接取后续任务
    .turnin 84318 >>交任务 喂！
    .accept 84319 >>接受任务 想都别想
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>击杀|cRXP_ENEMY_缝合憎恶|r 并拾取其掉落的 |T133823:0|t[|cRXP_LOOT_消化一半的板甲|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>使用|T134566:0|t[奥尔塔兹最爱的金牙]再次召唤|cRXP_FRIENDLY_奥尔塔兹|r。与他对话交任务并接取后续任务
    .turnin 84319 >>交任务 想都别想
    .accept 84330 >>接受任务 一点点通灵术
step
    >>寻找一个斯坦索姆的队伍（亡灵区）
    >>击杀 |cRXP_ENEMY_苍白的玛勒基|r，他是地下城亡灵侧的首领之一，并从中拾取 |T134415:0|t[通灵符石]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>返回地下墓室，寻找|cRXP_FRIENDLY_腐败的矮人遗骨|r。与其互动以交付任务
    .turnin 84330 >>交任务 一点点通灵术
step
    >>从尸体处接受任务后续任务。这是一个可以立即交付的任务，会教会你如何刻印|T236265:0|t[|cRXP_FRIENDLY_正义盾击|r]
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >>接受任务 领主的感激
    .turnin 84332 >>交任务 领主的感激

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 正义复仇 - 55 (西瘟疫之地)
#title 正义复仇
#next 震慑 - 55 (西瘟疫之地和东瘟疫之地)

step
    #completewith next
    .zone Western Plaguelands >>前往西瘟疫之地
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_堕落骑士|r 对话
    .gossip 227519,1 >>完成他的对话
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>进入|cRXP_FRIENDLY_堕落骑士|r旁边的谷仓，|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_侍从库斯伯特|r 对话
    .accept 83808 >>接受任务 陷入困境
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>拾取附近田地里的 [|cRXP_PICK_	侍从库斯伯特之剑|r]
    .complete 83808,1
step
    >>返回谷仓并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_侍从库斯伯特|r 对话
    .turnin 83808 >>交任务 陷入困境
    .accept 83935 >>接受任务 扫清道路
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>击杀|cRXP_ENEMY_坏死的僵尸|r，|cRXP_ENEMY_恐惧骸骨|r 和 |cRXP_ENEMY_腐烂的死尸|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>返回谷仓并|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_侍从库斯伯特|r 对话
    .turnin 83935 >>交任务 扫清道路
    .accept 83822,1 >>接受任务 堕落的骑士
    >>|cRXP_WARN_这是一个护送任务|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>护送 |cRXP_FRIENDLY_侍从库斯伯特|r 回到堕落的骑士处，并帮他焚烧尸体
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侍从库斯伯特|r 对话
    .turnin 83822 >>交任务 堕落的骑士
    .accept 83936 >>接受任务 道尔顿的任务
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_侍从库斯伯特|r 对话并完成他的对话
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_侍从库斯伯特|r 对话并完成他的所有对话。交任务之后，你将学会如何刻印|T236260:0|t[|cRXP_FRIENDLY_正义复仇|r]
    >>为了解锁|T237377:0|t[|cFF0070FF震慑|r] 符文，你还将获得你所需要的|T252188:0|t[|cRXP_FRIENDLY_达尔顿的号角|r]
    .turnin 83936 >>交任务 道尔顿的任务
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP符文与书籍指南
#subgroup 披风
#name 震慑 - 60 (西瘟疫之地和东瘟疫之地)
#title 震慑 & 复仇之怒

step
    #completewith next
    +|cRXP_WARN_为了开始此符文的任务，你必须先解锁|r|T236260:0|t[|cRXP_FRIENDLY_正义复仇|r]符文。|cRXP_WARN_请前往“正义复仇”指南开始任务|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_使用|r |T237377:0|t[|cFF0070FF道尔顿的号角|r] |cRXP_WARN_来召唤|r |cRXP_FRIENDLY_侍从库斯伯特|r |cRXP_WARN_并击杀小怪直到他升级。升级后他会给你一个免费的交任务|r
    .accept 83823 >>接受任务 暴力一课
    .turnin 83823 >>交任务 暴力一课
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_使用|r|T237377:0|t[|cFF0070FF达尔顿的号角|r]|cRXP_WARN_来召唤|r侍从卡斯伯特|cRXP_FRIENDLY_，并不断击杀怪物直到他再次升级。一旦他升级，他会给你另一个免费的交付任务，以及另一个去寻找名为|r|cRXP_WARN_承诅者阿寇诺斯|r|cRXP_ENEMY_的巫妖的任务|r
    .accept 84008 >>接受任务 优雅一课
    .turnin 84008 >>交任务 优雅一课
    .accept 84017 >>接受任务 杀戮时刻
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_前往毒雾林，就在圣光之愿礼拜堂北边。到达后再次召唤你的侍从。寻找阿科诺斯的任务应该会完成，随后你会接到新任务，接受它|r
    .turnin 84017 >>交任务 杀戮时刻
    .accept 84125 >>接受任务 触手可及
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>击杀|cRXP_ENEMY_暗影法师|r和|cRXP_ENEMY_恐怖编织者|r，从它们身上拾取|T135482:0|t[|cRXP_LOOT_天灾暗影解剖刀|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>使用|T237377:0|t[|cFF0070FF道尔顿的号角|r]召唤|cRXP_FRIENDLY_侍从库斯伯特|r 如果你弄丢了他，与他对话
    .turnin 84125 >>交任务 触手可及
    .accept 84126 >>接受任务 结束战斗
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>使用获得的|T237490:0|t[|cRXP_LOOT_改造的暗影解剖刀|r] 驱散 |cRXP_ENEMY_阿寇诺斯|r 的护盾，然后击杀他以完成任务
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>使用|T237377:0|t[|cFF0070FF道尔顿的号角|r] 召唤 |cRXP_FRIENDLY_侍从库斯伯特|r 如果你弄丢了他，与他对话
    >>交付此任务后，你将学会如何刻印|T252188:0|t[震慑]符文，同时还将获得可以教会你|T133745:0|t[复仇之怒]的|T135875:0|t[|cRXP_FRIENDLY_论述：复仇之怒|r]
    .turnin 84126 >>交任务 结束战斗
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >>使用|T133745:0|t[|cRXP_FRIENDLY_论述：复仇之怒|r]来训练|T135875:0|t[复仇之怒]
    .use 226399
]])
