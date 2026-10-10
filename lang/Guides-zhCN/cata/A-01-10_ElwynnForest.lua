if GetLocale() ~= "zhCN" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 1-6级 北郡山谷
#version 1
#next 6-9级 艾尔文森林
#defaultfor Human !DK

<< Alliance

step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .accept 28757 >>接受任务 击退敌人！ << Human Mage
    .accept 28762 >>接受任务 击退敌人！ << Human Paladin
    .accept 28763 >>接受任务 击退敌人！ << Human Priest
    .accept 28764 >>接受任务 击退敌人！ << Human Rogue
    .accept 28765 >>接受任务 击退敌人！ << Human Warlock
    .accept 28766 >>接受任务 击退敌人！ << Human Warrior
    .accept 28767 >>接受任务 击退敌人！ << Human Hunter
    .accept 29078 >>接受任务 击退敌人！ << !Human
    .accept 31139 >>接受任务 击退敌人！ << Human Death Knight/Human Monk
    .target 治安官玛克布莱德
--XX 31139 only available in MoP+ (Human DKs borked until MoP, blizzard-side)
step
    #loop
    .goto 425,29.58,44.71,0
    .goto 425,31.33,45.67,40,0
    .goto 425,32.52,43.63,40,0
    .goto 425,29.25,38.05,40,0
    .goto 425,26.25,40.59,40,0
    .goto 425,26.09,53.65,40,0
    >>击杀 |cRXP_ENEMY_黑石战狼|r << !mop
    >>击杀 |cRXP_ENEMY_黑石战狼|r << mop
    .complete 28757,1 << Human Mage --Blackrock Worgs (6)
    .complete 28762,1 << Human Paladin --Blackrock Worgs (6)
    .complete 28763,1 << Human Priest --Blackrock Worgs (6)
    .complete 28764,1 << Human Rogue --Blackrock Worgs (6)
    .complete 28765,1 << Human Warlock --Blackrock Worgs (6)
    .complete 28766,1 << Human Warrior --Blackrock Worgs (6)
    .complete 28767,1 << Human Hunter --Blackrock Worgs (6)
    .complete 29078,1 << !Human --Blackrock Worgs (6)
    .complete 31139,1 << Human Death Knight/Human Monk --Blackrock Worgs (6)
    .mob Blackrock Worg << !mop
    .mob Blackrock Battle Worg << mop
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 28757 >>交任务 击退敌人！ << Human Mage
    .turnin 28762 >>交任务 击退敌人！ << Human Paladin
    .turnin 28763 >>交任务 击退敌人！ << Human Priest
    .turnin 28764 >>交任务 击退敌人！ << Human Rogue
    .turnin 28765 >>交任务 击退敌人！ << Human Warlock
    .turnin 28766 >>交任务 击退敌人！ << Human Warrior
    .turnin 28767 >>交任务 击退敌人！ << Human Hunter
    .turnin 29078 >>交任务 击退敌人！ << !Human
    .turnin 31139 >>交任务 击退敌人！ << Human Death Knight/Human Monk
    .accept 28759 >>接受任务 狮入羊口 << Human Hunter
    .accept 28769 >>接受任务 狮入羊口 << Human Mage
    .accept 28770 >>接受任务 狮入羊口 << Human Paladin
    .accept 28771 >>接受任务 狮入羊口 << Human Priest
    .accept 28772 >>接受任务 狮入羊口 << Human Rogue
    .accept 28773 >>接受任务 狮入羊口 << Human Warlock
    .accept 28774 >>接受任务 狮入羊口 << Human Warrior
    .accept 29079 >>接受任务 狮入羊口 << !Human
    .accept 31140 >>接受任务 狮入羊口 << Human Death Knight/Human Monk
    .target 治安官玛克布莱德
step
    #loop
    .goto 425,27.23,40.41,0
    .goto 425,31.76,41.17,40,0
    .goto 425,30.32,38.01,40,0
    .goto 425,27.23,40.41,40,0
    .goto 425,27.40,42.45,40,0
    .goto 425,26.49,44.73,40,0
    .goto 425,28.86,47.41,40,0
    .goto 425,24.84,50.52,40,0
    .goto 425,23.64,51.42,40,0
    .goto 425,26.60,54.71,40,0
    >>击杀 |cRXP_ENEMY_黑石间谍|r
    >>|cRXP_WARN_它们已|r|T132320:0|t[潜行]|cRXP_WARN_（但很容易被发现）|r
    .complete 31140,1 << Human Death Knight/Human Monk --Blackrock Spies (8)
    .complete 28769,1 << Human Mage --Blackrock Spies (8)
    .complete 28759,1 << Human Hunter --Blackrock Spies (8)
    .complete 28770,1 << Human Paladin --Blackrock Spies (8)
    .complete 28771,1 << Human Priest --Blackrock Spies (8)
    .complete 28772,1 << Human Rogue --Blackrock Spies (8)
    .complete 28773,1 << Human Warlock --Blackrock Spies (8)
    .complete 28774,1 << Human Warrior --Blackrock Spies (8)
    .complete 29079,1 << !Human --Blackrock Spies (8)
    .mob Blackrock Spy
