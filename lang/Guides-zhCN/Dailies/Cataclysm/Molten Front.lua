if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group 熔火前线
#name A_1_熔火前线_开始
#next B_1_玛洛恩庇护所_开始
#displayname |cRXP_LOOT_1.0|r - 进攻火焰之地

step
    #completewith OpeningtheDoor
	.zone 85 >>前往奥格瑞玛 << Horde
	.zone 84 >>前往暴风城 << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >>使用传送门前往海加尔山
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r对话
    .target Matoclaw
    .accept 29145 >>接受任务 开门
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .target 大德鲁伊哈缪尔·符文图腾
    .turnin 29145 >>交任务 开门
    .accept 29195 >>接受任务 烈焰仪式
step
    .goto 198/1,-2092.900,4621.800
    >>击杀 |cRXP_ENEMY_灼焦入侵者|r 直到你的进度条完成。这会打开传送门并放出 |cRXP_ENEMY_莱雅娜|r
    >>击杀|cRXP_ENEMY_莱雅娜|r
    >>|cRXP_WARN_你不需要在她身上拿到标记|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 29195 >>交任务 烈焰仪式
    .accept 29196 >>接受任务 前往庇护所！
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r对话
    .target Matoclaw
    .turnin 29196 >>交任务 前往庇护所！
    .accept 29197 >>接受任务 出其不意
step
    .goto 198/1,-1980.300,4628.000
    >>在 |cRXP_ENEMY_希萨莉·黑鸦|r 附近击杀 |cRXP_FRIENDLY_狂怒的入侵者|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>在 |cRXP_ENEMY_老树干|r 附近击杀 |cRXP_FRIENDLY_狂怒的入侵者|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>在 |cRXP_ENEMY_索罗·白蹄|r 和 |cRXP_FRIENDLY_安伦·觅影者|r 附近击杀 |cRXP_FRIENDLY_狂怒的入侵者|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .target 大德鲁伊哈缪尔·符文图腾
    .turnin 29197 >>交任务 出其不意
    .accept 29198 >>接受任务 庇护所保卫战
step
    .goto 198/1,-2080.200,4421.700
    >>|cRXP_WARN_等剧情结束|r
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 29198 >>交任务 庇护所保卫战
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .target 大德鲁伊哈缪尔·符文图腾
    .accept 29199 >>接受任务 寻求增援
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>接取随机刷新的日常任务
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_米露恩|r 对话
    .daily 29125,29147,29164,29101,29161 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>点击 |cRXP_FRIENDLY_托尔托拉之子|r
    >>|cRXP_WARN_瞄准水面，施放|r |T132219:0|t[踢海龟] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .use 69235 >>|cRXP_WARN_在他们的尸体上|r|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙]
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来变身成|r |cRXP_FRIENDLY_艾维娜之翼|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_在 |r高山鸣雀|cRXP_WARN_, |cRXP_FRIENDLY_森林猫头鹰|r 和|cRXP_FRIENDLY_ |r金翼雄鹰|r |cRXP_FRIENDLY_附近使用|r |T132172:0|t[召唤鸟群] (1)
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>站在一位 |cRXP_FRIENDLY_玛洛恩之魂|r 面前
    >>|cRXP_WARN_这些是幽灵鹿，它们会四处奔跑|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>点击 |cRXP_PICK_攀爬树|r 来攀爬它
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>点击树上的 |cRXP_FRIENDLY_海加尔幼熊|r
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_施放|r |T450907:0|t[往上爬] (1) |cRXP_WARN_直到到达顶部。瞄准 |cRXP_FRIENDLY_守护者塔尔德罗斯|r 旁边的蹦床，施放|r |T446127:0|t[抛熊崽] (4)|cRXP_WARN_。然后施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_并重复整个过程|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    .isOnQuest 29161
    >>在任务日志中点击任务提交弹窗。
    .turnin 29161 >>交任务 熊就在那里
    .accept 29162 >>接受任务 自然的祝福
step
    .isQuestTurnedIn 29161
    >>在任务日志中点击任务提交弹窗。
    .accept 29162 >>接受任务 自然的祝福
step
    .isOnQuest 29125
    >>在任务日志中点击任务提交弹窗。
    .turnin 29125 >>交任务 林木之间
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isQuestTurnedIn 29125
    >>在任务日志中点击任务提交弹窗。
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isOnQuest 29147
    >>在任务日志中点击任务提交弹窗。
    .turnin 29147 >>交任务 召唤鸟群
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isQuestTurnedIn 29147
    >>在任务日志中点击任务提交弹窗。
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isOnQuest 29164
    >>在任务日志中点击任务提交弹窗。
    .turnin 29164 >>交任务 让你的吼声更完美
    .accept 29165 >>接受任务 召唤兽群
step
    .isQuestTurnedIn 29164
    >>在任务日志中点击任务提交弹窗。
    .accept 29165 >>接受任务 召唤兽群
step
    .isOnQuest 29101
    >>在任务日志中点击任务提交弹窗。
    .turnin 29101 >>交任务 踢飞季节
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    .isQuestTurnedIn 29101
    >>在任务日志中点击任务提交弹窗。
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_来召唤|r |cRXP_ENEMY_派拉齐尼斯|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>击杀 |cRXP_ENEMY_派拉齐尼斯|r
    >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_移除|r |cRXP_WARN_派拉齐尼斯|cRXP_ENEMY_ |r施加的 |T136016:0|t[沸腾毒箭] 减益|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_在|r 灰烬堆|cRXP_WARN_ 上使用|cRXP_PICK_ |T135139:0|t[守护者之杖] |r来召唤|r |cRXP_ENEMY_盖伦格斯|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>击杀|cRXP_ENEMY_盖伦格斯|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_在西部的火焰传送门附近使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来召唤|r |cRXP_ENEMY_米拉盖佐尔|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>击杀 |cRXP_ENEMY_米拉盖佐尔|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙] |cRXP_WARN_来召唤|r |cRXP_ENEMY_莱拉克斯|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>击杀 |cRXP_ENEMY_莱拉克斯|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>与 |cRXP_FRIENDLY_图加|r 对话来召唤 |cRXP_ENEMY_涅墨西斯|r
    .skipgossip
    .target 图加
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>击杀 |cRXP_ENEMY_涅墨西斯|r
    >>|cRXP_WARN_站在 |cRXP_FRIENDLY_图加|r 的壳下，以此免受|r |cRXP_ENEMY_涅墨西斯|r |cRXP_WARN_施放的|r |T135830:0|t[熔岩之怒]
    .complete 29122,1 -- Nemesis slain (1)
    .target 图加
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29162 >>交任务 自然的祝福
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29122 >>交任务 涅墨西斯的回声
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29126 >>交任务 玛洛恩的力量
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29165 >>交任务 召唤兽群
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29148 >>交任务 羽翼烈焰
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29166 >>交任务 送往前线的补给
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29123 >>交任务 灭火之怒
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29149 >>交任务 灭火之怒
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29127 >>交任务 灭火之怒
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29163 >>交任务 灭火之怒
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r 对话
    .target 大德鲁伊哈缪尔·符文图腾
    .turnin 29199 >>交任务 寻求增援
    .accept 29200 >>接受任务 莱雅娜
step
    .goto 198/1,-1214.200,5236.700
    >>与 |cRXP_ENEMY_莱雅娜|r 对话
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .turnin 29200 >>交任务 莱雅娜
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .accept 29201 >>接受任务 穿越地狱之门
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    >>击杀 |cRXP_ENEMY_黑曜石熔渣之主|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 29201 >>交任务 穿越地狱之门
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group 熔火前线
#name B_1_玛洛恩庇护所_开始
#next C_1_玛洛恩庇护所_德鲁伊
#displayname |cRXP_FRIENDLY_2.0|r - 熔火前线

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .daily 29139,29143 >>接取随机刷新的日常任务
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .daily 29138 >>接受任务 烧伤患者
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29179 >>接受任务 元素敌人
    .daily 29304,29141,29142,29137 >>接取随机刷新的日常任务
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_对|r |cRXP_WARN_受伤的海加尔防御者|r |cRXP_FRIENDLY_使用|r |T463860:0|t[魔法药膏]
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦征服者|r 和 |cRXP_ENEMY_灼焦士兵|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier


