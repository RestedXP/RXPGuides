if GetLocale() ~= "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP 《燃烧的远征》升级指南（联盟版）
<< Alliance
#name 直升人物 58-60
#subgroup RestedXP 联盟直升 58-60
#defaultfor 58Boost
#next 59-61 地狱火半岛

step << Warrior
    .goto Stormwind City,78.211,47.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与楼上的 |cRXP_FRIENDLY_安德尔·杰曼|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Ander Germaine
step << Warrior
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] 并装备 |T133041:0|t[共济战槌]
    .use 186057
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warrior
    .goto Stormwind City,78.211,47.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德尔·杰曼|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接任务 战斗训练
    .target Ander Germaine
step << Warrior
    .goto Stormwind City,78.211,47.596
    >>与 |cRXP_FRIENDLY_安德尔·杰曼|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Ander Germaine
step << Warrior
    .goto Stormwind City,78.211,47.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德尔·杰曼|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
step << Warrior
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warrior
    .goto Stormwind City,78.211,47.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_安德尔·杰曼|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接任务 黑暗之门
    .target Ander Germaine
step << Paladin
    .goto Stormwind City,37.142,33.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷森·沙东布瑞克公爵|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Lord Grayson Shadowbreaker
step << Paladin
    .use 185964 >>打开 |T133651:0|t[艾泽拉斯生存补给包] 并装备 |T133041:0|t[共济战槌]
    .use 186057
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Paladin
    .goto Stormwind City,37.142,33.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷森·沙东布瑞克公爵|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接任务 战斗训练
    .target Lord Grayson Shadowbreaker
step << Paladin
    .goto Stormwind City,37.142,33.266
    >>与 |cRXP_FRIENDLY_格雷森·沙东布瑞克公爵|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Lord Grayson Shadowbreaker
step << Paladin
    .goto Stormwind City,37.142,33.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷森·沙东布瑞克公爵|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
step << Paladin
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Paladin
    .goto Stormwind City,37.142,33.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格雷森·沙东布瑞克公爵|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接受任务 黑暗之门
    .target Lord Grayson Shadowbreaker
step << Rogue
    .goto Stormwind City,78.326,57.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尼·罗曼诺|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Lord Tony Romano
step << Rogue
    .use 185964 >>Open the |T133651:0|t[艾泽拉斯生存补给包] and equip the |T135357:0|t[共济之刃]
    .use 186061
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Rogue
    .goto Stormwind City,78.326,57.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尼·罗曼诺|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接任务 战斗训练
    .target Lord Tony Romano
step << Rogue
    .goto Stormwind City,78.326,57.038
    >>与 |cRXP_FRIENDLY_托尼·罗曼诺|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Lord Tony Romano
step << Rogue
    .goto Stormwind City,78.326,57.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尼·罗曼诺|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target Lord Tony Romano
step << Rogue
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Rogue
    .goto Stormwind City,78.326,57.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托尼·罗曼诺|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接受任务 黑暗之门
    .target Lord Tony Romano
step << Priest
    .goto Stormwind City,38.572,26.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target High Priestess Laurena
step << Priest
    .use 185964 >>Open the |T133651:0|t[Azeroth Survival Kit] and equip the |T135160:0|t[共济法杖]
    .use 186051
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Priest
    .goto Stormwind City,38.572,26.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接任务 战斗训练
    .target High Priestess Laurena
step << Priest
    .goto Stormwind City,38.572,26.005
    >>与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target High Priestess Laurena
step << Priest
    .goto Stormwind City,38.572,26.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target High Priestess Laurena
step << Priest
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Priest
    .goto Stormwind City,38.572,26.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师劳瑞娜|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接任务 黑暗之门
    .target High Priestess Laurena
step << Mage
    .goto Stormwind City,38.528,79.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 在法师塔里对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Jennea Cannon
step << Mage
    .use 185964 >>Open the |T133651:0|t[Azeroth Survival Kit] and equip the |T135160:0|t[共济法杖]
    .use 186051
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Mage
    .goto Stormwind City,38.528,79.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接任务 战斗训练
    .target Jennea Cannon