step << skip
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 28769 >>交任务 狮入羊口 << Human Mage
    .turnin 28759 >>交任务 狮入羊口 << Human Hunter
    .turnin 28770 >>交任务 狮入羊口 << Human Paladin
    .turnin 28771 >>交任务 狮入羊口 << Human Priest
    .turnin 28772 >>交任务 狮入羊口 << Human Rogue
    .turnin 28773 >>交任务 狮入羊口 << Human Warlock
    .turnin 28774 >>交任务 狮入羊口 << Human Warrior
    .turnin 29079 >>交任务 狮入羊口 << !Human
    .turnin 31140 >>交任务 狮入羊口 << Human Death Knight/Human Monk
    .accept 28780 >>接受任务 加入战斗！ << Human Hunter
    .accept 28784 >>接受任务 加入战斗！ << Human Mage
    .accept 28785 >>接受任务 加入战斗！ << Human Paladin
    .accept 28786 >>接受任务 加入战斗！ << Human Priest
    .accept 28787 >>接受任务 加入战斗！ << Human Rogue
    .accept 28788 >>接受任务 加入战斗！ << Human Warlock
    .accept 28789 >>接受任务 加入战斗！ << Human Warrior
    .accept 29080 >>接受任务 加入战斗！ << !Human
    .accept 31143 >>接受任务 加入战斗！ << Human Death Knight/Human Monk
    .target 治安官玛克布莱德
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 28769 >>交任务 狮入羊口 << Human Mage
    .turnin 28759 >>交任务 狮入羊口 << Human Hunter
    .turnin 28770 >>交任务 狮入羊口 << Human Paladin
    .turnin 28771 >>交任务 狮入羊口 << Human Priest
    .turnin 28772 >>交任务 狮入羊口 << Human Rogue
    .turnin 28773 >>交任务 狮入羊口 << Human Warlock
    .turnin 28774 >>交任务 狮入羊口 << Human Warrior
    .turnin 29079 >>交任务 狮入羊口 << !Human
    .turnin 31140 >>交任务 狮入羊口 << Human Death Knight/Human Monk
    .accept 3100 >>接受任务 简要的信件 << Human Warrior
    .accept 3101 >>接受任务 圣洁信件 << Human Paladin
    .accept 3102 >>接受任务密文信件 << Human Rogue
    .accept 3103 >>接受任务 神圣信件 << Human Priest
    .accept 3104 >>接受任务 雕文信件 << Human Mage
    .accept 3105 >>接受任务 被污染的信件 << Human Warlock
    .accept 26910 >>接受任务 风蚀的信件 << Human Hunter
    .accept 31141 >>接受任务 手写书信 << Human Monk
    .accept 29080 >>接受任务 加入战斗！ << !Human
    .target 治安官玛克布莱德
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿宝|r 对话
    .target Bao
    .turnin 31141 >>交任务 手写书信
    .accept 31142 >>接受任务 猛虎之掌
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >>前去找修道院内的 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto 425,41.55,53.23,10 >>前去找修道院内的 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .turnin 3100 >>交任务 简要的信件 << Human
    .accept 26913 >>接受任务 冲锋陷阵 << Human
    .train 100 >>学习 |T132337:0|t[冲锋] << Cata
    .target 莱尼·拜舍尔
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .turnin 3101 >>交任务 圣洁信件 << Human
    .accept 26918 >>接受任务 圣光之力 << Human
    .train 20154 >>学习 |T135960:0|t[正义圣印] << Cata
    .train 20271 >>学习 |T135959:0|t[审判] << Cata
    .target 萨缪尔修士
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与修道院对面外侧的 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .turnin 3102 >>交任务密文信件 << Human
    .accept 26915 >>接受任务 最致命的攻击 << Human
    .train 2098 >>学习 |T132292:0|t[刺骨] << Cata
    .target 乔里克·克里丹
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >>前去找修道院内的 |cRXP_FRIENDLY_女牧师安妮塔|r << Priest
    .goto 425,38.78,43.47,10 >>前往修道院内楼上的 |cRXP_FRIENDLY_凯尔登·布雷门|r。如果你可以的话，从他房间外的扶梯跳跃 << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 3103 >>交任务 神圣信件
    .accept 26919 >>接受任务 护井者索兰尼亚 << cata
    .accept 26919 >>接受任务 学习暗言术 << !cata
    .train 2061 >>学习 |T135907:0|t[快速治疗] << Cata
    .target 女牧师安妮塔
--XX Human Priest only since Flash Heal is somewhat useless when you just smite spam
step << Cata Human Priest
    #loop
    .goto 425,39.31,43.78,0
    .goto 425,38.97,43.16,10,0
    .goto 425,37.82,44.57,10,0
    .goto 425,39.70,44.56,10,0
    .goto 425,37.36,46.34,10,0
    .goto 425,35.08,48.41,10,0
    .goto 425,35.42,49.84,10,0
    .goto 425,37.84,53.31,10,0
    .goto 425,37.00,54.53,10,0
    .goto 425,36.36,53.06,10,0
    >>对修道院内的 5 名 |cRXP_FRIENDLY_受伤的新兵|r 施放 |T135907:0|t[快速治疗]
    .complete 26919,1 --Cast Flash Heal (5)
    .target Wounded Trainee
