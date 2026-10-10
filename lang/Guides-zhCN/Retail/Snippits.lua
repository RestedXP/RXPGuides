if GetLocale() ~= "zhCN" then return end
-- #############################################
-- #                  MIDNIGHT                 #
-- #############################################

--GC: Stormwind Quests
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) 暴风城 任务
#internal

step
    .goto 84,63.79,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷纳多·加林纳|r对话
    .accept 332 >>接受任务 酒店的广告
    .target Renato Gallina
step
    .goto 84,62.32,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈兰·巴格雷|r 对话
    .accept 333 >>接受任务 哈兰需要供货
    .target Harlan Bagley
step
    .goto 84,58.10,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷玛·斯涅德|r 对话
    .turnin 333 >>交任务 哈兰需要供货
    .target Rema Schneider
    .accept 334 >>接受任务 萨尔曼的针线包
step
    .goto 84,60.26,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_苏泽塔·加林纳|r 对话
    .turnin 332 >>交任务 酒店的广告
    .target Suzetta Gallina
step
    .goto 84,52.58,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨尔曼·斯涅德|r 对话
    .turnin 334 >>交任务 萨尔曼的针线包
    .target Thurman Schneider

]])
--Housing Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) Housing Tutorial 联盟
#internal

step
    >>按下"活跃物品"框中的宏以开始房屋教程
    .accept 91863 >>接受任务 我的第一个家
    .macro House Teleport, 975747 >>房屋传送
step
    .goto 2352,53.13,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎贝尔·晨瓣|r 对话。
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135761
    .skipgossipid 135770
    .target Lyssabel Dawnpetal
step
    >>购买1座可用的房屋
    .complete 91863,4 --1/1 Acquire a house

--teleport unlock


step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_在你旁边的|r |cRXP_WARN_莱莎贝尔·晨瓣|r 对话。
    .turnin 91863 >>交任务 我的第一个家
    .accept 94455 >>接受任务 终于到家了
    .target Lyssabel Dawnpetal
step
    >>进入你的房屋。
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>交任务 终于到家了
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Altariath|r 对话。
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"滔天巨浪"壬恩|r 对话。
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"滔天巨浪"壬恩|r 对话。
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>使用 |T742183:0|t[塞塔里斯祭司的枕头]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_托丘·云革|r 对话。
    .turnin 94210 >>交任务 装点新家
    .target Tocho Cloudhide
    .accept 94379 >>接受任务 旧屋换新颜
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萝萨|r 对话。
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Housing Horde
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) Housing Tutorial 部落
#internal

<< Horde

step
    >>按下"活跃物品"框中的宏以开始房屋教程
    .accept 91863 >>接受任务 我的第一个家
    .macro House Teleport, 975747 >>房屋传送
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_托丘·云革|r 对话。
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135727
    .skipgossipid 135740
step
    >>购买1座可用的房屋
    .complete 91863,4 --1/1 Acquire a house
step
    .goto 2351,56.84,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_在你旁边的|r |cRXP_WARN_托丘·云革|r 对话。
    .turnin 91863 >>交任务 我的第一个家
    .accept 94455 >>接受任务 终于到家了
    .target Tocho Cloudhide

--teleport unlock


step
    >>进入你的房屋。
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>交任务 终于到家了
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00跟随箭头|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Altariath|r 对话。
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"滔天巨浪"壬恩|r 对话。
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_"滔天巨浪"壬恩|r 对话。
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>使用 |T742183:0|t[塞塔里斯祭司的枕头]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_托丘·云革|r 对话。
    .turnin 94210 >>交任务 装点新家
    .target Tocho Cloudhide
    .accept 94379 >>接受任务 旧屋换新颜
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萝萨|r 对话。
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Darkmoon Faire
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) 暗月马戏团
#internal

step << Alliance
    #completewith next
    #label ProfessionsDmf1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>学习 |T4620669:0|t[炼金术]
    .dmf
step << Alliance
    #completewith ProfessionsDmf1
    .goto 37,41.95,67.16
    >>使用"活动物品框架"中的宏来遗忘|T4620679:0|t[采矿]
    .macro Unlearn Mining,4620679 >>忘却这个技能采矿
    .train 2575,3
    .subzoneskip 37,1
    .isOnQuest 7905
step << Alliance
    #requires ProfessionsDmf1
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>学习 |T4620669:0|t[炼金术]
    .target Lien Farner
    .skipgossipid 38859
    .skipgossipid 38886
    .skipgossipid 39726
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    #completewith next
    #label ProfessionsDmf2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>学习 |T4620676:0|t[铭文]
    .dmf
step << Alliance
    #completewith ProfessionsDmf2
    .goto 37,41.95,67.16
    >>使用"活动物品框架"中的宏来遗忘 |T4620675:0|t[草药学]。
    .macro Unlearn Herbalism,4620675 >>忘却这个技能草药学
    .subzoneskip 37,1
    .isOnQuest 7905
    .train 2366,3
step << Alliance
    #requires ProfessionsDmf2
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>学习 |T4620676:0|t[铭文]
    .skipgossipid 38859
    .skipgossipid 38890
    .skipgossipid 39321
    .target Lien Farner
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_萨瑞恩·博丁|r 对话。
    .collect 2604,1 --Red Dye (1)
    .buy 2604,1
    .collect 6260,1 --Blue Dye (1)
    .buy 6260,1
    .collect 2320,1 --Coarse Thread (1)
    .buy 2320,1
    .collect 30817,5 --Simple Flour (5)
    .buy 30817,5
    .collect 39354,5 --Light Parchment (1)
    .buy 39354,5
    .target 萨瑞恩·博丁
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.78,69.55
    .zone 407 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
-- step << Human
--     .goto 407,51.62,24.66
--     .aura 134931 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Darkmoon Strider|r for a mount.
--     add chauffeur command
--    .target Darkmoon Strider
--    .subzoneskip 37,1
--    .isOnQuest 7905
--     .dmf
step
    .goto 407,52.78,28.82,20,0
    .goto 407,52.99,38.99,20,0
    .goto 407,53.37,45.81,20,0
    .goto 407,55.66,52.34,20,0
    .goto 407,50.44,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_狄珂|r 对话。
    .collect 81055,1 --
    .buy 92794
    .target 狄珂
    .isOnQuest 7905
    .zoneskip 407,1
    .dmf
-- step
--     .goto 407,49.44,57.4,7
--     .aura >>Stand on the platform and wait 15 seconds to get the full duration of |T237554:0|t[WHEE!](10% XP for 60 min).
--     .timer 13,Time until full duration
--     .openitem 92794
--     .zoneskip 407,1
--     .dmf
-- step
-- --accept makro
--     >>Press the macro "In the Active Items Frame"
--     .accept 29464 >>Accept Tools of Divination
--     .macro >>/use Soothsayer's Runes
--     .itemcount 71716,1
--     .zoneskip 407,1
--     .isQuestAvailable 29464
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29451 >>Accept The Master Strategist
--     .macro >>/use A Treatise on Strategy
--     .isQuestAvailable 29451
--     .itemcount 71715,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29456 >>Accept A Captured Banner
--     .macro >>/use Banner of the Fallen
--     .itemcount 71951,1
--     .zoneskip 407,1
--     .isQuestAvailable 29456
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29457 >>Accept The Enemy's Insignia
--     .macro >>/use Captured Insignia
--     .isQuestAvailable 29457
--     .itemcount 71952,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29458 >>Accept The Captured Journal
--     .macro >>/use Fallen Adventurer's Journal
--     .isQuestAvailable 29458
--     .itemcount 71953,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29443 >>Accept A Curious Crystal
--     .macro >>/use Imbued Crystal
--     .isQuestAvailable 29443
--     .itemcount 71635,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29444 >>Accept An Exotic Egg
--     .macro >>/use Monstrous Egg
--     .isQuestAvailable 29444
--     .itemcount 71636,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29445 >>Accept An Intriguing Grimoire
--     .macro >>/use Mysterious Grimoire
--     .isQuestAvailable 29445
--     .itemcount 71637,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29446 >>Accept A Wondrous Weapon
--     .macro >>/use Ornate Weapon
--     .isQuestAvailable 29446
--     .itemcount 71638,1
--     .zoneskip 407,1
--     .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29451 >>交任务 战略大师
    .isOnQuest 29451
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29456 >>交任务 缴获的旗帜
    .isOnQuest 29456
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29457 >>交任务 敌人的徽记
    .isOnQuest 29457
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29458 >>交任务 缴获的日记
    .isOnQuest 29458
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29443 >>交任务 奇怪的水晶
    .isOnQuest 29443
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29444 >>交任务 古怪的蛋
    .isOnQuest 29444
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29445 >>交任务 奇异的魔典
    .isOnQuest 29445
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕雷教授|r 对话。
    .turnin 29446 >>交任务 精美的武器
    .isOnQuest 29446
    .zoneskip 407,1
    .dmf
-- step
--     #completewith next
--     #label DarkmoonTopHat1
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r |cRXP_WARN_[2]|r
--     .turnin 7905 >>Turn in The Darkmoon Faire
--     .target Gelvas Grimegate
--     .zoneskip 407,1
--     .dmf
-- step
--     #completewith DarkmoonTopHat1
--     .isQuestTurnedIn 29446,29445,29444,29443,29458,29457,29456,29451
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r |cRXP_WARN_[1]|r
--     .collect 171364,1 --Darkmoon Top Hat (1)
--     .buy 171364
-- --currencency command
step
    -- #requires DarkmoonTopHat1
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_吉瓦斯·格里加特|r 对话
    .turnin 7905 >>交任务 暗月马戏团
    .target 格尔瓦斯·魔门
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_斯塔姆·雷角|r对话。
    .accept 29509 >>接受任务 让青蛙肉更松脆
    .target 斯塔姆·雷角
    .train 2550,3
    .itemcount 30817,5
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>使用 |T133642:0|t[一袋肥美的青蛙]。
    .collect 72056,5,29509,1,-1 --Plump Frogs (5)
    .collect 30817,5,29509,1,-1 --Simple Flour (5)
    .collect 72057,5,29509,1 --Breaded Frog (5)
    .train 2550,3
    .use 72056 --Plump Frog
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>使用 |T237579:0|t[裹着面粉的青蛙]。
    .collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
    .use 72057 --Breaded Frog
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_斯塔姆·雷角|r对话。
    .turnin 29509 >>交任务 让青蛙肉更松脆
    .target 斯塔姆·雷角
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞兰妮亚|r对话。
    .accept 29506 >>接受任务 调制饮料
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
    .buy 29506,5
    .target 塞兰妮亚
    .zoneskip 407,1
    .dmf
    .train 2259,3
step
    .goto 407,50.54,69.56
    >>使用 |T132793:0|t[调酒器]。
    .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
    .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
    .complete 29506,1 --5/5 Moonberry Fizz
    .use 72043 --Cocktail Shaker
    .itemcount 1645,5
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,50.53,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞兰妮亚|r对话。
    .turnin 29506 >>交任务 调制饮料
    .target 塞兰妮亚
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞格|r对话 [|cRXP_WARN_1|r]。
    .turnin 29445 >>交任务 奇异的魔典
    .target 塞格
    .zoneskip 407,1
    .isOnQuest 29445
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞格|r对话 [|cRXP_WARN_2|r]。
    .accept 29515 >>接受任务 书写未来
    .target 塞格
    .zoneskip 407,1
    .dmf
    .train 45357,3
step
    .goto 407,53.23,75.82
    .aura 23768 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞格|r对话 [|cRXP_WARN_3|r]。
    .skipgossipid 31569
    .skipgossipid 31565
    .skipgossipid 30027
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>使用 |T413571:0|t[一包奇异的草药]。
    .collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>使用 |T237061:0|t[预言墨水]。
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞格|r对话。
    .turnin 29515 >>交任务 书写未来
    .target 塞格
    .zoneskip 407,1
    .dmf
step
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_亚布·尼比盖尔|r 对话。
    .turnin 29444 >>交任务 古怪的蛋
    .target 亚布·尼比盖尔
    .zoneskip 407,1
    .dmf
    .isOnQuest 29444
step << Alliance
    .isOnQuest 65436
    >>使用|T134309:0|t[失落的龙鳞]传送到暴风城。
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .dmf
step << Horde
    .isOnQuest 65435
    >>使用 |T134309:0|t[失落的龙鳞] 传送至奥格瑞玛。
    .complete 65435,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
-- step << Alliance KulTiran
--     .zoneskip 1161
--     .hs >>Use |T134414:0|t[Hearthstone] to Boralus.
-- step << Alliance !KulTiran
--     .isOnQuest 40519
--     .subzone 10523 >>Use |T135975:0|t[Stormwind Portal Stone]
--     .use 132120
--     .dmf
-- step << Alliance !KulTiran
--     .isNotOnQuest 40519
--     .zone 2352 >>Teleport to a Neighbourhood with the House finder, not |T7252953:0|t[Teleport to Plot] then take the |cRXP_PICK_Stormwind Portal|r.
--     .link https://www.youtube.com/watch?v=uVkUB7z0njo >>CLICK HERE FOR VIDEO
--     .macro House Teleport, 975747 >>/run C_Housing.StartTutorial()
--     .dmf
-- step << Alliance !KulTiran
--     .isNotOnQuest 40519
--     .goto 2352,57.44,26.63
--     .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Stormwind|r
--     .dmf
-- step << Alliance !Kultiran
--     .isNotOnQuest 40519
--     .goto 84,46.05,92.1,8,0
--     .goto 84,44.95,92.12,8,0
--     .goto 84,42.96,93.78,10,0
--     .goto 84,40.89,92.74
--     .zone 2239 >>Go to Stormwind's Mage Tower and take the portal to Boralus
--     .dmf
-- step
--     .goto 407,50.56,90.80
--     .zone 37 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r  << Alliance
--     .zoneskip 407,1
--     .dmf
]])
--GC Alliance: Chromie Time Tower
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) GC 克罗米时间塔楼
#internal


step << Alliance
    #completewith next
    #label The Legion Returns
    .goto 84,49.19,87.25,8,0
    .goto 84,49,86.94,8,0
    .goto 84,48.66,87.49,8,0
    .goto 84,49.11,87.64,8,0
    .goto 84,49.42,86.83,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_英雄的召唤公告牌|r
    .accept 40519 >>接受任务 军团再临：军团回归
    .choose 1851120
step << Alliance
    #completewith The Legion Returns
    .goto 84,56.257,17.311,812 >>离开法师塔
step << Alliance
    #requires The Legion Returns
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_英雄的召唤公告牌|r
    .accept 40519 >>接受任务 军团再临：军团回归
    .choose 1851120
step << Alliance
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_英雄的召唤公告牌|r
    .accept 62567 >>接受任务 招募冒险者：克罗米的召唤
    .choose 1668214
step << Alliance
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克罗米|r 对话。
    .turnin 62567 >>交任务 招募冒险者：克罗米的召唤
    .target 克罗米
step << Alliance
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克罗米|r 对话。
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>进入克罗米时间
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target 克罗米
step << Alliance
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_拉希奥|r 对话。
    .accept 65436 >>接受任务 巨龙群岛在等待
    .target 拉希奥
-- step
--     .goto 84,62.10,32.19
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
--     .accept 7905 >>Accept The Darkmoon Faire
--     .target Darkmoon Faire Mystic Mage
--     .dmf
-- step
--     .goto 84,62.1,32.2
--     .zone 37 >>Talk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r and accept the prompt.
--     .skipgossipid 40457
--     .target Darkmoon Faire Mystic Mage
--     .zoneskip 84,1
--     .dmf
-- step
--     #include RestedXP Speed Leveling\a) DMF
step  << Alliance
    .subzoneskip 6292
    .isOnQuest 65436
    >>使用 |T134309:0|t[失落的龙鳞] 传送至暴风城。
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
]])
--GC Alliance: Chromie Time Normal
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP 快速升级
#name a) GC 克罗米时间 普通
#internal

step
    #label ChromieTime
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_克罗米|r 对话。
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>进入克罗米时间
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target 克罗米
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r |cRXP_WARN_[2]|r.
--     .accept 40519 >>Accept Legion: The Legion Returns
--     .chromietime 10
--     .skipgossipid 51901
--     .skipgossipid 51902
--     .target Chromie
step
    #label CallBoardStart
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_英雄的召唤公告牌|r
    .accept 40519 >>接受任务 军团再临：军团回归
    .choose 1851120
step
    #label CallBoardStart3
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_拉希奥|r 对话。
    .accept 65436 >>接受任务 巨龙群岛在等待
    .target 拉希奥
-- step
--      #label CallBoardStart2
--     .goto 84,62.10,32.19
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
--     .accept 7905 >>Accept The Darkmoon Faire
--     .target Darkmoon Faire Mystic Mage
--     .dmf
-- step
--     .goto 84,62.1,32.2
--     .zone 37 >>Talk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r and accept the prompt.
--     .skipgossipid 40457
--     .target Darkmoon Faire Mystic Mage
--     .zoneskip 84,1
--     .dmf
-- step
--     #include RestedXP Speed Leveling\a) DMF
step
    #label CallBoardEnd
    .subzoneskip 6292
    .isOnQuest 65436
    >>使用 |T134309:0|t[失落的龙鳞] 传送至暴风城。
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf

]])

-- #########################################
-- #                  TWW                  #
-- #########################################

--DawnBreakerTeleport
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP 地心之战 最后的较量
#name a) 破晨号传送
#internal

step
    .zoneskip 2215
    .zone 2359 >>打开地下城查找器，前往追随者地下城，排队进入 |cRXP_WARN_破晨号|r。
step
    .zoneskip 2215
    .gossipoption 124142 >>与在破晨号内的 |cRXP_FRIENDLY_斯蒂泰克将军|r对话。|cRXP_WARN_她应该从入口处可见。使用活跃目标框架标记她。|r
    .target General Steelstrik
]])
--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 地心之战 博学者
#name a) 道具 解锁 Free
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈希姆|r 对话
    .turnin 90938 >>交任务 跃行虚空
    .target Hashim
    .isOnQuest 90938
step
    账号,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>装备 |T7110834:0|t[雷什裹布]
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈希姆|r 对话
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>装备 |T7110834:0|t[雷什裹布]
    .use 235499
    .subzoneskip 15807,1
step
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .accept 89380 >>接受任务 另一个世界
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89380 >>交任务 另一个世界
    .accept 89343 >>接受任务 无拘虚空
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_相位导管|r
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>使用 |T4913234:0|t[|cRXP_WARN_额外动作按钮|r]
    *|cRXP_WARN_如果使用额外动作按钮后无法交任务，|cRXP_WARN_请小退重新登录一下|r|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89343 >>交任务 无拘虚空
    .accept 89344 >>接受任务 那些看不见你的
    .target Shad'anis
step
    #completewith next
    #label WhatDoesntSeeYouA
    #hidewindow
    .complete 89344,1 --4/4 Untethered Observers slain
    .complete 89344,2 --1/1 Phase Energy collected
step
    #completewith WhatDoesntSeeYouA
    .goto 2371,50.41,36.40
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_相位导管|r
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>杀死 |cRXP_ENEMY_无拘观察者|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Untethered Observer
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Phase 能量|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>杀死 |cRXP_ENEMY_无拘观察者|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Untethered Observer
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89344 >>交任务 那些看不见你的
    .accept 89345 >>接受任务 无拘恐魔
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>移除 |T135752:0|t[相位潜行] buff（右键点击）
    .macro Remove Aura,135752 >>点掉光环
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89344 >>交任务 那些看不见你的
    .accept 89345 >>接受任务 无拘恐魔
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>击杀|cRXP_ENEMY_虚空死神|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Netherdeath
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_相位导管|r。
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>击杀|cRXP_ENEMY_虚空死神|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Netherdeath
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89345 >>交任务 无拘恐魔
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>移除 |T135752:0|t[相位潜行] buff（右键点击）
    .macro Remove Aura,135752 >>点掉光环
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>跟随箭头
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莎德安妮丝|r 对话
    .turnin 89345 >>交任务 无拘恐魔
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈希姆|r 对话
    .accept 89561 >>接受任务 浓妆艳裹
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈希姆|r 对话
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_哈希姆|r 对话，并选择升级。
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_哈希姆|r 对话
    .turnin 89561 >>交任务 浓妆艳裹
    .target Hashim


]])

-- ##################################################
-- #                  LEGION REMIX                  #
-- ##################################################

--Skyriding Tutorial Pandaria & Legion
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#name a) 驭空术 熊猫
#internal

step
    #completewith Skyriding Panda
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莫拉塔丽|r对话
    .accept 90754 >>接受任务 驭空术
    .timer 5,RP
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德斯塔兹领主|r 对话，并选择一个坐骑。
    *|cRXP_WARN_你仍然可以在其余时间获得其他坐骑|r。
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target 安德斯塔兹领主
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>右键学习你的坐骑。
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target 安德斯塔兹领主
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .turnin 90754 >>交任务 驭空术
    .accept 80013 >>接受任务 驭滑翔术
    .target 安德斯塔兹领主
step
    .goto 371,65.27,37.27
    >>上坐骑
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>降落在山丘上
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞罗尔穆|r 对话
    .turnin 80013 >>交任务 驭滑翔术
    .timer 3,RP
    .target 塞洛姆
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .accept 80015 >>接受任务 驭龙俯冲术
    .target 安德斯塔兹领主
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>跟随环形物，使用 |T4640490:0|t[向前突进] 来保持你的速度。
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>跟随箭头
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞罗尔穆|r 对话
    .turnin 80015 >>交任务 驭龙俯冲术
    .timer 3,RP
    .target 塞洛姆
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .accept 80016 >>接受任务 极品飞龙
    .target 安德斯塔兹领主
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>跟随箭头。
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞罗尔穆|r 对话
    .turnin 80016 >>交任务 极品飞龙
    .timer 3,RP
    .target 塞洛姆
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .accept 80017 >>接受任务 极品腾龙
    .target 安德斯塔兹领主
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>向下滑翔
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>跟随环形物。到达环形物后使用 |T4640498:0|t[冲天升腾]。
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>跟随环形物。使用 |T4640490:0|t[向前突进] 或 |T4640498:0|t[冲天升腾] 来保持你的速度。
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>跟随箭头
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_塞罗尔穆|r 对话
    .turnin 80017 >>交任务 需要更高的高度
    .timer 3,RP
    .target 塞洛姆
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .accept 80018 >>接受任务 时尚飞行
    .target 安德斯塔兹领主
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_幻形讲坛|r |cRXP_WARN_并立即离开|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    #label Skyriding Panda
    .goto 371,65.07,36.97,10,0
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_安德斯塔兹领主|r 对话
    .turnin 80018 >>交任务 时尚飞行
    .accept 90755 >>接受任务 光阴似箭
    .target 安德斯塔兹领主
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉塔丽|r对话
    .turnin 90755 >>交任务 光阴似箭
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_通往达拉然的传送门|r
step
    #requires TimeFliesA
    #label Skyriding
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莫拉塔丽|r对话
    .turnin 90755 >>交任务 光阴似箭
    .target Moratari
]])

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------

--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：鲜血
#displayname 神器武器：鲜血
#next a) Order Hall 死亡骑士 第一部分
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>使用|T135766:0|t[黑锋之门]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>使用传送器
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 44401 >>接受任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择鲜血神器|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390097
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 44401 >>交任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 43962 >>接受任务 命运之刃
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择鲜血神器|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390097
    .target Duke Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 43962 >>交任务 命运之刃
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 40715 >>接受任务 必要的选择
    .target Rensar Greathoof
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择鲜血神器|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390097
    .target Rensar Greathoof
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 40715 >>交任务 必要的选择
    .target Rensar Greathoof
step
    #completewith Baron Sliver
    +|cRXP_WARN_确保你已装备了可用的武器。如果没有，先装备一把，直到你获得你的神器，或者切换到已经有神器的专精|r
step
    .isQuestAvailable 43962
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话。
    .accept 40740 >>接受任务 死者与诅咒
    .target 大领主达里安·莫格莱尼
step
    #optional
    .goto 647,57.76,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话。
    .accept 40740 >>接受任务 死者与诅咒
    .target 大领主达里安·莫格莱尼
step
    .goto 646,31.97,31.91
    >>|cRXP_WARN_跟随箭头并进入传送门。|r
    .complete 40740,2 --1/1 Enter into the Legion Portal
step
    .isOnQuest 40740
    .isQuestNotComplete 40740
    .goto 646,31.97,31.91
    .enterScenario 940 >>进入 |cRXP_PICK_撕裂者收割|r 场景
step
    .isInScenario 940
    .goto 714,17.60,47.83
    >>击杀|cRXP_ENEMY_尼斯卡兰狱卒|r。
    .scenario 1884,1 --Search for Baron Sliver.
    .mob Niskaran Jailer
step
    .isInScenario 940
    .goto 714,22.14,50.77
    >>|cRXP_WARN_跟随箭头|r。
    .scenario 2154,1 --Follow Baron Silver
step
    #label Baron Sliver
    .isInScenario 940
    .goto 714,23.74,50.28
    >>击杀|cRXP_ENEMY_尼斯卡兰末日使者|r 和 |cRXP_ENEMY_恶魔卫士斥候|r。
    .scenario 2135,1 --Protect Baron Sliver while he disables the Fel Barrier
    .mob Niskaran Doombringer
    .mob Felguard Sentry
step
    #title |cFFFCDC00护送男爵白银级|r
    .isInScenario 940
    .goto 714,37.70,47.45
    >>路上击杀 |cRXP_ENEMY_地狱卫士斥候|r，否则 |cRXP_FRIENDLY_男爵白银级|r 会卡住。
    .scenario 2136,1 --Search the Legion camp.
    .mob Felguard Sentry
step
    .goto 714,43.82,38.27
    .isInScenario 940
    >>杀死 |cRXP_PICK_审判官扎里诺|r。
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_军团再临钥石|r
    .scenario 2137,1 --Hunt down Inquisitior Zalinor and obtain his key.
    .mob Inquisitior Zalinor
step
    #completewith next
    #hidewindow
    .cast 202595 >>跟随箭头
    .timer 55,过场剧情
step
    .isInScenario 940
    .goto 714,37.12,48.22
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_FRIENDLY_米妮瓦·悲鸦|r。 << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_达格纳·石眉|r。 << Alliance
    .scenario 2138,1 --Release your ally
    .target Minerva Ravensorrow << Horde
    .target Dagnar Stonebrew << Alliance
step
    .isInScenario 940
    .goto 714,47.96,58.44
    >>使用 |T136120:0|t[反魔法护罩]来避免来自邪魔虚空的伤害。
    >>|cRXP_WARN_防御|r |cRXP_FRIENDLY_男爵白银|r 再次。
    .scenario 2139,1 --Citadel Barrier Disabled
    .usespell 48707
    .mob Niskaran Doombringer
    .mob Felguard Sentry
    .mob Voracious Felmaw
    .mob Niskaran Houndmaster
step
    .isInScenario 940
    .goto 714,61.34,59.78
    >>使用 |T136120:0|t[反魔法护罩]来避免来自邪魔虚空的伤害。
    >>使用 |T237532:0|t[死亡之握]来进入 |cRXP_ENEMY_反斥瘤|r的范围。
    .scenario 2141,1 --Search within the citadel for Margrave
    .usespell 48707
    .usespell 49576
step
    .goto 714,65.10,59.87
    .isInScenario 940
    >>击杀|cRXP_ENEMY_高瑞里克斯|r。
    .scenario 2142,1 --Slay Gorelix
    .mob Gorelix
step
    .isInScenario 940
    .goto 714,64.15,60.17
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_诅咒之喉|r
    .scenario 2143,1 --Take the Maw of the Damned
    .complete 40740,3 --1/1 Obtain the Maw of the Damned
step
    .goto 714,63.06,60.82
step
    .isInScenario 940
    .goto 714,63.06,60.82
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_黑锋之门|r。
    .scenario 2180,1 --Use Baron Sliver's Death Gate
step
    .isOnQuest 40740
    .goto 701,47.57,90.74
    .zone 648 >>在剧情演出之后点击 |cRXP_PICK_Acherus 界门|r。
step
    .isQuestAvailable 39832
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话。
    .turnin 40740 >>交任务 死亡与诅咒
    .timer 63,莫格莱尼 剧情RP
    .target 大领主达里安·莫格莱尼
step
    #optional
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话。
    .turnin 40740 >>交任务 死亡与诅咒
    .target 大领主达里安·莫格莱尼
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 冰霜 死亡骑士
#displayname 神器 武器: 福斯特
#next a) Order Hall 死亡骑士 第1部
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>使用|T135766:0|t[黑锋之门]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>使用传送器
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 44401 >>接受任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这会自动获得 福斯特 神器|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390098
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 44401 >>交任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 43962 >>接受任务 命运之刃
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这会自动获得 福斯特 神器|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390098
    .target Duke Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 43962 >>交任务 命运之刃
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 40715 >>接受任务 必要的选择
    .target Rensar Greathoof
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这会自动选择冰霜神器|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390098
    .target Rensar Greathoof
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 40715 >>交任务 必要的选择
    .target Rensar Greathoof