step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀|cRXP_ENEMY_灼焦恶犬|r和|cRXP_ENEMY_上古灼焦恶犬|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔火巨兽|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>击杀 |cRXP_ENEMY_利爪德鲁伊|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔岩破坏者|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>点击地上的 |cRXP_PICK_燃灰堆|r
    .complete 29139,1 -- Smothervine planted (5)
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_带跟随你的|cRXP_FRIENDLY_ 海加尔小精灵|r 到火焰传送门处|r
    >>|cRXP_WARN_杀死从中出来的小怪。|cRXP_FRIENDLY_ 务必保护好|r 海加尔小精灵|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29179 >>交任务 元素敌人
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29304 >>交任务 犬祸
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29141 >>交任务 摔得更惨
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29142 >>交任务 叛徒归来
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29137 >>交任务 防线上的突破口
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .dailyturnin 29138 >>交任务 烧伤患者
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29139 >>交任务 顽强生长
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29143 >>交任务 小精灵出发
    .target Rayne Feathersong




--Hyjal quests

step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_队长索伦·月落|r 对话
    .target Captain Soren Moonfall
    .daily 29128 >>接受任务 海加尔的保卫者
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_米露恩|r 对话
    .daily 29125,29147,29164,29101,29161 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>点击 |cRXP_FRIENDLY_托尔托拉之子|r
    >>|cRXP_WARN_瞄准水面，施放|r |T132219:0|t[踢海龟] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .use 69235 >>|cRXP_WARN_在他们的尸体上|r|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙]
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来变身成|r |cRXP_FRIENDLY_艾维娜之翼|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_在 |r高山鸣雀|cRXP_WARN_, |cRXP_FRIENDLY_森林猫头鹰|r 和|cRXP_FRIENDLY_ |r金翼雄鹰|r |cRXP_FRIENDLY_附近使用|r |T132172:0|t[召唤鸟群] (1)
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>站在一位 |cRXP_FRIENDLY_玛洛恩之魂|r 面前
    >>|cRXP_WARN_这些是幽灵鹿，它们会四处奔跑|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>点击 |cRXP_PICK_攀爬树|r 来攀爬它
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>点击树上的 |cRXP_FRIENDLY_海加尔幼熊|r
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_施放|r |T450907:0|t[往上爬] (1) |cRXP_WARN_直到到达顶部。瞄准 |cRXP_FRIENDLY_守护者塔尔德罗斯|r 旁边的蹦床，施放|r |T446127:0|t[抛熊崽] (4)|cRXP_WARN_。然后施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_并重复整个过程|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    .isOnQuest 29161
    >>在任务日志中点击任务提交弹窗。
    .turnin 29161 >>交任务 熊就在那里
    .accept 29162 >>接受任务 自然的祝福
step
    .isQuestTurnedIn 29161
    >>在任务日志中点击任务提交弹窗。
    .accept 29162 >>接受任务 自然的祝福
step
    .isOnQuest 29125
    >>在任务日志中点击任务提交弹窗。
    .turnin 29125 >>交任务 林木之间
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isQuestTurnedIn 29125
    >>在任务日志中点击任务提交弹窗。
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isOnQuest 29147
    >>在任务日志中点击任务提交弹窗。
    .turnin 29147 >>交任务 召唤鸟群
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isQuestTurnedIn 29147
    >>在任务日志中点击任务提交弹窗。
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isOnQuest 29164
    >>在任务日志中点击任务提交弹窗。
    .turnin 29164 >>交任务 让你的吼声更完美
    .accept 29165 >>接受任务 召唤兽群
step
    .isQuestTurnedIn 29164
    >>在任务日志中点击任务提交弹窗。
    .accept 29165 >>接受任务 召唤兽群
