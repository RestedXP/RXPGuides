if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 10-18级 黑海岸
#next 15-20级 赤脊山
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .turnin 26383 >>交任务 乘风破浪 << !Worgen
    .turnin 26385 >>交任务 乘风破浪 << Worgen
    .accept 13518 >>接受任务 最后一波幸存者
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .accept 13518 >>接受任务 最后一波幸存者
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r 对话
    .accept 13522 >>接受任务 水的威胁
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>击杀 |cRXP_ENEMY_邪恶喷涌者|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃科尔|r 对话
    .complete 13518,4 --1/1 Volcor rescued
	.target 沃科尔
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈沙拉·夜语|r 对话
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target 戈沙拉·夜语
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_白爪|r 对话
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target 塞瑞利恩·白爪
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莎尔蒂|r 对话
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>击杀 |cRXP_ENEMY_邪恶喷涌者|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r 对话
    .turnin 13522 >>交任务 水的威胁
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德塔莉亚·银林|r 对话
    .turnin 13518 >>交任务 最后一波幸存者
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r |cFFfa9602对话，她在旅馆楼梯间来回巡逻|r
    .accept 13520 >>接受任务 海洋的恩赐
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板凯特兰|r 对话
    .home >>设置你的炉石为洛达内尔
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .accept 13521 >>接受任务 传声盒413号
	.target 维兹班恩·曲针
step
    #completewith next
    >>击杀 |cRXP_ENEMY_堕落的潮行蟹|r。拾取 |cRXP_LOOT_潮行蟹的肉片|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>拾取水下的 |cRXP_PICK_带壳蚌|r
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>击杀 |cRXP_ENEMY_堕落的潮行蟹|r。拾取 |cRXP_LOOT_潮行蟹的肉片|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>点击地上的 |cRXP_PICK_传声盒413号|r
    .turnin 13521 >>交任务 传声盒413号
    .accept 13527 >>接受任务 食性无常
step
    .goto 62,55.1,21.0
    >>拾取 |cRXP_FRIENDLY_腐烂蓟熊|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 对话
    .turnin 13527 >>交任务 食性无常
    .accept 13528 >>接受任务 传声盒723号
	.target 维兹班恩·曲针
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r |cFFfa9602对话，她在旅馆楼梯间来回巡逻|r
    .turnin 13520 >>交任务 海洋的恩赐
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔拉娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰拉·弓叶|r 对话
    .trainer >>训练你的职业技能
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉雷瑟·贝德|r 对话
    .trainer >>训练你的职业技能
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蕾拉·杜布斯|r 对话
    .trainer >>训练你的职业技能
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯拉尔·夜风|r 对话
    .trainer >>训练你的职业技能
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵 哨兵月翼|r 对话
    .trainer >>训练你的职业技能
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜拉尔|r 对话
    .trainer >>训练你的职业技能
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>击杀 |cRXP_ENEMY_熊|r。拾取 |cRXP_LOOT_腐化的蓟熊破胆|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>点击地上的 |cRXP_PICK_传声盒723号|r
    .turnin 13528 >>交任务 传声盒723号
    .accept 13554 >>接受任务 黑暗中的解药
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .accept 13529 >>接受任务 腐化的源头
	.target Tharnariun