step
    #completewith Fragments of Frostmourne
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .accept 38990 >>接受任务 冰冠的召唤
    .target 大领主达里安·莫格莱尼
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_死亡大门|r
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_踩在按钮上|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +|cRXP_WARN_要打开门，击杀 |cRXP_ENEMY_岩肤守门者|r 在至少一个按钮上（或使用 |T237532:0|t|r[死亡之握] |cRXP_WARN_将其拉到其中一个按钮上）并站在第二个按钮上。
step
    #label Fragments of Frostmourne
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fragments of 霜之哀伤|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_霜之哀伤的碎片|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fragments of 霜之哀伤|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fragments of 霜之哀伤|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_踩到传送器上|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>跟随箭头
    .timer 24,过场剧情
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_霜之哀伤的剑柄|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_堕落王子之剑|r
    >>击杀 |cRXP_ENEMY_阿尔萨斯·米奈希尔的回响|r
    *在他们到达之前，击杀 |cRXP_ENEMY_Source|r。
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,传送进去
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_堕落王子之剑|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_堕落王子之剑|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_等待剧情结束|r
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .zoneskip 648
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Acherus 界门|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r对话
    .turnin 38990 >>交任务 冰冠的召唤
    .timer 60,过场剧情
    .target 大领主达里安·莫格莱尼
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器: Unholy
#displayname 神器 武器: Unholy
#next a) 死亡骑士 Order Hall 第1部分
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>使用|T135766:0|t[黑锋之门]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>使用传送器
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 44401 >>接受任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择邪恶神器|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390099
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 44401 >>交任务 全能神兵
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .goto 648,35.01,37.23
    .zone 647 >>使用传送器
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 43962 >>接受任务 命运之刃
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择邪恶神器|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390099
    .target Duke Lankral
    .skipgossipid 46633
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 43962 >>交任务 命运之刃
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .accept 40715 >>接受任务 必要的选择
    .target Rensar Greathoof
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    *|cRXP_WARN_这将自动选择邪恶神器|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390099
    .target Rensar Greathoof
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 40715 >>交任务 必要的选择
    .target Rensar Greathoof
step
    #completewith Apocalypse
    +|cRXP_WARN_确保你已装备了可用的武器。如果没有，先装备一把，直到你获得你的神器，或者切换到已经有神器的专精|r。
step
    >>这个任务应该会自动添加到你的任务日志，如果没有，请重新登录。
    .accept 40930 >>接受任务 天启
step
    .goto 47,77.42,35.89
    >>使用 |T254294:0|t[暮色森林卷轴]。|cRXP_WARN_跟随箭头进入房屋。|r
    .complete 40930,1 --1/1 Investigate Manor Mistmantle in Duskwood
    .use 173527
step
    .goto 47,77.42,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话，击败他。
    .complete 40930,2 --1/1 Convince Revil to help
    .timer 11,瑞维尔 剧情RP
    .target Revil Kost
    .skipgossipid 44918
step
    #label Apocalypse
    .goto 47,77.42,36.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40930 >>交任务 天启
    .accept 40931 >>接受任务 追踪诅咒
    .target Revil Kost
step
    .isOnQuest 40931
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .goto 47,77.37,35.12
    .countdown 25 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40931
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40931
    .goto 47,85.55,40.69
    .countdown 20 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40931
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40931
    .goto 42,44.33,34.54
    .countdown 20 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
    .complete 40931,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40931 >>交任务 追踪诅咒
    .accept 40932 >>接受任务调查过去
    .target Revil Kost
step
    .goto 42,52.32,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_破旧的日志|r。
    .complete 40932,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.31,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Battered 日志|r 对话。
    .turnin 40932 >>交任务调查过去
    .target Battered Journal
step
    .goto 42,52.42,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .accept 40933 >>接受任务 恐怖任务
    .target Revil Kost
step
    .goto 42,53.39,73.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击不同的 |cRXP_PICK_浅墓穴|r，直到找到 |cRXP_ENEMY_莱斯·沙尔|r。击杀 |cRXP_ENEMY_莱斯·沙尔|r。
    .complete 40933,1 --1/1 Learn the location of the Dark Riders
    .mob Laith Sha'ol
step
    .goto 42,49.46,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40933 >>交任务 恐怖任务
    .accept 40986 >>接受任务 黑暗骑士
    .target Revil Kost
step
    .isOnQuest 40986
    .goto 42,46.28,69.07
    .enterScenario 1026 >>|cRXP_WARN_进入 |cRXP_PICK_The Dark Riders|r 场景|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1026
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>跳下
step
    #requires KarazhanCatacombsA
    .isInScenario 1026
    .goto 46,72.09,74.41
    >>|cRXP_WARN_进入地下墓穴|r
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1026
    #title 使用 |T237532:0|t[死亡之握]
    .goto 46,55.90,69.19
    >>|cRXP_ENEMY_从任务日志中|r 对 |cRXP_WARN_埃瑞丁|r 使用 |T237532:0|t[死亡之握]。
    .scenario 2159,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1026
    .goto 46,56.36,69.25
    >>击杀 |cRXP_ENEMY_守护者|r。
    .scenario 2160,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>跟随箭头
    .timer 25,过场剧情
step
    .isInScenario 1026
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_天启|r。|cRXP_WARN_等待剧情演出|r。
    .scenario 2161,1 --Apocalypse found
step
    .isInScenario 1026
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_跟随箭头上楼梯到 |cRXP_ENEMY_埃瑞丁|r。
    .scenario 2162,1 --Ariden followed
    .timer 15,埃瑞丁 剧情演出
step
    .isInScenario 1026
    .goto 46,68.36,24.43
    >>击杀 |cRXP_ENEMY_埃瑞丁|r。
    .scenario 2163,1 --Ariden defeated
    .complete 40986,1 --1/1 Defeat the Dark Riders
    .timer 33,埃瑞丁 剧情演出
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_天启|r。
    .complete 40986,2 --1/1 Apocalypse claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    *|cRXP_WARN_注释:|r 如果他仍在战斗，击杀他正在战斗的小怪。
    .turnin 40986 >>交任务 黑暗骑士
    .accept 40987 >>接受任务 复仇的呼唤
    .target Revil Kost
step
    .goto 46,69.62,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_通往冰封王座的死亡之门|r。
    .complete 40987,1 --1/1 Take the Death Gate to the Frozen Throne
step
    .isOnQuest 40987
    .goto 701,47.57,90.74
    .zone 648 >>在剧情演出后点击 |cRXP_PICK_Acherus 界门|r。
step
    .goto 648,50.99,50.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r 对话。
    .turnin 40987 >>交任务 复仇的呼唤
    .target 大领主达里安·莫格莱尼

]])
--Blood 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 鲜血
#displayname 神器 武器: 鲜血
#next ac) Order Hall 死亡骑士 第二部分
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Blood
]])
--Frost 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 冰霜 死亡骑士
#displayname 神器 武器: 福斯特
#next ac) Order Hall 死亡骑士 第二部分
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Frost DK
]])
--Unholy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP 军团再临：幻境新生
#name z) 神器武器: 邪恶
#displayname 神器武器: 邪恶
#next ac) Order Hall 死亡骑士 第一部分
#internal


<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Unholy
]])

--Death Knight Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 死亡骑士 第一部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 死亡骑士
#chapter
#internal

<< DeathKnight

step
    #completewith Enlist Nazgrim2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Kaberk|r 对话。
    *|cRXP_WARN_注释:|r 这个任务应该会在你位于达拉然时自动添加到你的任务日志。如果没有就重新登录。
    .accept 40714 >>接受任务 战争的召唤
    .target Kaberk
step
    .goto 627,73.11,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_兰克拉尔公爵|r 对话。
    .turnin 40714 >>交任务 战争的召唤
    .accept 40715 >>接受任务 必要的选择
    .target Duke Lankral
step
    账号,91955
    +现在选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅1次）|r
    *|cRXP_WARN_稍后你还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择1个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost DK >>RestedXP Legion Remix\a) 神器 武器: 福斯特 DK >> 福斯特(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Unholy >>RestedXP Legion Remix\a) 神器 武器: Unholy >> Unholy(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Blood >>RestedXP Legion Remix\a) 神器 武器: 鲜血 >> 鲜血(坦克) 任务线
step
    #include ac) Order Hall Demon Hunter Part 2@Plans and Preparations-Enlist Nazgrim
step
    .zoneskip 648,1
    .goto 648,24.76,33.70
    .zone 627 >>点击|cRXP_PICK_通往达拉然的传送门|r。
]])

-- --------- Demon Hunter ---------

--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Havoc
#displayname 神器武器：Havoc
#next a) Order Hall 恶魔猎手 第一部分
#internal

<< DemonHunter

step
    #optional
    .convertquest 40814,40816
    .convertquest 44383,44379
    .convertquest 40819,41120
    .convertquest 39051,41121
    .convertquest 39247,41119
step
    #completewith ArtifactWeaponHavocY
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #label ArtifactWeaponHavocA
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestAvailable 40819
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .accept 44383 >>接受任务 追寻力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .turnin 44383 >>交任务 追寻力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 40814 >>接受任务 生存下去的必要力量
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .turnin 40814 >>交任务 生存下去的必要力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    #completewith By Any Means
    +|cRXP_WARN_确保你已装备了可用的武器。如果没有，先装备一把，直到你获得你的神器，或者切换到已经有神器的专精|r。
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 40819 >>接受任务 事务安排
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 40819 >>接受任务 事务安排
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .turnin 40819 >>交任务 事务安排
    .accept 39051 >>接受任务 不择手段
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .turnin 40819 >>交任务 事务安排
    .accept 39051 >>接受任务 不择手段
step
    #label By Any Means
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .turnin 40819 >>交任务 事务安排
    .accept 39051 >>接受任务 不择手段
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_典狱官奥图拉斯|r 对话。
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 627,66.63,68.84
    #title |cFFFCDC00跟随箭头|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00等待剧情演出|r
    >>击杀 |cRXP_ENEMY_毁灭者塔尔达斯|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .turnin 39051 >>交任务 不择手段
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 39247 >>接受任务 狩猎
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Illidari 魔蝠|r
    .complete 39247,1
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zone 627 >>离开副本（右键点击你的角色框架）或按下宏。
    .macro Leave Instance,236367 >>离开副本
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Illidari 魔蝠|r
    .complete 39247,1
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .enterScenario 900 >>|cRXP_WARN_等待剧情演出|r。
    .timer 8
step
    .isInScenario 900
    .goto 680,25.63,58.94
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>击杀所有 |cRXP_ENEMY_恶魔|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    .scenario 1822,1,2
step
    .isInScenario 900
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>击杀 |cRXP_ENEMY_恶魔|r |cRXP_WARN_但不要攻击 |cRXP_ENEMY_邪魂碾压者|r（这只地狱火即使你有仇恨也不要管）|r。
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>击杀 |cRXP_ENEMY_瓦雷迪斯·邪魂|r
    .scenario 1825,1
    .mob Varedis Felsoul
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_欺诈者的双刃|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>离开副本（右键点击你的角色框架）或按下宏。
    .macro Leave Instance,236367 >>离开副本
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考瓦斯·血棘|r 对话
    .turnin 39247 >>交任务 狩猎
    .target Kor'vas Bloodthorn
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考瓦斯·血棘|r 对话
    .turnin 39247 >>交任务 狩猎
    .target Kor'vas Bloodthorn
step
    #completewith Turn in The Hunt
    #label ArtifactWeaponHavocY
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    #label ArtifactWeaponHavocZ
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_考瓦斯·血棘|r 对话
    .turnin 39247 >>交任务 狩猎
    .target Kor'vas Bloodthorn
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：复仇
#displayname 神器 武器：复仇
#next a) Order Hall 恶魔猎手 第一部分
#internal

<< DemonHunter

step
    #optional
    .convertquest 40814,40816
    .convertquest 44383,44379
    .convertquest 40247,41803
    .convertquest 40249,41863
step
    #completewith ArtifactWeaponVengeanceY
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #label ArtifactWeaponVengeanceA
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestAvailable 40247
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .accept 44383>>接受任务 追寻力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .turnin 44383 >>交任务 追寻力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 40814>>接受任务 生存下去的必要力量
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .turnin 40814 >>交任务 生存下去的必要力量
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    #completewith Crystallized Soul
    +|cRXP_WARN_确保你已装备了可用的武器。如果没有，先装备一把，直到你获得你的神器，或者切换到已经有神器的专精|r。
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .accept 40247 >>接受任务 请求帮助
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大法师卡德加|r 对话
    .turnin 40247 >>交任务 请求帮助
    .accept 41804 >>接受任务 有求必应
    .timer 57.5,RP
    .target 大法师卡德加
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大法师卡德加|r 对话
    .turnin 40247 >>交任务 请求帮助
    .accept 41804 >>接受任务 有求必应
    .disablecheckbox
    .target 大法师卡德加
step
    .isQuestTurnedIn 39247
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大法师卡德加|r 对话
    .turnin 40247 >>交任务 请求帮助
    .accept 41804 >>接受任务 有求必应
    .timer 58.5,RP
    .target 大法师卡德加
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    #label Crystallized Soul
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t 点击 |cRXP_PICK_箱子|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 12.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_大法师卡德加|r 对话
    .turnin 41804 >>交任务 有求必应
    .target 大法师卡德加
    .accept 41806 >>接受任务 回去找杰斯
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杰斯·织暗|r 对话
    .turnin 41806 >>交任务 回去找杰斯
    .accept 41807 >>接受任务 取得联系
    .target Jace Darkweaver
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_军团联络器|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_杰斯·织暗|r 对话
    .turnin 41807 >>交任务 取得联系
    .target Jace Darkweaver
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_追随者|r 对话。
    .accept 40249 >>接受任务 大仇必报
    .target Kayn Sunfury
    .target 受难者奥图里斯
step
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_伊利达雷魔蝠|r
    .timer 24,RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .enterScenario 961 >>|cRXP_WARN_等待剧情演出|r。
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_食魂者阿莱利|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target 食魂者阿莱利
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>击杀|cRXP_ENEMY_末日使徒塞拉|r 和 |cRXP_ENEMY_末日使徒塔拉尔|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>击杀|cRXP_ENEMY_戈古纳斯|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>在洞穴前使用 |T1247266:0|t[幽灵视觉]。
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>点击 |cRXP_PICK_碎石|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>击杀|cRXP_ENEMY_凯丽娅·邪魂|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>跟随箭头
    .timer 9,RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>击杀|cRXP_ENEMY_凯丽娅·邪魂|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_武器|r
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>离开副本（右键点击玩家头像）或者直接按宏。
    .macro Leave Instance,236367 >>离开副本
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_考瓦斯·血棘|r对话
    .turnin 40249 >>交任务 大仇必报
    .target Kor'vas Bloodthorn
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    #label ArtifactWeaponVengeanceY
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击传送门|cRXP_PICK_
step
    #label ArtifactWeaponVengeanceZ
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_考瓦斯·血棘|r对话
    .turnin 40249 >>交任务 大仇必报
    .target Kor'vas Bloodthorn
]])
--Havoc 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP 军团再临：幻境新生
#name z) 神器 武器: Havoc
#displayname 神器 武器: Havoc
#next ac) Order Hall 恶魔猎手 第二部分
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Havoc
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 复仇
#displayname 神器 武器: 复仇
#next ac) Order Hall 恶魔猎手 第二部分
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Vengeance
]])

--Demon Hunter Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 恶魔猎手 第一部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 恶魔猎手
#chapter
#internal

<< DemonHunter

step
    #completewith Champion: Asha Ravensong2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #optional
    .convertquest 39261,39047
    .convertquest 39261,39047
    .convertquest 40814,40816
    .convertquest 41221,41033
    .convertquest 41037,41060
    .convertquest 41062,41070
    .convertquest 41067,41096
    .convertquest 41069,41099
    .convertquest 44383,44379
step
    #include ab) Order Hall Demon Hunter Part 1@Future of The Fel Hammer-Call of the Illidari
step
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_追随者|r 对话。
    .target Kayn Sunfury
    .target 受难者奥图里斯
    .accept 40814 >>接受任务生存下去的必要力量
step
    .isQuestAvailable 40814
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Havoc >>RestedXP Legion Remix\a) 神器 武器: Havoc >> Havoc(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Vengeance >>RestedXP Legion Remix\a) 神器武器: 复仇 >> 复仇(坦克)任务线
step
    #include ac) Order Hall Demon Hunter Part 2@Eternal Vigil-Champion: Asha Ravensong
]])

-- --------- Druid ---------

--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 平衡 德鲁伊
#displayname 神器 武器: 平衡
#next a) Order Hall 德鲁伊 Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>使用 |T135763:0|t[翔天恐魔胸甲]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>跟随箭头
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>穿过传送门
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40783
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44443 >>接受任务远古半神的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动拾取平衡神器|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390102
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44443 >>交任务远古之神的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44431 >>接受任务更多远古利刃
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40783
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择平衡神器|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390102
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44431 >>交任务更多的远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 43980 >>接受任务另一件远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40783
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择平衡神器|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390102
    .target Rensar Greathoof
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 43980 >>交任务 另一件远古武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .accept 40646 >>接受任务 传说武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动拾取平衡神器|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390102
    .target Rensar Greathoof
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 40646 >>交任务 传说武器
    .target Rensar Greathoof
step
    #completewith Scythe of Elune
    +|cRXP_WARN_确保你已装备了可用的武器。如果没有，先装备一把，直到你获得你的神器，或者切换到已经有神器的专精|r。
step
    .goto 747,44.52,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉雷克斯|r 对话
    .accept 40783 >>接受任务 月神的镰刀
    .target Naralex
step
    #completewith ToDuskwoodD
    #label ToDuskwoodA
    >>前往暮色森林
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToDuskwoodA
    #label ToDuskwoodB
    .goto 747,55.76,21.99
    .zone 715 >>通过传送门前往翡翠梦境之路
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToDuskwoodB
    #completewith ToDuskwoodA
    #label ToDuskwoodC
    .zone 715 >>使用 |T135763:0|t[梦境行者]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToDuskwoodC
    #completewith ToDuskwoodA
    #label ToDuskwoodD
    .goto 715,31.46,26.05
    .zone 116 >>通过传送门前往暮色森林
step
    #requires ToDuskwoodA
    .goto 715,39.93,69.76
    >>前往暮色森林
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    #completewith next
    #hidewindow
    .goto 47,48.90,34.31,15 >>跟随箭头
    .timer 15,瓦洛恩 剧情RP
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_跟随箭头。等待剧情结束|r。
    .complete 40783,2 --1/1 Meet with Valorn
step
    #label Scythe of Elune
    .goto 47,48.90,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瓦洛恩·静枝|r 对话
    .turnin 40783 >>交任务 月神的镰刀
    .accept 40784 >>接受任务 适得其所
    .timer 4,过场剧情
    .target Valorn Stillbough
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_等待剧情结束|r
    .complete 40784,1 --1/1 Scythe of Elune taken
step
    .goto 47,48.84,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_贝瑞莎·星风|r对话
    .turnin 40784 >>交任务 适得其所
    .target Belysra Starbreeze
    .accept 40785 >>接受任务 黑暗的敌人
step
    #title |cFFFCDC00进入房屋|r
    .goto 47,77.42,36.13
    >>|cRXP_WARN_跟随箭头|r。
    .complete 40785,2 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.42,36.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .turnin 40785 >>交任务 黑暗的敌人
    .accept 40834 >>接受任务 追踪诅咒
    .target Revil Kost
step
    .isOnQuest 40834
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .goto 47,77.37,35.12
    .countdown 25 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40834
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40834
    .goto 47,85.55,40.69
    .countdown 20 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40834
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40834
    .goto 42,44.33,34.54
    .countdown 20 >>击杀 |cRXP_ENEMY_黑暗骑士|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>护送|cRXP_FRIENDLY_瑞维尔·考斯特|r
    .complete 40834,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .turnin 40834 >>交任务 追踪诅咒
    .accept 40835 >>接受任务 调查过去
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_破旧的日志|r。
    .complete 40835,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_破旧的日志|r 对话
    .turnin 40835 >>交任务 调查过去
    .target Battered Journal
step
    .goto 42,52.42,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .accept 40837 >>接受任务 逆风追杀
    .target Revil Kost
step
    .goto 42,51.57,43.62
    >>|cRXP_WARN_跟随箭头|r。
    .complete 40837,1 --1/1 Follow the worgen tracks
step
    .goto 42,47.22,51.69
    >>|cRXP_WARN_跟随箭头|r。
    .complete 40837,2 --1/1 Continue following the worgen
step
    .goto 42,49.17,57.66
    >>|cRXP_WARN_跟随箭头|r。
    .complete 40837,3 --1/1 Continue following the worgen
step
    .goto 42,45.93,63.33
    >>|cRXP_WARN_跟随箭头|r。
    .complete 40837,4 --1/1 Continue following the worgen
step
    .goto 42,46.90,69.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .turnin 40837 >>交任务 逆风追杀
    .accept 40838 >>接受任务 黑暗骑士
    .target Revil Kost
step
    .isOnQuest 40838
    .goto 42,46.28,69.07
    .enterScenario 1014 >>|cRXP_WARN_跟随箭头|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1014
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>跳下
step
    #requires KarazhanCatacombsA
    .isInScenario 1014
    .goto 46,72.09,74.41
    >>|cRXP_WARN_进入地下墓穴|r
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1014
    #title 使用|T252188:0|t[日光术]
    .goto 46,55.90,69.19
    >>对|cRXP_ENEMY_埃瑞丁|r 使用 |T252188:0|t[日光术] |cRXP_WARN_来自任务日志|r。
    .scenario 2109,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1014
    .goto 46,56.36,69.25
    >>击杀|cRXP_ENEMY_守护者|r。
    .scenario 2110,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>跟随箭头
    .timer 25,过场剧情
step
    .isInScenario 1014
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_月神镰刀|r。 |cRXP_WARN_等待剧情结束|r。
    .scenario 2111,1 --Scythe of Elune found
step
    .isInScenario 1014
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_跟随箭头上楼梯到 |cRXP_ENEMY_埃瑞丁|r处。
    .scenario 2112,1 --Ariden followed
    .timer 15,埃瑞丁 剧情RP
step
    .isInScenario 1014
    .goto 46,68.36,24.43
    >>击杀 |cRXP_ENEMY_埃瑞丁|r。
    .scenario 2113,1 --Ariden defeated
    .complete 40838,1 --1/1 Defeat the Dark Riders
    .timer 33,埃瑞丁 剧情演出
    .mob Ariden
step
    .goto 46,68.28,24.62
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_月神镰刀|r。
    .complete 40838,2 --1/1 The Scythe of Elune claimed
    .timer 25,过场剧情
step
    .goto 46,68.27,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .turnin 40838 >>交任务 黑暗骑士
    .accept 40900 >>接受任务 肩负重任
    .target Revil Kost
step
    #completewith TheBurdenBorneC
    #label TheBurdenBorneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 40900 >>交任务 肩负重任
    .target Rensar Greathoof
step
    #completewith TheBurdenBorneA
    #label TheBurdenBorneB
    .zone 715 >>使用 |T135763:0|t[翔天恐魔胸甲]
    .usespell 193753
step
    #completewith TheBurdenBorneA
    #requires TheBurdenBorneB
    #label TheBurdenBorneC
    .goto 715,45.60,23.46
    .zone 747 >>穿过传送门前往翡翠梦境之路
step
    #requires TheBurdenBorneA
    .goto 747,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 40900 >>交任务 肩负重任
    .target Rensar Greathoof
]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：野性德鲁伊
#displayname 神器 武器: 野性
#next a) Order Hall 德鲁伊 Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>使用 |T135763:0|t[翔天恐魔胸甲]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>跟随箭头
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>穿过传送门
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 42428
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44443 >>接受任务 远古者之武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择野性神器|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390103
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44443 >>交任务 远古半神的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44431 >>接受任务 更多的远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择野性神器|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390103
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44431 >>交任务 更多的远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 43980 >>接受任务 另一件远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择野性神器|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390103
    .target Rensar Greathoof
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 43980 >>交任务另一件远古武器
    .accept 42428 >>接受任务 阿莎曼祭坛
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .accept 40646 >>接受任务 传说武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择野性神器|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390103
    .target Rensar Greathoof
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 40646 >>交任务 传说武器
    .target Rensar Greathoof
step
    #completewith Aid for the Ashen
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 42428 >>接受任务 阿莎曼祭坛
    .target Rensar Greathoof
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_黛妮丝·凝星|r 对话。
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 57,飞行持续时间
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_德兰多斯·闪月|r 对话。
    .turnin 42428 >>交任务 阿莎曼祭坛
    .target Delandros Shimmermoon
    .accept 42439 >>接受任务 援助灰烬德鲁伊
    .accept 42438 >>接受任务 重生之种