step << Mage
    .goto Stormwind City,38.528,79.328
    >>与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Jennea Cannon
step << Mage
    .goto Stormwind City,38.528,79.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target Jennea Cannon
step << Mage
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Mage
    .goto Stormwind City,38.528,79.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_詹妮亚·坎农|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接任务 黑暗之门
    .target Jennea Cannon
step << Warlock
    .goto Stormwind City,26.116,77.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 在“已宰的羔羊”里对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Ursula Deline
step << Warlock
    .use 185964 >>Open the |T133651:0|t[Azeroth Survival Kit] and equip the |T135160:0|t[共济法杖]
    .use 186051
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warlock
    .goto Stormwind City,26.116,77.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接受任务 战斗训练
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,26.116,77.200
    >>与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,26.116,77.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target Ursula Deline
step << Warlock
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warlock
    .goto Stormwind City,26.116,77.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_厄苏拉·德林|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接受任务 黑暗之门
    .target Ursula Deline
step << Hunter
    .goto Stormwind City,61.576,15.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Einris Brightspear
step << Hunter
    .use 185964 >>Open the |T133651:0|t[Azeroth Survival Kit] and equip the |T135130:0|t[共济手杖] and |T135490:0|t[Communal Bow]
    .use 186055
    .use 186056
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Hunter
    .goto Stormwind City,61.576,15.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接受任务 战斗训练
    .target Einris Brightspear
step << Hunter
    .goto Stormwind City,61.576,15.188
    >>与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Einris Brightspear
step << Hunter
    .goto Stormwind City,61.576,15.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target Einris Brightspear
step << Hunter
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Hunter
    .goto Stormwind City,61.576,15.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接受任务 黑暗之门
    .target Einris Brightspear
step << Druid
    .goto Stormwind City,21.236,51.677
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .turnin 64028 >>交任务 新的开始
    .accept 64031 >>接任务 生存工具
    .target Theridran
step << Druid
    .use 185964 >>Open the |T133651:0|t[Azeroth Survival Kit] and equip the |T135130:0|t[共济手杖]
    .use 186055
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Druid
    .goto Stormwind City,21.236,51.677
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .turnin 64031 >>接任务 生存工具
    .accept 64034 >>接受任务 战斗训练
    .target Theridran
step << Druid
    .goto Stormwind City,21.236,51.677
    >>与 |cRXP_FRIENDLY_恩瑞斯·锐矛|r 对话并训练一个法术
    .complete 64034,1 -- Train a Spell (1)
    .target Theridran
step << Druid
    .goto Stormwind City,21.236,51.677
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .turnin 64034 >>交任务 战斗训练
    .accept 64035 >>接任务 天赋异禀
    .target Theridran
step << Druid
    >>分配5个技能点(默认：按N键打开天赋面板)
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Druid
    .goto Stormwind City,21.236,51.677
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_塞瑞德兰|r 对话
    .turnin 64035 >>交任务 天赋异禀
    .accept 64038 >>接受任务 黑暗之门
    .target Theridran
step
    .isOnQuest 64038
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil >>飞往摩根的岗哨，燃烧平原
    .target Dungar Longdrink
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫林迪斯·河角|r 对话
    .accept 4182 >>接任务 黑龙的威胁
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,81.8,27.8,0
    .goto Burning Steppes,91.4,32.6,0
    .goto Burning Steppes,89.8,54.6,0
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>击杀 |cRXP_ENEMY_黑色小龙|r, |cRXP_ENEMY_黑色龙兽|r, |cRXP_ENEMY_黑色龙裔|r 和一条 |cRXP_ENEMY_黑色幼龙|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Wyrmkin
    .complete 4182,3 -- Black Drake slain
    .mob +Black Drake
    .isOnQuest 4182
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_赫林迪斯·河角|r 对话
    .turnin 4182 >>交任务 黑龙的威胁
    .accept 4183 >>接任务 真正的主人
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博古斯·粗臂|r 对话
    .fly Redridge >>飞往赤脊山
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 4183 >>交任务 真正的主人
    .accept 4184 >>接任务 真正的主人
    .target Magistrate Solomon
