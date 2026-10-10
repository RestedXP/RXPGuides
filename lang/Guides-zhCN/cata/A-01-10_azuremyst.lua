if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10级 秘蓝岛
#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18级 黑海岸
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦格伦|r 对话
    .accept 9279 >>接受任务 你活下来了！
    .target 麦格伦
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9279 >>交任务 你活下来了！
    .accept 9280 >>接受任务 补充治疗水晶
    .target 普罗尼图斯
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>击杀 |cRXP_ENEMY_峡谷蛾|r，拾取它们的 |cRXP_LOOT_血|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob 峡谷蛾
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_普罗尼图斯|r 对话
    .turnin 9280 >>交任务 补充治疗水晶
    .accept 9409 >>接受任务 紧急物资！
    .target 普罗尼图斯
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .accept 10302 >>接受任务 暴躁的变异体
    .target 植物学家塔蕾克丝
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>击杀 |cRXP_ENEMY_暴躁的变异体|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob 暴躁的变异体
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 10302 >>交任务 暴躁的变异体
    .accept 9293 >>接受任务 必需的措施……
    .target 植物学家塔蕾克丝
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>接受任务 跑腿采花
    .target 学徒维莎尔
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>击杀 |cRXP_ENEMY_变异的根须鞭笞者|r，拾取它们的 |cRXP_LOOT_鞭笞者样本|r
    >>拾取地上的 |cRXP_LOOT_被污染的花朵|r
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob 变异的根须鞭笞者
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>刷怪直到距离4级还差470点经验（930/1400）
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 和 |cRXP_FRIENDLY_学徒维莎尔|r 对话
    .turnin 9293 >>交任务 必需的措施……
    .accept 9294 >>接受任务 净化湖水
    .target 植物学家塔蕾克丝
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>交任务 跑腿采花
    .target 学徒维莎尔
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target 欧洛克
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9409 >>交任务 紧急物资！
    .accept 9283 >>接受任务 拯救幸存者！
    .accept 26970 >>接受任务 疗伤 << cata Priest
    .accept 26970 >>接受任务 学习暗言术 << !cata Priest
    .train 2061 >>训练 |T135907:0|t[快速治疗] << cata Priest
    .train 589 >>训练 |T136207:0|t[暗言术：痛] << cata Priest
    .target 扎尔杜
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_施放|r |T135907:0|t[快速治疗] |cRXP_WARN_5次，目标为你身旁的|cRXP_FRIENDLY_受伤的德莱尼|r|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 26970 >>交任务 疗伤
    .target 扎尔杜
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
    .accept 26968 >>接受任务 奥术飞弹 << cata
    .accept 26968 >>接受任务 冰霜新星 << !cata
	.train 5143 >>训练 |T136096:0|t[奥术飞弹] << cata
    .target 瓦拉图
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷伦|r 对话
    >>|cRXP_FRIENDLY_奥雷伦|r |cRXP_WARN_可能会稍微巡逻|r
    .accept 26966 >>接受任务 圣光之力
    .train 20154 >>训练 |T135960:0|t[正义圣印] << cata
	.train 20271 >>学习 |T135959:0|t[审判] << cata
    .target 奥雷伦
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .accept 26958 >>接受任务 你的第一课
	.train 100 >>学习 |T132337:0|t[冲锋] << cata
    .target 库勒
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .accept 26969 >>接受任务 根源打击
    .train 8075 >>训练|T136023:0|t[大地之力图腾] << cata
    .train 73899 >>训练 |T460956:0|t[根源打击] << cata
    .target 费曼瓦尔
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔尼|r 对话
	.accept 26963 >>接受任务 稳固射击
    .train 56641 >>训练 |T132213:0|t[稳固射击] << cata
    .target 基尔尼
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .accept 9305 >>接受任务 备用零件
    .target 技师沙娜安
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .accept 9303 >>接受任务 疫苗
    .target 守备官奥达尔