step
    #completewith GrellsIchor
	>>击杀 |cRXP_ENEMY_邪劣魔|r 和 |cRXP_ENEMY_邪恶的腐蚀者|r。拾取 |cRXP_LOOT_脏污的液体|r 和 |T134245:0|t[|cRXP_LOOT_腐蚀者的钥匙|r]
    .use 44927 >>|cRXP_WARN_使用|r |T134245:0|t[|cRXP_LOOT_腐蚀者的钥匙|r] |cRXP_WARN_来开始任务|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>接受任务 幸运儿
	.mob Vile Grell
	.mob Vile Corruptor
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>打开遍布洞穴的 |cRXP_PICK_兽笼|r
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>击杀 |cRXP_ENEMY_赛恩·腐蹄|r
    >>|cRXP_ENEMY_赛恩·腐蹄|r |cRXP_WARN_在洞穴下层|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob 赛恩·腐蹄
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>点击洞穴深处的 |cRXP_PICK_恶心的工作台|r
    .accept 13831 >>接受任务 令人不安的处方
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>击杀 |cRXP_ENEMY_邪劣魔|r 和 |cRXP_ENEMY_邪恶的腐蚀者|r。拾取 |cRXP_LOOT_脏污的液体|r 和 |T134245:0|t[|cRXP_LOOT_腐蚀者的钥匙|r]
    .use 44927 >>|cRXP_WARN_使用|r |T134245:0|t[|cRXP_LOOT_腐蚀者的钥匙|r] |cRXP_WARN_来开始任务|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>接受任务 幸运儿
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >>炉石回到洛达内尔
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维兹班恩·曲针|r 和 |cRXP_FRIENDLY_萨纳瑞恩·绿树|r 对话
    .turnin 13554 >>交任务 黑暗中的解药
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>交任务 令人不安的处方
    .turnin 13831 >>交任务 令人不安的处方
    .turnin 13529 >>交任务 腐化的源头
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沃科尔|r 对话
    .target 沃科尔
    .accept 13564 >>接受任务 失踪的伙伴
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .target 塞瑞利恩·白爪
    .accept 13563 >>接受任务 爱别离
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r 对话
    >>|cRXP_FRIENDLY_游侠戈琳达·纳希恩|r |cRXP_WARN_在洛达内尔各处巡逻|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>接受任务 巴莎兰的终焰之焰
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_爱瑞娅·秋光|r 对话
    .target Arya Autumnlight
    .accept 13561 >>接受任务 安抚上层精灵
step
    .goto 62,45.958,34.240
    >>点击地上的 |cRXP_PICK_巴莎兰的终焉之焰|r
    .complete 13562,1
step
    #completewith next
    >>击杀|cRXP_ENEMY_诅咒上层精灵|r 和 |cRXP_ENEMY_扭曲上层精灵|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>击杀|cRXP_ENEMY_安娜雅·晨路|r，拾取|cRXP_LOOT_安娜雅的坠饰|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan 安娜雅·晨行者
step
    .goto 62,47.180,35.201
    >>击杀|cRXP_ENEMY_诅咒上层精灵|r 和 |cRXP_ENEMY_扭曲上层精灵|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_爱瑞娅·秋光|r 对话
    .target Arya Autumnlight
    .turnin 13561 >>交任务 安抚上层精灵
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者卡里修斯|r 对话
    .target Keeper Karithus
    .turnin 13564 >>交任务 失踪的伙伴
    .accept 13566 >>接受任务 仪式的材料
    .accept 13598 >>接受任务 良药苦口
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛拉法恩|r 对话
    .target Seraphine
    .accept 13565 >>接受任务 今非昔比