step << Mage
    .isOnQuest 4184
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,47.87,31.31,8,0
    .goto Stormwind City,47.87,31.31,6 >>前去找楼上的 |cRXP_FRIENDLY_皇家代理人巴瑟罗尔|r
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .turnin 4184 >>交任务 真正的主人
    .accept 4185 >>接任务 真正的主人
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r 对话
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r 对话
    .turnin 4185 >>交任务 真正的主人
    .accept 4186 >>接任务 真正的主人
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 对话
    .fly Redridge >>飞往赤脊山
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_所罗门镇长|r 对话
    .turnin 4186 >>交任务 真正的主人
    .accept 4223 >>接任务 真正的主人
    .target Magistrate Solomon
step
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r 对话
    .fly Burning Steppes>>飞往燃烧平原
    .target Ariena Stormfeather
    .zoneskip Burning Steppes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_麦克斯韦尔元帅|r 对话
    .turnin 4223 >>交任务 真正的主人
    .target Marshal Maxwell
step
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_博古斯·粗臂|r 对话
    .fly Southshore >>飞往南海镇
    .target Borgus Stoutarm
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板安德森|r 对话
    .home >>将你的炉石设为南海镇
    .target Innkeeper Anderson
    .bindlocation 271
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>飞往冰风岗，西瘟疫之地
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者特卢恩|r 对话
    >>|cRXP_WARN_如果他不在就跳过这一步|r
    .accept 9474 >>接任务 光明使者的印记
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5092 >>接任务 扫清道路
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_银色黎明军官普尔哈特|r 对话
    .accept 5401 >>接任务 银色黎明委任徽章
    .turnin 5401 >>交任务 银色黎明委任徽章
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >>|cRXP_WARN_Equip the|r |T133440:0|t[银色黎明委任徽章] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
    .use 12846
step
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳萨尼尔·杜马|r 对话
    .accept 5903 >>接任务 瘟疫与你
    .target Nathaniel Dumah
step
    #completewith next
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r 对话
    .fly Eastern Plaguelands >>飞往东瘟疫之地
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护理者奥林|r 对话
    .accept 5281 >>接任务 永不安息的灵魂
    .accept 6021 >>接任务 流亡者塞达尔
    .target Caretaker Alen
step << Hunter
    #sticky
    .tame 8602 >>|cRXP_WARN_如果你的宠物没有其他技能除了|r |T132270:0|t[低吼]|cRXP_WARN_, 扔掉你的宠物然后去驯服一只58级的 |cRXP_ENEMY_蝙蝠|r 在你去病木林的路上|r
    >>|cRXP_WARN_买一些|r |T134526:0|t[晒干的牛肝菌] |cRXP_WARN_喂你的宠物|r
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>如果你接了达隆郡的保卫者这个任务，把它放弃掉
step
    #loop
    .goto Eastern Plaguelands,41.2,25.2,0
    .goto Eastern Plaguelands,42.1,38.2,0
    .goto Eastern Plaguelands,32.0,35.8,0
    .goto Eastern Plaguelands,33.8,25.8,0
    .goto Eastern Plaguelands,29.9,23.1,0
    .goto Eastern Plaguelands,26.5,37.5,0
    .goto Eastern Plaguelands,20.4,20.8,0
    .goto Eastern Plaguelands,31.4,29.6,0
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6,70,0
    >>打开 |cRXP_PICK_大白蚁丘|r 它们散布在病木林。从中拾取 |cRXP_LOOT_天灾白蚁|r
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_埃根|r 对话
    .turnin 5281 >>交任务 永不安息的灵魂
    .target Egan
