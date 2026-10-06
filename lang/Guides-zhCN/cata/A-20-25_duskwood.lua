if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 20-25级 暮色森林
#displayname 21-26级 暮色森林
#next 25-30级 北荆棘谷


<<Alliance


step
    .goto 47,93.30,12.00
    .zone 47 >>前往暮色森林
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.09,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在房子里的 |cRXP_FRIENDLY_托比亚斯|r 对话
    .accept 26666 >>接受任务 斯塔文的传说
	.target Tobias Mistmantle
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .accept 26653 >>接受任务 夜色镇的补给
	.target 亚伯克隆比
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚|r 对话
    .fp Darkshire >>获取夜色镇飞行点
	.target 菲利希亚·玛林
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与房子里的人对话
    .turnin 26653 >>交任务 夜色镇的补给
    .accept 26652 >>接受任务 幽灵的发丝
	.target 伊瓦夫人
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>进入旅店
step
    #completewith Daltry1
    .goto 47,73.87,44.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板崔莱尼|r 对话
    .home >>将炉石设置在血鸦旅店
	.target 旅店老板崔莱尼
step
	#label Kabobs
    .goto 47,73.74,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格鲁尔|r 对话
    .accept 26620 >>接受任务 干烤狼肉串
    .accept 26623 >>接受任务 黑蟹蛋糕
	.target 厨师格鲁奥
step
	#completewith Daltry1
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8>>离开旅店
step
	#label Daltry1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与室内的 |cRXP_FRIENDLY_书记员达尔塔|r 和室外的 |cRXP_FRIENDLY_阿尔泰娅·埃伯洛克|r 对话
    .turnin 26666 >>交任务 斯塔文的传说
    .accept 26667 >>接受任务 被偷的信件
    .goto 47,72.448,46.909
	.target +Clerk Daltry
    .turnin -26728 >>交任务 英雄的召唤：暮色森林！
    .accept 26618 >>接受任务 恶狼成群
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .accept 26688 >>接受任务 林子里的狼人
	.target 卡洛尔

step
    #optional
    #completewith Letters
    >>击杀|cRXP_ENEMY_毒针蛛网蛛|r，拾取它们的|cRXP_LOOT_肉块|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob 结网毒蜘蛛
step
#completewith next
#optional
    .goto 47,64.12,51.62,0,0
    >>击杀|cRXP_ENEMY_夜行狼人|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#label Letters
    .goto 47,61.24,40.50
    >>拾取地上的 |cRXP_PICK_一堆废弃物|r，以获得 |cRXP_LOOT_一捆被切碎的信件|r
    .complete 26667,1 --1/1 A Slashed Bundle of Letters
step
#loop
    .goto 47,64.12,51.62,40,0
    .goto 47,60.883,40.830,40,0
    .goto 47,65.304,44.317,40,0
    .goto 47,64.12,51.62,0
    .goto 47,60.883,40.830,0
    .goto 47,65.304,44.317,0
    >>击杀|cRXP_ENEMY_夜行狼人|r
    .complete 26688,1 --7/7 Nightbane Worgen slain
	.mob Nightbane Worgen
step
	#completewith next
    >>击杀 |cRXP_ENEMY_恐狼|r，拾取它们的 |cRXP_LOOT_肋排|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
#loop
    .goto 47,65.54,30.32,70,0
    .goto 47,73.29,20.23,70,0
    .goto 47,63.90,19.41,70,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,73.29,20.23,40,0
    .goto 47,63.90,19.41,0
    >>击杀|cRXP_ENEMY_毒针蛛网蛛|r，拾取它们的|cRXP_LOOT_肉块|r
    .complete 26623,1 --6/6 Dusky Lump
	.mob 结网毒蜘蛛