step
    .goto 62,40.944,38.615
    >>点击睡在树旁的 |cRXP_PICK_月夜猛虎|r 并可拾取他们的 |cRXP_LOOT_须|r
    *|cRXP_WARN_只有部分怪物是中立状态，可以被拾取|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>点击 |cRXP_PICK_杂斑母鹿|r 来拾取它们的 |cRXP_LOOT_鹿毛|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>击杀 |cRXP_ENEMY_简妮拉女士|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>拾取地上的 |cRXP_LOOT_熏烟伞菌|r
    .use 45911 >>击杀 |cRXP_ENEMY_暗鳞斥候|r，|cRXP_WARN_然后对其尸体|r|cRXP_WARN_使用|r |T134413:0|t[石化之根]
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>点击在河边喝水的 |cRXP_PICK_饥饿的蓟熊|r 来拾取他们的 |cRXP_LOOT_毛皮|r
    *|cRXP_WARN_只有部分怪物是中立状态，可以被拾取|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赛拉法恩|r 对话
    .target Seraphine
    .turnin 13565 >>交任务 今非昔比
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者卡里修斯|r 对话
    .target Keeper Karithus
    .turnin 13566 >>交任务 仪式的材料
    .turnin 13598 >>交任务 良药苦口
    .accept 13569 >>接受任务 誓缚仪式
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >>点击地上的 |cRXP_PICK_丛林守护者的熏香|r
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>与 |cRXP_FRIENDLY_雄鹿巨灵|r 对话
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者卡里修斯|r 对话
    .target Keeper Karithus
    .turnin 13569 >>交任务 誓缚仪式
    .accept 13599 >>接受任务 锐爪复元
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司艾琳雅|r 对话
    .target Priestess Alinya
    .turnin 13601 >>交任务 援助难民
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞拉伊|r 和 |cRXP_FRIENDLY_柯维恩·月升|r 对话
    .accept 13542 >>接受任务 对抗暴风
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>接受任务 三柄将碎之锤
    .accept 13573 >>接受任务 玛法里奥的回归
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>击杀 |cRXP_ENEMY_狂暴飓风|r 并拾取 |T236968:0|t[|cRXP_LOOT_狂暴飓风的护腕|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>击杀 |cRXP_ENEMY_克劳坦莫·蛮鬃|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>击杀 |cRXP_ENEMY_啸天者布纳克斯|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>击杀 |cRXP_ENEMY_克劳坦莫·蛮鬃|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>击杀 |cRXP_ENEMY_狂暴飓风|r 并拾取 |T236968:0|t[|cRXP_LOOT_狂暴飓风的护腕|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_在在奥伯丁的月亮井旁使用|r |T236968:0|t[狂暴飓风的护腕]
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵塞拉伊|r 和 |cRXP_FRIENDLY_柯维恩·月升|r 对话
    .turnin 13542 >>交任务 对抗暴风
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>交任务 三柄将碎之锤
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 13573 >>交任务 玛法里奥的回归
    .accept 13575 >>接受任务 大地的血脉
    .accept 13577 >>接受任务 最后的枭兽
    .accept 13579 >>接受任务 亚米萨兰的保护者
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆姆|r 对话
    .target Aroom
    .turnin 13577 >>交任务 最后的枭兽
    .accept 13578 >>接受任务 阿隆姆的告别
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>拾取地上的 |cRXP_LOOT_死去野枭兽的羽毛|r
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆姆|r 对话
    .target Aroom
    .turnin 13578 >>交任务 阿隆姆的告别
    .accept 13582 >>接受任务 艾露恩之火
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>击杀 |cRXP_ENEMY_护火者霍鲁|r 并拾取 |cRXP_LOOT_月神之火|r
    >>|cRXP_ENEMY_护火者霍鲁|r |cRXP_WARN_会小范围巡逻|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆姆|r 对话
    .target Aroom
    .turnin 13582 >>交任务 艾露恩之火
    .accept 13583 >>接受任务 枭兽之誓
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_棕掌长者|r 对话
    .target Elder Brownpaw
    .turnin 13575 >>交任务 大地的血脉
    .accept 13576 >>接受任务 互惠互助

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>击杀 |cRXP_ENEMY_肆掠的火元素|r
    >>|cRXP_WARN_在他们的尸体上使用|r |T136061:0|t[抚慰图腾]
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_棕掌长者|r 对话
    .target Elder Brownpaw
    .turnin 13576 >>交任务 互惠互助
    .accept 13580 >>接受任务 安抚元素
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >>前往小山顶端的祭坛
step
    .goto 62,39.66,62.12
    .cast 65361 >>|cRXP_WARN_在祭坛旁边使用|r |T135839:0|t[充能的安抚图腾] |cRXP_WARN_然后保护它|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >>|cRXP_WARN_保护|r |T135839:0|t[充能的安抚图腾] |cRXP_WARN_并抵抗来袭的敌人|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_棕掌长者|r 对话
    .target Elder Brownpaw
    .turnin 13580 >>交任务 安抚元素
    .accept 13581 >>接受任务 黑木誓言
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟里恩|r 对话
    .target Selenn
    .turnin 13579 >>交任务 亚米萨兰的保护者
    .accept 13584 >>接受任务 平息土地
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>击杀 |cRXP_ENEMY_被激怒的大地元素|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟里恩|r 对话
    .target Selenn
    .turnin 13584 >>交任务 平息土地
    .accept 13585 >>接受任务 誓死保护
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r 对话
    .target Malfurion Stormrage
    .turnin 13581 >>交任务 黑木誓言
    .turnin 13583 >>交任务 枭兽之誓
    .turnin 13585 >>交任务 誓死保护
    .accept 13586 >>接受任务 翡翠梦境
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >>前往碎地者洞穴
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击噩梦传送门并与 |cRXP_FRIENDLY_塔丝瑟拉|r 对话
    .target Thessera
    .turnin 13586 >>交任务 翡翠梦境
    .accept 13587 >>接受任务 清醒的梦魇
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>击杀 |cRXP_ENEMY_噩梦守护者|r。拾取 |cRXP_LOOT_翡翠卷轴|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔丝瑟拉|r 对话
    .target Thessera
    .turnin 13587 >>交任务 清醒的梦魇
    .accept 13940 >>接受任务 离开梦境
    .timer 30,离开梦境 剧情演出
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r 对话
    .target Malfurion Stormrage
    .turnin 13940 >>交任务 离开梦境
    .accept 13588 >>接受任务 群风之眼
step
    .goto 62,43.555,53.701
    >>与 |cRXP_FRIENDLY_塔丝瑟拉|r 对话并与其飞行，用她的第一个技能击杀 |cRXP_ENEMY_暮光龙骑兵|r 并摧毁 |cRXP_ENEMY_暮光传送门|r
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>使用第二个技能让你的龙落地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r 对话
    .target Malfurion Stormrage
    .turnin 13588 >>交任务 群风之眼
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >>炉石回到洛达内尔
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r 对话
    >>|cRXP_FRIENDLY_游侠戈琳达·纳希恩|r |cRXP_WARN_在洛达内尔各处巡逻|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>交任务 巴莎兰的终焉之焰
    .accept 13589 >>接受任务 碎矛入侵者
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r |cFFfa9602对话，她在旅馆楼梯间来回巡逻|r
    .turnin 13599 >>交任务 锐爪复元
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .target 塞瑞利恩·白爪
    .turnin 13563 >>交任务 爱别离
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .target 高尔博德·钢手
    .accept 13560 >>接受任务 不那么深的海洋
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>点击盖瑞旁边的 |cRXP_PICK_诱饵机器人控制台|r
    .target Gary
    >>使用机器人击杀附近沉船周围的鱼人
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔拉娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰拉·弓叶|r 对话
    .trainer >>训练你的职业技能
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉雷瑟·贝德|r 对话
    .trainer >>训练你的职业技能
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蕾拉·杜布斯|r 对话
    .trainer >>训练你的职业技能
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯拉尔·夜风|r 对话
    .trainer >>训练你的职业技能
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵 哨兵月翼|r 对话
    .trainer >>训练你的职业技能
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜拉尔|r 对话
    .trainer >>训练你的职业技能
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉·星风中尉|r 对话
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>交任务 碎矛入侵者
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .accept 13504 >>接受任务 碎矛劳工
    .target 哨兵坦莎·月刃
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .accept 13505 >>接受任务 上层精灵的遗留
    .target 巴苏尔·影击
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>击杀 |cRXP_ENEMY_碎矛监工|r。拾取 |T134939:0|t[|cRXP_LOOT_监督者的命令|r]
    >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_LOOT_监督者的命令|r] |cRXP_WARN_来开始任务|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>接受任务 担心的理由

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>击杀 |cRXP_ENEMY_碎矛劳工|r
    >>拾取地上的 |cRXP_LOOT_上层精灵的遗物|r
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .turnin 13505 >>交任务 上层精灵的遗留
    .target 巴苏尔·影击
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 13504 >>交任务 碎矛劳工
    .accept 13507 >>接受任务 消减人手
    .target 哨兵坦莎·月刃
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉·星风中尉|r 对话
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>交任务 担心的理由
    .accept 13508 >>接受任务 快速反应
    .turnin 13505 >>交任务 上层精灵的遗留
    .accept 13509 >>接受任务 战时补给
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>击杀 |cRXP_ENEMY_部落执行者|r 和 |cRXP_ENEMY_碎矛秘法师|r
    .use 44999 >>在部落营地周围的 |cRXP_PICK_碎矛军备|r 上使用 |T135433:0|t[卫戍火把]
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥兰达利亚·夜歌|r 对话
    .target 奥兰达利亚·夜歌
    .turnin 13508 >>交任务 快速反应
    .accept 13511 >>接受任务 悲恨仇怨
step
    .goto 62,64.122,5.336
    >>击杀 |cRXP_ENEMY_力克托|r，拾取 |cRXP_LOOT_碎矛拷问者的牢笼钥匙|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>点击|cRXP_PICK_碎矛牢笼|r
    .target Sentinel Aynasha
    .accept 13510 >>接受任务 及时赶到
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_护送|r |cRXP_FRIENDLY_哨兵阿娜莎|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>击杀 |cRXP_ENEMY_部落执行者|r 和 |cRXP_ENEMY_碎矛秘法师|r
    .use 44999 >>在部落营地周围的 |cRXP_PICK_碎矛军备|r 上使用 |T135433:0|t[卫戍火把]
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵坦莎·月刃|r 对话
    .turnin 13507 >>交任务 消减人手
    .target 哨兵坦莎·月刃
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉·星风中尉|r 对话
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>交任务 战时补给
    .turnin 13510 >>交任务 及时赶到
    .turnin 13511 >>交任务 悲恨仇怨
    .accept 13512 >>接受任务 战略打击
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .accept 13513 >>接受任务 灭族危机
    .target 巴苏尔·影击
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马萨斯·深林|r 对话
    .target Mathas Wildwood
    .accept 13844 >>接受任务 奥萨拉克斯的藏宝
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >>|cRXP_WARN_使用|r |T136021:0|t[树妖之矛] |cRXP_WARN_击杀|r |cRXP_ENEMY_风暴编织者赛雅|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .mob Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>击杀 |cRXP_ENEMY_碎矛萨满祭司|r 并拾取 |cRXP_LOOT_碎矛护符|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>在塔顶击杀 |cRXP_ENEMY_提甘·霍拉维|r
    >>在塔的中层拾取 |cRXP_LOOT_纳拉辛的学识之书|r
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >>|cRXP_WARN_使用|r |T136021:0|t[树妖之矛] |cRXP_WARN_击杀|r |cRXP_ENEMY_洛伦瑟·唤雷|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_马萨斯·深林|r 对话
    .target Mathas Wildwood
    .turnin 13844 >>交任务 奥萨拉克斯的藏宝
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_巴苏尔·影击|r 对话
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>交任务 一触即发
    .target 巴苏尔·影击
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉·星风中尉|r 对话
    .turnin 13512 >>交任务 战略打击
    .accept 13590 >>接受任务 前线
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗尼亚·恒影|r 对话
    .accept 13514 >>接受任务 古树的怒火
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >>|cRXP_WARN_骑上|r |cRXP_FRIENDLY_狂怒的保护者|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_施放|r |T136025:0|t[震荡波] (1) |cRXP_WARN_来击杀|r |cRXP_ENEMY_碎矛巨魔|r
    >>|cRXP_WARN_施放|r |T135734:0|t[月潮喷涌] (2) |cRXP_WARN_来烧毁碎矛建筑|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >>|cRXP_WARN_从 |r狂怒的保护者|cRXP_FRIENDLY_ 上下来|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手桑德娅·月落|r 对话
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>交任务 前线
    .accept 13515 >>接受任务 结束威胁
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >>与 |cRXP_FRIENDLY_女猎手桑德娅·月落|r 对话以开始突击
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>击杀 |cRXP_ENEMY_剥魂者乔基尔|r 并拾取 |T133466:0|t[|cRXP_LOOT_地狱咆哮的信函|r]
    .use 46318 >>|cRXP_WARN_使用|r |T133466:0|t[|cRXP_LOOT_地狱咆哮的信函|r] |cRXP_WARN_来开始任务|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>接受任务 令人不安的联系
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女猎手桑德娅·月落|r 对话
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>交任务结 束威胁
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗尼亚·恒影|r 对话
    .target Kerlonian Evershade
    .turnin 13514 >>交任务 古树的怒火
step
    #completewith next
    .hs >>炉石回到洛达内尔
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尔博德·钢手|r 对话
    .target 高尔博德·钢手
    .turnin 13560 >>交任务 不那么深的海洋
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r 对话，她在月亮井周围巡逻。
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>交任务 令人不安的联系
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞利恩·白爪|r 对话
    .target 塞瑞利恩·白爪
    .accept 13570 >>接受任务 铭记奥伯丁
    .turnin 13570 >>交任务 铭记奥伯丁
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔拉娜·晨光|r 对话
    .trainer >>训练你的职业技能
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰拉·弓叶|r 对话
    .trainer >>训练你的职业技能
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉雷瑟·贝德|r 对话
    .trainer >>训练你的职业技能
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_蕾拉·杜布斯|r 对话
    .trainer >>训练你的职业技能
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_肯拉尔·夜风|r 对话
    .trainer >>训练你的职业技能
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哨兵 哨兵月翼|r 对话
    .trainer >>训练你的职业技能
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜拉尔|r 对话
    .trainer >>训练你的职业技能
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_特尔迪娜·月羽|r 对话
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>飞往古树之林
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_佛利埃·阔叶|r 对话
    .target Foriel Broadleaf
    .accept 13525 >>接受任务 黑木熊怪怎么了？
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 对话
    .target Balren of the Claw
    .turnin -13902 >>交任务 组织进攻
    .accept 13892 >>接受任务 不着痕迹
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .accept 13881 >>接受任务 被吞噬
step
#questguide
#completewith furbolgs
    >>击杀 |cRXP_ENEMY_被吞噬的蓟熊|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_游向水下的|cRXP_PICK_ |r吞噬神器|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_熊怪长者|r 对话
    .target Elder Brolg
    .turnin 13525 >>交任务 黑木熊怪怎么了？
    .accept 13526 >>接受任务 熊爪草
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>拾取地上的 |cRXP_LOOT_熊爪草|r
    >>|cRXP_WARN_它们看起来像小植物|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >>前往主宰之剑
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >>|cRXP_WARN_使用|r |T133236:0|t[黑豹雕像] |cRXP_WARN_来变身成黑豹|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_前去找 |cRXP_ENEMY_工头巴尔索斯|r 并等待剧情演出结束|r
    >>|cRXP_WARN_注意：如果你受到坠落伤害，黑豹形态的增益效果就会消失|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>点击你的小地图下方的任务弹窗来交任务
    >>|cRXP_WARN_如果你做不了，返回并与|r |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 对话
    .turnin 13892 >>交任务 不着痕迹
    .accept 13948 >>接受任务 上前监视
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >>|cRXP_WARN_使用|r |T133236:0|t[黑豹雕像] |cRXP_WARN_再次变身成黑豹|r
    >>|cRXP_WARN_潜行到|r |cRXP_ENEMY_灾难预言者索维利恩|r |cRXP_WARN_身旁，爬上脚手架。再次等待剧情完成|r
    >>|cRXP_WARN_避开 |cRXP_ENEMY_无面者|r 因为他们具有隐形探测能力|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_熊怪长者|r 对话
    .target Elder Brolg
    .turnin 13526 >>交任务 熊爪草
    .accept 13544 >>接受任务 熊的祝福
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>击杀 |cRXP_ENEMY_迅足|r。拾取 |cRXP_LOOT_迅足的尾羽|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>击杀 |cRXP_ENEMY_被吞噬的蓟熊|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >>|cRXP_WARN_在|r |cRXP_WARN_远古熊雕像|r |cRXP_PICK_处使用|r |T134189:0|t[受祝福的草药包]
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 和 |cRXP_FRIENDLY_拉蕾|r 对话
    .turnin 13948 >>交任务 上前监视
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>接受任务 出土的知识
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .turnin 13881 >>交任务 病逝
    .accept 13882 >>接受任务 生命之种
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话来获得|cRXP_LOOT_大地之种|r
    .complete 13882,1
    .skipgossip
    .target 安努
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>寻找飞在空中的|cRXP_FRIENDLY_黑海岸小精灵|r。当它们靠近地面时，点击它们
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_熊怪长者|r 和 |cRXP_FRIENDLY_戈伦·裂皮|r 对话
    .turnin 13544 >>交任务 熊的祝福
    .accept 13545 >>接受任务 净化感染者
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>接受任务 碧火火盆
    .target +Gren Tornfur
    .goto 62,43.576,81.023
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>点击分散在营地周围的 |cRXP_PICK_碧玉火盆|r
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_对一只|cRXP_ENEMY_黑木熊怪|r使用|r |T237425:0|t[受祝福的草药包] |cRXP_WARN_，然后击杀召唤出的|r |cRXP_ENEMY_污染之魂|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_戈伦·裂皮|r 和 |cRXP_FRIENDLY_熊怪长者|r 对话
    .turnin 13572 >>交任务 碧火火盆
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>交任务 净化感染者
    .accept 13546 >>接受任务 污染者
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>击杀 |cRXP_ENEMY_污染者萨纳克斯|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_熊怪长者|r 对话
    .target Elder Brolg
    .turnin 13546 >>交任务 污染者
step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>打开地上的 |cRXP_PICK_闪光的贝壳|r。拾取 |cRXP_LOOT_海洋之种|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家格罗夫|r 对话
    .target Archaeologist Groff
    .turnin 13896 >>交任务 出土的知识
    .accept 13893 >>接受任务 索苟斯与克洛恩
    .accept 13907 >>接受任务 清扫废墟
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级考古学家费德|r 对话
    .target Jr. Archaeologist Ferd
    .accept 13912 >>接受任务 埋没的秘密
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勘察员雷塔维|r 对话
    .target 勘察员雷塔维
    .accept 13911 >>接受任务 心不在焉的勘察员
    >>|cRXP_WARN_这将开始一个护送任务|r
step
#questguide
    #completewith prospector
    #optional
    >>击杀 |cRXP_ENEMY_灰雾难民|r 和 |cRXP_ENEMY_灰雾智者|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob 灰雾智者
step
#questguide
    >>|cRXP_WARN_护送 |cRXP_FRIENDLY_勘察员雷塔维|r 穿过挖掘场|r
    .complete 13911,1
    .target 勘察员雷塔维
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级考古学家费德|r 对话
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>交任务 心不在焉的勘察员
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>点击水下的 |cRXP_PICK_裹着泥巴的古老圆盘|r
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>击杀 |cRXP_ENEMY_灰雾难民|r 和 |cRXP_ENEMY_灰雾智者|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob 灰雾智者
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家格罗夫|r 对话
    .target Archaeologist Groff
    .turnin 13907 >>交任务 清扫废墟
    .accept 13909 >>接受任务 有废料吗？
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_初级考古学家费德|r 对话
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>交任务 埋没的秘密
    .accept 13918 >>接受任务 泰坦终端
step
#questguide
#completewith next
    >>沿着海岸拾取 |cRXP_PICK_漂浮的灰雾残骸|r
    .complete 13909,1
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>使用 |T134519:0|t[地底圣物探测器] 来揭示沿海的 |cRXP_PICK_埋藏残骸|r，拾取其中的 |cRXP_LOOT_远古圣物碎片|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>沿着海岸拾取 |cRXP_PICK_漂浮的灰雾残骸|r
    .complete 13909,1
step
#questguide
    .use 46702 >>|cRXP_WARN_使用|r |T132997:0|t[远古圣物碎片] |cRXP_WARN_组合成|r |cRXP_LOOT_组装完成的远古圣物|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家格罗夫|r 和 |cRXP_FRIENDLY_初级考古学家费德|r 对话
    .turnin 13909 >>交任务 有废料吗？
    .accept 13910 >>接受任务 新家
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>交任务 泰坦终端
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >>|cRXP_WARN_在|r |cRXP_WARN_鱼人村落施工点|r|cRXP_PICK_使用|r |T132281:0|t[奇特的移动式鱼人茅舍制造器]
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家格罗夫|r 对话
    .target Archaeologist Groff
    .turnin 13910 >>交任务 新家
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉蕾|r 对话
    .target Larien
    .turnin 13893 >>交任务 索苟斯与克洛恩
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .turnin 13882 >>交任务 生命之种
    .accept 13925 >>接受任务 一点预防措施
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安努|r 对话
    .target 安努
    .accept 13895 >>接受任务 休眠的古树
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿洛斯|r 对话
    .target Aros
    .turnin 13895 >>交任务 休眠的古树
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_暗鳞刺客|r 对话
    .target Darkscale Assassin
    .accept 13953 >>接受任务 我们中的纳迦
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 和 |cRXP_FRIENDLY_菲尔罗斯|r 对话
    .turnin 13953 >>交任务 我们中的纳迦
    .accept 13899 >>接受任务 暗鳞督军
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>接受任务 形势对我们不利
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>|cRXP_WARN_对|r |cRXP_WARN_白尾鹿|cRXP_ENEMY_、|r灰斑蓟熊|cRXP_ENEMY_、|r月夜雌虎|cRXP_ENEMY_ 或 |r月夜雄虎|r |cRXP_ENEMY_使用|r |T133749:0|t[予生者幼苗]
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target 月夜雌虎
    .target 月夜雄虎
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .turnin 13925 >>交任务 一点预防措施
    .accept 13885 >>接受任务 保卫黑海岸
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >>|cRXP_WARN_与|cRXP_FRIENDLY_ 奥修斯|r 对话，骑上|r |cRXP_FRIENDLY_角鹰兽|r
    .skipgossip
step
#questguide
    >>|cRXP_WARN_对|r |cRXP_WARN_灰斑蓟熊|cRXP_ENEMY_、|r月夜猛虎|cRXP_ENEMY_ 和 |r白尾鹿|r |cRXP_ENEMY_施放|r |T136065:0|t[保护野生生命] (1)
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .turnin 13885 >>交任务 保卫黑海岸
    .accept 13891 >>接受任务 黑海岸的吞噬者
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >>|cRXP_WARN_对水下的|r 吞噬神器|cRXP_WARN_ 使用|cRXP_PICK_ |T133749:0|t[予生者幼苗] |r以召唤|r |cRXP_ENEMY_吞噬者尤萨尔|r
    .timer 10,黑海岸的吞噬者 剧情演出
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >>击杀 |cRXP_ENEMY_吞噬者尤萨尔|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>击杀 |cRXP_ENEMY_暗鳞随从|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>击杀 |cRXP_ENEMY_怒脊督军|r
    >>之后点击 |cRXP_FRIENDLY_怒脊督军|r 的尸体
    .mob Warlord Wrathspine
    .turnin 13899 >>交任务 暗鳞督军
    .accept 13900 >>接受任务 献给艾萨拉
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_出洞后前往入口上方的平台|r
    >>击杀 |cRXP_ENEMY_暗鳞女祭司|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,献给艾萨拉 剧情演出
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +|cRXP_WARN_与|cRXP_ENEMY_ 艾萨拉女王|r 一起等待剧情演出结束，并等待|cRXP_FRIENDLY_ 玛法里奥·怒风|r 到来|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .turnin 13900 >>交任务 献给艾萨拉
    .accept 13897 >>接受任务 黑海岸之战
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>击杀 |cRXP_ENEMY_暗鳞随从|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>前往主宰之剑|cRXP_WARN_并使用|r |T237377:0|t[远古之角]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>击杀 |cRXP_ENEMY_索苟斯的化身|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 对话
    .turnin 13897 >>交任务 黑海岸之战
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲尔罗斯|r 对话
    .turnin 13898 >>交任务 形势对我们不利
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡瑟娜·冬灵|r 对话
    .target Kathrena Winterwisp
    .turnin 13891 >>交任务 黑海岸的吞噬者
step
#questguide
    #completewith next
    .hs >>炉石回到洛达内尔
]])