step
    #completewith Owlkininoculated
    >>|cRXP_WARN_对一名|r |cRXP_WARN_德莱尼幸存者|r |cRXP_FRIENDLY_施放|r |T135923:0|t[纳鲁的祝福] |cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>点击湖中的 |cRXP_PICK_受辐射的能量水晶|r
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_对|r 木巢枭兽|cRXP_WARN_ |cRXP_ENEMY_引导|r |T132775:0|t[接种水晶] 持续 4 秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob 木巢枭兽
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>拾取地上的 |cRXP_LOOT_发射器零件|r
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_对|r 木巢枭兽|cRXP_WARN_ |cRXP_ENEMY_引导|r |T132775:0|t[接种水晶] 持续 4 秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob 木巢枭兽
step
	#completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_植物学家塔蕾克丝|r 对话
    .turnin 9294 >>交任务 净化湖水
    .target 植物学家塔蕾克丝
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_施放|r |T135812:0|t[火球术] |cRXP_WARN_在|cRXP_ENEMY_训练假人|r上，直到触发|r |T135731:0|t[奥术飞弹！] |cRXP_WARN_效果，然后施放|r |T136096:0|t[奥术飞弹]|cRXP_WARN_。重复两次|r
    >>|cRXP_WARN_对|r |T135848:0|t[训练假人] |cRXP_WARN_使用|cRXP_ENEMY_冰霜新星|r。重复两次|r
    .complete 26968,1 << cata -- Practice Arcane Missles (1)
    .complete 26968,2 << !cata -- Practice Frost Nova (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_施放|r |T460956:0|t[根源打击] |cRXP_WARN_对|cRXP_ENEMY_训练假人|r使用3次|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_施放|r |T132213:0|t[稳固射击] |cRXP_WARN_对训练假人|cRXP_ENEMY_|r使用5次|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_施放|r |T132337:0|t[冲锋] |cRXP_WARN_对|r |cRXP_ENEMY_训练假人|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_施放|r |T135960:0|t[正义圣印] |cRXP_WARN_，然后|r |T135959:0|t[审判] |cRXP_WARN_在|r |cRXP_ENEMY_训练假人|r上
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_对|r |T136207:0|t[训练假人] |cRXP_WARN_施放|cRXP_ENEMY_暗言术：痛|r 5次|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧洛克|r 对话
	.vendor >>把垃圾物品卖给商人
    .target 欧洛克
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9283 >>交任务 拯救幸存者！
    .target 扎尔杜
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 26970 >>交任务 学习暗言术
    .target 扎尔杜
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
    .turnin 26968 >>交任务 奥术飞弹 << cata
    .turnin 26968 >>交任务 冰霜新星 << !cata
    .target 瓦拉图
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
    .turnin 26969 >>交任务 根源打击
    .target 费曼瓦尔
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_基尔尼|r 对话
	.turnin 26963 >>交任务 稳固射击
    .target 基尔尼
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
    .turnin 26958 >>交任务 你的第一课
    .target 库勒
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷伦|r 对话
    >>|cRXP_FRIENDLY_奥雷伦|r |cRXP_WARN_可能会稍微巡逻|r
    .turnin 26966 >>交任务 圣光之力
    .target 奥雷伦
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .turnin 9305 >>交任务 备用零件
    .target 技师沙娜安
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .turnin 9303 >>交任务 疫苗
    .accept 9309 >>接受任务 失踪的斥候
    .target 守备官奥达尔
step
    #completewith SurveyorCandress
    >>|cRXP_WARN_对一名|r |cRXP_WARN_德莱尼幸存者|r |cRXP_FRIENDLY_施放|r |T135923:0|t[纳鲁的祝福] |cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 9309 >>交任务 失踪的斥候
    .accept 10303 >>接受任务 血精灵
    .target 图兰
step
    .goto Azuremyst Isle,69.420,64.608
    >>击杀 |cRXP_ENEMY_血精灵斥候|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob 血精灵斥候
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图兰|r 对话
    .turnin 10303 >>交任务 血精灵
    .accept 9311 >>接受任务 血精灵间谍
    .target 图兰
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>击杀 |cRXP_ENEMY_测量员卡蒂瑞丝|r。拾取 |T132319:0|t[|cRXP_LOOT_血精灵计划书|r]
    .use 24414 >>|cRXP_WARN_使用|r |T132319:0|t[|cRXP_LOOT_血精灵计划书|r] |cRXP_WARN_来开始任务|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>接受任务 血精灵计划书
    .mob 测量员卡蒂瑞丝
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_对一名|r |cRXP_WARN_德莱尼幸存者|r |cRXP_FRIENDLY_施放|r |T135923:0|t[纳鲁的祝福] |cRXP_WARN_。他们分散在整个新手区域各处|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan 德莱尼幸存者
step
	#completewith BloodElfSpy
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .turnin 9283 >>交任务 拯救幸存者！
    .target 扎尔杜
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官奥达尔|r 对话
    .turnin 9311 >>交任务 血精灵间谍
    .turnin 9798 >>交任务 血精灵计划书
    .accept 9312 >>接受任务 图像发射器
    .target 守备官奥达尔
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师沙娜安|r 对话
    .turnin 9312 >>交任务 图像发射器
    .accept 9313 >>接受任务 前往碧蓝岗哨
    .target 技师沙娜安
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦拉图|r 对话
	.train 2136 >>学习 |T135807:0|t[火焰冲击]
    .target 瓦拉图
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔杜|r 对话
    >>|cRXP_FRIENDLY_扎尔杜|r |cRXP_WARN_会稍微巡逻|r
    .train 17 >>影袭 |T135940:0|t[真言术：盾]
    .target 扎尔杜
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥雷伦|r 对话
    >>|cRXP_FRIENDLY_奥雷伦|r |cRXP_WARN_可能会稍微巡逻|r
	.train 465 >>训练 |T135893:0|t[虔诚光环]
    .target 奥雷伦
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库勒|r 对话
	.train 34428 >>训练|T132342:0|t[乘胜追击]
    .target 库勒
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_费曼瓦尔|r 对话
	.train 8042 >>|T136026:0|t[大地震击]
    .target 费曼瓦尔
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃文|r 对话
    .accept 9314 >>接受任务 碧蓝岗哨的消息
    .target 埃文
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .accept 9452 >>接受任务 美味的红钳鱼
    .target 迪泰娜
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >>|cRXP_WARN_沿着河向北游|r
    .use 23654 >>|cRXP_WARN_沿途看到|r |T134325:0|t[德莱尼渔网] |cRXP_WARN_时对|r |cRXP_PICK_红钳鱼鱼群|r |cRXP_WARN_使用。到达河流上游后跳过此步骤，稍后会完成|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
    .goto Azuremyst Isle,53.9,34.4
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r，拾取 |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r]
    .use 23678 >>|cRXP_WARN_使用|r |T134072:0|t[|cRXP_LOOT_微微发光的水晶|r] |cRXP_WARN_来开始任务|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>接受任务 奇怪的发现
    .mob 感染的夜行豹幼崽
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    >>|cRXP_WARN_确保死在靠山一侧的池塘附近|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >>前往碧蓝岗哨
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳贝克|r 对话
    >>|cRXP_BUY_购买并装备一把|r |T135145:0|t[学徒短杖]
    .collect 2495,1 --Walking Stick (1)
    .target 纳贝克
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +装备|T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .train 2575 >>学习 |T134708:0|t[采矿]
    .target 杜尔维
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 对话
    .accept 9463 >>接受任务 医疗材料
    .target 学者法蒂玛
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
	.turnin 9612 >>交任务 非常感谢！
    .turnin 9455 >>交任务 奇怪的发现
    .accept 9456 >>接受任务 清理夜行豹……
    .target 大主教梅内莱厄斯
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9455 >>交任务 奇怪的发现
    .accept 9456 >>接受任务 清理夜行豹……
    .target 大主教梅内莱厄斯
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .train 331 >>训练 |T136052:0|t[治疗波]
    .target 图伦
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_技师戴维恩|r 对话
    .turnin 9313 >>交任务 前往碧蓝岗哨
    .target 技师戴维恩
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .turnin 9314 >>交任务 碧蓝岗哨的消息
    .accept 9603 >>接受任务 床铺，绷带，以及更多
    .target 看护员谢尔兰
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_看护员谢尔兰|r 对话
    .home >>将你的炉石绑定到碧蓝岗哨
    .target 看护员谢尔兰
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔达恩|r 对话
    .turnin 9603 >>交任务 床铺，绷带，以及更多
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .train 635 >>训练 |T135920:0|t[圣光术]
    .target 图拉丝
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .accept 9586 >>接受任务 帮助塔瓦拉
    .train 588 >>学习 |T135926:0|t[心灵之火]
    .target 古安
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .accept 9586 >>接受任务 帮助塔瓦拉
    .target 古安
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 鲁安达
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 2973 >>训练 |T132223:0|t[猛禽一击]
    .target 艾克提恩