step
    .isOnQuest 29101
    >>在任务日志中点击任务提交弹窗。
    .turnin 29101 >>交任务 踢飞季节
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    .isQuestTurnedIn 29101
    >>在任务日志中点击任务提交弹窗。
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_来召唤|r |cRXP_ENEMY_派拉齐尼斯|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>击杀 |cRXP_ENEMY_派拉齐尼斯|r
    >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_移除|r |cRXP_WARN_派拉齐尼斯|cRXP_ENEMY_ |r施加的 |T136016:0|t[沸腾毒箭] 减益|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_在|r 灰烬堆|cRXP_WARN_ 上使用|cRXP_PICK_ |T135139:0|t[守护者之杖] |r来召唤|r |cRXP_ENEMY_盖伦格斯|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>击杀|cRXP_ENEMY_盖伦格斯|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_在西部的火焰传送门附近使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来召唤|r |cRXP_ENEMY_米拉盖佐尔|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>击杀 |cRXP_ENEMY_米拉盖佐尔|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙] |cRXP_WARN_来召唤|r |cRXP_ENEMY_莱拉克斯|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>击杀 |cRXP_ENEMY_莱拉克斯|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>与 |cRXP_FRIENDLY_图加|r 对话来召唤 |cRXP_ENEMY_涅墨西斯|r
    .skipgossip
    .target 图加
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>击杀 |cRXP_ENEMY_涅墨西斯|r
    >>|cRXP_WARN_站在 |cRXP_FRIENDLY_图加|r 的壳下，以此免受|r |cRXP_ENEMY_涅墨西斯|r |cRXP_WARN_施放的|r |T135830:0|t[熔岩之怒]
    .complete 29122,1 -- Nemesis slain (1)
    .target 图加
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>击杀 |cRXP_ENEMY_灼焦火妖|r。拾取 |cRXP_LOOT_火妖的鳞片|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r。拾取 |cRXP_LOOT_沾满硫磺的包裹|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_炙热的葬火领主|r。拾取 |cRXP_LOOT_烈焰裹附核心|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29162 >>交任务 自然的祝福
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29122 >>交任务 涅墨西斯的回声
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29126 >>交任务 玛洛恩的力量
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29165 >>交任务 召唤兽群
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29148 >>交任务 羽翼烈焰
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29166 >>交任务 送往前线的补给
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29123 >>交任务 灭火之怒
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29149 >>交任务 灭火之怒
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29127 >>交任务 灭火之怒
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29163 >>交任务 灭火之怒
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>交任务 镇痛
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>交任务 疗伤
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>交任务 减压
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29128 >>交任务 海加尔的保卫者
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .accept 29181 >>接受任务 猛禽德鲁伊
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_啸天者欧穆隆|r 对话
    .turnin 29181 >>交任务 猛禽德鲁伊
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_你已完成今日所有可接的日常任务。明天再重新载入本指南 (|r|cRXP_FRIENDLY_2.0|r - 熔火前线|cRXP_WARN_) 来继续完成日常任务，直到你获得足够的|r |T513195:0|t[世界之树的印记]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾莎娜·溪行|r 对话
    .target Isara Riverstride
    .accept 29182 >>接受任务 风暴乌鸦的飞行
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_啸天者欧穆隆|r 对话
    .turnin 29182 >>交任务 风暴乌鸦的飞行
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29206 >>接受任务 进入火焰之中
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>护送 |cRXP_FRIENDLY_唤风者|r 穿过熔炉
    >>击杀最后出现的 |cRXP_ENEMY_葬火领主|r
    >>如果 |cRXP_FRIENDLY_啸天者欧穆隆|r 不在，就到火焰前与 |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r 对话
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >>|cRXP_WARN_掉进大洞。前往|r |cRXP_FRIENDLY_希萨莉·黑鸦|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希萨莉·黑鸦|r 对话
    .dailyturnin 29206 >>交任务 进入火焰之中
    .daily 29264 >>接受任务 熔火激流的火妖
    .daily 29265 >>接受任务 火焰之花
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>击杀 |cRXP_ENEMY_火妖哨兵|r、|cRXP_ENEMY_火妖猎人|r 和 |cRXP_ENEMY_火妖萨满|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>拾取地上的 |cRXP_LOOT_炼狱花|r
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    .accept 29272 >>接受任务 真的……需要……水……
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >>再次与 |cRXP_FRIENDLY_安伦·觅影者|r 对话以开始护送
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>护送 |cRXP_FRIENDLY_安伦·觅影者|r
    >>|cRXP_WARN_紧跟他，|r|cRXP_WARN_并与他一起跳上|r|T514278:0|t[暖气流喷管]
    .complete 29272,1 -- Escort Anren Shadowseeker to the front of the cave 1/1
    .target Anren Shadowseeker
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>击杀 |cRXP_ENEMY_火妖哨兵|r、|cRXP_ENEMY_火妖猎人|r 和 |cRXP_ENEMY_火妖萨满|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>拾取地上的 |cRXP_LOOT_炼狱花|r
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希萨莉·黑鸦|r 对话
    .dailyturnin 29264 >>交任务 熔火激流的火妖
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >>|cRXP_WARN_回到你之前跳下来的那个大洞口。站在|r |T514278:0|t[暖气流喷管]|cRXP_WARN_上，然后往上跳，就能回到熔火前线的地面了|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_往上跳就能回到熔火前线的地面|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    .turnin 29272 >>交任务 真的……需要……水……
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 或 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    .daily 29273,29274 >>接取随机刷新的日常任务
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_楚伦娜|r 对话
    .dailyturnin 29265 >>交任务 火焰之花
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .daily 29290,29287,29288 >>接取随机刷新的日常任务
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .daily 29293,29296 >>接取随机刷新的日常任务
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_驯服的火鹰|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_施放|r |T135821:0|t[火种术] (1) |cRXP_WARN_和|r |T451164:0|t[火焰爆裂] (2) |cRXP_WARN_来击杀|cRXP_ENEMY_ |r火妖小怪|cRXP_ENEMY_、|r烬网小怪|r 和 |cRXP_ENEMY_熔火领主|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_施放|r |T514278:0|t[返回熔炉] (6) |cRXP_WARN_来返回|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >>|cRXP_WARN_使用踏脚石登上火羽峰。最好在踏脚石尽头使用一个通风口，这样可以获得 |r |T236222:0|t[康复之风] |cRXP_WARN_增益，使你的攻击速度和急速提高 100 %，并让你跳得更高更远|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_在火羽峰|r |cRXP_WARN_岩浆池|r |cRXP_PICK_处使用|r |T135155:0|t[索罗的温度计]
    >>|cRXP_WARN_可以在骑乘时使用|r |T135155:0|t[索罗的温度计]
    >>|cRXP_WARN_使用分布于火羽峰各处的|r |T514278:0|t[暖气流喷管] |cRXP_WARN_来向上跳，一路登上山顶|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>拾取火羽峰顶上的一个 |cRXP_LOOT_火鹰卵|r
    >>|cRXP_WARN_使用分布于火羽峰各处的|r |T514278:0|t[暖气流喷管] |cRXP_WARN_来向上跳，一路登上山顶|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>点击 |cRXP_FRIENDLY_受伤的猛禽德鲁伊|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Druid of the Talon
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>击杀 |cRXP_ENEMY_火鹰|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>点击 |cRXP_FRIENDLY_火鹰雏鸟|r
    >>|cRXP_WARN_火羽峰顶部有很多只|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
 step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29290 >>交任务 天空中的火焰
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29287 >>交任务 事起山峰
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29288 >>交任务 从小抓起
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .dailyturnin 29293 >>交任务 焦黑的羽翼
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .dailyturnin 29296 >>交任务 鸟儿的领地意识
    .target Arthorn Windsong
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    .dailyturnin 29273 >>交任务 到底有多热
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    .dailyturnin 29274 >>交任务 沙恩诺克斯的猎狗
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>接受任务 暗影守望者
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_你已完成今日所有可接的日常任务。明天再重新载入本指南 (|r|cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊|cRXP_WARN_) 来继续完成日常任务，直到你获得足够的|r |T513195:0|t[世界之树的印记]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group 熔火前线
#name C_1_玛洛恩庇护所_德鲁伊
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
#displayname |cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_你必须先收集 150 个|r |T513195:0|t[世界之树的印记] |cRXP_WARN_并交还 [猛禽德鲁伊] 任务，才能解锁他们的日常|r
    >>|cRXP_WARN_继续完成 (|r|cRXP_FRIENDLY_2.0|r - 熔火前线|cRXP_WARN_) 指南直到你拥有足够的|r |T513195:0|t[世界之树的印记]
    .goto 198,47.017,91.361
    .turnin 29181 >>交任务 猛禽德鲁伊
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >>前往奥格瑞玛 << Horde
	.zone 84 >>前往暴风城 << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_队长索伦·月落|r 对话
    .target Captain Soren Moonfall
    .daily 29128 >>接受任务 海加尔的保卫者
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_米露恩|r 对话
    .daily 29125,29147,29164,29101,29161 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>点击 |cRXP_FRIENDLY_托尔托拉之子|r
    >>|cRXP_WARN_瞄准水面，施放|r |T132219:0|t[踢海龟] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .use 69235 >>|cRXP_WARN_在他们的尸体上|r|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙]
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来变身成|r |cRXP_FRIENDLY_艾维娜之翼|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_在 |r高山鸣雀|cRXP_WARN_, |cRXP_FRIENDLY_森林猫头鹰|r 和|cRXP_FRIENDLY_ |r金翼雄鹰|r |cRXP_FRIENDLY_附近使用|r |T132172:0|t[召唤鸟群] (1)
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>站在一位 |cRXP_FRIENDLY_玛洛恩之魂|r 面前
    >>|cRXP_WARN_这些是幽灵鹿，它们会四处奔跑|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>点击 |cRXP_PICK_攀爬树|r 来攀爬它
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>点击树上的 |cRXP_FRIENDLY_海加尔幼熊|r
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_施放|r |T450907:0|t[往上爬] (1) |cRXP_WARN_直到到达顶部。瞄准 |cRXP_FRIENDLY_守护者塔尔德罗斯|r 旁边的蹦床，施放|r |T446127:0|t[抛熊崽] (4)|cRXP_WARN_。然后施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_并重复整个过程|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    .isOnQuest 29161
    >>在任务日志中点击任务提交弹窗。
    .turnin 29161 >>交任务 熊就在那里
    .accept 29162 >>接受任务 自然的祝福
step
    .isQuestTurnedIn 29161
    >>在任务日志中点击任务提交弹窗。
    .accept 29162 >>接受任务 自然的祝福
step
    .isOnQuest 29125
    >>在任务日志中点击任务提交弹窗。
    .turnin 29125 >>交任务 林木之间
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isQuestTurnedIn 29125
    >>在任务日志中点击任务提交弹窗。
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isOnQuest 29147
    >>在任务日志中点击任务提交弹窗。
    .turnin 29147 >>交任务 召唤鸟群
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isQuestTurnedIn 29147
    >>在任务日志中点击任务提交弹窗。
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isOnQuest 29164
    >>在任务日志中点击任务提交弹窗。
    .turnin 29164 >>交任务 让你的吼声更完美
    .accept 29165 >>接受任务 召唤兽群
step
    .isQuestTurnedIn 29164
    >>在任务日志中点击任务提交弹窗。
    .accept 29165 >>接受任务 召唤兽群