step << !Cata Human Priest
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T136207:0|t[暗言术：痛] 5 次
    .complete 26919,2 --Cast Flash Heal (5)
    .target Training Dummy
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尔登·布雷门|r对话
    .turnin 3104 >>交任务 雕文信件 << Human
    .accept 26916 >>接受任务 掌控奥术 << Human
    .train 5143 >>学习 |T136096:0|t[奥术飞弹] << Cata
    .target 凯尔登·布雷门
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 3105 >>交任务 被污染的信件 << Human
    .accept 26914 >>接受任务 献祭 << Human
    .train 348 >>学习 |T135817:0|t[献祭] << Cata
    .target 杜希拉·拉萨雷
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿什莉·布兰克|r 对话
    .turnin 26910 >>交任务 风蚀的信件 << Human
    .accept 26917 >>接受任务 猎人之路 << Human
    .train 56641 >>学习 |T132213:0|t[稳固射击] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >>前往 |cRXP_ENEMY_训练假人|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>对一位 |cRXP_ENEMY_训练假人|r 施放|T574576:0|t[贯日击]，然后 |T606551:0|t[猛虎掌] << Monk
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T132337:0|t[冲锋] << Warrior
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T135817:0|t[献祭] 5次 << Warlock
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T136189:0|t[影袭] 接着 |T132292:0|t[刺骨] 3次 << Rogue
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T135812:0|t[火球术]，触发后施放 |T136096:0|t[奥术飞弹]，重复 2 次 << Mage
    >>对 |cRXP_ENEMY_训练假人|r 施放 |T132213:0|t[稳固射击] 5 次 << Hunter
    >>施放 |T135960:0|t[正义圣印] ，然后对 |cRXP_ENEMY_训练假人|r 施放 |T135959:0|t[审判] << Paladin
--cata ids
    .complete 26913,1 << Warrior Cata --Cast Charge (1)
    .complete 26914,1 << Warlock Cata --Cast Immolation (5)
    .complete 26915,1 << Rogue Cata --Cast Eviscerate (3)
    .complete 26916,1 << Mage Cata --Cast Arcane Missiles (2)
    .complete 26917,1 << Hunter Cata --Cast Steady Shot (5)
    .complete 26918,1 << Paladin Cata --Cast Judgement (1)
--mop ids
    .complete 26913,2 << Warrior mop --Cast Charge (1)
    .complete 26914,2 << Warlock mop --Cast Immolation (5)
    .complete 26915,2 << Rogue mop --Cast Eviscerate (3)
    .complete 26916,2 << Mage mop --Cast Arcane Missiles (2)
    .complete 26917,2 << Hunter mop --Cast Steady Shot (5)
    .complete 26918,2 << Paladin mop --Cast Judgement (1)
    .complete 31142,2 << Monk --|Practice Tiger Palm: 1/1
    .mob Training Dummy
step << Human Warrior/Human Paladin/Human Mage/Human Monk
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,40.87,53.80,10 >>回去找修道院内的 |cRXP_FRIENDLY_莱尼·拜舍尔|r << Warrior
    .goto 425,41.55,53.23,10 >>回去找修道院内的 |cRXP_FRIENDLY_萨缪尔修士|r << Paladin
    .goto 425,38.78,43.47,10 >>回去找修道院内的 |cRXP_FRIENDLY_凯尔登·布雷门|r << Mage
    .goto 425/0,-212.100,-8907.400,10 >>回去找修道院内的 |cRXP_FRIENDLY_阿宝|r << Monk
step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 31142 >>交任务 护井者索兰尼亚
    .accept 31143 >>接受任务 加入战斗！
    .target 女牧师安妮塔
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师安妮塔|r 对话
    .turnin 26919 >>交任务 护井者索兰尼亚
    .accept 28786 >>接受任务 加入战斗！
    .target 女牧师安妮塔
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_凯尔登·布雷门|r对话
    .turnin 26916 >>交任务 掌控奥术
    .accept 28784 >>接受任务 加入战斗！
    .target 凯尔登·布雷门
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_莱尼·拜舍尔|r 对话
    .turnin 26913 >>交任务 冲锋陷阵
    .accept 28789 >>接受任务 加入战斗！
    .target 莱尼·拜舍尔
step << Human Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨缪尔修士|r 对话
    .turnin 26918 >>交任务 圣光之力
    .accept 28785 >>接受任务 加入战斗！
    .target 萨缪尔修士
step << Human Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_乔里克·克里丹|r 对话
    .turnin 26915 >>交任务 最致命的攻击
    .accept 28787 >>接受任务 加入战斗！
    .target 乔里克·克里丹
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜希拉·拉萨雷|r 对话
    .turnin 26914 >>交任务 献祭
    .accept 28788 >>接受任务 加入战斗！
    .target 杜希拉·拉萨雷
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_阿什莉·布兰克|r 对话
    .turnin 26917 >>交任务 猎人之路
    .accept 28780 >>接受任务 加入战斗！
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 28780 >>交任务 加入战斗！ << Human Hunter
    .turnin 28784 >>交任务 加入战斗！ << Human Mage
    .turnin 28785 >>交任务 加入战斗！ << Human Paladin
    .turnin 28786 >>交任务 加入战斗！ << Human Priest
    .turnin 28787 >>交任务 加入战斗！ << Human Rogue
    .turnin 28788 >>交任务 加入战斗！ << Human Warlock
    .turnin 28789 >>交任务 加入战斗！ << Human Warrior
    .turnin 29080 >>交任务 加入战斗！ << !Human
    .turnin 31143 >>交任务 加入战斗！ << Human Death Knight/Human Monk
    .accept 28791 >>接受任务 他们派来了刺客 << Human Hunter
    .accept 28792 >>接受任务 他们派来了刺客 << Human Mage
    .accept 28793 >>接受任务 他们派来了刺客 << Human Paladin
    .accept 28794 >>接受任务 他们派来了刺客 << Human Priest
    .accept 28795 >>接受任务 他们派来了刺客 << Human Rogue
    .accept 28796 >>接受任务 他们派来了刺客 << Human Warlock
    .accept 28797 >>接受任务 他们派来了刺客 << Human Warrior
    .accept 29081 >>接受任务 他们派来了刺客 << !Human
    .accept 31144 >>接受任务 他们派来了刺客 << Human Death Knight/Human Monk
    .target Sergeant Willem