step
	#completewith level8
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
    #completewith LeavesTree
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_枝条|r
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_嫩腰肉|r
    .complete 9463,1 -- Root Trapper (6)
    .mob 根须诱捕者
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob 月痕雄鹿
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_对|r |cRXP_WARN_塔瓦拉|r|cRXP_FRIENDLY_施放|r |T135907:0|t[快速治疗]
    .complete 9586,1 --Heal Tavara
    .target 塔瓦拉
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .accept 9506 >>接受任务 第三类接触
    .target 海军上将奥德修斯
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .accept 9512 >>接受任务 曲奇的大餐
    .target “曲奇”米维克索斯 <厨师>
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠卡里普索|r 对话
    >>|cRXP_WARN_这能让你制作|r |T135248:0|t[劣质磨刀石] |cRXP_WARN_使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这能让你制作|r |T135255:0|t[劣质平衡石] |cRXP_WARN_使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果不愿完成，可跳过此步骤|r
    .train 2018 >>学习 |T136241:0|t[锻造]
    .target 铁匠卡里普索
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>拾取小笼子上的 |cRXP_LOOT_航海地图|r
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>拾取小箱子上的 |cRXP_LOOT_航海罗盘|r
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>击杀 |cRXP_ENEMY_迅捷的螃蟹|r。拾取他们的 |cRXP_LOOT_螃蟹肉|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob 迅捷的螃蟹
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"曲奇"米维克索斯|r 对话
    .turnin 9512 >>交任务 曲奇的大餐
    .target “曲奇”米维克索斯 <厨师>
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 和 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9506 >>交任务 第三类接触
    .target 海军上将奥德修斯
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >>接受任务 天才的方案！
    .accept 9513 >>接受任务 夺回废墟
    .target 女祭司基琳·伊尔蒂娜
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .accept 9523 >>接受任务 贵重物品，小心轻放
    .target 考古学家阿达曼特·铁心
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>拾取地上的 a |cRXP_LOOT_刳心巨树|r
    >>拾取地上的 |cRXP_LOOT_落叶堆|r
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>击杀 |cRXP_ENEMY_根须诱捕者|r。拾取他们的 |cRXP_LOOT_枝条|r
    >>击杀 |cRXP_ENEMY_月痕雄鹿|r。拾取他们的 |cRXP_LOOT_嫩腰肉|r
    .complete 9463,1 -- Root Trapper (6)
    .mob 根须诱捕者
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob 月痕雄鹿
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9530 >>交任务 天才的方案！
    .accept 9531 >>接受任务 间谍之树
    .target 海军上将奥德修斯