step
    .hs >>炉石回南海镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>飞往冰风岗，西瘟疫之地
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者特卢恩|r 对话
    >>|cRXP_WARN_如果他不在这里的话就跳过这一步|r
    .accept 9474 >>接受任务 光明使者的印记
	.target Anchorite Truuen
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>击杀 |cRXP_ENEMY_骷髅剥皮者|r 和 |cRXP_ENEMY_被奴役的食尸鬼|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r 对话
    >>|cRXP_FRIENDLY_玛莱恩·雷德帕斯|r 可能也在楼上
    .accept 5142 >>接任务 小帕米拉
    .target Marlene Redpath
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5092 >>交任务 扫清道路
    .accept 5215 >>接任务 瘟疫之锅
    .accept 5097 >>接受任务 标记哨塔
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师玛多妮尔|r 对话
    .turnin 5215 >>交任务 瘟疫之锅
    .accept 5216 >>接受任务 目标：费尔斯通农场
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳萨尼尔·杜马|r 对话
    .turnin 5903 >>交任务 瘟疫与你
    .accept 5904 >>接受任务 瘟疫与你
    .target Nathaniel Dumah
step
    .goto Western Plaguelands,40.116,71.561,-1    
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_Use the|r |T135432:0|t[信号火炬] |cRXP_WARN_next to the Tower entrance|r
    .complete 5097,1 --Tower One marked
step
    .goto Western Plaguelands,37.015,57.145
    >>击杀 |cRXP_ENEMY_护锅者拜尔摩|r 拾取他的 |cRXP_LOOT_费尔斯通农场的瘟疫之锅钥匙|r
    >>|cRXP_ENEMY_护锅者拜尔摩|r |cRXP_WARN_可能会刷新，当你接近|r |cRXP_PICK_瘟疫之锅|r
    .complete 5216,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>点击 the |cRXP_PICK_瘟疫之锅|r
    .turnin 5216 >>交任务 目标：费尔斯通农场
    .accept 5217 >>接受任务 返回冰风岗
step
    .goto Western Plaguelands,42.326,66.105,-1    
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_Use the|r |T135432:0|t[信号火炬] |cRXP_WARN_next to the Tower entrance|r
    .complete 5097,2 --Tower Two marked
step
    .goto Western Plaguelands,44.217,63.319,-1    
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_Use the|r |T135432:0|t[信号火炬] |cRXP_WARN_next to the Tower entrance|r
    .complete 5097,3 --Tower Three marked
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1    
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_Use the|r |T135432:0|t[信号火炬] |cRXP_WARN_next to the Tower entrance|r
    .complete 5097,4 --Tower Four marked
step
    #completewith next
    .subzone 3197 >>前往冰风岗
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .turnin 5097 >>交任务 标记哨塔
    .accept 5533 >>接受任务 通灵学院
    .target Commander Ashlam Valorfist
step
    #sticky
    #optional
    .isQuestTurnedIn 5097
    .destroy 12815 >>Destroy the |T135432:0|t[信号火炬]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    >>|cRXP_WARN_先不要接取后续任务|r
    .turnin 5533 >>交任务 通灵学院
    .accept 5537 >>接受任务 骸骨碎片
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师玛多妮尔|r 对话
    .turnin 5217 >>交任务 返回冰风岗
    .accept 5219 >>接受任务 目标：达尔松之泪
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯·深水|r 对话
    >>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_施放|r |T135848:0|t[冰霜速冻]|cRXP_WARN_ 该技能会让玩家昏迷5秒 避免同时引到多只|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .accept 4984 >>接受任务 大自然的苦楚
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    >>击杀 |cRXP_ENEMY_生病的狼|r
    >>|cRXP_ENEMY_生病的狼|r |cRXP_WARN_和共享刷新 |cRXP_ENEMY_腐虫潜伏者|r. 你可能需要击杀它们来强制 |cRXP_ENEMY_生病的狼|r 刷新|r
    .complete 4984,1 --Kill Diseased Wolf (x8)
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>|cRXP_WARN_进入达尔松之泪的谷仓|r
    >>点击地上的 |cRXP_PICK_达尔松夫人的日记|r
    .accept 5058 >>接任务 达尔松夫人的日记
    .turnin 5058 >>交任务 达尔松夫人的日记
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>消灭那些 |cRXP_LOOT_游荡的骷髅|r. 从他们身上拾取 |cRXP_LOOT_达尔松厕所钥匙|r 
    >>|cRXP_WARN_那些 |cRXP_LOOT_游荡的骷髅|r 在达尔松之泪谷仓和屋子周围巡逻|r
    .collect 12738,1,5060,1 --Collect Dalson Outhouse Key (x1)
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>点击 |cRXP_PICK_厕所|r 召唤 |cRXP_ENEMY_农夫达尔松|r
    .turnin 5059 >>交任务 被锁起来的农夫