step
#loop
    .goto 47,59.00,20.72,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,40,0
    .goto 47,63.90,19.41,40,0
    .goto 47,68.35,19.48,40,0
    .goto 47,60.93,27.34,40,0
    .goto 47,65.54,30.32,40,0
    .goto 47,59.00,20.72,0
    >>击杀 |cRXP_ENEMY_恐狼|r，拾取它们的 |cRXP_LOOT_肋排|r
    .complete 26618,1 --12/12 Dire Wolf slain
    .complete 26620,1 --5/5 Wolf Skirt Steak
	.mob Dire Wolf
step
    .isOnQuest 26620,26618,26623,26688,26667
    .hs >>炉石回到夜色镇
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与室内的 |cRXP_FRIENDLY_书记员达尔塔|r 和室外的 |cRXP_FRIENDLY_阿尔泰娅·埃伯洛克|r 对话
    .turnin 26667 >>交任务 被偷的信件
    .accept 26669 >>接受任务 黑暗的角落
    .target +Clerk Daltry
    .goto 47,72.448,46.909
    .turnin 26618 >>交任务 恶狼成群
    .accept 26645 >>接受任务 守夜人
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .turnin 26688 >>交任务 林子里的狼人
    .accept 26689 >>接受任务 烂果园
	.target 卡洛尔
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .accept 26683 >>接受任务 眺望群星
	.target 维克托·安特拉斯
step
	#completewith next
    >>击杀|cRXP_ENEMY_腐烂恐魔|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    .goto 47,81.66,59.16,8,0
    .goto 47,81.92,58.98,5,0
    .goto 47,82.05,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与房子里的 |cRXP_FRIENDLY_玛丽|r 对话
    .turnin 26652 >>交任务 幽灵的发丝
    .accept 26654 >>接受任务 归还梳子
    .turnin 26683 >>交任务 眺望群星
    .accept 26684 >>接受任务 疯狂的食尸鬼
	.target 盲眼玛丽
step
#loop
	.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
	.goto 47,82.30,61.22,30,0
	.goto 47,82.45,56.25,30,0
	.goto 47,80.91,56.65,30,0
	.goto 47,79.48,60.41,30,0
	.goto 47,82.30,61.22,30,0
    >>击杀|cRXP_ENEMY_腐烂恐魔|r
	.complete 26645,1 --8/8 Rotting Horror slain
	.mob Rotting Horror
step
    #completewith next
    .subzone 42 >>返回到夜色镇
step
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与房子里的人对话
    .turnin 26654 >>交任务 归还梳子
    .accept 26655 >>接受任务 送交发丝
	.target 伊瓦夫人
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 26655 >>交任务 送交发丝
    .accept 26660 >>接受任务 僵尸酒
	.target 亚伯克隆比
step << skip
    #completewith next
    .goto 47,87.98,33.16,20,0
    .goto 47,88.1,31.33,20,0
    .goto 47,90.98,30.53,30 >>留意|cRXP_ENEMY_无名的战士|r（稀有）。如果他刷了的话，就杀掉他
	.unitscan Unknown Soldier
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>进入旅店
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯密茨|r 对话
    .turnin 26660 >>交任务 僵尸酒
    .accept 26661 >>接受任务 收集腐败之花
	.target 旅店老板斯密茨
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>离开旅店
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿尔泰娅|r 对话
    .turnin 26645 >>交任务 守夜人
    .accept 26686 >>接受任务 说话的骨头
	.target 指挥官阿尔泰娅·埃伯洛克
step
    #optional
    .maxlevel 25,endOfTheGuide
step
#optional
	#completewith next
    >>击杀 |cRXP_ENEMY_骷髅战士|r 和 |cRXP_ENEMY_骷髅法师|r
	>>拾取地面上的 |cRXP_LOOT_腐败之花|r
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
    .goto 47,80.31,71.10,15,0
    .goto 47,80.88,71.58
    >>在墓地内击杀|cRXP_ENEMY_疯狂食尸鬼|r，拾取|cRXP_LOOT_玛丽的眼镜|r
    .complete 26684,1 --1/1 Mary's Looking Glass
	.mob 疯狂的食尸鬼