step
    .isOnQuest 29101
    >>在任务日志中点击任务提交弹窗。
    .turnin 29101 >>交任务 踢飞季节
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    .isQuestTurnedIn 29101
    >>在任务日志中点击任务提交弹窗。
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_来召唤|r |cRXP_ENEMY_派拉齐尼斯|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>击杀 |cRXP_ENEMY_派拉齐尼斯|r
    >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_移除|r |cRXP_WARN_派拉齐尼斯|cRXP_ENEMY_ |r施加的 |T136016:0|t[沸腾毒箭] 减益|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_在|r 灰烬堆|cRXP_WARN_ 上使用|cRXP_PICK_ |T135139:0|t[守护者之杖] |r来召唤|r |cRXP_ENEMY_盖伦格斯|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>击杀|cRXP_ENEMY_盖伦格斯|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_在西部的火焰传送门附近使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来召唤|r |cRXP_ENEMY_米拉盖佐尔|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>击杀 |cRXP_ENEMY_米拉盖佐尔|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙] |cRXP_WARN_来召唤|r |cRXP_ENEMY_莱拉克斯|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>击杀 |cRXP_ENEMY_莱拉克斯|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>与 |cRXP_FRIENDLY_图加|r 对话来召唤 |cRXP_ENEMY_涅墨西斯|r
    .skipgossip
    .target 图加
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>击杀 |cRXP_ENEMY_涅墨西斯|r
    >>|cRXP_WARN_站在 |cRXP_FRIENDLY_图加|r 的壳下，以此免受|r |cRXP_ENEMY_涅墨西斯|r |cRXP_WARN_施放的|r |T135830:0|t[熔岩之怒]
    .complete 29122,1 -- Nemesis slain (1)
    .target 图加
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>击杀 |cRXP_ENEMY_灼焦火妖|r。拾取 |cRXP_LOOT_火妖的鳞片|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r。拾取 |cRXP_LOOT_沾满硫磺的包裹|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_炙热的葬火领主|r。拾取 |cRXP_LOOT_烈焰裹附核心|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29162 >>交任务 自然的祝福
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29122 >>交任务 涅墨西斯的回声
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29126 >>交任务 玛洛恩的力量
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29165 >>交任务 召唤兽群
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29148 >>交任务 羽翼烈焰
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29166 >>交任务 送往前线的补给
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29123 >>交任务 灭火之怒
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29149 >>交任务 灭火之怒
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29127 >>交任务 灭火之怒
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29163 >>交任务 灭火之怒
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>交任务 镇痛
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>交任务 疗伤
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>交任务 减压
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .daily 29255,29257,29299 >>接取随机刷新的日常任务
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .daily 29139,29143 >>接取随机刷新的日常任务
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_莉吉特|r 今天没有提供任务，请跳过此步骤|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .daily 29138 >>接受任务 烧伤患者
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29179 >>接受任务 元素敌人
    .daily 29304,29141,29142,29137 >>接取随机刷新的日常任务
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29128 >>交任务 海加尔的保卫者
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_对|r |cRXP_WARN_受伤的海加尔防御者|r |cRXP_FRIENDLY_使用|r |T463860:0|t[魔法药膏]
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦士兵|r 和 |cRXP_ENEMY_灼焦征服者|r，并拾取它们的 |cRXP_LOOT_烬蜡|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦征服者|r 和 |cRXP_ENEMY_灼焦士兵|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀|cRXP_ENEMY_灼焦恶犬|r和|cRXP_ENEMY_上古灼焦恶犬|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔火巨兽|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>击杀 |cRXP_ENEMY_利爪德鲁伊|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔岩破坏者|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>点击地上的 |cRXP_PICK_燃灰堆|r
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>拾取小熔岩池内的 |cRXP_LOOT_熔岩花|r
    >>|cRXP_WARN_如果在拾取物品后刷出了一只 |cRXP_ENEMY_熔岩破坏者|r 击杀它并拾取|r |cRXP_LOOT_熔岩花|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_带上你的 |cRXP_FRIENDLY_火红鞭笞者|r 去和 |r熔焰蝎虫|cRXP_ENEMY_ 战斗|r << !Hunter
    >>|cRXP_WARN_对一只 |r熔焰蝎虫|cRXP_WARN_ 使用|cRXP_ENEMY_ |T135834:0|t[冰冻陷阱] |r。它会持续施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会不断地喝掉这些熔岩。这样一来，你就只需要一只 |r熔焰蝎虫|cRXP_ENEMY_ 就能完成这个日常任务|r << Hunter
    >>|cRXP_WARN_熔焰蝎虫|cRXP_ENEMY_ |r会施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会自己喝掉|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>点击熔岩池中的 |cRXP_PICK_呼吸气泡|r 来召唤一只 |cRXP_ENEMY_潜地熔岩虫|r
    .use 69759 >>|cRXP_WARN_当你看到警告信息：“虫要咬人了！现在就把炸弹放下去！”时，使用|r |T133710:0|t[苦果炸弹]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>点击 |cRXP_PICK_磁石|r，然后拾取掉落的 |cRXP_LOOT_黑曜石陨星|r
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_带跟随你的|cRXP_FRIENDLY_ 海加尔小精灵|r 到火焰传送门处|r
    >>|cRXP_WARN_杀死从中出来的小怪。|cRXP_FRIENDLY_ 务必保护好|r 海加尔小精灵|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29255 >>交任务 烬蜡
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29257 >>交任务 摘点熔岩花来
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29299 >>交任务 热情如火
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29139 >>交任务 顽强生长
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29143 >>交任务 小精灵出发
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29263 >>交任务 一颗苦果
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29278 >>交任务 活体黑曜石
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29295 >>交任务 它们越大
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29297 >>交任务 再见小鸟
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29179 >>交任务 元素敌人
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29304 >>交任务 犬祸
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29141 >>交任务 摔得更惨
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29142 >>交任务 叛徒归来
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29137 >>交任务 防线上的突破口
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .dailyturnin 29138 >>交任务 烧伤患者
    .target Captain Irontree

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .accept 29214 >>接受任务 暗影守望者
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨伊娜·风驰队长|r 对话
    .turnin 29214 >>交任务 暗影守望者
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    >>|cRXP_WARN_注意：如果你刚刚交完任务 [暗影守望者]，但 |cRXP_FRIENDLY_麦托克劳|r 还没有给你这个任务，那你只能在日常任务重置后才能接到它。等到明天再来看看吧|r
    .target Matoclaw
    .accept 29215 >>接受任务 开始狩猎
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨伊娜·风驰队长|r 对话
    .turnin 29215 >>交任务 开始狩猎
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >>前往野火哨站
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>击杀一名 |cRXP_ENEMY_烈焰德鲁伊|r。他会掉落一颗 |cRXP_PICK_干橡果|r 在地上
    >>|cRXP_WARN_你必须在野火哨站击杀 |cRXP_ENEMY_利爪德鲁伊|r。在灰烬旷野中的那些不会计数|r
    >>点击地上的 |cRXP_PICK_干橡果|r
    .accept 29245 >>接受任务 神秘的种子
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .turnin 29245 >>交任务 神秘的种子
    .accept 29249 >>接受任务 植树的季节
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >>点击地上的 |cRXP_PICK_安戈洛的泥土|r
    .timer 10,植树的季节 剧情演出
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>|cRXP_WARN_等剧情结束|r
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>在任务日志中点击任务提交弹窗。
    .turnin 29249 >>交任务 植树的季节
    .accept 29254 >>接受任务 小小的鞭笞者
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .turnin 29254 >>交任务 小小的鞭笞者
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .daily 29255,29257,29299 >>接取随机刷新的日常任务
    .target Avrilla
step -- Embergris 29255
    .isOnQuest 29255
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦士兵|r 和 |cRXP_ENEMY_灼焦征服者|r，并拾取它们的 |cRXP_LOOT_烬蜡|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>拾取小熔岩池内的 |cRXP_LOOT_熔岩花|r
    >>|cRXP_WARN_如果在拾取物品后刷出了一只 |cRXP_ENEMY_熔岩破坏者|r 击杀它并拾取|r |cRXP_LOOT_熔岩花|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_带上你的 |cRXP_FRIENDLY_火红鞭笞者|r 去和 |r熔焰蝎虫|cRXP_ENEMY_ 战斗|r << !Hunter
    >>|cRXP_WARN_对一只 |r熔焰蝎虫|cRXP_WARN_ 使用|cRXP_ENEMY_ |T135834:0|t[冰冻陷阱] |r。它会持续施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会不断地喝掉这些熔岩。这样一来，你就只需要一只 |r熔焰蝎虫|cRXP_ENEMY_ 就能完成这个日常任务|r << Hunter
    >>|cRXP_WARN_熔焰蝎虫|cRXP_ENEMY_ |r会施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会自己喝掉|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29255 >>交任务 烬蜡
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29257 >>交任务 摘点熔岩花来
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29299 >>交任务 热情如火
    .target Avrilla