step
    .goto Western Plaguelands,48.115,49.814
    >>击杀 |cRXP_ENEMY_农夫达尔松|r。·拾取他身上的 |cRXP_LOOT_达尔松橱柜钥匙|r
    .collect 12739,1,5060,1 --Collect Dalson Cabinet Key (x1)
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>点击 |cRXP_PICK_锁住的柜橱|r 在房子的楼上
    .turnin 5060 >>交任务 被锁起来的农夫
step
    .goto Western Plaguelands,46.156,52.427
    >>击杀 |cRXP_ENEMY_护锅者玛维诺斯|r。拾取他的 |cRXP_LOOT_达尔松之泪的瘟疫之锅钥匙|r
    >>|cRXP_ENEMY_护锅者玛维诺斯|r |cRXP_WARN_可能会刷新，当你接近|r |cRXP_PICK_大锅|r
    .complete 5219,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>点击 |cRXP_PICK_瘟疫之锅|r
    .turnin 5219 >>交任务 目标：达尔松之泪
    .accept 5220 >>接受任务 返回冰风岗
step
    .goto Western Plaguelands,48.348,31.996
    >>点击 |cRXP_PICK_北山伐木场箱子|r 来放置 |cRXP_PICK_白蚁桶|r 然后再点击 |cRXP_PICK_白蚁桶|r
    .skipgossip
    .turnin 5904 >>交任务 瘟疫与你
    .accept 6389 >>接任务 瘟疫与你
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r 对话
    .accept 6004 >>接受任务 未完的任务
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>击杀 |cRXP_ENEMY_血色医护员|r, |cRXP_ENEMY_血色猎人|r, |cRXP_ENEMY_血色法师|r 和 |cRXP_ENEMY_血色骑士|r
    >>|cRXP_ENEMY_血色医护员|r |cRXP_WARN_和 |cRXP_ENEMY_血色猎人|r 共享刷新|r
    >>|cRXP_ENEMY_血色法师|r |cRXP_WARN_和 |cRXP_ENEMY_血色骑士|r 共享刷新|r
    .complete 6004,1 --Scarlet Medic (2)
    .mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
    .mob +Scarlet Hunter
    .complete 6004,3 --Scarlet Mage (2)
    .mob +Scarlet Mage
    .complete 6004,4 --Scarlet Knight (2)
    .mob +Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6004 >>交任务 未完的任务
    .accept 6023 >>接受任务《物归己用》 未完的任务
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>击杀 |cRXP_ENEMY_猎人莱德雷|r
    .complete 6023,1 --Kill Huntsman Radley (x1)
    .mob Huntsman Radley
step
    #completewith next
    >>击杀 |cRXP_ENEMY_骑士杜尔根|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *|cRXP_WARN_There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for |cRXP_ENEMY_骑士杜尔根|r to come down|r
    .unitscan Cavalier Durgen
step
    .isOnQuest 9474
    .goto Western Plaguelands,55.192,23.511
    >>打开 |cRXP_PICK_Holy Coffer|r at the top of the tower. 拾取地上的 it for the |cRXP_LOOT_Mark of the Lightbringer|r
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
step
    #completewith next
    .goto Western Plaguelands,54.520,23.818
    >>击杀 |cRXP_ENEMY_骑士杜尔根|r
    >>|cRXP_WARN_他可能在塔里楼上楼下来回巡逻|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6023 >>交任务 未完的任务
    .accept 6025 >>接受任务 未完的任务
    .target Kirsta Deepshadow