step
	.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
    #loop
    .goto 47,81.85,68.34,30,0
    .goto 47,78.33,66.13,30,0
    .goto 47,77.02,69.85,30,0
    .goto 47,80.89,74.21,30,0
    .goto 47,81.85,68.34,30,0
    >>击杀 |cRXP_ENEMY_骷髅战士|r 和 |cRXP_ENEMY_骷髅法师|r
	>>拾取地面上的 |cRXP_LOOT_腐败之花|r
    .complete 26686,1 --5/5 Skeletal Warrior slain
	.mob +Skeletal Warrior
    .complete 26686,2 --5/5 Skeletal Mage
	.mob +Skeletal Mage
    .complete 26661,1 --5/5 Rot Blossom
step
#optional
    #completewith journal1
    >>击杀 |cRXP_ENEMY_夜行织影狼人|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob 夜行织影狼人
step
	#completewith next
    .goto 47,66.03,75.79,8,0
    .goto 47,65.98,76.42,8 >>进入谷仓
step
#label journal1
    .goto 47,66.59,76.44
    >>拾取地上的|cRXP_LOOT_一本被撕破的日记|r
    .complete 26669,1 --1/1 A Torn Journal
step
#loop
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,40,0
    .goto 47,60.88,73.19,40,0
    .goto 47,64.19,65.03,40,0
    .goto 47,63.50,76.61,0
    >>击杀 |cRXP_ENEMY_夜行织影狼人|r
    .complete 26689,1 --10/10 Nightbane Shadow Weaver slain
	.mob 夜行织影狼人
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与室外的|cRXP_FRIENDLY_阿尔泰娅|r和室内的|cRXP_FRIENDLY_达尔塔|r对话
    .turnin 26686 >>交任务 说话的骨头
    .goto 47,73.523,46.925
	.target +Commander Althea Ebonlocke
    .turnin 26669 >>交任务 黑暗的角落
    .accept 26670 >>接受任务 罗兰之墓
    .goto 47,72.448,46.909
	.target +Clerk Daltry
step
	#completewith next
    .goto 47,73.82,45.95,8,0
    .goto 47,74.07,45.32,8 >>进入旅店
step
    .goto 47,74.09,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯密茨|r 对话
    .turnin 26661 >>交任务 收集腐败之花
    .accept 26676 >>接受任务 送酒
	.target 旅店老板斯密茨
step
	#completewith next
    .goto 47,74.07,45.32,8,0
	.goto 47,73.82,45.95,8 >>离开旅店
step
    .goto 47,75.33,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话
    .turnin 26689,1 >>交任务 烂果园
    .accept 26690 >>接受任务 邪齿和堕落
	.target 卡洛尔
step
	#label Insane
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .turnin 26684 >>交任务 疯狂的食尸鬼
    .accept 26685 >>接受任务 高级玻璃
	.target 维克托·安特拉斯
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 26676 >>交任务 送酒
    .accept 26680 >>接受任务 食人魔小偷
	.target 亚伯克隆比
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith JPages
    >>击杀 |cRXP_ENEMY_夜行邪齿狼人|r 和 |cRXP_ENEMY_夜行堕落狼人|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob 夜行邪齿狼人
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob 夜行堕落狼人
step
	#label JPages
    .goto 47,73.44,76.86,20,0
    .goto 47,74.26,77.92,20,0
    .goto 47,73.62,79.21
    >>拾取地上的|cRXP_LOOT_沾满泥污的日记页|r
    .complete 26670,1 --1/1 Muddy Journal Pages