step << !DK !Monk
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .accept 28806 >>接受任务 别畏惧邪恶 << Human Hunter
    .accept 28808 >>接受任务 别畏惧邪恶 << Human Mage
    .accept 28809 >>接受任务 别畏惧邪恶 << Human Paladin
    .accept 28810 >>接受任务 别畏惧邪恶 << Human Priest
    .accept 28811 >>接受任务 别畏惧邪恶 << Human Rogue
    .accept 28812 >>接受任务 别畏惧邪恶 << Human Warlock
    .accept 28813 >>接受任务 别畏惧邪恶 << Human Warrior
    .accept 29082 >>接受任务 别畏惧邪恶 << !Human
    --.accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >>|cRXP_WARN_[稀有] 查看|cRXP_ENEMY_大蜡烛伽格|r是否刷出。如果他刷新了就击杀他|r
    *|cRXP_WARN_击杀稀有怪和拾取宝箱非常重要，它们会奖励大量经验|r
	.unitscan Gug Fatcandle
    .noflyable
step << !DK !Monk
    #sticky
    #label Soldiers
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,31.00,22.28,15,0
    .goto 425,29.16,25.64,15,0
    .goto 425,28.94,30.20,15,0
    .goto 425,30.49,30.95,15,0
    .goto 425,32.00,28.75,15,0
    .goto 425,31.56,25.82,15,0
    .goto 425,33.45,24.77,15,0
    .goto 425,36.08,23.69,15,0
    >>点击地上的 |cRXP_PICK_负伤的暴风城步兵|r 以复活他们
    .complete 28806,1 << Human Hunter --Revive Injured Soldiers (4)
    .complete 28808,1 << Human Mage --Revive Injured Soldiers (4)
    .complete 28809,1 << Human Paladin --Revive Injured Soldiers (4)
    .complete 28810,1 << Human Priest --Revive Injured Soldiers (4)
    .complete 28811,1 << Human Rogue --Revive Injured Soldiers (4)
    .complete 28812,1 << Human Warlock --Revive Injured Soldiers (4)
    .complete 28813,1 << Human Warrior --Revive Injured Soldiers (4)
    --.complete 63447,1 << Human Death Knight/Human Monk --Revive Injured Soldiers (4)
    .target Injured Stormwind Infantry
step
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,33.00,21.94,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,36.54,27.68,45,0
    .goto 425,35.12,31.40,45,0
    .goto 425,33.27,32.25,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,29.65,31.64,45,0
    .goto 425,28.45,27.49,45,0
    .goto 425,27.16,18.98,45,0
    >>击杀 |cRXP_ENEMY_地精刺客|r
    .complete 28791,1 << Human Hunter --Goblin Assassins (8)
    .complete 28792,1 << Human Mage --Goblin Assassins (8)
    .complete 28793,1 << Human Paladin --Goblin Assassins (8)
    .complete 28794,1 << Human Priest --Goblin Assassins (8)
    .complete 28795,1 << Human Rogue --Goblin Assassins (8)
    .complete 28796,1 << Human Warlock --Goblin Assassins (8)
    .complete 28797,1 << Human Warrior --Goblin Assassins (8)
    .complete 29081,1 << !Human --Goblin Assassins (8)
    .complete 31144,1 << Human Death Knight/Human Monk --Goblin Assassins (8)
    .mob Goblin Assassin
step << !DK !Monk
    #requires Soldiers
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,35.55,37.73,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,34.47,39.42,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_帕克斯顿修士|r 对话
    .turnin 28806 >>交任务 别畏惧邪恶 << Human Hunter
    .turnin 28808 >>交任务 别畏惧邪恶 << Human Mage
    .turnin 28809 >>交任务 别畏惧邪恶 << Human Paladin
    .turnin 28810 >>交任务 别畏惧邪恶 << Human Priest
    .turnin 28811 >>交任务 别畏惧邪恶 << Human Rogue
    .turnin 28812 >>交任务 别畏惧邪恶 << Human Warlock
    .turnin 28813 >>交任务 别畏惧邪恶 << Human Warrior
    .turnin 29082 >>交任务 别畏惧邪恶 << !Human
    --.turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_维里副队长|r 对话
    .turnin 28791 >>交任务 他们派来了刺客 << Human Hunter
    .turnin 28792 >>交任务 他们派来了刺客 << Human Mage
    .turnin 28793 >>交任务 他们派来了刺客 << Human Paladin
    .turnin 28794 >>交任务 他们派来了刺客 << Human Priest
    .turnin 28795 >>交任务 他们派来了刺客 << Human Rogue
    .turnin 28796 >>交任务 他们派来了刺客 << Human Warlock
    .turnin 28797 >>交任务 他们派来了刺客 << Human Warrior
    .turnin 29081 >>交任务 他们派来了刺客 << !Human
    .turnin 31144 >>交任务 他们派来了刺客 << Human Death Knight/Human Monk
    .accept 28817 >>接受任务 后方已经安全 << Human Hunter
    .accept 28818 >>接受任务 后方已经安全 << Human Mage
    .accept 28819 >>接受任务 后方已经安全 << Human Paladin
    .accept 28820 >>接受任务 后方已经安全 << Human Priest
    .accept 28821 >>接受任务 后方已经安全 << Human Rogue
    .accept 28822 >>接受任务 后方已经安全 << Human Warlock
    .accept 28823 >>接受任务 后方已经安全 << Human Warrior
    .accept 29083 >>接受任务 后方已经安全 << !Human
    .accept 31145 >>接受任务 后方已经安全 << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 和 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 对话
    .turnin 28817 >>交任务 后方已经安全 << Human Hunter
    .turnin 28818 >>交任务 后方已经安全 << Human Mage
    .turnin 28819 >>交任务 后方已经安全 << Human Paladin
    .turnin 28820 >>交任务 后方已经安全 << Human Priest
    .turnin 28821 >>交任务 后方已经安全 << Human Rogue
    .turnin 28822 >>交任务 后方已经安全 << Human Warlock
    .turnin 28823 >>交任务 后方已经安全 << Human Warrior
    .turnin 29083 >>交任务 后方已经安全 << !Human
    .turnin 31145 >>交任务 后方已经安全 << Human Death Knight/Human Monk
    .accept 26389 >>接受任务 黑石兽人的入侵
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>接受任务 灭火拯救希望
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_要启用任务物品的按键绑定，按照以下步骤：|r
    *[1] 按 |cRXP_WARN_Esc|r 键
    *[2] 选择 |cRXP_WARN_设置|r
    *[3] 选择左方的 |cRXP_WARN_快捷键|r 设置
    *[4] 在 |cRXP_WARN_快捷键设置|r 中，找到 |cRXP_WARN_RestedXP 指南|r
    *[5] 选择并绑定 |cRXP_WARN_激活物品按钮。|r