step
    #completewith next
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >>前往暴风城大教堂内，与 Hearthglen
step
    .goto Western Plaguelands,45.7,18.8
    >>登上壁炉谷哨塔
    >>|cRXP_WARN_你要么选择直接冲到塔顶然后跳下去要么一路清怪清上去|r
    >>|cRXP_WARN_躲避 |cRXP_ENEMY_保卫者洛瑞克|r 他是一个在壁炉谷巡逻的强大精英怪|r
    .complete 6025,1 -- Overlook Hearthglen from a high vantage point
    .unitscan High Protector Lorik
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r 对话
    .turnin 6025 >>交任务 未完的任务
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #completewith next
    .subzone 3197 >>前往冰风岗
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师玛多妮尔|r 对话
    .target High Priestess MacDonnell
    .turnin 5220 >>交任务 返回冰风岗
    .accept 5222 >>接受任务 目标：嚎哭鬼屋
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者特卢恩|r 对话
    .turnin 9474 >>交任务 光明使者的印记
	.target Anchorite Truuen
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_纳萨尼尔·杜马|r 对话
    .turnin 6389 >>交任务 瘟疫与你
    .target Nathaniel Dumah
step
    #completewith CountingTime
    >>击杀 |cRXP_ENEMY_骷髅刽子手|r 和 |cRXP_ENEMY_骷髅侍僧|r。拾取他们的 |cRXP_LOOT_骸骨碎片|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在楼上对话
    .accept 4971 >>接受任务 时间问题
    .target Chromie
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>击杀 |cRXP_ENEMY_时光寄生虫|r
    .use 12627 >>|cRXP_WARN_Use the|r |T134229:0|t[时光置换器] |cRXP_WARN_at the silos to make them spawn. If the silo isn't pulsing blue then it cannot spawn any|r |cRXP_ENEMY_Temporal Parasites|r
    >>|cRXP_WARN_多只 |cRXP_ENEMY_时光寄生虫|r 会同时刷新，而且一旦一只死掉，另外一只就会瞬间刷新。他们会不断对你释放|r |T136091:0|t[减速术] |cRXP_WARN_大幅降低你的移动和攻击速度|r
    >>|cRXP_WARN_这些 |cRXP_ENEMY_寄生虫|r 不会游泳！如果数量太多让你难以招架，你可以尝试跑进|r |T135861:0|t[|cRXP_LOOT_水里|r] |cRXP_WARN_让它们脱战|r
    .complete 4971,1 -- Temporal Parasite slain (15)
    .mob Temporal Parasite
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 对话
    .turnin 4972 >>交任务 找回时间
    .target Chromie
step
    #loop
    .goto Western Plaguelands,37.8,70.6,0
    .goto Western Plaguelands,42.6,73.8,0
    .goto Western Plaguelands,49.6,69.4,0
    .goto Western Plaguelands,49.6,63.6,0
    .goto Western Plaguelands,43.0,63.4,0
    .goto Western Plaguelands,39.8,67.4,0
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4,70,0
    >>击杀 |cRXP_ENEMY_骷髅刽子手|r 和 |cRXP_ENEMY_骷髅侍僧|r。拾取他们的 |cRXP_LOOT_骸骨碎片|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,53.020,65.718
    >>点击 |cRXP_PICK_瘟疫之锅|r
    .turnin 5222 >>交任务 目标：嚎哭鬼屋
    .accept 5223 >>接受任务 返回冰风岗
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯·深水|r 对话
    >>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_施放|r |T135848:0|t[冰霜速冻]|cRXP_WARN_ 该技能会让玩家昏迷5秒 避免同时引到多只|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4984 >>交任务 大自然的苦楚
    .accept 4985 >>接受任务 大自然的苦楚
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,58.8,58.6,0
    .goto Western Plaguelands,53.6,48.0,0
    .goto Western Plaguelands,58.8,52.6,0
    .goto Western Plaguelands,67.2,46.6,0
    .goto Western Plaguelands,66.0,55.6,0
    .goto Western Plaguelands,60.8,50.8,0
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8,70,0
    >>击杀 |cRXP_ENEMY_生病的灰熊|r
    >>|cRXP_ENEMY_生病的灰熊|r |cRXP_WARN_和共享刷新 |cRXP_ENEMY_天灾潜伏者|r. 你需要击杀它们来强制 |cRXP_ENEMY_生病的灰熊|r 刷新|r
    .complete 4985,1 -- Diseased Grizzly slain (8)
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_穆格雷斯·深水|r 对话
    >>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_施放|r |T135848:0|t[冰霜速冻]|cRXP_WARN_ 该技能会让玩家昏迷5秒 避免同时引到多只|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4985 >>交任务 大自然的苦楚
    .accept 4986 >>接受任务 雕文橡木枝 << Mage
    .target Mulgris Deepriver