step
#loop
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,40,0
    .goto 47,74.84,67.51,40,0
    .goto 47,72.13,67.77,40,0
    .goto 47,72.03,74.77,40,0
    .goto 47,74.25,73.86,40,0
    .goto 47,73.46,73.17,0
    >>击杀 |cRXP_ENEMY_夜行邪齿狼人|r 和 |cRXP_ENEMY_夜行堕落狼人|r
    .complete 26690,1 --8/8 Nightbane Vile Fang slain
    .mob 夜行邪齿狼人
    .complete 26690,2 --8/8 Nightbane Tainted One slain
    .mob 夜行堕落狼人
step
    .goto 47,72.448,46.909
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在室内与 |cRXP_FRIENDLY_书记员达尔塔|r 对话
    .turnin 26670 >>交任务 罗兰之墓
    .accept 26671 >>接受任务 斯塔文·密斯特曼托的命运
	.target 书记员达尔塔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡洛尔|r 对话，然后与室内的 |cRXP_FRIENDLY_乔纳森|r 对话
    .turnin 26690 >>交任务 邪齿和堕落
    .accept 26691 >>接受任务 林子里的狼人
    .goto 47,75.33,48.02
	.target +Calor
    .turnin 26691 >>交任务 林子里的狼人
    .goto 47,75.24,48.23,5,0
    .goto 47,75.39,49.00
	.target +Jonathan Carevin
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在房子里的 |cRXP_FRIENDLY_托比亚斯|r 对话
    .turnin 26671 >>交任务 斯塔文·密斯特曼托的命运
    .accept 26672 >>接受任务 挖掘真相
    .target Tobias Mistmantle
step
	#label Clawing
    .goto 47,75.56,45.37,8,0
    .goto 47,75.83,45.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里与 |cRXP_FRIENDLY_伊瓦夫人|r 对话
    .turnin 26672 >>交任务 挖掘真相
    .accept 26674 >>接受任务 密斯特曼托的复仇
	.target 伊瓦夫人
step
    #completewith next
	.cast 82029 >>|cRXP_WARN_使用|r |T133343:0|t[密斯特曼托家族戒指] |cRXP_WARN_召唤|r |cRXP_ENEMY_斯塔文·密斯特曼托|r
	.timer 33,密斯特曼托的复仇 剧情RP
step
    .goto 47,77.42,35.85,10,0
    .goto 47,77.33,36.18
    .use 59363 >>击杀|cRXP_ENEMY_斯塔文·密斯特曼托|r
    .complete 26674,1 --1/1 Stalvan Mistmantle slain
	.mob 斯塔文·密斯特曼托
step
    .goto 47,78.74,44.53,8,0
    .goto 47,79.084,44.173
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与在房子里的 |cRXP_FRIENDLY_托比亚斯|r 对话
    .turnin 26674 >>交任务 密斯特曼托的复仇
    .accept 26785 >>接受任务 族群的一部分
	.target Tobias Mistmantle
step
	#completewith next
    .goto 47,69.51,48.83,30 >>走市政厅后方的小路前往阳光树林
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守夜人道茨|r 和 |cRXP_FRIENDLY_学徒菲斯|r 对话
    .accept 25235 >>接受任务 粗野的沃古尔
	.target +Watcher Dodds
    .goto 47,45.12,67.02
    .turnin 26785 >>交任务 族群的一部分
    .accept 26707 >>接受任务 致命的植物
    .accept 26717 >>接受任务 约根狼人
    .goto 47,44.92,67.43
	.target +Apprentice Fess
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    #completewith next
    >>击杀|cRXP_ENEMY_乱坟草|r。拾取它们的 |cRXP_LOOT_乱坟草|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    .goto 47,49.86,77.69
    >>点击地面上的|cRXP_PICK_松土堆|r
    .complete 26717,1 --1/1 Mound of Loose Dirt
step
    #loop
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    .goto 47,49.28,76.56,60,0
    .goto 47,51.99,73.61,60,0
    .goto 47,49.04,70.73,60,0
    .goto 47,47.12,73.79,60,0
    >>击杀|cRXP_ENEMY_乱坟草|r。拾取它们的 |cRXP_LOOT_乱坟草|r
    .complete 26707,1 --5/5 Corpseweed
	.mob Corpseweed