step
    #completewith next
    >>击杀 |cRXP_ENEMY_黑石入侵者|r，拾取他们的 |cRXP_LOOT_黑石兽人的武器|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #label Fire
    .goto 425,57.48,71.22,0
    .goto 425,49.10,78.42,20,0
    .goto 425,50.78,75.57,20,0
    .goto 425,51.22,77.49,20,0
    .goto 425,51.82,78.93,20,0
    .goto 425,50.59,80.71,20,0
    .goto 425,52.81,80.56,20,0
    .goto 425,52.53,82.55,20,0
    .goto 425,53.04,84.89,20,0
    .goto 425,54.33,85.93,20,0
    .goto 425,54.67,83.87,20,0
    .goto 425,56.91,82.37,20,0
    .goto 425,56.39,80.99,20,0
    .goto 425,56.96,78.82,20,0
    .goto 425,58.94,75.77,20,0
    .goto 425,55.12,73.91,20,0
    .goto 425,55.49,70.94,20,0
    .goto 425,53.67,68.68,20,0
    .goto 425,50.63,73.13,20,0
    >>|cRXP_WARN_对北郡葡萄园各处的火焰使用|r |T308321:0|t[米莉的火焰灭火器] |cRXP_WARN_并引导|r
    .complete 26391,1 --Vineyard Fire extinguished (8)
    .use 58362
step
    #loop
    .goto 425,54.27,77.40,0
    .goto 425,47.40,70.76,50,0
    .goto 425,46.82,75.39,50,0
    .goto 425,50.12,78.58,50,0
    .goto 425,53.79,84.88,50,0
    .goto 425,57.63,77.83,50,0
    .goto 425,57.48,71.22,50,0
    .goto 425,56.07,62.66,50,0
    >>击杀 |cRXP_ENEMY_黑石入侵者|r，拾取他们的 |cRXP_LOOT_黑石兽人的武器|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_米莉·奥斯沃斯|r和|cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 26391 >>交任务 灭火拯救希望
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>交任务 黑石兽人的入侵
    .accept 26390 >>接受任务 终结入侵！
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>击杀 |cRXP_ENEMY_屠杀者库尔托克|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官玛克布莱德|r 对话
    .turnin 26390 >>交任务 终结入侵！
    .accept 54 >>接受任务 去闪金镇报到
    .target 治安官玛克布莱德
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >>前去找 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r 对话
    .accept 2158 >>接受任务 休息和放松
    .target 法尔坎·伊森斯泰德
]])