step
    #completewith SeedsOfRenewalA
    >>击杀|cRXP_ENEMY_艾瑞达灵魂鞭笞者|r。
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title 种子 (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_埃姆萨斯·神眼|r 的|cRXP_FRIENDLY_尸体|r。
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title 种子 (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_阿斯塔洛·暮月|r 的|cRXP_FRIENDLY_尸体|r。
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title 种子 (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_伊赛拉·露歌|r 的|cRXP_FRIENDLY_尸体|r。
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>击杀|cRXP_ENEMY_艾瑞达灵魂鞭笞者|r。
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #label Aid for the Ashen
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_德兰多斯·闪月|r 对话
    .turnin 42439 >>交任务 援助灰烬德鲁伊
    .turnin 42438 >>交任务 重生之种
    .accept 42440 >>接受任务 祭坛的危机
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_跟随箭头。|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>击杀|cRXP_ENEMY_奥格罗蒙|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_德兰多斯·闪月|r 对话
    .turnin 42440 >>交任务 祭坛的危机
    .accept 42430 >>接受任务 阿莎曼之牙
    .target Delandros Shimmermoon
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_FRIENDLY_乌牙|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isOnQuest 42430
    .goto 641,73.75,38.40
    .enterScenario 1108 >>进入|cRXP_PICK_阿莎曼之牙|r 场景。
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2506,1 --Followed Verstok's scent
step
    #completewith DoorSwitchB
    #label DoorwayOpenedA
    .isInScenario 1108
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    .isOnQuest 42430
    #completewith DoorwayOpenedA
    #label DoorSwitchA
    .goto 680,21.88,37.24
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_门开关|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_门开关|r
    .timer 15,大门即将打开
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击两个 |cRXP_PICK_门开关|r
    >>|cRXP_WARN_点击两个门开关后等待大门打开|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_跟随箭头|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_平台|r
    *- |cRXP_WARN_确保处于猫形态|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_跟随箭头|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>击败 |cRXP_ENEMY_维斯托克|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_跟随箭头|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>击杀 |cRXP_ENEMY_蛛网女王辛娜瑞丝|r。
    .scenario 2546,1 --Webmistress Shinaris Slain
    .timer 18,维斯托克 剧情RP
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_阿莎曼的毒牙|r
    .scenario 2547,1 --Retrieve the Fangs of Ashamane
step
    .isOnQuest 42430
    .isQuestNotComplete 42430
    .isInScenario 1108
    .goto 693,54.76,19.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_FRIENDLY_乌牙|r。
    .scenario 2552,1 --Ride upon Ebonfang
    .target Ebonfang
step
    .goto 747,44.52,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 42430 >>交任务 阿莎曼之牙
    .target Rensar Greathoof
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Guardian 德鲁伊
#displayname 神器 武器: 守护者
#next a) Order Hall 德鲁伊 Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>使用 |T135763:0|t[梦境行者]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>跟随箭头
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>穿过传送门
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 41468
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44443 >>接受任务 远古者的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择守护者神器|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390104
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44443 >>交任务 远古半神的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44431 >>接受任务 更多的远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这会自动为你选择Guardian神器|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390104
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44431 >>交任务 更多的远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 43980 >>接受任务 另一件远古武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择守护者神器|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390104
    .target Rensar Greathoof
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 43980 >>交任务另一件远古武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .accept 40646 >>接受任务 传说武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这将自动选择守护者神器|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390104
    .target Rensar Greathoof
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 40646 >>交任务 传说武器
    .target Rensar Greathoof
step
    #completewith ToTheHillsA
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 41468 >>接受任务利爪领袖
    .target Rensar Greathoof
step
    #completewith next
    #label MistressOfTheClawA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉娅·石爪|r 对话
    .turnin 41468 >>交任务 利爪领袖
    .accept 41782 >>接受任务前往丘陵
    .target Lea Stonepaw
step
    #title |cFFFCDC00返回洞穴|r
    #completewith MistressOfTheClawA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_跟随箭头进入洞穴|r
step
    #requires MistressOfTheClawA
    .goto 641,39.27,18.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉娅·石爪|r 对话
    .turnin 41468 >>交任务利爪领袖
    .accept 41782 >>接受任务 前往丘陵
    .target Lea Stonepaw
step
    #completewith next
    #label ToTheHillsA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Flask of Moonwell Water|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #title |cFFFCDC00离开洞穴|r
    #completewith ToTheHillsA
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_跟随箭头离开洞穴|r
step
    #requires ToTheHillsA
    .goto 747,35.66,25.44
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_月亮井水合剂|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #completewith ToTheHillsE
    #label ToTheHillsB
    >>前往灰熊丘陵
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToTheHillsB
    #label ToTheHillsC
    .goto 747,55.76,21.99
    .zone 715 >>进入传送门前往翡翠梦境之路
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToTheHillsC
    #completewith ToTheHillsB
    #label ToTheHillsD
    .zone 715 >>使用 |T135763:0|t[翔天恐魔胸甲]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToTheHillsD
    #completewith ToTheHillsB
    #label ToTheHillsE
    .goto 715,31.46,26.05
    .zone 116 >>穿过传送门前往灰熊丘陵
step
    #requires ToTheHillsB
    >>前往灰熊丘陵
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .goto 116,50.46,29.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_石爪的角鹰兽|r
    .complete 41782,3 --1/1 Take Stonepaw's Hippogryph to Lea Stonepaw (Optional)
    .target Stonepaw's Hippogryph
step
    .goto 116,50.29,37.96,25,0
    .goto 116,50.98,37.10
    >>|cRXP_WARN_跟随箭头|r
    .complete 41782,4 --1/1 Locate Lea Stonepaw
step
    .goto 116,51.28,36.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莉娅·石爪|r 对话
    .turnin 41782 >>交任务 前往丘陵
    .target Lea Stonepaw
step
    #title |cFFFCDC00查看注释|r
    .goto 116,50.50,37.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌索尔|r 对话
    *|cRXP_WARN_注释：如果你看不到剧情演出或 |cRXP_FRIENDLY_乌索尔|r 那么就在 |cRXP_FRIENDLY_莉娅·石爪|r 身边小退。|r
    .accept 41790 >>接受任务乌索尔的第一个试炼
    .target Ursol
step
    .goto 116,50.68,37.44
    >>击杀 |cRXP_ENEMY_先祖勇士|r
    .complete 41790,1 --1/1 Overcome Ursol's first trial
    .mob Ancestral Champion
step
    .goto 116,50.52,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌索尔|r 对话
    .turnin 41790 >>交任务乌索尔的第一个试炼
    .accept 41791 >>接受任务乌索尔的第二个试炼
    .target Ursol
step
    .goto 116,50.70,37.37
    >>击杀 |cRXP_WARN_三波|r |cRXP_ENEMY_Ancestral Warriors|r 和 |cRXP_ENEMY_Shamans|r
    .complete 41791,1 --1/1 Overcome the second of Ursol's trials
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌索尔|r 对话。
    .turnin 41791 >>交任务乌索尔的第二个试炼
    .accept 41792 >>接受任务乌索尔的第三个试炼
    .target Ursol
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乌索尔 来开始第三个试炼|r
    .complete 41792,1 --1/1 Speak with Ursol to begin the third trial
    .timer 50,过场剧情
    .target Ursol to begin the third trial
    .skipgossipid 45309
step
    .goto 116,51.15,36.99
    >>击杀不断刷新出现的 |cRXP_ENEMY_Ancestral Warriors|r 和 |cRXP_ENEMY_Shamans|r
    *|cRXP_WARN_你也可以治疗她|r
    .complete 41792,2 --1/1 Protect Lea Stonepaw
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.51,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_乌索尔|r 对话
    .turnin 41792 >>交任务 乌索尔的第三个试炼
    .target Ursol
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莉娅·石爪|r 对话
    .accept 40647 >>接受任务 梦魇来袭
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>使用 |T236878:0|t[一壶月井]
    .complete 40647,1 --1/1 Enter the Emerald Dream
    .use 136414
step
    .isOnQuest 40647
    .goto 116,51.25,36.85
    .enterScenario 990 >>进入|cRXP_PICK_乌索克的巢穴|r 副本。
step
    .isInScenario 990
    .goto 757,47.23,81.67,25,0
    .goto 757,48.72,51.65
    >>|cRXP_WARN_跟随箭头|r
    .scenario 2029,1 --Locate the Claws of Ursoc
step
    .goto 757,46.86,30.53
    .isInScenario 990
    >>击杀|cRXP_ENEMY_腐蹄亵渎者|r 和 |cRXP_ENEMY_暗影猎手|r
    .scenario 2327,1 --Defend the Spirit of Ursoc
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,50.13,32.38
    >>击杀|cRXP_ENEMY_疫血淤泥|r 和 |cRXP_ENEMY_腐蹄暗影猎手|r。
    .scenario 2030,1 --Survive the first assault
    .mob Rothoof Shadowstalker
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,49.40,33.06
    >>击杀|cRXP_ENEMY_腐蹄亵渎者|r 和 |cRXP_ENEMY_暗影猎手|r。
    .scenario 2033,1 --Survive the second assault
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,46.32,30.25
    >>击杀 |cRXP_ENEMY_疫血淤泥|r 和 |cRXP_ENEMY_腐化防御者|r。
    .scenario 2034,1 --Survive the third assault
    .mob Corrupted Defender
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,50.30,31.30
    >>击杀2个 |cRXP_ENEMY_腐化防御者|r。被眩晕后等待70秒的剧情演出。
    .scenario 2035,1 --Survive the final assault
    .mob Corrupted Defender
step
    .isInScenario 990
    .goto 757,49.96,28.35
    >>击杀 |cRXP_ENEMY_马利萨|r。
    .scenario 2040,1 --Defeat Malithar
    .complete 40647,2 --1/1 Defeat the Forces of the Nightmare
    .mob Malithar
step
    .isInScenario 990
    .goto 757,50.08,26.29
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_乌索克之爪|r
    .scenario 2041,1 --Obtain the Claws of Ursoc
    .complete 40647,3 --1/1 Obtain the Claws of Ursoc
step
    .isOnQuest 40647
    .zoneskip 757,1
    .zone 116 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莉娅·石爪|r 对话
    .skipgossipid 45251
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_莉娅·石爪|r 对话。
    .turnin 40647 >>交任务 梦魇来袭
    .accept 41918 >>接受任务 沉睡者的回归
    .target Lea Stonepaw
step
    .zoneskip 715
    .isOnQuest 41918
    .zone 715 >>使用 |T135763:0|t[梦境行者]
    .usespell 193753
step
    .zoneskip 715,1
    .isOnQuest 41918
    .goto 715,45.60,23.46
    .zone 747 >>|cRXP_WARN_跟随穿过传送门的箭头|r
step
    .goto 747,44.66,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 41918 >>交任务 沉睡者的回归
    .target Rensar Greathoof
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP 军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 恢复德鲁伊的神器武器
#displayname 神器 武器: Restoration
#next a) Order Hall 德鲁伊 Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>使用 |T135763:0|t[梦境行者]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>跟随箭头
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>穿过传送门
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40649
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44443 >>接受任务 远古者的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390105
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44443 >>交任务 远古半神的武器
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 44431 >>接受任务 更多远古利刃
    .target Rensar Greathoof
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390105
    .target Rensar Greathoof
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 44431 >>交任务 更多远古利刃
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .accept 43980 >>接受任务 另一件远古利刃
    .target Rensar Greathoof
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390105
    .target Rensar Greathoof
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .turnin 43980 >>交任务 另一件远古武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .accept 40646 >>接受任务 传说武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390105
    .target Rensar Greathoof
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话。
    .turnin 40646 >>交任务 传说武器
    .target Rensar Greathoof
step
    #completewith Leafbeard the Storied
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 747,44.61,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守护者雷姆洛斯|r 对话。
    .accept 40649 >>接受任务与米露恩见面
    .target 守护者雷姆洛斯
step
    .goto 747,52.30,52.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话。
    .turnin 40649 >>交任务与米露恩见面
    .accept 41422 >>接受任务必要准备
    .target Mylune
step
    .goto 747,35.66,25.50
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_空杯|r。
    .complete 41422,1 --1/1 Cup of Moonwater
step
    #label Leafbeard the Storied
    .goto 747,32.79,29.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_传说中的叶须|r 对话。
    .complete 41422,2 --1/1 Leafbeard's Blessing obtained
    .target Leafbeard the Storied
    .skipgossipid 46113
    .skipgossipid 45260
step
    .goto 747,52.30,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米露恩|r 对话。
    .turnin 41422 >>交任务必要准备
    .accept 41449 >>接受任务进入沉睡
    .target Mylune
step
    #completewith next
    #label JoinTheDreamerA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉雷克斯|r 对话。
    .turnin 41449 >>交任务 加入做梦者
    .accept 41436 >>接受任务 在沉睡中
    .target Naralex
step
    #title |cFFFCDC00返回洞穴|r
    #completewith JoinTheDreamerA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_跟随箭头进入洞穴|r
step
    #requires JoinTheDreamerA
    .goto 747,40.62,1.53,10,0
    .goto 641,39.56,18.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉雷克斯|r 对话。
    .turnin 41449 >>交任务进入沉睡
    .accept 41436 >>接受任务进入沉眠
    .target Naralex
step
    .goto 641,39.63,18.09
    >>使用 |T608949:0|t[Cup of Moonwater]
    .complete 41436,1 --1/1 Enter the Emerald Dream
    .use 135506
step
    #completewith InDeepSlumberC
    #label InDeepSlumberA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_G'Hanir|r |cRXP_WARN_洞穴外|r。
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
step
    #title |cFFFCDC00解救 Bashana|r
    #completewith InDeepSlumberA
    #label InDeepSlumberB
    .goto 747,40.83,2.02,8,0
    .goto 747,43.96,6.16,8,0
    .goto 747,47.97,4.09,8,0
    .goto 747,47.21,7.17
    .cast 311698 >>点击 |cRXP_PICK_根须|r
step
    #title |cFFFCDC00离开 洞穴, 治疗自己|r
    #requires InDeepSlumberB
    #completewith InDeepSlumberA
    #label InDeepSlumberC
    .goto 747,45.81,11.47,10,0
    .goto 747,48.95,15.49,8,0
    .goto 747,41.96,9.58,8,0
    .goto 747,42.55,16.10,8,0
    .goto 747,41.20,18.49,8,0
    .goto 747,46.76,29.02,8 >>|cRXP_WARN_跟随箭头离开洞穴|r。
    *|cRXP_WARN_如果腐蚀伤害过强，放弃任务然后小退一下|r。
step
    #requires InDeepSlumberA
    .goto 747,45.12,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_G'Hanir|r
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
    .timer 10,在...醒来
step
    .goto 641,39.62,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳拉雷克斯|r 对话。
    .turnin 41436 >>交还 进入沉眠
    .accept 41690 >>接受 再次相聚
    .target Naralex
step
    #completewith next
    #label ReconveneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎·护蕾|r 对话。
    .turnin 41690 >>交任务再次相聚
    .accept 41689 >>接受任务净化母亲之树
    .target Lyessa Bloomwatcher
step
    #title |cFFFCDC00离开洞穴|r
    #completewith ReconveneA
    .goto 747,41.02,2.21,8,0
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_跟随箭头离开洞穴|r
step
    #requires ReconveneA
    .goto 747,45.20,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎·护蕾|r 对话。
    .turnin 41690 >>交还 再次相聚
    .accept 41689 >>接受 净化母亲之树
    .target Lyessa Bloomwatcher
step
    .goto 747,55.74,21.91
    >>通过传送门前往Dreamway
    .complete 41689,1 --1/1 Enter the Dreamway
step
    .goto 715,53.69,53.00
    >>通过传送门前往海加尔山
    .complete 41689,2 --1/1 Travel to Mount Hyjal
step
    #hidewindow
    #completewith next
    #label CleansingTheMotherTreeA
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    #completewith CleansingTheMotherTreeA
    #label CleansingTheMotherTreeB
    .enterScenario 1061 >>进入 |cRXP_PICK_净化母亲之树|r 场景
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #requires CleansingTheMotherTreeB
    #completewith next
    #hidewindow
    .gossipoption 45306 >>跟随箭头
    .timer 21,Omnuron 剧情演出
step
    #requires CleansingTheMotherTreeB
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,59.51,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_啸天者欧穆隆|r 对话。
    .scenario 2259,1 --Find out what happened from Skylord Omnuron.
    .target Skylord Omnuron
    .skipgossipid 45306
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    --.goto 198/1,-349880.01465,493840.00000
    .goto 198,60.52,44.54
    >>治疗 |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r。
    .scenario 2269,2 --Heal Celestine to full health.
    .target Celestine of the Harvest
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,61.68,43.60
    >>治疗 |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r。
    .scenario 2269,1 --Heal Hamuul to full health.
    .target Archdruid Hamuul Runetotem
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.70,41.85
    >>使用 |T236288:0|t[自然治疗] 对 |cRXP_FRIENDLY_岑塔布拉|r。
    .scenario 2269,3 --Cleanse Zen'tabra.
    .target Zen'tabra
    .macro Nature's Cure,236288 >>自然治疗
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #hidewindow
    #completewith next
    .gossipoption 45261 >>跟随箭头
    .timer 6,短剧情演出
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .goto 198,60.24,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎·护蕾|r 对话。
    .scenario 2270,1 --Speak to Lyessa.
    .timer 180,战斗持续时间
    .target Lyessa Bloomwatcher
    .skipgossipid 45261
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.31,42.76
    >>|cRXP_WARN_治疗你的队友约3分钟|r。
    .scenario 2272,1 --1
    .scenario 2272,2 --Lyessa Must Survive
    .skipgossipid 45138
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_莱莎·护蕾|r。
    .scenario 2325,1 --Give Corrupted G'Hanir to Lyessa.
    .target Lyessa Bloomwatcher
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2325,2 --Witness G'Hanir's rebirth.
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_G'Hanir|r。
    .scenario 2372,1 --Wield G'Hanir, the Mother Tree.
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>使用 |T1115592:0|t[母亲树的召唤] |cRXP_WARN_在你的小地图下方的任务日志中|r。
    .scenario 2274,1 --Call upon the souls of the forest.
    .timer 15,迪托马斯 剧情演出
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2274,2 --Eliminate Destromath.
step
    #completewith CleansingTheMotherTreeE
    #label CleansingTheMotherTreeC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎·护蕾|r 对话。
    .turnin 41689 >>交任务 净化母亲之树
    .target Lyessa Bloomwatcher
step
    .zoneskip 198,1
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeD
    .goto 198,59.05,43.52
    .zone 715 >>通过传送门前往翡翠梦境之路
step
    #requires CleansingTheMotherTreeD
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeF
    .zone 715 >>使用 |T135763:0|t[翔天恐魔胸甲]
step
    .zoneskip 715,1
    #requires CleansingTheMotherTreeF
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeE
    .goto 715,45.60,23.46
    .zone 747 >>通过传送门前往梦境林地
step
    #requires CleansingTheMotherTreeC
    .goto 747,45.20,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱莎·护蕾|r 对话。
    .turnin 41689 >>交还 净化母亲之树
    .target Lyessa Bloomwatcher
]])
--Balance 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 平衡德鲁伊
#displayname 神器 武器: 平衡
#next ac) Order Hall 德鲁伊 Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Balance Druid
]])
--Feral 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 野性德鲁伊
#displayname 神器 武器: 野性
#next ac) Order Hall 德鲁伊 Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Feral Druid
]])
--Guardian 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 守护者德鲁伊
#displayname 神器 武器: 守护者
#next ac) Order Hall 德鲁伊 Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Guardian Druid
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 恢复德鲁伊
#displayname 神器 武器: Restoration
#next ac) 职业大厅 德鲁伊 Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Restoration Druid
]])

--Druid Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 德鲁伊 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) 职业大厅 德鲁伊
#chapter
#internal

<< Druid

step
    #completewith Making Trails2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Druid Part 1@A Summons From Moonglade-To The Dreamgrove
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伦萨·巨蹄|r 对话
    .accept 40646 >>接受任务 传说武器
    .target Rensar Greathoof
step
    .isQuestAvailable 40646
    .isQuestAvailable account,91955
    +暂时选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅一次）|r
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Balance Druid >>Remix\z) 神器 武器: 平衡 德鲁伊 >> 平衡(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Feral Druid >>Remix\z) 神器 武器: 野性 德鲁伊 >> 野性(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Guardian Druid >>Remix\z) 神器 武器: Guardian 德鲁伊 >> Guardian(坦克) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Restoration Druid >>Remix\z) 神器 武器: Restoration 德鲁伊 >> Restoration(治疗者) Questline
step
    #include ac) Order Hall Druid Part 2@Sowing The Seed-Making Trails
step
    .zoneskip 747,1
    .goto 747,56.51,43.15
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
]])

-- --------- Hunter ---------

--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 经典怀旧服 道具
#displayname 神器 武器: 野兽控制
#next a) Order Hall 猎人 第一部分
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44366 >>接受任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这将自动选取 经典怀旧服 道具 artifact|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44366 >>交任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44043 >>接受任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这将自动选择 经典怀旧服 道具 神器|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44043 >>交任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 40618 >>接受任务 传说武器
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这将自动选取 经典怀旧服 道具 artifact|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40618 >>交任务 传说武器
    .target Emmarel Shadewarden
step
    #completewith Beastly Expedition
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41541 >>接受任务 兽性的探索
    .target Emmarel Shadewarden
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41541 >>接受任务 兽性的探索
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41541
    .goto 739,48.66,43.46
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
step
    #label Beastly Expedition
    .goto 627,71.39,50.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话。
    .turnin 41541 >>交任务兽性的探索
    .accept 41574 >>接受任务失窃的雷霆
    .target 格瑞夫
step
    #completewith next
    #hidewindow
    .vehicle 106236 >>跟随箭头
    .timer 65,飞行持续时间
step
    .goto 627,71.22,51.77
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_休伊|r。
    .complete 41574,1 --1/1 Fly with Grif to Shield's Rest
    .target Huey
step
    #completewith next
    #hidewindow
    .goto 634,85.40,9.66
    .gossipoption 45594 >>跟随箭头
    .timer 71,格瑞夫 剧情演出
step
    .goto 634,84.90,9.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话。
    .scenario 2291,1 --1/1 Meet Prustaga with Grif.
    .target 格瑞夫
    .skipgossipid 45594
step
    #title |cFFFCDC00躲闪小龙卷|r
    .isInScenario 1068
    .goto 635,75.26,58.95,10,0
    .goto 635,52.67,52.30
    >>|cRXP_WARN_跟随箭头进入陵墓。|r
    >>击杀 |cRXP_ENEMY_风暴编织者伊格瑞达|r 和 |cRXP_ENEMY_幽灵塑风者|r。
    .scenario 2300,1 --Find Warlord Volund's tomb.
    .mob Stormweaver Ingrida
    .mob Spectral Windshaper
step
    .isInScenario 1068
    .goto 635,55.02,43.84
    >>击杀成波的 |cRXP_ENEMY_Restless Tombguards|r 和 |cRXP_ENEMY_Disturbed 追踪者|r。
    .scenario 2301,1 --Protect Prustaga as she opens Volund's tomb.
    .timer 131,剧情事件时长
    .mob Restless Tombguard
    .mob Disturbed Tracker
    .mob Disturbed Worg
step
    .isInScenario 1068
    .goto 635,58.06,19.20
    >>击杀 |cRXP_ENEMY_自动碾压者|r。|cRXP_WARN_等待剧情演出。|r
    .scenario 2298,1 --Search for Titanstrike.
    .mob Automated Crusher
step
    .isInScenario 1068
    .goto 635,58.27,17.73
    >>击杀 |cRXP_ENEMY_督军沃伦德|r。|cRXP_WARN_等待剧情演出。|r
    .scenario 2423,1 --Defeat Warlord Volund.
    .mob Warlord Volund
step
    .isInScenario 1068
    .goto 635,58.25,17.71
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送器|r。
    .scenario 2424,1 --Join Keeper Mimiron in Ulduar.
    .complete 41574,2 --Track down Titanstrike: 1/1
step
    #title |cFFFCDC00躲避炸弹|r
    .goto 745,44.93,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米米尔隆|r 对话。
    .turnin 41574 >>交任务失窃的雷霆
    .accept 42158 >>接受任务创造者的车间
    .target Mimiron
step
    #completewith TheCreatorsWorkshopI
    #label TheCreatorsWorkshopA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米米尔隆|r 对话。
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopB
    .goto 745,44.93,37.33
    .gossipoption 45357 >>与 |cRXP_FRIENDLY_米米尔隆|r 对话。
    .timer 50,第一次应急
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 控制面板 (1/2)
    #requires TheCreatorsWorkshopB
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopC
    #title 跳过波浪
    .goto 745,40.46,41.42
    .cast 6477 >>点击 |cRXP_PICK_控制面板|r。
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 控制面板 (2/2)
    #requires TheCreatorsWorkshopC
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopD
    #title 跳跃越过波浪
    #loop
    .goto 745,40.46,41.42,8,0
    .goto 745,41.44,44.14,8,0
    .cast 6477 >>点击 |cRXP_PICK_控制面板|r。
    .timer 14,第二次应急
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 稳定节点 (1/4)
    #requires TheCreatorsWorkshopD
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopE
    .goto 745,45.50,43.96
    .cast 6477 >>点击 |cRXP_PICK_稳定矩阵节点|r。
step
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopH
    #hidewindow
    #loop
    .goto 745,44.84,42.86,8,0
    .goto 745,45.49,41.13,8,0
    .goto 745,46.52,41.41,8,0
    .goto 745,45.50,43.96,8,0
    +1
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 稳定节点 (2/4)
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopF
    .cast 6477 >>点击 |cRXP_PICK_稳定矩阵节点|r。
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 稳定节点 (3/4)
    #requires TheCreatorsWorkshopF
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopG
    .cast 6477 >>点击 |cRXP_PICK_稳定矩阵节点|r。
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title 稳定节点 (4/4)
    #requires TheCreatorsWorkshopG
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopH
    .cast 6477 >>点击 |cRXP_PICK_稳定矩阵节点|r。
    .timer 25,最后的紧急行动
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #requires TheCreatorsWorkshopH
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopI
    .goto 745,43.65,36.37
    .cast 6477 >>点击 |cRXP_PICK_不要按这个按钮！|r。
    .timer 27,完成任务
step
    #requires TheCreatorsWorkshopA
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米米尔隆|r 对话。
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
    .skipgossipid 45357
step
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米米尔隆|r 对话。
    .turnin 42158 >>交任务创造者的车间
    .accept 42185 >>接受任务猎人永不孤单
    .target Mimiron
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .zoneskip 745,1
    .goto 745,43.73,37.94
    .zone 120 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送器|r。
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .goto 120,25.73,47.51
    .enterScenario 1099 >>飞往 |cRXP_PICK_猎人永不孤单|r 场景。
    .timer 33,过场剧情
step
    .isInScenario 1099
    #title 移动一次以开始剧情演出
    .goto 120,25.78,47.70
    >>|cRXP_WARN_等待剧情演出。|r
    .scenario 2452,1 --Converse with Thorim.
step
    .isInScenario 1099
    .goto 120,25.90,48.55
    >>击杀 |cRXP_ENEMY_Thunderous Proto-魔枢雏龙|r 和 |cRXP_ENEMY_Fervent 风暴召唤者|r。
    .scenario 2474,1 --Fend off the vrykul horde.
    .mob Thunderous Proto-Drake
    .mob Fervant Stormcaller
step
    .goto 120,25.74,47.38
    .isInScenario 1099
    >>击杀 |cRXP_ENEMY_普斯塔佳|r。
    .scenario 2480,1 --Defeat Prustaga.
    .timer 73,过场剧情
    .mob Prustaga
step
    .isInScenario 1099
    .goto 120,25.74,47.38
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_哈提|r。
    .scenario 2481,1 --Bind Hati's spirit to your own.
    .target Hati
step
    .isInScenario 1099
    .goto 120,25.74,47.22
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_泰坦之击|r。
    .scenario 2482,1 --Wield Titanstrike.
    .complete 42185,2 --1/1 Titanstrike recovered
    .timer 65,等待休伊
step
    .isInScenario 1099
    .goto 120,26.05,47.39
    >>|TInterface/cursor/crosshair/interact.blp:20|t在剧情演出后点击 |cRXP_FRIENDLY_休伊|r。
    .scenario 2483,1 --Ride Huey to return to Dalaran.
    .timer 36,飞行持续时间
step
    .isQuestTurnedIn 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话。
    .turnin 42185 >>交任务猎人永不孤单
    .target 格瑞夫
step
    .isQuestAvailable 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格瑞夫|r 对话。
    .turnin 42185 >>交任务猎人永不孤单
    .accept 41009 >>接受任务猎人对猎人
    .target 格瑞夫
step
    .isQuestAvailable 40959
    #completewith next
    #label HunterToHunterBMA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 41009 >>交任务 猎人 vs 猎人
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40959
    #title |cRXP_WARN_进入房屋|r
    #completewith HunterToHunterBMA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_跟随箭头进入房屋。|r
step
    .isQuestAvailable 40959
    #requires HunterToHunterBMA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 41009 >>交任务 猎人 vs 猎人
    .target Emmarel Shadewarden
]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Marksmanship
#displayname 神器 武器: 射击
#next a) Order Hall 猎人 第一部分
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44366 >>接受任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这会自动选择标记射手神器|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44366 >>交任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44043 >>接受任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这会自动选择标记射手神器|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44043 >>交任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 40618 >>接受任务 传说武器
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这将自动选择 Marksmanship 神器|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40618 >>交任务 传说武器
    .target Emmarel Shadewarden
step
    #completewith RendezvousWithTheCourierA
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41540 >>接受任务 去见信使
    .target Emmarel Shadewarden
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41540 >>接受任务去见信使
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41540
    .goto 739,48.66,43.46
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
step
    #completewith next
    #label RendezvousWithTheCourierA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使兰斯伯|r 对话。
    .turnin 41540 >>交任务去见信使
    .accept 40392 >>接受任务神射手的召唤
    .target Courier Larkspur
step
    .isQuestAvailable 40959
    .zoneskip 627,1
    #title |cFFFCDC00离开房屋|r
    #completewith RendezvousWithTheCourierA
    .goto 627,58.58,51.30,8 >>|cRXP_WARN_跟随箭头离开房子。|r
step
    #requires RendezvousWithTheCourierA
    .goto 627,71.43,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_信使兰斯伯|r 对话。
    .turnin 41540 >>交任务 去见信使
    .target Courier Larkspur
    .accept 40392 >>接受任务 神射手的召唤
step
    .goto 646,32.28,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .complete 40392,2 --1/1 Speak to Vereesa Windrunner
    .target Vereesa Windrunner
step
    .convertquest 40402,40400 << Alliance
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .turnin 40392 >>交任务 神射手的召唤
    .accept 40402 >>接受任务 秘密行动
    .target Vereesa Windrunner
step
    #completewith next
    #hidewindow
    .gossipoption 47259 >>跟随箭头
    .timer 56,Vereesa 剧情演出
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .complete 40402,1 --1/1 Listen to Vereesa Windrunner
    .target Vereesa Windrunner
    .skipgossipid 47259
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .turnin 40402 >>交任务 秘密行动
    .accept 40419 >>接受任务 营救任务
    .target Vereesa Windrunner
step
    #completewith next
    #hidewindow
    .gossipoption 47260 >>跟随箭头
    .timer 14,Vereesa 剧情演出
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .complete 40419,1 --1/1 Speak to Vereesa and begin the mission
    .target Vereesa Windrunner
    .skipgossipid 47260
step
    .isOnQuest 40419
    .goto 646,32.06,31.98
    .enterScenario 972 >>穿过传送门进入 |cRXP_PICK_Windrunners的遗产|r 场景。
step
    .goto 714,16.33,52.95
    >>|cRXP_WARN_跟随箭头。|r
    .complete 40419,2 --1/1 Travel through the portal to Niskara
step
    .isInScenario 972
    .goto 714,18.47,47.36,25,0
    .goto 714,20.07,49.91
    |cRXP_WARN_Follow the arrow.|r
    .scenario 1988,1 --Survey the rise ahead and elminate Legion patrols.
step
    .isInScenario 972
    .goto 714,23.03,50.41
    >>击杀 |cRXP_ENEMY_艾瑞达 传送门 领主|r。
    .scenario 2000,1 --Eliminate the demon summoners to close the portal.
    .timer 12,墙壁 剧情演出
    .mob Eredar Portal Lord
step
    .isInScenario 972
    .goto 714,38.84,45.41
    >>去见 |cRXP_ENEMY_温蕾萨·风行者|r 的路上击杀 |cRXP_FRIENDLY_恶魔|r 以开路。
    .scenario 2001,1 --Advance into Legion territory and look for Alleria and Orestes.
step
    .isInScenario 972
    .goto 714,40.57,45.66
    >>击杀 |cRXP_ENEMY_Mistress Torvis|r 然后 |cRXP_WARN_等待|r 剧情演出。
    .scenario 2002,1 --Eliminate Mistress Torvis and save Orestes.
step
    .isInScenario 972
    .goto 714,41.13,54.04,25,0
    .goto 714,50.07,57.89
    >>击杀 |cRXP_ENEMY_使徒扎比祖德|r。
    .scenario 2017,1 --Enter the cathedral and defeat Herald Xarbizuld.
    .mob Herald Xarbizuld
step
    .isInScenario 972
    .goto 714,64.28,60.03
    >>击杀 |cRXP_ENEMY_高 大审判官奎玛拉顿|r 和 |cRXP_ENEMY_Gazes of Qormaladon|r。
    .scenario 2063,1 --Defeat High Inquisitor Qormaladon and his eyes
    .mob Fiery Gaze of Qormaladon
    .mob Icy Gaze of Qormaladon
    .mob High Inquisitor Qormaladon
step
    #completewith next
    #hidewindow
    .goto 714,69.98,59.65,20,0
    .goto 714,71.47,73.66,20 >>跟随箭头
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2255,1 --Help Vereesa search the Inquisitor's overlook for Alleria.
    .complete 40419,3 --1/1 Rescue Alleria Windrunner
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Thas'dorah，风行者的遗产|r。
    .scenario 2061,1 --Pick up Thas'dorah, Legacy of the Windrunners.
    .complete 40419,4 --1/1 Take Thas'dorah (Optional)
    .timer 8,过场剧情