step
    #completewith Zzarc
	>>击杀|cRXP_ENEMY_裂拳食人魔|r，|cRXP_ENEMY_裂拳好战者|r， 和|cRXP_ENEMY_裂拳战士|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    .goto 47,33.52,75.33
    >>拾取地上的 |cRXP_LOOT_阿伯克隆比的箱子|r
    .complete 26680,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto 47,34.23,77.47,15 >>进入裂拳食人魔洞穴
step
	#label Zzarc
    .goto 47,37.87,84.33
    >>击杀 |cRXP_ENEMY_扎克乌尔|r。拾取他的 |cRXP_LOOT_单片眼镜|r
    .complete 26685,1 --1/1 Ogre's Monocle
	.unitscan 扎克乌尔
step
	#completewith next
    .goto 47,34.20,77.47,15 >>离开裂拳食人魔洞穴
	.isOnQuest 25235,26685
step
    #loop
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,33.32,74.63,60,0
    .goto 47,32.82,68.37,60,0
    .goto 47,39.06,70.59,60,0
    .goto 47,40.66,74.97,60,0
    .goto 47,34.261,73.014,0
	>>击杀|cRXP_ENEMY_裂拳食人魔|r，|cRXP_ENEMY_裂拳好战者|r， 和|cRXP_ENEMY_裂拳战士|r
    .complete 25235,1 --15/15 Splinter Fist Ogre slain
	.mob Splinter Fist Ogre
	.mob Splinter Fist Firemonger
	.mob Splinter Fist Warrior
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学徒菲斯|r 和 |cRXP_FRIENDLY_守夜人道茨|r 对话
    .turnin 26707 >>交任务 致命的植物
    .turnin 26717 >>交任务 约根狼人
    .accept 26719 >>接受任务 给哈里斯大师的货物
    .goto 47,44.92,67.43
	.target +Apprentice Fess
    .turnin 25235 >>交任务 粗野的沃古尔
    .goto 47,45.12,67.02
	.target +Watcher Dodds
step
    .goto 47,20.015,57.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾丽辛顿修女|r对话
    .target Sister Elsington
    .accept 26777 >>接受任务 抚慰灵魂
step
    .goto 47,18.628,58.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基特斯|r 对话
    .accept 26721 >>接受任务 基特斯的虫子
    .target 基特斯
step
    .goto 47,18.310,57.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥利弗·哈里斯|r对话
    .target Oliver Harris
    .turnin 26719 >>交任务 给哈里斯大师的货物
    .accept 26720 >>接受任务 我们无法解除的诅咒
step
#optional
    #completewith LurkingW
    .use 60225 >>|cRXP_WARN_对|r |cRXP_WARN_Forlorn 调酒师桑塔基德|r |cRXP_FRIENDLY_使用|r |T134547:0|t[神圣香炉]
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
step
#optional
	#completewith next
    .goto 47,21.65,72.34,8,0
    .goto 47,21.29,72.73,8 >>|cRXP_WARN_走进谷仓马厩|r
step
    #label LurkingW
    .goto 47,21.61,73.15
	>>|cRXP_WARN_将|cRXP_ENEMY_ 潜藏狼人|r 伤害至20%或更少生命值，然后将|r |T134825:0|t[哈瑞斯的针剂] |cRXP_WARN_使用在它身上|r
    .complete 26720,1 --1/1 Lurking Worgen captured
	.mob Lurking Worgen
    .use 60206