step
    #label ITF
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29206 >>接受任务 进入火焰之中
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>护送 |cRXP_FRIENDLY_唤风者|r 穿过熔炉
    >>击杀最后出现的 |cRXP_ENEMY_葬火领主|r
    >>如果 |cRXP_FRIENDLY_啸天者欧穆隆|r 不在，就到火焰前与 |cRXP_FRIENDLY_唤风者塔鲁·黑蹄|r 对话
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Windcaller Nordrala
    .target Windcaller Voramus
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >>点击 |cRXP_PICK_垂降绳索|r 下入熔火激流
step
    #completewith next
    .subzone 5746 >>|cRXP_WARN_掉进大洞。前往|r |cRXP_FRIENDLY_希萨莉·黑鸦|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希萨莉·黑鸦|r 对话
    .dailyturnin 29206 >>交任务 进入火焰之中
    .daily 29264 >>接受任务 熔火激流的火妖
    .daily 29265 >>接受任务 火焰之花
    .target Thisalee Crow
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    >>|cRXP_WARN_注释：如果 |cRXP_FRIENDLY_安伦·觅影者|r 没有刷新在地下这个位置，请跳过此步骤|r
    .daily 29274 >>接受任务 沙恩诺克斯的猎狗
    .target Anren Shadowseeker
    .questcount <1,29273,29274
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>击杀 |cRXP_ENEMY_火妖哨兵|r、|cRXP_ENEMY_火妖猎人|r 和 |cRXP_ENEMY_火妖萨满|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step
    .isOnQuest 29274
    #sticky
    #label Houndbones
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>击杀 |cRXP_ENEMY_灼焦恶犬|r。拾取它们的 |cRXP_LOOT_猎狗骨灰|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>拾取地上的 |cRXP_LOOT_炼狱花|r
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    #optional
    #requires Houndbones
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希萨莉·黑鸦|r 对话
    .dailyturnin 29264 >>交任务 熔火激流的火妖
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >>|cRXP_WARN_回到你之前跳下来的那个大洞口。站在|r |T514278:0|t[暖气流喷管]|cRXP_WARN_上，然后往上跳，就能回到熔火前线的地面了|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_往上跳就能回到熔火前线的地面|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    .daily 29273 >>接受任务 到底有多热
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_楚伦娜|r 对话
    .dailyturnin 29265 >>交任务 火焰之花
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    >>|cRXP_WARN_如果她不在就跳过这一步|r
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    .target Ricket
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .daily 29290,29287,29288 >>接取随机刷新的日常任务
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .daily 29293,29296 >>接取随机刷新的日常任务
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >>召唤坐骑 |cRXP_FRIENDLY_驯服的火鹰|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_施放|r |T135821:0|t[火种术] (1) |cRXP_WARN_和|r |T451164:0|t[火焰爆裂] (2) |cRXP_WARN_来击杀|cRXP_ENEMY_ |r火妖小怪|cRXP_ENEMY_、|r烬网小怪|r 和 |cRXP_ENEMY_熔火领主|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_施放|r |T514278:0|t[返回熔炉] (6) |cRXP_WARN_来返回|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
    .subzone 5748 >>|cRXP_WARN_使用踏脚石登上火羽峰。最好在踏脚石尽头使用一个通风口，这样可以获得 |r |T236222:0|t[康复之风] |cRXP_WARN_增益，使你的攻击速度和急速提高 100 %，并让你跳得更高更远|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_在火羽峰|r |cRXP_WARN_岩浆池|r |cRXP_PICK_处使用|r |T135155:0|t[索罗的温度计]
    >>|cRXP_WARN_可以在骑乘时使用|r |T135155:0|t[索罗的温度计]
    >>|cRXP_WARN_使用分布于火羽峰各处的|r |T514278:0|t[暖气流喷管] |cRXP_WARN_来向上跳，一路登上山顶|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>拾取火羽峰顶上的一个 |cRXP_LOOT_火鹰卵|r
    >>|cRXP_WARN_使用分布于火羽峰各处的|r |T514278:0|t[暖气流喷管] |cRXP_WARN_来向上跳，一路登上山顶|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>点击 |cRXP_FRIENDLY_受伤的猛禽德鲁伊|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Injured Druid of the Talon
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #sticky
    #label ObsidiumChips
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>击杀 |cRXP_ENEMY_黑曜石惩罚者|r。然后拾取它们掉落的 |cRXP_LOOT_活体黑曜石碎片|r
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>击杀 |cRXP_ENEMY_火鹰|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>点击 |cRXP_FRIENDLY_火鹰雏鸟|r
    >>|cRXP_WARN_火羽峰顶部有很多只|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    #optional
    #requires ObsidiumChips
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29290 >>交任务 天空中的火焰
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29287 >>交任务 事起山峰
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫希斯·轻翼|r 对话
    .dailyturnin 29288 >>交任务 从小抓起
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .dailyturnin 29293 >>交任务 焦黑的羽翼
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔索恩·风歌|r 对话
    .dailyturnin 29296 >>交任务 鸟儿的领地意识
    .target Arthorn Windsong
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_楚伦娜|r 对话
    .daily 29305 >>接受任务 直击要害
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>击杀其中一名 |cRXP_ENEMY_烈焰副官|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_啸天者欧穆隆|r 对话
    .dailyturnin 29305 >>交任务 直击要害
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29295 >>交任务 它们越大
    .target Damek Bloombeard
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    .dailyturnin 29273 >>交任务 到底有多热
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    .dailyturnin 29274 >>交任务 沙恩诺克斯的猎狗
    .target Tholo Whitehoof

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔兰·高枝|r 对话
    .accept 29283 >>接受任务 呼唤古树
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_老树干|r 对话
    .turnin 29283 >>交任务 呼唤古树
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .accept 29284 >>接受任务 古树的援助
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_老树干|r 对话
    .turnin 29284 >>交任务 古树的援助
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_楚伦娜|r 对话
    .daily 29305 >>接受任务 直击要害
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>击杀其中一名 |cRXP_ENEMY_烈焰副官|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_啸天者欧穆隆|r 对话
    .dailyturnin 29305 >>交任务 直击要害
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .accept 29281 >>接受任务 追加军火
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .turnin 29281 >>交任务 追加军火
    .accept 29282 >>接受任务 全副武装
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .accept 29282 >>接受任务 全副武装
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .target Ricket
    .turnin 29282 >>交任务 全副武装
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>点击熔岩池中的 |cRXP_PICK_呼吸气泡|r 来召唤一只 |cRXP_ENEMY_潜地熔岩虫|r
    .use 69759 >>|cRXP_WARN_当你看到警告信息：“虫要咬人了！现在就把炸弹放下去！”时，使用|r |T133710:0|t[苦果炸弹]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>点击 |cRXP_PICK_磁石|r，然后拾取掉落的 |cRXP_LOOT_黑曜石陨星|r
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>击杀 |cRXP_ENEMY_黑曜石惩罚者|r。然后拾取它们掉落的 |cRXP_LOOT_活体黑曜石碎片|r
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_对飞行在空中的|r |cRXP_WARN_烈焰德鲁伊|cRXP_ENEMY_ |r使用|r |T135129:0|t[戳鸟之矛]
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29263 >>交任务 一颗苦果
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29278 >>交任务 活体黑曜石
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29295 >>交任务 它们越大
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29297 >>交任务 再见小鸟
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉·影暴|r 对话
    .accept 29279 >>接受任务 注满月井
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .turnin 29279 >>交任务 注满月井
    .accept 29280 >>接受任务 滋养之水
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .accept 29280 >>接受任务 滋养之水
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉·影暴|r 对话
    .target Ayla Shadowstorm
    .turnin 29280 >>交任务 滋养之水
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .accept 29203 >>接受任务 深入神庙
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>前往火岩深渊
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>击杀|cRXP_ENEMY_莱雅娜|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>离开火岩深渊
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 29203 >>交任务深入神庙
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_你现在应已收到 |cRXP_FRIENDLY_瑟蕾莎·树皮|r 寄来的邮件，内含|r |T514925:0|t[|cRXP_LOOT_烟熏过的坠饰|r]
    .use 69854 >>|cRXP_WARN_使用|r |T514925:0|t[|cRXP_LOOT_烟熏过的坠饰|r] |cRXP_WARN_来开始任务|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >>接受任务 一条烟熏过的坠饰
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >>前往月光林地
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉比恩·萨图纳|r 对话
    .turnin 29298 >>交任务 一条烟熏过的坠饰
    .accept 29302 >>接受任务 解开其中的秘密
    .timer 42,解开其中的秘密 剧情演出
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_等剧情结束|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉比恩·萨图纳|r 对话
    .turnin 29302 >>交任务 解开其中的秘密
    .accept 29303 >>接受任务 悲剧与家庭
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >>前往灰谷
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >>点击 |cRXP_PICK_暗夜精灵坟墓|r
    .timer 48,悲剧与家庭 剧情演出
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_等剧情结束|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>在任务日志中点击任务提交弹窗。
    .turnin 29303 >>交任务 悲剧与家庭
    .accept 29310 >>接受任务 临界点
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >>前往海加尔山
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >>点击 |cRXP_PICK_小型墓碑|r
    .timer 59,临界点 剧情演出
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_等剧情结束|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>在任务日志中点击任务提交弹窗。
    .turnin 29310 >>交任务 临界点
    .accept 29311 >>接受任务 皆不可考
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .turnin 29311 >>交任务 皆不可考
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +恭喜解锁全部熔火前线！继续完成（|cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊）或（|cRXP_PICK_2.5|r - 熔火前线 + 守望者）以获取更多的 |T513195:0|t[世界之树的印记]
    >>|cRXP_FRIENDLY_赞沃卡|r 出售 |T133654:0|t[|cRXP_FRIENDLY_赞沃卡的箱子|r] 售价 30 个|T513195:0|t[世界之树的印记]，内含一个随机绿色品质物品或稀有伙伴 |T294481:0|t[|cFF0070FF灼烧石|r]
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_你已完成今日所有可接的日常任务。明天再重新载入本指南 (|r|cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊|cRXP_WARN_) 来继续完成日常任务，直到你获得足够的|r |T513195:0|t[世界之树的印记]
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_你已解锁 [暗影守望者] 日常任务。可随意选择完成猛禽德鲁伊或暗影守望者的任务。如果你想完成猛禽德鲁伊任务，请明日重载本指南（|r|cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊|cRXP_WARN_）或重载（|r|cRXP_PICK_2.5|r - 熔火前线 + 守望者|cRXP_WARN_）若想完成暗影守望者任务。两者奖励的 |T513195:0|t[世界之树的印记] 数量相同|r
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group 熔火前线
#name D_1_玛洛恩庇护所_守望者
#displayname |cRXP_PICK_2.5|r - 熔火前线 + 守望者

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_你必须先收集 150 个|r |T513195:0|t[世界之树的印记] |cRXP_WARN_并交还 [暗影守望者] 任务，才能解锁他们的日常|r
    .turnin 29214 >>交任务 暗影守望者
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
step
    #optional
    #completewith HyjalQuests
	.zone 85 >>前往奥格瑞玛 << Horde
	.zone 84 >>前往暴风城 << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_队长索伦·月落|r 对话
    .target Captain Soren Moonfall
    .daily 29128 >>接受任务 海加尔的保卫者
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_米露恩|r 对话
    .daily 29125,29147,29164,29101,29161 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 或 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>接取随机刷新的日常任务
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>点击 |cRXP_FRIENDLY_托尔托拉之子|r
    >>|cRXP_WARN_瞄准水面，施放|r |T132219:0|t[踢海龟] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .use 69235 >>|cRXP_WARN_在他们的尸体上|r|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙]
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来变身成|r |cRXP_FRIENDLY_艾维娜之翼|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_在 |r高山鸣雀|cRXP_WARN_, |cRXP_FRIENDLY_森林猫头鹰|r 和|cRXP_FRIENDLY_ |r金翼雄鹰|r |cRXP_FRIENDLY_附近使用|r |T132172:0|t[召唤鸟群] (1)
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>站在一位 |cRXP_FRIENDLY_玛洛恩之魂|r 面前
    >>|cRXP_WARN_这些是幽灵鹿，它们会四处奔跑|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>点击 |cRXP_PICK_攀爬树|r 来攀爬它
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>点击树上的 |cRXP_FRIENDLY_海加尔幼熊|r
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_施放|r |T450907:0|t[往上爬] (1) |cRXP_WARN_直到到达顶部。瞄准 |cRXP_FRIENDLY_守护者塔尔德罗斯|r 旁边的蹦床，施放|r |T446127:0|t[抛熊崽] (4)|cRXP_WARN_。然后施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_并重复整个过程|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_施放|r |T450905:0|t[往下爬] (2) |cRXP_WARN_来离开树冠|r
step
    .isOnQuest 29161
    >>在任务日志中点击任务提交弹窗。
    .turnin 29161 >>交任务 熊就在那里
    .accept 29162 >>接受任务 自然的祝福
