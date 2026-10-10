if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP 起始区域（熊猫人）
#name 1-12级 迷踪岛
#next RXP 大灾变1-80级 (联盟)\10-20级洛克莫丹;RXP大灾变1-80级 (部落)\10-22级艾萨拉;RXP熊猫人之谜1-80 (联盟)\10-20级洛克莫丹;RXP熊猫人之谜1-80级(部落)\10-22级艾萨拉;跳过


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .accept 30034 >>接受任务 武装训练 << Hunter
    .accept 30027 >>接受任务 武装训练 << Priest/Monk
    .accept 30033 >>接受任务 武装训练 << Mage
    .accept 30037 >>接受任务 武装训练 << Shaman
    .accept 30038 >>接受任务 武装训练 << Warrior
    .accept 30036 >>接受任务 武装训练 << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>点击 |cRXP_PICK_武器架|r 拿取 |T537025:0|t[徒弟的弩]
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>装备 |T537025:0|t[徒弟的弩]
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>点击 |cRXP_PICK_武器架|r 拿取 |T537771:0|t[徒弟的法刃] 和 |T654237:0|t[徒弟的扇子]
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>装备|T537771:0|t[徒弟的法刃] 和 |T654237:0|t[徒弟的扇子]
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|cRXP_WARN_点击|r |cRXP_PICK_武器架|r |cRXP_WARN_拿取|r |T537770:0|t[徒弟的木杖]
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>装备|T537770:0|t[徒弟的木杖]
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|cRXP_WARN_点击|r |cRXP_PICK_武器架|r |cRXP_WARN_拿取|r |T537205:0|t[徒弟的斧子] |cRXP_WARN_和|r |T537769:0|t[徒弟的盾牌]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>|cRXP_WARN_装备 |r |T537205:0|t[徒弟的斧子] |cRXP_WARN_和|r |T537769:0|t[徒弟的盾牌]
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_点击|r |cRXP_PICK_武器架|r |cRXP_WARN_拿取|r |T537205:0|t[徒弟的斧子] |cRXP_WARN_和|r |T537769:0|t[徒弟的盾牌]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_装备 |r |T537205:0|t[徒弟的斧子] |cRXP_WARN_和|r |T537769:0|t[徒弟的盾牌]
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|cRXP_WARN_点击|r |cRXP_PICK_武器架|r |cRXP_WARN_获取|r |T537767:0|t[徒弟的匕首]
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>|cRXP_WARN_装备|r |T537767:0|t[徒弟的匕首]
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 30034 >>交任务 武装训练 << Hunter
    .turnin 30033 >>交任务 武装训练 << Mage
    .turnin 30027 >>交任务 武装训练 << Priest/Monk
    .turnin 30037 >>交任务 武装训练 << Shaman
    .turnin 30038 >>交任务 武装训练 << Warrior
    .turnin 30036 >>交任务 武装训练 << Rogue
    .accept 29406 >>接受任务 沙袋训练
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>击杀 |cRXP_ENEMY_沙袋|r。
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29406 >>交任务 沙袋训练
    .accept 29524 >>接受任务 戒骄
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>进入房子
step
    .goto 378,60.26,19.35
    >>击败|cRXP_ENEMY_习武的弟子|r
    *|cRXP_WARN_楼上还有更多|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29524 >>交任务 戒骄
    .accept 29408 >>接受任务 烧毁卷轴
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>上楼
    >>|cRXP_WARN_从第二段楼梯下方的缺口跳上去，抄近路直达顶层|r
step
    .goto 378,59.95,20.39
    >>点击建筑顶部的|cRXP_PICK_战旗|r
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >>|cRXP_WARN_跳下去|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29408 >>交任务 烧毁卷轴
    .accept 29409 >>接受任务 门徒的挑战
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>击败|cRXP_ENEMY_洛蛟明|r
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +|cRXP_WARN_使用|r |T132337:0|t[冲锋] |cRXP_WARN_对小动物，以加快移动速度|r
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29409 >>交任务 门徒的挑战
    .accept 29410 >>接受任务 土水派的艾莎
	.target Master Shang Xi
step
    #completewith next
    .goto 378,55.09,32.83,50 >>前往 |cRXP_FRIENDLY_商人罗福|r
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_商人罗福|r 对话
    .turnin 29410 >>交任务 土水派的艾莎
    .accept 29419 >>接受任务 失踪的车夫
    .accept 29424 >>接受任务 至关重要的物品
	.target Merchant Lorvo