step
    #loop
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,19.20,68.25,60,0
    .goto 47,19.95,64.85,60,0
    .goto 47,23.23,66.58,60,0
    .goto 47,25.13,70.24,60,0
    .goto 47,22.85,72.11,60,0
    .goto 47,21.695,68.981,0
    .use 60225 >>|cRXP_WARN_对|r |cRXP_WARN_Forlorn 调酒师桑塔基德|r |cRXP_FRIENDLY_使用|r |T134547:0|t[神圣香炉]
    .complete 26777,1 --5/5 Forlorn Spirit soothed
	.target Forlorn Spirit
    .use 60225
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_奥利弗·哈里斯|r和|cRXP_FRIENDLY_艾丽辛顿修女|r对话
    .turnin 26720 >>交任务 我们无法解除的诅咒
    .accept 26760 >>接受任务 异想天开
	.timer 58,异想天开 剧情RP
    .goto 47,18.32,57.67
    .turnin 26777 >>交任务 抚慰灵魂
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target Sister Elsington
step
    >>|cRXP_WARN_等剧情结束|r
    >>|cRXP_WARN_若计时结束后未获得进度，放弃「异想天开」并重新接受任务|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_奥利弗·哈里斯|r,|cRXP_FRIENDLY_斯温·约根|r, 和|cRXP_FRIENDLY_艾丽辛顿修女|r 对话
    .complete 26760,1 --1/1 Worgen cured
    .turnin 26760 >>交任务 异想天开
    .goto 47,18.32,57.67
    .accept 26723 >>接受任务 摩本特·费尔的命运
    .goto 47,18.34,58.06
    .accept 26778 >>接受任务 亡者的哭泣
    .goto 47,20.03,57.82
	.target Oliver Harris
	.target 斯温·约根
	.target Sister Elsington
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto Duskwood,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_约翰 谢尔比|r对话
    .target John Shelby
    .fp Raven Hill>>获得乌鸦岭飞行点
step
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14,50,0
    .goto 47,31.66,50.31,50,0
    .goto 47,37.52,25.18,50,0
    .goto 47,30.98,31.14
    >>击杀|cRXP_ENEMY_黑寡妇蜘蛛|r，从它们身上拾取|cRXP_LOOT_寡妇蛛毒囊|r
	>>|cRXP_WARN_它们在战斗中有时会消失1–2秒|r
    .complete 26721,1 --8/8 Widow Venom Sac
	.mob Black Widow
step
    .goto 47,17.72,29.05
    >>点击 |cRXP_PICK_一座风化的坟墓|r
    .accept 26793 >>接受任务 破旧的坟墓
step
    .goto 47,17.49,33.40,8,0
    .goto 47,17.44,34.17,5,0
    .goto 47,16.97,33.42
    >>点击楼上地板上的|cRXP_PICK_血染的帽子|r
    .complete 26723,1 --1/1 Remains of Morbent Fel
step
    .isOnQuest 26793,26685,26680
    .hs >>炉石回到夜色镇
    .cooldown item,6948,>2
step
    .goto 47,72.43,46.80,15,0
    .goto 47,72.605,47.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_希拉·沃宁迪|r 对话
    .turnin 26793 >>交任务 破旧的坟墓
    .accept 26794 >>接受任务 摩根·拉迪莫尔
    .target 希拉·沃宁迪
step
    .goto 47,73.523,46.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r 对话
    .turnin 26794 >>交任务 摩根·拉迪莫尔
    .accept 26795 >>接受任务 摩拉迪姆
    .target 指挥官阿尔泰娅·埃伯洛克
step
	#sticky
    .destroy 2154 >>删除 |T133741:0|t[摩根·拉迪莫尔的故事]
step
    .goto 47,79.53,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维克托·安特拉斯|r 对话
    .turnin 26685 >>交任务 高级玻璃
	.target 维克托·安特拉斯
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 26680 >>交任务 食人魔小偷
	.target 亚伯克隆比
step
    #optional
    .maxlevel 25,endOfTheGuide
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 26680 >>交任务 食人魔小偷
    .accept 26677 >>接受任务 食尸鬼雕像
	.target 亚伯克隆比
    .maxlevel 28