RXPGuides.RegisterGuide([[
#version 1
#group RXP 大灾变 1-80 (联盟) << cata
#group RXP 熊猫人之谜1-80级(联盟) << mop
#cata
#mop
#name 6-9级 艾尔文森林
#next 9-11级 丹莫罗
#defaultfor Human/Dwarf/Gnome

<< Alliance

step << Dwarf
#xprate >1.19
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨雷克·暗岩|r 对话
    .turnin 24493 >>交任务 别忘记我们
	.target 萨雷克·暗岩
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >>进入雷酒酿制厂。前去找内部的 |cRXP_FRIENDLY_旅店老板贝尔姆|r
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .turnin 26380,2 >>交任务 前往卡拉诺斯
	.target 旅店老板贝尔姆
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板贝尔姆|r 对话，NPC在里面
    .home >>将你的炉石设置到雷酒酿制厂
	.target 旅店老板贝尔姆
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_格雷姆罗克·匹斯诺尔|r 对话
    .accept 6387 >>接受任务 荣誉学员
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >>在卡拉诺斯旅店学习 |T136052:0|t[治疗波]
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨兰恩队长|r对话
    .turnin 26373 >>交任务 前往卡拉诺斯
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_布洛兰·风须|r对话
    .target Brolan Galebeard
    .turnin 6387 >>交任务 荣誉学员
    .accept 6391 >>接受任务 飞往铁炉堡
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_布洛兰·风须|r对话
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>飞往铁炉堡
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_高尼尔·石趾|r 对话
    .target 高尼尔·石趾
    .turnin 6391 >>交任务 飞往铁炉堡
    .accept 6388 >>接受任务 格莱斯·瑟登
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .target 格莱斯·瑟登
    .turnin 6388 >>交任务 格莱斯·瑟登
    .accept 6392 >>接受任务 向布洛克回复
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_格莱斯·瑟登|r 对话
    .target 格莱斯·瑟登
    .fly Goldshire >>飞往闪金镇
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 54 >>交任务 去闪金镇报到 << Human
    .accept 62 >>接受任务 法戈第矿洞
	.target 治安官杜汉
step << Human
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_铁匠阿古斯|r 对话
    .accept 26393 >>接受任务 快捷的消息
	.target 铁匠阿古斯
step << Human
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勇敢的巴特利|r对话
	.turnin 26393 >>交任务 快捷的消息
    .accept 26394 >>接受任务 前往暴风城
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >>前去找|cRXP_FRIENDLY_威廉·匹斯特|r
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .accept 60 >>接受任务 狗头人的蜡烛
	.target 威廉·匹斯特
step << Human
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_旅店老板法雷|r 对话
    .turnin 2158 >>交任务 休息和放松
    .home >>将炉石设置在狮王之傲旅店
	.target 旅店老板法雷
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t如果你想学专业技能，可以和|cRXP_FRIENDLY_莱恩·法尔娜|r 对话，她就在|cRXP_FRIENDLY_雷米|r身边
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>前去找|cRXP_FRIENDLY_雷米|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .accept 47 >>接受任务 金砂交易
	.target 雷米
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r。拾取他们的 |cRXP_LOOT_大蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob 狗头人隧道工
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 和 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .goto 37,34.486,84.253
    .target 波尼斯·斯通菲尔德姑妈
    .accept 88 >>接受任务 公主必须死！
    .goto 37,34.66,84.48
	.target 斯通菲尔德妈妈
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .accept 85 >>接受任务 丢失的项链
    .goto 37,34.486,84.253
    .target 波尼斯·斯通菲尔德姑妈
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob 狗头人隧道工
	.mob 狗头人矿工
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 85 >>交任务 丢失的项链
    .accept 86 >>接受任务 比利的馅饼
    .target 比利·马科伦
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取他们的 |cRXP_LOOT_嫩野猪肉|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob 石牙野猪
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在里面与 |cRXP_FRIENDLY_梅贝尔·马科伦|r 对话
    .accept 106 >>接受任务 年轻的恋人
    .target 梅贝尔·马科伦
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >>刷怪升级到6级
    .mob 石牙野猪
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .accept 88 >>接受任务 公主必须死！
	.target 斯通菲尔德妈妈
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r。拾取他们的 |cRXP_LOOT_大蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[宝箱] 检查马厩内是否有|cRXP_PICK_宝箱|r。若存在就拾取|r
    .isOnQuest 60
step
    #loop
    #optional
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>击杀 |cRXP_ENEMY_公主|r。拾取她的 |cRXP_LOOT_黄铜项圈|r 和 |cRXP_LOOT_嫩野猪肉|r
    .complete 88,1 --1/1 Brass Collar
    .complete 86,1 --Tender Boar Meat (4)
    .disablecheckbox
	.mob 公主
    .itemcount 60401,<4
    .isOnQuest 86
step
    #loop
    #label PrincessEnd
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>击杀 |cRXP_ENEMY_公主|r。拾取它的 [|cRXP_LOOT_黄铜项圈|r]
    .complete 88,1 --1/1 Brass Collar
	.mob 公主
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r 对话
    .turnin 106 >>交任务 年轻的恋人
    .accept 111 >>接受任务 托米的祖母
    .target 托米·乔·斯通菲尔德
step
    #loop
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    .goto 37,31.25,85.42,40,0
    .goto 37,32.26,85.70,40,0
    .goto 37,32.35,86.66,40,0
    .goto 37,33.18,86.66,40,0 --Yes it's the same Y coordinate
    .goto 37,33.64,85.47,40,0
    .goto 37,31.93,83.57,40,0
    >>击杀 |cRXP_ENEMY_石牙野猪|r。拾取他们的 |cRXP_LOOT_嫩野猪肉|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob 石牙野猪
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_斯通菲尔德妈妈|r 对话
    .turnin 88 >>交任务 公主必须死！
	.target 斯通菲尔德妈妈
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .goto 37,34.486,84.253
    .turnin 86 >>交任务 比利的馅饼
    .target 波尼斯·斯通菲尔德姑妈
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .goto 37,34.486,84.253
    .target 波尼斯·斯通菲尔德姑妈
    .accept 84 >>接受任务 比利的馅饼
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_米莱德·斯通菲尔德|r 对话，NPC在里面
    .turnin 111 >>交任务 托米的祖母
    .accept 107 >>接受任务 给威廉·匹斯特的信
    .target 米莱德·斯通菲尔德
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r。拾取他们的 |cRXP_LOOT_大蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_比利·马科伦|r 对话
    .turnin 84 >>交任务 比利的馅饼
    .accept 87 >>接受任务 金牙
    .target 比利·马科伦
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>击杀矿洞|cRXP_ENEMY_外面的|r |cRXP_WARN_金牙|r 。拾取 |cRXP_LOOT_波尼斯的项链|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob 金牙
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[稀有] 检查|cRXP_ENEMY_监工纳尔格|r是否刷出。如果他刷新了就击杀|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>探索法戈第矿洞
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    >>击杀 |cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r。拾取他们的 |cRXP_LOOT_蜡烛|r 和 |cRXP_LOOT_金砂|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>探索法戈第矿洞
    .complete 62,1 --Scout through the Fargodeep Mine
step
#xprate <1.2
#requires scoutm1
    #optional
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    .xp 6+2275 >>刷怪达到 2275+/3600经验
    .mob 狗头人隧道工
    .mob 狗头人矿工
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r 对话
    .turnin 87 >>交任务 金牙
    .target 波尼斯·斯通菲尔德姑妈
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >>使用炉石返回闪金镇
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >>送死然后在闪金镇复活
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .target 威廉·匹斯特
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 60 >>交任务 狗头人的蜡烛
    .turnin 107 >>交任务 给威廉·匹斯特的信
    .accept 112 >>接受任务 收集海藻
    .target 威廉·匹斯特
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>回去找 |cRXP_FRIENDLY_雷米|r
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_雷米|r 对话
    .turnin 47 >>交任务 金砂交易
    .accept 40 >>接受任务 鱼人的威胁
	.target 雷米
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_本杰明·福柯沃斯|r 对话
    .trainer >>训练你的职业技能
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威尔海姆修士|r 对话
    .trainer >>训练你的职业技能
    .target 威尔海姆修士
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_里瑞亚·杜拉克|r 对话
    .trainer >>训练你的职业技能
    .target 里瑞亚·杜拉克
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >>前往闪金镇客栈地下室
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛克西米利安·克洛文|r 对话
    .trainer >>训练你的职业技能
    .target 玛克西米利安·克洛文
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >>前往闪金镇旅店楼上
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r 对话
    .trainer >>训练你的职业技能
    .target 扎尔迪玛·维夫希尔特
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_女牧师洁塞塔|r 对话
    .trainer >>训练你的职业技能
    .target 女牧师洁塞塔
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r 对话
    .trainer >>训练你的职业技能
    .target 科瑞恩·塞尔留斯
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 40 >>交任务 鱼人的威胁
    .turnin 62 >>交任务 法戈第矿洞
    .accept 35 >>接受任务 卫兵托马斯
    .accept 76 >>接受任务 玉石矿洞
    .target 治安官杜汉
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 40 >>交任务 鱼人的威胁
    .accept 35 >>接受任务 卫兵托马斯
    .turnin 62 >>交任务 法戈第矿洞
    .target 治安官杜汉
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
    #xprate <1.2
    #completewith Frond
    #label ChargerMurloc
    .goto 37,42.105,65.927
    >>|cRXP_WARN_等20秒计时器结束（接受飞行后的20秒），在乘坐 |cRXP_FRIENDLY_暴风城战马|r 时登出再登录，利用技巧下坐骑|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话，骑上 |cRXP_FRIENDLY_暴风城战马|r 前去找 |cRXP_FRIENDLY_卫兵托马斯|r
    .timer 20,计时器结束时，开始返回角色选择
    .target 治安官杜汉
    .isOnQuest 76
    .skipgossip 240,1
    .skill riding,75,1
step << Human
    #xprate <1.2
    #optional
    #completewith Frond
    #requires ChargerMurloc
    .goto 37,56.23,66.64
    >>|cRXP_WARN_等20秒计时器结束（接受飞行后的20秒），在乘坐 |cRXP_FRIENDLY_暴风城战马|r 时登出再登录，利用技巧下坐骑|r
    .subzone 18 >>前往水晶湖
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    #label Frond
    #loop
    .goto 37,56.23,66.64,0
    .goto 37,56.23,66.64,40,0
    .goto 37,57.65,65.14,40,0
    .goto 37,57.29,62.51,40,0
    .goto 37,55.14,63.48,40,0
    .goto 37,54.79,66.42,40,0
    >>击杀 |cRXP_ENEMY_鱼人士兵|r 和 |cRXP_ENEMY_鱼人|r。拾取 |cRXP_LOOT_水晶藻叶|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc Steamrunner
    .mob 鱼人
    .isOnQuest 112
step << Human
    #xprate <1.2
    #optional
    #completewith next
    .goto 37,61.65,53.93,12,0
    .goto 40,48.05,87.33
    .subzone 54 >>进入玉石矿洞
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>沿玉石矿洞内的中间路径前进
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >>死掉并在|cRXP_FRIENDLY_灵魂医者|r 处复生
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>退出玉石矿洞
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话，骑上 |cRXP_FRIENDLY_暴风城战马|r 前去找 |cRXP_FRIENDLY_卫兵托马斯|r
    .timer 90,卫兵托马斯 剧情演出
    .target 治安官杜汉
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击 |cRXP_PICK_悬赏榜|r 然后与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>接受任务 通缉：詹姆斯·克拉克
    .goto 37,74.025,72.310
    .turnin 35 >>交任务 卫兵托马斯
    .accept 37 >>接受任务 失踪的卫兵
    .accept 52 >>接受任务 保卫边境
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林灰狼|r
    >>沿途击杀所有的|cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob 森林熊幼崽
step
    .goto 37,72.653,60.323
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .turnin 37 >>交任务 失踪的卫兵
    .accept 45 >>接受任务 罗尔夫的下落
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>击杀里面的|cRXP_FRIENDLY_詹姆斯·克拉克|r，从其身上拾取|cRXP_LOOT_詹姆斯·克拉克的徽记|r和|T134939:0|t|cRXP_LOOT_[采金日程表]|r
    >>|cRXP_WARN_使用 |T134939:0|t|cRXP_LOOT_[采金日程表]|r 激发任务|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>接受任务 收货人
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .accept 5545 >>接受任务 木材危机
    .target 管理员莱琳
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官帕特尔森|r 对话
    .turnin 26152 >>交任务 通缉：詹姆斯·克拉克
    .turnin 123 >>交任务 收货人
    .accept 147 >>接受任务 猎杀收货人
    .target Marshal Patterson
step
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林灰狼|r
    >>沿途击杀所有的|cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob 森林熊幼崽
step
    #completewith next
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,84.20,61.55,20,0
    >>拾取树旁地面上的 |cRXP_LOOT_一捆木柴|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    .turnin 45 >>交任务 罗尔夫的下落
    .accept 71 >>接受任务 回复托马斯
step
    #sticky
    #label PTFrontier
    #loop
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    .waypoint 37,81.72,58.57,60,0
    .waypoint 37,77.99,60.59,60,0
    .waypoint 37,71.58,60.84,60,0
    .waypoint 37,74.75,67.13,60,0
    .waypoint 37,87.15,64.63,60,0
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林灰狼|r
    >>沿途击杀所有的|cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob 森林熊幼崽
step
    #loop
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,80.88,53.78,20,0
    .goto 37,80.48,55.18,20,0
    .goto 37,79.79,56.71,20,0 --Not Exact
    .goto 37,79.04,59.56,20,0
    .goto 37,77.30,59.56,20,0 --Not Exact/Real
    .goto 37,77.18,60.65,20,0 --Not Exact/Real
    .goto 37,76.75,61.76,20,0
    .goto 37,77.13,63.00,20,0
    .goto 37,78.38,62.35,20,0
    .goto 37,79.30,63.34,20,0
    .goto 37,80.24,61.47,20,0
    .goto 37,80.63,62.25,20,0
    .goto 37,81.57,62.64,20,0
    .goto 37,81.27,61.59,20,0
    .goto 37,82.00,61.01,20,0
    .goto 37,83.27,61.12,20,0
    .goto 37,84.20,61.55,20,0
    .goto 37,83.85,60.48,20,0
    .goto 37,82.79,60.12,20,0
    >>拾取树旁地面上的 |cRXP_LOOT_一捆木柴|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_卫兵托马斯|r 对话
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >>交任务 保卫边境
    .turnin 71 >>交任务 回复托马斯
    .accept 59 >>接受任务 布甲和皮甲
    .target 卫兵托马斯
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>击杀里面的|cRXP_ENEMY_收货人莫根|r，从其身上拾取|cRXP_LOOT_收货人的戒指|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_萨拉·迪博雷恩|r 对话
    .turnin 59 >>交任务 布甲和皮甲
    .target 萨拉·迪博雷恩
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_管理员莱琳|r 对话
    .turnin 5545 >>交任务 木材危机
    .target 管理员莱琳
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官帕特尔森|r 对话
    .turnin 147 >>交任务 猎杀收货人
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target 拉里克·费恩
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_拉里克·费恩|r 对话
    >>购买一把 |T135489:0|t[多层弯弓]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >>使用炉石返回闪金镇
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迅翼高斯|r 对话
    .fly Goldshire >>飞往闪金镇
    .target Goss the Swift
    .subzoneskip 87
    .zoneskip 37,1
    .cooldown item,6948,>0,1
step
    #optional
    #label endOfTheGuide
step << Human !Paladin !Warrior !Rogue
    #xprate >1.19
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_迅翼高斯|r 对话
    .fly Gol'Bolar Quarry >>飞往古博拉采掘场
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_威廉·匹斯特|r 对话
    .turnin 112 >>交任务 收集海藻
    .target 威廉·匹斯特
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_治安官杜汉|r 对话
    .turnin 76 >>交任务 玉石矿洞
    --.accept 239 >> Accept Westbrook Garrison Needs Help!
    .target 治安官杜汉
    .isQuestComplete 76
--XX Can skip rest of steps and fly to Dun Morogh from here if level 10+? #Optional if above step not skipped
step
#label hs1
--Melee classes need to buy weapon upgrades:
step << Human
#xprate <1.2
    #completewith next
    #label FlySW
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_勇敢的巴特利|r对话
    .fly Stormwind >>飞往暴风城 << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >>飞往古博拉采掘场 << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T135350:0|t[优质重剑]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target 玛尔达·维勒
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买1把|r |T135346:0|t[斗士短剑]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target 玛尔达·维勒
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_玛尔达·维勒|r 对话
    >>|cRXP_BUY_从她那里|r|cRXP_BUY_购买一把|r |T132402:0|t[短柄斧]
    >>|cRXP_WARN_或者你也可以稍后去拍卖行看看是否有更好或更便宜的替代品|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target 玛尔达·维勒
    .xp >12,1
    .xp <11,1
step <<Human (Warrior/Paladin)
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135350:0|t[优质重剑]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_将|r |T135346:0|t[斗士短剑] |cRXP_WARN_装备在主手|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_将|r |T132402:0|t[短柄斧] |cRXP_WARN_装备在你的主手|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |cRXP_FRIENDLY_杜加尔·朗德瑞克|r 或 |cRXP_FRIENDLY_迅翼高斯|r 对话
    .fly Gol'Bolar Quarry >>飞往古博拉采掘场
	.target 杜加尔·朗德瑞克
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >>炉石回卡拉诺斯，丹莫罗
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在后室与 |cRXP_FRIENDLY_格雷姆罗克·匹斯诺尔|r 对话
    .turnin 6392 >>交任务 向布洛克回复
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_布洛兰·风须|r对话
    .fly Gol'Bolar Quarry >>飞往古博拉采掘场
	.target Brolan Galebeard
step << Human
    .abandon 26394 >>放弃你任务日志里所有艾尔文森林的任务
step
#label end
.zone Dun Morogh >>前往东部丹莫罗
]])