step
    .goto 714,70.91,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Vereesa|r 对话然后离开尼斯卡拉。
    .complete 40419,5 --1/1 Talk to Vereesa and leave Niskara
    .target Vereesa and leave Niskara
    .skipgossipid 45238
step
    .goto 627,66.03,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_温蕾萨·风行者|r 对话。
    .turnin 40419 >>交任务 营救任务
    .accept 40952 >>接受任务 猎人对猎人
    .target Vereesa Windrunner
step
    #completewith next
    #label HunterToHunterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40952 >>交任务 猎人 vs 猎人
    .target Emmarel Shadewarden
step
    #title |cRXP_WARN_进入房屋|r
    #completewith HunterToHunterA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_跟随箭头进入房屋。|r
step
    #requires HunterToHunterA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40952 >>交任务 猎人 vs 猎人
    .target Emmarel Shadewarden
]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Survival
#displayname 神器 武器: Survival
#next a) Order Hall 猎人 第1部分
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44366 >>接受任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这会自动获得 Survival 神器|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44366 >>交任务 最后一次冒险
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 44043 >>接受任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这将自动选择 Survival 神器|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 44043 >>交任务 传说的延续
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 40618 >>接受任务 传说武器
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    *|cRXP_WARN_这会自动获得 Survival 神器|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40618 >>交任务 传说武器
    .target Emmarel Shadewarden
step
    #completewith Preparation for the Hunt
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41542 >>接受任务 狩猎准备
    .target Emmarel Shadewarden
step
    .goto 627,60.04,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 41542 >>接受任务狩猎准备
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41542
    .goto 739,48.66,43.46
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
step
    #label Preparation for the Hunt
    .goto 627,71.11,50.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿帕塔·高岭|r 对话。
    .turnin 41542 >>交任务狩猎准备
    .accept 39427 >>接受任务雄鹰之魂的祝福
    .target Apata Highmountain
step
    .goto 627,71.74,50.28
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_至高岭角鹰兽|r。
    .complete 39427,1 --1/1 Fly to Spiritwatch Point
    .target Highmountain Hippogryph
    --.timer 107,Flight Duration
step
    .goto 650,59.53,81.22
    >>|cRXP_WARN_跟随箭头。|r
    .complete 39427,2 --1/1 Get back to Spiritwatch Point
step
    .goto 650,58.91,81.14
    >>击杀 |cRXP_ENEMY_Degar Bloodtotem|r。
    .complete 39427,3 --1/1 Kill Degar Bloodtotem
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_欧恩哈拉|r。
    .complete 39427,4 --1/1 Receive the Eagle Spirit's blessing
    .target Ohn'ahra
step
    .goto 650,60.79,80.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿帕塔·高岭|r 对话。
    .turnin 39427 >>交任务雄鹰之魂的祝福
    .accept 40385 >>接受任务迷雾中的圣矛
    .target Apata Highmountain
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_欧恩哈拉|r。
    .complete 40385,1 --1/1 Take the Eagle Spirit flight to the harbor
    .target Ohn'ahra
step
    .isOnQuest 40385
    .goto 650,60.82,80.83
    .enterScenario 973 >>进入 |cRXP_PICK_The 苍郁角斗士的皮甲法衣 in the 小影|r。
step
    #completewith next
    #hidewindow
    .gossipoption 45080 >>跟随箭头
    .timer 27,Apata 剧情演出
step
    .isInScenario 973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Apata|r 在着陆点对话。
    .scenario 1965,1 --Speak with Apata at the landing site.
    .target Apata at the landing site.
    .skipgossipid 45080
step
    .isInScenario 973
    .goto 694,56.83,46.24
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 1967,1 --Investigate Tideskorn Harbor
step
    .isInScenario 973
    .goto 634,57.51,46.48
    >>击杀 |cRXP_ENEMY_Mist Warder|r 或对 |cRXP_ENEMY_Mist Warder|r 使用你的 |T135834:0|t[经典怀旧服 道具]。
    .scenario 1968,1 --Defeat the Mist Warder using your Freezing Trap.
    .mob Mist Warder
    .usespell 187650
step
    .isInScenario 973
    .goto 634,57.61,46.37
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Runic Wardstone|r。
    .scenario 2055,1 --Obtain the Activated Wardstone
step
    .isInScenario 973
    #title Wardstone (1/3)
    .goto 634,58.96,46.69,24,0
    .goto 634,58.80,44.93
    >>击杀 |cRXP_ENEMY_Mist Warder|r 或对 |cRXP_ENEMY_Mist Warder|r 使用你的 |T135834:0|t[经典怀旧服 道具]。
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Runic Wardstone|r。
    *|cRXP_WARN_注释：|r 顺序已锁定。如果你改变任务顺序，路点位置会错误。
    .scenario 1969,1,1 --1/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (2/3)
    .goto 634,58.62,43.48
    >>击杀 |cRXP_ENEMY_迷雾守护者|r 或对 |cRXP_ENEMY_迷雾守护者|r 使用你的 |T135834:0|t[经典怀旧服 道具]。
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Runic Wardstone|r。
    *|cRXP_WARN_注释：|r 顺序已锁定。如果你改变任务顺序，路点位置会错误。
    .scenario 1969,1,2 --2/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (3/3)
    .goto 634,60.01,43.75
    >>击杀 |cRXP_ENEMY_迷雾守护者|r 或对 |cRXP_ENEMY_迷雾守护者|r 使用你的 |T135834:0|t[冰冻陷阱]。
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Runic Wardstone|r。
    *|cRXP_WARN_注释：|r 顺序已锁定。如果你改变任务顺序，路点位置会错误。
    .scenario 1969,1 --3/3 Obtain more Activated Wardstones
step
    #completewith next
    #hidewindow
    .gossipoption 44907 >>跟随箭头
    .timer 13,Apata 剧情演出
step
    .isInScenario 973
    .goto 634,55.32,42.45,-1
    .goto 694,55.32,42.45,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿帕塔·高岭|r 对话。
    .scenario 1970,1 --Speak with Apata
    .target Apata Highmountain
    .skipgossipid 44906
    .skipgossipid 44907
step
    .isInScenario 973
    .goto 694,55.44,42.54
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_魔法 Harpoon|r。
    .scenario 1971,1 --Use the harpoon to cross the fog.
    .timer 20,过场剧情
step
    .isInScenario 973
    .goto 694,55.95,40.44
    >>使用 |T135815:0|t[照明弹] 并击杀 |cRXP_ENEMY_Illusory Stalkers|r。
    .scenario 1976,1 --Use Flare to reveal and defeat the illusions.
    .mob Illusory Stalker
    .usespell 1543
step
    .isInScenario 973
    .goto 694,54.91,39.35
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_密斯特陷阱|r。
    >>击杀 |cRXP_ENEMY_Illusory Stalkers|r 和 |cRXP_ENEMY_达喀尔|r。
    .scenario 1977,1 --Place a trap in the mists to catch Dakarr.
    .mob Dakarr
    .mob Illusory Stalker
step
    .isInScenario 973
    .goto 694,57.40,37.42
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Mist 陷阱|r。
    >>击杀 |cRXP_ENEMY_Illusory Stalkers|r 和 |cRXP_ENEMY_达喀尔|r。
    .scenario 1985,1 --Trap Dakarr in the mist lair.
    .mob Dakarr
    .mob Illusory Stalker
step
    #completewith next
    #label SlayDakarrA
    .isInScenario 973
    >>击杀 |cRXP_ENEMY_达喀尔|r。
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    #title |cFFFCDC00进入洞穴|r
    #completewith SlayDakarrA
    .goto 694,57.88,34.53,8 >>|cRXP_WARN_跟随箭头进入山洞。|r
step
    #requires SlayDakarrA
    .isInScenario 973
    .goto 694,58.52,33.73
    >>击杀 |cRXP_ENEMY_达喀尔|r。
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    .isInScenario 973
    .goto 694,58.49,33.57
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_雄鹰之爪|r。
    .scenario 1987,1 --Take Talonclaw.
    .complete 40385,2 --1/1 Slay the Highmountain's Bane and reclaim Talonclaw
step
    .goto 694,58.58,33.65
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门前往达拉然|r。
    .complete 40385,3 --1/1 Return to Dalaran
step
    #completewith next
    #label TheSpearInTheShadowA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40385 >>交任务迷雾中的圣矛
    .target Emmarel Shadewarden
step
    #title |cRXP_WARN_进入房屋|r
    #completewith TheSpearInTheShadowA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_跟随箭头进入房屋。|r
step
    #requires TheSpearInTheShadowA
    .goto 627,60.05,53.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .turnin 40385 >>交任务 影中之矛
    .target Emmarel Shadewarden
]])
--Beast Mastery 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 经典怀旧服 道具
#displayname 神器 武器: 野兽控制
#next ac) Order Hall 猎人 第二部分
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery
]])
--Marksmanship 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Marksmanship
#displayname 神器 武器: 射击
#next ac) Order Hall 猎人 第二部分
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Marksmanship
]])
--Survival 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Survival
#displayname 神器 武器: 生存
#next ac) Order Hall 猎人 Part 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Survival
]])

--Hunter Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 猎人 第一部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 猎人
#chapter
#internal

<< Hunter

step
    #completewith The Campaign Begins2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Hunter Part 1@Needs of the Hunters-The Hunter's Call
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_伊墨瑞尔·影卫|r 对话。
    .accept 40618 >>接受任务 传说武器
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isQuestAvailable account,91955
    .goto 627,60.03,53.41
    +暂时选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅一次）|r
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery >>Remix\a) 神器 武器: 野兽控制 >> 野兽控制(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Marksmanship >>Remix\a) 神器 武器: Marksmanship >> Marksmanship(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Survival >>Remix\a) 神器 武器: Survival >> Survival(每秒伤害) Questline
step
    #include ac) Order Hall Hunter Part 2@Eagle's Wings-The Campaign Begins
step
    .zoneskip 739,1
    .goto 739,48.63,43.48
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
]])

-- --------- Mage ---------

--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 奥术
#displayname 神器 武器: 奥术
#next a) Order Hall 法师 Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Arcane
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 44310 >>接受任务 三倍力量
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 44310 >>交任务 三倍力量
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .accept 43441 >>接受任务 第二件武器
    .target Meryl Felstorm
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 43441 >>交任务 第二件武器
    .target Meryl Felstorm
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 41085 >>接受任务法师的武器
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_书籍|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 41085 >>交任务法师的武器
step
    #completewith Wyrmrest Temple
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 42001 >>接受任务艾露尼斯，护法者之杖
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 42001 >>接受任务艾露尼斯，护法者之杖
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>使用 |T1535374:0|t[传送: 达拉然 - 破碎群岛] 或 |TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡雷|r 对话
    .turnin 42001 >>交任务艾露尼斯，护法者之杖
    .target Archmage Kalec
    .accept 42006 >>接受任务 新的威胁
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>前往达拉然的中心
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.01,65.92
    #title |cFFFCDC00跟随箭头|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Clue|r
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Clue|r
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Clue|r
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Device|r
    .turnin 42006 >>交任务 新的威胁
    .accept 42007 >>接受任务被遗忘的敌人
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>点击 |cRXP_PICK_Communication Device|r
    .timer 26,RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42007,1 --1/1 Activate the communication device
step
    >>在任务日志中点击任务提交弹窗。
    .turnin 42007 >>交任务 被遗忘的敌人
    .accept 42008 >>接受任务 巨龙之眼
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>使用 |T254294:0|t[魔枢传送卷轴]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00跟随箭头|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00跟随箭头|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00跟随箭头|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>在任务日志中点击任务提交弹窗。
    .turnin 42008 >>交任务 巨龙之眼
    .accept 42009 >>接受任务驾驭奥术
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>击杀 |cRXP_ENEMY_奥术畸变体|r 来填充进度条。
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>在任务日志中点击任务提交弹窗。
    .turnin 42009 >>交任务驾驭奥术
    .accept 42010 >>接受任务释放奥能
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>在任务日志中点击任务提交弹窗。
    .turnin 42010 >>交任务释放奥能
    .accept 42011 >>接受任务 魔枢宝库
step
    .isOnQuest 42011
    .goto 114,27.52,26.16
    .enterScenario 1101 >>进入 Nexus
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>杀死 |cRXP_ENEMY_Scions|r
    .scenario 2466,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Magic
step
    .isInScenario 1101
    .goto 736,23.74,67.39,15,0
    .goto 736,22.07,66.29,15,0
    .goto 736,21.49,58.31,15,0
    .goto 736,19.1,51.58,25,0
    .goto 736,20.16,47.84,25,0
    .goto 736,21.75,40.63,25,0
    .goto 736,22.48,35.61,25,0
    .goto 736,26.55,34.35
    #title |cFFFCDC00跟随箭头|r
    >>使用 |T135739:0|t[Shimmer] 或 |T135736:0|t[道具] 穿过障碍，或背对障碍跳跃通过。
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 44,RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>击杀 |cRXP_ENEMY_艾露尼斯的回响|r
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>跟随箭头然后等待 |cRXP_FRIENDLY_艾索雷苟斯|r 出现
    .timer 38,RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>杀死 |cRXP_ENEMY_节点亲王拜拉尔|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_等待|r |cRXP_FRIENDLY_艾索雷苟斯|r |cRXP_WARN_出现|r。
    .vehicle >>点击 |cRXP_PICK_艾索雷苟斯|r
    .timer 35,RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>杀死 |cRXP_ENEMY_节点亲王拜拉尔|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    *在紫色魔法场内使用 |cRXP_WARN_|T237448:0|t[ExtraActionButton]|r
    *|cRXP_WARN_注意漂浮的泡泡，它们会把你击回去|r。
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    #label Artifact Weapon: Arcane
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击中间的 |cRXP_PICK_武器|r
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡雷|r 对话
    .turnin 42011 >>交任务魔枢宝库
    .target Archmage Kalec
    .accept 41114 >>接受任务勇士归来
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .zone 627 >>前往达拉然(检查你的传送)
    .usespell 224869
    .usespell 193759
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在 Violet Citadel 内与 |cRXP_FRIENDLY_大法师卡雷|r 对话
    .turnin 42011 >>交任务魔枢宝库
    .timer 10,RP
    .target Archmage Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a)神器武器:火焰
#displayname 神器 武器: 火焰
#next a) Order Hall 法师 Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Fire
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 44310 >>接受任务三倍力量
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 44310 >>交任务三倍力量
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .accept 43441 >>接受任务第二件武器
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 43441 >>交任务第二件武器
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 41085 >>接受任务法师的武器
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_书籍|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 41085 >>交任务法师的武器
step
    #completewith Crystal's Message
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 40267 >>接受任务意外讯息
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 40267 >>接受任务意外讯息
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>使用 |T132776:0|t[Glowing Resonate 水晶]
    .timer 40,RP
    .use 130131
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰克逊·瓦吉斯|r 对话
    .accept 44240 >>接受任务现在的橙就是过去的紫
    .turnin 44240 >>交任务现在的橙就是过去的紫
    .target Jackson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>跟随箭头
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰克逊·瓦吉斯|r 对话
    .accept 44240 >>接受任务现在的橙就是过去的紫
    .turnin 44240 >>交任务 现在的橙就是过去的紫
    .target Jackson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00跟随箭头|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00跟随箭头|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
-- step
--     .isQuestTurnedIn 42479
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
step
    #completewith next
    #label Dalaran Crater
    >>前往达拉然中心并 |TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>点击 |cRXP_PICK_传送门|r
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>前往Dalaran中央并 |TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00跟随箭头|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师茉德拉|r 对话
    .turnin 40267 >>交任务意外讯息
    .target Archmage Modera
    .accept 40270 >>接受任务救赎之路
    .timer 99,RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾萨斯·夺日者|r 对话
    .turnin 40270 >>交任务救赎之路
    .target Aethas Sunreaver
    .accept 11997 >>接受任务冰冻之焰
    .timer 12,RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>杀死 |cRXP_ENEMY_冰魂咒术师|r 躲避气流
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>摧毁 |cRXP_ENEMY_永冻冰墙|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>摧毁 |cRXP_ENEMY_永冻冰墙|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>摧毁 |cRXP_ENEMY_永冻冰墙|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>摧毁 |cRXP_ENEMY_永冻冰墙|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>杀死 |cRXP_ENEMY_波|r 敌人
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>杀死 |cRXP_ENEMY_莉安达·逐日者|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    #label Artifact Weapon: Fire
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_烈焰之击|r
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师茉德拉|r 对话
    .turnin 11997 >>与 Greyian Storman 对话
    .target Archmage Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .zone 627 >>进入达拉然（检查你的 Teleports）
    .usespell 224869
    .usespell 193759
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师茉德拉|r 对话
    .turnin 11997 >>交任务 冰冻之火
    .target Archmage Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器: 福斯特 法师
#displayname 神器 武器: 福斯特
#next a) Order Hall 法师 Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Frost Mage
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 44310 >>接受任务 三倍力量
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 44310 >>交任务 三倍力量
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .accept 43441 >>接受任务 第二件武器
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 43441 >>交任务 第二件武器
    .target Meryl Felstorm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 41085 >>接受任务法师的武器
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_书籍|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .turnin 41085 >>交任务 法师的武器
step
    #completewith Speak with Meryl
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 42452 >>接受任务 寻找黑檀之寒
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 42452 >>接受任务寻找黑檀之寒
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Clues|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>与 |cRXP_FRIENDLY_Meryl|r 对话
    .timer 54,RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>与 |cRXP_FRIENDLY_Meryl|r 对话
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42452 >>交任务寻找黑檀之寒
    .target Meryl Felstorm
    .accept 42477 >>接受任务衰老的戴奥
    .accept 42476 >>接受任务逆风营地
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42452 >>交任务寻找黑檀之寒
    .target Meryl Felstorm
    .accept 42477 >>接受任务衰老的戴奥
    .accept 42476 >>接受任务逆风营地
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿洛迪|r 对话
    .accept 42455 >>接受任务阿洛迪的宝石
    .target Alodi
step
    .isQuestAvailable 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestAvailable 41113
    #completewith Bank of Dalaran
    .goto 735,63.77,49.66
    .zone 627 >>点击 |cRXP_PICK_传送门|r 或使用 |T1535374:0|t[传送: 达拉然 - 破碎者 Isles]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00跟随箭头|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran2
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith Bank of Dalaran2
    .goto 734,57.34,90.63
    .zone 627 >>点击 |cRXP_PICK_传送门|r 或使用 |T1535374:0|t[传送: 达拉然 - 破碎群岛]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran2
    #title |cFFFCDC00跟随箭头|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>与 |cRXP_FRIENDLY_格鲁托妮雅|r 对话
    .timer 26,RP
    .target Glutonia
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_宝石|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>使用 |T254294:0|t[诅咒之地卷轴]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00跟随箭头|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Daio|r 对话
    .complete 42477,3 --1/1 Speak with Daio
    .timer 15,RP
    .skipgossipid 45996
    .skipgossipid 45997
    .skipgossipid 45998
    .target Daio
step
    #loop
    .goto 17,32.97,44.98,10,0
    .goto 17,32.22,45.76,10,0
    .goto 17,32.77,45.79,10,0
    >>击杀涌来的敌人。
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,RP
    .mob Fiendish Trickster
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    #completewith next
    >>在 |cRXP_WARN_剩余 10 秒|r 使用 |T254294:0|t[卡拉赞 炽蓝丝绸]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>使用 |T254294:0|t[卡拉赞 炽蓝丝绸]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Pole|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击帐篷里的 |cRXP_PICK_Note|r。
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿洛迪|r 对话
    .turnin 42455 >>交任务阿洛迪的宝石
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿洛迪|r 对话
    .turnin 42455 >>交任务 阿洛迪的宝石
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42476 >>交任务逆风营地
    .target Meryl Felstorm
    .turnin 42477 >>交任务 戴奥·枯朽
    .accept 42479 >>接受任务法师猎手
    .target Meryl Felstorm
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42476 >>交任务 逆风遗址
    .target Meryl Felstorm
    .turnin 42477 >>交任务衰老的戴奥
    .accept 42479 >>接受任务 法师猎手
    .target Meryl Felstorm
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥鲁丹·白云|r 对话
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>点击 |cRXP_PICK_传送门|r
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>点击 |cRXP_PICK_传送门|r
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥鲁丹·白云|r 对话
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,RP
    .skipgossipid 44179
    .target Aludane Whitecloud
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00跟随箭头|r
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,26.8,49.03
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fel Dampening 结界|r
    *|cRXP_WARN_Try flying some parts of this scenario allow it|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fel Dampening 结界|r
    *|cRXP_WARN_在允许飞行的场景部分尝试飞行|r。
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,30.11,48.33
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fel Dampening 结界|r
    *|cRXP_WARN_Try flying some parts of this scenario allow it|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00跟随箭头|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 50,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r，完成引导并击杀来临的敌人。
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob 愤怒卫士
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r，完成引导后击杀敌人。
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob 愤怒卫士
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r，完成引导后击杀敌人。
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Fiendish Trickster
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r，完成引导并击杀来临的敌人。
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>杀死 |cRXP_ENEMY_巴拉杜尔|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadur
step
    .goto 619,67.05,92.74
    #label Artifact Weapon: Frost Mage
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42479 >>交任务法师猎手
    .target Meryl Felstorm
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .turnin 42479 >>交任务 法师猎手
    .target Meryl Felstorm
-- step
--     .goto 735,53.2,41.44
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .accept 42429 >>Accept Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith next
--     #label Council of Tirisfal
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
-- step
--     #completewith Council of Tirisfal
--     .zoneskip 627
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
-- step
--     #requires Council of Tirisfal
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
-- step
--     #completewith next
--     #label Memories of Ebonchill
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith Memories of Ebonchill
--     .zoneskip 734
--     .cast 193759 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
--     .usespell 193759
-- step
--     #requires Memories of Ebonchill
--     .goto 734,53.25,70.58,20,0
--     .goto 734,59.56,56.41,20,0
--     .goto 735,53.30,41.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
]])
--Arcane 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 奥术
#displayname 神器 武器: 奥术
#next ac) Order Hall 法师 Part 2
#internal

<< Mage

step
    #include a) Artifact Weapon: Arcane
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 火焰
#displayname 神器 武器: 火焰
#next ac) Order Hall 法师 第二部分
#internal

<< Mage

step
    #include a) Artifact Weapon: Fire
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 冰霜 法师
#displayname 神器 武器: 福斯特
#next ac) Order Hall 法师 Part 2
#internal

<< Mage

step
    #include a) Artifact Weapon: Frost Mage
]])

--Mage Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 法师 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 法师
#chapter
#internal

<< Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Mage Part 1@OrderHallMage1-Dreadlord's Prize
step
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梅瑞尔·邪风|r 对话
    .target Meryl Felstorm
    .accept 41085 >>接受任务法师的武器
step
    .isQuestAvailable 41085
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fire >>Remix\a) 神器 武器: 火焰 >> 火焰(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arcane >>Remix\a) 神器 武器: 奥术 >> 奥术(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost Mage >>RestedXP Legion Remix\a) 神器 武器: 冰霜 法师 >> 冰霜(每秒伤害) Questline
step
    >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .accept 41114 >>接受任务勇士归来
    .usespell 193759
step
    >>使用 |T1536440:0|t[传送: 守护者圣殿]。
    .complete 41114,1 --1/1 Teleport to the Hall of the Guardian
    .usespell 193759
step
    #include ac) Order Hall Mage Part 2@Champion's Return-OrderHallMage3
]])

-- --------- Monk ---------

--Brewmaster
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Brewmaster
#displayname 神器 武器: Brewmaster
#next a) Order Hall 武僧 Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Brewmaster
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>使用 |T775462:0|t[好战角斗士的板甲护腿]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 44424 >>接受任务三途三修
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 44424 >>交任务三途三修
    .target 丽丽·风暴烈酒
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 43973 >>接受任务两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 43973 >>交任务两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 40636 >>接受任务 准备出击
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 40636 >>交任务 Prepare to Strike
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 42762 >>接受任务云游者之友
    .target Iron-Body Ponshu
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰克泰克|r 对话
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    #title |cFFFCDC00Leave House|r
    .goto 709,49.71,47.37,10 >>离开房屋
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰克泰克|r 对话
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,RP
    .skipgossipid 45493
    .target Tak-Tak
step
    #label The Wanderer's Companion
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r 对话
    .turnin 42762 >>交任务云游者之友
    .target The Monkey King
    .accept 42768 >>接受任务纯净之谜
    .accept 42766 >>接受任务美酒之谜
    .accept 42767 >>接受任务土地之谜
step
    #completewith next
    #label Pure Water Core
    >>击杀 |cRXP_ENEMY_亵渎者玛维丝|r 和 |cRXP_ENEMY_被亵渎的水灵|r，拾取他们的战利品 |T132844:0|t[|cRXP_LOOT_Pure Water 岩核|r]。
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>使用 |T615341:0|t[纯洁之壶]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>杀死 |cRXP_ENEMY_亵渎者玛维丝|r 和 |cRXP_ENEMY_被亵渎的水灵|r。拾取他们的 |T132844:0|t[|cRXP_LOOT_Pure Water 岩核|r]。
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_谷物|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>使用 |T615341:0|t[纯洁之壶]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_谷物|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>击杀 |cRXP_ENEMY_瓦迪斯|r 和 |TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Keg|r。
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    #title |cFFFCDC00进入房屋|r
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>进入房子并上楼。
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>杀死 |cRXP_ENEMY_瓦迪斯|r 和 |TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Keg|r。
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r |cRXP_WARN_在你旁边|r 对话
    .turnin 42766 >>交任务美酒之谜
    .target The Monkey King
    .turnin 42768 >>交任务纯净之谜
    .turnin 42767 >>交任务土地之谜
    .accept 42957 >>接受任务东游记
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r 对话
    .turnin 42957 >>交任务 东游记
    .accept 42868 >>接受任务 美猴王的挑战
    .disablecheckbox
step
    #completewith Journey to the East
    .zoneskip 376,1
    .cast 311861 >>使用 |T615341:0|t[纯洁之壶]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r 对话
    .turnin 42957 >>交任务 东游记
    .accept 42868 >>接受任务美猴王的挑战
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>跟随箭头
step
    #requires Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r 对话
    .goto 371,55.42,58.14
    .turnin 42957 >>交任务东游记
    .accept 42868 >>接受任务 美猴王的挑战
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Brewpot|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>点击 |cRXP_PICK_布鲁 法球|r
    .timer 12,RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>点击 |cRXP_PICK_Flour|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>点击 |cRXP_PICK_木桶|r
    .timer 11,RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>点击 |cRXP_PICK_Banana|r
    .timer 10,RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Objects|r
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_美猴王|r 对话
    .turnin 42868 >>交任务美猴王的挑战
    .target The Monkey King
    .accept 42765 >>接受任务青龙试炼
step
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00跟随箭头|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>进入青龙寺
    .timer 40,RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00跟随箭头|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_等待剧情演出|r。
    *|cRXP_WARN_在此场景中无法骑乘|r。
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_大门|r 并向前移动。
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>击杀 |cRXP_ENEMY_审判团夺灵者|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>杀死 |cRXP_ENEMY_审判团夺灵者|r 和他的 |cRXP_ENEMY_minions|r。
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>击杀 |cRXP_ENEMY_审判庭拷问者|r 和他的 |cRXP_ENEMY_minions|r。
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>击杀 |cRXP_ENEMY_审判团夺灵者|r 和他的 |cRXP_ENEMY_minions|r。
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>杀死 |cRXP_ENEMY_贝尔菲亚|r
    .scenario 2650,1
    .timer 20,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00跟随箭头|r
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00跟随箭头|r
    .scenario 2661,1
    .timer 22,RP
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>击杀多波 |cRXP_ENEMY_Demons|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>杀死一波接一波的 |cRXP_ENEMY_Demons|r
    .scenario 2663,2,100
    .scenario 2663,1
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,69.73,60.48
    >>杀死 |cRXP_ENEMY_Lord Korithis|r
    *|cRXP_WARN_无法获得更精确的箭头|r。
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korithis
step
    .isInScenario 1137
    #label Artifact Weapon: Brewmaster
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    *|cRXP_WARN_无法获得更精确的箭头|r。
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玉珑|r 对话
    *|cRXP_WARN_无法获得更精确的箭头|r。
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>点击 |cRXP_PICK_玉珑|r
    .timer 30,RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玉珑|r 对话
    *|cRXP_WARN_无法提供更准确的箭头|r。
    .scenario 2701,1
    .timer 30,RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .turnin 42765 >>交任务 青龙试炼
    .target Iron-Body Ponshu
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Mistweaver
#displayname 神器 武器: Mistweaver
#next a) Order Hall 武僧 Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Mistweaver
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>使用 |T775462:0|t[好战角斗士的板甲护腿]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 44424 >>接受任务 三途三修
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 44424 >>交任务 三途三修
    .target 丽丽·风暴烈酒
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 43973 >>接受任务 两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 43973 >>交任务 两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 40636 >>接受任务 准备出击
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 40636 >>交任务 Prepare to Strike
step
    #completewith Taran Zhu
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 41003 >>接受任务 皇帝的礼物
    .target Iron-Body Ponshu
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰克泰克|r 对话
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>跟随箭头
step
    #requires MistweaverScenario
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_泰克泰克|r 对话
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_等待剧情演出|r。
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>对 |cRXP_FRIENDLY_祝踏岚|r 使用 |T1360980:0|t[活血术]。
    .scenario 2091,1
    .timer 26.5,RP
    .target 祝踏岚
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +对 |cRXP_FRIENDLY_祝踏岚|r 和你的团队使用 |T1360980:0|t[活血术]来保持他们活着或复活他们。
    *|cRXP_WARN_这很重要，因为当他处于死亡的状态时你无法继续|r。
    .target 祝踏岚
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>杀死 |cRXP_ENEMY_地狱卫士萨潘|r
    .scenario 2098,4
    .timer 30,RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_非离|r 对话
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_陶矢|r 对话
    .scenario 2100,3
    .skipgossipid 44888
    .target 陶矢
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_鹰眼大师砮荣|r对话
    .scenario 2100,2
    .skipgossipid 44887
    .target Hawkmaster Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_祝踏岚|r 对话
    .scenario 2131,1
    .skipgossipid 45376
    .target 祝踏岚
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>杀死 |cRXP_ENEMY_阿斯帕修斯|r
    .scenario 2131,2
    .mob Aspersius