step
    .goto 47,77.34,36.27,15,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,75.08,37.23,40,0
    .goto 47,76.73,30.50,40,0
    .goto 47,81.23,32.15,40,0
    .goto 47,79.79,35.41,40,0
    .goto 47,77.760,33.889
    >>击杀|cRXP_ENEMY_恶臭的食尸鬼|r并从其身上拾取|cRXP_LOOT_食尸鬼的肋骨|r
	>>|cRXP_WARN_检查房屋内外是否有|cRXP_PICK_宝箱|r|r
    .complete 26677,1 --7/7 Ghoul Rib
	.mob Fetid Corpse
    .maxlevel 28
step
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_亚伯克隆比|r 对话
    .turnin 26677 >>交任务 食尸鬼雕像
    .accept 26681 >>接受任务 给镇长的信
	.target 亚伯克隆比
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_进入议政厅|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .turnin 26681 >>交任务 给镇长的信
    .accept 26727 >>接受任务 藏尸者的复仇
	.target 艾尔罗·埃伯洛克公爵
    .maxlevel 28
step
	#completewith next
	.goto 47,72.35,47.75,8,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.86,46.82,10 >>|cRXP_WARN_离开议政厅|r
    .maxlevel 28
step
    .goto 47,74.17,46.47
    >>击杀|cRXP_ENEMY_缝合怪|r
    .complete 26727,1 --1/1 Stitches slain
	.mob Stitches
    .maxlevel 28
step
	#completewith next
	.goto 47,72.86,46.82,10,0
	.goto 47,72.53,47.21,8,0
	.goto 47,72.35,47.75,8 >>|cRXP_WARN_进入议政厅|r
    .maxlevel 28
step
    .goto 47,71.93,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r 对话
    .turnin 26727 >>交任务 藏尸者的复仇
	.target 艾尔罗·埃伯洛克公爵
    .maxlevel 28
step
	#completewith next
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_菲利希亚·玛林。|r 对话
    .fly Raven Hill >>飞往乌鸦岭
	.target 菲利希亚·玛林
    .subzoneskip 94
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_斯温·约根|r和|cRXP_FRIENDLY_基特斯|r 对话
    .turnin 26723 >>交任务 摩本特·费尔的命运
    .accept 26724 >>接受任务 潜藏的巫妖
    .goto 47,18.34,58.06
	.target +Sven Yorgen
    .turnin 26721 >>交任务 基特斯的虫子
    .accept 26787 >>接受任务 熊脑子
	.target +Jitters
    .goto 47,18.62,58.36
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾丽辛顿修女|r对话
    .turnin 26778 >>交任务 亡者的哭泣
    .isQuestComplete 26778
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾丽辛顿修女|r对话
    .turnin 26724 >>交任务 潜藏的巫妖
    .accept 26725 >>接受任务 在圣光的指引下
    .goto 47,20.03,57.82
	.target Sister Elsington
step
#optional
    #completewith LightforgedRod
    >>击杀|cRXP_ENEMY_瘟疫食尸鬼|r，|cRXP_ENEMY_食腐者|r，|cRXP_ENEMY_腐烂者|r和|cRXP_ENEMY_噬骨者|r
    .complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#optional
    #completewith LightforgedRod
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_在乌鸦岭墓地巡逻|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .unitscan 摩拉迪姆
    .isOnQuest 26795
step
    #label LightforgedRod
    .goto 47,23.45,35.41
    >>点击地面上的|cRXP_PICK_光铸之杖|r
    .turnin 26725 >>交任务 在圣光的指引下
    .accept 26753 >>接受任务 亡者的大厅
step
	#label CatacombsX
	#completewith next
    .goto 47,23.94,34.80,10,0
    .goto 47,25.68,33.76,15,0
    .goto 47,25.46,31.50,15,0
    .goto 47,23.47,27.99,15,0
    .goto 47,20.37,27.46,20 >>|cRXP_WARN_向下进入地下墓穴。注意避开任何坟墓，否则会刷新出|r |cRXP_ENEMY_被埋葬的尸体|r