step
    #label level8
	.xp 8-950 >>刷怪练级，直到距离8级还差950点经验（3550/4500）
    >>|cRXP_WARN_尽量在碧蓝岗哨附近完成|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    >>|cRXP_WARN_如果你已经离碧蓝岗哨很近了，就跳过这一步|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
	.accept 9454 >>接受任务 狩猎月痕鹿
    .turnin 9454 >>交任务 狩猎月痕鹿
    .accept 10324 >>接受任务 狩猎月痕鹿
    .target 艾克提恩
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .train 5116 >>训练 |T135860:0|t[震荡射击]
    .train 82243 >>学习 |T132269:0|t[招架]
    .target 艾克提恩
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者法蒂玛|r 和 |cRXP_FRIENDLY_丹达尔|r 对话
    .turnin 9463 >>交任务 医疗材料
    .target 学者法蒂玛
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>接受任务 备选方案的备选方案
    .target 丹达尔
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .train 331 >>训练 |T136052:0|t[治疗波]
    .train 324 >>训练 |T136051:0|t[闪电之盾]
    .target 图伦
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .train 324 >>训练 |T136051:0|t[闪电之盾]
    .target 图伦
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .train 635 >>训练 |T135920:0|t[圣光术]
    .target 图拉丝
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .turnin 9586 >>交任务 帮助塔瓦拉
    .trainer >>训练你的职业技能
    .target 古安
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target 塞米德
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .train 772 >>学习 |T132155:0|t[撕裂]
    .target 鲁安达
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜尔维|r 对话
    .accept 10428 >>接受任务 失踪的渔夫
    .target 杜尔维
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_译码者奥鲁恩|r 对话
    .accept 9538 >>接受任务 学外语……
    .target 译码者奥鲁恩
step
	.use 23818 >>|cRXP_WARN_使用|r |T133741:0|t[止松熊怪语言入门]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿基达图腾|r 对话
    .turnin 9538 >>交任务 学外语……
    .accept 9539 >>接受任务 库欧图腾
    .target 阿基达图腾