step
    #label Artifact Weapon: Mistweaver
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .complete 41003,2 --1/1 Acquire Sheilun
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_在"使用中 物品"部分|r有一个宏，与 |cRXP_FRIENDLY_祝踏岚|r 对话后狂按它。
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >>离开副本
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Spam 宏|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .turnin 41003 >>交任务 皇帝的礼物
    .macro Leave Instance,236367 >>离开副本
    .target Iron-Body Ponshu
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>进入神殿
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .turnin 41003 >>交任务 皇帝的礼物
    .target Iron-Body Ponshu
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#name a) 神器 武器: 踏风
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname 神器 武器: 踏风
#next a) Order Hall 武僧 Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Windwalker
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>使用 |T775462:0|t[禅宗朝圣]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 44424 >>接受任务 三途三修
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 44424 >>交任务 三途三修
    .target 丽丽·风暴烈酒
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 43973 >>接受任务 两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 43973 >>交任务 两条道路，两件武器
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 40636 >>接受任务 准备出击
    .target Iron-Body Ponshu
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Iron-Body Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .turnin 40636 >>交任务 Prepare to Strike
step
    #completewith Legend of the Sands
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .target Iron-Body Ponshu
    .accept 40569 >>接受任务沙漠传奇
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丽丽·风暴烈酒|r 对话
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target 丽丽·风暴烈酒
step
    #completewith Prepare To Strike
    #title |cFFFCDC00进入房屋|r
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>进入房屋
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丽丽·风暴烈酒|r 对话
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target 丽丽·风暴烈酒
step
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .turnin 40569 >>交任务沙漠传奇
    .accept 40633 >>接受任务出去探险！
    .timer 48,RP
    .target Iron-Body Ponshu
--rp shenagans possible
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_在角色扮演后|r点击 |cRXP_WARN_Kite|r。
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00跟随箭头|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target 丽丽·风暴烈酒
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丽丽·风暴烈酒|r 对话
    .turnin 40633 >>交任务出去探险！
    .target 丽丽·风暴烈酒
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法奥瑞斯国王|r对话
    .accept 40634 >>接受任务沙地里的雷鸣
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>击杀 纳德尔|cRXP_ENEMY_。拾取它的 |T348535:0|t[|r旋风精华|cRXP_LOOT_]。
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    #title |cFFFCDC00Leave House|r
    .goto 249,54.92,33.66,15 >>离开房屋
step
    #requires Clue Discovered
    #title |cFFFCDC00手动飞行|r
    .goto 249,45.65,14.35
    >>杀死 |cRXP_ENEMY_纳德尔|r。拾取他的 |T348535:0|t[|cRXP_LOOT_Essence of Whirlwind].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法奥瑞斯国王|r对话
    .turnin 40634 >>交任务沙地里的雷鸣
    .target King Phaoris
    .accept 40570 >>接受任务 一步登天
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>进入建筑
    #title |cFFFCDC00Enter Building|r
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法奥瑞斯国王|r对话
    .turnin 40634 >>交任务 沙地里的雷鸣
    .target King Phaoris
    .accept 40570 >>接受任务一步登天
step
    #completewith next
    #label Essence of the Whirlwind
    >>使用 |T348535:0|t[精华 of the Whirlwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    #title |cFFFCDC00离开房屋|r
    .goto 249,54.93,33.94,13 >>离开建筑
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>使用 |T348535:0|t[旋风精华]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isOnQuest 40570
    .goto 716,30.9,45.18
    .enterScenario 983 >>进入 |cRXP_PICK_踏风|r 场景。
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>杀死 |cRXP_ENEMY_尖啸之风|r 和 |cRXP_ENEMY_次级小沙粒|r。
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00跟随箭头|r
    >>躲避龙卷风并进入绿色漩涡以获得速度加成。
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>在龙卷风前面等待。
    .timer 21
step
    #requires Tornadoes
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00跟随箭头|r
    >>躲避龙卷风并进入绿色旋涡以获得速度加成。
    .scenario 2013,1
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Stormtouched 法球|r
    .scenario 2007,1,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Stormtouched 法球|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Stormtouched 法球|r
    .scenario 2007,1,3
    .timer 34,RP
    .mob Storm Cloud
    .mob Howling Winds
    .mob Lesser Sandling
step
    #completewith next
    #hidewindow
    #label Scion of Typhinius
    .isInScenario 983
    #title |cFFFCDC00跟随箭头|r
    .scenario 2007,2
    .timer 8,RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>等待 |cRXP_ENEMY_泰菲缪斯的子嗣|r 刷新。
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00跟随箭头|r
    >>杀死 |cRXP_ENEMY_泰菲缪斯的子嗣|r
    .scenario 2007,2
    .timer 9,RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>杀死他的 |cRXP_ENEMY_Minions|r
    .scenario 2008,1,1
    .timer 5,RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>杀死他的 |cRXP_ENEMY_Minions|r
    .scenario 2008,1,2
    .timer 7,RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>杀死他的 |cRXP_ENEMY_Minions|r
    .scenario 2008,1,3
    .timer 15,RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>杀死 |cRXP_ENEMY_佐奥拉克|r
    .scenario 2008,1,4
    .timer 3,RP
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_佐奥拉克|r
    .scenario 2009,1
    .timer 25,RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>杀死 |cRXP_ENEMY_泰菲缪斯|r
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    #label Artifact Weapon: Windwalker
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Fists|r
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丽丽·风暴烈酒|r 对话
    .turnin 40570 >>交任务 一步登天
    .target 丽丽·风暴烈酒
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>点击 Kite
    .timer 28,RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_丽丽·风暴烈酒|r 对话
    .turnin 40570 >>交任务 一步登天
    .target 丽丽·风暴烈酒
-- step
--     .isOnQuest 40570
--     .zone 249 >>Leave the Instance(Right-Click your player frame) or press the macro.
--     .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
-- step
--     -- .xp <11,1
--     #completewith next
--     #hidewindow
--     #label Into The Heavens
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout
-- step
--     -- .xp <11,1
--     #completewith Into The Heavens
--     .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
--     .usespell 126892
-- step
--     -- .xp <11,1
--     #requires Into The Heavens
--     #completewith next
--     #label Into The Heavens2
--     .goto 709,49.11,58.67
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
]])
--Brewmaster 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name z) 神器 武器: Brewmaster
#displayname 神器 武器: Brewmaster
#next ac) Order Hall 武僧 Part 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Brewmaster
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Mistweaver
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname 神器 武器: Mistweaver
#next ac) Order Hall 武僧 第二部分
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Mistweaver
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 踏风
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#displayname 神器 武器: 踏风
#next ac) Order Hall 武僧 Part 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Windwalker
]])

--Monk Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 武僧 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 武僧
#chapter
#internal

<< Monk

step
    #completewith The Fight Begins2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Monk Part 1@MonkStart1-The Dawning Light
step
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_金刚不坏彭戍|r 对话
    .accept 40636 >>接受任务 准备出击
    .target Iron-Body Ponshu
step
    .isQuestAvailable 40636
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Windwalker >>RestedXP Legion Remix\a) 神器 武器: 踏风 >> 踏风(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Brewmaster >>RestedXP Legion Remix\a) 神器 武器: Brewmaster >> Brewmaster(坦克) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Mistweaver >>RestedXP Legion Remix\a) 神器 武器: Mistweaver >> Mistweaver(治疗者) 任务线
step
    #include ac) Order Hall Monk Part 2@Matter of Planning-The Fight Begins
step << Alliance
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step << Horde
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_新兵达尼尔|r |cRXP_WARN_在你旁边|r 对话
    .accept 42186 >>接受任务 力量增长
    .target Initiate Da-Nel
]])

-- --------- Paladin ---------

--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：神圣圣骑士
#displayname 神器 武器: 神圣
#next a) 圣骑士职业大厅 第1部分
#internal

<< Paladin

step
    #completewith Artifact Weapon: Holy Paladin
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44370 >>接受任务 集齐你的武器
    .skipgossipid 45133
    .choose 1271766
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44370 >>交任务 集齐你的武器
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44063 >>接受任务 强化你的武器库
    .choose 1271766
    .skipgossipid 45133
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44063 >>交任务 强化你的武器库
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 40408,1 >>接受任务 传说武器
    .skipgossipid 45133
    .choose 1271766
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 40408,1 >>交任务 传说武器
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith Lanigosa
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42231 >>接受任务神秘的圣骑士
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵莉亚德琳|r 对话
    .accept 42881 >>接受任务 勇士：女伯爵莉亚德琳
    .turnin 42881 >>交任务 勇士：女伯爵莉亚德琳
    .target 女伯爵莉亚德琳
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦德|r 对话
    .turnin 42231 >>交任务神秘的圣骑士
    .target Travard
    .accept 42377 >>接受任务加弗德的踪迹
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦德|r 对话
    .turnin 42231 >>交任务 神秘的圣骑士
    .target Travard
    .accept 42377 >>接受任务 加弗德的踪迹
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>跟随箭头
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦德|r 对话
    .turnin 42231 >>交任务 神秘的圣骑士
    .target Travard
    .accept 42377 >>接受任务 加弗德的踪迹
step
    #completewith next
    #label Wyrmrest Temple
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>进入达拉然的中心
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith next
    #label Lanigosa
    #hidewindow
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
step
    #completewith Lanigosa
    .goto 115,59.95,53.08
    .gossipoption 45405 >>与 |cRXP_FRIENDLY_兰妮苟萨|r 对话
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00跟随箭头|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_纸条|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_破碎的雕像|r |cRXP_WARN_你可能需要点击两次|r。
    .timer 51,RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00跟随箭头|r
    >>|cRXP_WARN_在继续之前确保已点击|r |cRXP_PICK_破碎的雕像|r。
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00跟随箭头|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_兰妮苟萨|r 对话
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>击杀 |cRXP_ENEMY_尤顿|r
    *|cRXP_WARN_如有需要，治疗 |cRXP_FRIENDLY_兰妮苟萨|r|r。
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_火花|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_兰妮苟萨|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔瓦德|r 对话
    .turnin 42377 >>交任务加弗德的踪迹
    .target Travard
    .accept 42120 >>接受任务白银之手
step
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00跟随箭头|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>使用 |T254294:0|t[提瑞斯法营地卷轴]
    .use 173523
step
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00跟随箭头|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_跟随箭头|r。
    .timer 30,RP
step
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>与 |cRXP_FRIENDLY_塔瓦德|r 对话。
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00跟随箭头|r
    >>前往陵墓，击杀 |cRXP_ENEMY_失控的无面者|r 和 |cRXP_ENEMY_血肉之子|r
    .scenario 2444,1 --Go to the tomb of Tyr with Travard.
    .mob Masterless Faceless One
    .mob Flesh Spawn
step
    .goto 20,38.28,48.13,25,0
    .goto 20,40.34,55.04,25,0
    .goto 20,37.42,61.01,25,0
    .goto 20,34.49,54.46,25,0
    .goto 20,37.74,64.36
    .isInScenario 1092
    >>击杀 |cRXP_ENEMY_失控的无面者|r、|cRXP_ENEMY_血肉之子|r 和 |cRXP_ENEMY_疯狂的葛诺兹|r
    *|cRXP_WARN_治疗你的队伍（当他们受伤时），否则无法继续|r。
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_等待剧情演出|r — |cRXP_WARN_治疗你的队伍（当他们受伤时），否则无法继续|r。
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87,15,0
    .goto 20,62.67,74.52
    .isInScenario 1092
    >>护送 |cRXP_FRIENDLY_塔瓦德|r — |cRXP_WARN_治疗你的队伍（当他们受伤时），否则无法继续|r。
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>击杀 |cRXP_ENEMY_恐怖畸体|r — |cRXP_WARN_治疗你的队伍（当他们受伤时），否则无法继续|r。
    .scenario 2453,1,1
    .timer 30,RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00跟随箭头|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00跟随箭头|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>净化 |cRXP_FRIENDLY_Righteous Crusaders|r 并治疗 |cRXP_FRIENDLY_银色黎明使者|r
    *|cRXP_WARN_在场景目标中还有额外的净化技能|r。
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Argent Dawnbringer
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00跟随箭头|r
    .scenario 2456,1
    .timer 180,RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>击杀一波波敌人 |cRXP_WARN_并治疗你的队伍|r。
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>离开副本（右键点击你的角色框架）或按下宏。
    .macro Leave Instance,236367 >>离开副本
step
    .isQuestAvailable 44370,44063
    #label Artifact Weapon: Holy Paladin
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42120 >>交任务 白银之手
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 38576 >>接受任务 圣光之愿会师
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42120 >>交还 白银级 Hand
    .target 玛克斯韦尔·泰罗索斯男爵
step << Alliance
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>跟随箭头
step << Alliance
    #requires Light's Hope Sanctum
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38576 >>交任务 圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>跟随箭头
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38576 >>交任务 圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 圣骑士 防护
#displayname 神器武器：防护
#next a) Order Hall 迪菲亚兄弟会 Part 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Paladin Protection
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44370 >>接受任务 Gather 你的 Weapons
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44370 >>交任务 Gather 你的 Weapons
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44063 >>接受任务 Forge 你的 Weapons
    .choose 1271767
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44063 >>交任务 Forge 你的 Weapons
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 40408,1 >>接受任务 传说武器
    .choose 1271767
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 40408,1 >>交任务 传说武器
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith Orik and Tahu
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵莉亚德琳|r 对话
    .accept 42881 >>接受任务 勇士: 女伯爵莉亚德琳
    .turnin 42881 >>交任务 勇士: 女伯爵莉亚德琳
    .target 女伯爵莉亚德琳
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,49.83,72.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 42000 >>接受任务 寻找真相
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .zoneskip 627,1
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 42000 >>接受任务 寻找真相
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>与 |cRXP_FRIENDLY_Orik and Tahu|r 对话
    .timer 39,RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧瑞克·图哈特|r 对话
    .turnin 42000 >>交任务 寻找真相
    .target Orik Trueheart
    .accept 42002 >>接受任务 Journey to Northrend
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>点击 |cRXP_PICK_Argent 角鹰兽|r
    .timer 12,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧瑞克·图哈特|r 对话
    .turnin 42002 >>交任务 Journey to Northrend
    .target Orik Trueheart
    .accept 42005 >>接受任务 Epilogue: The Cycle Renews
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塔胡·慧风|r 对话
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target 塔胡·慧风
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Grave|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42005,3 --1/1 Complete the ritual
step
    .cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]
    .itemcount 238727,1
    .use 238727
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_欧瑞克·图哈特|r 在 Dalaran 对话
    .turnin 42005 >>交任务 Epilogue: The Cycle Renews
    .target Orik Trueheart
    .accept 42017 >>接受任务 The Altar of Truth Seekers
step
    .isOnQuest 42017
    .goto 627,72.18,50.45
    .vehicle >>点击 |cRXP_PICK_Argent 角鹰兽|r
    .timer 29,RP
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_等待剧情演出|r。
    .timer 16,RP
step
    #title |cFFFCDC00跟随箭头|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00跟随箭头|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>击杀 |cRXP_ENEMY_Gatekeepers|r
    *如果需要，拾取长矛并使用 ExtraActionButton 造成大量伤害。
    .mob Inna the Cryptstalker
    .mob Shae
step
    #requires Inna the Cryptstalker
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker2
    .isInScenario 1082
    .scenario 2391,1 --Get to the shrine.
step
    #requires Inna the Cryptstalker
    #completewith Inna the Cryptstalker2
    .isInScenario 1082
    #title |cFFFCDC00跟随箭头|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>躲闪龙卷风，靠近墙壁右侧保持。
    .timer 35,RP
    *击杀 |cRXP_ENEMY_德克加尔盾卫|r 和 |cRXP_ENEMY_幽灵塑风者|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_在门附近等待剧情演出|r。
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>使用 |T524354:0|t[圣盾术] 或其他强力防御技能，如需要可自我治疗。
    *|cRXP_WARN_点击门后不久会受到重创伤害。|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #completewith magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_大门|r
    .timer 10,活下来
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Big 防御型|r
    >>使用 |T524354:0|t[圣盾术] 或其他强大防御技能，如果需要请自我治疗。
    *|cRXP_WARN_点击门后不久会造成巨大伤害。|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00跟随箭头|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>击杀 |cRXP_ENEMY_真理追寻者伊格瑞姆|r |cRXP_WARN_，如果他被冻结就击杀 |cRXP_ENEMY_符文塑造者格里赛达|r|r，然后等待剧情演出。
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>与 |cRXP_FRIENDLY_真理追寻者伊格瑞姆|r 对话
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>击杀 |cRXP_ENEMY_真理追寻者伊格瑞姆|r |cRXP_WARN_，如果他被冻结就击杀 |cRXP_ENEMY_符文塑造者格里赛达|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .isOnQuest 42017
    .goto 634,83.95,9.55,10,0
    .goto 634,85.47,10.83
    .vehicle >>点击 |cRXP_PICK_Argent 角鹰兽|r
    .target Argent Hippogryph
    .timer 20,RP
step
    .isQuestAvailable 38576
    .isOnQuest 42017
    #label Artifact Weapon: Paladin Protection
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r |cRXP_WARN_在 达拉然|r 对话。
    .turnin 42017 >>交任务 The Altar of Truth Seekers
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 38576 >>接受任务 圣光之愿会师
step
    .isQuestTurnedIn 38576
    .isOnQuest 42017
    #completewith next
    #label Shrine of the Truthguard3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42017 >>交任务 真理守护者祭坛
    .target 玛克斯韦尔·泰罗索斯男爵
step << Alliance
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,34.98,66.58,20,0
    .goto 627,32.65,69.91
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step << Horde
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,58.71,20.66,20,0
    .goto 627,61.93,13.5
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
step
    #requires Shrine of the Truthguard3
    .isQuestTurnedIn 38576
    .goto 24,49.88,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42017 >>交任务 真理守护者祭坛
    .target 玛克斯韦尔·泰罗索斯男爵
step << Alliance
    .isQuestAvailable 38576
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    .isQuestAvailable 38576
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>跟随箭头
step << Alliance
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum
    .isQuestAvailable 38576
    #hidewindow
    .goto 627,61.93,13.5,30 >>跟随箭头
step << Horde
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .isQuestAvailable 38576
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38576 >>交任务 圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith A United Force
    #hidewindow
    .isQuestAvailable 38576
    .goto 24,63.15,37.22,40 >>跟随箭头
step
    #requires A United Force
    .isQuestAvailable 38576
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38576 >>交任务 圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器: Retribution
#displayname 神器 武器: 惩戒
#next a) Order Hall 迪菲亚兄弟会 Part 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Retribution
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44370 >>接受任务 完善你的兵库
    .skipgossipid 45133
    .choose 1271768
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44370 >>交任务集齐你的武器
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 44063 >>接受任务强化你的武器库
    .choose 1271768
    .skipgossipid 45133
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 44063 >>交任务强化你的武器库
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 40408,1 >>接受任务 传说武器
    .skipgossipid 45133
    .choose 1271768
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 40408,1 >>交任务 传说武器
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith Spirits exorcised
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42770 >>接受任务 Seek Guidance
step
    >>使用 |T413582:0|t[Glowing 炉石]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42770 >>交任务 Seek Guidance
    .target 玛克斯韦尔·泰罗索斯男爵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师赛尔丹尼斯|r 和 |cRXP_FRIENDLY_麦拉·黎明之刃|r 对话
    .accept 42772 >>接受任务 Holy Land
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>接受任务 Maintain Peace
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>击杀 |cRXP_ENEMY_痛苦的幽灵|r 和 |cRXP_ENEMY_被惊扰的居民|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Gravestone|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Gravestone|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Gravestone|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>杀死 |cRXP_ENEMY_痛苦的幽灵|r 和 |cRXP_ENEMY_被惊扰的居民|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>击杀 |cRXP_ENEMY_炮手达加尔|r |cRXP_WARN_next to you|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师赛尔丹尼斯|r 和 |cRXP_FRIENDLY_麦拉·黎明之刃|r 对话。
    .turnin 42772 >>交任务 Holy Land
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>交任务 Maintain Peace
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .accept 42773 >>接受任务 Light of Revelation
    .timer 27,RP
    .target 玛克斯韦尔·泰罗索斯男爵
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00跟随箭头|r
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_纪念铭牌|r
    .timer 27,RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42773 >>交任务 Light of Revelation
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42774 >>接受任务 希望致胜
step
    .isOnQuest 42774
    .goto 22,52.1,83.03
    .cast 311750 >>使用 |T132161:0|t[角鹰兽 Whistle] 在外面。
    .timer 20,返回角色选择的倒计时
    .use 311750
step
    .isOnQuest 42774
    .logout >>登出然后重新登录来传送。
    .timer 20,RP
    .macro Logout,638661 >>返回角色选择
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_等待登出倒计时结束，然后重新登录。|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42774 >>交任务 希望致胜
    .accept 38376 >>接受任务 搜索 for the Grand Overlord
    .target 玛克斯韦尔·泰罗索斯男爵
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>点击 |cRXP_PICK_Argent 角鹰兽|r
    .timer 20,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00跟随箭头|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>击杀|cRXP_ENEMY_恶魔|r
    .scenario 1485,1,100
    .mob Wrathguard Cleaver
    .mob Mo'arg Brutalizer
    .mob Ravenous Felstalker
    .mob Burning Crusher
step
    #loop
    .goto 676,20.04,61.69,20,0
    .goto 676,20.52,62.46,20,0
    .isInScenario 775
    >>击杀 |cRXP_ENEMY_狱卒泽鲁斯|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    #title |cFFFCDC00返回洞穴|r
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>进入洞穴
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_灰烬使者|r
    .scenario 1487,1
    .timer 55,RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_等待剧情演出|r。
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>使用 |cRXP_WARN_ExtraActionButton|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>击杀 |cRXP_ENEMY_巴纳扎尔|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
step
    .isInScenario 775
    .zone 23 >>离开副本（右键点击你的角色框架）或按下宏。
    .macro Leave Instance,236367 >>离开副本
step
    .zoneskip 23,1
    .goto 23,74.28,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38376 >>交任务搜寻大领主
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42811 >>接受任务圣光之愿会师
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38376 >>交任务搜寻大领主
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42811 >>接受任务圣光之愿会师
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>进入圣光之愿礼拜堂并穿过隧道
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 38376 >>交任务 搜寻大领主
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 42811 >>接受任务 圣光之愿会师
step
    #completewith next
    #hidewindow
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>进入礼拜堂
step
    #requires Chapel
    #label Artifact Weapon: Retribution
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Secret 大门|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42811 >>交任务 圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>跟随箭头
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .turnin 42811 >>交任务圣光之愿会师
    .target 玛克斯韦尔·泰罗索斯男爵
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#chapter
#name z) 神器 武器: 神圣 圣骑士
#displayname 神器 武器: 神圣
#next ac) Order Hall 迪菲亚兄弟会 第2部分
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#chapter
#name z) 神器 武器: 圣骑士 防护
#displayname 神器 武器: 圣骑士 防护
#next ac) Order Hall 圣骑士 Part 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#chapter
#name z) 神器 武器: Retribution
#displayname 神器 武器: Retribution
#next ac) Order Hall 迪菲亚兄弟会 第2部分
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Retribution
]])

--Paladin Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 圣骑士 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 圣骑士
#chapter
#internal

<< Paladin

step
    #completewith Order Hall Paladin Part 2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Paladin Part 1@An Urgent Gathering-Order Hall Paladin Part 1
step
    .isQuestAvailable 40408
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_玛克斯韦尔·泰罗索斯男爵|r 对话
    .target 玛克斯韦尔·泰罗索斯男爵
    .accept 40408 >>接受任务 传说武器
    .isQuestAvailable 40408
step
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Retribution >>RestedXP Legion Remix\a) 神器 武器: Retribution >> Retribution(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection >>RestedXP Legion Remix\a) 神器 武器: 圣骑士 防护 >> 防护(坦克) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin >>RestedXP Legion Remix\a) 神器 武器: 神圣 圣骑士 >> 神圣(治疗者) Questline
step
    #include ac) Order Hall Paladin Part 2@A United Force-Order Hall Paladin Part 2
]])

-- --------- Priest ---------

--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 训诫
#displayname 神器 武器: 戒律
#next a) Order Hall 牧师 第1部分
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 44407 >>接受任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择训诫神器|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389392
    .target 阿隆索斯·法奥
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 44407 >>交任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 43935 >>接受任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这会自动选择训诫神器|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389392
    .target 阿隆索斯·法奥
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 43935 >>交任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 40706 >>接受任务 称手神兵
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这会自动选择训诫神器|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389392
    .target 阿隆索斯·法奥
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 40706 >>交任务 称手神兵
    .target 阿隆索斯·法奥
step
    #completewith the Azure Dragonshrine
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 41625 >>接受任务 圣光之怒
    .target 阿隆索斯·法奥
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 41625 >>接受任务圣光之怒
    .target 阿隆索斯·法奥
step
    .isOnQuest 41625
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞修士|r 对话。
    .target Brother Larry
    .skipgossipid 45625
step
    .isOnQuest 41625
    .zoneskip 702,1
    .goto 702,49.79,80.78
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
step
    .goto 627,28.64,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡雷|r 对话。
    .turnin 41625 >>交任务 圣光之怒
    .accept 41626 >>接受任务 新的威胁
    .target Archmage Kalec
step
    .zoneskip 627,1
    .isOnQuest 41626
    .goto 627,49.25,47.64
    .zone 629 >>在达拉然中心使用传送器
step
    .goto 629,30.85,84.43
    >>|cRXP_WARN_跟随箭头。|r
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r 前往龙眠神殿。
    *|cRXP_WARN_注释:|r 如果箭头不正确，你可以在达拉然中心使用传送器后找到传送门。
    .complete 41626,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #label the Azure Dragonshrine
    .goto 115,55.96,65.01
    >>|cRXP_WARN_跟随箭头|r。
    .complete 41626,2 --1/1 Travel to the Azure Dragonshrine
step
    #loop
    .goto 115,55.90,64.90,30,0
    .goto 115,56.26,68.12,30,0
    .goto 115,54.10,66.46,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Void Siphons|r, |cRXP_PICK_Strange 传送门|r, 和 |cRXP_PICK_Void-Tainted Blades|r。
    .complete 41626,3 --3/3 Clues Found
step
    .goto 115,56.69,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Ethereal Communication Device|r 对话。
    .turnin 41626 >>交任务 新的威胁
    .target Ethereal Communication Device
    .accept 41627 >>接受任务被遗忘的敌人
step
    #completewith next
    #hidewindow
    .cast 3365 >>跟随箭头
    .timer 37,Nexus-Prince 剧情演出
step
    .goto 115,56.65,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Communication Device 切换|r。
    .complete 41627,1 --1/1 Activate the communication device
step
    .goto 115,56.69,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷的影像|r 对话。
    .turnin 41627 >>交任务 被遗忘的敌人
    .accept 41628 >>接受任务 巨龙之眼
    .target Image of Kalec
step
    #title 使用 |T254294:0|t[魔枢传送卷轴]
    .goto 114,29.25,28.57
    >>使用 |T254294:0|t[魔枢传送卷轴]
    .complete 41628,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.19,27.85
    >>|cRXP_WARN_跟随箭头。|r
    .complete 41628,2 --1/1 Surge Needle scouted
step
    .goto 114,29.66,27.50
    >>|cRXP_WARN_跟随箭头。|r
    .complete 41628,3 --1/1 Nexus foundation scouted
step
    >>这应该会自动被交任务并添加到你的任务日志中。如果不行的话，小退一下试试。
    .turnin 41628 >>交任务 巨龙之眼
    .accept 41629 >>接受任务 驾驭圣火
step
    #loop
    .goto 114,27.40,23.82,35,0
    .goto 114,25.85,26.44,35,0
    .goto 114,27.17,29.80,35,0
    .goto 114,29.52,27.00,35,0
    >>杀死 |cRXP_ENEMY_Wrath Embers|r。
    .complete 41629,1 --1/1 Empowered with Unstable Holy Energy
    .mob Wrath Ember
step
    .goto 114,26.60,23.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷的影像|r 对话。
    .turnin 41629 >>交任务 驾驭圣火
    .accept 41630 >>接受任务 审判降临
    .target Image of Kalec