step
    .goto 47,20.37,27.46
    >>点击地面上的|cRXP_PICK_光铸拱门|r
    .turnin 26753 >>交任务 亡者的大厅
    .accept 26722 >>接受任务 深埋
step
	#completewith next
    .goto 47,20.33,26.81,10,0
    .goto 47,19.47,26.81,10,0
    .goto 47,18.53,24.94,10,0
    .goto 47,18.01,25.37,10 >>|cRXP_WARN_穿过墙上的洞|r
step
    .goto 47,18.01,25.37
    >>点击地面上的|cRXP_FRIENDLY_光铸徽章|r
    .turnin 26722 >>交任务 深埋
    .accept 26754 >>接受任务 摩本特的克星
step
	#completewith next
    .goto 47,16.53,31.06
    .cast 82130 >>|cRXP_WARN_使用|r |T135142:0|t[摩本特的克星] |cRXP_WARN_对|r |cRXP_ENEMY_摩本特·费尔|r |cRXP_WARN_使用以削弱他|r
	.use 60212
    .mob 摩本特·费尔
step
    .goto 47,16.53,31.06
    .use 60212 >>击杀 |cRXP_ENEMY_摩本特·费尔|r
    .complete 26754,1 --1/1 Morbent Fel slain
	.mob 摩本特·费尔
step
	#completewith CoalB
    .goto 47,16.18,33.19,15,0
    .goto 47,15.31,38.48,15,0
    .goto 47,16.09,38.78,15,0
    .subzone 2098,1 >>|cRXP_WARN_离开地下墓穴|r
step
#sticky
#label morladim
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>击杀 |cRXP_ENEMY_摩拉迪姆|r。拾取他的 |cRXP_LOOT_头骨|r
    >>|cRXP_ENEMY_摩拉迪姆|r |cRXP_WARN_在乌鸦岭墓地巡逻|r
    .complete 26795,1 --Mor'Ladim's Skull (1)
	.unitscan 摩拉迪姆
    .isOnQuest 26795
step
#loop
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,20.72,35.33,40,0
    .goto 47,22.70,32.95,40,0
    .goto 47,16.20,33.17,40,0
    .goto 47,14.27,41.46,40,0
    .goto 47,22.922,37.687,0
    >>击杀|cRXP_ENEMY_瘟疫食尸鬼|r，|cRXP_ENEMY_食腐者|r，|cRXP_ENEMY_腐烂者|r和|cRXP_ENEMY_噬骨者|r
	.complete 26778,1 --20/20 Ghoul slain
	.mob Plague Spreader
	.mob Flesh Eater
	.mob Rotted One
	.mob Bone Chewer
step
#requires morladim
	#label CoalB
    #loop
    .goto 47,10.144,41.314,80,0
    .goto 47,11.636,54.060,80,0
    .goto 47,13.663,69.726,80,0
    .goto 47,10.144,41.314,0
    .goto 47,11.636,54.060,0
    .goto 47,13.663,69.726,0
    >>击杀|cRXP_ENEMY_暗色熊|r。从它们身上拾取|cRXP_LOOT_黑熊脑|r
    .complete 26787,1 --8/8 Black Bear Brain
	.mob Coalpelt Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_斯温·约根|r和|cRXP_FRIENDLY_基特斯|r 对话
    .turnin 26754 >>交任务 摩本特的克星
	.target +Sven Yorgen
    .goto 47,18.34,58.06
    .turnin 26787 >>交任务 熊脑子
    .goto 47,18.62,58.36
	.target +Jitters
step
    .goto 47,19.929,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾丽辛顿修女|r对话
    .target Sister Elsington
    .turnin 26778 >>交任务 亡者的哭泣
    .accept 26838 >>接受任务 无果的反叛
step
    #optional
    #label endOfTheGuide
step
    .goto 50,51.88,12.10
    .zone 50 >>前往北荆棘谷
]])