step
	#completewith AncientRelics
    >>|cRXP_WARN_留意一下|r |cRXP_FRIENDLY_年幼的德莱尼人|r
    >>|cRXP_WARN_趁他们战斗时，对他们施放|r |T135923:0|t[纳鲁的赐福] |cRXP_WARN_，然后接任务|r
	.accept 9612 >>接受任务 非常感谢！
	.unitscan 年幼的德莱尼人
step
	#completewith TotemofTikti
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r，拾取它们的 |cRXP_LOOT_兽皮|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob 感染的夜行豹幼崽
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob 月痕巨鹿
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库欧图腾|r 对话
    .turnin 9539 >>交任务 库欧图腾
    .accept 9540 >>接受任务 提克提图腾
    .target 库欧图腾
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >>|cRXP_WARN_沿着山边小心下落|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>拾取地上的 |cRXP_LOOT_碧蓝金鱼草|r
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_提克提图腾|r 对话
    .turnin 9540 >>交任务 提克提图腾
    .accept 9541 >>接受任务 尤尔图腾
    .timer 30,尤尔图腾剧情演出
    .target 提克提图腾
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_止松先祖提克提|r|cRXP_WARN_。他会为你施加|r |T132107:0|t[毒蛇的拥抱] |cRXP_WARN_，使你的游泳速度提高150%，并获得水下呼吸效果|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_使用|r |T134325:0|t[德莱尼渔网]|cRXP_WARN_对|r|cRXP_PICK_红钳鱼鱼群|r
    >>|cRXP_WARN_如果有 |cRXP_ENEMY_鱼人|r 从鱼群中刷出，立刻游走！施放任何敌对法术都会导致你失去|r |T132107:0|t[毒蛇的拥抱] |cRXP_WARN_增益效果|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迪泰娜|r 对话
    .turnin 9452 >>交任务 美味的红钳鱼
    .accept 9453 >>接受任务 找到艾克提恩！
    .target 迪泰娜
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与水底下的 |cRXP_FRIENDLY_尤尔图腾|r 对话
    .turnin 9541 >>交任务 尤尔图腾
    .accept 9542 >>接受任务 瓦克图腾
    .timer 71,瓦克图腾剧情演出
    .target 尤尔图腾
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_跟随|r |cRXP_FRIENDLY_止松先祖尤尔|r|cRXP_WARN_。他会为你施加|r |T132142:0|t[森林之影] |cRXP_WARN_，使你获得移动速度提高和隐身效果|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >>|cRXP_WARN_前往秘蓝岛西部|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦克图腾|r 对话
    .turnin 9542 >>交任务 瓦克图腾
    .accept 9544 >>接受任务 阿基达的预言
    .target 瓦克图腾
step
    .aura -30448
    +|cRXP_WARN_点掉|r |T132142:0|t[森林之影] |cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>击杀 |cRXP_ENEMY_刺臂熊怪|r、|cRXP_ENEMY_刺臂唤风者|r 和 |cRXP_ENEMY_刺臂巨熊怪|r，拾取它们的 |cRXP_LOOT_刺臂钥匙|r
    >>打开 |cRXP_PICK_刺臂牢笼|r 来解救 |cRXP_FRIENDLY_止松俘虏|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>击杀 |cRXP_ENEMY_感染的夜行豹幼崽|r
	>>击杀 |cRXP_ENEMY_月痕巨鹿|r，拾取它们的 |cRXP_LOOT_兽皮|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob 感染的夜行豹幼崽
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob 月痕巨鹿
step
    #completewith next
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>击杀 |cRXP_ENEMY_怒鳞纳迦|r、|cRXP_ENEMY_怒鳞侍从|r 和 |cRXP_ENEMY_怒鳞海妖|r，拾取 |T134462:0|t[|cRXP_LOOT_写满符文的石板|r]
    .use 23759 >>|cRXP_WARN_使用|r |T134462:0|t[|cRXP_LOOT_写满符文的石板|r] |cRXP_WARN_来开始任务|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>>写满符文的石板
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob 怒鳞侍从
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob 怒鳞纳迦
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob 怒鳞海妖
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>拾取地上的 the |cRXP_LOOT_远古的圣物|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >>游往叛徒湾
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >>|cRXP_WARN_在娜迦旗帜处|r使用|cRXP_WARN_ |T132288:0|t[树伪装工具包]|r
    .timer 73,间谍之树剧情表演
    .use 23792