step
    .goto 114,27.32,20.43
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r。
    .complete 41630,3 --1/1 North Surge Needle destroyed
step
    .goto 114,24.13,29.52
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r。
    .complete 41630,2 --1/1 West Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Focused 阿虚|r。
    .complete 41630,1 --1/1 East Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡雷的影像|r 对话。
    .turnin 41630 >>交任务 审判降临
    .accept 41631 >>接受任务 魔枢宝库
    .target Image of Kalec
step
    .isOnQuest 41631
    .goto 114,27.84,28.37,30,0
    .goto 114,27.51,26.05
    .enterScenario 1065 >>进入 |cRXP_PICK_X|r 副本。
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>击杀 |cRXP_ENEMY_烈焰之子|r、|cRXP_ENEMY_寒冰之子|r 和 |cRXP_ENEMY_魔力之子|r。
    .scenario 2275,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Mage
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>对 |cRXP_FRIENDLY_艾索雷苟斯|r 使用 |T135907:0|t[道具]。
    .scenario 2275,2 --Azuregos healed to full
    .macro Flash Heal,135907 >>快速治疗
step
    .goto 736,23.51,67.53,15,0
    .goto 736,21.20,64.39,15,0
    .goto 736,21.93,57.90,15,0
    .goto 736,18.86,50.68,15,0
    .goto 736,22.01,43.34,15,0
    .goto 736,21.56,36.26,15,0
    .goto 736,27.49,34.52,15,0
    .goto 736,26.65,33.90
    .isInScenario 1065
    >>使用 |T135928:0|t[漂浮术]。|cRXP_WARN_躲避火焰喷泉|r。
    .scenario 2277,1 --Reach the Librarium
    .usespell 1706
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>|cRXP_WARN_等待剧情演出。|r
    .scenario 2277,2 --Find a way into the vault
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>击杀 |cRXP_ENEMY_Judgment's Flame|r。
    .scenario 2278,1 --Judgment's Flame defeated
    .mob Judgment's Flame
step
    .isInScenario 1065
    .goto 736,26.83,25.13,25,0
    .goto 736,31.22,22.01
    .scenario 2292,1 --Reach the Rift
step
    #completewith next
    #label NexusPrinceBilaalA
    .isInScenario 1065
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
step
    #label NexusPrinceBilaalA
    .goto 736,31.22,22.01
    .vehicle 104546 >>点击 |cRXP_FRIENDLY_艾索雷苟斯|r
step
    #requires NexusPrinceBilaalA
    .isInScenario 1065
    .goto 736,59.24,20.32
    >>击杀 |cRXP_ENEMY_节点亲王拜拉尔|r。
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
    .complete 41631,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith next
    #label SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Light's 愤怒|r。
    .scenario 2280,1 --Subdue Light's Wrath
step
    #completewith SubdueLightsWrathA
    .goto 736,60.64,20.51
    .subzone 8119 >>点击|cRXP_PICK_传送门|r。
    --.subzone 13695
step
    #requires SubdueLightsWrathA
    #completewith next
    #hidewindow
    .cast 207949 >>跟随箭头
    .timer 30,Subdue 持续时间
step
    #requires SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Light's 愤怒|r。
    .scenario 2280,1 --Subdue Light's Wrath
step
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Light's 愤怒|r。
    .scenario 2281,1 --Claim Light's Wrath
    .complete 41631,2 --1/1 Light's Wrath
step
    #completewith next
    #label LeaveTheNexusVaultA
    .isInScenario 1065
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith LeaveTheNexusVaultA
    .subzone 13695 >>点击 |cRXP_PICK_枢纽传送门|r
    .timer 50,艾索雷苟斯 剧情演出
    *|cRXP_WARN_注释:|r 此处坐标不适用
step
    #requires LeaveTheNexusVaultA
    .isInScenario 1065
    .goto 736,59.28,20.40
    >>|cRXP_WARN_等待剧情演出。|r
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith next
    #label TheNexusVaultA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡雷|r 对话。
    .turnin 41631 >>交任务魔枢宝库
    .accept 41632 >>接受任务 时间的馈赠
    .target Archmage Kalec
step
    .zoneskip 736,1
    #completewith TheNexusVaultA
    .goto 736,59.28,20.40
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
step
    #requires TheNexusVaultA
    .goto 627,28.64,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡雷|r 对话。
    .turnin 41631 >>交任务魔枢宝库
    .accept 41632 >>接受任务时间的馈赠
    .target Archmage Kalec
step
    .isQuestTurnedIn 40938
    #completewith next
    #label AGiftOfTimeA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 41632 >>交任务时间的馈赠
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40938
    #completewith AGiftOfTimeA
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>点击 |cRXP_PICK_传送门 到 虚空之光神殿|r
step
    .isQuestTurnedIn 40938
    #requires AGiftOfTimeA
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 41632 >>交任务 时间的馈赠
    .target 阿隆索斯·法奥
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话。
    .turnin 41632 >>交任务 时间的馈赠
    .target 先知维伦
]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：神圣牧师
#displayname 神器 武器: 神圣
#next a) Order Hall 牧师 第1部分
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 44407 >>接受任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择神圣神器|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389393
    .target 阿隆索斯·法奥
    .skipgossipid 45117
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 44407 >>交任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 43935 >>接受任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择神圣的神器|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389393
    .target 阿隆索斯·法奥
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 43935 >>交任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 40706 >>接受任务 称手神兵
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择神圣神器|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389393
    .target 阿隆索斯·法奥
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 40706 >>交任务 称手神兵
    .target 阿隆索斯·法奥
step
    #completewith House Call
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 41957 >>接受任务守备官的请求
    .target 阿隆索斯·法奥
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 41957 >>接受任务 守备官的请求
    .target 阿隆索斯·法奥
step
    .isOnQuest 41957
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉瑞修士|r 对话。
    .target Brother Larry
    .skipgossipid 45625
step
    #label House Call
    .goto 627,37.81,36.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_守备官波鲁斯|r 对话。
    .turnin 41957 >>交任务 守备官的请求
    .accept 41966 >>接受任务上门服务
    .target 守备官波鲁斯
step
    .goto 627,36.02,36.61
    >>对 |cRXP_ENEMY_防御者巴伦姆|r 使用 |T135894:0|t[净化] 并治疗他。击杀 |cRXP_ENEMY_被邪能污染的鲜血|r。
    .complete 41966,1 --1/1 Defender Barrem cured
    .usespell 527
    .target Defender Barrem
    .mob Fel Tainted Blood
step
    .goto 627,37.41,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_防御者巴伦姆|r 对话。
    .turnin 41966 >>交任务上门服务
    .target Defender Barrem
    .accept 41967 >>接受任务 脱离黑暗
step
    .goto 627,70.80,43.94
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_光羽|r。
    .complete 41967,1 --1/1 Flight to Darkstone Isle secured
    .target Lightfeather
step
    .goto 646,34.08,33.57
    >>杀死 |cRXP_ENEMY_Niskaran Executioner|r。
    .complete 41967,2 --1/1 Demon Camp cleared
    .mob Niskaran Executioner
step
    #completewith next
    #hidewindow
    .cast 213109 >>跟随箭头
    .timer 5,奥萝拉 剧情演出
step
    .goto 646,33.99,33.93
    >>使用 |T135955:0|t[Resurrection] 对 |cRXP_FRIENDLY_奥萝拉|r。
    .complete 41967,3 --1/1 Alora resurrected
    .macro Resurrection,135955 >>/target Alora\n/cast spell:213109
step
    .goto 646,33.99,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥萝拉|r 对话。
    .turnin 41967 >>交任务 脱离黑暗
    .accept 41993 >>接受任务 神圣的救赎
    .target Alora
step
    .goto 646,33.42,33.18
    >>击杀 |cRXP_ENEMY_征服者瓦里斯|r。
    .complete 41993,1 --1/1 Assist Jace Darkweaver
    .mob Subjugator Valith
step
    .goto 646,33.58,33.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杰斯·织暗|r 对话。
    .turnin 41993 >>交任务 神圣的救赎
    .target Jace Darkweaver
    .accept 42074 >>接受任务 圣光回归
step
    #title 穿过传送门
    .goto 646,32.04,31.92
    >>|cRXP_WARN_跟随箭头并穿过传送门。|r
    .complete 42074,1 --1/1 Travel through the Portal on Darkstone Isle
step
    .isOnQuest 42074
    .goto 646,32.04,31.92
    .enterScenario 1085 >>进入 |cRXP_PICK_圣光回归|r 场景。
step
    .isInScenario 1085
    .goto 714,74.57,82.82
    >>对 |cRXP_FRIENDLY_守备官波鲁斯|r 使用 |T135907:0|t[道具]。
    .scenario 2406,1 --Heal Vindicator Boros to full health.
    .macro Flash Heal,135907 >>道具
    .target 守备官波鲁斯
step
    .isInScenario 1085
    .goto 714,71.02,72.40
    >>击杀 |cRXP_ENEMY_指挥官索沃斯|r。
    .scenario 2421,1 --Assist Jace Darkweaver.
    .mob Commander Xovoth
step
    .isInScenario 1085
    .goto 714,70.66,71.75
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Anchoring 水晶|r。
    .scenario 2441,1 --Destroy the Anchoring Crystal
step
    .isInScenario 1085
    .goto 714,71.35,80.38,15,0
    .goto 714,69.37,81.00,10,0
    .goto 714,69.34,78.01
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2441,2 --Exit the lower levels of the Legion Ship.
step
    .isInScenario 1085
    .goto 714,71.45,73.43
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Legion 灼丝衬衫|r。
    *|cRXP_WARN_注释：|r 如果你还在楼下，请先上楼。
    .scenario 2417,1 --Rescue Bo'ja
step
    .isInScenario 1085
    .goto 714,73.07,78.86
    >>击杀 |cRXP_ENEMY_纳拉诺斯队长|r。
    .scenario 2446,1 --Defeat Captain Naranoth
    .mob Captain Naranoth
step
    .isInScenario 1085
    .goto 714,70.20,70.53,15,0
    .goto 714,62.43,59.71
    >>击杀 |cRXP_ENEMY_Lady Calindris|r。
    .scenario 2425,1 --Defeat Lady Calindris
step
    .isInScenario 1085
    .goto 714,65.35,59.02
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_T'uure|r。
    .scenario 2426,1 --T'uure obtained.
    .complete 42074,2 --1/1 Obtain T'uure
step
    .isInScenario 1085
    .goto 714,65.51,60.06
    >>|cRXP_WARN_等待 |cRXP_FRIENDLY_Bo'ja|r 走下来并放置传送门。|r
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bo'ja的法师传送门|r。
    .scenario 2426,2 --Leave Niskara
step
    .isQuestTurnedIn 40938
    .goto 702,47.75,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话。
    .turnin 42074 >>交任务 圣光回归
    .target 先知维伦
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_先知维伦|r 对话。
    .turnin 42074 >>交任务 圣光回归
    .target 先知维伦
]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：暗影
#displayname 神器武器：暗影
#next a) 职业大厅 牧师第一部分
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 44407 >>接受任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择暗影神器|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389394
    .target 阿隆索斯·法奥
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 44407 >>交任务 第三个传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 43935 >>接受任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择暗影神器。|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389394
    .target 阿隆索斯·法奥
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 43935 >>交任务 再现传奇
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 40706 >>接受任务 称手神兵
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    *|cRXP_WARN_这将自动选择暗影神器。|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389394
    .target 阿隆索斯·法奥
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .turnin 40706 >>交任务 称手神兵
    .target 阿隆索斯·法奥
step
    #completewith Amassing Darkness
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 40710 >>接受任务暮光之刃
    .target 阿隆索斯·法奥
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话。
    .accept 40710 >>接受任务暮光之刃
    .target 阿隆索斯·法奥
step
    .goto 18,13.03,62.46
    >>使用 |T254294:0|t[提瑞斯法营地卷轴]。
    >>|cRXP_WARN_跟随箭头。|r
    .complete 40710,1 --1/1 Go to the marked location in Tirisfal Glades
    .use 173523
step
    .isOnQuest 40710
    .goto 18,13.03,62.46
    .enterScenario 991 >>进入 |cRXP_PICK_Blade in 暮光|r 剧本
step
    .isInScenario 991
    .goto 18,13.47,57.58
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_熔渣战锤的笔记|r。
    .scenario 2221,1 --Find the first clue
step
    .isInScenario 991
    .goto 18,13.21,55.47
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Slaghammer's Notes|r。
    .scenario 2221,2 --Find the second clue
step
    .isInScenario 991
    .goto 18,13.90,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_熔渣战锤的笔记|r。
    .scenario 2221,3 --Find the third clue
step
    #title |cFFFCDC00下潜|r
    .isInScenario 991
    .goto 20,37.87,12.57,8,0
    .goto 20,34.13,23.36
    >>|cRXP_WARN_向下游进通道。|r
    .scenario 2031,1 --Enter the tomb at the bottom of the lake
step
    .isInScenario 991
    .goto 20,37.16,41.44
    >>击杀 |cRXP_ENEMY_暮光折剑者|r 和 |cRXP_ENEMY_暮光暗影法师|r。
    >>|cRXP_WARN_等待剧情演出。|r
    .scenario 2032,1 --Defeat the guards at the door to gain access
step
    .isInScenario 991
    .goto 20,37.24,44.71
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2048,1 --Enter the Tomb of Tyr
step
    .isInScenario 991
    #loop
    .goto 20,40.97,50.29,12,0
    .goto 20,41.22,58.63,12,0
    .goto 20,34.05,59.87,12,0
    .goto 20,33.64,50.57,12,0
    >>击杀 |cRXP_ENEMY_暮光 Ritualists|r。
    .scenario 2086,1 --Stop the dampening rituals
    .mob 暮光祭师
step
    #label Amassing Darkness
    .isInScenario 991
    .goto 20,37.52,55.05
    >>击杀 |cRXP_ENEMY_聚集黑暗|r。
    .scenario 2171,1 --Defeat the Amassing Darkness
    .mob Amassing Darkness
step
    .isInScenario 991
    .goto 20,39.37,79.78,15,0
    .goto 20,41.94,84.31,15,0
    .goto 20,47.78,75.83
    >>|cRXP_WARN_跟随箭头。|r 使用 |T135739:0|t[Mass Dispel] 击杀 |cRXP_ENEMY_Void Tendrils|r
    .scenario 2089,1 --Fight to the prison chamber
    .mob Void Tendril
    .usespell 311663
step
    .isInScenario 991
    .goto 20,58.77,75.20
    >>击杀 |cRXP_ENEMY_暮光执事法席恩|r。
    .scenario 2099,1 --Kill the Twilight Deacon
    .mob Twilight Deacon Farthing
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Blade of the Black Empire|r。
    .scenario 2115,1 --Take the Blade of the Black Empire
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>使用 |T136201:0|t[|cRXP_WARN_ExtraActionButton|r] (Dark Drain)
    .scenario 2116,1 --Use "Dark Drain" to kill Zakajz forever
    .complete 40710,2 --1/1 Stop the Ritual and acquire the Blade
    .timer 15,过场剧情
step
    #completewith next
    #label BladeInTwilightA
    #hidewindow
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    #completewith BladeInTwilightA
    .goto 20,57.38,73.35
    .zone 627 >>点击通往达拉然的传送门
step
    #requires BladeInTwilightA
    .goto 627,47.32,22.90
    >>|cRXP_WARN_跟随箭头。|r
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    .isQuestTurnedIn 40938
    #completewith next
    #label BladeInTwilightB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茉艾拉·索瑞森|r 对话
    .turnin 40710 >>交任务 暮光之刃
    .target 茉艾拉·索瑞森
step
    .isQuestTurnedIn 40938
    #completewith BladeInTwilightB
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>点击 |cRXP_PICK_传送门 前往虚空之光神殿|r
step
    .isQuestTurnedIn 40938
    #requires BladeInTwilightB
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茉艾拉·索瑞森|r 对话
    .turnin 40710 >>交任务 暮光之刃
    .target 茉艾拉·索瑞森
step
    #optional
    .goto 627,46.14,21.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_茉艾拉·索瑞森|r 对话
    .turnin 40710 >>交任务 暮光之刃
    .target 茉艾拉·索瑞森
]])
--Discipline 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 戒律
#displayname 神器 武器: 戒律
#next ac) Order Hall 牧师 第2部分
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Discipline
]])
--Holy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 神圣 牧师
#displayname 神器 武器: 神圣
#next ac) Order Hall 牧师 第2部分
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Holy Priest
]])
--Shadow 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 暗影
#displayname 神器 武器: 暗影
#next ac) Order Hall 牧师 第二部分
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Shadow
]])

--Priest Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 牧师 第1部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 牧师
#chapter
#internal

<< Priest

step
    #completewith Recruit Ishanah2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Priest Part 1@Priestly Matters-Alonsus Faol
step
    .goto 18,78.96,40.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿隆索斯·法奥|r 对话
    .accept 40706 >>接受任务 称手神兵
    .target 阿隆索斯·法奥
step
    .isQuestAvailable 40706
    .isQuestAvailable account,91955
    .goto 18,78.96,40.99
    +暂时选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅一次）|r
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Shadow >>RestedXP Legion Remix\a) 神器 武器: 暗影 >> 暗影(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Priest >>RestedXP Legion Remix\a) 神器 武器: 神圣 >> 神圣(治疗者) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Discipline >>RestedXP Legion Remix\a) 神器 武器: 戒律 >> 戒律(治疗者) Questline
step
    #include ac) Order Hall Priest Part 2@The Light and the Void-Recruit Ishanah
step
    .zoneskip 702,1
    .goto 702,49.79,80.59
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
]])

-- --------- Rogue ---------

--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Assassination
#displayname 神器 武器: Assassination
#next a) Order Hall 潜行者 Part 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Assassination
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44375 >>接受任务 最终之刃
    .skipgossipid 45233
    .choose 1389395
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44375 >>交任务 最终之刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44034 >>接受任务 另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44034 >>交任务 另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 40840 >>接受任务 Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 40840 >>交任务 称手武器
    .target Lord Jorach Ravenholdt
step
    #completewith Felcaller Whitley
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_苔丝·格雷迈恩公主|r 对话
    .target Princess Tess Greymane
    .accept 42501 >>接受任务 完成工作
    .accept 42502 >>接受任务 无处可藏
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    *|cRXP_WARN_如果NPC不在就小退一下|r
    .accept 43262 >>接受任务 勇士：半兽人迦罗娜
    .turnin 43262 >>交任务 勇士：半兽人迦罗娜
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梵妮莎·范克里夫|r 对话
    .accept 43261 >>接受任务勇士：梵妮莎·范克里夫
    .turnin 43261 >>交任务勇士：梵妮莎·范克里夫
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>使用 |T254294:0|t[暮色森林卷轴]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>杀死 |cRXP_ENEMY_邪能召唤者维特雷|r。拾取他的 |T134937:0|t[|cRXP_LOOT_Fel Cipher|r]。
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>进入房屋并上楼
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>杀死 |cRXP_ENEMY_邪能召唤者维特雷|r。从他身上拾取 |T134937:0|t[|cRXP_LOOT_Fel Cipher|r]。
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>在任务日志中点击任务提交弹窗。
    .turnin 42502 >>交任务 无处可藏
step
    >>使用 |T254294:0|t[诅咒之地卷轴]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>击杀 |cRXP_ENEMY_卡登·影眼|r。拾取他的 |T666475:0|t[|cRXP_LOOT_加密信息|r]。
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>在任务日志中点击任务提交弹窗。
    .turnin 42501 >>交任务完成工作
    .accept 42503 >>接受任务破译者
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>使用 |T666475:0|t[加密信息]
    .timer 25,RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42503,3 --1/1 Information found
    .use 138102
step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 42503,1 --1/1 Read the Coded Message
-- step
--     .goto 17,39.52,36.49
--     .zone 617 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 17,37.21,29.05
    >>在任务日志中点击任务提交弹窗。
    .turnin 42503 >>交任务破译者
    .accept 42539 >>接受任务暗里藏刀
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>使用 |T254294:0|t[暮色森林卷轴]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_碗|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    #title |cFFFCDC00进入房屋|r
    .goto 47,73.67,44.08,5 >>进入房屋并上楼
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击楼上的 |cRXP_PICK_碗|r。
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>击杀 |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>离开房屋
    #title |cFFFCDC00Leave House|r
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>击杀 |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>进入房屋
    #title |cFFFCDC00进入房屋|r
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>击杀 |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_骷髅|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>进入熔炉
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_骷髅|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>在任务日志中点击任务提交弹窗。
    .turnin 42539 >>交任务暗里藏刀
    .accept 42568 >>接受任务进城准备
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    .turnin 42568 >>交任务进城准备
    .target Garona Halforcen
    .accept 42504 >>接受任务 无形之刃
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>使用 |T254294:0|t[艾尔文森林卷轴]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r 在艾尔文森林对话
    .turnin 42568 >>交任务 准备
    .target Garona Halforcen
    .accept 42504 >>接受任务无形之刃
step
    .isOnQuest 42504
    .isQuestNotComplete 42504
    .goto 37,32.05,49.23
    .enterScenario 1123 >>进入场景战役
    *|cRXP_WARN_你只能在此场景中使用地面坐骑|r。
--HERE
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isInScenario 1123
    >>|cRXP_WARN_等待剧情演出|r。
    *|cRXP_WARN_你无法在此场景中骑乘|r
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,40 >>跟随箭头
    .timer 45,RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .isInScenario 1123
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2548,1 --Confront Mathias Shaw.
step
    #completewith Obtain the Kingslayers
    +进入 |cRXP_WARN_潜行|r 并避开守卫，尤其是那些有眼睛标记的守卫，他们能更好地检测潜行。
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>跟随箭头
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_板条箱|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00跟随箭头|r
    .goto 84,66.07,74.13,10 >>进入暴风城和房屋。
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_板条箱|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,66.38,73.66,5,0
    .isInScenario 1123
    >>在拍卖行内使用 |T458733:0|t[烟雾炸弹]。|cRXP_WARN_任务目标下方有一个按钮|r。
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    #title |cFFFCDC00Leave House|r
    .goto 84,65.6,74.23,5 >>离开房屋
step
    #requires Trader's Hall
    .goto 84,63.27,73.7,15,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.65,72.38
    .isInScenario 1123
    >>在拍卖行内使用 |T458733:0|t[烟雾炸弹]。|cRXP_WARN_任务目标下方有一个按钮|r。
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>对 |cRXP_ENEMY_可疑的城市卫兵|r 使用 |T133644:0|t[搜索]
    .scenario 2711,1 --Pickpocket Guards until you find information
    .mob Suspicious City Guard
    .usespell 921
step
    .isInScenario 1123
    #hidewindow
    #completewith Garona
    .goto 84,64.1,70.02,15,0
    .goto 84,64.87,69.13,15,0
    .goto 84,64.36,66.58,15,0
    .goto 84,66.17,64.29,15,0
    .goto 84,67.28,64.26,15,0
    .goto 84,69.96,62.17,15,0
    .goto 84,71.93,60.61,15,0
    .goto 84,73.79,61.84,15,0
    .goto 84,73.96,60.64,15,0
    .goto 84,73.53,57.77,15,0
    .goto 84,75.18,55.28
    +1
step
    .isInScenario 1123
    >>使用 |T666475:0|t[加密信息]。|cRXP_WARN_任务目标下方有一个按钮|r。
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00跟随箭头|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_大门|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>击杀一波波敌人
    .scenario 2560,2 --Make Althea Ebonlocke talk.
    .mob Sister Althea Ebonlocke
    .mob Veiled Fanatic
    .mob Gloom
    .mob Sister Althea Ebonlocke
step
    .goto 84,75.04,55.42,5,0
    .goto 84,71.57,55.66,10,0
    .goto 84,70.08,52.68,15,0
    .goto 84,73.22,47.34,20,0
    .goto 84,76.22,44.27,20,0
    .goto 84,78.73,44.86,20,0
    .goto 84,80.77,37.82,20,0
    .goto 84,84.14,33.42,20,0
    .goto 84,83.65,30.31
    .isInScenario 1123
    #title |cFFFCDC00跟随箭头|r
    >>使用 |T132307:0|t[疾跑] 来绕过风或击杀 |cRXP_ENEMY_疲惫的祭师|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>击杀 |cRXP_ENEMY_梅里斯·玛拉甘|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 29.5,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .scenario 2564,1 --Take the portal to Dalaran.
step
    .achievementComplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡德加|r 对话
    .accept 45727 >>接受任务联合势力
    .turnin 45727 >>交任务联合势力
    .target 大法师卡德加
step
    .achievementIncomplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡德加|r 对话
    *|cRXP_WARN_需要30级|r。
    .accept 45727 >>接受任务联合势力
    .turnin 45727 >>交任务联合势力
    .target 大法师卡德加
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    .turnin 42504 >>交任务 无形之刃
    .target Garona Halforcen
-- step
--     #completewith Hall of Shadows
--     #label Artifact Weapon: Assassination
--     .goto 627,46.57,26.96,5,0
--     .goto 627,46.62,25.77
--     #title |cFFFCDC00Enter Forge|r
--     .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
--     .gossipoption 45145 >>Talk to |cRXP_FRIENDLY_Mongar|r
--     .target Mongar
step
    #completewith Hall of Shadows
    #label Artifact Weapon: Assassination
    .goto 627,52.66,33.9,5,0
    .goto 627,54.47,31.51,5,0
    .goto 627,54.28,32.78
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>点击 |cRXP_PICK_门环|r
    .gossipoption 45402 >>与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话。
    .target Lucian Trias
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    .turnin 42504 >>交任务无形之刃
    .target Garona Halforcen
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00跟随箭头|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_火把|r 退出秘密房间。
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    .turnin 42504 >>交任务 无形之刃
    .target Garona Halforcen
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：诡诈
#displayname 神器武器：诡诈
#next a) 职业大厅 潜行者 第一部分
#internal

<< Rogue

step
    #completewith Artifact Weapon: Outlaw
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44375 >>接受任务最终之刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    -- .skipgossipid 45232 -- I'm ready to make a decision. 2nd
    -- .skipgossipid 45230 -- 1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44375 >>交任务最终之刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44034 >>接受任务另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44034 >>交任务另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 40840 >>接受任务 称手武器
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 40840 >>交任务称手武器
    .target Lord Jorach Ravenholdt
step
    #completewith Board the Crimson Veil
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .accept 40847 >>接受任务合算的计划
    .target Fleet Admiral Tethys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    *|cRXP_WARN_如果NPC不在就小退一下|r
    .accept 43262 >>接受任务勇士：半兽人迦罗娜
    .turnin 43262 >>交任务勇士：半兽人迦罗娜
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梵妮莎·范克里夫|r 对话
    .accept 43261 >>接受任务勇士：梵妮莎·范克里夫
    .turnin 43261 >>交任务勇士：梵妮莎·范克里夫
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>使用 |T413582:0|t[Gilded 炉石]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00跟随箭头|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>离开房屋
    #title |cFFFCDC00Leave House|r
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00跟随箭头|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .turnin 40847 >>交任务合算的计划
    .target Fleet Admiral Tethys
    .accept 40849 >>接受任务恐惧之刃
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Fleet Admiral Tethys
step
    #completewith Fly to Dalaran
    +你只能在这个场景中使用地面坐骑。
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>击杀 |cRXP_ENEMY_大副德高扎|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>登上这艘船
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>击杀 |cRXP_ENEMY_大副德高扎|r，然后跟随箭头。
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .goto 630,58.34,67.48,10,0
    .goto 630,58.25,66.97,10,0
    .goto 630,58.11,66.8,10,0
    .goto 630,57.96,66.85,10,0
    .goto 630,57.9,66.59,10,0
    .goto 630,56.43,67.28
    .isInScenario 1012
    #title |cFFFCDC00跟随箭头|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>击杀 |cRXP_ENEMY_盐须领主|r
    .scenario 2132,1 --Defeat Lord Brinebeard
    .mob Lord Brinebeard
step
    .goto 630,56.02,68.72,5,0
    .goto 630,55.27,69.92,5,0
    .goto 630,55.27,69.94,5,0
    .goto 630,55.49,70.61,5,0
    .goto 630,55.14,71.37,5,0
    .goto 630,54.05,71.48
    .isInScenario 1012
    #title |cFFFCDC00跟随箭头|r
    >>击杀所有 |cRXP_ENEMY_恐惧塑风师|r，并避开 |cRXP_WARN_water jet|r。
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>击杀 |cRXP_ENEMY_亡灵舰长伊丽扎|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bloodsail 狮鹫|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>离开神殿
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bloodsail 狮鹫|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,RP
    .target Bloodsail Gryphon
step
    .achievementComplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡德加|r 对话
    .accept 45727 >>接受任务 联合势力
    .turnin 45727 >>交任务 联合势力
    .target 大法师卡德加
step
    .achievementIncomplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大法师卡德加|r 对话
    *|cRXP_WARN_需要30级|r。
    .accept 45727 >>接受任务联合势力
    .turnin 45727 >>交任务联合势力
    .target 大法师卡德加
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .turnin 40849 >>交任务 恐惧之刃
    .target Fleet Admiral Tethys
step
    #completewith The Dreadblades
    #label Artifact Weapon: Outlaw
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>点击 |cRXP_PICK_门环|r
    .gossipoption 45402 >>与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话。
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .turnin 40849 >>交任务 恐惧之刃
    .target Fleet Admiral Tethys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_火把|r 打开秘密房间的门。
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r 对话
    .turnin 40849 >>交任务 恐惧之刃
    .target Fleet Admiral Tethys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器：Subtlety