step
    #completewith next
    .subzone 3197 >>前往冰风岗
    .zoneskip Hillsbrad Foothills
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师玛多妮尔|r 对话
    .turnin 5223 >>交任务 返回冰风岗
    .accept 5225 >>接受任务 目标：盖罗恩农场
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,62.573,58.573
    >>点击 |cRXP_PICK_瘟疫之锅|r
    .turnin 5225 >>交任务 目标：盖罗恩农场
    .accept 5226 >>接受任务 返回冰风岗
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >>进入地下室墓穴
step
    .goto Eastern Plaguelands,27.467,84.853
    >>击杀 |cRXP_ENEMY_流亡者塞达尔|r 拾取他的 |cRXP_LOOT_头部|r
    .complete 6021,1 -- Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉·雷德帕斯|r 对话
    .turnin 5142 >>交任务 小帕米拉
    .accept 5149 >>接受任务 帕米拉的洋娃娃
    .target Pamela Redpath
step
    .isQuestTurnedIn 5601,5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉·雷德帕斯|r 对话
    .accept 5149 >>接受任务 帕米拉的洋娃娃
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>拾取 |T134164:0|t[|cRXP_LOOT_帕米拉的洋娃娃的脑袋|r], |T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的左身|r] 和 |T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的右身|r] 遍布在建筑物里
    >>|cRXP_WARN_它们会在达隆郡的任何3个建筑物里面刷新|r
    .collect 12886,1,5149,1 -- Pamela's Doll's Head (1)
    .collect 12887,1,5149,1 -- Pamela's Doll's Left Side (1)
    .collect 12888,1,5149,1 -- Pamela's Doll's Right Side (1)
step
    >>|cRXP_WARN_使用|r |T134164:0|t[|cRXP_LOOT_帕米拉的洋娃娃的脑袋|r]|cRXP_WARN_，|r |T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的左身|r] |cRXP_WARN_或者|r |T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的右身|r] |cRXP_WARN_把它们组成|r |cRXP_LOOT_帕米拉的洋娃娃|r
    .complete 5149,1 --Collect Pamela's Doll (x1)
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕米拉·雷德帕斯|r 对话
    .turnin 5149 >>交任务 帕米拉的洋娃娃
    .accept 5152 >>接受任务 玛莱恩姑妈
    .accept 5241 >>接受任务 卡林叔叔
    .target Pamela Redpath
step
    .hs >>炉石回南海镇
    >>|cRXP_BUY_如有需要，购买食物/水|r << !Warrior !Rogue
	>>|cRXP_BUY_需要的话就买点食物|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_达尔拉·哈瑞斯|r 对话
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>飞往冰风岗，西瘟疫之地
    .target Darla Harris
    .zoneskip Western Plaguelands
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高阶牧师玛多妮尔|r 对话
    .turnin 5226 >>交任务 返回冰风岗
    .target High Priestess MacDonnell
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_学者特卢恩|r 对话
    .turnin 9474 >>交任务 光明使者的印记
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r 对话
    .accept 5237 >>接受任务 任务完成！
    .turnin 5237 >>交任务 任务完成！
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_化学家阿尔比顿|r 对话
    .turnin 5537 >>交任务 骸骨碎片
    .target Alchemist Arbington
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r 对话
    >>|cRXP_FRIENDLY_玛莱恩·雷德帕斯|r 可能也在楼上
    .turnin 5152 >>交任务 玛莱恩姑妈
    .accept 5153 >>接受任务 古怪的历史学家
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>点击 |cRXP_PICK_约瑟夫·雷德帕斯的纪念碑|r。拾取 |cRXP_LOOT_约瑟夫的结婚戒指|r
    .complete 5153,1 -- Collect Joseph's Wedding Ring (x1)
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 在楼上对话
    .turnin 4971 >>交任务 时间问题
    .accept 4972 >>接受任务 找回时间
    .turnin 5153 >>交任务 古怪的历史学家
    .accept 5154 >>接受任务 达隆郡的历史
    .target Chromie