step
    .isQuestTurnedIn 29161
    >>在任务日志中点击任务提交弹窗。
    .accept 29162 >>接受任务 自然的祝福
step
    .isOnQuest 29125
    >>在任务日志中点击任务提交弹窗。
    .turnin 29125 >>交任务 林木之间
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isQuestTurnedIn 29125
    >>在任务日志中点击任务提交弹窗。
    .accept 29126 >>接受任务 玛洛恩的力量
step
    .isOnQuest 29147
    >>在任务日志中点击任务提交弹窗。
    .turnin 29147 >>交任务 召唤鸟群
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isQuestTurnedIn 29147
    >>在任务日志中点击任务提交弹窗。
    .accept 29148 >>接受任务 羽翼烈焰
step
    .isOnQuest 29164
    >>在任务日志中点击任务提交弹窗。
    .turnin 29164 >>交任务 让你的吼声更完美
    .accept 29165 >>接受任务 召唤兽群
step
    .isQuestTurnedIn 29164
    >>在任务日志中点击任务提交弹窗。
    .accept 29165 >>接受任务 召唤兽群
step
    .isOnQuest 29101
    >>在任务日志中点击任务提交弹窗。
    .turnin 29101 >>交任务 踢飞季节
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    .isQuestTurnedIn 29101
    >>在任务日志中点击任务提交弹窗。
    .accept 29122 >>接受任务 涅墨西斯的回声
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_来召唤|r |cRXP_ENEMY_派拉齐尼斯|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>击杀 |cRXP_ENEMY_派拉齐尼斯|r
    >>|cRXP_WARN_使用|r |T134093:0|t[艾森娜的翡翠] |cRXP_WARN_移除|r |cRXP_WARN_派拉齐尼斯|cRXP_ENEMY_ |r施加的 |T136016:0|t[沸腾毒箭] 减益|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_在|r 灰烬堆|cRXP_WARN_ 上使用|cRXP_PICK_ |T135139:0|t[守护者之杖] |r来召唤|r |cRXP_ENEMY_盖伦格斯|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>击杀|cRXP_ENEMY_盖伦格斯|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_在西部的火焰传送门附近使用|r |T135992:0|t[群鸟女王的翎羽] |cRXP_WARN_来召唤|r |cRXP_ENEMY_米拉盖佐尔|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>击杀 |cRXP_ENEMY_米拉盖佐尔|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_使用|r |T134298:0|t[狼的尖牙] |cRXP_WARN_来召唤|r |cRXP_ENEMY_莱拉克斯|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>击杀 |cRXP_ENEMY_莱拉克斯|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>与 |cRXP_FRIENDLY_图加|r 对话来召唤 |cRXP_ENEMY_涅墨西斯|r
    .skipgossip
    .target 图加
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>击杀 |cRXP_ENEMY_涅墨西斯|r
    >>|cRXP_WARN_站在 |cRXP_FRIENDLY_图加|r 的壳下，以此免受|r |cRXP_ENEMY_涅墨西斯|r |cRXP_WARN_施放的|r |T135830:0|t[熔岩之怒]
    .complete 29122,1 -- Nemesis slain (1)
    .target 图加
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>拾取地上的 |cRXP_LOOT_蓝根藤|r
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>击杀 |cRXP_ENEMY_刺背入侵者|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>击杀 |cRXP_ENEMY_灼焦火妖|r。拾取 |cRXP_LOOT_火妖的鳞片|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r。拾取 |cRXP_LOOT_沾满硫磺的包裹|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_炙热的葬火领主|r。拾取 |cRXP_LOOT_烈焰裹附核心|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>击杀 |cRXP_ENEMY_火焰巨兽|r 和 |cRXP_ENEMY_炙热的葬火领主|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29162 >>交任务 自然的祝福
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话
    .target Mylune
    .dailyturnin 29122 >>交任务 涅墨西斯的回声
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29126 >>交任务 玛洛恩的力量
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29165 >>交任务 召唤兽群
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29148 >>交任务 羽翼烈焰
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29166 >>交任务 送往前线的补给
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29123 >>交任务 灭火之怒
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29149 >>交任务 灭火之怒
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29127 >>交任务 灭火之怒
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .dailyturnin 29163 >>交任务 灭火之怒
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>交任务 镇痛
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>交任务 疗伤
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_多尔达恩·织夜者|r 对话
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>交任务 减压
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .daily 29255,29257,29299 >>接取随机刷新的日常任务
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .daily 29139,29143 >>接取随机刷新的日常任务
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_莉吉特|r 今天没有提供任务，请跳过此步骤|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .daily 29138 >>接受任务 烧伤患者
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29179 >>接受任务 元素敌人
    .daily 29304,29141,29142,29137 >>接取随机刷新的日常任务
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29128 >>交任务 海加尔的保卫者
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_对|r |cRXP_WARN_受伤的海加尔防御者|r |cRXP_FRIENDLY_使用|r |T463860:0|t[魔法药膏]
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦士兵|r 和 |cRXP_ENEMY_灼焦征服者|r，并拾取它们的 |cRXP_LOOT_烬蜡|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>击杀 |cRXP_ENEMY_灼焦征服者|r 和 |cRXP_ENEMY_灼焦士兵|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀|cRXP_ENEMY_灼焦恶犬|r和|cRXP_ENEMY_上古灼焦恶犬|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔火巨兽|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>击杀 |cRXP_ENEMY_烈焰德鲁伊|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>击杀 |cRXP_ENEMY_熔岩破坏者|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>点击地上的 |cRXP_PICK_燃灰堆|r
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>拾取小熔岩池内的 |cRXP_LOOT_熔岩花|r
    >>|cRXP_WARN_如果在拾取物品后刷出了一只 |cRXP_ENEMY_熔岩破坏者|r 击杀它并拾取|r |cRXP_LOOT_熔岩花|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_带上你的 |cRXP_FRIENDLY_火红鞭笞者|r 去和 |r熔焰蝎虫|cRXP_ENEMY_ 战斗|r << !Hunter
    >>|cRXP_WARN_对一只 |r熔焰蝎虫|cRXP_WARN_ 使用|cRXP_ENEMY_ |T135834:0|t[冰冻陷阱] |r。它会持续施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会不断地喝掉这些熔岩。这样一来，你就只需要一只 |r熔焰蝎虫|cRXP_ENEMY_ 就能完成这个日常任务|r << Hunter
    >>|cRXP_WARN_熔焰蝎虫|cRXP_ENEMY_ |r会施放|r |T135826:0|t[灰烬之池] |cRXP_WARN_，你的 |cRXP_FRIENDLY_火红鞭笞者|r 会自己喝掉|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>点击熔岩池中的 |cRXP_PICK_呼吸气泡|r 来召唤一只 |cRXP_ENEMY_潜地熔岩虫|r
    .use 69759 >>|cRXP_WARN_当你看到警告信息：“虫要咬人了！现在就把炸弹放下去！”时，使用|r |T133710:0|t[苦果炸弹]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>点击 |cRXP_PICK_磁石|r，然后拾取掉落的 |cRXP_LOOT_黑曜石陨星|r
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_带跟随你的|cRXP_FRIENDLY_ 海加尔小精灵|r 到火焰传送门处|r
    >>|cRXP_WARN_杀死从中出来的小怪。|cRXP_FRIENDLY_ 务必保护好|r 海加尔小精灵|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29255 >>交任务 烬蜡
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29257 >>交任务 摘点熔岩花来
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾薇尔拉|r 对话
    .dailyturnin 29299 >>交任务 热情如火
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29139 >>交任务 顽强生长
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱茵·羽歌|r 对话
    .dailyturnin 29143 >>交任务 小精灵出发
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29263 >>交任务 一颗苦果
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29278 >>交任务 活体黑曜石
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29295 >>交任务 它们越大
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29297 >>交任务 再见小鸟
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29179 >>交任务 元素敌人
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29304 >>交任务 犬祸
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29141 >>交任务 摔得更惨
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29142 >>交任务 叛徒归来
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .dailyturnin 29137 >>交任务 防线上的突破口
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁木队长|r 对话
    .dailyturnin 29138 >>交任务 烧伤患者
    .target Captain Irontree