#displayname 神器武器：Subtlety
#next a) Order Hall 潜行者第1部分
#internal

<< Rogue

step
    #completewith Artifact Weapon: Subtlety
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44375 >>接受任务 最终之刃
    .skipgossipid 45233
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44375 >>交任务 最终之刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 44034 >>接受任务 另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 44034 >>交任务 另一把利刃
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .accept 40840 >>接受任务 Worthy Blade
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .complete 40840,4 --1/1 Artifact weapon chosen
    -- .choose 1389395
    .choose 1389397
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .turnin 40840 >>交任务 称手武器
    .target Lord Jorach Ravenholdt
step
    #completewith Lucian Trias'
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .accept 41919 >>接受任务 暗影现形
    .target 瓦莉拉·萨古纳尔
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_半兽人迦罗娜|r对话
    *|cRXP_WARN_如果NPC不在就小退一下|r
    .accept 43262 >>接受任务 勇士：半兽人迦罗娜
    .turnin 43262 >>交任务 勇士：半兽人迦罗娜
    .target Garona Halforcen
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_梵妮莎·范克里夫|r 对话
    .accept 43261 >>接受任务勇士：梵妮莎·范克里夫
    .turnin 43261 >>交任务勇士：梵妮莎·范克里夫
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>点击 |cRXP_PICK_门环|r
step
    #requires Lucian Trias'
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias'
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>跟随箭头
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话
    .complete 41919,3 --1/1 Lucian Trias' intel
    .skipgossipid 45401 -- The shadows reveal.
    .target Lucian Trias
step
    #completewith next
    #hidewindow
    #label Val'zuun's intel
    .goto 627,52.78,33.64,5,0
    .goto 628,74.85,64.13,5,0
    .goto 628,73.26,65.67,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔祖恩|r 对话
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>进入下水道
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>与 |cRXP_FRIENDLY_瓦尔祖恩|r 对话
    .timer 26,RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>站在下水道出口附近 |cRXP_WARN_不要走太远|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_戴斯蒙德·黯悲|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41919 >>交任务 暗影现形
    .target 瓦莉拉·萨古纳尔
    .accept 41920 >>接受任务方法才是关键
step
    #completewith The Shadows Reveal2
    #title |cFFFCDC00进入房屋|r
    .goto 627,51.62,68.76,5 >>进入房屋
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41919 >>交任务暗影现形
    .target 瓦莉拉·萨古纳尔
    .accept 41920 >>接受任务方法才是关键
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    *|cRXP_WARN_躲闪 奥术 Sentries 和 火焰 swirlies|r。
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00跟随箭头|r
    .goto 627,56.97,46.87
    .cast 1784 >>进入房屋前使用 |T132320:0|t[潜行]。
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_水晶|r
    *|cRXP_WARN_躲闪 奧术哨兵 和 火焰旋涡|r。
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔祖恩|r 对话
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>进入下水道
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔祖恩|r 对话
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41920 >>交任务方法才是关键
    .target 瓦莉拉·萨古纳尔
    .accept 41921 >>接受任务接近了
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>击杀 |cRXP_ENEMY_阿卡丽·影血|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>离开下水道
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>进入房屋并上楼击杀 |cRXP_ENEMY_阿卡丽·影血|r
    #title |cFFFCDC00进入房屋|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41921 >>交任务接近了
    .target 瓦莉拉·萨古纳尔
    .accept 41922 >>接受任务叛徒！
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41922 >>交任务 叛徒
    .target 瓦莉拉·萨古纳尔
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>进入下水道
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41922 >>交任务叛徒！
    .target 瓦莉拉·萨古纳尔
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦尔祖恩|r 对话
    .accept 41924 >>接受任务吞噬者之牙
    .timer 15,RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击|cRXP_PICK_传送门|r
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>移动至 |cRXP_ENEMY_阿卡丽·影血|r，躲避眼睛，它们会破坏你的隐身。
    *击败 |cRXP_ENEMY_阿卡丽·影血|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>使用 |T132320:0|t[潜行] 潜入至 |cRXP_ENEMY_阿卡丽·影血|r
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>前往 |cRXP_ENEMY_阿卡丽·影血|r，躲避眼睛，因为它们会将你击出潜行。
    *击杀 |cRXP_ENEMY_阿卡丽·影血|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>对 |cRXP_ENEMY_缚魂者|r 使用 |T132320:0|t[潜行] 和 |T133644:0|t[搜索]。
    *|cRXP_WARN_任务目标下方有一个按钮|r。
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_笼子|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_板条箱|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_大门|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>击杀 |cRXP_ENEMY_瑟鲁斯|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00跟随箭头|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>击杀 |cRXP_ENEMY_阿卡丽·影血|r |cRXP_WARN_当她生成分身时先击杀分身|r。
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41924 >>交任务 吞噬者之牙
    .target 瓦莉拉·萨古纳尔
step
    #completewith Fangs of the Devourer
    .zoneskip 740,1
    .zone 628 >>离开副本（右键点击你的角色框架）或按下宏。
    .macro Leave Instance,236367 >>离开副本
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41924 >>交任务吞噬者之牙
    .target 瓦莉拉·萨古纳尔
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .zoneskip 626
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>离开下水道
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41924 >>交任务 吞噬者之牙
    .target 瓦莉拉·萨古纳尔
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    #label Artifact Weapon: Subtlety
    .zoneskip 626
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>点击 |cRXP_PICK_门环|r
    .gossipoption 45402 >>与 |cRXP_FRIENDLY_鲁希安·提亚斯|r 对话
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 626,49.45,32.64,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41924 >>交任务 吞噬者之牙
    .target 瓦莉拉·萨古纳尔
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_火把|r 来打开秘密房间的门
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 对话
    .turnin 41924 >>交任务 吞噬者之牙
    .target 瓦莉拉·萨古纳尔
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Assassination
#displayname 神器 武器: Assassination
#next ac) 职业大厅 潜行者 第2部分
#internal

<< Rogue

step
    #include a) Artifact Weapon: Assassination
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 逃犯
#displayname 神器武器：狂徒
#next ac) 职业大厅 潜行者 第2部分
#internal

<< Rogue

step
    #include a) Artifact Weapon: Outlaw
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Subtlety
#displayname 神器 武器: Subtlety
#next ac) Order Hall 潜行者 Part 2
#internal

<< Rogue

step
    #include a) Artifact Weapon: Subtlety
]])

--Rogue Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 潜行者 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 潜行者
#chapter
#internal

<< Rogue

step
    #completewith Lethal Efficiency22
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Rogue Part 1@Call of The Uncrowned-Final Shadow
step
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r 对话
    .target Lord Jorach Ravenholdt
    .accept 40840 >>接受任务称手武器
step
    .isOnQuest 40840
    .goto 626,41.7,75.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_舰队上将特塞斯|r、|cRXP_FRIENDLY_瓦莉拉·萨古纳尔|r 和 |cRXP_FRIENDLY_苔丝·格雷迈恩公主|r 对话
    .complete 40840,2 --1/1 Valeera's plan considered
    .complete 40840,1 --1/1 Tethys' plan considered
    .complete 40840,3 --1/1 Tess' plan considered
    .skipgossipid 45256
    .skipgossipid 45235
    .skipgossipid 45103
    .target Fleet Admiral Tethys
    .target 瓦莉拉·萨古纳尔
    .target Princess Tess Greymane
step
    .isQuestAvailable 40840
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Assassination >>RestedXP Legion Remix\a) 神器 武器: Assassination >> Assassination(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Outlaw >>RestedXP Legion Remix\a) 神器 武器: 逃犯 >> 逃犯(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Subtlety >>RestedXP Legion Remix\a) 神器 武器: Subtlety >> Subtlety(每秒伤害) Questline
step
    #include ac) Order Hall Rogue Part 2@Honoring Success-Lethal Efficiency2
]])

-- --------- Shaman ---------

--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 元素
#displayname 神器 武器: 元素
#next a) Order Hall 萨满祭司 第1部分
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 44006 >>接受任务 极限潜能
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这将自动选择 元素 神器|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 44006 >>交任务 极限潜能
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 43945 >>接受任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这会自动拾取元素神器|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 43945 >>交任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .accept 41335 >>接受任务 元素的召唤
    .target 萨尔
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    *|cRXP_WARN_这将自动选择 元素 神器|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389398
    .target 萨尔
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .turnin 41335 >>交任务 元素的召唤
    .target 萨尔
step
    #completewith The Coming Storm
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .zoneskip 726,1
    .goto 726,34.18,77.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .accept 43334 >>接受任务风雨欲来
    .target Rehgar Earthfury
step
    .goto 725,34.07,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .accept 43334 >>接受任务 风雨欲来
    .target Rehgar Earthfury
step
    .isOnQuest 43334
    .goto 726,34.18,77.80,-1
    .goto 725,34.07,74.37,-1
    .zone 379 >>点击 |cRXP_FRIENDLY_加多克|r
    .target Graddoc
step
    #label The Coming Storm
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雪怒|r 对话
    .turnin 43334 >>交任务 风雨欲来
    .accept 43338 >>接受任务 莱登秘典
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_跟随箭头|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>进入郭莱古厅
step
    #completewith TheEdictsOfXA
    >>在郭莱古厅击杀 |cRXP_ENEMY_Mogu 调酒师桑塔基德 <酒类商人>|r
    *|cRXP_WARN_避开Mogu雕像|r。
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>杀死 |cRXP_ENEMY_席安良|r。拾取他的 |T1017867:0|t[|cRXP_LOOT_Edict of 火焰|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>进入郭莱仪祭密室
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>跟随箭头
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>杀死 |cRXP_ENEMY_席安良|r。拾取他的 |T1017867:0|t[|cRXP_LOOT_Edict of 火焰|r]。
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_"磐石"祝恒的雕像|r。
    >>击杀 |cRXP_ENEMY_"磐石"祝恒|r。拾取他的 |T442737:0|t[|cRXP_LOOT_Edict of 石头|r]。
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,33.16,20.93,15,0
    .goto 395,48.87,30.24,15 >>进入郭莱宝库
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>跟随箭头
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_磐石祝恒的雕像|r。
    >>杀死 |cRXP_ENEMY_"磐石"祝恒|r。拾取他的 |T442737:0|t[|cRXP_LOOT_Edict of 石头|r]。
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>杀死 |cRXP_ENEMY_雷霆翔龙纳拉卡|r。拾取它来获得 |T839911:0|t[|cRXP_LOOT_Edict of Storm|r]。
    .complete 43338,4 --1/1 The Edict of Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    #title |cFFFCDC00检查备注|r
    .goto 395,32.94,21.14,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,51.81,57.95,33,0
    .goto 395,56.24,48.40,15,0
    .goto 395,64.67,23.05,15,0
    .goto 395,68.78,23.98,15,0
    .goto 395,69.57,15.71,15,0
    .goto 396,66.28,19.96
    .zone 396 >>进入Hall of the Serpent
    *|cRXP_WARN_注释：|r 中央的第一个符文是安全的，只踩那些。
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>杀死 |cRXP_ENEMY_雷霆翔龙纳拉卡|r。拾取它的 |T839911:0|t[|cRXP_LOOT_Edict of Storm|r]。
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .turnin 43338 >>交任务 莱登秘典
    .accept 39771 >>接受任务 雷霆之声
    .target Rehgar Earthfury
step
    #completewith TheCodexofRaA
    #title |cFFFCDC00查看备注|r
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>返回楼上
    *|cRXP_WARN_注释：|r 中央的第一个符文是安全的，只能踩那个。
step
    #requires TheCodexofRaA
    .goto 395,53.19,61.45
    >>在郭莱古厅击杀 |cRXP_ENEMY_Mogu 调酒师桑塔基德 <酒类商人>|r
    *|cRXP_WARN_躲避 |cRXP_ENEMY_Mogu雕像|r。|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .turnin 43338 >>交任务 莱登秘典
    .accept 39771 >>接受任务 雷霆之声
    .target Rehgar Earthfury
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_跟随箭头|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title 离开郭莱古厅
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_离开郭莱古厅|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_跟随箭头|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isOnQuest 39771
    .goto 379,68.6,57.0
    .enterScenario 976 >>进入 |cRXP_PICK_大师级风暴主宰|r 场景。
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雪怒|r 对话
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>击败 |cRXP_ENEMY_巨人屠夫希格德|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>与 |cRXP_FRIENDLY_雪怒|r 对话
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>击杀 |cRXP_ENEMY_巨人屠夫希格德|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .timer 53,雪怒 剧情演出
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雪怒|r 对话
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>击杀 |cRXP_ENEMY_陈·风暴烈酒|r 和 |cRXP_ENEMY_丽丽·风暴烈酒|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob 陈·风暴烈酒
    .mob 丽丽·风暴烈酒
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_莱登之拳|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title 进入神殿
    .goto 379,68.60,45.89,15 >>进入白虎寺
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_莱登之拳|r
    .scenario 2078,1 --Equip the Weapons of the Storm
    .timer 25,剧情事件时长
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>杀死 |cRXP_ENEMY_领主卡拉沃斯|r。
    .scenario 2079,1 --Defeat Lord Kra'vos
    .timer 27,剧情事件时长
    .mob Low Inquisitor
    .mob Lord Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Astral 大门 to the Maelstrom|r
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    #optional
    .isQuestTurnedIn 41510
    .goto 726,34.15,77.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .turnin 39771 >>交任务 雷霆之声
    .target Rehgar Earthfury
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷加尔·大地之怒|r 对话
    .turnin 39771 >>交任务雷霆之声
    .target Rehgar Earthfury
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器：Enhancement
#displayname 神器 武器: Enhancement
#next a) Order Hall 萨满祭司 第1部分
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 44006 >>接受任务 极限潜能
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这将自动选择 Enhancement artifact|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 44006 >>交任务 极限潜能
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 43945 >>接受任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这将自动选择 Enhancement artifact|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 43945 >>交任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .accept 41335 >>接受任务 Call of the Elements
    .target 萨尔
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    *|cRXP_WARN_这将自动选择 Enhancement artifact|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389399
    .target 萨尔
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .turnin 41335 >>交任务 Call of the Elements
    .target 萨尔
step
    #completewith Where the Hammer Falls
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .zoneskip 726,1
    .goto 726,34.51,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_风暴召唤者米尔拉|r 对话。
    .accept 42931 >>接受任务毁灭之锤的下落
    .target Stormcaller Mylra
step
    .goto 725,35.76,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_风暴召唤者米尔拉|r 对话。
    .accept 42931 >>接受任务 毁灭之锤的下落
    .target Stormcaller Mylra
step
    #optional
    .zoneskip 726,1
    .goto 726,60.13,66.90
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_风暴比克|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Stormbeak
step
    .goto 725,35.48,77.41
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_风暴比克|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Stormbeak
step
    #label Where the Hammer Falls
    .goto 207,47.10,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .turnin 42931 >>交任务毁灭之锤的下落
    .target 萨尔
    .accept 42932 >>接受任务石母所知
step
    .goto 207,56.35,12.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉赞恩|r 对话。
    .turnin 42932 >>交任务石母所知
    .target Therazane
    .accept 42933 >>接受任务万恶穴居人
    .accept 42935 >>接受任务石龙救援
    .accept 42936 >>接受任务在此一举
step
    #completewith FelrockTroggsSlainA
    #hidewindow
    #loop
    .goto 207,47.33,13.05,45,0
    .goto 207,37.76,14.14,35,0
    .goto 207,35.96,23.04,35,0
    .goto 207,45.67,15.53,35,0
    +1
step
    #completewith StoneDrakesRescuedA
    >>击杀 |cRXP_ENEMY_Felrock Troggs|r。
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #completewith StoneDrakesRescuedA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Disassembled Opalescent Guardian|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label StoneDrakesRescuedA
    >>击杀 |cRXP_ENEMY_Stone 魔枢雏龙|r 周围的 |cRXP_FRIENDLY_Felrock Troggs|r。
    .complete 42935,1 --6/6 Stone Drakes Rescued
    .target Stone Drake
step
    #completewith OpalescentGuardiansRebuiltA
    >>击杀 |cRXP_ENEMY_Felrock Troggs|r。
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #label OpalescentGuardiansRebuiltA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Disassembled Opalescent 守护者|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label FelrockTroggsSlainA
    >>击杀 |cRXP_ENEMY_Felrock Troggs|r。
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    .goto 207,31.22,20.94
    >>|cRXP_WARN_跟随箭头。|r
    .complete 42936,2 --5/5 Guardians Escorted to Aeosera
step
    .goto 207,56.35,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉赞恩|r 对话。
    .turnin 42933 >>交任务 万恶穴居人
    .turnin 42935 >>交任务 石龙救援
    .turnin 42936 >>交任务 在此一举
    .accept 42937 >>接受任务 针石强袭
    .target Therazane
step
    .goto 207,56.73,12.60
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_埃奥瑟拉|r
    .complete 42937,1 --1/1 Fly Aeosera to Needlerock
    .timer 60,飞行持续时间
step
    .goto 207,31.71,31.29
    >>|cRXP_WARN_等待剧情演出。|r
    .complete 42937,2 --1/1 Assault Needlerock with Aeosera
step
    .goto 207,25.24,30.33
    >>TImer 60
step
    .goto 207,24.21,29.70
    >>击杀 |cRXP_ENEMY_深渊灾星波罗克|r。
    .complete 42937,3 --1/1 Borlock of the Deeps slain
    .mob Borlock of the Deeps
step
    .goto 207,56.36,12.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞拉赞恩|r 对话。
    .turnin 42937 >>交任务 针石强袭
    .target Therazane
step
    .goto 207,56.54,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .accept 40224 >>接受任务 深渊中的战锤
    .target 萨尔
step
    .goto 207,56.39,12.78
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Portal to the 碎岩之渊|r
    .complete 40224,1 --1/1 Enter the Crumbling Depths
step
    .isOnQuest 40224
    .goto 207,56.39,12.78
    .enterScenario 950 >>进入 |cRXP_PICK_Cleansing the Deep|r 场景。
step
    .isInScenario 950
    .goto 729,33.08,72.98,35,0
    .goto 729,37.17,72.79
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 1902,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    #loop
    .goto 729,42.73,72.45,30,0
    .goto 729,39.10,83.23,30,0
    >>击杀 |cRXP_ENEMY_Devouring Imps|r。
    .scenario 1905,1 --Defeat all the Devouring Imps.
    .mob Devouring Imp
step
    .isInScenario 950
    .goto 729,48.80,78.32,35,0
    .goto 729,54.62,79.55,35,0
    .goto 729,59.60,82.33
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 1906,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    .goto 729,62.77,79.31
    >>>击杀 |cRXP_ENEMY_Corrupted Gyreworm|r。
    .scenario 1907,1 --Slay the Corrupted Gyreworm.
    .mob COrrupted Gyreworm
step
    .isInScenario 950
    .goto 729,62.71,67.05,35,0
    .goto 729,59.56,65.26
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 1908,1 --Follow the trail to find Geth'xun.
step
    .goto 729,54.30,54.58
    .isInScenario 950
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击周围岩石上的 |cRXP_PICK_毁灭之锤|r。
    .scenario 1909,1 --Acquire the Doomhammer.
    .complete 40224,2 --Acquire the Doomhammer
step
    .isInScenario 950
    .goto 729,52.96,53.11
    >>击杀 |cRXP_ENEMY_格斯逊|r。
    .scenario 1910,1 --Slay Geth'xun.
    .mob Geth'xun
step
    .isInScenario 950
    .goto 729,52.72,53.79
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_风暴召唤者米尔拉|r。
    .scenario 1911,1 --Help Stormcaller Mylra.
    .target Stormcaller Mylra
step
    .zoneskip 729,1
    #completewith next
    #label ReturnToTheMaelstromA
    #hidewindow
    .complete 40224,3 --1/1 Return to the Maelstrom
step
    #completewith ReturnToTheMaelstromA
    .goto 729,53.13,55.80
    .zone 207 >>点击 |cRXP_FRIENDLY_风暴比克|r。
step
    #requires ReturnToTheMaelstromA
    .goto 207,56.39,12.77
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_风暴比克|r。
    .complete 40224,3 --1/1 Return to the Maelstrom
    .target Stormbeak
step
    .goto 726,34.52,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_风暴召唤者米尔拉|r 对话。
    .turnin 40224 >>交任务 深渊中的战锤
    .target Stormcaller Mylra
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器：Restoration 萨满祭司
#displayname 神器 武器: Restoration
#next a) Order Hall 萨满祭司 第一部分
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 44006 >>接受任务 极限潜能
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 44006 >>交任务 极限潜能
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .accept 43945 >>接受任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿格拉玛|r 对话。
    .turnin 43945 >>交任务 Expanding 你的 Horizon
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .accept 41335 >>接受任务 元素的召唤
    .target 萨尔
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    *|cRXP_WARN_这会自动拾取恢复神器|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389400
    .target 萨尔
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话。
    .turnin 41335 >>交任务 元素的召唤
    .target 萨尔
step
    #completewith ThirdClueA
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 726,33.80,79.21,-1
    .goto 725,31.97,74.72,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_石语者埃鲁纳克|r 对话。
    .accept 43644 >>接受任务 深入海底
    .target Erunak Stonespeaker
step
    .goto 726,33.69,78.65,-1
    .goto 725,33.81,75.85,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bubble of 瓦丝琪尔|r。
    .complete 43644,1 --1/1 Travel to Vashj'ir with Erunak
    .target Bubble of Vashj'ir
step
    .goto 205,43.62,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_石语者埃鲁纳克|r 对话。
    .turnin 43644 >>交任务 深入海底
    .target Erunak Stonespeaker
    .accept 43645 >>接受任务波涛语者的踪迹
step
    .goto 205,40.50,74.98
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Adelee's 法杖|r。
    .complete 43645,1 --1/1 First Clue Found
step
    #completewith next
    #label ThirdClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Adelee's 日志|r。
    .complete 43645,3 --1/1 Third Clue Found
step
    #title |cFFFCDC00进入房间|r
    #completewith ThirdClueA
    .goto 205,33.10,68.76,10 >>|cRXP_WARN_进入房间。|r
step
    #requires ThirdClueA
    .goto 205,33.08,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Adelee's 日志|r。
    .complete 43645,3 --1/1 Third Clue Found
step
    #completewith next
    #label SecondClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Ancient Wavestone|r。
    .complete 43645,2 --1/1 Second Clue Found
step
    #title |cFFFCDC00离开房间|r
    #completewith SecondClueA
    .goto 205,33.11,69.01,10 >>|cRXP_WARN_离开房间。|r
step
    #requires SecondClueA
    .goto 205,37.31,69.81,35,0
    .goto 205,39.15,56.54
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    .goto 205,43.60,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_石语者埃鲁纳克|r 对话。
    .turnin 43645 >>交任务波涛语者的踪迹
    .target Erunak Stonespeaker
    .accept 40341 >>接受任务潮汐王座：艾萨拉的力量
    .goto 204,70.71,29.33,35,0
step
    .goto 204,70.91,29.74
    >>你可以使用水下坐骑，比如 |T133936:0|t[大海 海龟]。|cRXP_WARN_
    .complete 40341,1 --1/1 Travel to the Abyssal Maw
step
    .goto 204,69.18,25.52
    >>|cRXP_WARN_跟随箭头。|r
    .complete 40341,2 --1/1 Enter the Throne of Tides
step
    .isOnQuest 40341
    .goto 204,69.18,25.52
    .enterScenario 1066 >>进入 |cRXP_PICK_黑暗女王与海|r 情景。
step
    .isInScenario 1066
    .goto 742,50.09,82.31
    >>对 |cRXP_FRIENDLY_海巨人|r 使用 |T136044:0|t[治疗 Surge]。
    .scenario 2282,1 --Heal the Sea Giant.
    .target Grash
    .usespell 8004
step
    .isInScenario 1066
    .goto 742,49.93,82.67
    >>击杀 |cRXP_ENEMY_Naga Brutes|r。
    .scenario 2282,2 --Kill the Naga Brutes.
step
    .isInScenario 1066
    .goto 742,50.04,82.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉什|r 对话。
    .scenario 2282,3 --Recruit the Sea Giant.
    .target Grash
    .skipgossipid 45587
    .skipgossipid 45621
step
    .isInScenario 1066
    .goto 742,49.91,55.50
    >>击杀 |cRXP_ENEMY_Frenzied Deep 大海 龙虾人|r, |cRXP_ENEMY_吉斯林奈唤潮者|r, 和 |cRXP_ENEMY_
    .scenario 2283,1 --Defeat Adelee's Guards.
step
    .isInScenario 1066
    .goto 742,50.05,51.93
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_波涛语者安德莉|r。
    .scenario 2283,2 --Rescue Adelee.
    .target Wavespeaker Adelee
step
    .isInScenario 1066
    .goto 742,49.88,54.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉什|r 对话。
    .scenario 2284,1 --Ask Grash to Smash the Ice Wall
    .target Grash
    .skipgossipid 45543
step
    .isInScenario 1066
    .goto 742,49.94,42.15
    >>击杀 |cRXP_ENEMY_克拉里斯|r。
    .scenario 2284,2 --Defeat Kra'liss
    .mob Kra'liss
step
    .isInScenario 1066
    .goto 742,49.92,30.10
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bubble Up|r。
    .scenario 2286,1 --Use Erunak's spell to ascend the riptide.
step
    #title |cFFFCDC00躲闪海浪|r
    .isInScenario 1066
    .goto 743,50.48,56.05
    >>|cRXP_WARN_躲闪海浪并跟随箭头。|r
    .scenario 2286,2 --Run through the wave gauntlet.
step
    .isInScenario 1066
    .goto 743,50.64,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_葛拉什|r 对话。
    .scenario 2287,1 --Ask Grash to destroy the ice wall.
    .target Grash
    .skipgossipid 45472
step
    .goto 743,50.53,42.91
    .isInScenario 1066
    >>击杀 |cRXP_ENEMY_吉斯林|r。
    .scenario 2287,2 --Slay Lady Zithreen.
    .mob Lady Zithreen
step
    .isInScenario 1066
    .goto 743,50.56,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Sharas'dal|r。
    .scenario 2288,1 --Pick up Sharas'dal.
    .complete 40341,3 --1/1 Acquire Sharas'dal
    .timer 35,剧情事件时长
step
    .goto 743,50.57,42.97
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Bubble to the Maelstrom|r。
    .complete 40341,4 --1/1 Return to the Maelstrom
step
    .goto 726,34.53,76.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_风暴召唤者米尔拉|r 对话。
    .turnin 40341 >>交任务潮汐王座：艾萨拉的力量
    .target Stormcaller Mylra
]])
--Elemental 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 元素
#displayname 神器 武器: 元素
#next ac) Order Hall 萨满祭司 第二部分
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Elemental
]])
--Enhancement 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Enhancement
#displayname 神器 武器: Enhancement
#next ac) Order Hall 萨满祭司 第2部分
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Enhancement
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Restoration 萨满祭司
#displayname 神器 武器: Restoration
#next ac) Order Hall 萨满祭司 第2部分
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman
]])

--Shaman Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 萨满祭司 第1部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 萨满祭司
#chapter
#internal

<< Shaman

step
    #completewith Azeroth Needs You2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Shaman Part 1@A Ring Unbroken-Shaman at the Maelstrom
step
    .goto 725,36.20,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨尔|r 对话
    .accept 41335 >>接受任务 元素的召唤
    .target 萨尔
step
    .isQuestAvailable 41335
    .isQuestAvailable account,91955
    +暂时选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅一次）|r
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Elemental >>Remix\a) 神器 武器: 元素 >> 元素(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Enhancement >>Remix\a) 神器 武器: Enhancement >> Enhancement(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman >>Remix\a) 神器 武器: Restoration 萨满祭司 >> Restoration(治疗者) Questline
step
    #include ac) Order Hall Shaman Part 2@A Ring Reforged-Azeroth Needs You
step
    .zoneskip 726,1
    .goto 726,29.81,52.02
    .zone 627 >>点击 |cRXP_PICK_传送门|r 到 达拉然。
]])

-- --------- Warlock ---------

--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Affliction
#displayname 神器 武器: Affliction
#next a) Order Hall 术士 Part 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r |cRXP_WARN_在你的职业大厅|r 对话。
    .accept 44089 >>接受任务 更强大的武器库
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_这将自动选择Affliction神器|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389401
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 44089 >>交任务 极限潜能
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r |cRXP_WARN_在你的职业大厅|r 对话。
    .accept 43984 >>接受任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_这将自动选择Affliction神器|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389401
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 43984 >>交任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40684 >>接受任务毁灭利器之书
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    --*|cRXP_WARN_This will automatically pick the Affliction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389401
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 40684 >>交任务 毁灭利器之书
    .target Calydus
step
    #completewith Following the Curse
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40495 >>接受任务 乌萨勒斯，逆风收割者
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40495 >>接受任务乌萨勒斯，逆风收割者
    .target Calydus
step
    .isOnQuest 40495
    .zone 47 >>使用 |T254294:0|t[暮色森林卷轴]
    .use 173527
step
    .goto 47,77.45,35.87
    >>|cRXP_WARN_跟随箭头。|r
    .complete 40495,1 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话并击杀他。
    .complete 40495,2 --1/1 Convince Revil to help.
    .timer 6,Revil 剧情演出
    .target Revil Kost
    .skipgossipid 44918