step
    >>|cRXP_WARN_等剧情结束|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_点掉|r |T132288:0|t[大树伪装] |cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 10428 >>交任务 失踪的渔夫
    .accept 9527 >>接受任务 遗体
    .target 库雷
step
    .goto Azuremyst Isle,13.209,89.742
	>>击杀 |cRXP_ENEMY_枭兽|r，拾取它们的 |cRXP_LOOT_库雷的家人的遗体|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob 变异的枭兽
    .mob 疯乱的枭兽
    .mob 狂乱的枭兽
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_库雷|r 对话
    .turnin 9527 >>交任务 遗体
    .target 库雷
step
	#completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r 对话
    .turnin 9523 >>交任务 贵重物品，小心轻放
    .target 考古学家阿达曼特·铁心
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9531 >>交任务 间谍之树
    .accept 9537 >>接受任务 绳侏儒以法
    .target 海军上将奥德修斯
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9513 >>交任务 夺回废墟
    .target 女祭司基琳·伊尔蒂娜
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r 对话
    .turnin 9514 >>交任务 写满符文的石板
    .target 女祭司基琳·伊尔蒂娜
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>与在海滩巡逻的 |cRXP_FRIENDLY_工程师欧格林德|r 对话
    >>在简短的剧情结束后击杀 |cRXP_ENEMY_工程师"火花"欧格林德|r，拾取他掉落的 |cRXP_LOOT_叛徒的通讯|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,"叛徒的通讯"剧情
    .unitscan 工程师欧格林德
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_海军上将奥德修斯|r 对话
    .turnin 9537 >>交任务 绳侏儒以法
    .accept 9602 >>接受任务 邪恶的书信
    .target 海军上将奥德修斯
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >>刷怪达到2430+/6500经验
step
    #completewith next
    .hs >>炉石返回碧蓝岗哨，秘血岛
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_止松部族的阿鲁古|r 对话
    .turnin 9544 >>交任务 阿基达的预言
    .target 止松部族的阿鲁古
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .turnin 9453 >>交任务 找到艾克提恩！
    .turnin 10324 >>交任务 狩猎月痕鹿
    .target 艾克提恩
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丹达尔|r 对话
    .turnin 9473 >>交任务 备选方案的备选方案
    .target 丹达尔
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9456 >>交任务 清理夜行豹……
    .turnin 9602 >>交任务 邪恶的书信
    .target 大主教梅内莱厄斯
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大主教梅内莱厄斯|r 对话
    .turnin 9612 >>交任务 非常感谢！
    .target 大主教梅内莱厄斯
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图伦|r 对话
    .trainer >>训练你的职业技能
    .target 图伦
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_图拉丝|r 对话
    .trainer >>训练你的职业技能
    .target 图拉丝
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_古安|r 对话
    .trainer >>训练你的职业技能
    .target 古安
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞米德|r 对话
    .trainer >>训练你的职业技能
    .target 塞米德
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁安达|r 对话
    .trainer >>训练你的职业技能
    .target 鲁安达
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾克提恩|r 对话
    .trainer >>训练你的职业技能
    .target 艾克提恩
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔达恩|r 对话
    .accept 9604 >>接受任务 乘坐角鹰兽
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔达恩|r 对话
    .fly The Exodar >>飞往埃索达
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_努古尼|r 对话
    .turnin 9604 >>交任务 乘坐角鹰兽
    .accept 9605 >>接受任务 斯泰法努斯
    .target 努古尼
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温恩|r对话
    >>|cRXP_BUY_购买1把|r |T135350:0|t[优质重剑] |cRXP_BUY_从他那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温恩|r对话
    >>|cRXP_BUY_从他那里购买一把|r |T132402:0|t[短柄斧] |cRXP_BUY_|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温恩|r对话
    >>|cRXP_BUY_购买1把|r |T135499:0|t[多层弯弓] |cRXP_BUY_从她那里|r
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_将|r |T132402:0|t[短柄斧] |cRXP_WARN_装备在你的主手|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_装备上|r |T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r 对话
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>交任务 斯泰法努斯
    .target 斯泰法努斯
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯泰法努斯|r 对话
    .fly Lor'danel >>飞往洛达内尔
    .target 斯泰法努斯
]])