step
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_将军泰尔迪斯·月落|r 对话
    .daily 29205 >>接受任务 荒芜尖塔
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>保护一名 |cRXP_FRIENDLY_德鲁伊|r 占领荒芜尖塔
    >>击杀最后出现的 |cRXP_ENEMY_葬火领主|r 和 |cRXP_ENEMY_烈焰守御哨兵|r
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target 图拉克·符文图腾
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦琳·刀翼|r 对话
    .dailyturnin 29205 >>交任务 荒芜尖塔
    .daily 29211,29192 >>接取随机刷新的日常任务
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    >>|cRXP_WARN_如果他没有提供任务，请跳过这一步|r
    .daily 29276 >>接受任务 烈焰蛛后
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    >>|cRXP_WARN_如果她不在就跳过这一步|r
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德尔德伦·鸦榆|r 对话
    .daily 29189,29159,29160 >>接取随机刷新的两个日常任务
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>点击 |cRXP_PICK_太阳之核|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>攻击一名 |cRXP_ENEMY_烈焰德鲁伊|r 直到他虚弱，然后将其引入 |cRXP_FRIENDLY_暗影守望者|r 的陷阱
    .complete 29192,1 -- Druid of the Flame captured 1/1
    .mob Druid of the Flame
step -- The Flame Spider Queen 29276
    .isOnQuest 29276
    #label FlameSpider
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>击杀 |cRXP_ENEMY_烬网爬虫|r。拾取它们的 |cRXP_LOOT_火热毒液|r
    >>击杀 |cRXP_ENEMY_烬网织网蛛|r。拾取它们的 |cRXP_LOOT_滚烫的蛛网分泌液|r
    >>|cRXP_WARN_在你对他造成伤害时，你还会自动拾取他们的 |cRXP_LOOT_火热毒液|r 和 |cRXP_LOOT_滚烫的蛛网分泌液|r
    .complete 29276,1 -- Flame Venom (8)
    .mob +Cinderweb Creeper
    .complete 29276,2 -- Searing Web Fluid (8)
    .mob +Cinderweb Spinner
step -- Wicked Webs 29189
    .isOnQuest 29189
    #label WickedWebs
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>击杀 |cRXP_ENEMY_烬网虫茧|r
    .complete 29189,1 -- Victims freed  (8)
    .mob Cinderweb Cocoon
step -- Pyrorachnophobia 29159
    .isOnQuest 29159
    #label Pyrorachnophobia
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>击杀 |cRXP_ENEMY_烬网爬虫|r 和 |cRXP_ENEMY_烬网织网蛛|r
    .complete 29159,1 -- Cinderweb spider slain  (8)
    .mob Cinderweb Creeper
    .mob Cinderweb Spinner
step -- Egg-stinction 29160
    .isOnQuest 29160
    #label Eggstinction
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>打开 |cRXP_PICK_烬网蛛卵簇|r。拾取里面的 |cRXP_LOOT_烬网蛛卵|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_对飞行在空中的|r |cRXP_WARN_烈焰德鲁伊|cRXP_ENEMY_ |r使用|r |T135129:0|t[戳鸟之矛]
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    #optional
    #requires SolarCore
step
    #optional
    #requires WardensWatching
step
    #optional
    #requires FlameSpider
step
    #optional
    #requires WickedWebs
step
    #optional
    #requires Pyrorachnophobia
step
    #optional
    #requires Eggstinction
step
    #optional
    #requires ByeByeBurdy