step
    #label Following the Curse
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40495 >>交任务乌萨勒斯，逆风收割者
    .accept 40588 >>接受任务追踪诅咒
    .target Revil Kost
step
    .isOnQuest 40588
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .goto 47,77.37,35.12
    .countdown 25 >>杀死 |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40588
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>护送 |cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40588
    .goto 47,85.55,40.69
    .countdown 20 >>杀死 |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00在埃瑞丁附近停留|r
    .isOnQuest 40588
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>护送 |cRXP_FRIENDLY_瑞维尔·考斯特|r
step
    .isOnQuest 40588
    .goto 42,44.33,34.54
    .countdown 20 >>杀死 |cRXP_ENEMY_Dark Riders|r
step
    #title 停留在埃瑞丁附近
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>护送 |cRXP_FRIENDLY_瑞维尔·考斯特|r
    .complete 40588,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话
    .turnin 40588 >>交任务追踪诅咒
    .accept 40604 >>接受任务调查过去
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_破旧的日志|r。
    .complete 40604,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Battered 日志|r 对话
    .turnin 40604 >>交任务调查过去
    .accept 40606 >>接受任务指明方向
    .target Battered Journal
step
    .goto 42,52.13,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Compass|r。
    .complete 40606,1 --1/1 Ariden's Compass
step
    .goto 42,52.42,34.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40606 >>交任务指明方向
    .accept 40611 >>接受任务逆风的命运
    .target Revil Kost
step
    #completewith next
    #hidewindow
    .cast 198335 >>跟随箭头
    .timer 20,过场剧情
step
    .goto 42,35.57,35.52
    >>使用 |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (校准罗盘)。
    .complete 40611,1 --1/1 Attuned at Deadman's Crossing
step
    #completewith next
    #hidewindow
    .cast 198335 >>跟随箭头
    .timer 15,过场剧情
step
    .goto 42,46.99,62.32
    >>使用 |T338784:0|t[|cRXP_WARN_额外动作按钮|r] (调谐 Compass)。
    .complete 40611,3 --1/1 Attuned at the bridge
step
    #completewith next
    #label TheFateOfDeadwindA
    >>使用 |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (校准罗盘)。
    .complete 40611,2 --1/1 Attuned at the church
step
    #title |cFFFCDC00进入教堂|r
    #completewith TheFateOfDeadwindA
    .goto 42,40.66,77.80,6 >>|cRXP_WARN_跟随箭头进入教堂。|r
step
    #requires TheFateOfDeadwindA
    #completewith next
    #hidewindow
    .cast 198335 >>跟随箭头
    .timer 13,过场剧情
step
    #requires TheFateOfDeadwindA
    .goto 42,40.82,78.50
    >>使用 |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (校准罗盘)。
    .complete 40611,2 --1/1 Attuned at the church
step
    .goto 42,49.46,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .turnin 40611 >>交任务逆风的命运
    .accept 41155 >>接受任务 黑暗骑士
    .target Revil Kost
step
    .isOnQuest 41155
    .goto 42,46.28,69.07
    .enterScenario 988 >>|cRXP_WARN_进入 |cRXP_PICK_The Dark Riders|r 场景|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 988
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>跳下
step
    #requires KarazhanCatacombsA
    .isInScenario 988
    .goto 46,72.09,74.41
    >>|cRXP_WARN_进入地下墓穴|r
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 988
    #title 使用 |T607512:0|t[恶魔传送门]
    .goto 46,55.90,69.19
    >>对 |cRXP_ENEMY_埃瑞丁|r 使用 |T607512:0|t[恶魔传送门] |cRXP_WARN_从任务日志中|r。
    .scenario 2022,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 111771
step
    .isInScenario 988
    .goto 46,56.36,69.25
    >>击杀 |cRXP_ENEMY_守护者|r。
    .scenario 2023,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>跟随箭头
    .timer 25,过场剧情
step
    .isInScenario 988
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Ulthalesh|r。|cRXP_WARN_等待剧情演出|r。
    .scenario 2024,1 --Ulthalesh found
step
    .isInScenario 988
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_跟随箭头上楼梯到 |cRXP_ENEMY_埃瑞丁|r。
    .scenario 2025,1 --Ariden followed
    .timer 17,埃瑞丁 剧情演出
step
    .isInScenario 988
    .goto 46,68.36,24.43
    >>击杀 |cRXP_ENEMY_埃瑞丁|r。
    .scenario 2026,1 --Ariden defeated
    .timer 33,埃瑞丁 剧情演出
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_天启|r。
    .complete 41155,1 --1/1 Complete the Dark Riders scenario
    .complete 41155,2 --1/1 Ulthalesh claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    *|cRXP_WARN_注释:|r 如果他仍在战斗，击杀他正在战斗的小怪。
    .turnin 41155 >>交任务 黑暗骑士
    .target Revil Kost
step
    .isQuestAvailable 40823
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_瑞维尔·考斯特|r 对话。
    .accept 41156 >>接受任务获取力量
    .target Revil Kost
step
    .zoneskip 46,1
    .cooldown item,250411,>0,1
    .zone 627 >>使用 |T134419:0|t[Timerunner's 炉石] 前往达拉然
    .use 250411
step
    .isOnQuest 41156
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 41156 >>交任务获取力量
    .target Calydus
]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Demonology
#displayname 神器 武器: Demonology
#next a) Order Hall 术士 Part 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r |cRXP_WARN_在你的职业大厅|r 对话。
    .accept 44089 >>接受任务 更强大的武器库
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389402
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 44089 >>交任务 极限潜能
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r |cRXP_WARN_在你的职业大厅|r 对话。
    .accept 43984 >>接受任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_这将自动选择Demonology神器|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389402
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 43984 >>交任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40684 >>接受任务毁灭利器之书
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    --*|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389402
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 40684 >>交任务 毁灭利器之书
    .target Calydus
step
    #completewith Grave Dust
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 42128 >>接受任务 仪式材料
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 42128 >>接受任务 仪式材料
    .target Calydus
step
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    #optional
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_通过传送门前往达拉然。|r
step
    #optional
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_跟随离开运河的路。|r
step
    .isOnQuest 42128
    .zoneskip 628,1
    .goto 628,65.60,56.81,12,0
    .goto 628,77.31,68.50,10,0
    .goto 627,59.67,47.69
    .zone 627 >>|cRXP_WARN_跟随离开运河的路。|r
step
    #label Grave Dust
    .goto 627,33.41,39.56
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Freshly Dug Grave|r。
    .complete 42128,1 --1/1 Grave Dust
step
    .goto 627,38.65,24.56
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Can of Overheated Oil|r。
    .complete 42128,2 --1/1 Can of Overheated Oil
step
    .goto 627,48.51,38.05
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Aged Snowplum Brandy|r。
    .complete 42128,3 --1/1 Aged Snowplum Brandy
step
    .goto 627,60.04,38.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Docile Stag|r 对话。
    .complete 42128,4 --1/1 Stag Blood Sample
    .skipgossipid 45158
step
    #completewith next
    #label RitualReagentsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 42128 >>交任务 仪式材料
    .accept 42168 >>接受任务 窥探黑暗
    .target Calydus
step
    #title |cFFFCDC00进入房间|r
    #completewith RitualReagentsA
    .goto 627,56.84,46.85,8 >>|cRXP_WARN_跟随箭头进入房间。|r
step
    #requires RitualReagentsA
    .goto 627,54.39,46.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 42128 >>交任务 仪式材料
    .accept 42168 >>接受任务 窥探黑暗
    .target Calydus
step
    .goto 627,53.73,47.31
    >>使用 |T1020342:0|t[|cRXP_WARN_ExtraActionButton|r] (Dark Communion)
    .complete 42168,1 --1/1 Scrying Ritual Perfomed
step
    .goto 627,53.50,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨奇尔|r 对话。
    .complete 42168,2 --1/1 Skull of the Man'ari's location discovered
    .target Thal'kiel
    .skipgossipid 45512
    .skipgossipid 45513
    .skipgossipid 45546
step
    .goto 627,54.37,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 42168 >>交任务 窥探黑暗
    .accept 42125 >>接受任务 黑暗耳语
    .timer 9,传送门生成于
    .target Calydus
step
    .goto 627,53.74,47.26
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_卡里杜斯的恶魔传送门|r。
    .complete 42125,1 --1/1 Enter Calydus's Demonic Portal
step
    .isOnQuest 42125
    .goto 627,53.74,47.26
    .enterScenario 1097 >>进入 |cRXP_PICK_Dark 低语|r 场景。
step
    .isInScenario 1097
    .goto 680,25.64,61.87,20,0
    .goto 680,27.53,64.61
    >>杀死 |cRXP_ENEMY_Eredar Doomweavers|r
    .scenario 2443,1 --Locate the Skull of the Man'ari
    .mob Eredar Doomweaver
step
    .isInScenario 1097
    .goto 680,27.50,64.74
    >>击杀 |cRXP_ENEMY_邪脉大恶魔|r。
    .scenario 2475,1 --Defeat the Felborn Overfiend
    .mob Felborn Overfiend
step
    .isInScenario 1097
    .goto 680,28.71,61.97,10,0
    .goto 680,29.16,61.32
    >>使用 |T607512:0|t[恶魔传送门] 越过屏障
    .scenario 2476,1 --Mephistroth's Barrier crossed
    .usespell 111771
step
    .isInScenario 1097
    .goto 680,30.27,60.56
    >>击杀 |cRXP_ENEMY_Demon forces|r、|cRXP_ENEMY_痛苦女妖妮塔|r 和 |cRXP_ENEMY_提拉娜夫人|r。
    .scenario 2477,2 --Defeat waves of enemies
    .scenario 2477,1 --Defeat the leaders of the attackers
    .mob Eredar Soulgrinder
    .mob Dreadguard Sentry
    .mob Wrathguard Hellblade
    .mob Fel Mongrel
    .mob Pain Mistress Nikta
    .mob Lady Tyrana
step
    .isInScenario 1097
    .goto 680,30.64,63.49
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2478,1 --Interrupted Mephistroth's ritual
step
    .isInScenario 1097
    .goto 680,31.11,65.96
    >>击杀 |cRXP_ENEMY_孟菲斯托斯|r。
    .scenario 2478,2 --Mephistroth Defeated
    .mob Mephistroth
step
    .goto 680,31.08,65.92
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Skull of 堕落者|r。
    .complete 42125,2 --1/1 Obtain the Skull of the Man'ari
step
    .goto 680,31.36,65.90
    .isInScenario 1097
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r。
    .scenario 2502,1 --Portal of Thal'kiel used
step
    #optional
    .isQuestTurnedIn 40823
    .isOnQuest 42125
    .goto 627,34.87,45.45,10,0
    .goto 628,21.20,55.73,10,0
    .goto 628,29.53,51.96,10,0
    .goto 628,28.55,44.40
    .zone 717 >>进入达拉然下水道并点击 |cRXP_PICK_Portal to 恐痕裂隙|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,55.83,49.89,20,0
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 42125 >>交任务 黑暗耳语
    .target Calydus
step
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 42125 >>交任务 黑暗耳语
    .target Calydus
]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器：Destruction
#displayname 神器 武器：Destruction
#next a) Order Hall术士 第一部分
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r |cRXP_WARN_在你的职业大厅|r 对话。
    .accept 44089 >>接受任务 更强大的武器库
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_这将自动拾取Destruction神器|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389403
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 44089 >>交任务 极限潜能
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 43984 >>接受任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    *|cRXP_WARN_这将自动选择Destruction神器|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389403
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 43984 >>交任务 再度开启的典籍
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40684 >>接受任务 毁灭利器之书
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    --*|cRXP_WARN_This will automatically pick the Destruction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389403
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 40684 >>交任务 毁灭利器之书
    .target Calydus
step
    #completewith Caer Darrow
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 43100 >>接受任务 寻找权杖
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 43100 >>接受任务 寻找权杖
    .target Calydus
step
    #label Caer Darrow
    .goto 22,66.83,75.18
    >>使用 |T254294:0|t[凯尔达隆 炽蓝丝绸]
    .complete 43100,2 --1/1 Go to Caer Darrow
    .use 173526
step
    #title 查找信息 (1/3)
    .goto 22,69.03,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Logbook of Ur'dan|r。
    *|cRXP_WARN_注释：|r 此任务流程已固定，必须按照确切的顺序进行，否则箭头导向会出错。
    .complete 43100,3,1 --1/3 Find information on the Shadow Council
step
    #title 查找信息 (2/3)
    .goto 22,69.40,77.31
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_遗忘的书信|r。
    *|cRXP_WARN_注释：|r 此任务流程已固定，必须按照确切的顺序进行，否则箭头导向会出错。
    .complete 43100,3,2 --2/3 Find information on the Shadow Council
step
    #title 查找信息 (3/3)
    .goto 22,69.14,79.60
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Council Notice|r。
    *|cRXP_WARN_注释：|r 这个任务是硬编码的，意味着你必须按这个确切的顺序进行，否则箭头会出错。
    .complete 43100,3 --3/3 Find information on the Shadow Council
step
    .goto 22,69.94,74.01
    >>击杀 |cRXP_ENEMY_祈求者耶戈什|r。拾取他的 |T133738:0|t[|cRXP_LOOT_Book of 麦迪文|r]。
    .complete 43100,4 --1/1 Take the Book of Medivh from Jergosh
    .mob Jergosh the Invoker
step
    #completewith next
    #hidewindow
    .gossipoption 45857 >>跟随箭头
    .timer 25,卡里杜斯 剧情
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话
    .complete 43100,5 --1/1 Speak with Calydus
    .target Calydus
    .skipgossipid 45857
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话
    .turnin 43100 >>交任务 寻找权杖
    .accept 43153 >>接受任务 点睛之笔
    .target Calydus
step
    .goto 22,69.26,79.21
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_传送门|r 前往托尔巴拉德。
    .complete 43153,1 --1/1 Take the Portal to Tol Barad
step
    .isOnQuest 43153
    .goto 22,69.26,79.21
    .enterScenario 1155 >>进入 |cRXP_PICK_点睛之笔|r 场景。
step
    .isInScenario 1155
    .goto 773,42.70,40.04
    >>|cRXP_WARN_跟随箭头。|r
    .scenario 2700,1 --Find the Shadow Council group.
step
    #completewith next
    #label SpeakWithAllarisAndNagazA
    .isInScenario 1155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allaris 和 纳伽兹。|r 对话
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    #title |cFFFCDC00进入监狱|r
    #completewith SpeakWithAllarisAndNagazA
    .goto 773,42.70,38.47,8 >>|cRXP_WARN_跟随箭头进入监狱。|r
step
    #requires SpeakWithAllarisAndNagazA
    .isInScenario 1155
    .goto 773,42.64,35.61,8,0
    .goto 773,43.72,35.65,8,0
    .goto 773,43.76,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_Allaris 和 纳伽兹|r 对话。
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    .isInScenario 1155
    .goto 773,44.99,30.60,15,0
    .goto 773,48.64,31.16
    >>|cRXP_WARN_跟随箭头。等待剧情演出。|r
    .scenario 2716,1 --Find Tyranis in D-Block
step
    .isInScenario 1155
    .goto 773,48.63,31.23
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_泰拉尼斯·玛雷姆|r。
    .scenario 2717,1 --Break Tyranis' chain or leave him
    .target Tyranis Malem
step
    .isInScenario 1155
    .goto 773,45.07,30.73
    >>|cRXP_WARN_跟随箭头。等待剧情演出。|r
    .scenario 2718,1 --Continue searching the rest of the cell block.
step
    .goto 773,43.05,26.14
    .isInScenario 1155
    >>杀死 |cRXP_ENEMY_纳伽兹|r。
    .scenario 2719,1 --Follow then kill Nagaz.
    .mob 纳伽兹
step
    .isInScenario 1155
    .goto 773,43.89,26.61,12,0
    .goto 773,42.68,30.57
    >>|cRXP_WARN_跟随箭头。等待剧情演出。|r
    .scenario 2720,1 --Continue searching D-Block.
step
    .goto 773,39.53,30.76,15,0
    .goto 773,38.99,32.85
    .isInScenario 1155
    >>|cRXP_WARN_跟随箭头。等待剧情演出。|r
    .scenario 2724,1 --Find the prison manifest.
step
    #completewith EnterBaradinHoldC
    #label EnterBaradinHoldA
    #hidewindow
    .isInScenario 1155
    .scenario 2725,1 --Enter Baradin Hold
step
    #title |cFFFCDC00离开监狱|r
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldB
    .goto 773,40.19,30.27,10,0
    .goto 773,43.79,31.78,10,0
    .goto 773,43.64,35.79,8,0
    .goto 773,42.73,35.83,8,0
    .goto 773,42.68,39.66,10 >>|cRXP_WARN_跟随箭头离开监狱。|r
step
    #title |cFFFCDC00进入巴拉丁监狱|r
    #requires EnterBaradinHoldB
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldC
    .goto 773,46.29,47.92,8,0
    .goto 773,47.59,48.18,8,0
    .goto 773,47.63,50.13,8 >>|cRXP_WARN_跟随箭头进入巴拉丁监狱。|r
step
    #requires EnterBaradinHoldA
    .isInScenario 1155
    .goto 773,47.66,52.69
    .scenario 2725,1 --Enter Baradin Hold
step
    .isInScenario 1155
    .goto 774,48.26,14.85
    >>杀死 |cRXP_ENEMY_奥库萨隆|r。|cRXP_WARN_等待剧情演出。|r
    .scenario 2726,1 --Kill Occul'tharon and find the Eye of Dalaran.
    .complete 43153,2 --1/1 Find the Eye of Dalaran
    .mob Occul'tharon
step
    .goto 774,48.10,28.74,-1
    .goto 619,46.84,64.48,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Demonic 传送门|r。
    .complete 43153,3 --1/1 Return to Calydus in Dalaran
step
    .goto 627,74.09,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话
    .turnin 43153 >>交任务 点睛之笔
    .target Calydus
    .accept 43254 >>接受任务 破坏仪式
step
    #completewith next
    #label RitualRuinationA
    #hidewindow
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith RitualRuinationA
    .goto 627,74.70,42.78
    .vehicle 110480 >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_魔蝠|r。
    .target Fel Bat
step
    #requires RitualRuinationA
    .goto 619,55.32,63.94
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_FRIENDLY_魔蝠|r。
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith next
    #hidewindow
    .goto 646,60.40,25.22,10 >>跟随箭头
    .timer 60,古尔丹 剧情演出
step
    .goto 646,55.79,63.01
    >>|cRXP_WARN_等待剧情演出。|r
    .complete 43254,2 --1/1 Listen to Gul'dan
step
    .goto 646,55.91,62.89
    >>杀死 |cRXP_ENEMY_奥莱利斯·纳拉辛|r。
    .complete 43254,3 --1/1 Slay Allaris Narassin
    .mob Allaris Narassin
step
    .goto 646,60.17,25.43
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Scepter of 萨格拉斯|r。
    .complete 43254,4 --1/1 Take the Scepter of Sargeras
step
    .goto 619,55.74,63.07
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Legion 祭坛|r。
    .complete 43254,5 --1/1 Ruin the ritual
step
    .goto 619,55.50,63.36
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Demonic 传送门|r。
    .complete 43254,6 --1/1 Escape to Dalaran and meet Calydus
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 43254 >>交任务 破坏仪式
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .turnin 43254 >>交任务 破坏仪式
    .target Calydus
]])
--Affliction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Affliction
#displayname 神器 武器: Affliction
#next ac) Order Hall 术士 第2部分
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Affliction
]])
--Demonology 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Demonology
#displayname 神器 武器: Demonology
#next ac) Order Hall 术士 Part 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Demonology
]])
--Destruction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: Destruction
#displayname 神器 武器: Destruction
#next ac) Order Hall 术士 Part 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Destruction
]])

--Warlock Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 术士 Part 1
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 术士
#chapter
#internal

<< Warlock

step
    #completewith Ritssyn Flamescowl2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Warlock Part 1@The Sixth-New Blood
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡里杜斯|r 对话。
    .accept 40684 >>接受任务毁灭利器之书
    .target Calydus
step
    .isQuestAvailable 40684
    .isQuestAvailable account,91955
    +暂时选择以下指南之一：
    *|cRXP_WARN_重要：选择你已经拥有的那个来获得额外的10%经验值（仅一次）|r
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Affliction >>RestedXP Legion Remix\a) 神器 武器: Affliction >> Affliction(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Demonology >>RestedXP Legion Remix\a) 神器 武器: Demonology >> Demonology(每秒伤害) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Destruction >>RestedXP Legion Remix\a) 神器 武器: Destruction >> Destruction(每秒伤害) Questline
step
    #include ac) Order Hall Warlock Part 2@Dreadscar-Ritssyn Flamescowl
step
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_通过传送门前往达拉然。|r
step
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_跟随离开运河的路。|r
]])

-- --------- Warrior ---------

--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: Arms
#displayname 神器 武器: Arms
#next a) Order Hall Campaign Intro
#internal

<< Warrior

step
    #completewith Artifact Weapon: Arms
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 44417 >>接受任务又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 44417 >>交任务又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 43949 >>接受任务更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 43949 >>交任务更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 40579,1 >>接受任务 传说武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 40579,1 >>交任务 传说武器
    .target Odyn
step
    #completewith Tirisfal Glades
    +|cRXP_WARN_确保你有可用的武器装备。如果没有，装备一个直到获得你的神器，或切换到已经拥有其神器的专精|r。
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 41105 >>接受任务王者之剑
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>与 |cRXP_FRIENDLY_艾瑞莉娅|r 对话
    .timer 11,RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00跟随箭头|r
    .goto 18,13.5,56.65,100 >>跟随箭头
    *|cRXP_WARN_如果你卡住了，小退一下|r
step
    .isOnQuest 41105
    #title |cFFFCDC00跟随箭头|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>杀死 |cRXP_ENEMY_暮光祭师|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob 暮光祭师
    .timer 62,RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00跟随箭头|r
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00跟随箭头|r
    >>进入陵墓
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>打断并眩晕 |cRXP_ENEMY_虚空触须|r，然后击杀它们。
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>杀死 |cRXP_ENEMY_守护者索斯奥兹|r 和 |cRXP_ENEMY_血肉之子|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00跟随箭头|r
    >>杀死 |cRXP_ENEMY_无面幻术师|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_腐蚀者扎卡兹|r
    .scenario 2214,1 --Take the sword
    .timer 15,RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>杀死 |cRXP_ENEMY_腐蚀者扎卡兹|r |cRXP_ENEMY_等待剧情演出|r。
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击尸体内的 |cRXP_PICK_武器|r
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>使用 |cRXP_WARN_ExtraActionButton|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    #label Artifact Weapon: Arms
    >>经过灯光并使用 |cRXP_WARN_额外动作按钮|r
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 41105 >>交任务王者之剑
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器武器: 狂怒
#displayname 神器武器: 狂怒
#next a) Order Hall Campaign Intro
#internal

<< Warrior

step
    #completewith Artifact Weapon: Fury
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 44417 >>接受任务又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 44417 >>交任务又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 43949 >>接受任务更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 43949 >>交任务更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 40579,1 >>接受任务 传说武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 40579,1 >>交任务 传说武器
    .target Odyn
step
    #completewith Aerylia
    +|cRXP_WARN_确保装备了可用的武器。如果没有，请装备一个直到获得你的神器，或切换到已经拥有神器的专精。|r
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 40043 >>接受任务英雄猎杀者
    .target Odyn
step
    #completewith next
    #label Aerylia
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>与 |cRXP_FRIENDLY_艾瑞莉娅|r 对话
    .timer 30,RP
    .target Aerylia
step
    #requires Aerylia
    >>|cRXP_WARN_等待剧情演出|r。
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_等待剧情演出|r。
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_大篝火|r
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>击杀一波波敌人。
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>击杀一波波敌人。
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>击杀一波波敌人。
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>杀死 |cRXP_ENEMY_新晋海拉加尔战士|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>杀死 |cRXP_ENEMY_死灵秘法师|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>击杀 |cRXP_ENEMY_死灵秘法师|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Rune|r
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Rune|r
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Rune|r
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_Rune|r
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>击败 |cRXP_ENEMY_维格弗斯·刀风|r |cRXP_WARN_不要一招秒杀|r。
    *|cRXP_WARN_如果NPC卡住了，小退一下|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>击败 |cRXP_ENEMY_维格弗斯·刀风|r |cRXP_WARN_再次|r。
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_等待剧情演出|r
    >>杀死 |cRXP_ENEMY_维格弗斯·刀风|r。
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    #label Artifact Weapon: Fury
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>离开副本（右键点击你的角色框架）或按下宏。
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >>离开副本
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 40043 >>交任务英雄猎杀者
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) 神器 武器: 战士 防护
#displayname 神器武器：防护
#next a) 职业大厅 战役序章
#internal

<< Warrior

step
    #completewith Artifact Weapon: Warrior Protection
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 44417 >>接受任务 又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45058 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 44417 >>交任务 又一个传奇
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 43949 >>接受任务 更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 43949 >>交任务 更多的传奇武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 40579,1 >>接受任务 传说武器
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 40579,1 >>交任务 传说武器
    .target Odyn
step
    #completewith Axe and You Shall Receive
    +|cRXP_WARN_检查你装备了可用的武器；如果没有，请装备一个，直到获得你的神器或切换到已拥有神器的专精|r
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 39191 >>接受任务 破冰者的遗产
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>与 |cRXP_FRIENDLY_胡尼尔|r 对话
    .timer 20,RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官杜诺夫|r 对话
    .accept 44255 >>接受任务 应得的奖赏
    .target Quartermaster Durnolf
step
    #label Axe and You Shall Receive
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_军需官杜诺夫|r 对话
    .turnin 44255 >>交任务 应得的奖赏
    .target Quartermaster Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_等待剧情演出|r
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_你可以在这里使用驭龙术|r。
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>击杀 |cRXP_ENEMY_匹利克|r
    .scenario 1856,1 --Defeat Pillik
    .timer 50,RP
    .mob Pillik
step
    #label Pillik
    .goto 634,83.85,9.5
    .countdown 50
step
    #completewith next
    #label Find Magnar
    .isInScenario 909
    >>杀死门上的 |cRXP_ENEMY_呼啸风暴|r。
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_等待大门打开|r。
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>击杀 |cRXP_ENEMY_幽灵塑风者|r 来消除风
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>击杀门上的 |cRXP_ENEMY_呼啸风暴|r
    .scenario 1829,1 --Find Magnar
    .timer 30,RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>击杀 |cRXP_ENEMY_马格纳·破冰者|r 和几波敌人
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>与 |cRXP_FRIENDLY_胡尼尔|r 对话
    .timer 85,RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>击败 |cRXP_ENEMY_马格纳·破冰者|r 和几波敌人
    *杀死 |cRXP_ENEMY_幽灵塑风者|r 来消除风暴。
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_等待剧情演出|r。
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|t点击 |cRXP_PICK_武器|r
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    #label Artifact Weapon: Warrior Protection
    .goto 635,49.95,82.61
    >>使用 |cRXP_WARN_ExtraActionButton|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .turnin 39191 >>交任务 破冰者的遗产
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP军团再临：幻境新生
#name z) 神器 武器: 武器
#displayname 神器 武器: 武器
#next ac) Order Hall 战士 第2部分
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Arms
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#chapter
#name z) 神器 武器: 狂怒
#displayname 神器 武器: 狂怒
#next ac) Order Hall 战士 第2部分
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Fury
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#chapter
#name z) 神器 武器: 战士 防护
#displayname 神器武器：防护
#next ac) Order Hall 战士 第2部分
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection
]])

--Warrior Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP军团再临：幻境新生
#subgroup |cFFFCDC00(10-80+)|r Order Hall
#name a) Order Hall 战士 第1部分
#displayname |cFF00CCFF1|r - Order Hall 序章|r
#next ac) Order Hall 战士
#chapter
#internal

<< Warrior

step
    #completewith Accept The Eye of Odyn2
    #hidewindow
    +测试
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step << Alliance
    #include ab) Order Hall Warrior Part 1@OrderHallWarriorA1Start-OrderHallWarriorA1End
step << Horde
    #include ab) Order Hall Warrior Part 1@OrderHallWarriorH1Start-OrderHallWarriorH1End
step
    #include ab) Order Hall Warrior Part 1@OrderHallWarrior1-Order Hall Warrior Part 1
step
    .isQuestAvailable 40579
    #label Order Hall Warrior
    .goto 695,58.33,84.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_奥丁|r 对话
    .accept 40579 >>接受任务 传说武器
    .target Odyn
step
    .isQuestAvailable 40579
    +暂时选择以下指南之一：
    *|cRXP_WARN_你稍后还可以完成其他的任务线|r
    *|cFFFF0000如果你不选择一个，就无法进行下去|r。
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arms >>RestedXP Legion Remix\a) 神器 武器: Arms >> Arms(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fury >>RestedXP Legion Remix\a) 神器 武器: 元素之怒 >> 元素之怒(每秒伤害) 任务线
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection >>RestedXP Legion Remix\a) 神器 武器: 战士 防护 >> 防护(坦克) 任务线
step
    #include ac) Order Hall Warrior Part 2@OrderHallPart2Start1-Accept The Eye of Odyn
]])