step
    .isQuestTurnedIn 4971
    #loop
    .goto Western Plaguelands,38.71,68.25,0
    .goto Western Plaguelands,38.51,69.74,0
    .goto Western Plaguelands,40.63,68.40,0
    .goto Western Plaguelands,41.08,67.45,0
    .goto Western Plaguelands,40.69,66.16,0
    .goto Western Plaguelands,41.46,69.85,0
    .goto Western Plaguelands,42.17,68.88,0
    .goto Western Plaguelands,42.67,70.31,0
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31,20,0
    >>打开 |cRXP_PICK_小箱子|r. 拾取 |cRXP_LOOT_安多哈尔怀表|r
    >>|cRXP_WARN_它们在烧毁的房子中被找到|r
    .complete 4972,1 --Collect Andorhal Watch (x5)
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >>进入安多哈尔市政厅的废墟
step
    .goto Western Plaguelands,43.50,69.46
    >>进入安多哈尔市政厅的废墟
    >>打开 |cRXP_PICK_发霉的书籍|r 拾取 |cRXP_LOOT_达隆郡的历史|r
    >>|cRXP_WARN_正确的 |cRXP_PICK_发霉的书籍|r 的书页全是深色的或者有一块褐色污渍。如果是半白半黑的，那就是陷阱|r
    >>|cRXP_WARN_有时候所有的 |cRXP_PICK_发霉的书籍|r 可能都是陷阱，你必须打开它们来强制刷新出一本正确的|r
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
    .link https://youtu.be/GUb1Ny4NwQw >>https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_点击这个参考视频学会如何辨别正确的|r |cRXP_PICK_发霉的书籍|r
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_克罗米|r 对话
    .turnin 4972 >>交任务 找回时间
    .turnin 5154 >>交任务 达隆郡的历史
    .accept 5210 >>接受任务 卡林·雷德帕斯
    .target Chromie
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比比尔法兹|r 对话
    .fly Eastern Plaguelands >>飞往东瘟疫之地
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡林·雷德帕斯|r 对话
    .turnin 5241 >>交任务 卡林叔叔
    .turnin 5210 >>交任务 卡林·雷德帕斯
    .accept 5181 >>接受任务 达隆郡的恶魔
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_护理者奥林|r 对话
    .turnin 6021 >>交任务 流亡者塞达尔
    .target Caretaker Alen
step
    .goto Eastern Plaguelands,51.41,49.70,0
    .xp 60-8750 >>一只刷怪刷到离60级只差8750经验
step
    .goto Eastern Plaguelands,51.106,49.937
    >>拾取 |cRXP_LOOT_霍古斯的颅骨|r 在水下
    .complete 5181,1 --Collect Skull of Horgus (x1)
step
    .goto Eastern Plaguelands,53.913,65.755
    >>拾取 |cRXP_LOOT_马杜克的破碎之剑|r 在地上
    .complete 5181,2 --Collect Shattered Sword of Marduk (x1)
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卡林·雷德帕斯|r 对话
    .turnin 5181 >>交任务 达隆郡的恶魔
    .target Carlin Redpath
step << Mage
    .cast 3561 >>|cRXP_WARN_施放|r |T135763:0|t[传送: 暴风城]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯琳·斯蒂文|r 对话
    .fly Stormwind >>飞往暴风城
    .target Khaelyn Steelwing
    .zoneskip Stormwind City
    .zoneskip Hellfire Peninsula
]])