step
    .isQuestComplete 29160
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德尔德伦·鸦榆|r 对话
    .dailyturnin 29160 >>交任务 蛋打蛛亡
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德尔德伦·鸦榆|r 对话
    .dailyturnin 29159 >>交任务 火蜘蛛恐惧症
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_德尔德伦·鸦榆|r 对话
    .dailyturnin 29189 >>交任务 邪恶的网
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦琳·刀翼|r 对话
    .dailyturnin 29192 >>交任务 守望者在守望
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦琳·刀翼|r 对话
    .dailyturnin 29211 >>交任务 摧毁太阳之核
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦琳·刀翼|r 对话
    .daily 29210 >>接受任务 忍受炎热
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    >>如果他不在就跳过这一步
    .daily 29275 >>接受任务 范达尔的研究
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN__掉入下方的火岩深渊|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>拾取 |cRXP_LOOT_烈焰德鲁伊法杖|r、|cRXP_LOOT_烈焰德鲁伊法术书|r、|cRXP_LOOT_烈焰德鲁伊材料包|r 和 |cRXP_LOOT_烈焰德鲁伊神像|r
    >>|cRXP_WARN_这些物品分散在火岩深渊各处|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step -- Enduring the Heat 29210
    .isOnQuest 29210
    #loop
    .goto 338,61.620,52.938,8,0
    .goto 338,66.330,52.184,8,0
    .goto 338,61.386,48.457,8,0
    .goto 338,64.718,59.267,8,0
    .goto 338,68.854,58.329,8,0
    .goto 338,68.109,66.500,8,0
    .goto 338,64.165,66.062,8,0
    .goto 338,60.547,59.997,8,0
    >>|cRXP_WARN_跟随箭头移动，点击地上的|cRXP_PICK_ |r烈焰防护符石|r
    >>|cRXP_WARN_点击一枚 |cRXP_PICK_烈焰防护符石|r 将会击杀所有正在攻击你的 |cRXP_ENEMY_不稳定的怒焰元素|r|r
    .complete 29210,2 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #loop
    .goto 338,61.620,52.938,20,0
    .goto 338,66.330,52.184,20,0
    .goto 338,61.386,48.457,20,0
    .goto 338,64.718,59.267,20,0
    .goto 338,68.854,58.329,20,0
    .goto 338,68.109,66.500,20,0
    .goto 338,64.165,66.062,20,0
    .goto 338,60.547,59.997,20,0
    >>拾取 |cRXP_LOOT_烈焰德鲁伊法杖|r、|cRXP_LOOT_烈焰德鲁伊法术书|r、|cRXP_LOOT_烈焰德鲁伊材料包|r 和 |cRXP_LOOT_烈焰德鲁伊神像|r
    >>|cRXP_WARN_这些物品分散在火岩深渊各处|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑟蕾莎·树皮|r 对话
    .dailyturnin 29210 >>交任务 忍受炎热
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨莉斯·黑暗猎手|r 对话
    .daily 29243 >>接受任务 直击要害
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>击杀其中一名 |cRXP_ENEMY_烈焰副官|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安伦·觅影者|r 对话
    .dailyturnin 29276 >>交任务 烈焰蛛后
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_索罗·白蹄|r 对话
    .dailyturnin 29275 >>交任务 范达尔的研究
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29297 >>交任务 再见小鸟
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨伊娜·风驰队长|r 对话
    .dailyturnin 29243 >>交任务 直击要害
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔兰·高枝|r 对话
    .accept 29283 >>接受任务 呼唤古树
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_老树干|r 对话
    .turnin 29283 >>交任务 呼唤古树
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .accept 29284 >>接受任务 古树的援助
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_老树干|r 对话
    .turnin 29284 >>交任务 古树的援助
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨莉斯·黑暗猎手|r 对话
    .daily 29243 >>接受任务 直击要害
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>击杀其中一名 |cRXP_ENEMY_烈焰副官|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨伊娜·风驰队长|r 对话
    .dailyturnin 29243 >>交任务 直击要害
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .accept 29281 >>接受任务 追加军火
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .turnin 29281 >>交任务 追加军火
    .accept 29282 >>接受任务 全副武装
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .target Matoclaw
    .accept 29282 >>接受任务 全副武装
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .target Ricket
    .turnin 29282 >>交任务 全副武装
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉吉特|r 对话
    .daily 29263,29278,29295,29297 >>接取随机刷新的日常任务
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>点击熔岩池中的 |cRXP_PICK_呼吸气泡|r 来召唤一只 |cRXP_ENEMY_潜地熔岩虫|r
    .use 69759 >>|cRXP_WARN_当你看到警告信息：“虫要咬人了！现在就把炸弹放下去！”时，使用|r |T133710:0|t[苦果炸弹]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>点击 |cRXP_PICK_磁石|r，然后拾取掉落的 |cRXP_LOOT_黑曜石陨星|r
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>击杀 |cRXP_ENEMY_黑曜石惩罚者|r。然后拾取它们掉落的 |cRXP_LOOT_活体黑曜石碎片|r
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_对飞行在空中的|r |cRXP_WARN_烈焰德鲁伊|cRXP_ENEMY_ |r使用|r |T135129:0|t[戳鸟之矛]
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29263 >>交任务 一颗苦果
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29278 >>交任务 活体黑曜石
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29295 >>交任务 它们越大
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达默克·冲炉|r 对话
    .dailyturnin 29297 >>交任务 再见小鸟
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉·影暴|r 对话
    .accept 29279 >>接受任务 注满月井
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .turnin 29279 >>交任务 注满月井
    .accept 29280 >>接受任务 滋养之水
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦托克劳|r 对话
    .accept 29280 >>接受任务 滋养之水
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾拉·影暴|r 对话
    .target Ayla Shadowstorm
    .turnin 29280 >>交任务 滋养之水
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .accept 29203 >>接受任务 深入神庙
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>前往火岩深渊
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>击杀|cRXP_ENEMY_莱雅娜|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>离开火岩深渊
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .target Malfurion Stormrage
    .turnin 29203 >>交任务深入神庙
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_你现在应已收到 |cRXP_FRIENDLY_瑟蕾莎·树皮|r 寄来的邮件，内含|r |T514925:0|t[|cRXP_LOOT_烟熏过的坠饰|r]
    .use 69854 >>|cRXP_WARN_使用|r |T514925:0|t[|cRXP_LOOT_烟熏过的坠饰|r] |cRXP_WARN_来开始任务|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >>接受任务 一条烟熏过的坠饰
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >>使用传送门前往海加尔山
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >>前往月光林地
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉比恩·萨图纳|r 对话
    .turnin 29298 >>交任务 一条烟熏过的坠饰
    .accept 29302 >>接受任务 解开其中的秘密
    .timer 42,解开其中的秘密 剧情演出
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_等剧情结束|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉比恩·萨图纳|r 对话
    .turnin 29302 >>交任务 解开其中的秘密
    .accept 29303 >>接受任务 悲剧与家庭
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >>前往灰谷
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >>点击 |cRXP_PICK_暗夜精灵坟墓|r
    .timer 48,悲剧与家庭 剧情演出
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_等剧情结束|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>在任务日志中点击任务提交弹窗。
    .turnin 29303 >>交任务 悲剧与家庭
    .accept 29310 >>接受任务 临界点
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >>前往海加尔山
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >>点击 |cRXP_PICK_小型墓碑|r
    .timer 59,临界点 剧情演出
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_等剧情结束|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>在任务日志中点击任务提交弹窗。
    .turnin 29310 >>交任务 临界点
    .accept 29311 >>接受任务 皆不可考
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >>穿过传送门前往火焰之地
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛法里奥·怒风|r对话
    .turnin 29311 >>交任务 皆不可考
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +恭喜解锁全部熔火前线！继续完成（|cRXP_ENEMY_2.5|r - 熔火前线 + 德鲁伊）或（|cRXP_PICK_2.5|r - 熔火前线 + 守望者）以获取更多的 |T513195:0|t[世界之树的印记]
    >>|cRXP_FRIENDLY_赞沃卡|r 出售 |T133654:0|t[|cRXP_FRIENDLY_赞沃卡的箱子|r] 售价 30 个|T513195:0|t[世界之树的印记]，内含一个随机绿色品质物品或稀有伙伴 |T294481:0|t[|cFF0070FF灼烧石|r]
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_你已完成今日所有可接的日常任务。明天再重新载入本指南 (|r|cRXP_PICK_2.5|r - 熔火前线 + 守望者|cRXP_WARN_) 来继续完成日常任务，直到你获得足够的|r |T513195:0|t[世界之树的印记]
]])