step
    #completewith next
    >>击杀 |cRXP_ENEMY_珀叶精怪|r。拾取它们的 |T132622:0|t[|cRXP_LOOT_被偷的训练物资|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>前往 |cRXP_FRIENDLY_明·黯风|r
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    #loop
    .goto 378,53.08,31.58,0
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,52.89,24.41,20,0
    .goto 378,55.04,24.93,20,0
    .goto 378,53.08,31.58,20,0
    >>击杀 |cRXP_ENEMY_珀叶精怪|r 并拾取它们的 |T132622:0|t[|cRXP_LOOT_被偷的训练物资|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_商人罗福|r 和 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29419,2 >>交任务 失踪的车夫
    .turnin 29424 >>交任务 至关重要的物品
	.target +Merchant Lorvo
    .goto 378,55.11,32.40
    .accept 29414 >>接受任务土水之道
    .goto 378,55.10,32.55
	.target +Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >>进入洞穴
	.timer 87,洞穴 剧情RP
step
    .goto 378,57.89,36.55
    >>防御|cRXP_FRIENDLY_艾莎|r免受来袭的|cRXP_ENEMY_琥珀叶捣乱者|r的攻击
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29414 >>交任务 土水之道
    .accept 29522 >>接受任务 火金派的季
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29522 >>交任务 火金派的季
    .accept 29417 >>接受任务 火金之道
	.target Ji Firepaw
step
    #loop
    .goto 378,51.18,17.71,0
    .goto 378,51.18,17.71,30,0
    .goto 378,49.56,18.31,30,0
    .goto 378,49.49,20.13,30,0
    .goto 378,49.23,24.48,30,0
    .goto 378,49.90,23.37,30,0
    .goto 378,46.12,20.46,30,0
    >>杀死 |cRXP_ENEMY_狒狒|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29417 >>交任务 火金之道
    .accept 29418 >>接受任务 点火
    .accept 29523 >>接受任务 煽风
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_要启用任务物品的按键绑定，按照以下步骤：|r
    *[1] 按 |cRXP_WARN_Esc|r 键。
    *[2] 选择|cRXP_WARN_设置|r。
    *[3] 选择左方的 |cRXP_WARN_快捷键|r 设置。
    *[4] 在 |cRXP_WARN_快捷键设置|r 中，找到 |cRXP_WARN_RestedXP 指南|r
    *[5] 选择并绑定 |cRXP_WARN_激活物品按钮|r。
step
#optional
    #completewith next
	>>拾取树旁地上的 |cRXP_PICK_松散的山茱萸根|r
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>|cRXP_WARN_在神龛处使用|r |T519378:0|t[风之石] |cRXP_WARN_以召唤一个|r |cRXP_ENEMY_活体空气|r
    >>击杀它并拾取|T463565:0|t[|cRXP_LOOT_颤动的微风|r]
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    #loop
    .goto 378,47.98,31.97,0
    .goto 378,47.98,31.97,10,0
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,46.17,27.09,10,0
    .goto 378,48.31,29.58,10,0
    .goto 378,50.06,31.41,10,0
    .goto 378,48.90,33.14,10,0
    .goto 378,49.58,36.46,10,0
    .goto 378,46.86,35.05,10,0
    .goto 378,46.01,33.12,10,0
    >>拾取树旁地上的 |cRXP_PICK_松散的山茱萸根|r
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_季·火掌|r 和 |cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29418 >>交任务 点火
    .turnin 29523 >>交任务 煽风
	.target +Ji Firepaw
    .goto 378,50.24,21.26
    .accept 29420 >>接受任务 元素之灵守护者
    .goto 378,50.29,21.47
	.target +Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >>进入洞穴
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_李飞大师|r 对话
    >>|cRXP_WARN_沿途躲避火焰喷泉|r
    .turnin 29420 >>交任务 元素之灵守护者
    .accept 29664 >>接受任务 挑战者之火
	.target Master Li Fei
 step
    >>点击 |cRXP_PICK_火盆|r
    .complete 29664,1 --1/1 Challenger Torch lit
    .goto 378,38.71,25.39
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_李飞大师|r 对话
    .turnin 29664 >>交任务 挑战者之火
    .accept 29421 >>接受任务 胜者方能通行
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|cRXP_WARN_击败|cRXP_ENEMY_李飞大师|r，将其生命值降至20%|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_李飞大师|r 对话
    .turnin 29421,2 >>交任务 胜者方能通行
    .accept 29422 >>接受任务 上古火灵燧焰
	.target Master Li Fei
step
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>|cRXP_WARN_将|r |T133662:0|t[燧焰的祭品] |cRXP_WARN_使用于|r |cRXP_FRIENDLY_燧焰|r
	.timer 11,上古火灵燧焰 剧情
	.use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|cRXP_WARN_等待剧情事件结束|r
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_燧焰|r对话
    .turnin 29422 >>交任务 上古火灵燧焰
    .accept 29423 >>接受任务 神真子的热情
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>离开洞穴
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >>前往 |cRXP_WARN_五晨寺|r
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29423 >>交任务 神真子的热情
    .accept 29521 >>接受任务 咏之池
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_程·晨勉|r对话
    .home >>将炉石设置在五晨寺
	.target Cheng Dawnscrive
step
    #completewith SingingPools
    .subzone 5826 >>前往咏之池
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_木艺师大伟|r 对话
    .train 2366 >>训练草药学
    .target Whittler Dewei
    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_木艺师大伟|r 对话
    .train 2575 >>训练采矿
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .accept 29662 >>接受任务 比芦苇更硬
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_采矿/草药学节点提供相当于1个小怪的经验值，记得收集附近的节点，无论你的专业技能如何，你都可以收集所有类型的节点|r
step
    #completewith next
    +|cRXP_WARN_在该区域，某些水会将你变成动物，提升你的移动速度|r
step
    #label SingingPools
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29521 >>交任务 咏之池
    .accept 29661 >>接受任务 戒躁
    .accept 29663 >>接受任务 平衡训练
	.target Aysa Cloudsinger
step
    #completewith RingTrainingBell
	>>在竿子上击杀 |cRXP_ENEMY_土水派武僧|r
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >>当你不在水中或变身为青蛙时，点击 |cRXP_FRIENDLY_平衡杆|r
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>|cRXP_WARN_点击|cRXP_FRIENDLY_ 平衡杆|r 来跳向|r |cRXP_PICK_训练铃|r
    >>点击 |cRXP_PICK_习武大钟|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>在地上拾取 |cRXP_PICK_结实的泪木芦苇|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,0
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>在竿子上击杀 |cRXP_ENEMY_土水派武僧|r
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_离开载具|r
    .macro Leave Vehicle,6656430 >>离开载具
step
    #loop
    .goto 378,62.85,49.06,0
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    >>在地上拾取 |cRXP_PICK_结实的泪木芦苇|r
    *|cRXP_WARN_如果你待在边缘处，|cRXP_ENEMY_白羽鹤|r 就不会攻击你|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .turnin 29662 >>交任务 比芦苇更硬
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29661 >>交任务 戒躁
    .turnin 29663 >>交任务 平衡训练
    .accept 29676 >>接受任务 寻找老朋友
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_在该区域，紫色水池将你变成动物，提升你的移动速度|r
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_梁老先生|r 对话
    .turnin 29676 >>交任务 寻找老朋友
    .accept 29666 >>接受任务 吃一蛰，长一智
    .accept 29677 >>接受任务 炎阳珠
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>击杀 |cRXP_ENEMY_水钳虫|r
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>在水下点击 |cRXP_PICK_远古蛤蜊|r
    >>|cRXP_WARN_你不需要击杀|r |cRXP_ENEMY_盘蛇|r
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与|cRXP_FRIENDLY_梁老先生|r 对话
    >>|cRXP_WARN_如果你找不到任务发布者，请前往他西面的房子|r
    .turnin 29666 >>交任务 吃一蛰，长一智
    .turnin 29677 >>交任务 炎阳珠
    .accept 29678 >>接受任务 上古水灵涓流
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>踩在发光的圆圈上
    >>|cRXP_WARN_这将允许你朝水池方向跳跃|r
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>|cRXP_WARN_对|cRXP_WARN_水面使用|r |T463854:0|t[炎阳珠] |cRXP_WARN_
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>在任务日志中点击任务提交弹窗。
    .turnin 29678 >>交任务 上古水灵涓流
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .accept 29679 >>接受任务 新朋友
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>紧跟 |cRXP_FRIENDLY_涓流|r 当他四处移动时
    >>|cRXP_WARN_移动到他旁边喷水处的顶部|r
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29679 >>交任务 新朋友
    .accept 29680 >>接受任务 生计来源
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
	>>|cRXP_WARN_运输车|cRXP_PICK_比手动奔跑要慢|r|r
    .turnin 29680 >>交任务 生计来源
    .accept 29769 >>接受任务 小无赖
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_高·夏酒|r 对话
    .accept 29770 >>接受任务 还能吃！
	.target Gao Summerdraft
step
	#completewith Carrots
    >>击杀 |cRXP_ENEMY_肥胖的兔妖|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
	.goto 378,70.11,77.63,0
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>在地上拾取 |cRXP_PICK_连根拔起的芜菁|r
    .complete 29770,1 --3/3 Uprooted Turnip
step
	.goto 378,78.60,69.75,0
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>在地上拾取 |cRXP_PICK_遭窃的南瓜|r
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >>进入洞穴
step
	#label Carrots
	.goto 378,74.70,74.76,0
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>击杀 |cRXP_ENEMY_肥胖的萝卜小偷|r。拾取 |cRXP_LOOT_被偷的胡萝卜|r
    >>|cRXP_WARN_你也可以拾取地上的|r |cRXP_PICK_胡萝卜|r |cRXP_WARN_物品|r
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcruncher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >>离开洞穴
step
	.goto 378,77.85,71.75,0
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>击杀 |cRXP_ENEMY_肥胖的兔妖|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高·夏酒|r、|cRXP_FRIENDLY_季·火掌|r 和 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .turnin 29770 >>交任务 还能吃！
	.target +Gao Summerdraft
    .goto 378,68.13,66.40
    .turnin 29769 >>交任务 小无赖
    .accept 29768 >>接受任务 丢失的槌子
	.target +Ji Firepaw
	.goto 378,68.89,64.98
    .accept 29771 >>接受任务 比木头更硬
	.target +Jojo Ironbrow
    .goto 378,69.16,66.71
step
	#completewith next
	>>拾取地上的|cRXP_PICK_木板|r
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>在桶上拾取 |cRXP_PICK_槌|r
    >>|cRXP_WARN_无需击杀 |cRXP_ENEMY_拉吉斯|r，能避开就避开|r
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    #loop
    .goto 378,63.77,77.19,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
	>>拾取地上的|cRXP_PICK_木板|r
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 和 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29771 >>交任务 比木头更硬
    .target +Jojo Ironbrow
    .goto 378,69.16,66.71
    .turnin 29768 >>交任务 丢失的槌子
    .accept 29772 >>接受任务 锣声震天
    .target +Ji Firepaw
	.goto 378,68.89,64.98
step
    .goto 378,68.95,64.80
    >>点击 |cRXP_PICK_锣|r
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29772 >>交任务 锣声震天
    .accept 29774 >>接受任务 别泼脸！
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_涓流|r 对话
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,过场剧情
	.target Shu
    .skipgossip
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    >>|cRXP_WARN_等待剧情事件结束|r
    .turnin 29774 >>交任务 别泼脸！
    .accept 29775 >>接受任务 神真子的灵魂和躯体
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>前往五晨寺
	>>|cRXP_WARN_|cRXP_PICK_运货马车|r比手动跑还慢|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29775 >>交任务 神真子的灵魂和躯体
    .accept 29776 >>接受任务 晨息村
	.timer 20,晨息村 剧情RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_等待剧情事件结束|r
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>前往 |cRXP_WARN_晨息村|r
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29776 >>交任务 晨息村
    .accept 29778 >>接受任务 重写智慧
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .accept 29783 >>接受任务 比石头更硬
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_邵白长老|r 对话
    .accept 29777 >>接受任务 作案工具
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_沈·石锲|r 对话
    .vendor >>|cRXP_WARN_如果需要，出售物品并修理装备|r
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>击杀|cRXP_ENEMY_费锋智者|r，拾取他们的|cRXP_LOOT_画笔|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>拾取地面上的|cRXP_PICK_石头|r
    .complete 29783,1 --12/12 Abandoned Stone Block
step
	.goto 378,28.71,50.23,0
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>点击纪念碑上的|cRXP_PICK_旗帜|r
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>击杀|cRXP_ENEMY_费锋智者|r，拾取他们的|cRXP_LOOT_画笔|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
	.goto 378,31.32,52.22,0
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>拾取地面上的|cRXP_PICK_石头|r
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.32,52.22,0
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>击杀|cRXP_ENEMY_费锋智者|r，拾取他们的|cRXP_LOOT_画笔|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_邵白长老|r 对话
    .target Elder Shaopai
    .turnin 29777 >>交任务 作案工具
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .target Jojo Ironbrow
    .turnin 29783 >>交任务 比石头更硬
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .target Ji Firepaw
    .turnin 29778 >>交任务 重写智慧
    .accept 29779 >>接受任务 以直报怨
    .accept 29780 >>接受任务 不作恶
    .accept 29781 >>接受任务 警告猴子
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >>前往 |cRXP_WARN_玉立柱|r
step
	#completewith RukRuk
	>>击杀|cRXP_ENEMY_狒狒村猢狲|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>点击 |cRXP_FRIENDLY_玉立柱|r
    .accept 29782 >>接受任务 比骨头更硬
step
    #completewith FeFeng
	>>在地上拾取 |cRXP_PICK_被偷的焰火|r
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    #label RukRuk
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>击杀|cRXP_ENEMY_鲁克鲁克|r
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #label FeFeng
	.goto 378,26.75,31.86,0
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
    >>击杀|cRXP_ENEMY_狒狒村猢狲|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,0
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>在地上拾取 |cRXP_PICK_被偷的焰火|r
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_季·火掌|r 对话，他应该在你身边
    >>|cRXP_WARN_如果他不在那里，请跳过此步骤|r
    .turnin 29779 >>交任务 以直报怨
    .turnin 29780 >>交任务 不作恶
    .turnin 29781 >>交任务 警告猴子
    .accept 29784 >>接受任务 平衡之念
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔乔·铁眉|r 对话
    .turnin 29782 >>交任务 比骨头更硬
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 29779 >>交任务 以直报怨
    .turnin 29780 >>交任务 不作恶
    .turnin 29781 >>交任务 警告猴子
    .accept 29784 >>接受任务 平衡之念
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_小心地|r 走过绳子
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29784 >>交任务 平衡之念
    .accept 29785 >>接受任务 上古风灵大风
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>前往|cRXP_WARN_风语厅|r
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >>在第一波风平息后，从两组楼梯之间跑过去
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >>在下一个房间的风平息后，朝|cRXP_FRIENDLY_大风|r跑去
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大风|r 和 |cRXP_FRIENDLY_艾莎|r 对话
    .turnin 29785 >>交任务 上古风灵大风
	.target +Dafeng
    .goto 378,24.65,69.80
    .accept 29786 >>接受任务 天空之战
	.target +Aysa Cloudsinger
    .goto 378,24.78,69.78
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>当|cRXP_PICK_炤壬|r飞过地面上的|cRXP_ENEMY_爆竹发射器|r时，点击它们来对他造成伤害
    >>他逆时针飞行。|cRXP_WARN_避开他的闪电池|r。他着陆时伤害他。在他第二次着陆时击杀他
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29786 >>交任务 天空之战
    .accept 29787 >>接受任务 传承的价值
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>前往|cRXP_WARN_长者之路|r
step
    .goto 378,22.70,52.80
	>>击杀|cRXP_ENEMY_长者的卫士|r
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,传承的价值 剧情RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
	>>|cRXP_WARN_等待剧情事件结束|r
    .turnin 29787 >>交任务 传承的价值
    .accept 29788 >>接受任务 不受欢迎的生灵
    .accept 29789 >>接受任务 积跬步，致千里
	.target Master Shang Xi
step
    #loop
    .goto 378,18.84,51.88,0
    .goto 378,18.84,51.88,30,0
    .goto 378,18.43,49.88,30,0
    .goto 378,18.37,48.13,30,0
    .goto 378,21.57,49.29,30,0
    .goto 378,22.50,48.95,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,18.18,44.52,30,0
	>>击杀|cRXP_ENEMY_棘枝恶灵|r
    >>拾取挂在树上的|cRXP_PICK_符|r
    .complete 29788,1 --8/8 Thornbranch Scamp slain
	.mob +Thornbranch Scamp
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父|r 对话
    .turnin 29788 >>交任务 不受欢迎的生灵
    .turnin 29789 >>交任务 积跬步，致千里
    .accept 29790 >>接受任务 智慧传承
	.timer 83,智慧传承 RP
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>在箭头所在地区等待剧情动画
    >>|cRXP_WARN_如果你越过那里，|cRXP_FRIENDLY_尚喜|r将消失。如果发生这种情况，放弃任务并重新开始剧情演出|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29790 >>交任务 智慧传承
    .accept 29791 >>接受任务 神真子的苦难
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>点击|cRXP_PICK_通风气球|r登上它
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,神真子的苦难 RP
step
    .goto 378,30.8,92.9
	>>|cRXP_WARN_等剧情结束|r
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_邵白长老|r 对话
    .turnin 29791 >>交任务 神真子的苦难
    .accept 29792 >>接受任务 通往卓越
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_跟随箭头|r
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>前往 |cRXP_WARN_悲雾大门|r
	.timer 28,悲雾大门 剧情演出
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00跟随箭头|r。等待剧情RP
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魏|r 和 |cRXP_FRIENDLY_科尔加|r 对话
    .turnin 29792 >>交任务 通往卓越
    .accept 30591 >>接受任务猎杀狼群
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .accept 29795 >>接受任务 储备竹竿
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    #loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,0
    >>击杀 |cRXP_ENEMY_悲雾猛虎|r
    >>拾取地上的|cRXP_PICK_竹竿|r
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
	.mob +Pei-Wu Tiger
    .complete 29795,1 --10/10 Broken Bamboo Stalk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_魏|r 和 |cRXP_FRIENDLY_科尔加|r 对话
    .turnin 30591 >>交任务猎杀狼群
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .turnin 29795 >>交任务 储备竹竿
    .accept 30589 >>接受任务 炸毁残骸
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迈凯尔|r 和 |cRXP_FRIENDLY_季|r 对话
    .turnin 30589 >>交任务 炸毁残骸
    .accept 30590 >>接受任务小心轻放
	.target +Makael Bay
    .goto 378,36.32,72.36
    .accept 29793 >>接受任务 海中的邪恶
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    #loop
    .goto 378,36.06,76.73,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    >>击杀|cRXP_ENEMY_黑暗骇魔|r和|cRXP_ENEMY_黑暗恐魔|r
	>>拾取地上的|cRXP_PICK_爆炸包裹|r
    >>|cRXP_WARN_小心恐怖者的暗影喷泉|r
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
	.mob +Darkened Horror
	.mob +Darkened Terror
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_迈凯尔·贝|r和|cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 30590 >>交任务小心轻放
	.target +Makael Bay
    .goto 378,36.32,72.36
    .turnin 29793 >>交任务 海中的邪恶
    .accept 29796 >>接受任务 紧急消息
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_德罗娜·莱因哈特|r和|cRXP_FRIENDLY_乔乔·铁眉|r对话
    .turnin 29796 >>交任务 紧急消息
    .accept 29794 >>接受任务 一个都不能少
    .accept 29797 >>接受任务 医疗物资
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .accept 29665 >>接受任务 越来越糟
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>护送|cRXP_FRIENDLY_受伤的船员|r回到|cRXP_FRIENDLY_德洛拉的|r营地。
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>抱起1名地上的|cRXP_FRIENDLY_受伤的船员|r
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>护送|cRXP_FRIENDLY_受伤的船员|r回到|cRXP_FRIENDLY_德洛拉的|r营地。
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>护送|cRXP_FRIENDLY_受伤的船员|r回到|cRXP_FRIENDLY_德洛拉的|r营地。
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>抱起|cRXP_FRIENDLY_受伤的船员|r。
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>护送|cRXP_FRIENDLY_受伤的船员|r回到|cRXP_FRIENDLY_德洛拉的|r营地。
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorB
    >>击杀|cRXP_ENEMY_深鳞折磨者|r
    >>在地上拾取 |cRXP_PICK_医疗箱|r
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    .waypoint 378,42.27,86.80,-129340,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,42.27,86.80,-105520,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,40.18,87.69,10
    .waypoint 378,40.01,84.36,10
    .waypoint 378,38.08,84.73,10
    .waypoint 378,38.41,83.09,10
    .waypoint 378,37.60,81.44,10
    .waypoint 378,35.49,83.80,10
    .waypoint 378,36.17,87.63,10
    .waypoint 378,37.66,87.22,10
    .waypoint 378,38.36,87.43,10
    .goto 378,40.18,87.69
    >>拾取地上的|cRXP_FRIENDLY_受伤的水手|r，把他带回|cRXP_FRIENDLY_德洛拉·狮心|r的营地
    >>|cRXP_WARN_至少重复此步骤两次|r
    .complete 29794,1,2 --2/3 Injured Sailors rescued
    .target Injured Sailor
step
#optional
#label InjuredSailorB
step
    #optional
    #loop
    .goto 378,37.86,83.22,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,15,0
    .goto 378,36.82,89.24,15,0
    >>击杀|cRXP_ENEMY_深鳞折磨者|r
    >>在地上拾取 |cRXP_PICK_医疗箱|r
	>>|cRXP_WARN_暂时不要拾取新的 |cRXP_FRIENDLY_受伤的船员|r|r
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    #label InjuredSailorC
	#completewith next
    .goto 378,38.36,87.43,10,0
    .goto 378,37.66,87.22,10,0
    .goto 378,36.17,87.63,10,0
    .goto 378,35.49,83.80,10,0
    .goto 378,37.60,81.44,10,0
    .goto 378,38.41,83.09,10,0
    .goto 378,38.08,84.73,10,0
    .goto 378,40.01,84.36,10,0
    .goto 378,40.18,87.69
	.cast 56685 >>抱起1名|cRXP_FRIENDLY_受伤的船员|r
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>护送|cRXP_FRIENDLY_受伤的船员|r回到|cRXP_FRIENDLY_德洛拉·狮心的|r营地
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_德罗娜·莱因哈特|r和|cRXP_FRIENDLY_乔乔·铁眉|r对话
    .turnin 29794 >>交任务 一个都不能少
    .turnin 29797 >>交任务 医疗物资
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .turnin 29665 >>交任务 越来越糟
    .accept 29798 >>接受任务 远古的邪恶
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step
    .goto 378,36.50,84.23
    >>击杀|cRXP_ENEMY_弗德拉卡，深海梦魇|r
    *|cRXP_WARN_躲避它的怒海碎击|r
    *|cRXP_WARN_在|cRXP_ENEMY_深鳞压迫者|r 刷新时，击杀它|r
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 29798 >>交任务 远古的邪恶
    .accept 30767 >>接受任务 孤注一掷
    .timer 77,孤注一掷 RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>等待剧情事件结束
    >>|cRXP_WARN_如果你想，可以休息一下|r
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 30767 >>交任务 孤注一掷
    .accept 29799 >>接受任务 治疗神真子
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>点击|cRXP_PICK_散落的残骸|r，帮助|cRXP_FRIENDLY_联盟牧师|r和|cRXP_FRIENDLY_部落德鲁伊|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_联盟牧师|r 和 |cRXP_FRIENDLY_部落德鲁伊|r 对话
    *|cRXP_WARN_如果 |cRXP_ENEMY_深鳞撕裂者|r 在攻击他们，杀死它们|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r。
    .turnin 29799 >>交任务 治疗神真子
	.timer 18,治疗神真子 RP
	.target Ji Firepaw
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    >>|cRXP_WARN_等剧情结束|r
    .goto 378,38.77,86.32
    .accept 29800 >>接受任务 新的盟友
	.target Ji Firepaw
step
    #completewith next
    .hs >>炉石返回 |cRXP_WARN_五晨寺|r
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_尚喜师父的灵魂|r 对话，选择你的阵营
	>>|cRXP_WARN_按键盘上的"Escape"键并可跳过过场动画|r
    .turnin 29800 >>交任务 新的盟友
    .accept 31450 >>接受任务 新的命运
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_季·火掌|r 对话
    .turnin 31450 >>交任务 新的命运
    .accept 31012 >>接受任务 加入部落
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 与 |cRXP_FRIENDLY_艾莎·云歌|r 对话
    .turnin 31450 >>交任务 新的命运
	.accept 30987 >>接受任务 加入联盟
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瓦里安·乌瑞恩国王|r对话
	.turnin 30987 >>交任务 加入联盟
	.target 瓦里安·乌瑞恩国王
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >>进入格罗玛什要塞
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r对话
    .turnin 31012 >>交任务 加入部落
    .target 加尔鲁什·地狱咆哮
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+恭喜，你刚刚完成了熊猫人起始区域。请点击RXP窗口下的齿轮按钮，然后选择相应的跟随指南
]])
