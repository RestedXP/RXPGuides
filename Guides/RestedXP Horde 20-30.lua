local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 20-23 Stonetalon / The Barrens
#version 1
#group RestedXP Horde 1-30
#next 23-27 Hillsbrad / Ashenvale
#xprate <1.5

step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Buy|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
step << !Shaman !Warrior
    #completewith MeetingTW
    #label ValleyOW
    #requires MageRune1 << Troll Mage
    .goto Orgrimmar,49.59,94.74,30,0 << Orc/Troll
    .goto Orgrimmar,49.42,90.90,30,0 << Orc/Troll
    .goto Orgrimmar,52.26,88.65,30,0 << Orc/Troll
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold << Orc/Troll
    .goto Orgrimmar,39.50,37.17,20 >>Travel across the bridge, then toward Grommash Hold << !Orc !Troll
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << !Shaman !Warrior
    #label MeetingTW
--   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and |cRXP_FRIENDLY_Dawnsinger|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 9626 >> Turn in Meeting the Warchief << BloodElf
    .accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >> Turn in Meeting the Warchief << !BloodElf
    .goto Orgrimmar,31.62,37.82
--  .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
--   .target Ambassador Dawnsinger << BloodElf
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >> Train your class spells
    .target Master Pyreanor
step << Shaman
    #completewith OrgTrain
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel toward |cRXP_FRIENDLY_Kardris|r << Orc/Troll
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Train your class spells << wotlk
    .train 6363 >> Train your class spells << tbc
    .target Kardris Dreamseeker
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >> Accept The Spirits of Stonetalon
    .goto Orgrimmar,38.93,38.39
    .target Zor Lonetree
step << Troll Mage
    #completewith OrgTrain
    .cast 3567 >> Cast [Teleport: Orgrimmar], then go downstairs
    .itemcount 17031,2
step << Mage/Priest/Rogue/Warlock
    #completewith OrgTrain
    .goto Orgrimmar,42.30,37.44,20,0
    .goto Orgrimmar,40.96,45.16,20,0
    .goto Orgrimmar,40.01,51.88,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.29,56.98,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.82,56.28,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.61,53.40,15,0 << Rogue
    .goto Orgrimmar,38.66,56.48,20,0 << Mage/Priest
    .goto Orgrimmar,41.17,67.04,20,0 << Mage/Priest
    .goto Orgrimmar,38.78,77.83,15,0 << Mage
    .goto Orgrimmar,38.72,83.38,12,0 << Mage
    .goto Orgrimmar,38.36,85.56,15 >> Travel toward |cRXP_FRIENDLY_Pephredo|r << Mage
    .goto Orgrimmar,35.59,87.80,15 >> Travel toward |cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,43.05,53.73,10 >> Travel toward |cRXP_FRIENDLY_Shenthul|r << Rogue
    .goto Orgrimmar,48.25,45.27,15 >> Travel toward |cRXP_FRIENDLY_Gan'rul|r << Warlock
    .isQuestTurnedIn 9626 << BloodElf
    .isQuestTurnedIn 9813 << !BloodElf
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Train your class spells
    .target Pephredo
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ur'kyo|r
    .train 15237 >> Train your class spells
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Turn in Rogues of the Shattered Hand
    .accept 2460 >> Accept The Shattered Salute
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Target |cRXP_FRIENDLY_Shenthul|r to Salute him|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Turn in The Shattered Salute
    .accept 2458 >> Accept Deep Cover
    .target Shenthul
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dar|r
    .train 1094 >> Train your class spells
    .target Grol'dar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandon Carendin Summons
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r and |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Accept Devourer of Souls
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >> Turn in Devourer of Souls
    .accept 1508 >> Accept Blind Cazul
    .accept 65601 >> Accept Love Hurts
    .goto Orgrimmar,47.05,46.43
    .target Gan'rul Bloodeye
    .target Cazul
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >> Travel toward |cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >> Travel toward |cRXP_FRIENDLY_Magar|r
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >> Turn in Love Hurts
    .accept 65610 >> Accept Wish You Were Here
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel upstairs toward |cRXP_FRIENDLY_Thuul|r
step << Mage
    #label OrgTrain
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter/Warrior
    #completewith OrgTrain
    .goto Orgrimmar,63.08,39.25,40,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,76.76,33.04,30,0 << Warrior
    .goto Orgrimmar,79.13,32.80,30,0 << Warrior
    .goto Orgrimmar,80.39,32.38,20 >> Travel toward |cRXP_FRIENDLY_Sorek|r << Warrior
    .goto Orgrimmar,72.25,21.42,30,0 << Hunter
    .goto Orgrimmar,67.60,14.89,15,0 << Hunter
    .goto Orgrimmar,66.05,18.52,20 >> Travel toward |cRXP_FRIENDLY_Ormak|r << Hunter
    .train 580,3 << Orc Hunter/Orc Warrior
    .train 6653,3 << Orc Hunter/Orc Warrior
    .train 6654,3 << Orc Hunter/Orc Warrior
    .train 64658,3 << Orc Hunter/Orc Warrior
step << !Warlock Orc wotlk
    #completewith next
    .goto Orgrimmar,63.08,39.25,40,0 << !Warrior
    .goto Orgrimmar,64.31,38.12,30,0 << !Warrior
    .goto Orgrimmar,66.07,40.04,30,0 << !Warrior
    .goto Orgrimmar,76.33,32.64,30,0 << Warrior
    .goto Orgrimmar,72.16,26.66,30,0 << Warrior
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>Travel toward |cRXP_FRIENDLY_Kildar|r
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kildar
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro|r
    +|cRXP_BUY_Buy any|r |T132224:0|t[Wolf] |cRXP_BUY_that you like from him|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Timber Wolf] to learn it
    .use 1132
    .itemcount 1132,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132266:0|t[Horn of the Dire Wolf] to learn it
    .use 5665
    .itemcount 5665,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Brown Wolf] to learn it
    .use 5668
    .itemcount 5668,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Black Wolf] to learn it
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Timber Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 580 >> Mount your |T132224:0|t[Timber Wolf]
    .train 580,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132266:0|t[Dire Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6653 >> Mount your |T132266:0|t[Dire Wolf]
    .train 6653,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Brown Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6654 >> Mount your |T132224:0|t[Brown Wolf]
    .train 6654,3
    .zoneskip Orgrimmar,1
step << Orc wotlk !Warlock
    #completewith OrgTrain
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Black Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 64658 >> Mount your |T132224:0|t[Black Wolf]
    .train 64658,3
    .zoneskip Orgrimmar,1
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .accept 1823 >> Accept Speak with Ruga
    .train 6574 >> Train your class spells
    .target Sorek
    .train 6574,1
step << Warrior
    #label OrgTrain
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .accept 1823 >> Accept Speak with Ruga
    .target Sorek
step << Hunter
    #label OrgTrain
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 3045 >> Train your class spells
    .target Ormak Grimshot
step << Shaman/Warrior/Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >> Travel toward |cRXP_FRIENDLY_Hanashi|r
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 196 >>Train 1h Axes
    .train 197 >>Train 2h Axes
    .target Hanashi
    .money <0.1900
    .train 196,1
    .train 197,1
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 196 >>Train 1h Axes
    .money <0.0950
    .target Hanashi
step << Warrior/Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train 2h Axes
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith RatchetFP
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,48.50,95.12,30,0 << !Troll
    .goto Orgrimmar,48.50,95.12,30 >> Exit Orgrimmar << Troll
    .zone Durotar >> Exit Orgrimmar << !Troll
    .zoneskip Orgrimmar,1
    .skill riding,75,1 << Troll Warrior/Troll Shaman
step << Troll wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>Travel toward |cRXP_FRIENDLY_Xar'Ti|r
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Xar'Ti
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zjolnir|r
    +|cRXP_BUY_Buy any|r |T132253:0|t[Raptor Whistle] |cRXP_BUY_that you like from him|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Emerald Raptor] to learn it
    .use 8588
    .itemcount 8588,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Turquoise Raptor] to learn it
    .use 8591
    .itemcount 8591,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Violet Raptor] to learn it
    .use 8592
    .itemcount 8592,1
    .skill riding,75,1
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Emerald Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 8395 >> Mount your |T132253:0|t[Emerald Raptor]
    .train 8395,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Turquoise Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10796 >> Mount your |T132253:0|t[Turquoise Raptor]
    .train 10796,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Violet Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10799 >> Mount your |T132253:0|t[Violet Raptor]
    .train 10799,3
    .zoneskip Orgrimmar
step << Warrior/Shaman
    #completewith next
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
step << Warrior/Shaman
    #completewith FPools
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Fly to Crossroads << Warrior
    .fly Camp Taurajo >> Fly to Camp Taurajo << Shaman
    .target Doras
    .zoneskip Orgrimmar,1
step << Troll
    #completewith next
    .goto Durotar,46.94,69.10,100,0
    .goto Durotar,46.02,69.32,40,0
    .goto Durotar,41.38,73.54,15,0
    .goto Durotar,66.29,35.94,30,0
    .goto The Barrens,63.08,37.16,30 >>Travel toward |cRXP_FRIENDLY_Bragok|r
    .zoneskip Durotar,1
step
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path << !Shaman !Warrior
    .fly Crossroads >> Fly to Crossroads << Troll Warrior wotlk
    .fly Camp Taurajo >> Fly to Camp Taurajo << Troll Shaman wotlk
    .target Bragok
    .zoneskip Orgrimmar
step
    #xprate <1.5
    >> Accept quest around Ratchet
.target Sputtervalve
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >>Accept Ziz Fizziks
    .goto The Barrens,63.0,37.2
.target Crane Operator Bigglefuzz
>>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
    .goto The Barrens,63.086,37.607
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
    .goto The Barrens,62.4,37.6
    .maxlevel 21
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >>Accept Deepmoss Spider Eggs
step << Rogue
	.goto The Barrens,65.0,45.4
    >>Run to the boat then go down to the 2nd floor. Start picking lockboxes until you're at 80 lockpicking skill.
	.skill lockpicking,>80
step
    #label FPools
    #xprate <1.5
    .maxlevel 21
    >>Run to the Crossroads
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
    .goto The Barrens,52.3,31.9
step
    .goto The Barrens,51.9,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
step
    #completewith next
    .goto The Barrens,52.02,30.14,15,0
    .goto The Barrens,51.99,29.89,15 >> Travel toward |cRXP_FRIENDLY_Boorand|r
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_BGazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << !Shaman !Warrior
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_BDevrak|r
    .fp Crossroads >> Get the The Crossroads flight path
step
    #xprate <1.5
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 848 >> Accept Fungal Spores
    .maxlevel 21
step
    #xprate <1.5
    >> Head west out of the Crossroads
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 850 >> Accept Kolkar Leaders
    .maxlevel 21
step
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>Dive underwater to the bubble fissure
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
    .isOnQuest 870
step
    >>Finish collecting the white mushrooms around The Forgotten Pools
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,45.0,22.7
    .complete 848,1 --Collect Fungal Spores (x4)
    .isOnQuest 848
step
    >>Kill Kodobane. Loot him for his head
    .goto The Barrens,42.9,23.5
    .complete 850,1 --Collect Kodobane's Head (x1)
	.unitscan Barak Kodobane
    .isOnQuest 850
step
    #sticky
    #completewith next
    .goto The Barrens,35.3,27.9
    >>Kill & Loot level 16+ raptors as you see them en route to the next step
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .isOnQuest 1061
    .goto The Barrens,35.3,27.9
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
.target Seereth Stonebreak
    .accept 1062 >> Accept Goblin Invaders
step
    #xprate <1.5
    .goto The Barrens,35.3,27.9
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Accept Avenge My Village
    .maxlevel 21
step
    .goto Stonetalon Mountains,81.8,96.1
    .zone Stonetalon Mountains >> Head to Stonetalon Mountains
step
    >>Kill Grimtotems in the area
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .isOnQuest 6548
step
    .goto The Barrens,35.191,27.791
    >> Head back to the quest giver in The Barrens
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Turn in Avenge My Village
.target Makaba Flathoof
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .isOnQuest 6548
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
step << Warlock tbc
    .goto Stonetalon Mountains,73.2,95.1
>>Talk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
.target Ken'zigla
    .accept 1511 >>Accept Ken'zigla's Draught
step
    .goto Stonetalon Mountains,71.4,95.1
    >> Talk to Xen'Zilla in the hut
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #completewith next
	.goto Stonetalon Mountains,71.7,86.7,40 >>Run to the path here
    .isOnQuest 6629
step
    >>Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
	.goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
	.unitscan Grundig Darkcloud
    .isOnQuest 6629
step
    >>Start the Kaya Escort
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Talk to |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Accept Protect Kaya
    .isOnQuest 6629
step
       >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .isOnQuest 6523
step
    #sticky
    #completewith next
    >> Kill Deepmoss Creepers en route to the wanted poster. You do not have to finish the quest now.
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
step
    >>Click the Wanted poster up the road
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step
    .goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step
    #sticky
    #label deepmossegg
    #completewith spiderend
    >>Click the spider eggs near the trees. Be careful as mobs can spawn from the eggs
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .isOnQuest 1069
step
    #sticky
    #label besseleth
    #completewith spiderend
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    >> Kill and loot Besseleth for his fang
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .isOnQuest 6284
step
    >>Kill the Deepmoss Spiders and Besseleth in the area. Loot Besseleth for his fang
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .isOnQuest 6461
step
#hidewindow
    #requires besseleth
step
    #label spiderend
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >> Turn in Ziz Fizziks
    .isOnQuest 1483
step
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    >>Kill Venture Co. Operators until you get the Blueprints
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Finish killing Loggers
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    .goto Stonetalon Mountains,58.989,62.599
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Turn in Super Reaper 6000
.target Ziz Fizziks
    .accept 1094 >> Accept Further Instructions
step
    #requires deepmossegg
    .goto The Barrens,52.2,31.9
    .hs >> Hearth to Crossroads
step
    .isOnQuest 870
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >> Turn in The Forgotten Pools
step
    .isQuestTurnedIn 870
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto The Barrens,52.3,31.9
    .vendor >> Vendor trash & repair your gear.
step
    .isOnQuest 848
    >>Turning this in will start a timed quest. Log out here if you're going to be busy in the next 45+ minutes.
    .goto The Barrens,51.5,30.2
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
step
    .isQuestTurnedIn 848
    >> Wait for the roleplay then accept the quest
    .goto The Barrens,51.5,30.2
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 853 >> Accept Apothecary Zamah
step
    .isOnQuest 853
    #sticky
    #completewith Zamah
    +You have 45 minutes to complete the Apothecary quest so keep an eye on the timer. Skip the quest if you fail it
step
    #completewith next
    >>Kill & Loot any level 16+ Raptors you see
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    >>Click the Bubble Fissure underwater
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Collect Test the Dried Seeds (x1)
    .isOnQuest 877
step
    #label Horns
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1
    >>Finish looting the rest of the Raptor Horns
    .complete 865,1 --Collect Intact Raptor Horn (x5)
    .isOnQuest 865
step
    .goto The Barrens,49.3,50.4
    >> Head to the small outpost by the road to the south
    .complete 4921,1 --Find Mankrik's Wife
    .skipgossip
step
    #sticky
    #label Lakota1
    #completewith weapons
	.goto The Barrens,50.0,53.1,75,0
    .goto The Barrens,46.0,49.2,75,0
    .goto The Barrens,45.3,52.5
    .unitscan Lakota'mani
    >>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
    .collect 5099,1,883 --Collect Hoof of Lakota'Mani
    .use 5099
    .accept 883 >>Accept Lakota'Mani
    .unitscan Lakota'Mani
step
    #requires Lakota1
    #label weapons
step
    #xprate <1.5
    .goto The Barrens,45.102,57.683
.target Tatternack Steelforge
>>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .accept 893 >>Accept Weapons of Choice
    .maxlevel 25
step
    .isOnQuest 883
    .goto The Barrens,44.7,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >> Turn in Lakota'mani
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 1130 >> Accept Melor Sends Word
step << Warlock tbc
    .goto The Barrens,44.6,59.3
>>Talk to |cRXP_FRIENDLY_Grunt Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
.target Grunt Logmar
    .accept 1515 >>Accept Dogran's Captivity
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >> Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
step << Warlock tbc
    >>Kill Quillboars en route to here
    .goto The Barrens,43.305,47.885
>>Talk to |cRXP_FRIENDLY_Grunt Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
.target Grunt Dogran
    .accept 1512 >>Accept Love's Gift
step
    >>Kill a LOT of Quillboars. Prioritize Thornweavers, Water Seekers, and Geomancers where you can. Loot them for their tusks. Save the Blood Shards you get
    *Water Seekers only spawn in the south western most camps. Go East or North West for Geomancers / Thornweavers.
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,42.2,48.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,53.2,54.3,50,0
    .goto The Barrens,53.3,51.3,50,0
    .goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3
    .complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0,75,0
    .goto The Barrens,44.2,62.1,75,0
    .goto The Barrens,49.2,62.6,75,0
    .goto The Barrens,49.6,60.0
    >>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. Skip this quest if you can't find him
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
    .accept 884 >>Accept Owatanka
    .unitscan Owatanka
step
    .goto The Barrens,44.6,59.2
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >> Turn in Tribes at War
.target Mangletooth
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
	>> Use your Blood Shards on Spirit of the Wind
    .accept 889 >> Accept Spirit of the Wind
    .turnin 889 >> Turn in Spirit of the Wind
step
    #completewith tbroute
    .destroy 5075 >> Destroy any leftover Blood Shards
    .itemcount 5075,1
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >> Turn in Owatanka
step
	.isOnQuest 883
        .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >> Turn in Lakota'mani
step << !Tauren
    #label tbroute
    .goto Thunder Bluff,32.1,67.2,30 >>Run to Thunder Bluff
step << !Tauren
    #completewith next
    .goto Thunder Bluff,45.814,64.711
	.home >> Set your Hearthstone to Thunder Bluff
step << Warlock
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>Train Staves
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << Tauren
    #completewith next
    .goto The Barrens,44.4,59.2
	.fly Thunder Bluff >>Fly or run to Thunder Bluff
step << Druid
	#completewith next
	.goto Thunder Bluff,76.477,27.221
.target Turak Runetotem
>>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
	.accept 27 >>Accept A Lesson to Learn << tbc
	.trainer >> Go and train your class spells
step
    #xprate <1.5
    .goto Thunder Bluff,30.1,30.0,25 >>Go into The Pools of Vision below the Spirit Rise
step
    #xprate <1.5
    #label Zamah
    >>Talk to Clarice Foster
    .goto Thunder Bluff,27.5,24.7
.target Clarice Foster
>>Talk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >> Accept Until Death Do Us Part
    .maxlevel 21
step
    .isOnQuest 853
    .goto Thunder Bluff,23.0,20.9
    >> If you failed the Zamah quest, just abandon it
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
step
    .isOnQuest 853
    .abandon 853 >> Abandon Apothecary Zamah
step
    #xprate <1.5
    .goto Thunder Bluff,23.0,20.9
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .accept 962 >> Accept Serpentbloom
    .maxlevel 21
step << Tauren
    #completewith next
    .goto Thunder Bluff,45.814,64.711
    .home >> Set your Hearthstone to Thunder Bluff
step
    .goto Thunder Bluff,61.538,80.919
    >> Head to Hunter's Rise
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1130 >> Turn in Melor Sends Word
.target Melor Stonehoof
    .accept 1131 >> Accept Steelsnap
step
    .goto Thunder Bluff,54.966,51.413
.target Zangen Stonehoof
>>Talk to |cRXP_FRIENDLY_Zangen Stonehoof|r
    .accept 1195 >> Accept The Sacred Flame
step << !Tauren
    >>Go up the tower
    .goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >>Get the Thunder Bluff Flight Path
step
    #completewith ratchetanchor1
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >> Fly to Ratchet
step
    .isOnQuest 865
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >> Turn in Raptor Horns
step
    #xprate <1.5
    .isQuestTurnedIn 865
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1491 >>Accept Smart Drinks
step
    #label ratchetanchor1
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1069 >> Turn in Deepmoss Spider Eggs
step
    #sticky
    #completewith next
    .itemcount 5570,1
    .destroy 5570 >> Destroy any leftover Deepmoss Spider Eggs
step
    .goto The Barrens,63.0,37.2
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >> Turn in Further Instructions
.target Sputtervalve
    .accept 1095 >> Accept Further Instructions
step
    #completewith next
    .goto The Barrens,63.1,37.2
    .fly Crossroads >> Fly to Crossroads
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >> Turn in Lost in Battle
    .turnin 899 >> Turn in Consumed by Hatred
step
    #sticky
    #completewith next
    .destroy 5085 >> Destroy any leftover Quilboar Tusks
    .itemcount 5085,1
step
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >> Turn in The Stagnant Oasis
    .isOnQuest 877
step
    .goto The Barrens,47.0,34.7,15,0
    .goto The Barrens,46.4,34.9,15,0
    .goto The Barrens,46.6,34.8,10 >>Go up the mountain here
    .isOnQuest 959
step
    .goto Kalimdor,51.9,55.4,30,0
    .goto Kalimdor,51.9,55.6,15 >> Drop down carefully to the eye of the cave (you may have to walk or backpedal off)
    .isOnQuest 959
step
    >>Go into the eye of the cave
    .goto Kalimdor,51.9,55.4
.target Nalpak
>>Talk to |cRXP_FRIENDLY_Nalpak|r
    .accept 1486 >>Accept Deviate Hides
    .isOnQuest 959
step
    .goto The Barrens,46.1,36.7,35 >>Leave the eye. Go to the mouth of the cave
    .isOnQuest 959
step
    #sticky
    #label Deviate
    >>Kill Deviate mobs. Loot them for their hides
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
step
    #sticky
    #label Serpentbloom
    >>Look for green and red flowers on the ground
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
step
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.2,55.2
    >>Look for Mad Magglish (a goblin). He's stealthed, and has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
    .complete 959,1 --Collect 99-Year-Old Port (1)
    .unitscan Mad Magglish
    .isOnQuest 959
step
    .goto Kalimdor,51.9,54.9,20 >>Enter the deeper part of the cave
    .isOnQuest 1491
step
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
	.goto Kalimdor,52.6,54.5
    >>Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave (Trigore and Boahn), as they can drop blue BoE items
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #requires Serpentbloom
    .isOnQuest 962
step
    #requires Deviate
    >>Run back to the eye of the cave
    .goto Kalimdor,51.9,55.4
.target Nalpak
>>Talk to |cRXP_FRIENDLY_Nalpak|r
    .turnin 1486 >>Turn in Deviate Hides
    .isOnQuest 1486
step
    >> Head back to the Kolkar outpost
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 850 >> Turn in Kolkar Leaders
    .isOnQuest 850
step
    .isQuestComplete 1062
    >> Head towards Stonetalon. Talk to Seereth
    .goto The Barrens,35.3,27.8
.target Seereth Stonebreak
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1062 >> Turn in Goblin Invaders
step
    .goto The Barrens,35.3,27.8
.target Seereth Stonebreak
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .accept 1063 >> Accept The Elder Crone
    .isQuestTurnedIn 1062
step
    .isOnQuest 6523
    >> Head towards Stonetalon
    .goto The Barrens,35.3,27.8
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6629 >> Turn in Kill Grundig Darkcloud
    .turnin 6523 >> Turn in Protect Kaya
step
    .isQuestTurnedIn 6523
    .goto The Barrens,35.3,27.8
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6401 >> Accept Kaya's Alive
step
	.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
    .isOnQuest 6461
step
    .goto Stonetalon Mountains,71.3,95.0
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >> Turn in Blood Feeders
    .isOnQuest 6461
step
    #xprate >1.499
    .isOnQuest 1095
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >> Turn in Further Instructions
step << !Rogue
    #xprate <1.5
    >> Head to Sun Rock Retreat
    >> Head up the side mountain path to your left once you reach Sun Rock
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >> Accept Trouble in the Deeps
    .maxlevel 23
step << Rogue
    >> Head to Sun Rock Retreat
    >> Head up the side mountain path to your left once you reach Sun Rock
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >> Accept Trouble in the Deeps
step
    .goto Stonetalon Mountains,47.2,61.1
.target Maggran Earthbinder
>>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6284 >> Turn in Arachnophobia
    .isOnQuest 6284
step
    #xprate <1.5
    .goto Stonetalon Mountains,45.1,59.8
    .fp Sun Rock >>Get the Sun Rock Retreat Flight Path
    .maxlevel 23
step
    .goto Stonetalon Mountains,47.5,58.3
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >> Turn in Kaya's Alive
    .isOnQuest 6401
step
    .isOnQuest 1095
    >> Head back to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >> Turn in Further Instructions
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #completewith next
    .goto Stonetalon Mountains,78.2,42.8,30 >>Go to Talondeep Path
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,42.3,71.0,20 >>Run through the cave to Ashenvale
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,12.3,33.8
    .fp Zoram >> Get the Zoram'gar Outpost flight path
    .maxlevel 23
step
    #xprate <1.5
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .maxlevel 23
step
    #xprate <1.5
    >> Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
.target Marukai
>>Talk to |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >> Accept Naga at the Zoram Strand
.target Mitsuwa
>>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >> Accept Troll Charm
    .maxlevel 23
step
    #xprate <1.5
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6562 >> Turn in Trouble in the Deeps
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Accept The Essence of Aku'Mai
    .maxlevel 23
step
    #xprate <1.5
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
.target Muglash
>>Talk to |cRXP_FRIENDLY_Muglash|r
    .accept 6641 >> Accept Vorsha the Lasher
    .maxlevel 23
step
    #xprate <1.5
    #sticky
    #label wrathtailhead
    >>Kill the Nagas around the beach. Loot them for their heads
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
    .isOnQuest 6442
step
    #xprate <1.5
    >>Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #xprate <1.5
    .goto Ashenvale,14.2,14.7,40 >>Drop down the hole into Blackfathom Deeps
    .isOnQuest 6442
step
    #xprate <1.5
    #sticky
    #label Sapphires
    #completewith zoramend
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .use 16790 >>Swim under the water and enter Blackfathom Deeps. Kill the Priestess' until a Damp Note drops(quest). Then right click it and accept the quest.
    .collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >> Accept Allegiance to the Old Gods
    .isOnQuest 6442
step
    #xprate <1.5
    #requires Sapphires
    >> Loot the Sapphires from the walls in the tunnel.
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
    .isOnQuest 6563
step
    #xprate <1.5
    #label zoramend
    #requires wrathtailhead
    >>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>Talk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >> Turn in Vorsha the Lasher
    .isQuestComplete 6641
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >> Turn in The Essence of Aku'Mai
    .isQuestComplete 6563
step
    #xprate <1.5
    #sticky
    #completewith next
    .destroy 16784 >> Destroy any leftover Sapphires of Aku'Mai
    .itemcount 16784,1
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >> Turn in Allegiance to the Old Gods
    .isOnQuest 6564
step
    #xprate <1.5
    .goto Ashenvale,11.689,34.905
.target Marukai
>>Talk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .isQuestComplete 6442
step << Druid tbc
    #sticky
    #completewith next
     +Grind or log off until your hearthstone cooldown is less than 5 minutes
    .cooldown item,6948,<5m
step << Druid tbc
    .cast 18960 >> Use the spell Teleport: Moonglade once your hearthstone is available
    >>Go Upstairs
    .goto Moonglade,56.209,30.636
>>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 27 >>Turn in A Lesson to Learn
.target Dendrite Starblaze
    .accept 28 >>Accept Trial of the Lake
step << Druid tbc
	#completewith next
    .goto Moonglade,52.526,40.565
    .trainer >> Go and train your class spells
step << Druid tbc
    >>Search for a vase in the lake. Loot it for a Shrine Bauble
    .goto Moonglade,54.6,46.5,25,0
    .goto Moonglade,53.0,48.4
    .collect 15877,1
step << Druid tbc
    .use 15877 >>Use the Shrine Bauble
    .goto Moonglade,36.2,41.8
    .complete 28,1 --Complete the Trial of the Lake. (1)
step << Druid tbc
    .goto Moonglade,36.517,40.104
>>Talk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >>Turn in Trial of the Lake
.target Tajarri
    .accept 30 >>Accept Trial of the Sea Lion
step
    #completewith next
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
    .zoneskip Stonetalon Mountains
step
    #completewith next
    .goto Stonetalon Mountains,45.1,59.8
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .zoneskip Stonetalon Mountains,1
step
    .isOnQuest 1063
    .goto Thunder Bluff,69.851,30.910
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Turn in The Elder Crone
    >> Wait for the roleplay to finish
.target Magatha Grimtotem
    .accept 1064 >> Accept Forsaken Aid
step
    .isOnQuest 1064
    >> Head to the pools under the Spirit Rise
    .goto Thunder Bluff,22.9,21.1
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
.target Apothecary Zamah
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .isOnQuest 1489
    .goto Thunder Bluff,78.4,28.4
>>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .turnin 1489 >> Turn in Hamuul Runetotem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Accept Nara Runetotem
step
    .isQuestTurnedIn 1489
    .goto Thunder Bluff,75.6,31.2
.target Nara Wildmane
>>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 1490 >> Turn in Nara Runetotem
step
    .isOnQuest 962
    >> Head to the pools under the Spirit Rise
    .goto Thunder Bluff,22.9,21.1
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 962 >> Turn in Serpentbloom
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << !Druid
	#completewith troubleatdocks1
    .isOnQuest 959
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >> Fly to Ratchet
step << Druid
	#completewith next
    .goto Thunder Bluff,47.003,49.832
    .fly Ratchet >> Fly to Ratchet
step
    #label troubleatdocks1
    .isOnQuest 959
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >>Turn in Trouble at the Docks
step
    .isOnQuest 1491
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1491 >>Turn in Smart Drinks
step << Druid tbc
    >>Loot the gray chest underwater
    .goto The Barrens,56.7,8.3
    .collect 15883,1
step << Druid tbc
    #sticky
    #completewith next
    .goto Orgrimmar,12.4,66.1,40 >>Enter Orgrimmar through the west entrance
step << Druid wotlk/!Druid
    #completewith next
    .goto The Barrens,63.1,37.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >> Fly to Orgrimmar
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >> Go and train your class spells
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.046,18.526
    .trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >> Go and train your pet spells
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
    .trainer >> Go and train your class spells
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >> Go and train your class spells
step << Warlock
    #completewith next
    .goto Orgrimmar,47.983,45.933
    .trainer >> Go and train your class spells
step << Warlock tbc
	#completewith next
	.goto Orgrimmar,47.5,46.7
    .vendor >> Buy a Grimoire of Soothing Kiss
	.collect 16375,1
    >>You can buy the Voidwalker books too if you prefer the Voidwalker.
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
        .trainer >> Go and train your class spells
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >> Go and train your class spells
step << Rogue tbc
    .goto Orgrimmar,43.050,53.737
.target Shenthul
>>Talk to |cRXP_FRIENDLY_Shenthul|r
    .accept 2460 >>Accept The Shattered Salute
step << Rogue tbc
    >>Target Shenthul and type /salute
	.emote SALUTE,3401
    .complete 2460,1 --Shattered Salute Performed (1)
step << Rogue
    .goto Orgrimmar,43.050,53.737
>>Talk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute << tbc
.target Shenthul
    .accept 2458 >>Accept Deep Cover << tbc
    .train 1725 >>Train Distract
    .train 1856 >>Train Vanish
    .train 1759 >>Train Sinister Strike r4
step << Rogue tbc
	#completewith next
    .goto Orgrimmar,42.1,49.5
    .vendor >> Buy at least 1 Flash Powder from Rekkul
    .collect 5140,1 --Collect Flash Powder
step << Rogue tbc
    #sticky
    #completewith next
    +Make sure you have a dagger in your inventory. If you don't, buy the cheapest one you can find
step << Rogue tbc
    .use 8051 >>Use the Flare Gun when you're about 50 yards from Taskmaster Fizzule. Then /salute him. Speak to him when he turns friendly
	.emote SALUTE,7233
.goto The Barrens,55.4,5.6
>>Talk to |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
.target Taskmaster Fizzule
    .accept 2478 >>Mission: Possible But Not Probable
step << Rogue tbc
	.cast 5967 >>Stealth and pickpocket Silixiz for his Tower Key. Make you hug the tower wall as much as possible then go behind him to pickpocket him. If he says something, back up, then approach from a different angle to try to pickpocket him again. Do NOT kill him
    .goto The Barrens,54.8,5.9
    .complete 2478,5 --Silixiz's Tower Key (1)
step << Rogue tbc
    .cast 8676 >>Go into the tower & equip your dagger. Ambush one of the Drones. This will instantly kill them. Run away, come back, and do the same to the other Drone
    .goto The Barrens,54.7,5.7
    .complete 2478,1 --Mutated Venture Co. Drone (2)
step << Rogue tbc
    .cast 1943 >>Go upstairs to the next floor. Re-equip your main weapon. Use a 1 Combo Point Rupture to kill the mobs. This should do 50% of their health each time
    .goto The Barrens,54.7,5.8
.complete 2478,3 --Venture Co. Patroller (2)
step << Rogue tbc
    .cast 6761 >>Go onto the third floor of the tower. Use a 1 Combo Point Eviscerate to kill the mobs. This should do 50% of their health each time
    .goto The Barrens,54.6,5.6
    .complete 2478,2 --Venture Co. Lookout (2)
step << Rogue tbc
    >>Go to the top floor of the tower. Equip your dagger again (make sure your cooldowns are up). Ambush Gallywix then re-equip your main weapon in your main hand. Use all of your cooldowns & potions to kill Gallywix. Loot his head after you kill him.
    .goto The Barrens,54.8,5.6
    .complete 2478,4 --Gallywix's Head (1)
step << Rogue tbc
    >>Lockpick the box in front of Gallywix in the top floor to loot the Altered Mixture
	.goto The Barrens,54.8,5.6
	.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue tbc
    #sticky
    #completewith next
	>>Run back to Orgrimmar through the West Entrance
    .goto Orgrimmar,11.6,66.9,30
step << Rogue tbc
	>>You're now going to get a week long debuff making you unable to use stealth. Simply continue following the route.
	.goto Orgrimmar,43.050,53.737
>>Talk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
.target Shenthul
    .accept 2479 >>Accept Hinott's Assistance
step << Warlock tbc
    .goto Orgrimmar,48.246,45.281
>>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1512 >>Turn in Love's Gift
.target Gan'rul Bloodeye
    .accept 1513 >>Accept The Binding
step << Warlock tbc
    .use 6626 >>Use Dogran's Pendant to summon the Succubus at the circle in the building. Kill her
	.goto Orgrimmar,49.4,50.0
    .complete 1513,1 --Summoned Succubus (1)
step << Warlock tbc
    >>Use the Succubus from now on
    .goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>Talk to |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1513 >>Turn in The Binding
    .isQuestComplete 1513
step << Warlock
    .goto Orgrimmar,48.246,45.281
    .trainer >> Train your class spells
step << wotlk
    +If you have access to gold on this server, mail yourself gold for mount training soon!
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 22-25 Hillsbrad / South Barrens
#version 1
#group RestedXP Horde 1-30
#next 25-26 Stonetalon; 26-30 Ashenvale / Thousand Needles
#xprate <1.5

step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step
    #label Zeppelin
	>>Go to the Zeppelin tower. Take the zeppelin to Tirisfal
	.goto Durotar,50.8,13.8
	.zone Tirisfal Glades >>Arrive in Tirisfal Glades
step << Undead !Warlock wotlk
    .money <5.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >> Train riding and purchase your mount
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >> Click on the Orb of Translocation to head to Silvermoon City
step << Blood Elf !Warlock wotlk
    .money <5.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >> Leave Silvermoon City, then train riding and purchase your mount.
step << Blood Elf !Warlock wotlk
    .goto Silvermoon City,49.4,14.3
    >> Teleport to The Undercity if you can << Mage
    .zone Undercity >> Click on the Orb of Translocation to head to the Undercity
step << Druid tbc
    >>Loot the gray chest underwater next to the bubble fissure (in the fatigue).
    .goto Silverpine Forest,30.0,29.1
    .collect 15882,1
    --Video link in future?
    .isOnQuest 30
step
    .goto Silverpine Forest,42.80,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r
    .accept 493 >> Accept Journey to Hillsbrad Foothills
    .target Apothecary Renferrel
step
    .isOnQuest 3301
    .goto Silverpine Forest,42.90,41.99
.target Mura Runetotem
>>Talk to |cRXP_FRIENDLY_Mura Runetotem|r
    .turnin 3301 >> Turn in Mara Runetotem
step
    >>Click the stone grave on the ground
    .goto Silverpine Forest,44.1,42.5
    .turnin 264 >> Turn in Until Death Do Us Part
    .isOnQuest 264
step
    .goto Silverpine Forest,45.62,42.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fp The Sepulcher >> Get the The Sepulcher flight path
    .target Karos Razok
step
    #completewith next
    .goto Silverpine Forest,46.33,44.30,30,0
    .goto Silverpine Forest,61.47,67.47,40,0
    .goto Silverpine Forest,67.14,79.06,40,0
    .goto Hillsbrad Foothills,20.79,47.40,40 >> Travel toward |cRXP_FRIENDLY_Lesh|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Dalaran Wizards|r en route as they cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_which will slow you down|r
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lesh|r
    .accept 494 >> Accept Time To Strike
    .target Deathstalker Lesh
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
    .fp Tarren Mill>> Get the Tarren Mill Flight Path
    .target Zarise
step << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Krusk|r
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, |cRXP_FRIENDLY_Duskingdawn|r, the |cRXP_FRIENDLY_Wanted Poster|r, and |cRXP_FRIENDLY_Krusk|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, and |cRXP_FRIENDLY_Krusk|r << !BloodElf
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >> Turn in Report to Tarren Mill << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >24,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1000,1145,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 498
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,2000,1145,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,1000,1145,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Shaman
	.goto Hillsbrad Foothills,62.17,20.82
    >>Use the |T132829:0|t[Empty Red Waterskin] at the well
    .complete 1536,1 --Filled Red Waterskin (1)
    .use 7768
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r
    .collect 923,1,885,1 --Longsword (1)
    .target Ott
    .money <0.8307 << !Undead/!BloodElf
    .money <0.8722 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .skill riding,<75,1 << wotlk
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Durnholde1
    +Equip the |T132408:0|t[Merciless Axe]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Durnholde1
    +Equip the |T135640:0|t[Broad Bladed Knife]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Rogue wotlk
    #completewith Durnholde1
    .cast 8679 >> Use the |T132273:0|t[Instant Poison] on your weapons
    .itemcount 6947,2
step
    #completewith Durnholde1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith next
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Durnholde1
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Travel to Durnholde Keep
    .isOnQuest 549
step
    #completewith Drull
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot them for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19
	>>Kill |cRXP_ENEMY_Jailor Marlgen|r. Loot him for his |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or, at the bottom of the tower|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
	.goto Hillsbrad Foothills,79.79,39.65
    >>Click the |cRXP_PICK_Ball and Chain|r on the ground
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T134590:0|t[Stalking Pants] |cRXP_BUY_and|r |T132603:0|t[Wolf Bracers] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T134590:0|t[Stalking Pants] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T132603:0|t[Wolf Bracers] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T134590:0|t[Stalking Pants] |cRXP_BUY_and|r |T132603:0|t[Wolf Bracers]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T134590:0|t[Stalking Pants]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T132603:0|t[Wolf Bracers]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63
    >>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Click the |cRXP_PICK_Ball and Chain|r on the ground
    .complete 498,1 --Rescue Drull (1)
step
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot them for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1,7 --Kill Syndicate Rogue (x10)
	.complete 549,2,7 --Kill Syndicate Watchman (x10)
	.complete 1066,1,4 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #label ExitDurnholde
    #completewith Syndicate1
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Exit Durnholde Keep
    .isOnQuest 549
step
    #requires ExitDurnholde
    #completewith Syndicate1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
    #requires ExitDurnholde
	#completewith next
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Giant Moss Creepers|r as they're not worth killing yet|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Syndicate1
    .goto Hillsbrad Foothills,67.06,46.27,40,0
    .goto Hillsbrad Foothills,66.04,45.78,40,0
    .goto Hillsbrad Foothills,64.87,47.17,40,0
    .goto Hillsbrad Foothills,66.13,48.44,40,0
    .goto Hillsbrad Foothills,67.11,50.53,40,0
    .goto Hillsbrad Foothills,76.51,46.31,40,0
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot them for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith HFields1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith HFields1
    .goto Hillsbrad Foothills,62.93,38.53,45,0
    .goto Hillsbrad Foothills,62.16,39.83,45,0
    .goto Hillsbrad Foothills,60.92,38.20,45,0
    .goto Hillsbrad Foothills,59.23,34.19,45,0
    .goto Hillsbrad Foothills,58.77,28.98,45,0
    .goto Hillsbrad Foothills,57.15,30.80,45,0
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Giant Moss Creepers|r as they're not worth killing|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #completewith HFields1
    .goto Hillsbrad Foothills,54.77,28.72,45,0
    .goto Hillsbrad Foothills,52.93,29.45,45,0
    .goto Hillsbrad Foothills,54.29,31.75,45,0
    .goto Hillsbrad Foothills,51.28,35.37,45,0
    .goto Hillsbrad Foothills,43.36,39.38,45,0
    .goto Hillsbrad Foothills,42.56,40.19,45,0
    .goto Hillsbrad Foothills,40.91,44.23,45,0
    .goto Hillsbrad Foothills,39.92,45.83,45,0
    .goto Hillsbrad Foothills,37.97,44.59,45,0
    .goto Hillsbrad Foothills,39.88,40.56,45,0
    .goto Hillsbrad Foothills,38.45,38.77,45,0
    .goto Hillsbrad Foothills,38.70,36.71,45,0
    .goto Hillsbrad Foothills,39.79,34.43,45,0
	>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label HFields1
    .goto Hillsbrad Foothills,36.02,39.19,80 >> Travel to the Hillsbrad Fields
    .isOnQuest 527
step
	#completewith Getz
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
    #completewith next
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    >>Kill |cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_He can be found in the House, in the Field, or in the Barn|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78
    >>Kill |cRXP_ENEMY_Farmer Ray|r
    >>|cRXP_WARN_He can be found in the vineyard, or in the first and second floor of the house|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #label Getz
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70
    >>Kill |cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_He can be found in the House, in the Field, or in the Barn|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
#loop
	.line Hillsbrad Foothills,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,35.90,40.63,45,0
	.goto Hillsbrad Foothills,33.88,41.80,45,0
	.goto Hillsbrad Foothills,30.19,38.48,45,0
	.goto Hillsbrad Foothills,30.67,35.21,45,0
	.goto Hillsbrad Foothills,31.71,36.72,45,0
	.goto Hillsbrad Foothills,33.67,35.66,45,0
	.goto Hillsbrad Foothills,35.90,40.63,45,0
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
	#completewith BearT
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    #completewith next
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
	.goto Hillsbrad Foothills,39.79,34.43,45,0
	.goto Hillsbrad Foothills,38.70,36.71,45,0
	.goto Hillsbrad Foothills,38.45,38.77,45,0
	.goto Hillsbrad Foothills,39.88,40.56,45,0
	.goto Hillsbrad Foothills,37.97,44.59,45,0
	.goto Hillsbrad Foothills,39.92,45.83,45,0
	.goto Hillsbrad Foothills,40.91,44.23,45,0
	.goto Hillsbrad Foothills,42.56,40.19,45,0
	.goto Hillsbrad Foothills,43.36,39.38,45,0
	.goto Hillsbrad Foothills,51.28,35.37,45,0
	.goto Hillsbrad Foothills,54.29,31.75,45,0
	.goto Hillsbrad Foothills,52.93,29.45,45,0
	.goto Hillsbrad Foothills,54.77,28.72,45,0
	>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label BearT
#loop
	.line Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
	.goto Hillsbrad Foothills,40.88,33.87,45,0
	.goto Hillsbrad Foothills,40.86,37.40,45,0
	.goto Hillsbrad Foothills,40.85,39.42,45,0
	.goto Hillsbrad Foothills,38.50,38.04,45,0
	.goto Hillsbrad Foothills,37.68,41.23,45,0
	.goto Hillsbrad Foothills,38.71,42.66,45,0
	.goto Hillsbrad Foothills,40.40,44.65,45,0
	.goto Hillsbrad Foothills,44.39,41.34,45,0
	.goto Hillsbrad Foothills,45.23,39.62,45,0
	.goto Hillsbrad Foothills,43.87,37.01,45,0
	.goto Hillsbrad Foothills,49.75,34.33,45,0
	.goto Hillsbrad Foothills,52.06,36.86,45,0
	.goto Hillsbrad Foothills,51.91,32.97,45,0
	.goto Hillsbrad Foothills,52.39,29.27,45,0
	.goto Hillsbrad Foothills,57.38,22.85,45,0
	.goto Hillsbrad Foothills,57.09,25.67,45,0
	.goto Hillsbrad Foothills,58.08,28.07,45,0
	.goto Hillsbrad Foothills,56.88,28.85,45,0
	.goto Hillsbrad Foothills,59.68,30.90,45,0
	.goto Hillsbrad Foothills,57.71,34.06,45,0
	.goto Hillsbrad Foothills,59.89,36.74,45,0
	.goto Hillsbrad Foothills,62.63,37.64,45,0
	.goto Hillsbrad Foothills,64.73,38.03,45,0
	.goto Hillsbrad Foothills,66.52,34.52,45,0
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	.goto Hillsbrad Foothills,62.24,39.96,45,0
	.goto Hillsbrad Foothills,60.92,37.92,45,0
	.goto Hillsbrad Foothills,59.62,33.33,45,0
	.goto Hillsbrad Foothills,56.88,29.73,45,0
	.goto Hillsbrad Foothills,59.80,27.72,45,0
	.goto Hillsbrad Foothills,57.63,24.16,45,0
	.goto Hillsbrad Foothills,56.47,16.42,45,0
	.goto Hillsbrad Foothills,59.36,14.55,45,0
	.goto Hillsbrad Foothills,60.54,13.67,45,0
	.goto Hillsbrad Foothills,62.65,12.90,45,0
	.goto Hillsbrad Foothills,64.43,10.22,45,0
	.goto Hillsbrad Foothills,65.18,6.93,45,0
	.goto Hillsbrad Foothills,65.31,5.76,45,0
	.goto Hillsbrad Foothills,66.90,9.02,45,0
	.goto Hillsbrad Foothills,70.39,8.89,45,0
	.goto Hillsbrad Foothills,68.86,10.18,45,0
	.goto Hillsbrad Foothills,67.35,12.95,45,0
	.goto Hillsbrad Foothills,71.38,19.81,45,0
	.goto Hillsbrad Foothills,71.78,21.89,45,0
	.goto Hillsbrad Foothills,64.85,24.92,45,0
	.goto Hillsbrad Foothills,66.68,28.15,45,0
	.goto Hillsbrad Foothills,69.76,31.89,45,0
	.goto Hillsbrad Foothills,67.62,37.65,45,0
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, |cRXP_FRIENDLY_Darthalia|r, and |cRXP_FRIENDLY_Krusk|r
    .turnin 496 >> Turn in Elixir of Suffering
    .accept 499 >> Accept Elixir of Suffering
    .turnin 501 >> Turn in Elixir of Pain
    .accept 502 >> Accept Elixir of Pain
    .turnin 1066 >> Turn in Blood of Innocents << Shaman/Warrior
    .accept 1067 >> Accept Return to Thunder Bluff << Shaman/Warrior
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >> Turn in Elixir of Suffering
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >> Turn in Battle of Hillsbrad
    .accept 528 >> Accept Battle of Hillsbrad
	.turnin 549 >> Turn in WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >> Turn in The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1000,498,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 528
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,2000,498,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 528
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,1000,498,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 528
    .xp <25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    .goto Hillsbrad Foothills,62.11,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samsa|r
    .accept 546 >> Accept Souvenirs of Death
    .target Deathguard Samsa
step
    #completewith Kalaba
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    .goto Hillsbrad Foothills,36.54,39.44,40,0
    .goto Hillsbrad Foothills,35.36,38.73,40,0
    .goto Hillsbrad Foothills,33.98,38.78,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.58,38.17,40,0
    .goto Hillsbrad Foothills,32.66,36.08,40,0
    .goto Hillsbrad Foothills,32.92,35.25,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.65,41.12,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,30.53,40.56,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.41,43.85,40,0
    .goto Hillsbrad Foothills,32.46,44.59,40,0
    .goto Hillsbrad Foothills,32.29,45.13,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,36.54,39.44
    >>Kill |cRXP_ENEMY_Citizen Wilkes|r
    >>|cRXP_WARN_He patrols around the roads of the town|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    #completewith next
	.goto Hillsbrad Foothills,36.00,46.50
    >>Kill |cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
    .unitscan Enraged Stanley
step
    #completewith next
	>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Kill |cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samsa|r and |cRXP_FRIENDLY_Darthalia|r
    .turnin 546 >> Turn in Souvenirs of Death
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .target Deathguard Samsa
    .target High Executor Darthalia
    .isQuestComplete 546
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +Equip the |T132408:0|t[Merciless Axe]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +Equip the |T135640:0|t[Broad Bladed Knife]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step
    #completewith Blacksmith
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #completewith Verringtan
    >>Kill |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
    #completewith next
	.goto Hillsbrad Foothills,32.56,45.95,0
	>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    .goto Hillsbrad Foothills,32.01,45.45
    >>Loot the |cRXP_PICK_Shipment of Iron|r inside on the ground
    .complete 529,3 --Collect Shipment of Iron (x1)
step
    #label Verringtan
	.goto Hillsbrad Foothills,32.56,45.95,15,0
	.goto Hillsbrad Foothills,32.20,45.65,15,0
	.goto Hillsbrad Foothills,32.11,44.43,15,0
#loop
	.line Hillsbrad Foothills,32.56,45.95,32.20,45.65,32.11,44.33,32.56,45.95
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	.goto Hillsbrad Foothills,32.20,45.65,20,0
	.goto Hillsbrad Foothills,32.11,44.33,20,0
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    #label Blacksmith
#loop
	.line Hillsbrad Foothills,31.96,45.83,32.69,45.10,31.15,43.91,31.10,46.75,31.89,46.72,31.96,45.83
	.goto Hillsbrad Foothills,31.96,45.83,25,0
	.goto Hillsbrad Foothills,32.69,45.10,25,0
	.goto Hillsbrad Foothills,31.15,43.91,25,0
	.goto Hillsbrad Foothills,31.10,46.75,25,0
	.goto Hillsbrad Foothills,31.89,46.72,25,0
	.goto Hillsbrad Foothills,31.96,45.83,25,0
    >>Kill |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .mob Hillsbrad Peasant
    .mob Hillsbrad Farmer
    .mob Hillsbrad Footman
    .mob Hillsbrad Councilman
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    .xp 24 >> Grind to level 24
step
    #xprate >1.499
	.goto Hillsbrad Foothills,62.4,20.3
    #requires humanskull
.target High Executor Darthalia
>>Talk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 529 >> Turn in Battle of Hillsbrad
.target Deathguard Samsa
>>Talk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .turnin 546 >> Turn in Souvenirs of Death
step << Druid
#completewith next
	.cast 18960 >> Use the spell Teleport: Moonglade
    .goto Moonglade,52.526,40.565
	.trainer >> Go and train your class spells
step << Druid tbc
    .use 15883 >>Click the Half Pendant (blue) in your bag to craft the Pendant
	.goto Moonglade,36.2,41.8
    .complete 30,1 --Pendant of the Sea Lion (1)
step << Druid tbc
    >>Go Upstairs
    .goto Moonglade,56.209,30.636
>>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 30 >>Turn in Trial of the Sea Lion
.target Dendrite Starblaze
    .accept 31 >>Accept Aquatic Form
step
	#completewith next
	>>We're not going to turn these quests in until later on.
	.hs >> Hearth to Thunder Bluff
step << Druid
    .goto Thunder Bluff,77.0,29.9
.trainer >> Go and train your class spells
step << Hunter
    .goto Thunder Bluff,59.1,86.9
.trainer >> Go and train your class spells
step << Hunter
    .goto Thunder Bluff,54.1,83.9
.trainer >> Go and train your pet spells
step << Warrior
    .goto Thunder Bluff,57.6,85.5
.trainer >> Go and train your class spells
step << Shaman
    .goto Thunder Bluff,22.813,20.893
.trainer >> Go and train your class spells
step
    #xprate >1.099
    >>In the pools below the Spirit Rise
	.goto Thunder Bluff,23.1,21.0
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1067 >> Turn in Return to Thunder Bluff
    .isOnQuest 1067
step
    #xprate <1.1
    >>In the pools below the Spirit Rise
	.goto Thunder Bluff,23.1,21.0
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1067 >> Turn in Return to Thunder Bluff
.target Apothecary Zamah
    .accept 1086 >> Accept The Flying Machine Airport
    .isOnQuest 1067
step << Priest
    .goto Thunder Bluff,24.6,22.6
.trainer >> Go and train your class spells
step << Mage
    .goto Thunder Bluff,25.2,20.9
.trainer >> Go and train your class spells
step
    >> Head up the totem tower
    .goto Thunder Bluff,46.8,50.1
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << Warrior
    >>In the building
	.goto The Barrens,44.7,59.4
>>Talk to |cRXP_FRIENDLY_Ruga Ragetotem|r
	.turnin 1823 >>Turn in Speak with Ruga
.target Ruga Ragetotem
    .accept 1824 >>Accept Trial at the Field of Giants
step
    .maxlevel 28
    >> Speak to Mangletooth in the cage then pickup Weapons of Choice from Tatternack if you didn't grab it last time
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 879 >> Accept Betrayal from Within
    .goto The Barrens,44.6,59.2
.target Tatternack Steelforge
>>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .accept 893 >> Accept Weapons of Choice
    .goto The Barrens,45.0,57.6
step
	#label Owatanka2
	#completewith next
    .maxlevel 29
	.goto The Barrens,44.2,62.1,75,0
	.goto The Barrens,49.2,62.6,75,0
	.goto The Barrens,49.6,60.0,75,0
	>>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
	.collect 5102,1,884 --Collect Owatanka's Tailspike
    .use 5102
	.accept 884 >>Accept Owatanka
	.unitscan Owatanka
step << Warrior
    >>Kill Silithid mobs in the area. Loot them for Twitching Antennae. Be quick as they have a 15m duration
	.goto The Barrens,48.1,70.3
	.complete 1824,1 --Twitching Antenna (5)
step << Warrior
    >>In the building
	.goto The Barrens,44.7,59.4
    .turnin -1824 >>Turn in Trial at the Field of Giants
step << Warrior
    #xprate <1.5
    .goto The Barrens,44.7,59.4
.target Ruga Ragetotem
>>Talk to |cRXP_FRIENDLY_Ruga Ragetotem|r
    .accept 1825 >>Accept Speak with Thun'grim
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    .goto The Barrens,44.7,77.8,0
    .goto The Barrens,47.6,79.8,0
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest.
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step << Shaman
	.goto The Barrens,43.4,77.4
>>Talk to |cRXP_FRIENDLY_Brine|r
	.turnin 1536 >>Turn in Call of Water
.target Brine
	.accept 1534 >>Accept Call of Water
step
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 843 >> Accept Gann's Reclamation
    >>He patrols along the road.
    .unitscan Gann Stonespire
    .maxlevel 28
step
    #sticky
    #label Washte
    #completewith next
    .goto The Barrens,44.7,74.7,0
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him in this last spot
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #sticky
    #label Weapons
    .isOnQuest 893
    .goto The Barrens,43.4,78.8,30,0
    .goto The Barrens,40.4,80.8,30,0
    .goto The Barrens,43.8,83.5,30,0
    >>Kill mobs in the area for Weapons of Choice. Backstabber from Stalkers or Pathfinders, Wand from Seers, and Shield from Warfrenzies
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
step
    .isOnQuest 879
	.goto The Barrens,43.4,78.8
    >> Kuz walks all around the ridge. Kill and loot her for her skull.
    .complete 879,1 --Collect Kuz's Skull (x1)
	.unitscan Kuz
step
    .isOnQuest 879
    .goto The Barrens,40.4,80.8
    >> Lok is in the building up from the ramp. Kill and loot him for his skull.
    .complete 879,3 --Collect Lok's Skull (x1)
	.unitscan Lok Orcbane
step
    .isOnQuest 879
    .goto The Barrens,43.8,83.5
    >> Nak is on the southern part of the ridge. Kill and loot him for his skull.
    .complete 879,2 --Collect Nak's Skull (x1)
	.unitscan Nak
step
    #requires Weapons
    #sticky
    #label Baeldun
    .isOnQuest 843
	.goto The Barrens,48.3,86.2,0,0
    >>Kill Dwarves in the area for Gann's Reclamation
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
step
    #requires Weapons
    .isOnQuest 843
	>>Kill Prospector Khazgorm. Loot him for his Journal
	.goto The Barrens,48.3,86.2
	.complete 843,3 --Collect Khazgorm's Journal (x1)
step
    #sticky
    #label Washte
    #completewith next
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    .isOnQuest 843
    .unitscan Gann Stonespire
    #requires Baeldun
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann on the road again
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 843 >> Turn in Gann's Reclamation
step
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 846 >> Accept Revenge of Gann
step
    >>Kill mobs and loot them for Revenge of Gann
	.goto The Barrens,49.4,84.3
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
step
    #sticky
    #label Washte
    #completewith wpscout1
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #label wpscout1
    .isQuestComplete 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann on the road again
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 846 >> Turn in Revenge of Gann
    .unitscan Gann Stonespire
step
    .isQuestTurnedIn 846
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 849 >> Accept Revenge of Gann
step
    .isOnQuest 849
    >>Right click the Flying Machine. This has a  large range, you can do it from below far away instead of going to the top of the platform.
    .goto The Barrens,46.97,85.63
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
    #sticky
    #label Washte
    #completewith wpscout2
    >>Search for Washte Pawne (Red Wind Serpent) around the area. He drops a quest. Skip the quest If you can't find him
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .unitscan Washte Pawne
step
    #label wpscout2
    .isOnQuest 849
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    .goto The Barrens,46.0,81.2,50,0
    .goto The Barrens,46.0,76.2,50,0
    >> Find Gann once more
.target Gann Stonespire
>>Talk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 849 >> Turn in Revenge of Gann
    .unitscan Gann Stonespire
step
    .goto The Barrens,44.6,59.2
    >> Talk to Mangletooth in the cage
    .isOnQuest 879
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 879 >> Turn in Betrayal from Within
.target Mangletooth
    .accept 906 >> Accept Betrayal from Within
step
    .goto The Barrens,45.102,57.683
    .isOnQuest 893
>>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 893 >> Turn in Weapons of Choice
.target Tatternack Steelforge
    .accept 1153 >> Accept A New Ore Sample
step
    .isOnQuest 885
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 885 >> Turn in Washte Pawne
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >> Turn in Owatanka
step
    .isOnQuest 883
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >> Turn in Lakota'mani
step
    .goto The Barrens,51.5,30.3
    .fly Crossroads >> Fly to Crossroads
step
    .isOnQuest 906
    .goto The Barrens,51.5,30.9
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 906 >> Turn in Betrayal from Within
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 25-26 Stonetalon
#next 26-30 Ashenvale / Thousand Needles
#version 1
#group RestedXP Horde 1-30
#xprate <1.5

step
    .goto The Barrens,51.5,30.3
    .fly Sun Rock >> Fly to Stonetalon Mountains
step
    .goto Stonetalon Mountains,45.90,60.40
.target Braelyn Firehand
>>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .accept 1087 >> Accept Cenarius' Legacy
step
    .goto Stonetalon Mountains,47.30,64.30
.target Tsunaman
>>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6393 >> Accept Elemental War
step
    .goto Stonetalon Mountains,47.40,58.40
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .accept 6301 >> Accept Cycle of Rebirth
step
    .goto Stonetalon Mountains,47.30,61.10
.target Maggran Earthbinder
>>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .accept 5881 >> Accept Calling in the Reserves
    .accept 6282 >> Accept Harpies Threaten
step
    .goto Stonetalon Mountains,59.00,62.60
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1096 >> Accept Gerenzo Wrenchwhistle
step
	.isOnQuest 1086
    .goto Stonetalon Mountains,66.40,45.40
     >> Place the Toxic Fogger
    .complete 1086,1
step
    .goto Stonetalon Mountains,64.48,40.25
    >>Climb up the mountain to find Gerenzo. Clear the mobs around him and kill him.
    .complete 1096,1
    .unitscan Gerenzo Wrenchwhistle
step
    .goto Stonetalon Mountains,62.6,40.2
	.vendor >> Go and buy gear upgrades from the vendor at the end of platform. He has the chance of having gear upgrades for every class.
step
    .goto Stonetalon Mountains,58.98,62.59
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1096 >> Turn in Gerenzo Wrenchwhistle
step
    .goto Stonetalon Mountains,50.64,36.60,0,0
     >> Loot Gaea Seeds as you pass through the lake and around the lake.
    .complete 6301,1
step
    .goto Stonetalon Mountains,35.84,13.09
	>>Kill the Dryads and Night Elves in the area
    .complete 1087,1
    .complete 1087,2
    .complete 1087,3
step
	#completewith next
    .goto Stonetalon Mountains,32.60,67.40,0
     >> Kill Fire Elementals. Loot them for Increndrite
    .complete 6393,1
step
    .goto Stonetalon Mountains,31.10,61.27
	>>Kill Harpies. Be careful as the Slayers execute you when you're below 20% health, Ambushers shock for a LOT of instant damage on low cooldown, and Roguefeathers thrash (multiple attacks at once every 10 seconds or so)
    .complete 6282,1
    .complete 6282,2
    .complete 6282,3
    .complete 6282,4
step
	#completewith next
    .goto Stonetalon Mountains,38.7,68.6,50 >> Enter Sun Rock Retreat from the West side
step
    .goto Stonetalon Mountains,46.00,60.50
     >> Head to Sun Rock Retreat
>>Talk to |cRXP_FRIENDLY_Braelyn Firehand|r
    .turnin 1087 >> Turn in Cenarius' Legacy
.target Braelyn Firehand
    .accept 1088 >> Accept Ordanus
step
    .goto Stonetalon Mountains,47.10,61.10
>>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6282 >> Turn in Harpies Threaten
.target Maggran Earthbinder
    .accept 6283 >> Accept Bloodfury Bloodline
step
    .goto Stonetalon Mountains,47.40,58.50
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6301 >> Turn in Cycle of Rebirth
.target Tammra Windfield
    .accept 6381 >> Accept New Life
step
	#completewith next
    .goto Stonetalon Mountains,32.60,67.40,0
     >> Kill Fire Elementals. Loot them for Increndrite
    .complete 6393,1
step
	#sticky
	#completewith Ripper
    .goto Stonetalon Mountains,31.10,61.27,0
	>> Plant the trees in the dirt mounds of The Charred Vale
	.complete 6381,1
step
    .goto Stonetalon Mountains,32.60,67.40
     >> Kill Fire Elementals. Loot them for Increndrite
    .complete 6393,1
step
    #label Ripper
    .goto Stonetalon Mountains,30.75,61.91
    .complete 6283,1
    .unitscan Bloodfury Ripper
step
    .goto Stonetalon Mountains,31.10,61.27
	>> Plant the trees in the dirt mounds of The Charred Vale
	.complete 6381,1
step
    .goto Stonetalon Mountains,38.7,68.6,50,0
    .goto Stonetalon Mountains,47.20,64.40
     >> Head back to Sun Rock Retreat
.target Tsunaman
>>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .turnin 6393 >> Turn in Elemental War
step
    .isQuestComplete 6283
    .goto Stonetalon Mountains,47.19,61.15
.target Maggran Earthbinder
>>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6283 >> Turn in Bloodfury Bloodline
step
    .goto Stonetalon Mountains,47.46,58.37
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6381 >> Turn in New Life
]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 26-30 Ashenvale / Thousand Needles
#version 1
#group RestedXP Horde 1-30
#next RestedXP Horde 30-45\30-33 Hillsbrad / Arathi / Shimmering Flats
#xprate <1.5

step
    .goto Stonetalon Mountains,45.2,69.8,-1
    .goto The Barrens,51.6,30.4,-1
	.fly Orgrimmar >>Fly to Orgrimmar
step << Paladin
    #completewith next
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Shaman
    #completewith next
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.046,18.526
.trainer >> Go and train your class spells
step << Hunter
    #completewith next
    .goto Orgrimmar,66.3,14.8
.trainer >> Go and train your pet spells
step << Warrior
    #completewith next
    .goto Orgrimmar,79.7,31.4
.trainer >> Go and train your class spells
step << Rogue
    #completewith next
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << Warlock
    #completewith next
    .goto Orgrimmar,47.983,45.933
.trainer >> Go and train your class spells
step << Mage
    #completewith next
    .goto Orgrimmar,38.8,85.6
.trainer >> Go and train your class spells
step << Priest
    #completewith next
    .goto Orgrimmar,35.6,87.8
.trainer >> Go and train your class spells
step << Orc !Warlock wotlk
	.money <5.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock wotlk
	.money <5.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step
    #completewith fp12
    .goto Orgrimmar,16.2,62.2,30  >> Exit Orgrimmar through the west exit
step
    #completewith fp12
    .goto Ashenvale,94.7,76.8,30  >> Run along the side of the river
step
    #completewith fp12
    .goto Ashenvale,90.8,66.9,30  >> Run up the ramp here
step
    #completewith fp12
    .goto Ashenvale,89.2,68.4,30  >> Go up the ramp. Be careful of the level 28/29 spider mobs
step
    #completewith fp12
    .goto Ashenvale,88.5,64.9,40  >> Run to the Lumber Camp
step
    #completewith fp12
    .goto Ashenvale,81.7,62.9,80  >> Run through the camp to here
step
    #label fp12
    .goto Ashenvale,73.2,61.6
    .fp Splintertree >> Get the Splintertree Post flight path
step
.target Pixel
>>Talk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >> Accept Satyr Horns
    .goto Ashenvale,73.1,61.5
.target Senani Thunderheart
>>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6383 >> Turn in The Ashenvale Hunt
    .goto Ashenvale,73.8,61.5
step << Rogue
    #completewith next
    .isOnQuest 216
    .goto Ashenvale,74.0,60.6
	.home >> Set your Hearthstone to Splintertree Post
step
    .goto Ashenvale,73.6,60.0
.target Mastok Wrilehiss
>>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 25 >> Accept Stonetalon Standstill
step << BloodElf
    .goto Ashenvale,71.3,67.8
.target Advisor Sunsworn
>>Talk to |cRXP_FRIENDLY_Advisor Sunsworn|r
    .turnin 9428 >> Turn in Report to Splintertree Post
    .isOnQuest 9428
step
    .goto Ashenvale,71.105,68.118
.target Kuray'bin
>>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >> Accept Ashenvale Outrunners
step
 >>Kill Ashenvale Outrunners that are stealthed around the area.
.goto Ashenvale,72.5,72.5,40,0
    .goto Ashenvale,76.3,71.1,40,0
    .goto Ashenvale,76.3,67.3,40,0
    .goto Ashenvale,72.5,72.5
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .unitscan Ashenvale Outrunner
step
    .goto Ashenvale,68.3,75.3
.target Torek
>>Talk to |cRXP_FRIENDLY_Torek|r
    .accept 6544 >> Accept Torek's Assault
    >> If he is not there he can take a few minutes to respawn
step
    >>Follow Torek. This quest can get a bit hard. It will spawn a wave enemies inside the building. You may need to skip.
    >> Run as far into the building as you can. Have Torek tank some of the mobs. Abandon this quest if you die.
    * Use your voidwalker here << Warlock
    .goto Ashenvale,64.6,75.3
    .complete 6544,1 --Take Silverwing Outpost.
step
    #sticky
    #completewith next
	.goto Ashenvale,72.3,49.8,50 >>Run along the side of the river to here
step
    >>Kill Satyrs in the area. Loot them for their Horns
.goto Ashenvale,68.2,54.0
    .complete 6441,1 --Collect Satyr Horns (x16)
step
    #xprate <1.1
    .goto Ashenvale,62.07,51.32
	>> Ordanus can be quite hard, your should try to burst him, loot him and then jump down from the building.
    .complete 1088,1 --Ordanus' Head (1)
step
    #sticky
    #completewith next
    >>Kill Laughing Sisters until they drop an Etched Phial
    .collect 5867 --Collect Etched Phial (x1)
step
    .use 16304 >>Look for Shadumbra (a panther) and loot her for Shadumbra's Head, then accept the quest from clicking it.
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5,40,0
	.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
step
    >>Kill Laughing Sisters until they drop Etched Phial
    .goto Ashenvale,61.3,51.9
    .collect 5867 --Collect Etched Phial (x1)
step << Rogue
    .goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
step << Rogue
    #completewith next
    .goto Ashenvale,12.3,33.8
    .fp Zoram >> Get the Zoram'gar Outpost flight path
step << Rogue
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >> Accept Between a Rock and a Thistlefur
step << Rogue
    >> Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
.target Mitsuwa
>>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >> Accept Troll Charm
step << Rogue
    .isQuestComplete 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6562 >> Turn in Trouble in the Deeps
step << Rogue
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
.target Muglash
>>Talk to |cRXP_FRIENDLY_Muglash|r
    .accept 6641 >> Accept Vorsha the Lasher
step << Rogue
    >>Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
    #requires Phial
	.goto Ashenvale,38.5,36.1,50 >>Run to Thistlefur Village
    .isOnQuest 216
step
    #sticky
    #completewith next
    >>Kill some of the Furbolgs en route to the cave
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step
    .goto Ashenvale,38.4,30.6,30 >>Run into Thistlefur Hold
    .isOnQuest 216
step
    >>Loot the tiny chests inside the tunnel.
    .complete 6462,1 --Collect Troll Charm (x8)
    .isOnQuest 6462
step
    >>This starts an escort. Start it when ready.
    .goto Ashenvale,41.5,34.5
.target Ruul Snowhoof
>>Talk to |cRXP_FRIENDLY_Ruul Snowhoof|r
    .accept 6482 >> Accept Freedom to Ruul
    .isOnQuest 216
step
    #completewith escortfi
    >>Kill quest mobs while you are escorting Ruul
    .complete 216,2 --Kill Thistlefur Shaman (x8)
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step
    #label escortfi
    .goto Ashenvale,38.5,36.4
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
    .isOnQuest 6482
step
    >>Finish killing the Furbolgs
    .complete 216,2 --Kill Thistlefur Shaman (x8)
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .isOnQuest 216
step << Shaman
    .use 7767 >>Fill the Waterskin
    .goto Ashenvale,33.5,67.5
    .complete 1534,1 --Filled Blue Waterskin (1)
step
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
    .goto Ashenvale,44.3,68.6
    .use 16303 >>Look for Ursangous (Bear). He patrols clockwise. Kill and loot him for Ursangous's Paw then click it to accept the quest.
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
	.unitscan Ursangous
step
    #sticky
    #label Tideress
    .use 16408 >>Kill Tideress who is located around the middle of the lake. Loot her for a Befouled Water Globe, then click it to accept the quest
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
	.unitscan Tideress
step
    #sticky
    #completewith next
    >>Kill Water Elementals throughout the lake
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    >>Run under the Gazebo in the middle of the lake
	.goto Ashenvale,48.93,69.56
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step
    >>Kill Water Elementals throughout the lake
	.goto Ashenvale,48.9,69.6
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    #requires Tideress
	.use 5867 >>Use the Etched Phial from earlier at the moonwell
	.goto Ashenvale,60.2,72.9
    .complete 1195,1 --Collect Filled Etched Phial (x1)
step
    #xprate <1.5
    .goto Ashenvale,71.2,68.1
.target Kuray'bin
>>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Turn in Ashenvale Outrunners
step
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,75.3,72.0,0
	.use 16305 >>Look for Sharptalon (big bird). He Patrols clockwise. Kill and loot him for Sharptalon's Claw. Accept the quest from it. Solo him down to about 60% health then kite him to the undead camp to kill him.
    .collect 16305,1,2 --Collect Sharptalon's Claw
    .accept 2 >> Accept Sharptalon's Claw
	.unitscan Sharptalon
step
    .isQuestComplete 6544
    >>Go back to town
.target Ertog Ragetusk
>>Talk to |cRXP_FRIENDLY_Ertog Ragetusk|r
    .turnin 6544 >> Turn in Torek's Assault
    .goto Ashenvale,73.1,62.5
step
    .goto Ashenvale,73.8,61.5
.target Senani Thunderheart
>>Talk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >> Turn in Sharptalon's Claw
    .turnin 24 >> Turn in Shadumbra's Head
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 247 >> Turn in The Hunt Completed
step
    .goto Ashenvale,73.7,60.0
.target Mastok Wrilehiss
>>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >> Turn in The Befouled Element
step
    .goto Ashenvale,73.7,60.0
    .abandon 1918 >> Abandon The Befouled Element
    .destroy 16408 >> Destroy Befouled Water Globe
step
    #xprate <1.5
    .goto Ashenvale,73.7,60.0
    .isOnQuest 216
.target Mastok Wrilehiss
>>Talk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 824 >> Accept Je'neu of the Earthen Ring
step
    >> Head into the inn
    .goto Ashenvale,74.114,60.917
.target Yama Snowhoof
>>Talk to |cRXP_FRIENDLY_Yama Snowhoof|r
    .turnin 6482 >> Turn in Freedom to Ruul
    .isOnQuest 6482
step
    #xprate >1.499
    .goto Ashenvale,71.2,68.1
.target Kuray'bin
>>Talk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Turn in Ashenvale Outrunners
step
    .goto Ashenvale,73.1,61.5
.target Pixel
>>Talk to |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >> Turn in Satyr Horns
step
    #xprate <1.5
	#completewith next
    .isOnQuest 216
    .goto Ashenvale,73.2,61.5
    .fly Zoram'gar >> Fly to Zoram'gar Outpost
step
    #xprate <1.5
    .goto Ashenvale,11.897,34.535
.target Karang Amakkar
>>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >> Turn in Between a Rock and a Thistlefur
    .isOnQuest 216
step
    #xprate <1.5
    .goto Ashenvale,11.7,34.8
.target Mitsuwa
>>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >> Turn in Troll Charm
    .isOnQuest 6462
step
    #xprate <1.5
    .isQuestTurnedIn 6462
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Turn in Je'neu of the Earthen Ring
step << Rogue
    #label zoramend
    #requires wrathtailhead
    >>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>Talk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >> Turn in Vorsha the Lasher
    .isQuestComplete 6641
step << Rogue
    .goto Ashenvale,11.59,34.27
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6921 >>Accept Amongst the Ruins
    .accept 6563 >>Accept The Essence of Aku'Mai
step << Rogue
    .goto Ashenvale,14.0,15.0,100 >> Go to the entrance of Blackfathom Deeps
step << Rogue
    .goto Ashenvale,13.15,12.96
	>> Kill Blackfathom Tide Priestesses until Damp Note drops. Start the quest
	.collect 16790,1,6564
    .accept 6564 >> Accept Allegiance to the Old Gods
step << Rogue
    .goto Ashenvale,17.04,12.29
	>> Stealth towards the dungeon while looting the 20 Sapphires on the walls
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step << Rogue
	#completewith next
	+To solo this quest you need to play correctly in 2 ways. First of all you need to not die to breath, that means before you aggro the boss you should have full breath. The second thing to be aware of is that you need to kick EVERY frostbolt you can and use evasion after a kick. Most of his damage will be from frostbolts. Remember you can vanish and try again 5 mins later, aslong as you don't die to breath.
	.link https://youtu.be/ehXV0stmDrM?t=202 >> CLICK HERE for a guide on this section
step << Rogue
	>> Stealth all the way to the Moonshine Ruins, then swim under the Bridge and prepare for the boss (Use all buffs you have)
	>> Loot the Fathom Core, this spawns the boss.
	>> Loot the Globe from Baron Aquanis. Accept the quest
	.collect 16762,1,6922
	.accept 6922 >> Accept Baron Aquanis
step << Rogue
    .hs >> Hearth to Splintertree Post
	>> Buy food/water if needed
step << Druid
#completewith next
    .cast 18960 >> Use the spell Teleport to Moonglade
    .goto Moonglade,52.526,40.565
	.trainer >> Go and train your class spells
step << !Rogue
    #completewith next
    .hs >> Use your hearthstone to Thunder Bluff
step << Rogue
    .goto Ashenvale,73.2,61.6
    .fly Orgrimmar >> Fly to Orgrimmar
step << Rogue
    #completewith flytimebabyyy
    .goto Orgrimmar,44.0,54.6
	.trainer >> Go and train your class spells
step << Rogue
    #label flytimebabyyy
	.goto Orgrimmar,45.120,63.889,-1
    .fly Thunder Bluff >> Fly to Thunder Bluff
step
	.goto Thunder Bluff,55.2,51.5
>>Talk to |cRXP_FRIENDLY_Zangen Stonehoof|r
    .turnin 1195 >> Turn in The Sacred Flame
.target Zangen Stonehoof
    .accept 1196 >> Accept The Sacred Flame
step << Warrior tbc/Paladin/Shaman
    .goto Thunder Bluff,54.0,57.3
    .vendor >> Buy a Merciless Axe if you didn't get one in Hillsbrad
    .collect 12249,1
step << Hunter
    .goto Thunder Bluff,46.9,45.7
    .vendor >> Go and buy a Sturdy Recurve if it's in the shop.
    .collect 11306,1
step << Druid
    .goto Thunder Bluff,77.0,29.9
	.trainer >> Go and train your class spells
.target Turak Runetotem
>>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
	.turnin 31 >>Turn in Aquatic Form << tbc
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,59.1,86.9
	.trainer >> Go and train your class spells
step << Hunter
	#completewith hearth
    .goto Thunder Bluff,54.1,83.9
	.trainer >> Go and train your pet spells
step << Warrior
	#completewith hearth
    .goto Thunder Bluff,57.6,85.5
	.trainer >> Go and train your class spells
step << Shaman
	#completewith hearth
    .goto Thunder Bluff,22.813,20.893
	.trainer >> Go and train your class spells
step
    #xprate <1.1
	.isOnQuest 1086
    .goto Thunder Bluff,22.80,20.80
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1086 >> Turn in The Flying Machine Airport
step << Priest
	#completewith hearth
    .goto Thunder Bluff,24.6,22.6
	.trainer >> Go and train your class spells
step << Mage
	#completewith hearth
    .goto Thunder Bluff,25.2,20.9
	.trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.0,81.0
.target Melor Stonehoof
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1131 >> Accept Steelsnap
step << Rogue
    #label hearth
	#completewith next
	.goto Thunder Bluff,45.814,64.711
	.home >> Set your Hearthstone to Thunder Bluff
step
    >> Head up the totem tower
    .goto Thunder Bluff,46.8,50.1
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << Shaman
    .goto The Barrens,43.4,77.4
>>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1534 >>Turn in Call of Water
.target Brine
    .accept 220 >>Accept Call of Water
step
	.isOnQuest 5881
    .goto The Barrens,44.00,92.00
.target Grish Longrunner
>>Talk to |cRXP_FRIENDLY_Grish Longrunner|r
    .turnin 5881 >> Turn in Calling in the Reserves
step
    .goto Thousand Needles,32.2,22.2
    >> Head south towards Thousand Needles
.target Brave Moonhorn
>>Talk to |cRXP_FRIENDLY_Brave Moonhorn|r
    .accept 4542 >> Accept Message to Freewind Post
step
    #sticky
    #completewith next
    .use 12564 >>Keep an eye out for the Galak Messenger. If you see it, kill him, loot the Note, and accept the quest. You can look for him later too if you can't find him.
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .unitscan Galak Messenger
step
    #sticky
    #completewith next
    >>Take the lift down, then run to Freewind Post
    .goto Thousand Needles,47.1,48.3,60
step
    >> Accept quests around Freewind Post
.target Magistrix Elosai
>>Talk to |cRXP_FRIENDLY_Magistrix Elosai|r
    .accept 9431 >> Accept A Different Approach
    .goto Thousand Needles,46.1,50.5
    .accept 5147 >> Accept Wanted - Arnak Grimtotem
    .goto Thousand Needles,45.9,50.9
step
    .goto Thousand Needles,46.1,51.7
    .isOnQuest 1196
>>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 1196 >> Turn in The Sacred Flame
.target Rau Cliffrunner
    .accept 1197 >> Accept The Sacred Flame
step
    .goto Thousand Needles,45.6,50.8
>>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 4542 >> Turn in Message to Freewind Post
.target Cliffwatcher Longhorn
    .accept 4841 >> Accept Pacify the Centaur
step
.target Elu
>>Talk to |cRXP_FRIENDLY_Elu|r
    .accept 4767 >> Accept Wind Rider
    .goto Thousand Needles,44.8,49.1
.target Hagar Lightninghoof
>>Talk to |cRXP_FRIENDLY_Hagar Lightninghoof|r
    .accept 4821 >> Accept Alien Egg
    .goto Thousand Needles,44.7,50.2
step << Hunter
#completewith next
    .goto Thousand Needles,44.9,50.7
    .vendor >> Go buy Dense Shortbow if it's in the shop.
    .collect 11305,1
step
    .goto Thousand Needles,45.1,49.2
    .fp Freewind Post >> Get the Freewind Post flight path
step
    #sticky
    #completewith next
    .isOnQuest 1197
    >>Go into the Galak cave. Run along the left side. Kill centaurs en route
    .goto Thousand Needles,44.0,37.4,40
step
    #sticky
    #completewith next
    >>Kill Centaurs in the area
    .goto Thousand Needles,41.3,37.7,0,0
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    >>Loot the Brazier at the end of the cave system. Take a left once you are at the crossroads of the cave.
    .goto Thousand Needles,42.0,31.5
    .complete 1197,1 --Collect Cloven Hoof (x1)
step
    >>Finish killing Centaurs in the area
    .goto Thousand Needles,41.3,37.7
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    #sticky
    #completewith next
    >>Run up the path here, then go in the cave
    .goto Thousand Needles,54.6,44.3,30
step
    .goto Thousand Needles,53.9,41.5
.target Dorn Plainstalker
>>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .accept 1149 >> Accept Test of Faith
step
    .isOnQuest 1149
    >>Jump off the end of the wooden platform, you don't die.
    .goto Thousand Needles,26.4,32.6,15
step
    .goto Thousand Needles,53.9,41.7
>>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1149 >> Turn in Test of Faith
.target Dorn Plainstalker
    .accept 1150 >> Accept Test of Endurance
step
	#sticky
	#label Kobolds
    .goto Thousand Needles,65.74,49.89,90,0
    .goto Thousand Needles,67.87,58.33,90,0
    .goto Thousand Needles,66.03,62.14,90,0
    .goto Thousand Needles,58.95,57.84,90,0
    .goto Thousand Needles,65.74,49.89
     >> Kill all Kobolds you encounter. Loot them for the Ore Sample
    .complete 1153,1
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    >>Kill Thundering Boulderkins. Loot them for Purifying Earth
    .goto Thousand Needles,65.2,62.4,0,0
    .complete 9431,1 --Collect Purifying Earth (x2)
step
    #requires Kobolds
    >>Look for the Alien Egg. It's a lootable object in one of the camps. It looks like spider eggs.
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1,20,0
    .goto Thousand Needles,56.3,50.4,20,0
    .goto Thousand Needles,52.4,55.2,20,0
    .goto Thousand Needles,37.7,56.1
    .complete 4821,1 --Collect Alien Egg (x1)
step
    >>Go back to Freewind Post
    .goto Thousand Needles,45.6,50.8
>>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 4841 >> Turn in Pacify the Centaur
.target Cliffwatcher Longhorn
    .accept 5064 >> Accept Grimtotem Spying
step
    .goto Thousand Needles,46.1,51.7
.target Rau Cliffrunner
>>Talk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 1197 >> Turn in The Sacred Flame
step
    .goto Thousand Needles,44.7,50.3
>>Talk to |cRXP_FRIENDLY_Hagar Lightninghoof|r
    .turnin 4821 >> Turn in Alien Egg
.target Hagar Lightninghoof
    .accept 4865 >> Accept Serpent Wild
step
    #label exitfreewind33
    .isOnQuest 1150
    .goto Thousand Needles,27.7,50.0,20 >> Make your way down from Freewind Point then run up the path here
step
    .isOnQuest 1150
    .goto Thousand Needles,27.3,51.2,20 >>Enter the cave
    >> Keep in mind the harpies here can do an aoe silence << Priest/Warlock/Druid/Paladin/Mage/Shaman
step
    >>Go to the end of the cave, and open the Crate. Kill Grenka and loot her
    .goto Thousand Needles,25.9,54.6
    .complete 1150,1 --Collect Grenka's Claw (x1)
step
    .isOnQuest 4767
    >>Exit the cave then run up the path here
    .goto Thousand Needles,13.9,31.7,25
step
    #sticky
    #label Eggs
    #completewith Paoka
    >>Loot the eggs on the ground in the area. Loot any you see
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    .isOnQuest 4767
    .goto Thousand Needles,13.2,39.7,20 >>Run up the path here
step
        >>This starts an Escort. Start it when ready. Try to have 5-6 eggs before starting so you can finish on the way out.
    .goto Thousand Needles,17.8,40.6
.target Pao'ka Swiftmountain
>>Talk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 4770 >> Accept Homeward Bound
step
    #label Paoka
    >>Escort Pao'ka down the mountain. 3 wyvern will spawn when he reaches the middle of the area.
    .goto Thousand Needles,14.6,32.7
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    .goto Thousand Needles,10.8,34.7
    >>Go back and loot the rest of the Wyvern eggs
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
.goto Thousand Needles,21.5,32.3
>>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 4865 >> Turn in Serpent Wild
.target Motega Firemane
    .accept 5062 >> Accept Sacred Fire
>>Talk to |cRXP_FRIENDLY_Wizlo Bearingshiner|r
    .turnin 9431 >> Turn in A Different Approach
.target Wizlo Bearingshiner
    .accept 5151 >> Accept Hypercapacitor Gizmo
    .accept 9433 >> A Dip in the Moonwell
    .turnin 4770 >> Turn in Homeward Bound
step
    #sticky
    #completewith steelsnap
 >>Keep an eye out for Steelsnap. He patrols around the zone.
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
#sticky
#completewith messenger
.use 12564 >>Find the Galak Messenger that patrols the zone. Kill him and loot his note.
    .collect 12564,1,4881 --Collect Assassination Note (x1)
.accept 4881 >> Accept Assassination Plot
step
    #label steelsnap
    .use 23675 >>Use the Robotron Control Unit hiding in the bushes ontop of the ledge.
    >> Once you're in the robot walk over to the moonwell and collect the water using the pet action bar button.
    * Note: the quest arrow won't move when controlling the robot. Click the buff off once you're done.
    .goto Thousand Needles,12.0,18.8,15,0
    .goto Thousand Needles,10.7,17.6,15,0
    .goto Thousand Needles,9.5,18.7,10,0
    .goto Feralas,89.6,46.3
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
step
    #xprate <1.5
    .goto Thousand Needles,18.7,22.2
    .xp 28+25000 >> Grind to 25000+/33900xp
step
    #label messenger
>>Search for Steelsnap (Hyena). He patrols counter-clockwise
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,17.1,18.4,40,0
	.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5
	.complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,21.5,32.5
>>Talk to |cRXP_FRIENDLY_Wizlo Bearingshiner|r
    .turnin 9433 >> Turn in A Dip in the Moonwell
.target Wizlo Bearingshiner
    .accept 9434 >> Accept Testing the Tonic
step
.use 12564 >>Search for the Galak Messenger. He starts at a camp, goes on the road, then goes to the other camp
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6
    .collect 12564,1,4881 --Collect Assassination Note (x1)
    .accept 4881 >> Accept Assassination Plot
	.unitscan Galak Messenger
step
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4
    >>Go back and forth in the pool, collecting yellow plants near the edges of the water as well as underwater.
    >>The elementals are immune to frost damage and highly resistant to Fire. Try your best to avoid them << Mage
    .complete 5062,1 --Collect Incendia Agave (x10)
step
	#completewith next
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
step << Druid
	#completewith next
    .goto Thunder Bluff,77.0,29.9
    .trainer >> Go and train your class spells
step << Hunter
	#completewith next
    .goto Thunder Bluff,59.1,86.9
    .trainer >> Go and train your class spells
step << Hunter
	#completewith next
    .goto Thunder Bluff,54.1,83.9
    .trainer >> Go and train your pet spells
step << Warrior
	#completewith next
    .goto Thunder Bluff,57.6,85.5
    .trainer >> Go and train your class spells
step << Shaman
	#completewith next
    .goto Thunder Bluff,22.813,20.893
    .trainer >> Go and train your class spells
step << Priest
	#completewith next
    .goto Thunder Bluff,24.6,22.6
    .trainer >> Go and train your class spells
step << Mage
	#completewith next
    .goto Thunder Bluff,25.2,20.9
    .trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.4,80.8
.target Melor Stonehoof
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1131 >> Turn in Steelsnap
step
    .goto Thunder Bluff,60.8,81.5
.target Melor Stonehoof
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1136 >> Accept Frostmaw
step
    .goto Thunder Bluff,69.851,30.910
.target Magatha Grimtotem
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 5062 >> Turn in Sacred Fire
step
    .goto Thunder Bluff,70.1,30.9
.target Magatha Grimtotem
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .accept 5088 >> Accept Arikara
step << Tauren wotlk
    .money <5.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step << Tauren tbc
    #level 30
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Go to Bloodhoof Village. Train riding and buy your mount
step
	#completewith next
    .goto Thunder Bluff,46.9,49.4
    .isOnQuest 879
    .fly Camp Taurajo >> Fly to Camp Taurajo
step
    .goto The Barrens,45.10,57.70
.target Tatternack Steelforge
>>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 1153 >> Turn in A New Ore Sample
step
    #completewith next
    .goto The Barrens,44.4,59.0
    .fly Freewind Post >> Fly to Freewind Post
step
    #label flyskip
.target Elu
>>Talk to |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >> Turn in Wind Rider
    .goto Thousand Needles,44.8,49.0
.target Magistrix Elosai
>>Talk to |cRXP_FRIENDLY_Magistrix Elosai|r
    .turnin 9434 >> Turn in Testing the Tonic
    .goto Thousand Needles,46.2,50.5
step << !Warrior
	#completewith next
    .goto Thousand Needles,46.1,51.5
    .home >> Set your Hearthstone to Freewind Post
step
    #sticky
    #completewith OreSample
    >>Kill Kobolds you see whilst doing other quests. Loot them for an Unrefined Ore Sample
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    .goto Thousand Needles,54.0,41.4
    >> Head to the northeastern cave
>>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1150 >> Turn in Test of Endurance
.target Dorn Plainstalker
    .accept 1151 >> Accept Test of Strength
step
    >>Kill Rok'Alim The Pounder (Rock Elemental). Loot him for his Fragments. He patrols a large circle around western Thousand Needles.
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .goto Thousand Needles,33.2,53.5,40,0
    .goto Thousand Needles,29.3,33.6,40,0
    .goto Thousand Needles,27.1,28.7,40,0
    .goto Thousand Needles,22.5,31.3,40,0
    .goto Thousand Needles,17.5,27.0,40,0
    .goto Thousand Needles,12.8,20.9,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,34.3,37.5,40,0
    .unitscan Rok'Alim the Pounder
    .complete 1151,1 --Collect Fragments of Rok'Alim (x1)
step
	.goto Thousand Needles,31.2,36.9,30 >>Run up the path here
    .isOnQuest 5064
step
>>Climb up the mountain and cross the bridges to find the notes. Loot the chests
    .goto Thousand Needles,32.0,32.6
    .complete 5064,1 --Collect Secret Note #1 (x1)
step
    .goto Thousand Needles,33.9,39.9
    .complete 5064,2 --Collect Secret Note #2 (x1)
step
    .goto Thousand Needles,39.3,41.6
    .complete 5064,3 --Collect Secret Note #3 (x1)
step
    .use 12785 >>Clear the mobs around the bonfire, then light it, then kill Arikara. Loot her
    .goto Thousand Needles,37.9,35.3
    .complete 5088,1 --Collect Arikara Serpent Skin (x1)
    .complete 5088,2 --Light the Sacred Fire of Life
step
    >>Kill Arnak Grimtotem. Loot him for his Hoof
.goto Thousand Needles,38.6,27.4
    .complete 5147,1 --Collect Arnak's Hoof (x1)
	.unitscan Arnak Grimtotem
step
    .goto Thousand Needles,38.1,26.6
.target Lakota Windsong
>>Talk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 4904 >> Accept Free at Last
step
    >>Follow Lakota and protect her through the whole escort. Mobs will spawn periodically on the platforms.
    .goto Thousand Needles,30.7,37.1
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle.
step
>>Open the panther cage and kill it. Make sure to have your cooldowns/potions available
    .goto Thousand Needles,23.3,23.3
    .complete 5151,1 --Collect Hypercapacitor Gizmo (x1)
step
    .isOnQuest 4881
	>>Escort will start when you accept next part of the quest.
	.goto Thousand Needles,21.3,32.0
.target Kanati Greycloud
>>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
	.turnin 4881 >> Turn in Assassination Plot
step
    .isQuestTurnedIn 4881
	>>Escort will start when you accept next part of the quest.
	.goto Thousand Needles,21.3,32.0
.target Kanati Greycloud
>>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
	.accept 4966 >> Accept Protect Kanati Greycloud
step
    .isOnQuest 4966
	>>3 mobs will spawn. Let Kanati get aggro, then simply kill them
	.goto Thousand Needles,21.4,31.8
    .complete 4966,1 --Protect Kanati Greycloud
step
    .isQuestComplete 4966
	.goto Thousand Needles,21.4,31.8
.target Kanati Greycloud
>>Talk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud
step
    #label OreSample
.goto Thousand Needles,21.5,32.3
.target Motega Firemane
>>Talk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 5088 >> Turn in Arikara
.target Wizlo Bearingshiner
>>Talk to |cRXP_FRIENDLY_Wizlo Bearingshiner|r
    .turnin 5151 >> Turn in Hypercapacitor Gizmo
step
    >>Kill Kobolds in the area. Loot them for an Unrefined Ore Sample
.goto Thousand Needles,9.2,21.0
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    >>Run to Feralas. We're getting the Flight Path for later
	.goto Feralas,88.9,41.2,50,0
    .goto Feralas,75.4,44.3
    .fp Mojache >> Get the Camp Mojache flight path
step
	#completewith next
    .goto Feralas,75.4,44.4
    .fly Freewind Post >> Fly to Freewind Post
step
    .goto Thousand Needles,45.7,50.8
.target Cliffwatcher Longhorn
>>Talk to |cRXP_FRIENDLY_Cliffwatcher Longhorn|r
    .turnin 5064 >> Turn in Grimtotem Spying
    .turnin 5147 >> Turn in Wanted - Arnak Grimtotem
step
    .goto Thousand Needles,46.0,51.5
.target Thalia Amberhide
>>Talk to |cRXP_FRIENDLY_Thalia Amberhide|r
    .turnin 4904 >> Turn in Free at Last
step
    .goto Thousand Needles,53.9,41.4
.target Dorn Plainstalker
>>Talk to |cRXP_FRIENDLY_Dorn Plainstalker|r
    .turnin 1151 >> Turn in Test of Strength
step
    .goto Thousand Needles,67.6,64.0
    .xp 30 >> Grind to level 30
step
    .isOnQuest 1146
    .goto Thousand Needles,67.6,64.0
>>Talk to |cRXP_FRIENDLY_Moktar Krin|r
    .turnin 1146 >> Turn in The Swarm Grows
.target Moktar Krin
    .accept 1147 >> Accept The Swarm Grows
step
    .xp <33,1
    >> Accept quests around the racetrack
.target Kravel Koalbeard
>>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
	.accept 1110 >> Accept Rocket Car Parts
    .goto Thousand Needles,77.8,77.2
.target Fizzle Brassbolts
>>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
	.accept 1104 >> Accept Salt Flat Venom
    .goto Thousand Needles,77.9,77.2
.target Wizzle Brassbolts
>>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1105 >> Accept Hardened Shells
    .goto Thousand Needles,78.1,77.1
step
    .goto Thousand Needles,77.787,77.270
.target Kravel Koalbeard
>>Talk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary Jr.
step
    .xp <33,1
.target Pozzik
>>Talk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1176 >> Accept Load Lightening
    .goto Thousand Needles,80.2,75.8
.target Trackmaster Zherin
>>Talk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .accept 1175 >> Accept A Bump in the Road
    .goto Thousand Needles,81.7,78.0
step
    .xp <33,1
	#sticky
	#completewith ShimmeringF
	>>Save the turtle meat for a quest later.
	.collect 3712,10
step
    .isOnQuest 1175
   >>Kill Gazers in the area. Also kill some Crystalhides that you see
	.goto Thousand Needles,78.4,89.1
	.complete 1175,3 --Kill Saltstone Gazer (x6)
step
	#label ShimmeringF
    .isOnQuest 1110
	>>Circle the area killing and collecting for the Shimmering Flats quests
	.complete -1110,1 --Collect Rocket Car Parts (x30)
	.complete -1104,1 --Collect Salty Scorpid Venom (x6)
	.complete -1176,1 --Collect Hollow Vulture Bone (x10)
    .complete -1105,1 --Collect Hardened Tortoise Shell (x9)
	.complete -1175,1 --Kill Saltstone Basilisk (x10)
	.complete -1175,2 --Kill Saltstone Crystalhide (x10)
step
	#sticky
	#label partsoftheswarm
    .isOnQuest 1110
	>>Grind the Silithid creatures until you get a Cracked Silithid Carapace. Click it to accept a quest.
	.collect 5877,1,1148
	.accept 1148 >> Accept Parts of the Swarm
step
    .isQuestTurnedIn 1146
    .goto Thousand Needles,67.8,85.7
	.complete -1148,1 --Collect Silithid Heart (x1)
    .complete -1148,2 --Collect Silithid Talon (x5)
    .complete -1147,3 --Kill Silithid Invader (x5)
    .complete -1147,1 --Kill Silithid Searcher (x5)
    .complete -1148,3 --Collect Intact Silithid Carapace (x3)
    .complete -1147,2 --Kill Silithid Hive Drone (x5)
step
	#requires partsoftheswarm
    .turnin -1147 >> Turn in The Swarm Grows
    .goto Thousand Needles,67.582,63.944
step
    .turnin -1110 >> Turn in Rocket Car Parts
    .goto Thousand Needles,77.8,77.2
    .turnin -1104 >> Turn in Salt Flat Venom
    .goto Thousand Needles,78.0,77.1
    .turnin -1105 >> Turn in Hardened Shells
    .goto Thousand Needles,78.1,77.1
step
    .xp <33,1
    .isQuestTurnedIn 1104
.target Wizzle Brassbolts
>>Talk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1107 >> Accept Encrusted Tail Fins
.target Fizzle Brassbolts
>>Talk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 1106 >> Accept Martek the Exiled
step
    .isOnQuest 1176
    .goto Thousand Needles,80.2,75.8
>>Talk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1176 >> Turn in Load Lightening
.target Pozzik
    .accept 1178 >> Accept Goblin Sponsorship
step
    .isOnQuest 1175
    .goto Thousand Needles,81.6,78.0
.target Trackmaster Zherin
>>Talk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .turnin 1175 >> Turn in A Bump in the Road
step
    .isOnQuest 1152
    .goto Tanaris,51.6,25.4
    .abandon 1152 >> Abandon Test of Lore
step
    .goto Tanaris,51.6,25.4
    .fp Gadgetzan >> Get the Gadgetzan flight path
step << tbc
    #completewith next
    +If you have access to gold on this server, mail yourself gold for mount training soon!
step
    .zoneskip Tanaris,1
	#completewith next
    .hs >> Hearth to Freewind Post << !Warrior
    .hs >> Hearth or fly to Thunder Bluff << Warrior
    .cooldown item,6948,>0
step << !Warrior
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << Warrior
    #completewith next
    .goto Thousand Needles,45.1,49.2,-1
    .goto Tanaris,51.6,25.4,-1
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .zoneskip Thunder Bluff
step << Warrior
    .isOnQuest 1145
	#completewith next
    .goto Thunder Bluff,57.4,87.2
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>Talk to |cRXP_FRIENDLY_Torm Ragetotem|r
-->>Talk to |cRXP_FRIENDLY_Sorek|r
-->>Talk to |cRXP_FRIENDLY_Baltus Fowler|r
-->>Talk to |cRXP_FRIENDLY_Kelv Sternhammer|r
-->>Talk to |cRXP_FRIENDLY_Wu Shen|r
-->>Talk to |cRXP_FRIENDLY_Darnath Bladesinger|r
    .accept 1718 >>Accept The Islander
    .trainer >> Go and train your class spells
step << Warrior
    .isOnQuest 1153
    .goto Thunder Bluff,47.003,49.832
    .fly Camp Taurajo >> Fly to Camp Taurajo
step << !Warrior
    .isOnQuest 1153
    .goto The Barrens,44.9,59.1
    .zone The Barrens >> Arrive in the Barrens
step
    .isOnQuest 1153
    .goto The Barrens,45.102,57.683
.target Tatternack Steelforge
>>Talk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .turnin 1153 >> Turn in A New Ore Sample
step
    #completewith swarmgrows
    .goto The Barrens,44.4,59.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Crossroads >> Fly to Crossroads
step
    #label swarmgrows
    .isQuestAvailable 1145
    .goto The Barrens,51.1,29.7
.target Korran
>>Talk to |cRXP_FRIENDLY_Korran|r
    .accept 1145 >> Accept The Swarm Grows
step << !Shaman !Warrior
    .maxlevel 32
    .goto The Barrens,52.0,29.8
    .home >>Set your Hearthstone to Crossroads
step
    .isOnQuest 1148
    .goto The Barrens,51.1,29.6
>>Talk to |cRXP_FRIENDLY_Korran|r
    .turnin 1148 >> Turn in Parts of the Swarm
.target Korran
    .accept 1184 >> Accept Parts of the Swarm
step
	#completewith next
    .goto The Barrens,51.5,30.3
    .fly Ratchet >> Fly to Ratchet
step
    .goto The Barrens,63.3,38.4
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1111 >> Turn in Wharfmaster Dizzywig
.target Wharfmaster Dizzywig
    .accept 1112 >> Accept Parts for Kravel
step << Warrior
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
>>Talk to |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 874 >>Turn in Mahren Skyseer
.target Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Warrior
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Warrior
    .isOnQuest 1718
    >>Swim to the island
    .goto The Barrens,68.6,49.2
>>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1718 >>Turn in The Islander
.target Klannoc Macleod
    .accept 1719 >>Accept The Affray
step << Warrior
    .isOnQuest 1719
    .goto The Barrens,68.6,48.7
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
step << Warrior tbc
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
>>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >>Turn in The Affray
.target Klannoc Macleod
    .accept 1791 >>Accept The Windwatcher
step << Warrior wotlk
    #xprate >1.499
    .isOnQuest 1719
    .goto The Barrens,68.6,49.2
.target Klannoc Macleod
>>Talk to |cRXP_FRIENDLY_Klannoc Macleod|r
    .turnin 1719 >>Turn in The Affray
step << Warrior
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
.target Mahren Skyseer
>>Talk to |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 873 >>Turn in Isha Awak
step << Warrior
    .abandon 1838 >>Abandon Brutal Armor
step
    .xp <33,1
    #completewith next
	+Go to the dock. Take the boat to Stranglethorn Vale
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone Stranglethorn Vale >>Arrive in Stranglethorn Vale
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label Protection
	#completewith BigStick
 .goto Stranglethorn Vale,28.3,75.5
    .vendor >> Go to the vendor and buy Staff of Protection or Big Stick if it's in the shop.
    .collect 12252,1
step << Shaman
    .xp <33,1
	.maxlevel 36
	#label BigStick
	#completewith Protection
 .goto Stranglethorn Vale,28.3,75.5
    .collect 12251,1
step
    .xp <33,1
    .goto Stranglethorn Vale,26.4,73.5
>>Talk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 1180 >> Turn in Goblin Sponsorship
.target Wharfmaster Lozgil
    .accept 1181 >> Accept Goblin Sponsorship
step
    .xp <33,1
	>> Head to the second level of buildings
    .goto Stranglethorn Vale,28.293,77.591
.target Drizzlik
>>Talk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >> Accept Supply and Demand
step
    .xp <33,1
	>> Head into the inn, this quest is on the bottom floor
    .goto Stranglethorn Vale,27.0,77.2
.target Crank Fizzlebub
>>Talk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >> Accept Singing Blue Shards
step
    .xp <33,1
	>> These quests are on the top floors of the inn
	.goto Stranglethorn Vale,27.1,77.3
.target Kebok
>>Talk to |cRXP_FRIENDLY_Kebok|r
    .accept 189 >> Accept Bloodscalp Ears
    .accept 213 >> Accept Hostile Takeover
.target Krazek
>>Talk to |cRXP_FRIENDLY_Krazek|r
    .accept 201 >> Accept Investigate the Camp
step
    .xp <33,1
    .goto Stranglethorn Vale,27.2,76.9
>>Talk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 1181 >> Turn in Goblin Sponsorship
.target Baron Revilgaz
    .accept 1182 >> Accept Goblin Sponsorship
step << Rogue
    .xp <33,1

	#completewith next
    .goto Stranglethorn Vale,26.8,77.2
	.trainer >> Go and train your class spells
step
    .xp <33,1

    .goto Stranglethorn Vale,26.9,77.0
    .fp Booty Bay >> Get the Booty Bay flight path
step
    .xp <33,1
    #completewith next
	+Go to the dock. Take the boat back to Ratchet.
   .goto The Barrens,63.7,38.6,15,0
	.goto The Barrens,63.7,38.6
step
    .xp <33,1
	.maxlevel 36
	.zone The Barrens >>Arrive in Ratchet
step
    .xp >33,1
    .goto Ashenvale,73.2,61.5,-1
    .goto The Barrens,63.1,37.1,-1
    .fly Orgrimmar >> Fly to Orgrimmar
step << Paladin
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,32.4,35.8
    .trainer >> Go and train your class spells
step << Shaman
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.6,36.0
    .trainer >> Go and train your class spells
step << Shaman
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,37.8,37.4
.target Searn Firewarder
>>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >> Accept Call of Air
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.046,18.526
    .trainer >> Go and train your class spells
step << Hunter
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,66.3,14.8
    .trainer >> Go and train your pet spells
step << Rogue
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,44.0,54.6
    .trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .accept 2996 >>Accept Seeking Strahad
    .trainer >> Train your class spells
    .target Gan'rul Bloodeye
step << Warlock
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,47.5,46.7
    .vendor >> Buy your pet books
	.collect 16368,1 --Grimoire of Lash of Pain (Rank 2): 0/1
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,49.8,47.6
.target Craven Drok
>>Talk to |cRXP_FRIENDLY_Craven Drok|r
    .accept 1431 >> Accept Alliance Relations
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,75.229,34.240
>>Talk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .turnin 1145 >> Turn in The Swarm Grows
.target Belgrom Rockmaul
    .accept 1146 >> Accept The Swarm Grows
step << Mage
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,38.8,85.6
    .trainer >> Go and train your class spells
step << Priest
    .xp >33,1
    .isOnQuest 1145
	#completewith next
    .goto Orgrimmar,35.6,87.8
    .trainer >> Go and train your class spells
step
    .xp >33,1
    .isOnQuest 1145
    .goto Orgrimmar,22.4,52.8
>>Talk to |cRXP_FRIENDLY_Keldran|r
    .turnin 1431 >> Turn in Alliance Relations
.target Keldran
    .accept 1432 >> Accept Alliance Relations
step << Orc !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Orgrimmar,63.3,12.8
	.train 149 >> Head to the Valley of Honor. Train riding and purchase your mount
step << Troll !Warlock tbc
	#sticky
	#completewith next
	.money <35.00
	.goto Durotar,55.2,75.5
	.train 533 >> Head to Sen'jin Village in Durotar Train riding and purchase your mount
step << Warlock
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fly to Ratchet
    .target Doras
    .zoneskip The Barrens
step << Warlock
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad|r
    .turnin 2996 >> Turn in Seeking Strahad
    .accept 1801 >> Accept Tome of the Cabal
    .target Strahad Farsan
step << Warlock
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .zoneskip Durotar
step << Shaman
    .isOnQuest 874
	#completewith next
    .goto Orgrimmar,45.120,63.889
    .fly Ratchet >>Fly to Ratchet
step << Shaman
    .isOnQuest 874
    .goto The Barrens,65.8,43.8
>>Talk to |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 874 >>Turn in Mahren Skyseer
.target Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Shaman
    .isOnQuest 220
    .goto The Barrens,65.8,43.8
>>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 220 >>Turn in Call of Water
.target Islen Waterseer
    .accept 63 >>Accept Call of Water
step << Shaman
    .isOnQuest 873
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2,40,0
	.goto The Barrens,65.6,47.1,40,0
    .goto The Barrens,63.3,54.2
    >>Look in the water for Isha Awak (Red Threshadon). Kill and loot it for its heart
    .complete 873,1 --Heart of Isha Awak (1)
	.unitscan Isha Awak
step << Shaman
    .isOnQuest 873
    .goto The Barrens,65.8,43.8
.target Mahren Skyseer
>>Talk to |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 873 >>Turn in Isha Awak
step << Tauren tbc
    .money <35.00
    .goto The Barrens,63.1,37.1,-1
    .goto Orgrimmar,45.120,63.889,-1
    .fly Thunder Bluff >>Fly to Thunder Bluff, we're going to train riding
step << Tauren tbc
    .money <35.00
    .goto Mulgore,47.5,58.5
    .train 713 >> Head down the lifts and then go to Bloodhoof Village. Train riding and buy your mount
step << Warrior/Shaman
	#completewith next
    .goto The Barrens,63.1,37.1,-1
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Tauren
    #completewith next
    .goto Thunder Bluff,47.003,49.832,-1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Shaman
    .isQuestAvailable 1531
    .goto Orgrimmar,37.957,37.729
.target Searn Firewarder
>>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >>Accept Call of Air
step << Warrior
	#completewith next
	.goto Orgrimmar,81.5,19.6
	.train 2567 >> Train Thrown from Hanashi
step << Warrior/Shaman
	#completewith next
    .xp <33,1
    .goto Orgrimmar,54.097,68.407
    .home >>Set your Hearthstone to Valley of Strength
step << Undead !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >> Board the zeppelin to Tirisfal Glades, we're buying our mount.
    >> If you can teleport to the Undercity skip this step << Mage
step << Undead !Warlock tbc
    .money <35.00
    .goto Tirisfal Glades,60.1,52.6
    .train 554 >> Train riding and purchase your mount
    .zoneskip Tirisfal Glades,1
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Durotar,50.8,13.7
    .zone Tirisfal Glades >> Board the zeppelin to Tirisfal Glades, we're buying our mount.
    >> If you can teleport to Undercity or Silvermoon skip this step << Mage
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Undercity,66.3,4.5,30,0
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >> Click on the Orb of Translocation to head to Silvermoon City
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .money <35.00
    .goto Eversong Woods,61.1,54.7,5,0
    .goto Eversong Woods,61.4,54.0
    .train 33388 >> Leave Silvermoon City, then train riding and purchase your mount.
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Silvermoon City,49.4,14.3
    >> Teleport to The Undercity if you can << Mage
    .zone Undercity >> Click on the Orb of Translocation to head to the Undercity
    .zoneskip Orgrimmar
step << Blood Elf !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >> Board the Zeppelin to Stranglethorn Vale
    .zoneskip Tirisfal Glades,1
step << Undead !Warlock tbc
    .goto Tirisfal Glades,61.9,59.1
    .zone Stranglethorn Vale >> Board the Zeppelin to Stranglethorn Vale
    .zoneskip Tirisfal Glades,1
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 22-25 Hillsbrad Foothills JJ
#version 1
#group RestedXP Horde 1-30
#next 25-27 Ashenvale JJ
#xprate >1.4999

step << Orc Shaman wotlk/Orc Warrior wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kildar
    .money <4.5
step << Orc Shaman wotlk/Orc Warrior wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro|r
    +|cRXP_BUY_Buy any|r |T132224:0|t[Wolf] |cRXP_BUY_that you like from him|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Timber Wolf] to learn it
    .use 1132
    .itemcount 1132,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >> Use the |T132266:0|t[Horn of the Dire Wolf] to learn it
    .use 5665
    .itemcount 5665,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Brown Wolf] to learn it
    .use 5668
    .itemcount 5668,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Black Wolf] to learn it
    .use 46099
    .itemcount 46099,1
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Timber Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 580 >> Mount your |T132224:0|t[Timber Wolf]
    .train 580,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132266:0|t[Dire Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6653 >> Mount your |T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Brown Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6654 >> Mount your |T132224:0|t[Brown Wolf]
    .train 6654,3
step << Orc Shaman wotlk/Orc Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Black Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 64658 >> Mount your |T132224:0|t[Black Wolf]
    .train 64658,3
step << Shaman/Warrior
    .goto Orgrimmar,54.10,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryshka|r
    .home >> Set your Hearthstone to Orgrimmar
    .target Innkeeper Gryshka
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>Travel toward |cRXP_FRIENDLY_Xar'Ti|r
    .money <4.5
step << Troll Shaman wotlk/Troll Warrior wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Xar'Ti
    .money <4.5
step << Troll Shaman wotlk/Troll Warrior wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zjolnir|r
    +|cRXP_BUY_Buy any|r |T132253:0|t[Raptor Whistle] |cRXP_BUY_that you like from him|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Emerald Raptor] to learn it
    .use 8588
    .itemcount 8588,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Turquoise Raptor] to learn it
    .use 8591
    .itemcount 8591,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Violet Raptor] to learn it
    .use 8592
    .itemcount 8592,1
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Emerald Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 8395 >> Mount your |T132253:0|t[Emerald Raptor]
    .train 8395,3
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Turquoise Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10796 >> Mount your |T132253:0|t[Turquoise Raptor]
    .train 10796,3
step << Troll Shaman wotlk/Troll Warrior wotlk
    #completewith TZeppelin
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Violet Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10799 >> Mount your |T132253:0|t[Violet Raptor]
    .train 10799,3
step << Shaman/Warrior
    #completewith next
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Durotar,50.61,13.27
    .zone Durotar >> Exit Orgrimmar
step << Shaman/Warrior
    #label TZeppelin
    .goto Durotar,50.61,13.27,12,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.89,14.14,-1
    .goto Durotar,56.75,15.11,-1
    >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal
    .zoneskip Silverpine Forest
step
    #completewith next
    .goto Tirisfal Glades,56.30,66.20,30,0
    .goto Silverpine Forest,66.34,5.27
    .zone Silverpine Forest >> Travel to Silverpine Forest
step
    #completewith next
    .goto Silverpine Forest,48.45,38.18,30,0
    .goto Silverpine Forest,46.19,41.28,30,0
    .goto Silverpine Forest,42.80,40.87,30 >> Travel toward |cRXP_FRIENDLY_Renferrel|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r and |cRXP_FRIENDLY_Mura|r << Warrior/Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renferrel|r << !Warrior !Shaman
    .accept 493 >> Accept Journey to Hillsbrad Foothills
    .goto Silverpine Forest,42.80,40.87
    .turnin 3301 >> Turn in Mura Runetotem << Warrior/Shaman
    .goto Silverpine Forest,42.90,41.99 << Warrior/Shaman
    .target Apothecary Renferrel
    .target Mura Runetotem << Warrior/Shaman
step << Warrior/Shaman
    .goto Silverpine Forest,44.19,42.67
    >>Click |cRXP_PICK_Yuriv's Tombstone|r on the ground
    .turnin 264 >> Turn in Until Death Do Us Part
step
    .goto Silverpine Forest,45.62,42.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fp The Sepulcher >> Get the The Sepulcher flight path
    .target Karos Razok
--VV Skip Sepulcher section and go through the islands/Dalaran bubble? 493/494 are breadcrumbs (about 3k xp) and the Sepulcher fp is not needed
step
    #completewith next
    .goto Silverpine Forest,46.33,44.30,30,0
    .goto Silverpine Forest,61.47,67.47,40,0
    .goto Silverpine Forest,67.14,79.06,40,0
    .goto Hillsbrad Foothills,20.79,47.40,40 >> Travel toward |cRXP_FRIENDLY_Lesh|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Dalaran Wizards|r en route as they cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_which will slow you down|r
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lesh|r
    .accept 494 >> Accept Time To Strike
    .target Deathstalker Lesh
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarise|r
    .fp Tarren Mill >> Get the Tarren Mill Flight Path
    .target Zarise
step << Shaman/Warrior
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, and |cRXP_FRIENDLY_Krusk|r
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, |cRXP_FRIENDLY_Duskingdawn|r, the |cRXP_FRIENDLY_Wanted Poster|r, and |cRXP_FRIENDLY_Krusk|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, and |cRXP_FRIENDLY_Krusk|r << !BloodElf
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >> Turn in Report to Tarren Mill << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step << Shaman/Warrior
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Krusk|r, and the Inn's |cRXP_FRIENDLY_Wanted Poster|r
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .accept 567 >> Accept Dangerous!
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,62.57,19.64
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Krusk
step << !Shaman !Warrior
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, |cRXP_FRIENDLY_Duskingdawn|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Krusk|r, and the Inn's |cRXP_FRIENDLY_Wanted Poster|r  << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Krusk|r, and the Inn's |cRXP_FRIENDLY_Wanted Poster|r << !BloodElf
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 494 >> Turn in Time To Strike
    .accept 527 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 9425 >> Turn in Report to Tarren Mill << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81 << BloodElf
    .accept 549 >> Accept WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.65,20.76
    .accept 498 >> Accept The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .accept 567 >> Accept Dangerous!
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,62.57,19.64
    .target Apothecary Lydon
    .target High Executor Darthalia
    .target Advisor Duskingdawn << BloodElf
    .target Krusk
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1000,498,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .isOnQuest 498
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,2000,498,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,1000,498,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .isOnQuest 498
    .xp <25,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r
    .collect 923,1,885,1 --Longsword (1)
    .target Ott
    .money <0.8307 << !Undead/!BloodElf
    .money <0.8722 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .skill riding,<75,1 << wotlk
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Durnholde1
    +Equip the |T132408:0|t[Merciless Axe]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Durnholde1
    +Equip the |T135640:0|t[Broad Bladed Knife]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Rogue wotlk
    #completewith Durnholde1
    .cast 8679 >> Use the |T132273:0|t[Instant Poison] on your weapons
    .itemcount 6947,2
step
    #completewith Durnholde1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith next
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Giant Moss Creepers|r as they're not worth killing yet|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Durnholde1
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Travel to Durnholde Keep
    .isOnQuest 549
step
    #completewith Drull
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot |cRXP_ENEMY_Syndicate Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19
	>>Kill |cRXP_ENEMY_Jailor Marlgen|r. Loot him for his |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or at the bottom of the tower|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>Click the |cRXP_PICK_Ball and Chain|r on the ground
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T134590:0|t[Stalking Pants] |cRXP_BUY_and|r |T132603:0|t[Wolf Bracers] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,LEVEL,<26
    .itemStat 9,LEVEL,<25
--VV shows vendor twice
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T134590:0|t[Stalking Pants] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,LEVEL,<26
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy the|r |T132603:0|t[Wolf Bracers] |cRXP_BUY_from her if they're up|r
    .vendor >> Vendor and Repair
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,LEVEL,<25
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T134590:0|t[Stalking Pants] |cRXP_BUY_and|r |T132603:0|t[Wolf Bracers]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,LEVEL,<26
    .itemStat 9,LEVEL,<25
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T134590:0|t[Stalking Pants]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,LEVEL,<26
step << Rogue/Hunter/Shaman
    #completewith Drull
    +Equip the |T132603:0|t[Wolf Bracers]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,LEVEL,<25
step
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63
    >>Kill |cRXP_ENEMY_Jailor Eston|r. Loot him for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Click the |cRXP_PICK_Ball and Chain|r on the ground
    .complete 498,1 --Rescue Drull (1)
step
    .goto Hillsbrad Foothills,75.29,40.17,40,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot |cRXP_ENEMY_Syndicate Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1,7 --Kill Syndicate Rogue (x10)
	.complete 549,2,7 --Kill Syndicate Watchman (x10)
	.complete 1066,1,4 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #label ExitDurnholde
    #completewith Syndicate1
	.goto Hillsbrad Foothills,76.72,46.22,45 >> Exit Durnholde Keep
    .isOnQuest 549
step
    #requires ExitDurnholde
    #completewith Syndicate1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
    #requires ExitDurnholde
	#completewith next
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Giant Moss Creepers|r as they're not worth killing yet|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #label Syndicate1
    .goto Hillsbrad Foothills,67.06,46.27,40,0
    .goto Hillsbrad Foothills,66.04,45.78,40,0
    .goto Hillsbrad Foothills,64.87,47.17,40,0
    .goto Hillsbrad Foothills,66.13,48.44,40,0
    .goto Hillsbrad Foothills,67.11,50.53,40,0
    .goto Hillsbrad Foothills,76.51,46.31,40,0
    .goto Hillsbrad Foothills,75.29,40.17,20,0
    .goto Hillsbrad Foothills,76.53,41.00,30,0
    .goto Hillsbrad Foothills,77.28,43.55,35,0
    .goto Hillsbrad Foothills,78.98,45.09,35,0
    .goto Hillsbrad Foothills,79.58,46.88,20,0
    .goto Hillsbrad Foothills,80.97,46.77,20,0
    .goto Hillsbrad Foothills,81.82,45.15,20,0
    .goto Hillsbrad Foothills,82.24,42.50,35,0
    .goto Hillsbrad Foothills,80.69,44.07,8,0
    .goto Hillsbrad Foothills,81.10,43.85,8,0
    .goto Hillsbrad Foothills,81.92,39.69,35,0
    .goto Hillsbrad Foothills,83.83,40.78,35,0
    .goto Hillsbrad Foothills,80.67,42.47,30,0
    .goto Hillsbrad Foothills,79.70,43.22,30,0
    .goto Hillsbrad Foothills,79.69,39.76,30,0
    .goto Hillsbrad Foothills,78.25,41.30,30,0
    .goto Hillsbrad Foothills,77.58,39.23,30,0
    .goto Hillsbrad Foothills,78.01,43.37,30,0
    .goto Hillsbrad Foothills,76.47,46.62,30,0
    .goto Hillsbrad Foothills,75.29,40.17
	>>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Syndicate Watchmen|r << !Shaman !Warrior
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r, |cRXP_ENEMY_Syndicate Watchmen|r, and |cRXP_ENEMY_Syndicate Shadow Mages|r. Loot |cRXP_ENEMY_Syndicate Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r << Shaman/Warrior
    .complete 549,1 --Kill Syndicate Rogue (x10)
	.complete 549,2 --Kill Syndicate Watchman (x10)
	.complete 1066,1 << Shaman/Warrior --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Rogue
    .mob Syndicate Watchman
    .mob Syndicate Shadow Mage << Shaman/Warrior
step
    #completewith HFields1
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
	#completewith HFields1
    .goto Hillsbrad Foothills,62.93,38.53,45,0
    .goto Hillsbrad Foothills,62.16,39.83,45,0
    .goto Hillsbrad Foothills,60.92,38.20,45,0
    .goto Hillsbrad Foothills,59.23,34.19,45,0
    .goto Hillsbrad Foothills,58.77,28.98,45,0
    .goto Hillsbrad Foothills,57.15,30.80,45,0
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Giant Moss Creepers|r as they're not worth killing yet|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
step
    #completewith HFields1
    .goto Hillsbrad Foothills,54.77,28.72,45,0
    .goto Hillsbrad Foothills,52.93,29.45,45,0
    .goto Hillsbrad Foothills,54.29,31.75,45,0
    .goto Hillsbrad Foothills,51.28,35.37,45,0
    .goto Hillsbrad Foothills,43.36,39.38,45,0
    .goto Hillsbrad Foothills,42.56,40.19,45,0
    .goto Hillsbrad Foothills,40.91,44.23,45,0
    .goto Hillsbrad Foothills,39.92,45.83,45,0
    .goto Hillsbrad Foothills,37.97,44.59,45,0
    .goto Hillsbrad Foothills,39.88,40.56,45,0
    .goto Hillsbrad Foothills,38.45,38.77,45,0
    .goto Hillsbrad Foothills,38.70,36.71,45,0
    .goto Hillsbrad Foothills,39.79,34.43,45,0
	>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label HFields1
    .goto Hillsbrad Foothills,36.02,39.19,80 >> Travel to the Hillsbrad Fields
    .isOnQuest 527
step
    #xprate <1.7
    #completewith Farmhands
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    >>Kill |cRXP_ENEMY_Citizen Wilkes|r
    >>|cRXP_WARN_He patrols around the roads of the town|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
step
	#completewith Getz
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
    #completewith next
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    >>Kill |cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_He can be found in the House, in the Field, or in the Barn|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78,10,0
    .goto Hillsbrad Foothills,33.70,35.50,20,0
    .goto Hillsbrad Foothills,33.02,35.10,8,0
    .goto Hillsbrad Foothills,32.67,34.80,8,0
    .goto Hillsbrad Foothills,33.21,34.78
    >>Kill |cRXP_ENEMY_Farmer Ray|r
    >>|cRXP_WARN_He can be found in the vineyard, or in the first and second floor of the house|r
    .complete 527,3 --Farmer Ray (1)
    .mob Farmer Ray
step
    #label Getz
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70,10,0
    .goto Hillsbrad Foothills,36.70,39.38,20,0
    .goto Hillsbrad Foothills,35.28,40.76,20,0
    .goto Hillsbrad Foothills,35.17,38.18,8,0
    .goto Hillsbrad Foothills,35.39,37.70
    >>Kill |cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_He can be found in the House, in the Field, or in the Barn|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label Farmhands
#loop
	.line Hillsbrad Foothills,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
step
	#completewith BearT
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    #completewith next
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
	.goto Hillsbrad Foothills,39.79,34.43,45,0
	.goto Hillsbrad Foothills,38.70,36.71,45,0
	.goto Hillsbrad Foothills,38.45,38.77,45,0
	.goto Hillsbrad Foothills,39.88,40.56,45,0
	.goto Hillsbrad Foothills,37.97,44.59,45,0
	.goto Hillsbrad Foothills,39.92,45.83,45,0
	.goto Hillsbrad Foothills,40.91,44.23,45,0
	.goto Hillsbrad Foothills,42.56,40.19,45,0
	.goto Hillsbrad Foothills,43.36,39.38,45,0
	.goto Hillsbrad Foothills,51.28,35.37,45,0
	.goto Hillsbrad Foothills,54.29,31.75,45,0
	.goto Hillsbrad Foothills,52.93,29.45,45,0
	.goto Hillsbrad Foothills,54.77,28.72,45,0
	>>Kill |cRXP_ENEMY_Starving Mountain Lions|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
    #label BearT
#loop
	.line Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
	.goto Hillsbrad Foothills,40.88,33.87,45,0
	.goto Hillsbrad Foothills,40.86,37.40,45,0
	.goto Hillsbrad Foothills,40.85,39.42,45,0
	.goto Hillsbrad Foothills,38.50,38.04,45,0
	.goto Hillsbrad Foothills,37.68,41.23,45,0
	.goto Hillsbrad Foothills,38.71,42.66,45,0
	.goto Hillsbrad Foothills,40.40,44.65,45,0
	.goto Hillsbrad Foothills,44.39,41.34,45,0
	.goto Hillsbrad Foothills,45.23,39.62,45,0
	.goto Hillsbrad Foothills,43.87,37.01,45,0
	.goto Hillsbrad Foothills,49.75,34.33,45,0
	.goto Hillsbrad Foothills,52.06,36.86,45,0
	.goto Hillsbrad Foothills,51.91,32.97,45,0
	.goto Hillsbrad Foothills,52.39,29.27,45,0
	.goto Hillsbrad Foothills,57.38,22.85,45,0
	.goto Hillsbrad Foothills,57.09,25.67,45,0
	.goto Hillsbrad Foothills,58.08,28.07,45,0
	.goto Hillsbrad Foothills,56.88,28.85,45,0
	.goto Hillsbrad Foothills,59.68,30.90,45,0
	.goto Hillsbrad Foothills,57.71,34.06,45,0
	.goto Hillsbrad Foothills,59.89,36.74,45,0
	.goto Hillsbrad Foothills,62.63,37.64,45,0
	.goto Hillsbrad Foothills,64.73,38.03,45,0
	.goto Hillsbrad Foothills,66.52,34.52,45,0
    >>Kill |cRXP_ENEMY_Vicious Gray Bears|r and |cRXP_ENEMY_Gray Bears|r. Loot them for their |cRXP_LOOT_Tongues|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Elder Gray Bears|r as they're not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Vicious Gray Bear
    .mob Gray Bear
step
#loop
	.line Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	.goto Hillsbrad Foothills,62.24,39.96,45,0
	.goto Hillsbrad Foothills,60.92,37.92,45,0
	.goto Hillsbrad Foothills,59.62,33.33,45,0
	.goto Hillsbrad Foothills,56.88,29.73,45,0
	.goto Hillsbrad Foothills,59.80,27.72,45,0
	.goto Hillsbrad Foothills,57.63,24.16,45,0
	.goto Hillsbrad Foothills,56.47,16.42,45,0
	.goto Hillsbrad Foothills,59.36,14.55,45,0
	.goto Hillsbrad Foothills,60.54,13.67,45,0
	.goto Hillsbrad Foothills,62.65,12.90,45,0
	.goto Hillsbrad Foothills,64.43,10.22,45,0
	.goto Hillsbrad Foothills,65.18,6.93,45,0
	.goto Hillsbrad Foothills,65.31,5.76,45,0
	.goto Hillsbrad Foothills,66.90,9.02,45,0
	.goto Hillsbrad Foothills,70.39,8.89,45,0
	.goto Hillsbrad Foothills,68.86,10.18,45,0
	.goto Hillsbrad Foothills,67.35,12.95,45,0
	.goto Hillsbrad Foothills,71.38,19.81,45,0
	.goto Hillsbrad Foothills,71.78,21.89,45,0
	.goto Hillsbrad Foothills,64.85,24.92,45,0
	.goto Hillsbrad Foothills,66.68,28.15,45,0
	.goto Hillsbrad Foothills,69.76,31.89,45,0
	.goto Hillsbrad Foothills,67.62,37.65,45,0
	.goto Hillsbrad Foothills,62.85,38.74,45,0
	>>Kill |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, |cRXP_FRIENDLY_Darthalia|r, and |cRXP_FRIENDLY_Krusk|r
    .turnin 1066 >> Turn in Blood of Innocents << Shaman/Warrior
    .turnin 496 >> Turn in Elixir of Suffering
    .accept 499 >> Accept Elixir of Suffering
    .turnin 501 >> Turn in Elixir of Pain
    .accept 502 >> Accept Elixir of Pain
    .accept 1067 >> Accept Return to Thunder Bluff << Shaman/Warrior
    .accept 509 >> Accept Elixir of Agony
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >> Turn in Elixir of Suffering
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >> Turn in Battle of Hillsbrad
    .accept 528 >> Accept Battle of Hillsbrad
	.turnin 549 >> Turn in WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >> Turn in The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
    .xp <24,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Umpi|r, |cRXP_FRIENDLY_Darthalia|r, and |cRXP_FRIENDLY_Krusk|r
    .turnin 1066 >> Turn in Blood of Innocents << Shaman/Warrior
    .turnin 496 >> Turn in Elixir of Suffering
    .accept 499 >> Accept Elixir of Suffering
    .turnin 501 >> Turn in Elixir of Pain
    .accept 502 >> Accept Elixir of Pain
    .accept 1067 >> Accept Return to Thunder Bluff << Shaman/Warrior
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .turnin 499 >> Turn in Elixir of Suffering
    .goto Hillsbrad Foothills,61.53,19.16
    .turnin 527 >> Turn in Battle of Hillsbrad
    .accept 528 >> Accept Battle of Hillsbrad
	.turnin 549 >> Turn in WANTED: Syndicate Personnel
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 498 >> Turn in The Rescue
    .goto Hillsbrad Foothills,62.95,20.59,8,0
    .goto Hillsbrad Foothills,63.24,20.66
    .target Apothecary Lydon
    .target Umpi
    .target High Executor Darthalia
    .target Krusk
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1000,1145,1 --Sharp Arrow (1000)
    .target Kayren Soothallow
    .money <0.0240 << BloodElf
    .money <0.0250 << Troll/Orc
    .xp >25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,2000,1145,1 --Razor Arrow (2000)
    .target Kayren Soothallow
    .money <0.2850 << BloodElf
    .money <0.3000 << Troll/Orc
    .xp <25,1
step << Hunter
	.goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r
    .collect 3030,1000,1145,1 --Razor Arrow (1000)
    .target Kayren Soothallow
    .money <0.1425 << BloodElf
    .money <0.1500 << Troll/Orc
    .xp <25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    .goto Hillsbrad Foothills,62.11,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samsa|r
    .accept 546 >> Accept Souvenirs of Death
    .target Deathguard Samsa
step
    #xprate <1.7
    #completewith Peasants
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #xprate >1.6999
    #completewith Peasants
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #xprate <1.7
    #completewith Peasants
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    >>Kill |cRXP_ENEMY_Citizen Wilkes|r
    >>|cRXP_WARN_He patrols around the roads of the town|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
step
    #label ERStanley
	.goto Hillsbrad Foothills,32.67,35.33
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Enraged Stanley|r
    >>|cRXP_WARN_Killing|r |cRXP_ENEMY_Enraged Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain
    .timer 9,Stanley RP (BE ALERT)
    .mob Stanley
step
    #xprate <1.7
    #completewith next
	>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #xprate <1.7
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Kill |cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
    .unitscan Enraged Stanley
step
    #label Peasants
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	>>Kill |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
    .unitscan Enraged Stanley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
    .accept 509 >> Accept Elixir of Agony
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target Apothecary Lydon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samsa|r and |cRXP_FRIENDLY_Darthalia|r
    .turnin 546 >> Turn in Souvenirs of Death
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .target Deathguard Samsa
    .target High Executor Darthalia
    .isQuestComplete 546
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_and|r |T133970:0|t[Mutton Chops] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1205,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Melon Juice (20)
    .collect 3770,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Mutton Chop (20)
    .collect 3770,10,1145,1 << Paladin/Shaman --Mutton Chop (10)
    .target Innkeeper Shay
    .money <0.2000 << !Paladin !Shaman
    .money <0.3000 << Paladin/Shaman
    .xp <20,1
    .xp >25,1
step
    .goto Hillsbrad Foothills,62.53,19.58,8,0
    .goto Hillsbrad Foothills,62.78,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133969:0|t[Wild Hog Shanks] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 3771,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Wild Hog Shank (20)
    .collect 3771,10,1145,1 << Paladin/Shaman --Wild Hog Shank (10)
    .target Innkeeper Shay
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +Equip the |T132408:0|t[Merciless Axe]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +Equip the |T135640:0|t[Broad Bladed Knife]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step
#loop
	.line Hillsbrad Foothills,64.24,59.25,66.03,61.63,64.51,63.41,62.90,62.04,64.24,59.25
	.goto Hillsbrad Foothills,64.24,59.25,45,0
	.goto Hillsbrad Foothills,66.03,61.63,45,0
	.goto Hillsbrad Foothills,64.51,63.41,45,0
	.goto Hillsbrad Foothills,62.90,62.04,45,0
	.goto Hillsbrad Foothills,64.24,59.25,45,0
    >>Loot the |cRXP_LOOT_Mudsnout Blossoms|r on the ground
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mudsnout Gnolls|r cast|r |T136090:0|t[Sling Mud] |cRXP_WARN_(Reduces hit chance by 50% for 15 seconds)|r << Rogue/Warrior/Paladin
    .complete 509,1 --Mudsnout Blossoms (6)
step
    #completewith Blacksmith
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
step
    #completewith Verringtan
    >>Kill |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
    #completewith next
	.goto Hillsbrad Foothills,32.56,45.95,0
	>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    .goto Hillsbrad Foothills,32.01,45.45
    >>Loot the |cRXP_PICK_Shipment of Iron|r inside on the ground
    .complete 529,3 --Collect Shipment of Iron (x1)
step
    #label Verringtan
	.goto Hillsbrad Foothills,32.56,45.95,15,0
	.goto Hillsbrad Foothills,32.20,45.65,15,0
	.goto Hillsbrad Foothills,32.11,44.43,15,0
#loop
	.line Hillsbrad Foothills,32.56,45.95,32.20,45.65,32.11,44.33,32.56,45.95
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	.goto Hillsbrad Foothills,32.20,45.65,20,0
	.goto Hillsbrad Foothills,32.11,44.33,20,0
	.goto Hillsbrad Foothills,32.56,45.95,20,0
	>>Kill |cRXP_ENEMY_Blacksmith Verringtan|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .mob Blacksmith Verringtan
step
    #label Blacksmith
#loop
	.line Hillsbrad Foothills,31.96,45.83,32.69,45.10,31.15,43.91,31.10,46.75,31.89,46.72,31.96,45.83
	.goto Hillsbrad Foothills,31.96,45.83,25,0
	.goto Hillsbrad Foothills,32.69,45.10,25,0
	.goto Hillsbrad Foothills,31.15,43.91,25,0
	.goto Hillsbrad Foothills,31.10,46.75,25,0
	.goto Hillsbrad Foothills,31.89,46.72,25,0
	.goto Hillsbrad Foothills,31.96,45.83,25,0
    >>Kill |cRXP_ENEMY_Hillsbrad Apprentice Blacksmiths|r
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
    .mob Hillsbrad Apprentice Blacksmith
step
#loop
	.line Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,36.03,44.40,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loot them for their |cRXP_LOOT_Skulls|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .mob Hillsbrad Peasant
    .mob Hillsbrad Farmer
    .mob Hillsbrad Footman
    .mob Hillsbrad Councilman
    .mob Hillsbrad Apprentice Blacksmith
step << skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+14275 >> Grind to level 25 and 14275+/28900xp << !Shaman !Warrior
    .xp 25+16000 >> Grind to level 25 and 18475+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.5x, on SOD and Darkhan
step << skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+18100 >> Grind to level 25 and 18100+/28900xp << !Shaman !Warrior
    .xp 25+22300 >> Grind to level 25 and 22300+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.5x, on Darkhan
step << !Shaman !Warrior skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+16750 >> Grind to level 25 and 16750+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.5x, on SOD
step << !Shaman !Warrior skip
    #xprate 1.49-1.58
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+20575 >> Grind to level 25 and 20575+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.5x on neither
step << skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+13300 >> Grind to level 25 and 13300+/28900xp << !Shaman !Warrior
    .xp 25+17780 >> Grind to level 25 and 17780+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.6x, on SOD and Darkhan
step << skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+17380 >> Grind to level 25 and 17380+/28900xp << !Shaman !Warrior
    .xp 25+21860 >> Grind to level 25 and 21860+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.6x, on Darkhan
step << !Shaman !Warrior skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+15940 >> Grind to level 25 and 15940+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.6x, on SOD
step << !Shaman !Warrior skip
    #xprate 1.59-1.68
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+20020 >> Grind to level 25 and 20020+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.6x on neither
step << skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+12325 >> Grind to level 25 and 12325+/28900xp << !Shaman !Warrior
    .xp 25+17085 >> Grind to level 25 and 17085+/28900xp << Shaman/Warrior
    .isOnQuest 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.7x, on SOD and Darkhan
step << skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+16660 >> Grind to level 25 and 16660+/28900xp << !Shaman !Warrior
    .xp 25+21420 >> Grind to level 25 and 21420+/28900xp << Shaman/Warrior
    .isQuestTurnedIn 546
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf !Shaman !Warrior
--1.7x, on Darkhan
step << !Shaman !Warrior skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+15130 >> Grind to level 25 and 15130+/28900xp
    .isOnQuest 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.7x, on SOD
step << !Shaman !Warrior skip
    #xprate >1.6999
#loop
	.line Hillsbrad Foothills,33.88,41.80,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21,35.90,40.63,33.88,41.80,30.19,38.48,30.67,35.21,31.71,36.72,33.67,35.66,35.90,40.63
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,34.36,44.62,35,0
	.goto Hillsbrad Foothills,33.82,45.75,35,0
	.goto Hillsbrad Foothills,33.25,48.54,35,0
	.goto Hillsbrad Foothills,34.59,48.13,35,0
	.goto Hillsbrad Foothills,35.29,47.28,35,0
	.goto Hillsbrad Foothills,36.49,47.49,35,0
	.goto Hillsbrad Foothills,36.64,45.21,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
	.goto Hillsbrad Foothills,33.88,41.80,35,0
	.goto Hillsbrad Foothills,30.19,38.48,35,0
	.goto Hillsbrad Foothills,30.67,35.21,35,0
	.goto Hillsbrad Foothills,31.71,36.72,35,0
	.goto Hillsbrad Foothills,33.67,35.66,35,0
	.goto Hillsbrad Foothills,35.90,40.63,35,0
    .xp 25+19465 >> Grind to level 25 and 19465+/28900xp
    .isQuestTurnedIn 546
    .isQuestAvailable 9167 << !Shaman !Warrior
--1.7x on neither
step << !Orc/!Warrior
    #completewith Battle
    .goto Hillsbrad Foothills,47.01,31.20 << wotlk
    >>Travel to the Yeti Cave. Die on the eastern side << wotlk
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r, |cRXP_FRIENDLY_Samsa|r, and |cRXP_FRIENDLY_Lydon|r
    .turnin 529 >> Turn in Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 546 >> Turn in Souvenirs of Death
    .goto Hillsbrad Foothills,62.11,19.68
    .turnin 509 >> Turn in Elixir of Agony
    .accept 513 >> Accept Elixir of Agony
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Deathguard Samsa
    .target Apothecary Lydon
    .isQuestAvailable 546
step
    #xprate >1.6999
    #label Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Lydon|r
    .turnin 529 >> Turn in Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 509 >> Turn in Elixir of Agony
    .accept 513 >> Accept Elixir of Agony
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Apothecary Lydon
step
    #xprate <1.7
    #label Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r and |cRXP_FRIENDLY_Lydon|r
    .turnin 529 >> Turn in Battle of Hillsbrad
    .accept 532 >> Accept Battle of Hillsbrad
    .goto Hillsbrad Foothills,62.39,20.28
    .turnin 509 >> Turn in Elixir of Agony
    .accept 513 >> Accept Elixir of Agony
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.44,19.06
    .target High Executor Darthalia
    .target Apothecary Lydon
step << Shaman/Warrior
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <3.0343 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
step << Shaman/Warrior
    #completewith Verringtan
    +Equip the |T132408:0|t[Merciless Axe]
    .use 12249
    .itemcount 12249,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.09
    .xp <26,1
step << Rogue
	.goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ott|r
    >>|cRXP_BUY_Buy the|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up|r
    .vendor >> Vendor and Repair
    .target Ott
    .money <2.8372 << BloodElf/Undead
    .money <2.6953 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
step << Rogue
    #completewith Verringtan
    +Equip the |T135640:0|t[Broad Bladed Knife]
    .use 12247
    .itemcount 12247,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.75
    .xp <27,1
step << Druid
	#completewith next
	.cast 18960 >> Cast |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
    .xp <26,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >> Train your class spells
	.target Loganaar
    .xp <26,1
step << BloodElf Mage wotlk
    .cast 32272 >> Cast |T135761:0|t[Teleport: Silvermoon] to teleport to Silvermoon City
    .zoneskip Silvermoon City
    .money <4.5
    .itemcount 17031,1
    .skill riding,75,1
step << !Shaman !Warrior
    #completewith Durotar
    .hs >> Hearth to Undercity
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .zoneskip Silvermoon City << BloodElf Mage wotlk
    .train 3563,1 << Troll Mage
step << Mage
    #completewith ElixirA
    .cast 3563 >>Cast |T135766:0|t[Teleport: Undercity]
    .zoneskip Undercity
    .itemcount 17031,1
    .train 3563,3
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >> Travel toward |cRXP_FRIENDLY_Hannah|r
    .train 3563,1
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah|r
    >>|cRXP_BUY_Buy a|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .target Hannah Akeley
    .train 3563,1
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mortaim|r upstairs
    .train 3563 >>Train |T135766:0|t[Teleport: Undercity]
    .target Lexington Mortaim
    .train 3563,1
step << !Shaman !Warrior
    #completewith next
    .goto Undercity,63.77,47.25,15,0 << !Mage
    .goto Undercity,65.43,56.36,30,0 << !Mage
    .goto Undercity,64.78,64.48,30,0 << !Mage
    .goto Undercity,52.68,77.65,15,0
    .goto Undercity,51.15,80.09,12,0
    .goto Undercity,49.06,78.17,12,0
    .goto Undercity,47.80,75.46,15,0
    .goto Undercity,48.81,69.28,20 >>Travel toward |cRXP_FRIENDLY_Faranell|r
step << !Shaman !Warrior
    #label ElixirA
    .goto Undercity,48.81,69.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
    .turnin 513 >> Turn in Elixir of Agony
step << Troll Mage
    .cast 3567 >> Cast |T135759:0|t[Teleport: Orgrimmar] to teleport to Orgrimmar
    .zoneskip Orgrimmar
    .itemcount 17031,1
    .train 3567,3
step << skip --!Shaman !Warrior
    #completewith Durotar
    .goto Undercity,46.26,72.32
    .goto Undercity,67.88,14.97,30 >>|cRXP_WARN_Run onto the bookshelf. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=c0DFOlRQrKs >> |cRXP_WARN_CLICK HERE|r
    .zoneskip Orgrimmar << Troll Mage
    .isQuestAvailable 885
step << BloodElf !Warlock !Paladin wotlk
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .money <4.5
    .skill riding,75,1
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << BloodElf !Warlock !Paladin wotlk
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
    .money <4.5
    .skill riding,75,1
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Perascamin|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
	.target Perascamin
    .money <4.5
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winaestra|r
    +|cRXP_BUY_Buy any|r |T132228:0|t[Hawkstrider] |cRXP_BUY_that you like from her|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132227:0|t[Red Hawkstrider] to learn it
    .use 28927
    .itemcount 28927,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132229:0|t[Blue Hawkstrider] to learn it
    .use 29220
    .itemcount 29220,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132228:0|t[Black Hawkstrider] to learn it
    .use 29221
    .itemcount 29221,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132231:0|t[Purple Hawkstrider] to learn it
    .use 29222
    .itemcount 29222,1
    .skill riding,75,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132227:0|t[Red Hawkstrider] |cRXP_WARN_onto your Action Bars|r
    .cast 34795 >> Mount your |T132227:0|t[Red Hawkstrider]
    .train 34795,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132229:0|t[Blue Hawkstrider] |cRXP_WARN_onto your Action Bars|r
    .cast 35020 >> Mount your |T132229:0|t[Blue Hawkstrider]
    .train 35020,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132228:0|t[Black Hawkstrider] |cRXP_WARN_onto your Action Bars|r
    .cast 29221 >> Mount your |T132228:0|t[Black Hawkstrider]
    .train 29221,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132231:0|t[Purple Hawkstrider] |cRXP_WARN_onto your Action Bars|r
    .cast 29222 >> Mount your |T132231:0|t[Purple Hawkstrider]
    .train 29222,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
step << BloodElf !Warlock !Paladin wotlk
    #completewith Durotar
    .hs >> Hearth to Undercity
	.cooldown item,6948,>0
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << BloodElf !Warlock !Paladin wotlk
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30 >>Take the lift back up toward Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Shaman !Warrior
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Exit Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .itemcount 17031,1 << Troll Mage
    .train 3567,1 << Troll Mage
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Velma Warnam
    .money <4.5
    .skill riding,75,1
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zachariah|r
    +|cRXP_BUY_Buy any|r |T132264:0|t[Skeletal Horse] |cRXP_BUY_that you like from him|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9
    .skill riding,<75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Red Skeletal Horse] to learn it
    .use 13331
    .itemcount 13331,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Blue Skeletal Horse] to learn it
    .use 13332
    .itemcount 13332,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Brown Skeletal Horse] to learn it
    .use 13333
    .itemcount 13333,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Black Skeletal Horse] to learn it
    .use 46308
    .itemcount 46308,1
    .skill riding,75,1
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Red Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17462 >> Mount your |T132264:0|t[Red Skeletal Horse]
    .train 17462,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Blue Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17463 >> Mount your |T132264:0|t[Blue Skeletal Horse]
    .train 17463,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Brown Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17464 >> Mount your |T132264:0|t[Brown Skeletal Horse]
    .train 17464,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Black Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 64977 >> Mount your |T132264:0|t[Black Skeletal Horse]
    .train 64977,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Shaman !Warrior
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Go up the Zeppelin Tower
    .zone Durotar >>Take the Zeppelin to Durotar
    .zoneskip Orgrimmar
    .itemcount 17031,1 << Troll Mage
    .train 3567,1 << Troll Mage
]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 25-27 Ashenvale JJ
#version 1
#group RestedXP Horde 1-30
#next 27-28 Southern Barrens JJ
#xprate >1.4999

step << Shaman/Warrior
    #completewith OrgTrain
    .hs >> Hearth to Orgrimmar
step << Troll Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r downstairs
    .train 120 >> Train your class spells
    .target Pephredo
    .xp <26,1
    .train 3567,3
    .zoneskip Orgrimmar,1
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Buy|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .money <0.1900
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Get the Orgrimmar flight path
    .target Doras
step << !Shaman !Warrior
    #completewith MeetingTW
    #label ValleyOW
    #requires MageRune1 << Troll Mage
    .goto Orgrimmar,49.59,94.74,30,0 << Orc/Troll
    .goto Orgrimmar,49.42,90.90,30,0 << Orc/Troll
    .goto Orgrimmar,52.26,88.65,30,0 << Orc/Troll
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold << Orc/Troll
    .goto Orgrimmar,39.50,37.17,20 >>Travel across the bridge, then toward Grommash Hold << !Orc !Troll
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << !Shaman !Warrior
    #label MeetingTW << !BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and |cRXP_FRIENDLY_Dawnsinger|r
    .turnin 9626 >> Turn in Meeting the Warchief << BloodElf
    .accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >> Turn in Meeting the Warchief << !BloodElf
    .goto Orgrimmar,31.62,37.82
    .accept 9428 >> Accept Report to Splintertree Post << BloodElf
    .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
    .target Ambassador Dawnsinger << BloodElf
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << BloodElf
    #label MeetingTW
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and |cRXP_FRIENDLY_Dawnsinger|r
    .accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .goto Orgrimmar,31.62,37.82
    .accept 9428 >> Accept Report to Splintertree Post << BloodElf
    .goto Orgrimmar,31.62,38.39 << BloodElf
    .target Thrall
    .target Ambassador Dawnsinger << BloodElf
    .isQuestTurnedIn 9626 << BloodElf
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyreanor|r
    .train 5599 >> Train your class spells
    .target Master Pyreanor
    .xp <24,1
    .xp >26,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyreanor|r
    .train 10298 >> Train your class spells
    .target Master Pyreanor
    .xp <26,1
step << Shaman
    #completewith OrgTrain
    .goto Orgrimmar,42.63,61.99,15,0 << Orc/Troll
    .goto Orgrimmar,41.83,61.66,6,0 << Orc/Troll
    .goto Orgrimmar,42.01,60.77,6,0 << Orc/Troll
    .goto Orgrimmar,41.73,62.41,8,0 << Orc/Troll
    .goto Orgrimmar,41.91,64.30,15,0 << !Orc !Troll
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,38.81,36.38,20 >>Travel toward |cRXP_FRIENDLY_Kardris|r << Orc/Troll
step << Shaman
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8046 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <24,1
    .xp >26,1
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8030 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <26,1
step << Troll Mage
    #completewith OrgTrain
    .cast 3567 >> Cast |T135759:0|t[Teleport: Orgrimmar], then go downstairs
    .itemcount 17031,2
step << Mage/Priest/Rogue/Warlock
    #completewith OrgTrain
    .goto Orgrimmar,42.30,37.44,20,0
    .goto Orgrimmar,40.96,45.16,20,0
    .goto Orgrimmar,40.01,51.88,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.29,56.98,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.82,56.28,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.61,53.40,15,0 << Rogue
    .goto Orgrimmar,38.66,56.48,20,0 << Mage/Priest
    .goto Orgrimmar,41.17,67.04,20,0 << Mage/Priest
    .goto Orgrimmar,38.78,77.83,15,0 << Mage
    .goto Orgrimmar,38.72,83.38,12,0 << Mage
    .goto Orgrimmar,38.36,85.56,15 >> Travel toward |cRXP_FRIENDLY_Pephredo|r << Mage
    .goto Orgrimmar,35.59,87.80,15 >> Travel toward |cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,43.05,53.73,10 >> Travel toward |cRXP_FRIENDLY_Shenthul|r << Rogue
    .goto Orgrimmar,48.25,45.27,15 >> Travel toward |cRXP_FRIENDLY_Grol'dar|r << Warlock
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 2139 >> Train your class spells
    .target Pephredo
    .xp <24,1
    .xp >26,1
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 120 >> Train your class spells
    .target Pephredo
    .xp <26,1
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ur'kyo|r
    .train 1245 >> Train your class spells
    .target Ur'kyo
    .xp <24,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Turn in Rogues of the Shattered Hand
    .accept 2460 >> Accept The Shattered Salute
    .train 6762 >> Train your class spells
    .target Shenthul
    .train 6762,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Turn in Rogues of the Shattered Hand
    .accept 2460 >> Accept The Shattered Salute
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Target |cRXP_FRIENDLY_Shenthul|r to Salute him|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Turn in The Shattered Salute
    .accept 2458 >> Accept Deep Cover
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .train 921,1
    .train 1784,1
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .target Shenthul
step << !BloodElf Rogue tbc
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .target Shenthul
step << Rogue wotlk
    .goto Orgrimmar,42.09,49.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rekkul|r
    >>|cRXP_BUY_Buy|r |T132273:0|t[Instant Poison II] |cRXP_BUY_from him|r
    .collect 6949,10,25,1 --Instant Poison (10)
    .target Rekkul
 step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dar|r
    .train 6223 >> Train your class spells
    .target Grol'dar
    .xp <24,1
    .xp >26,1
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dar|r
    .train 1456 >> Train your class spells
    .target Grol'dar
    .xp <26,1
step << Warlock
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandon Carendin Summons
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r and |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Accept Devourer of Souls
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >> Turn in Devourer of Souls
    .accept 1508 >> Accept Blind Cazul
    .accept 65601 >> Accept Love Hurts
    .goto Orgrimmar,47.05,46.43
    .target Gan'rul Bloodeye
    .target Cazul
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >> Travel toward |cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step << Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >> Travel toward |cRXP_FRIENDLY_Magar|r
step << Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >> Turn in Love Hurts
    .accept 65610 >> Accept Wish You Were Here
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel upstairs toward |cRXP_FRIENDLY_Thuul|r
step << Mage
    #label OrgTrain
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Hunter/Warrior
    #completewith OrgTrain
    .goto Orgrimmar,63.08,39.25,40,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,76.76,33.04,30,0 << Warrior
    .goto Orgrimmar,79.13,32.80,30,0 << Warrior
    .goto Orgrimmar,80.39,32.38,20 >> Travel toward |cRXP_FRIENDLY_Sorek|r << Warrior
    .goto Orgrimmar,72.25,21.42,30,0 << Hunter
    .goto Orgrimmar,67.60,14.89,15,0 << Hunter
    .goto Orgrimmar,66.05,18.52,20 >> Travel toward |cRXP_FRIENDLY_Ormak|r << Hunter
    .train 580,3 << Orc Hunter/Orc Warrior
    .train 6653,3 << Orc Hunter/Orc Warrior
    .train 6654,3 << Orc Hunter/Orc Warrior
    .train 64658,3 << Orc Hunter/Orc Warrior
step << !Warlock Orc wotlk
    #completewith next
    .goto Orgrimmar,63.08,39.25,40,0 << !Warrior
    .goto Orgrimmar,64.31,38.12,30,0 << !Warrior
    .goto Orgrimmar,66.07,40.04,30,0 << !Warrior
    .goto Orgrimmar,76.33,32.64,30,0 << Warrior
    .goto Orgrimmar,72.16,26.66,30,0 << Warrior
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>Travel toward |cRXP_FRIENDLY_Kildar|r
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kildar
    .money <4.5
    .skill riding,75,1
step << !Warlock Orc wotlk
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro|r
    +|cRXP_BUY_Buy any|r |T132224:0|t[Wolf] |cRXP_BUY_that you like from him|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9
    .skill riding,<75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Timber Wolf] to learn it
    .use 1132
    .itemcount 1132,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132266:0|t[Horn of the Dire Wolf] to learn it
    .use 5665
    .itemcount 5665,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Brown Wolf] to learn it
    .use 5668
    .itemcount 5668,1
    .skill riding,75,1
step << !Warlock Orc wotlk
    .cast 55884 >> Use the |T132224:0|t[Horn of the Black Wolf] to learn it
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Timber Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 580 >> Mount your |T132224:0|t[Timber Wolf]
    .train 580,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132266:0|t[Dire Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6653 >> Mount your |T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Brown Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6654 >> Mount your |T132224:0|t[Brown Wolf]
    .train 6654,3
step << Orc wotlk !Warlock
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Black Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 64658 >> Mount your |T132224:0|t[Black Wolf]
    .train 64658,3
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .train 6574 >> Train your class spells
    .target Sorek
    .train 6574,1
    .xp <24,1
    .xp >26,1
step << Warrior
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .train 6178 >> Train your class spells
    .target Sorek
    .train 6178,1
    .xp <26,1
step << Warrior
    #label OrgTrain
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .accept 1823 >> Accept Speak with Ruga
    .target Sorek
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Train your class spells
    .target Ormak Grimshot
    .xp <22,1
    .xp >26,1
step << Hunter
    #label OrgTrain
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 3045 >> Train your class spells
    .target Ormak Grimshot
    .xp <26,1
step << Shaman/Warrior/Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >> Travel toward |cRXP_FRIENDLY_Hanashi|r
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 196 >>Train 1h Axes
    .train 197 >>Train 2h Axes
    .target Hanashi
    .money <0.1900
    .train 196,1
    .train 197,1
step << Shaman
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 196 >>Train 1h Axes
    .money <0.0950
    .target Hanashi
step << Warrior/Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train 2h Axes
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step << Rogue tbc
    .goto Orgrimmar,53.63,64.69,20,0
    .goto Orgrimmar,55.75,64.87,20,0
    .goto Orgrimmar,50.68,70.37,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wabang|r
    +|cRXP_BUY_Buy either an|r |T134437:0|t[Anti Venom] |cRXP_BUY_or|r |T134437:0|t[Strong Anti Venom] |cRXP_BUY_from the AH if it's cheap. This will save you time later|r
    >>|cRXP_WARN_If you can't afford either, skip this step|r
    .itemcount 6452,<1
    .itemcount 6453,<1
    .target Auctioneer Wabang
step
    #completewith RatchetFP
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,48.50,95.12,30,0 << !Troll
    .goto Orgrimmar,48.50,95.12,30 >> Exit Orgrimmar << Troll wotlk
    .zone Durotar >> Exit Orgrimmar << !Troll
    .zoneskip Orgrimmar,1
    .money <4.5 << Troll wotlk
    .skill riding,75,1 << Troll Warrior wotlk/Troll Shaman wotlk
step << Troll wotlk
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>Travel toward |cRXP_FRIENDLY_Xar'Ti|r
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Xar'Ti
    .money <4.5
    .skill riding,75,1
step << Troll wotlk
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zjolnir|r
    +|cRXP_BUY_Buy any|r |T132253:0|t[Raptor Whistle] |cRXP_BUY_that you like from him|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9
    .skill riding,<75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Emerald Raptor] to learn it
    .use 8588
    .itemcount 8588,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Turquoise Raptor] to learn it
    .use 8591
    .itemcount 8591,1
    .skill riding,75,1
step << Troll wotlk
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Violet Raptor] to learn it
    .use 8592
    .itemcount 8592,1
    .skill riding,75,1
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Emerald Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 8395 >> Mount your |T132253:0|t[Emerald Raptor]
    .train 8395,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Turquoise Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10796 >> Mount your |T132253:0|t[Turquoise Raptor]
    .train 10796,3
    .zoneskip Orgrimmar
step << Troll wotlk
    #completewith RatchetFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132253:0|t[Violet Raptor] |cRXP_WARN_onto your Action Bars|r
    .cast 10799 >> Mount your |T132253:0|t[Violet Raptor]
    .train 10799,3
    .zoneskip Orgrimmar
step << Warrior/Shaman
    #completewith next
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
step << Warrior/Shaman
    #completewith Torek1
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Fly to Crossroads << Warrior
    .fly Camp Taurajo >> Fly to Camp Taurajo << Shaman
    .target Doras
    .zoneskip Orgrimmar,1
step << Troll
    #completewith next
    .goto Durotar,46.94,69.10,100,0
    .goto Durotar,46.02,69.32,40,0
    .goto Durotar,41.38,73.54,15,0
    .goto Durotar,66.29,35.94,30,0
    .goto The Barrens,63.08,37.16,30 >>Travel toward |cRXP_FRIENDLY_Bragok|r
    .zoneskip Durotar,1
step
    #label RatchetFP
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path << !Shaman !Warrior
    .fly Crossroads >> Fly to Crossroads << Troll Warrior wotlk
    .fly Camp Taurajo >> Fly to Camp Taurajo << Troll Shaman wotlk
    .target Bragok
    .zoneskip Orgrimmar << Troll Warrior wotlk/Troll Shaman wotlk
step << Shaman
    #completewith ShamanCross
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << Shaman
    #completewith ShamanCross
    .goto The Barrens,44.76,74.79,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Travel toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step << Shaman
    .goto The Barrens,44.86,59.13,70 >>Travel toward |cRXP_FRIENDLY_Jorn|r
    .isOnQuest 884
step << Shaman
    .goto The Barrens,44.86,59.13,70 >>Travel toward |cRXP_FRIENDLY_Jorn|r
    .isOnQuest 885
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >> Turn in Owatanka
    .turnin 885 >> Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 885
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >> Turn in Owatanka
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
step << Shaman
    #label ShamanCross
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 885 >> Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 885
step << Shaman
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >> Fly to Crossroads
    .target Omusa Thunderhorn
step << Rogue tbc
    #completewith next
	.goto The Barrens,62.80,39.13,30,0
	.goto The Barrens,62.80,40.03,30,0
	.goto The Barrens,64.19,45.49,8,0
	.goto The Barrens,64.89,45.37,6,0
	.goto The Barrens,64.87,45.53,6,0
	.goto The Barrens,64.86,45.37,6,0
	.goto The Barrens,65.04,45.42,5 >>Travel inside the Lockpicking Boat
step << Rogue tbc
    .goto The Barrens,65.04,45.42
    >>Lockpick the |cRXP_PICK_Buccaneer's Strongboxes|r on the first floor of the ship
    .skill lockpicking,80 >>Level your Lockpicking to 80
step << Warlock
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 4921 >>Accept Lost in Battle
    .target Mankrik
step << Warrior
    #completewith next
    .goto The Barrens,52.02,30.14,15,0
    .goto The Barrens,51.99,29.89,15 >> Travel toward |cRXP_FRIENDLY_Boorand|r
step << Warrior/Shaman/Warlock
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << Warlock
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp Crossroads >> Get the The Crossroads flight path
    .target Devrak
step << !Shaman !Warrior
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Accept Egg Hunt
    .target Korran
step << Warlock
    #completewith next
    .goto The Barrens,39.22,29.56,90,0
    .goto Stonetalon Mountains,82.17,98.27
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
step << Warlock
    #completewith next
    .goto Stonetalon Mountains,82.17,98.27,30,0
    .goto Stonetalon Mountains,79.92,98.27,30,0
    .goto Stonetalon Mountains,77.14,98.63,30,0
    .goto Stonetalon Mountains,75.03,97.10,15,0
    .goto Stonetalon Mountains,73.25,95.13,20 >>Travel toward |cRXP_FRIENDLY_Ken'zigla|r
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step << Warlock
    #completewith MankrikW
    .hs >> Hearth to Crossroads
	.cooldown item,6948,>0
step << Warlock
    #completewith next
    .goto Stonetalon Mountains,73.02,93.82,15,0
    .goto Stonetalon Mountains,75.23,95.36,15,0
    .goto Stonetalon Mountains,76.23,97.68,20,0
    .goto Stonetalon Mountains,77.14,98.63,30,0
    .goto Stonetalon Mountains,79.92,98.27,30,0
    .goto Stonetalon Mountains,82.87,98.65,30,0
    .goto The Barrens,39.22,29.56
    .zone The Barrens >> Travel to The Barrens
	.cooldown item,6948,<0
step << Warlock
    #completewith next
    .goto The Barrens,37.62,28.45,30,0
    .goto The Barrens,39.13,30.35,45,0
    .goto The Barrens,41.77,33.27,45,0
    .goto The Barrens,49.33,50.32,20 >>Travel toward the |cRXP_FRIENDLY_Beaten Corpse|r
	.cooldown item,6948,<0
step << !Shaman !Warrior !Warlock
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp Crossroads >> Get the The Crossroads flight path
    .target Devrak
step << !Shaman !Warrior !Warlock
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 4921 >>Accept Lost in Battle
    .target Mankrik
step << !Shaman !Warrior
    #label MankrikW
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Beaten Corpse|r on the ground
    .complete 4921,1 --Find Mankrik's Wife
    .target Beaten Corpse
    .skipgossip 10668,1
step << !Shaman !Warrior
    #completewith Silithid
    >>Kill |cRXP_ENEMY_Aean Swiftriver|r. Loot her for her |T134939:0|t[|cRXP_LOOT_Runed Scroll|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Runed Scroll|r] to start the quest|r
    >>|cRXP_WARN_Try to split pull her. Kite her toward the Camp Taurajo guards if possible|r
    >>|cRXP_WARN_Skip this step if you cannot find her or kill her|r
    .link https://youtu.be/H-IwZ6P-ldY?t=71 >> |cRXP_WARN_CLICK HERE for a guide on how to Split Pull|r
    .collect 10621,1,3513,1 --Collect Runed Scroll
    .accept 3513 >>Accept The Runed Scroll
    .use 5099
    .unitscan Aean Swiftriver
step << !Shaman !Warrior
    #completewith Weapons
    .goto The Barrens,50.07,52.96,45,0
    .goto The Barrens,49.99,53.44,45,0
    .goto The Barrens,46.07,49.11,45,0
    .goto The Barrens,46.20,49.74,45,0
    .goto The Barrens,45.39,52.31,45,0
    .goto The Barrens,45.14,52.37,45,0
    .goto The Barrens,45.12,52.73,45,0
    >>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    .collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
    .accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'Mani
step << !Shaman !Warrior
    #label Weapons
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >>Accept Weapons of Choice
    .target Tatternack Steelforge
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r and |cRXP_FRIENDLY_Logmar|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r << !Warlock
    .turnin 883 >> Turn in Lakota'mani
    .accept 1130 >> Accept Melor Sends Word
    .goto The Barrens,44.86,59.13
    .turnin 1511 >> Turn in Ken'zigla's Draught << Warlock
    .accept 1515 >> Accept Dogran's Captivity << Warlock
    .goto The Barrens,44.62,59.27 << Warlock
    .target Jorn Skyseer
    .target Grunt Logmar << Warlock
    .isOnQuest 883
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r and |cRXP_FRIENDLY_Logmar|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r << !Warlock
    .accept 1130 >> Accept Melor Sends Word
    .goto The Barrens,44.86,59.13
    .turnin 1511 >> Turn in Ken'zigla's Draught << Warlock
    .accept 1515 >> Accept Dogran's Captivity << Warlock
    .goto The Barrens,44.62,59.27 << Warlock
    .target Jorn Skyseer
    .target Grunt Logmar << Warlock
step << !Shaman !Warrior
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .target Omusa Thunderhorn
step << Warlock
    .goto The Barrens,43.30,47.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >> Turn in Dogran's Captivity
    .accept 1512 >> Accept Love's Gift
    .target Grunt Dogran
step << !Shaman !Warrior
    #completewith next
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    .goto The Barrens,49.67,59.54,40,0
    .goto The Barrens,49.42,61.04,40,0
    .goto The Barrens,49.18,61.45,40,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << !Shaman !Warrior
    #label Silithid
    .goto The Barrens,45.05,69.93,50 >> Travel toward the Field of Giants
    .isOnQuest 868
step << !Shaman !Warrior
    #completewith next
    >>Kill the |cRXP_ENEMY_Silithid Harvester|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]
    >>|cRXP_WARN_Use the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r] to start the quest|r
    >>|cRXP_WARN_Skip this quest if you can't find him|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>Accept The Harvester
    .use 5138
    .unitscan Silithid Harvester
step << !Shaman !Warrior
    #label Eggs
    .goto The Barrens,45.05,69.93,35,0
    .goto The Barrens,43.48,69.94,35,0
    .goto The Barrens,42.60,69.67,35,0
    .goto The Barrens,42.83,70.07,35,0
    .goto The Barrens,42.69,71.25,35,0
    .goto The Barrens,42.91,71.50,35,0
    .goto The Barrens,43.37,70.61,35,0
    .goto The Barrens,44.12,71.30,35,0
    .goto The Barrens,44.06,72.51,35,0
    .goto The Barrens,45.29,72.01,35,0
    .goto The Barrens,47.41,70.07,35,0
    .goto The Barrens,47.86,70.86,35,0
    .goto The Barrens,47.83,71.14,35,0
    .goto The Barrens,48.54,70.11,35,0
    .goto The Barrens,45.05,69.93
    >>Open the |cRXP_PICK_Silithid Mounds|r on the ground. Loot them for the |cRXP_LOOT_Silithid Eggs|r
    >>|cRXP_WARN_Try to avoid fighting the nearby |cRXP_ENEMY_Silithid|r as much as possible|r
    .complete 868,1 --Silithid Egg (12)
step << !Shaman !Warrior
    #optional
    #completewith JornTravel
    .goto The Barrens,48.79,70.00,60,0
    >>Kill the |cRXP_ENEMY_Silithid Harvester|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]
    >>|cRXP_WARN_Use the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r] to start the quest|r
    >>|cRXP_WARN_Skip this quest if you can't find him|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>Accept The Harvester
    .use 5138
    .unitscan Silithid Harvester
 step << !Shaman !Warrior
    #completewith JornTravel
    >>Kill |cRXP_ENEMY_Aean Swiftriver|r. Loot her for her |T134939:0|t[|cRXP_LOOT_Runed Scroll|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Runed Scroll|r] to start the quest|r
    >>|cRXP_WARN_Try to split pull her. Kite her toward the Camp Taurajo guards if possible|r
    >>|cRXP_WARN_Skip this step if you cannot find her or kill her|r
    .link https://youtu.be/H-IwZ6P-ldY?t=71 >> |cRXP_WARN_CLICK HERE for a guide on how to Split Pull|r
    .collect 10621,1,3513,1 --Collect Runed Scroll
    .accept 3513 >>Accept The Runed Scroll
    .use 5099
    .unitscan Aean Swiftriver
step << !Shaman !Warrior
    #completewith JornTravel
    .goto The Barrens,44.33,61.78,40,0
    .goto The Barrens,44.06,62.18,40,0
    .goto The Barrens,45.57,62.95,40,0
    .goto The Barrens,45.75,62.52,40,0
    .goto The Barrens,49.67,59.54,40,0
    .goto The Barrens,49.42,61.04,40,0
    .goto The Barrens,49.18,61.45,40,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << !Shaman !Warrior
    .goto The Barrens,44.86,59.13,70 >>Travel toward |cRXP_FRIENDLY_Jorn|r
    .isOnQuest 897
step << !Shaman !Warrior
    #label JornTravel
    .goto The Barrens,44.86,59.13,70 >>Travel toward |cRXP_FRIENDLY_Jorn|r
    .isOnQuest 884
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >> Turn in Owatanka
    .turnin 897 >> Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 897
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >> Turn in Owatanka
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 884
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 897 >> Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 897
step << !Shaman !Warrior
    #label Mulgore
    .goto Mulgore,67.45,59.23
    .zone Mulgore >> Travel to Mulgore
step << Tauren !Shaman !Warrior wotlk
    .goto Mulgore,47.65,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kar Stormsinger
    .money <4.5
step << Tauren !Shaman !Warrior wotlk
    .goto Mulgore,47.49,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
    +|cRXP_BUY_Buy any|r |T132243:0|t[Kodo] |cRXP_BUY_that you like from him|r
	.target Harb Clawhoof
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 --White Kodo
    .money <0.9
    .skill riding,<75,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >> Use the |T132243:0|t[Gray Kodo] to learn it
    .use 15277
    .itemcount 15277,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >> Use the |T132245:0|t[Brown Kodo] to learn it
    .use 15290
    .itemcount 15290,1
step << Tauren !Shaman !Warrior wotlk
    .cast 55884 >> Use the |T132243:0|t[White Kodo] to learn it
    .use 46100
    .itemcount 46100,1
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[Gray Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18989 >> Mount your |T132243:0|t[Gray Kodo]
    .train 18989,3
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132245:0|t[Brown Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18990 >> Mount your |T132245:0|t[Brown Kodo]
    .train 18990,3
step << Tauren !Shaman !Warrior wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[White Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 64657 >> Mount your |T132243:0|t[White Kodo]
    .train 64657,3
step << !Shaman !Warrior
    #completewith next
    .goto Mulgore,41.35,36.94,40,0
    .goto Thunder Bluff,31.81,66.06,20 >> Travel to the Thunder Bluff Elevators
step << Warlock tbc/Rogue wotlk
    .goto Thunder Bluff,40.93,62.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >> Train Staves << Warlock
    .train 198 >> Train Maces << Rogue
    .train 266 >> Train Guns << Rogue
    .money <0.2 << Rogues
    .target Ansekhwa
step << Rogue wotlk
    .goto Thunder Bluff,40.93,62.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >> Train Maces
    .money <0.1
    .target Ansekhwa
step << Warlock !tbc/!Shaman !Warrior
    #completewith Pala
    .goto Thunder Bluff,36.57,63.35,30,0 << !Rogue/!wotlk
    .goto Thunder Bluff,41.89,61.84,30,0 << !Rogue/!wotlk
    .goto Thunder Bluff,45.05,62.49,20,0
    .goto Thunder Bluff,45.81,64.71,15 >> Travel toward |cRXP_FRIENDLY_Pala|r
step << !Shaman !Warrior
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from her|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133994:0|t[Stormwind Brie] |cRXP_BUY_from her|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133994:0|t[Stormwind Brie] |cRXP_BUY_from her|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Stormwind Brie (20)
    .collect 1707,10,1145,1 << Paladin --Stormwind Brie (10)
    .target Innkeeper Pala
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << !Shaman !Warrior
    #label Pala
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
	.home >> Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .isQuestAvailable 1195
step << skip
	#completewith next
	.goto Thunder Bluff,76.477,27.221
.target Turak Runetotem
>>Talk to |cRXP_FRIENDLY_Turak Runetotem|r
	.accept 27 >>Accept A Lesson to Learn << tbc
	.trainer >> Go and train your class spells
--VV Druid - not worth it
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,46.85,66.08,8,0
    .goto Thunder Bluff,46.84,67.98,8,0
    .goto Thunder Bluff,54.27,76.87,15,0
    .goto Thunder Bluff,61.54,80.92,15 >>Travel toward |cRXP_FRIENDLY_Melor|r
step << !Shaman !Warrior
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 1130 >> Turn in Melor Sends Word
    .accept 1131 >> Accept Steelsnap
    .target Melor Stonehoof
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,61.85,75.43,12,0
    .goto Thunder Bluff,54.97,51.39,15 >>Travel toward |cRXP_FRIENDLY_Zangen|r
step << !Shaman !Warrior
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Accept The Sacred Flame
    .target Zangen Stonehoof
step << Druid
    #completewith next
    .goto Thunder Bluff,58.80,46.32,20,0
    .goto Thunder Bluff,59.61,43.59,12,0
    .goto Thunder Bluff,60.12,42.51,12,0
    .goto Thunder Bluff,61.28,41.66,8,0
    .goto Thunder Bluff,61.50,40.33,10,0
    .goto Thunder Bluff,74.32,30.21,20,0
    .goto Thunder Bluff,76.79,31.79,15 >>Travel toward |cRXP_FRIENDLY_Kym|r
step << Druid
    .goto Thunder Bluff,76.79,31.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
    .train 1850 >> Train your class spells
	.target Kym Wildmane
step << !Shaman !Warrior
    #completewith next
    .goto Thunder Bluff,47.22,49.54,8,0
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>Go up the tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Get the Thunder Bluff Flight Path << !Tauren
    .fly Crossroads >> Fly to the Crossroads
    .target Tal
step << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Korran|r
    .turnin 4921 >>Turn in Lost in Battle
    .goto The Barrens,51.95,31.58
    .turnin 868 >> Turn in Egg Hunt
    .goto The Barrens,51.07,29.63
    .target Mankrik
    .target Korran
step << !Shaman !Warrior
    .goto Ashenvale,68.34,75.30 << !Rogue
    .goto The Barrens,55.44,5.56 << Rogue
    .destroy 5058 >> Delete the |T132834:0|t[Silithid Eggs] from your bags, as they're no longer needed
step << Rogue
    .goto The Barrens,55.38,5.36,60 >>Travel toward |cRXP_ENEMY_Fizzule|r
    >>|cRXP_WARN_Do NOT aggro or attack him. Run away if you do|r
    .target Taskmaster Fizzule
    .isOnQuest 2458
step << Rogue
    .goto The Barrens,55.44,5.56
    .cast 10113 >>Use the |T134536:0|t[Flare Gun]
    >>|cRXP_WARN_It has a 60 yard range|r
    >>|cRXP_WARN_Do NOT aggro or attack him. Run away if you do|r
    .target Taskmaster Fizzule
    .use 8051
    .isOnQuest 2458
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|cRXP_WARN_Target |cRXP_ENEMY_Fizzule|r to salute him within a 40 yard range to turn him friendly|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Mission: Possible But Not Probable << tbc
    .target Taskmaster Fizzule
	.emote SALUTE,7233
    .use 8051
step << Rogue wotlk
    #completewith next
    .destroy 8051 >> Delete the |T134536:0|t[Flare Gun] from your bags, as it's no longer needed
    .destroy 8066 >> Delete |T134374:0|t[Fizzule's Whistle] from your bags, as it's no longer needed
step << Rogue tbc
    #completewith Drones
    +Equip the |T135344:0|t[Leafblade Dagger]
    >>|cRXP_WARN_Skip this step if you already have a better dagger equipped|r
    .use 30504
    .itemcount 30504,1
step << Rogue tbc
    .goto The Barrens,54.80,5.97
    >>Whilst in |T132320:0|t[Stealth], cast |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Silixiz|r to loot him for his |cRXP_LOOT_Tower Key|r
    >>If he turns towards you, back up, walk behind him, then try to |T133644:0|t[Pick Pocket] him again
    >>|cRXP_WARN_Do NOT kill him|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue tbc
    #label Drones
    .goto The Barrens,54.88,5.80,8,0
    .goto The Barrens,54.71,5.75
    >>|cRXP_WARN_Cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Mutated Venture Co. Drone|r to kill it instantly|r
    >>Run away then cast |T132282:0|t[Ambush] on the other |cRXP_ENEMY_Mutated Venture Co. Drone|r if you're too weak to kill it normally
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob Mutated Venture Co. Drone
step << Rogue tbc
#loop
	.line The Barrens,54.70,5.84,54.80,5.78,54.71,5.61,54.67,5.57,54.70,5.84
	.goto The Barrens,54.70,5.84,6,0
	.goto The Barrens,54.80,5.78,6,0
	.goto The Barrens,54.71,5.61,6,0
	.goto The Barrens,54.67,5.57,6,0
	.goto The Barrens,54.70,5.84,6,0
    >>|cRXP_WARN_Re-Equip your main weapon if you equipped a Dagger earlier|r
    >>Go Upstairs. Kill the |cRXP_ENEMY_Venture Co. Patrollers|r. |cRXP_WARN_Cast 1 Combo-Point|r |T132302:0|t[Ruptures] |cRXP_WARN_to deal 50% damage each time|r
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob Venture Co. Patroller
step << Rogue tbc
#loop
	.line The Barrens,54.63,5.64,54.65,5.78,54.74,5.83,54.82,5.74,54.81,5.59,54.71,5.55
	.goto The Barrens,54.63,5.64,6,0
	.goto The Barrens,54.65,5.78,6,0
	.goto The Barrens,54.74,5.83,6,0
	.goto The Barrens,54.82,5.74,6,0
	.goto The Barrens,54.81,5.59,6,0
	.goto The Barrens,54.71,5.55,6,0
    >>Go Upstairs. Kill the |cRXP_ENEMY_Venture Co. Lookouts|r. |cRXP_WARN_Cast 1 Combo-Point|r |T132292:0|t[Eviscerates] |cRXP_WARN_to deal 50% damage each time|r
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob Venture Co. Lookout
step << Rogue tbc
    #completewith Mixture
    +Equip the |T135344:0|t[Leafblade Dagger]
    >>|cRXP_WARN_Skip this step if you already have a better dagger equipped|r
    .use 30504
    .itemcount 30504,1
step << Rogue tbc
    #label Mixture
    .goto The Barrens,54.75,5.59
    >>|cRXP_WARN_Go to the top floor of the tower. Make sure your cooldowns are up|r
    >>Kill |cRXP_ENEMY_Grand Foreman Puzik Gallywix|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Cast|r |T132282:0|t[Ambush] on |cRXP_ENEMY_Gallywix|r, |cRXP_WARN_then re-equip your main weapon|r
    >>Make sure you remember to use your cooldowns such as |T136205:0|t[Evasion] and Potions if you have them
    >>|cRXP_WARN_If you can't kill him, ask for help. It's important to finish this quest now|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue tbc
	.goto The Barrens,54.76,5.56
    >>|cRXP_WARN_Lockpick |cRXP_PICK_Gallywix's Lockbox|r on the top floor of the tower. Loot it for|r |cRXP_LOOT_Zanzil's Mixture|r
    >>|cRXP_WARN_Quickly do this before |cRXP_ENEMY_Gallywix|r respawns|r
	.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue tbc
    >>Use the |T134437:0|t[Anti Venom] to cure the |T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
--VV NOTE some of this section might need to be changed depending on the route
step << Rogue tbc
    >>Use the |T134437:0|t[Strong Anti Venom] to cure the |T136230:0|t[Touch of Zanzil]
    .itemcount 6453,1
    .use 6453
step << Rogue tbc
    #label PoisonCleanse
    >>You'll now have the |T136230:0|t[Touch of Zanzil] debuff that lasts a week. |cRXP_WARN_Closely follow the route to remove it|r
    +Alternatively, ask friendly nearby |cRXP_FRIENDLY_Paladins|r to cast |T135953:0|t[Cleanse], |cRXP_FRIENDLY_Druids|r to cast |T136068:0|t[Abolish Poison], and |cRXP_FRIENDLY_Shamans|r to cast |T136068:0|t[Cure Toxins] on you to remove your |T136230:0|t[Touch of Zanzil] debuff. This will save you a LOT of time
    >>|cRXP_WARN_If this happens, click this step|r
    .itemcount 6452,<1
    .itemcount 6453,<1
step << Rogue tbc
    #completewith PoisonCleanse
	.goto The Barrens,61.21,5.54,80,0
	.goto The Barrens,60.90,3.82,10,0
	.goto The Barrens,60.51,3.80,10,0 >>Travel toward the Boulder Lode Mine
    .zoneskip Orgrimmar
step << skip --Rogue tbc
    #label LogoutSkipRogue
    #completewith PoisonCleanse
    .zone Orgrimmar >>|cRXP_WARN_Jump onto the wooden beam above the |cRXP_PICK_Brazier|r. Perform a Logout Skip by logging out on top of the beam, then logging back in|r
    .link https://www.youtube.com/watch?v=UyGnwTEFGyM >> |cRXP_WARN_CLICK HERE|r
step << Rogue tbc
    #requires LogoutSkipRogue
    #completewith next
	.goto Orgrimmar,40.55,63.82,20,0
	.goto Orgrimmar,38.94,54.58,20,0
	.goto Orgrimmar,41.99,56.86,20,0
	.goto Orgrimmar,43.76,56.37,20,0
    .goto Orgrimmar,43.61,53.40,15,0
    .goto Orgrimmar,43.05,53.73,10 >> Travel toward |cRXP_FRIENDLY_Shenthul|r
step << Rogue tbc
    #label PossibleBNP
    #completewith PoisonCleanse
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
    .target Shenthul
step << Rogue tbc
    #requires PossibleBNP
    #label AVAH2
    #completewith PoisonCleanse
    .goto Orgrimmar,53.63,64.69,20,0
    .goto Orgrimmar,55.75,64.87,20,0
    .goto Orgrimmar,50.68,70.37,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wabang|r
    +|cRXP_BUY_Buy either an|r |T134437:0|t[Anti Venom] |cRXP_BUY_or|r |T134437:0|t[Strong Anti Venom] |cRXP_BUY_from the AH if it's cheap. This will save you time later|r
    >>|cRXP_WARN_If you can't afford either, skip this step|r
    .itemcount 6452,<1
    .itemcount 6453,<1
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
step << Rogue tbc
    #requires AVAH2
    #completewith PoisonCleanse
    >>Use the |T134437:0|t[Anti Venom] to cure the |T136230:0|t[Touch of Zanzil]
    .itemcount 6452,1
    .use 6452
step << Rogue tbc
    #requires AVAH2
    #label Antivenomuse2
    #completewith PoisonCleanse
    >>Use the |T134437:0|t[Strong Anti Venom] to cure the |T136230:0|t[Touch of Zanzil]
    .itemcount 6453,1
    .use 6453
step << Rogue tbc
    #requires Antivenomuse2
    #completewith next
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Durotar,50.61,13.27
    .zone Durotar >> Exit Orgrimmar
step << Rogue tbc
    #label TirisZeppR
    #requires Antivenomuse2
    #completewith PoisonCleanse
    .goto Durotar,50.61,13.27,12,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.89,14.14,-1
    .goto Durotar,56.75,15.11,-1
    >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal
step << Rogue tbc
    #requires TirisZeppR
    #completewith PoisonCleanse
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity
step << Rogue tbc
    #requires TirisZeppR
    #label FlyTarrenR
    #completewith PoisonCleanse
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fly Tarren Mill >> Fly to Tarren Mill
    .target Michael Garrett
step << Rogue tbc
    #requires FlyTarrenR
    #label Hinott1
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.51,19.42,8,0
    .goto Hillsbrad Foothills,61.63,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge|r
    .turnin 2479 >>Turn in Hinott's Assistance
    .accept 2480 >>Accept Hinott's Assistance
    .timer 30,Hinott's Assistance RP
    .target Serge Hinott
step << Rogue tbc
    #requires Hinott1
    #label Hinott2
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.59,18.95
    >>|cRXP_WARN_Wait out the RP|r
    .complete 2480,1 --Cure Completed
step << Rogue tbc
    #requires Hinott2
    #label Hinott3
    #completewith PoisonCleanse
    .goto Hillsbrad Foothills,61.59,18.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge|r
    .turnin 2480 >>Turn in Hinott's Assistance
    .target Serge Hinott
step << Rogue tbc
    #label HinottOil
    #completewith PoisonCleanse
    >>Use |T134807:0|t[Hinott's Oil] to cure the |T136230:0|t[Touch of Zanzil]
    .use 8095
    .itemcount 8095,1
step << Rogue tbc
    #requires HinottOil
    #completewith Torek
    .hs >> Hearth to Thunder Bluff
    .zoneskip The Barrens
step << Rogue tbc
    #requires HinottOil
    #completewith next
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>Go up the tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >> Fly to the Crossroads
    .target Tal
step << Rogue !tbc
    .goto The Barrens,49.16,12.48,40,0
    .goto The Barrens,48.12,5.42,100 >>Travel toward |cRXP_FRIENDLY_Kadrak|r
step
    #requires HinottOil << Rogue tbc
    #completewith next
    .goto The Barrens,48.16,5.33,6,0
    .goto The Barrens,48.11,5.24,6 >> Travel up the tower
step
    #requires HinottOil << Rogue tbc
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 3513 >> Turn in The Runed Scroll
    .isOnQuest 3513
step
    #requires HinottOil << Rogue tbc
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
step << Warlock
#loop
	.line Ashenvale,67.36,82.59,67.30,80.85,66.61,79.75,65.53,79.62,65.16,80.23,65.74,81.65,65.66,82.72,66.61,84.10,67.03,83.39,67.36,82.59
	.goto Ashenvale,67.36,82.59,40,0
	.goto Ashenvale,67.30,80.85,40,0
	.goto Ashenvale,66.61,79.75,40,0
	.goto Ashenvale,65.53,79.62,40,0
	.goto Ashenvale,65.16,80.23,40,0
	.goto Ashenvale,65.74,81.65,40,0
	.goto Ashenvale,65.66,82.72,40,0
	.goto Ashenvale,66.61,84.10,40,0
	.goto Ashenvale,67.03,83.39,40,0
	.goto Ashenvale,67.36,82.59,40,0
    >>Kill |cRXP_ENEMY_Shadethicket Stone Movers|r and |cRXP_ENEMY_Shadethicket Bark Rippers|r. Loot them for the |cRXP_LOOT_Withered Scarf|r
    .complete 65610,1 --Withered Scarf
    .mob Shadethicket Stone Mover
    .mob Shadethicket Bark Ripper
step
    #label Torek1
    #requires HinottOil << Rogue tbc
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
    >>|cRXP_WARN_If he's not up, skip this step|r
    >>Cast |T136221:0|t[Summon Voidwalker] before accepting the quest if you don't already have a |cRXP_FRIENDLY_Voidwalker|r out << Warlock
    .accept 6544 >> Accept Torek's Assault
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Follow |cRXP_FRIENDLY_Torek|r
    >>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
    >>When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage
    >>|cRXP_WARN_Skip this step if you die|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
    .isOnQuest 6544
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r and |cRXP_FRIENDLY_Sunsworn|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r << !BloodElf
    .accept 6503 >> Accept Ashenvale Outrunners
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >> Turn in Report to Splintertree Post << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .target Kuray'bin
    .target Advisor Sunsworn << BloodElf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r, |cRXP_FRIENDLY_Mastok|r, and |cRXP_FRIENDLY_Pixel|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r and |cRXP_FRIENDLY_Mastok|r << Shaman/Warrior
    .turnin 6382 >> Turn in The Ashenvale Hunt << Shaman/Warrior
    .turnin 6383 >> Turn in The Ashenvale Hunt
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .accept 25 >> Accept Stonetalon Standstill
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .accept 6441 >> Accept Satyr Horns << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Get the Splintertree Post flight path
    .target Vhulgra
step
    .goto Ashenvale,73.03,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Turn in Torek's Assault
    .target Ertog Ragetusk
    .isQuestComplete 6544
step
    .abandon 6544 >> Abandon Torek's Assault
step
    #completewith next
    .goto Ashenvale,75.25,71.86,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r]
    >>|cRXP_WARN_Use |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] to start the quest|r
    >>|cRXP_ENEMY_Sharptalon|r patrols around slightly
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Sharptalon|r back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit|r
    .collect 16305,1,2,1 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
--VV yes the quest ID is actually 2
step
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    .goto Ashenvale,76.15,67.60
    >>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_They are stealthed|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .goto Ashenvale,78.24,65.72
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r]
    >>|cRXP_WARN_Use |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] to start the quest|r
    >>|cRXP_ENEMY_Sharptalon|r patrols around slightly
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Sharptalon|r back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit|r
    .collect 16305,1,2,1 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
step << !Shaman !Warrior
    #completewith next
    .goto Ashenvale,72.54,50.48,40,0
    .goto Ashenvale,71.90,49.60,40,0
    .goto Ashenvale,71.90,49.60,50 >> Travel toward Night Run
step << !Shaman !Warrior
#loop
	.line Ashenvale,68.84,53.16,67.41,55.32,66.70,57.09,66.23,55.16,66.58,51.68,66.62,54.28,67.15,54.63,67.96,54.20,68.84,53.16
	.goto Ashenvale,68.84,53.16,40,0
	.goto Ashenvale,67.41,55.32,40,0
	.goto Ashenvale,66.70,57.09,40,0
	.goto Ashenvale,66.23,55.16,40,0
	.goto Ashenvale,66.58,51.68,40,0
	.goto Ashenvale,66.62,54.28,40,0
	.goto Ashenvale,67.15,54.63,40,0
	.goto Ashenvale,67.96,54.20,40,0
	.goto Ashenvale,68.84,53.16,40,0
    >>Kill |cRXP_ENEMY_Felmusk Shadowstalkers|r, |cRXP_ENEMY_Felmusk Satyrs|r, and |cRXP_ENEMY_Felmusk Felsworns|r. Loot them for their |cRXP_LOOT_Satyr Horns|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Felmusk Shadowstalkers|r cast|r |T132092:0|t[Shadowstalker Slash] |cRXP_WARN_(Cheap Shot) and are stealthed|r
    >>|cRXP_WARN_Be VERY careful as all the Felmusk cast|r |T136119:0|t[Overwhelming Stench], |cRXP_WARN_an instant-cast 6 second silence|r
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
--VV bad quest but its to help with xp gate later (shimmering 32, stv 35). Shaman/Warriors get about a level ahead so they can skip it
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38,
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r]
    >>|cRXP_WARN_Use |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] to start the quest|r
    >>|cRXP_ENEMY_Shadumbra|r patrols around slightly
    .collect 16304,1,24,1 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step
    #label Etched
    .goto Ashenvale,62.24,49.50,40,0
    .goto Ashenvale,61.58,50.20,40,0
    .goto Ashenvale,61.39,51.40,40,0
    .goto Ashenvale,61.53,52.59,40,0
    .goto Ashenvale,60.86,52.57,40,0
    .goto Ashenvale,60.42,53.10,40,0
    .goto Ashenvale,59.92,53.53,40,0
    .goto Ashenvale,59.84,54.42,40,0
    .goto Ashenvale,60.42,55.23,40,0
    .goto Ashenvale,60.34,56.01,40,0
    .goto Ashenvale,59.84,55.60,40,0
    .goto Ashenvale,59.83,56.26,40,0
    .goto Ashenvale,59.29,56.97,40,0
    .goto Ashenvale,59.11,56.29,40,0
    .goto Ashenvale,58.62,56.80,40,0
    .goto Ashenvale,58.67,56.11,40,0
    .goto Ashenvale,58.10,56.16,40,0
    .goto Ashenvale,58.65,55.37,40,0
    .goto Ashenvale,58.65,54.51,40,0
    .goto Ashenvale,62.24,49.50
    >>Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for the |T134776:0|t[|cRXP_LOOT_Etched Phial|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
step
    #label Shadumbra
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r]
    >>|cRXP_WARN_Use |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] to start the quest|r
    >>|cRXP_ENEMY_Shadumbra|r patrols around slightly
    .collect 16304,1,24,1 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>Use the |T132821:0|t[Empty Blue Waterskin] under the Gazebo
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,41.46,67.44,0
    .goto Ashenvale,39.81,62.94,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,39.81,62.94
    >>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r]
    >>|cRXP_WARN_Use |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] to start the quest|r
    >>|cRXP_ENEMY_Ursangous|r patrols around slightly
    .collect 16303,1,23,1 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step << !Warrior !Shaman
    #completewith next
    .cast 7840 >> Use the |T134754:0|t[Swim Speed Potion] in the water to swim across it faster
    .use 6372
    .itemcount 6372,1
--VV from ghostlands
step
    #completewith Tideress
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,48.71,69.54,40,0
    >>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]
    >>|cRXP_WARN_Use the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r] to start the quest|r
    >>|cRXP_ENEMY_Tideress|r patrols around the island and underwater
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Go under the Gazebo
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,48.36,69.74,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,45.84,70.67
    >>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]
    >>|cRXP_WARN_Use the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r] to start the quest|r
    >>|cRXP_ENEMY_Tideress|r patrols around the island and underwater
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
    .use 16408
    .unitscan Tideress
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>Use the |T134776:0|t[|cRXP_LOOT_Etched Phial|r] in the Moonwell
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r to start the escort
    >>Cast |T136221:0|t[Summon Voidwalker] before accepting the quest if you don't already have a |cRXP_FRIENDLY_Voidwalker|r out << Warlock
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_has a 5 minute respawn time|r
    .accept 6544 >> Accept Torek's Assault
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Follow |cRXP_FRIENDLY_Torek|r
    >>Let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r tank the |cRXP_ENEMY_Silverwing Warriors|r and |cRXP_ENEMY_Silverwing Sentinels|r
    >>When you clear the building, run toward the Balcony. When |cRXP_ENEMY_Duriel Moonfire|r comes, let |cRXP_FRIENDLY_Torek|r and his |cRXP_FRIENDLY_Splintertree Raiders|r take aggro before you deal damage
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    #completewith next
    .goto Ashenvale,61.06,71.96,10,0
    .goto Ashenvale,61.38,72.48,15,0
    .goto Ashenvale,71.10,68.12,20 >>Travel toward |cRXP_FRIENDLY_Kuray'bin|r
    .isQuestTurnedIn 6544
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Turn in Ashenvale Outrunners
    .target Kuray'bin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r, |cRXP_FRIENDLY_Mastok|r, |cRXP_FRIENDLY_Pixel|r, and |cRXP_FRIENDLY_Ertog|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r, |cRXP_FRIENDLY_Mastok|r, and |cRXP_FRIENDLY_Ertog|r << Shaman/Warrior
    .turnin 2 >> Turn in Sharptalon's Claw
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 24 >> Turn in Shadumbra's Head
    .turnin 247 >> Turn in The Hunt Completed
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >> Turn in The Befouled Element
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .turnin 6441 >> Turn in Satyr Horns << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .turnin 6544 >> Turn in Torek's Assault
    .goto Ashenvale,73.03,62.47
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
    .target Ertog Ragetusk
    .isOnQuest 6544
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r, |cRXP_FRIENDLY_Mastok|r, and |cRXP_FRIENDLY_Pixel|r << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani|r and |cRXP_FRIENDLY_Mastok|r << Shaman/Warrior
    .turnin 2 >> Turn in Sharptalon's Claw
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 24 >> Turn in Shadumbra's Head
    .turnin 247 >> Turn in The Hunt Completed
    .goto Ashenvale,73.45,63.56,30,0
    .goto Ashenvale,73.78,61.46
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >> Turn in The Befouled Element
    .goto Ashenvale,73.55,60.58,12,0
    .goto Ashenvale,73.67,60.01
    .turnin 6441 >> Turn in Satyr Horns << !Shaman !Warrior
    .goto Ashenvale,73.06,61.48 << !Shaman !Warrior
    .target Senani Thunderheart
    .target Mastok Wrilehiss
    .target Pixel << !Shaman !Warrior
step << Druid
	#completewith next
	.cast 18960 >> Cast |T135758:0|t[Teleport: Moonglade]
	.zoneskip Moonglade
    .xp <28,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 2091 >> Train your class spells
	.target Loganaar
    .xp <28,1
step << Mage
	#completewith next
	.cast 3563 >> Cast |T135766:0|t[Teleport: Undercity]
    .zoneskip Undercity
    .train 3563,1
    .xp <28,1
step << Mage
    .goto Undercity,85.14,10.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r
	.train 759 >> Train your class spells
	.target Anastasia Hartwell
    .xp <28,1
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah|r
    .vendor >>|cRXP_BUY_Buy up to 20|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
    .target Horthus
    .itemcount 17031,<20
    .target Hannah Akeley
step
    #completewith SacredF1
    .abandon 1918 >> Abandon The Befouled Element
    .destroy 16408 >> Delete the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r] from your bags, as it's no longer needed
step
    .hs >> Hearth to Crossroads << Shaman/Warrior
    .hs >> Hearth to Thunder Bluff << !Shaman !Warrior
    .cooldown item,6948,>0
step << !Shaman !Warrior
    #completewith SacredF1
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .cooldown item,6948,<0
    .target Vhulgra
    .zoneskip Ashenvale,1
step << !Shaman !Warrior
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from her|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133994:0|t[Stormwind Brie] |cRXP_BUY_from her|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133994:0|t[Stormwind Brie] |cRXP_BUY_from her|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 1707,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Stormwind Brie (20)
    .collect 1707,10,1145,1 << Paladin --Stormwind Brie (10)
    .target Innkeeper Pala
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Shaman/Warrior
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boorand|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133976:0|t[Goldenbark Apples] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin !Shaman
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133976:0|t[Goldenbark Apples] |cRXP_BUY_from him|r << Paladin/Shaman
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin/Shaman --Sweet Nectar (20)
    .collect 4539,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin !Shaman --Goldenbark Apple (20)
    .collect 4539,10,1145,1 << Paladin/Shaman --Goldenbark Apple (10)
    .target Innkeeper Boorand Plainswind
    .money <0.4000 << !Paladin !Shaman
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step << Warrior/Shaman
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r
    .accept 1145 >> Accept The Swarm Grows
    .target Korran
    .xp <29,1
step << Warrior/Shaman
    #completewith SacredF1
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Devrak
    .zoneskip The Barrens,1
step << Shaman/Warrior
    #completewith next
    .goto Thunder Bluff,45.81,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
	.home >> Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
step
    #label SacredF1
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >> Turn in The Sacred Flame
    .accept 1196 >> Accept The Sacred Flame
    .target Zangen Stonehoof
step << Shaman/Warrior
    #completewith next
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,22.83,20.88,20 >>Travel toward |cRXP_FRIENDLY_Zamah|r inside the cave
step << Shaman/Warrior
    .goto Thunder Bluff,22.83,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
	.turnin 1067 >> Turn in Return to Thunder Bluff
    .target Apothecary Zamah
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 27-28 Southern Barrens JJ
#version 1
#group RestedXP Horde 1-30
#next 28-30 Thousand Needles JJ
#xprate >1.4999

step << Hunter
    .goto Thunder Bluff,59.14,86.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Train your class spells
    .target Urek Thunderhorn
    .xp <28,1
step << Warrior
    .goto Thunder Bluff,57.57,85.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
    .train 871 >> Train your class spells
    .target Ker Ragetotem
    .xp <28,1
 step << Shaman
	#completewith next
    .goto Thunder Bluff,29.81,29.96,15,0
    .goto Thunder Bluff,25.35,30.97,20,0
    .goto Thunder Bluff,25.35,30.97,20 >> Travel toward |cRXP_FRIENDLY_Siln|r and |cRXP_FRIENDLY_Tigor|r
step << Shaman
    .goto Thunder Bluff,22.83,21.13,-1
    .goto Thunder Bluff,23.63,18.80,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siln|r or |cRXP_FRIENDLY_Tigor|r
	.train 52129 >> Train your class spells << wotlk
	.train 8008 >> Train your class spells << tbc
	.target Siln Skychaser
	.target Tigor Skychaser
    .xp <28,1
step << Priest
    #completewith next
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,25.65,20.69,20 >>Go inside the cave toward |cRXP_FRIENDLY_Cobb|r
step << Priest
    .goto Thunder Bluff,25.65,20.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cobb|r
	.train 15430 >> Train your class spells
	.target Father Cobb
    .xp <28,1
step
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>Go up the tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Tal
    .skill riding,<75,1 << Tauren wotlk
    .zoneskip Thunder Bluff,1
step << Tauren wotlk
    .goto Mulgore,47.65,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kar Stormsinger
    .money <4.5
step << Tauren wotlk
    .goto Mulgore,47.49,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
    +|cRXP_BUY_Buy any|r |T132243:0|t[Kodo] |cRXP_BUY_that you like from him|r
	.target Harb Clawhoof
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 --White Kodo
    .money <0.9
    .skill riding,<75,1
step << Tauren wotlk
    .cast 55884 >> Use the |T132243:0|t[Gray Kodo] to learn it
    .use 15277
    .itemcount 15277,1
    .skill riding,75,1
step << Tauren wotlk
    .cast 55884 >> Use the |T132245:0|t[Brown Kodo] to learn it
    .use 15290
    .itemcount 15290,1
    .skill riding,75,1
step << Tauren wotlk
    .cast 55884 >> Use the |T132243:0|t[White Kodo] to learn it
    .use 46100
    .itemcount 46100,1
    .skill riding,75,1
step << Tauren wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[Gray Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18989 >> Mount your |T132243:0|t[Gray Kodo]
    .train 18989,3
    .zoneskip Mulgore,1
step << Tauren wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132245:0|t[Brown Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18990 >> Mount your |T132245:0|t[Brown Kodo]
    .train 18990,3
    .zoneskip Mulgore,1
step << Tauren wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[White Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 64657 >> Mount your |T132243:0|t[White Kodo]
    .train 64657,3
    .zoneskip Mulgore,1
step << Tauren wotlk
    .goto The Barrens,41.40,58.55
    .zone The Barrens >>Travel to The Barrens
    .zoneskip Mulgore,1
step
#loop
	.line The Barrens,50.07,52.96,49.99,53.44,46.07,49.11,46.20,49.74,45.39,52.31,45.14,52.37,45.12,52.73,50.07,52.96
	.goto The Barrens,50.07,52.96,40,0
	.goto The Barrens,49.99,53.44,40,0
	.goto The Barrens,46.07,49.11,40,0
	.goto The Barrens,46.20,49.74,40,0
	.goto The Barrens,45.39,52.31,40,0
	.goto The Barrens,45.14,52.37,40,0
	.goto The Barrens,45.12,52.73,40,0
	.goto The Barrens,50.07,52.96,40,0
    >>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    .collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
    .accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'Mani
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r and |cRXP_FRIENDLY_Ruga|r << Warrior
    .turnin 883 >> Turn in Lakota'mani
    .goto The Barrens,44.86,59.13
    .turnin 1823 >> Turn in Speak with Ruga << Warrior
-- .accept 1824 >> Accept Trial at the Field of Giants
    .goto The Barrens,44.80,59.22,6,0 << Warrior
    .goto The Barrens,44.67,59.42 << Warrior
    .target Jorn Skyseer
    .target Ruga Ragetotem << Warrior
    .isOnQuest 883 << Warrior
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga|r
    .turnin 1823 >> Turn in Speak with Ruga
--  .accept 1824 >> Accept Trial at the Field of Giants
    .goto The Barrens,44.80,59.22,6,0
    .goto The Barrens,44.67,59.42
    .target Ruga Ragetotem
step
#loop
	.line The Barrens,44.33,61.78,44.06,62.18,45.57,62.95,45.75,62.52,49.67,59.54,49.42,61.04,49.18,61.45,44.33,61.78
	.goto The Barrens,44.33,61.78,40,0
	.goto The Barrens,44.06,62.18,40,0
	.goto The Barrens,45.57,62.95,40,0
	.goto The Barrens,45.75,62.52,40,0
	.goto The Barrens,49.67,59.54,40,0
	.goto The Barrens,49.42,61.04,40,0
	.goto The Barrens,49.18,61.45,40,0
	.goto The Barrens,44.33,61.78,40,0
    >>Kill |cRXP_ENEMY_Owatanka|r. Loot him for |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatanka's Tailspike|r] to start the quest|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Accept Owatanka
    .use 5102
    .unitscan Owatanka
step << skip
    #completewith next
    >>Kill the |cRXP_ENEMY_Silithid Harvester|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]
    >>|cRXP_WARN_Use the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r] to start the quest|r
    >>|cRXP_WARN_Skip this quest if you can't find him|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>Accept The Harvester
    .use 5138
    .unitscan Silithid Harvester
step << skip
#loop
	.line The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
	.goto The Barrens,45.17,69.08,40,0
	.goto The Barrens,43.87,68.84,40,0
	.goto The Barrens,42.17,69.65,40,0
	.goto The Barrens,42.35,71.85,40,0
	.goto The Barrens,42.77,72.28,40,0
	.goto The Barrens,43.86,72.06,40,0
	.goto The Barrens,45.38,72.25,40,0
	.goto The Barrens,45.17,69.08,40,0
    >>Kill |cRXP_ENEMY_Silithid Protectors|r, |cRXP_ENEMY_Silithid Swarmers|r, |cRXP_ENEMY_Silithid Creepers|r and |cRXP_ENEMY_Silithid Grubs|r. Loot them for their |T133027:0|t[Twitching Antenna]
    >>|cRXP_WARN_NOTE: The |T133027:0|t[Twitching Antenna] only have a 15 minute duration, do not AFK or logout during this quest|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << skip
    .goto The Barrens,45.17,69.08,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruga|r
    >>|cRXP_WARN_NOTE: The |T133027:0|t[Twitching Antenna] only have a 15 minute duration, do not AFK or logout during this quest|r
    >>|cRXP_WARN_If your |T133027:0|t[Twitching Antenna] disappear, return to the Field of Giants and collect 5 more|r
    .turnin 1824 >> Turn in Trial at the Field of Giants
    .goto The Barrens,44.80,59.22,6,0
    .goto The Barrens,44.67,59.42
    .target Ruga Ragetotem
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 897 >> Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Jorn Skyseer
    .isOnQuest 897
step
    #optional
    #completewith next
    .goto The Barrens,45.19,69.55,45,0
    .goto The Barrens,42.74,69.72,45,0
    .goto The Barrens,43.47,71.19,45,0
    .goto The Barrens,44.69,72.32,45,0
    .goto The Barrens,48.87,69.96,45,0
    >>Kill the |cRXP_ENEMY_Silithid Harvester|r. Loot it for the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]
    >>|cRXP_WARN_Use the |T134321:0|t[|cRXP_LOOT_Harvester's Head|r] to start the quest|r
    >>|cRXP_WARN_Skip this quest if you can't find him|r
    .collect 5138,1,897,1 --Collect Harvester's Head
    .accept 897 >>Accept The Harvester
    .use 5138
    .unitscan Silithid Harvester
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Travel toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1534 >>Turn in Call of Water
    .accept 220 >>Accept Call of Water
    .target Brine
step
    #completewith next
    .goto The Barrens,44.76,74.79,45,0 << !Shaman
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .accept 843 >> Accept Gann's Reclamation
    .target Gann Stonespire
step << Shaman/Warrior
    #completewith Lok
    >>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for the |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
    >>Kill |cRXP_ENEMY_Razormane Seers|r. Loot them for the |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
    >>Kill |cRXP_ENEMY_Razormane Warfrenzies|r. Loot them for the |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
    .mob Razormane Seer
    .mob Razormane Warfrenzy
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,44.85,78.81,45,0
    .goto The Barrens,44.44,78.97,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman/Warrior
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.37,79.85
#loop
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
	.goto The Barrens,44.37,79.85,45,0
	.goto The Barrens,44.83,79.87,45,0
	.goto The Barrens,45.05,79.75,45,0
	.goto The Barrens,45.12,79.20,45,0
	.goto The Barrens,44.89,78.87,45,0
	.goto The Barrens,44.43,78.71,45,0
	.goto The Barrens,43.80,79.46,45,0
	.goto The Barrens,43.66,79.12,45,0
	.goto The Barrens,43.48,78.95,45,0
	.goto The Barrens,43.07,78.98,45,0
	.goto The Barrens,42.65,79.87,45,0
	.goto The Barrens,42.82,80.23,45,0
	.goto The Barrens,43.24,80.49,45,0
	.goto The Barrens,43.49,80.48,45,0
	.goto The Barrens,43.63,80.97,45,0
	.goto The Barrens,43.79,81.40,45,0
	.goto The Barrens,44.15,81.44,45,0
	.goto The Barrens,44.83,80.95,45,0
	.goto The Barrens,45.46,80.91,45,0
	.goto The Barrens,45.52,80.47,45,0
	.goto The Barrens,45.10,80.30,45,0
	.goto The Barrens,44.66,80.49,45,0
	.goto The Barrens,44.31,80.79,45,0
	.goto The Barrens,44.16,80.46,45,0
	.goto The Barrens,44.03,80.38,45,0
	.goto The Barrens,43.91,80.46,45,0
	.goto The Barrens,44.06,80.02,45,0
	.goto The Barrens,44.37,79.85,45,0
    >>Kill |cRXP_ENEMY_Kuz|r. Loot him for |cRXP_LOOT_Kuz's Skull|r
    >>|cRXP_ENEMY_Kuz|r patrols around slightly
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,43.14,80.75,45,0
    .goto The Barrens,43.35,81.16,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman/Warrior
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>Kill |cRXP_ENEMY_Lok Orcbane|r. Loot him for |cRXP_LOOT_Lok's Skull|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
step << !Shaman !Warrior
    #completewith WandShield
    .goto The Barrens,44.85,78.81,45,0
    .goto The Barrens,44.44,78.97,45,0
    .goto The Barrens,43.14,80.75,45,0
    .goto The Barrens,43.35,81.16,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #completewith next
    >>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for the |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
#loop
	.line The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
	.goto The Barrens,42.57,78.81,45,0
	.goto The Barrens,42.12,78.48,45,0
	.goto The Barrens,41.49,78.69,45,0
	.goto The Barrens,41.22,79.72,45,0
	.goto The Barrens,40.91,80.60,45,0
	.goto The Barrens,40.55,80.84,45,0
	.goto The Barrens,41.62,80.92,45,0
	.goto The Barrens,41.54,82.28,45,0
	.goto The Barrens,42.48,82.28,45,0
	.goto The Barrens,42.57,78.81,45,0
    >>Kill |cRXP_ENEMY_Razormane Seers|r. Loot them for the |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
    >>Kill |cRXP_ENEMY_Razormane Warfrenzies|r. Loot them for the |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
    .complete 893,2 --Collect Charred Razormane Wand (x1)
    .complete 893,3 --Collect Razormane War Shield (x1)
    .mob Razormane Seer
    .mob Razormane Warfrenzy
step << Shaman/Warrior
#loop
	.line The Barrens,44.07,83.34,43.54,83.14,43.60,83.69,44.07,83.34
	.goto The Barrens,44.07,83.34,30,0
	.goto The Barrens,43.54,83.14,30,0
	.goto The Barrens,43.60,83.69,30,0
	.goto The Barrens,44.07,83.34,30,0
    >>Kill |cRXP_ENEMY_Nak|r. Loot him for |cRXP_LOOT_Nak's Skull|r
    .complete 879,2 --Lok's Skull (1)
    .mob Nak
step
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89
    >>Kill |cRXP_ENEMY_Razormane Stalkers|r and |cRXP_ENEMY_Razormane Pathfinders|r. Loot them for the |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_Razormane Stalkers|r are stealthed|r
    .complete 893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bael'dun Excavators|r and |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob Bael'dun Excavator
    .mob Bael'dun Foreman
step
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19
	>>Kill |cRXP_ENEMY_Prospector Khazgorm|r. Loot him for |cRXP_LOOT_Khazgorm's Journal|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
step
#loop
	.line The Barrens,47.22,84.98,47.28,85.74,47.60,85.66,48.43,86.34,48.03,85.46,47.94,84.86,47.37,84.01,46.92,84.22,46.99,85.82,47.22,84.98
	.goto The Barrens,47.22,84.98,30,0
	.goto The Barrens,47.28,85.74,30,0
	.goto The Barrens,47.60,85.66,30,0
	.goto The Barrens,48.43,86.34,30,0
	.goto The Barrens,48.03,85.46,30,0
	.goto The Barrens,47.94,84.86,30,0
	.goto The Barrens,47.37,84.01,30,0
	.goto The Barrens,46.92,84.22,30,0
	.goto The Barrens,46.99,85.82,30,0
	.goto The Barrens,47.22,84.98,30,0
    >>Kill |cRXP_ENEMY_Bael'dun Excavators|r and |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob Bael'dun Excavator
    .mob Bael'dun Foreman
step
    #xprate <1.7
#loop
	.line The Barrens,47.22,84.98,47.28,85.74,47.60,85.66,48.43,86.34,48.03,85.46,47.94,84.86,47.37,84.01,46.92,84.22,46.99,85.82,47.22,84.98
	.goto The Barrens,47.22,84.98,40,0
	.goto The Barrens,47.28,85.74,40,0
	.goto The Barrens,47.60,85.66,40,0
	.goto The Barrens,48.43,86.34,40,0
	.goto The Barrens,48.03,85.46,40,0
	.goto The Barrens,47.94,84.86,40,0
	.goto The Barrens,47.37,84.01,40,0
	.goto The Barrens,46.92,84.22,40,0
	.goto The Barrens,46.99,85.82,40,0
	.goto The Barrens,47.22,84.98,40,0
    .xp 27+15500 >> Grind to 15500+/32200xp
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 843 >> Turn in Gann's Reclamation
    .accept 846 >> Accept Revenge of Gann
    .target Gann Stonespire
step
    #completewith next
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    .goto The Barrens,48.63,84.49,110 >>Travel to Bael Modan
    .isOnQuest 846
step
    #completewith TearMoons
    .goto The Barrens,48.63,84.49,45,0
    >>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loot them for their |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
    .accept 857 >> Accept The Tear of the Moons
    .target Feegly the Exiled
step
    #completewith next
    .goto The Barrens,48.87,85.62,10,0
    .goto The Barrens,49.09,85.37,10,0
    .goto The Barrens,48.85,84.88,15 >> Travel to Bael Modan
    .isOnQuest 846
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>Go down to the bottom floor of Bael'dun
step
    .goto The Barrens,49.13,84.25
    >>Open |cRXP_PICK_General Twinbraid's Strongbox|r. Loot it for the |cRXP_LOOT_Tear of the Moons|r
    >>|cRXP_WARN_Be careful as it is very easy overpull in |cRXP_ENEMY_General Twinbraid|r's room|r
    >>|cRXP_WARN_Directly pull any mob other than |cRXP_ENEMY_General Twinbraid|r|r
    >>|cRXP_WARN_Make sure your cooldowns are available|r
    .complete 857,1 --Tear of the Moons (1)
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>Exit Bael'dun's Keep
step
    #label TearMoons
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >> Turn in The Tear of the Moons
    .target Feegly the Exiled
step
#loop
	.line The Barrens,48.96,84.36,48.88,84.02,49.28,83.76,49.22,84.21,49.47,84.41,49.09,84.67,48.96,84.36
	.goto The Barrens,48.96,84.36,20,0
	.goto The Barrens,48.88,84.02,20,0
	.goto The Barrens,49.28,83.76,20,0
	.goto The Barrens,49.22,84.21,20,0
	.goto The Barrens,49.47,84.41,20,0
	.goto The Barrens,49.09,84.67,20,0
	.goto The Barrens,48.96,84.36,20,0
    >>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loot them for their |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith WeaponsOC
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >> Turn in Revenge of Gann
    .accept 849 >> Accept Revenge of Gann
    .target Gann Stonespire
step << !Shaman !Warrior
    #xprate >1.6999
    #completewith next
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >> Turn in Revenge of Gann
    .accept 849 >> Accept Revenge of Gann
    .target Gann Stonespire
step
#loop
	.line The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
	.goto The Barrens,44.85,78.81,45,0
	.goto The Barrens,44.44,78.97,45,0
	.goto The Barrens,43.14,80.75,45,0
	.goto The Barrens,43.35,81.16,45,0
	.goto The Barrens,47.22,79.72,45,0
	.goto The Barrens,47.21,79.35,45,0
	.goto The Barrens,44.76,74.79,45,0
	.goto The Barrens,44.85,78.81,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]
    >>|cRXP_WARN_Use |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r] to start the quest|r
    .collect 5103,1,885,1 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 885 >>Turn in Washte Pawne
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 885
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 885 >>Turn in Washte Pawne
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 885
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 885 >>Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
    .isOnQuest 885
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 884
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 885 >>Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 885
step
    #xprate <1.7 << !Shaman !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r, |cRXP_FRIENDLY_Jorn|r, and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .target Mangletooth << Shaman/Warrior
    .isOnQuest 897
step
    #xprate <1.7 << !Shaman !Warrior
    #label WeaponsOC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Mangletooth|r << Shaman/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r << !Shaman !Warrior
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 879 >> Turn in Betrayal from Within << Shaman/Warrior
    .accept 906 >> Accept Betrayal from Within << Shaman/Warrior
    .goto The Barrens,44.54,59.27 << Shaman/Warrior
    .target Tatternack Steelforge
    .target Mangletooth << Shaman/Warrior
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 846 >> Turn in Revenge of Gann
    .accept 849 >> Accept Revenge of Gann
    .target Gann Stonespire
step
    .goto The Barrens,46.97,85.63
    >>Click the |cRXP_PICK_Bael Modan Flying Machine|r atop the platform
    >>|cRXP_WARN_This has a 50 yard range|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.12,81.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
    .turnin 849 >> Turn in Revenge of Gann
    .target Gann Stonespire
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 28-30 Thousand Needles JJ
#version 1
#group RestedXP Horde 1-30
#next RestedXP Horde 30-45\30-32 Hillsbrad/Arathi JJ
#xprate >1.4999

step
    .goto Thousand Needles,32.24,22.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moonhorn|r
    .accept 4542 >> Accept Message to Freewind Post
    .target Brave Moonhorn
step
    #completewith Freewind1
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]
    >>|cRXP_WARN_Use the |T133473:0|t[|cRXP_LOOT_Assassination Note|r] to start the quest|r
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .unitscan Galak Messenger
--VV 18.32,22.10 west camp end
step
    #completewith next
    .goto Thousand Needles,34.17,26.08,45 >> Take the lift down to Thousand Needles << !Mage !Paladin
    .goto Thousand Needles,34.17,26.08,45 >> Jump down. Cast |T135736:0|t[Blink] just before hitting the bottom to avoid taking fall damage << Mage
    .goto Thousand Needles,34.17,26.08,45 >> Jump down. Cast |T135964:0|t[Blessing of Protection] just before hitting the bottom to avoid taking fall damage << Paladin
    .zoneskip Thousand Needles,1
step
    #label Freewind1
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >> Travel to Freewind Post's Elevators
    .zoneskip Thousand Needles,1
step
    .goto Thousand Needles,45.91,49.91,25 >> Take the Elevator up to Freewind
    .zoneskip Thousand Needles,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Rau|r, |cRXP_FRIENDLY_Longhorn|r, |cRXP_FRIENDLY_Hagar|r, and |cRXP_FRIENDLY_Elu|r
    .accept 9431 >> Accept A Different Approach
    .goto Thousand Needles,46.21,50.39
    .accept 5147 >> Accept Wanted - Arnak Grimtotem
    .goto Thousand Needles,46.00,50.86
    .turnin 1196 >> Turn in The Sacred Flame
    .accept 1197 >> Accept The Sacred Flame
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4542 >> Turn in Message to Freewind Post
    .accept 4841 >> Accept Pacify the Centaur
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .accept 4821 >> Accept Alien Egg
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >> Accept Wind Rider
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .target Hagar Lightninghoof
    .target Elu
    .itemStat 18,QUALITY,>7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>18.95 << Hunter
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r, the |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Rau|r, and |cRXP_FRIENDLY_Longhorn|r
    .accept 9431 >> Accept A Different Approach
    .goto Thousand Needles,46.21,50.39
    .accept 5147 >> Accept Wanted - Arnak Grimtotem
    .goto Thousand Needles,46.00,50.86
    .turnin 1196 >> Turn in The Sacred Flame
    .accept 1197 >> Accept The Sacred Flame
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4542 >> Turn in Message to Freewind Post
    .accept 4841 >> Accept Pacify the Centaur
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .accept 4821 >> Accept Alien Egg
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >> Accept Wind Rider
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    .vendor 9551 >>|cRXP_BUY_Buy the|r |T135495:0|t[Dense Shortbow] |cRXP_BUY_if it's up and|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <2.8814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
--    .collect 11305,1,4767,1 --Dense Shortbow (1)
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    .vendor 9551 >>|cRXP_BUY_Buy the|r |T135495:0|t[Dense Shortbow] |cRXP_BUY_from him if it's up|r
    .target Starn
    .money <2.5814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <0.3000
step << Hunter
    #completewith Freewind12
    +Remember to equip the |T135495:0|t[Dense Shortbow] when you reach Level 30
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp >30,1
step << Hunter
    #completewith Freewind12
    +Equip the |T135495:0|t[Dense Shortbow]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp <30,1
step << Hunter
    #label Freewind12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r and |cRXP_FRIENDLY_Elu|r
    .accept 4821 >> Accept Alien Egg
    .goto Thousand Needles,44.64,50.29
    .accept 4767 >> Accept Wind Rider
    .goto Thousand Needles,44.83,48.95,8,0
    .goto Thousand Needles,45.05,48.90
    .target Hagar Lightninghoof
    .target Elu
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
    .fp Freewind Post >> Get the Freewind Post flight path
    .target Nyse
step
    #completewith Clovenhoof
    >>Kill |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
    >>Kill every |cRXP_ENEMY_Galak Scout|r that you see
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob Galak Scout
    .mob Galak Wrangler
    .mob Galak Windchaser
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>Enter the cave
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>Travel toward the |cRXP_PICK_Ancient Brazier|r
step
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Open the |cRXP_PICK_Ancient Brazier|r. Loot it for the |cRXP_LOOT_Cloven Hoof|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]
    >>|cRXP_WARN_Use the |T133473:0|t[|cRXP_LOOT_Assassination Note|r] to start the quest|r
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .unitscan Galak Messenger
step
#loop
	.line Thousand Needles,43.12,36.86,41.18,34.83,40.42,34.45,39.00,32.56,39.68,34.93,39.76,35.82,39.32,36.93,40.43,37.96,41.04,39.03,41.12,41.34,42.33,40.54,42.84,39.09,44.15,40.72,44.98,41.03,45.66,43.81,47.23,41.98,48.57,43.53,49.39,41.24,48.14,40.43,47.11,40.29,45.89,40.32,44.43,38.36,,43.12,36.86
	.goto Thousand Needles,43.12,36.86,40,0
	.goto Thousand Needles,41.18,34.83,40,0
	.goto Thousand Needles,40.42,34.45,40,0
	.goto Thousand Needles,39.00,32.56,40,0
	.goto Thousand Needles,39.68,34.93,40,0
	.goto Thousand Needles,39.76,35.82,40,0
	.goto Thousand Needles,39.32,36.93,40,0
	.goto Thousand Needles,40.43,37.96,40,0
	.goto Thousand Needles,41.04,39.03,40,0
	.goto Thousand Needles,41.12,41.34,40,0
	.goto Thousand Needles,42.33,40.54,40,0
	.goto Thousand Needles,42.84,39.09,40,0
	.goto Thousand Needles,44.15,40.72,40,0
	.goto Thousand Needles,44.98,41.03,40,0
	.goto Thousand Needles,45.66,43.81,40,0
	.goto Thousand Needles,47.23,41.98,40,0
	.goto Thousand Needles,48.57,43.53,40,0
	.goto Thousand Needles,49.39,41.24,40,0
	.goto Thousand Needles,48.14,40.43,40,0
	.goto Thousand Needles,47.11,40.29,40,0
	.goto Thousand Needles,45.89,40.32,40,0
	.goto Thousand Needles,44.43,38.36,40,0
	.goto Thousand Needles,43.12,36.86,40,0
    >>Kill |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob Galak Scout
    .mob Galak Wrangler
    .mob Galak Windchaser
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith next
    >>Kill |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>Travel toward |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >> Accept Test of Faith
    .timer 7,Test of Faith RP
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>|cRXP_WARN_Wait out the RP|r
    >>|cRXP_WARN_Jump off the end of the wooden platform. You'll get teleported instead of dying from fall damage|r
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Turn in Test of Faith
    .accept 1150 >> Accept Test of Endurance
    .target Dorn Plainstalker
step
    #xprate <1.7 << !Shaman !Warrior
    #completewith Purifying
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,52.65,48.02,40,0
    >>Kill |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>Loot the |cRXP_LOOT_Alien Egg|r on the ground
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #label Purifying
    .goto Thousand Needles,59.92,54.32,40,0
    .goto Thousand Needles,60.42,58.75,40,0
    .goto Thousand Needles,63.80,57.08,40,0
    .goto Thousand Needles,64.02,60.43,40,0
    .goto Thousand Needles,65.36,61.78,40,0
    .goto Thousand Needles,68.14,60.31,40,0
    .goto Thousand Needles,65.63,50.60,40,0
    .goto Thousand Needles,64.09,48.19,40,0
    .goto Thousand Needles,59.92,54.32,40,0
    .goto Thousand Needles,60.42,58.75,40,0
    .goto Thousand Needles,63.80,57.08,40,0
    .goto Thousand Needles,64.02,60.43,40,0
    .goto Thousand Needles,65.36,61.78,40,0
    .goto Thousand Needles,68.14,60.31,40,0
    .goto Thousand Needles,65.63,50.60,40,0
    .goto Thousand Needles,64.09,48.19
    >>Kill |cRXP_ENEMY_Thundering Boulderkins|r. Loot them for their |cRXP_LOOT_Purifying Earth|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #xprate <1.7 << !Shaman !Warrior
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,51.89,43.02,40,0
    .goto Thousand Needles,53.41,46.19,40,0
    .goto Thousand Needles,54.05,44.96,40,0
    .goto Thousand Needles,53.47,46.65,40,0
    .goto Thousand Needles,52.61,48.28,40,0
    .goto Thousand Needles,53.64,48.50,40,0
    .goto Thousand Needles,51.48,48.06,40,0
    .goto Thousand Needles,59.69,47.76,40,0
    .goto Thousand Needles,62.21,47.76,40,0
    .goto Thousand Needles,62.63,48.38,40,0
    .goto Thousand Needles,64.01,47.52,40,0
    .goto Thousand Needles,63.92,46.63,40,0
    .goto Thousand Needles,63.10,45.53,40,0
    .goto Thousand Needles,65.83,51.44,40,0
    .goto Thousand Needles,65.44,50.11,40,0
    .goto Thousand Needles,64.91,50.30,40,0
    .goto Thousand Needles,66.11,49.91,40,0
    .goto Thousand Needles,66.32,49.13,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,58.87,58.69,40,0
    .goto Thousand Needles,57.66,57.70,40,0
    .goto Thousand Needles,58.93,57.68,40,0
    .goto Thousand Needles,58.94,56.55,40,0
    .goto Thousand Needles,58.97,54.98,40,0
    .goto Thousand Needles,59.32,53.69,40,0
    .goto Thousand Needles,59.79,58.16
    >>Kill |cRXP_ENEMY_Gravelsnout Surveyors|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39
    >>Loot the |cRXP_LOOT_Alien Egg|r on the ground
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >> Travel to Freewind Post's Elevators
    .zoneskip Thousand Needles,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r, |cRXP_FRIENDLY_Longhorn|r, and |cRXP_FRIENDLY_Hagar|r
    .turnin 1197 >> Turn in The Sacred Flame
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4841 >> Turn in Pacify the Centaur
    .accept 5064 >> Accept Grimtotem Spying
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .turnin 4821 >> Turn in Alien Egg
    .accept 4865 >> Accept Serpent Wild
    .goto Thousand Needles,44.64,50.29
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .target Hagar Lightninghoof
    .itemStat 18,QUALITY,>7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>18.95 << Hunter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r and |cRXP_FRIENDLY_Longhorn|r
    .turnin 1197 >> Turn in The Sacred Flame
    .goto Thousand Needles,45.97,51.10,8,0
    .goto Thousand Needles,46.14,51.72
    .turnin 4841 >> Turn in Pacify the Centaur
    .accept 5064 >> Accept Grimtotem Spying
    .goto Thousand Needles,45.70,50.63,8,0
    .goto Thousand Needles,45.65,50.80
    .target Magistrix Elosai
    .target Rau Cliffrunner
    .target Cliffwatcher Longhorn
    .itemStat 18,QUALITY,<7 << Hunter
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95 << Hunter
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    .vendor 9551 >>|cRXP_BUY_Buy the|r |T135495:0|t[Dense Shortbow] |cRXP_BUY_if it's up and|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <2.8814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
--    .collect 11305,1,4767,1 --Dense Shortbow (1)
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    .vendor 9551 >>|cRXP_BUY_Buy the|r |T135495:0|t[Dense Shortbow] |cRXP_BUY_from him if it's up|r
    .target Starn
    .money <2.5814
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from him|r
    .collect 3030,2000,4767,1 --Sharp Arrow (2000)
    .target Starn
    .itemcount 3030,<2000
    .money <0.3000
step << Hunter
    #completewith Freewind12
    +Remember to equip the |T135495:0|t[Dense Shortbow] when you reach Level 30
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp >30,1
step << Hunter
    #completewith Freewind12
    +Equip the |T135495:0|t[Dense Shortbow]
    .use 11305
    .itemcount 11305,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<18.95
    .xp <30,1
step << Hunter
    .goto Thousand Needles,44.64,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >> Turn in Alien Egg
    .accept 4865 >> Accept Serpent Wild
    .target Hagar Lightninghoof
step
    #label GrenkaCave
    #completewith Grenka
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Travel toward |cRXP_ENEMY_Grenka|r's Cave
step
    #completewith Grenka
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Screeching Windcallers|r cast|r |T136022:0|t[Gust of Wind]|cRXP_WARN_, a 4-second AoE stun within 10 yards of the |cRXP_ENEMY_Screeching Windcaller|r, and |cRXP_ENEMY_Screeching Harpies|r cast|r |T136122:0|t[Deafening Screech]|cRXP_WARN_, an 8 second silence|r
step
    #label HarpyFood
    #requires GrenkaCave
    #completewith Grenka
    .goto Thousand Needles,26.89,52.07,12,0
    .goto Thousand Needles,26.34,52.68,12,0
    .goto Thousand Needles,26.66,53.55,12,0
    .goto Thousand Needles,27.14,54.07,12,0
    .goto Thousand Needles,26.97,55.09,12,0
    .goto Thousand Needles,25.84,54.78,20 >>Travel toward the |cRXP_PICK_Harpy Foodstuffs|r
step
    #requires HarpyFood
    #completewith next
    .goto Thousand Needles,25.84,54.78
    .cast 6478 >>Open the |cRXP_PICK_Harpy Foodstuffs|r on the ground to summon |cRXP_ENEMY_Grenka|r
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>Kill |cRXP_ENEMY_Grenka Bloodscreech|r. Loot her for |cRXP_LOOT_Grenka's Claw|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
step
    .xp 29 >> Grind to level 29
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #completewith next
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Travel toward Highperch
step
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
    .complete 4767,1,6 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Paoka1
    >>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith next
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Run up the path. Travel toward |cRXP_FRIENDLY_Pao'ka|r
step
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
    .accept 4770 >> Accept Homeward Bound
    .target Pao'ka Swiftmountain
step
    #completewith next
    >>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
    >>|cRXP_WARN_Make sure you're doing this as you're escorting|r |cRXP_FRIENDLY_Pao'ka|r
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escort|r |cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_Three Highperch Wyverns will spawn once |cRXP_FRIENDLY_Pao'ka|r reaches the middle of Highperch. You only need to aggro the eastern one and the others will disappear|r
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    #completewith next
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Travel toward Highperch
step
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Loot |cRXP_LOOT_Highperch Wyvern Eggs|r on the ground
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
    #completewith Panel
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laer|r
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_from him|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r |T133964:0|t[Mulgore Spice Bread] |cRXP_BUY_from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r |T132799:0|t[Sweet Nectar] |cRXP_BUY_and|r |T133964:0|t[Mulgore Spice Bread] |cRXP_BUY_from him|r << Paladin
    .collect 1708,20,1145,1 << Priest/Mage/Warlock/Druid/Paladin --Sweet Nectar (20)
    .collect 4544,20,1145,1 << !Priest !Mage !Warlock !Druid !Paladin --Mulgore Spice Bread (20)
    .collect 4544,10,1145,1 << Paladin --Mulgore Spice Bread (10)
    .target Laer Stepperunner
    .money <0.4000 << !Paladin
    .money <0.6000 << Paladin/Shaman
    .xp <24,1
    .xp >35,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r, |cRXP_FRIENDLY_Motega|r, and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >> Turn in Assassination Plot
    .accept 4966 >> Accept Protect Kanati Greycloud
    .goto Thousand Needles,21.25,32.05
    .turnin 4865 >> Turn in Serpent Wild
    .accept 5062 >> Accept Sacred Fire
    .turnin 4770 >> Turn in Homeward Bound
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >> Turn in A Different Approach
    .accept 9433 >> A Dip in the Moonwell
    .accept 5151 >> Accept Hypercapacitor Gizmo
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Motega Firemane
    .target Wizlo Bearingshiner
    .isOnQuest 4881
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r, |cRXP_FRIENDLY_Motega|r, and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .accept 4966 >> Accept Protect Kanati Greycloud
    .goto Thousand Needles,21.25,32.05
    .turnin 4865 >> Turn in Serpent Wild
    .accept 5062 >> Accept Sacred Fire
    .turnin 4770 >> Turn in Homeward Bound
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >> Turn in A Different Approach
    .accept 9433 >> A Dip in the Moonwell
    .accept 5151 >> Accept Hypercapacitor Gizmo
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Motega Firemane
    .target Wizlo Bearingshiner
    .isQuestTurnedIn 4881
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r and |cRXP_FRIENDLY_Wizlo|r
    .turnin 4865 >> Turn in Serpent Wild
    .accept 5062 >> Accept Sacred Fire
    .turnin 4770 >> Turn in Homeward Bound
    .goto Thousand Needles,21.43,32.35,5,0
    .goto Thousand Needles,21.54,32.35
    .turnin 9431 >> Turn in A Different Approach
    .accept 9433 >> A Dip in the Moonwell
    .accept 5151 >> Accept Hypercapacitor Gizmo
    .goto Thousand Needles,21.43,32.55
    .target Motega Firemane
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud
    .isQuestComplete 4966
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]
    >>|cRXP_WARN_Use the |T133473:0|t[|cRXP_LOOT_Assassination Note|r] to start the quest|r
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .unitscan Galak Messenger
step
    #label Panel
    .goto Thousand Needles,11.99,18.89,15,0
    .goto Thousand Needles,11.53,18.10,15,0
    .goto Thousand Needles,10.62,17.87,15,0
    .goto Thousand Needles,9.44,18.69,8 >>Travel toward the |cRXP_PICK_Concealed Control Panel|r
    .isOnQuest 9433
step
    .goto Thousand Needles,9.44,18.69,0
    .goto Feralas,89.55,46.30
    >>Use the |T132995:0|t[Robotron Control Unit] next to the |cRXP_PICK_Concealed Control Panel|r to summon the |cRXP_FRIENDLY_Robotron|r
    >>Use "Gather Water" (4) when inside the Moonwell to loot the |cRXP_LOOT_Thalanaar Moonwell Water|r
    >>Dismiss the |cRXP_FRIENDLY_Robotron|r after looting the |cRXP_LOOT_Thalanaar Moonwell Water|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .use 23675
step
    #completewith DipMoon
    .goto Thousand Needles,38.46,32.60,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]
    >>|cRXP_WARN_Use the |T133473:0|t[|cRXP_LOOT_Assassination Note|r] to start the quest|r
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .unitscan Galak Messenger
step
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    .goto Thousand Needles,11.50,21.61
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_He patrols counter-clockwise|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >> Turn in Assassination Plot
    .accept 4966 >> Accept Protect Kanati Greycloud
    .goto Thousand Needles,21.25,32.05
    .turnin 9433 >> Turn in A Dip in the Moonwell
    .accept 9434 >> Accept Testing the Tonic
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Wizlo Bearingshiner
    .isOnQuest 4881
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r and |cRXP_FRIENDLY_Wizlo|r
    >>|cRXP_WARN_Turn in quickly, as turning in "Assassination Plot" will summon three |cRXP_ENEMY_Galak Assassins|r that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .accept 4966 >> Accept Protect Kanati Greycloud
    .goto Thousand Needles,21.25,32.05
    .turnin 9433 >> Turn in A Dip in the Moonwell
    .accept 9434 >> Accept Testing the Tonic
    .goto Thousand Needles,21.43,32.55
    .target Kanati Greycloud
    .target Wizlo Bearingshiner
    .isQuestTurnedIn 4881
    .isQuestAvailable 4966
step
    #label DipMoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Turn in A Dip in the Moonwell
    .accept 9434 >> Accept Testing the Tonic
    .goto Thousand Needles,21.43,32.55
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4881 >> Turn in Assassination Plot
    .accept 4966 >> Accept Protect Kanati Greycloud
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .accept 4966 >> Accept Protect Kanati Greycloud
    .target Kanati Greycloud
    .isQuestTurnedIn 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud
    .isQuestComplete 4966
 step
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43
    >>Kill the |cRXP_ENEMY_Galak Messenger|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]
    >>|cRXP_WARN_Use the |T133473:0|t[|cRXP_LOOT_Assassination Note|r] to start the quest|r
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r
    .collect 12564,1,4881,1 --Collect Assassination Note
    .accept 4881 >>Accept Assassination Plot
    .use 12564
    .unitscan Galak Messenger
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4881 >> Turn in Assassination Plot
    .accept 4966 >> Accept Protect Kanati Greycloud
    .target Kanati Greycloud
    .isOnQuest 4881
    .xp >30,1
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .accept 4966 >> Accept Protect Kanati Greycloud
    .target Kanati Greycloud
    .isQuestTurnedIn 4881
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #xprate <1.7
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud
    .isQuestComplete 4966
step
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    >>Loot the |cRXP_PICK_Incendia Agave Plants|r on the ground and underwater
    >>|cRXP_ENEMY_Scalding Elementals|r and |cRXP_ENEMY_Boiling Elementals|r are immune to frost damage, and highly resistant to fire. Try to avoid them/use Arcane spells << Mage
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Boiling Elementals|r cast|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Paladin
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scalding Elementals|r cast|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
    .complete 5062,1 --Collect Incendia Agave (x10)
step
    #xprate 1.48-1.58
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    .xp 29+29325 >> Grind to 29325+/36300xp
step
    #xprate 1.59-1.68
#loop
	.line Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
	.goto Thousand Needles,36.58,38.77,30,0
	.goto Thousand Needles,37.77,38.17,30,0
	.goto Thousand Needles,36.63,36.23,30,0
	.goto Thousand Needles,34.96,33.22,30,0
	.goto Thousand Needles,33.37,32.85,30,0
	.goto Thousand Needles,33.67,34.09,30,0
	.goto Thousand Needles,34.88,34.82,30,0
	.goto Thousand Needles,35.62,36.20,30,0
	.goto Thousand Needles,36.05,37.41,30,0
	.goto Thousand Needles,36.58,38.77,30,0
    .xp 29+28860 >> Grind to 28860+/36300xp
step
	#completewith next
    .hs >> Hearth to Thunder Bluff
step
    #completewith next
    .goto Thunder Bluff,46.85,66.08,8,0
    .goto Thunder Bluff,46.84,67.98,8,0
    .goto Thunder Bluff,54.27,76.87,15,0
    .goto Thunder Bluff,61.54,80.92,15 >>Travel toward |cRXP_FRIENDLY_Melor|r
step
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >> Turn in Steelsnap
    .accept 1136 >> Accept Frostmaw
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,54.97,51.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Train your class spells
    .target Urek Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.23,87.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .accept 1718 >> Accept The Islander
    .train 7369 >> Train your class spells
    .target Torm Ragetotem
    .train 7369,1
step << Warrior
    .goto Thunder Bluff,57.23,87.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .accept 1718 >> Accept The Islander
    .target Torm Ragetotem
 step
    #completewith next
    .goto Thunder Bluff,61.92,75.32,15,0
    .goto Thunder Bluff,60.98,62.92,15,0
    .goto Thunder Bluff,58.88,46.58,15,0
    .goto Thunder Bluff,60.12,42.63,12,0
    .goto Thunder Bluff,61.27,41.59,10,0
    .goto Thunder Bluff,61.45,40.15,10,0
    .goto Thunder Bluff,68.96,33.92,15,0
    .goto Thunder Bluff,69.86,30.91,10 >>Travel toward |cRXP_FRIENDLY_Magatha|r
step
    .goto Thunder Bluff,69.86,30.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >> Turn in Sacred Fire
    .accept 5088 >> Accept Arikara
    .target Magatha Grimtotem
step << Druid
    .goto Thunder Bluff,76.79,31.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kym|r
    .train 5234 >> Train your class spells
	.target Kym Wildmane
step << Mage
    #completewith next
    .goto Thunder Bluff,67.69,28.87,15,0
    .goto Thunder Bluff,55.85,34.51,15,0
    .goto Thunder Bluff,42.83,39.15,15,0
    .goto Thunder Bluff,39.72,38.40,12,0
    .goto Thunder Bluff,38.70,36.98,12,0
    .goto Thunder Bluff,37.68,37.26,12,0
    .goto Thunder Bluff,29.51,29.81,10,0
    .goto Thunder Bluff,28.39,25.55,10,0
    .goto Thunder Bluff,22.50,16.90,20 >>Travel toward |cRXP_FRIENDLY_Birgitte|r
step << Mage
    .goto Thunder Bluff,22.50,16.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Train |T135765:0|t[Teleport: Thunder Bluff]
    .target Birgitte Cranston
step << Mage
    .goto Thunder Bluff,22.77,14.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
	.train 7302 >> Train your class spells
	.target Archmage Shymm
step
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>Go up the tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .skill riding,<75,1 << Tauren
    .isOnQuest 1145
step
    #completewith TheSwarm
    .goto Thunder Bluff,46.22,49.14,6,0
    .goto Thunder Bluff,46.01,49.90,6,0
    .goto Thunder Bluff,47.00,49.83
    >>Go up the tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >> Fly to Crossroads
    .target Tal
    .zoneskip Thunder Bluff,1
    .skill riding,<75,1 << Tauren
step << Tauren
    .goto Mulgore,47.65,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kar Stormsinger
    .money <4.5 << wotlk
    .money <42.25 << tbc
step << Tauren
    .goto Mulgore,47.49,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harb|r
    +|cRXP_BUY_Buy any|r |T132243:0|t[Kodo] |cRXP_BUY_that you like from him|r
	.target Harb Clawhoof
    .itemcount 15277,<1 --Gray Kodo
    .itemcount 15290,<1 --Brown Kodo
    .itemcount 46100,<1 << wotlk --White Kodo
    .money <0.9 << wotlk
    .money <9.0000 << tbc
    .skill riding,<75,1
step << Tauren
    .cast 55884 >> Use the |T132243:0|t[Gray Kodo] to learn it
    .use 15277
    .itemcount 15277,1
    .skill riding,75,1
step << Tauren
    .cast 55884 >> Use the |T132245:0|t[Brown Kodo] to learn it
    .use 15290
    .itemcount 15290,1
    .skill riding,75,1
step << Tauren wotlk
    .cast 55884 >> Use the |T132243:0|t[White Kodo] to learn it
    .use 46100
    .itemcount 46100,1
    .skill riding,75,1
    --Added in wotlk
step << Tauren
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[Gray Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18989 >> Mount your |T132243:0|t[Gray Kodo]
    .train 18989,3
    .zoneskip Mulgore,1
step << Tauren
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132245:0|t[Brown Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 18990 >> Mount your |T132245:0|t[Brown Kodo]
    .train 18990,3
    .zoneskip Mulgore,1
step << Tauren wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132243:0|t[White Kodo] |cRXP_WARN_onto your Action Bars|r
    .cast 64657 >> Mount your |T132243:0|t[White Kodo]
    .train 64657,3
--Added in wotlk
step << Tauren
    #completewith next
    .goto The Barrens,41.40,58.55
    .zone The Barrens >>Travel to The Barrens
    .zoneskip Mulgore,1
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 885 >>Turn in Washte Pawne
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 885
    .isOnQuest 897
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 885 >>Turn in Washte Pawne
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 885
    .isOnQuest 897
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 897
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .turnin 885 >>Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 884
    .isOnQuest 885
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 884 >>Turn in Owatanka
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 884
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 885 >>Turn in Washte Pawne
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 885
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r and |cRXP_FRIENDLY_Jorn|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .goto The Barrens,45.10,57.68
    .turnin 897 >>Turn in The Harvester
    .goto The Barrens,44.86,59.13
    .target Tatternack Steelforge
    .target Jorn Skyseer
    .isOnQuest 897
    .zoneskip Thunder Bluff
step << Tauren !Warrior !Shaman
    #xprate >1.6999
    #label CampTStone
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
    .target Tatternack Steelforge
    .zoneskip Thunder Bluff
step << Tauren
    #xprate <1.7 << !Warrior !Shaman
    #label CampTStone
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >> Turn in A New Ore Sample
    .target Tatternack Steelforge
    .zoneskip Thunder Bluff
step << Tauren
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
    .isOnQuest 1145
step << Tauren
    #completewith next
    .goto The Barrens,44.44,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >> Fly to Crossroads
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #label TheSwarm
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r and |cRXP_FRIENDLY_Thork|r << Warrior/Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korran|r << !Warrior !Shaman
    .accept 1145 >> Accept The Swarm Grows
    .goto The Barrens,51.07,29.63
    .turnin 906 >> Turn in Betrayal from Within << Warrior/Shaman
    .goto The Barrens,51.50,30.87 << Warrior/Shaman
    .target Korran
    .target Thork << Warrior/Shaman
step << Mage
    #label TeleportOrg
    #completewith TheSwarmOrg
    .cast 3567 >> Cast |T135759:0|t[Teleport: Orgrimmar]
    .itemcount 17031,1
    .zoneskip Orgrimmar
    .train 3567,3
step << Shaman
    #xprate <1.7
    #completewith TheSwarmOrg
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fly to Ratchet
    .target Devrak
    .zoneskip The Barrens,1
step << Shaman
    #xprate <1.7
    .goto The Barrens,65.51,47.32,70,0
    .goto The Barrens,64.21,50.70,70,0
    .goto The Barrens,63.63,53.85,70,0
#loop
	.line The Barrens,65.51,47.32,64.21,50.70,63.63,53.85
	.goto The Barrens,65.51,47.32,70,0
	.goto The Barrens,64.21,50.70,70,0
	.goto The Barrens,63.63,53.85,70,0
    >>Kill |cRXP_ENEMY_Isha Awak|r. Loot him for the |cRXP_LOOT_Heart of Isha Awak|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
step << Shaman
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahreen|r and |cRXP_FRIENDLY_Islen|r
    .turnin 873 >> Turn in Isha Awak
    .goto The Barrens,65.84,43.86
    .turnin 220 >> Turn in Call of Water
    .accept 63 >> Accept Call of Water
    .goto The Barrens,65.83,43.77
    .target Mahren Skyseer
    .target Islen Waterseer
step << Shaman
    #xprate <1.7
    #completewith TheSwarmOrg
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
step
    #xprate >1.6999 << Shaman
    #requires TeleportOrg << Mage
    #completewith TheSwarmOrg
    .goto The Barrens,51.50,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Devrak
    .zoneskip The Barrens,1
step << Priest/Rogue tbc/Warlock/Paladin/Shaman
    #label OrgTrainGoto
    #completewith OrgTrain
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,39.58,75.87,20,0 << Priest
    .goto Orgrimmar,38.99,57.73,20,0 << !Priest
    .goto Orgrimmar,39.78,54.65,20,0 << Rogue/Warlock
    .goto Orgrimmar,42.33,56.99,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.78,56.45,20,0 << Rogue/Warlock
    .goto Orgrimmar,43.53,53.37,15,0 << Rogue tbc
    .goto Orgrimmar,40.07,48.51,20,0 << Paladin/Shaman
    .goto Orgrimmar,42.22,37.47,20,0 << Paladin/Shaman
    .goto Orgrimmar,39.50,36.89,20,0 << Paladin/Shaman
    .goto Orgrimmar,35.70,37.26,20,0 << Paladin
    .goto Orgrimmar,35.59,87.80,15 >> Travel toward |cRXP_FRIENDLY_Ur'kyo|r << Priest
    .goto Orgrimmar,38.81,36.38,15 >> Travel toward |cRXP_FRIENDLY_Kardris|r << Shaman
    .goto Orgrimmar,32.29,35.74,15 >> Travel toward |cRXP_FRIENDLY_Pyreanor|r << Paladin
    .goto Orgrimmar,43.05,53.73,10 >> Travel toward |cRXP_FRIENDLY_Shenthul|r << Rogue tbc
    .goto Orgrimmar,48.25,45.27,15 >> Travel toward |cRXP_FRIENDLY_Grol'dar|r << Warlock
    .isOnQuest 2478 << Rogue tbc
step << Mage
    #completewith next
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel upstairs toward |cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Rogue
    #requires OrgTrainGoto
    #completewith OrgTrain
    .goto Orgrimmar,41.89,64.39,20,0
    .goto Orgrimmar,38.99,57.73,20,0
    .goto Orgrimmar,39.78,54.65,20,0
    .goto Orgrimmar,42.33,56.99,20,0
    .goto Orgrimmar,43.78,56.45,20,0
    .goto Orgrimmar,43.90,54.63,15 >> Travel toward |cRXP_FRIENDLY_Ormok|r
step << Priest
    #label OrgTrain
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ur'kyo|r
    .train 602 >> Train your class spells
    .target Ur'kyo
step << Shaman
    #label OrgTrain
    .goto Orgrimmar,38.81,36.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 556 >> Train your class spells
    .target Kardris Dreamseeker
step << Shaman
    .goto Orgrimmar,37.97,37.72
>>Talk to |cRXP_FRIENDLY_Searn Firewarder|r
    .accept 1531 >> Accept Call of Air
    .target Searn Firewarder
step << Paladin
    #label OrgTrain
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyreanor|r
    .train 10298 >> Train your class spells
    .target Master Pyreanor
step << Rogue tbc
    #label OrgTrain
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .train 1760 >>Train your class spells
    .target Shenthul
    .isOnQuest 2478
step << Rogue
    #label OrgTrain
    .goto Orgrimmar,43.90,54.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
    .train 1760 >>Train your class spells
    .target Ormok
step << Warlock
    #label OrgTrain
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dar|r
    .train 1086 >> Train your class spells << wotlk
    .train 5784 >> Train |T136103:0|t[Summon Felsteed] << tbc
    .target Grol'dar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
    .accept 2996 >>Accept Seeking Strahad
    .turnin 65610 >>Turn in Wish You Were Here
    .accept 65604 >>Accept The Binding
    .target Gan'rul Bloodeye
step << Warlock
    #completewith Succubus
    .goto Orgrimmar,49.43,50.00
    .cast 9224 >>Use |T133290:0|t[Dogran's Pendant] to summon a |cRXP_ENEMY_Summoned Succubus|r
    .use 6626
step << Warlock
    #completewith Incubus
    .goto Orgrimmar,49.43,50.00
    .cast 366902 >>Use the |T133693:0|t[Withered Scarf] to summon a |cRXP_ENEMY_Summoned Incubus|r
    .use 190187
step << Warlock
    #label Succubus
    .goto Orgrimmar,49.43,50.00
    >>Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Summoned Succubus (1)
    .mob Summoned Succubus
step << Warlock
    #label Incubus
    .goto Orgrimmar,49.43,50.00
    >>Kill the |cRXP_ENEMY_Summoned Incubus|r
    .complete 65604,1 --Summoned Succubus (1)
    .mob Summoned Incubus
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Turn in The Binding
    .turnin 65604 >>Turn in The Binding
    .target Gan'rul Bloodeye
step << Mage
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Buy|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r
    .collect 17031,2,25,1 --Rune of Teleportation (2)
    .money <0.1900
    .target Horthus
step
    #completewith next
    .goto Orgrimmar,62.56,38.52,20,0 << Paladin/Shaman
    .goto Orgrimmar,62.98,39.35,20,0 << !Paladin !Shaman
    .goto Orgrimmar,64.34,38.17,20,0
    .goto Orgrimmar,75.23,34.24,20 >> Travel toward |cRXP_FRIENDLY_Belgrom|r
step
    .goto Orgrimmar,75.23,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Turn in The Swarm Grows
    .accept 1146 >> Accept The Swarm Grows
    .target Belgrom Rockmaul
step << Orc !Warlock
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kildar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kildar
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .skill riding,75,1
step << Orc !Warlock
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro|r
    +|cRXP_BUY_Buy any|r |T132224:0|t[Wolf] |cRXP_BUY_that you like from him|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 << wotlk --Horn of the Black Wolf
    .money <0.9 << wotlk
    .money <9.0000 << tbc
    .skill riding,<75,1
step << Orc !Warlock
    .cast 55884 >> Use the |T132224:0|t[Horn of the Timber Wolf] to learn it
    .use 1132
    .itemcount 1132,1
    .skill riding,75,1
step << Orc !Warlock
    .cast 55884 >> Use the |T132266:0|t[Horn of the Dire Wolf] to learn it
    .use 5665
    .itemcount 5665,1
    .skill riding,75,1
step << Orc !Warlock
    .cast 55884 >> Use the |T132224:0|t[Horn of the Brown Wolf] to learn it
    .use 5668
    .itemcount 5668,1
    .skill riding,75,1
step << Orc !Warlock
    .cast 55884 >> Use the |T132224:0|t[Horn of the Black Wolf] to learn it
    .use 46099
    .itemcount 46099,1
    .skill riding,75,1
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Timber Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 580 >> Mount your |T132224:0|t[Timber Wolf]
    .train 580,3
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132266:0|t[Dire Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6653 >> Mount your |T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc !Warlock
    #completewith OrgFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Brown Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 6654 >> Mount your |T132224:0|t[Brown Wolf]
    .train 6654,3
step << Orc !Warlock wotlk
    #completewith OrgFP
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132224:0|t[Black Wolf] |cRXP_WARN_onto your Action Bars|r
    .cast 64658 >> Mount your |T132224:0|t[Black Wolf]
    .train 64658,3
step
    #xprate <1.7 << !Undead
    .goto Orgrimmar,54.10,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryshka|r
    .home >> Set your Hearthstone to Orgrimmar
    .target Innkeeper Gryshka
step << Warlock
    #xprate <1.7
    #completewith next
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r
step << Warlock
    #xprate <1.7
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fly to Ratchet
    .target Doras
    .zoneskip The Barrens
step << Warlock
    #xprate <1.7
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad|r
    .turnin 2996 >> Turn in Seeking Strahad
    .accept 1801 >> Accept Tome of the Cabal
    .target Strahad Farsan
step << Warlock
    #xprate <1.7
    .hs >> Hearth to Orgrimmar
    .cooldown item,6948,>0
    .zoneskip Orgrimmar
    .zoneskip Durotar
step << Warlock
    #xprate <1.7
    .goto The Barrens,63.08,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Fly to Orgrimmar
	.cooldown item,6948,<0
    .target Bragok
    .zoneskip Orgrimmar
    .zoneskip Durotar
step << Undead Mage
    .cast 3563 >> Cast |T135766:0|t[Teleport: Undercity]
    .itemcount 17031,1
    .skill riding,75,1
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .train 3563,3
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
step << Undead Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah|r
    .vendor >>|cRXP_BUY_Buy up to 20|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from her|r
    .target Horthus
    .skill riding,75,1
    .money <6.3125 << wotlk
    .money <44.05 << tbc
    .itemcount 17031,<20
    .train 3563,3
    .target Hannah Akeley
step << skip --Logout skip Undead Mage
    #completewith next
    .goto Undercity,82.28,15.47
    .goto Undercity,67.90,15.29,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE
    .skill riding,75,1
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .train 3563,3
    .zoneskip Tirisfal Glades
step << Undead Mage
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Exit Undercity
    .skill riding,75,1
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .train 3563,3
step << Undead !Warlock
    #completewith next
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Durotar,50.61,13.27
    .zone Durotar >> Exit Orgrimmar
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .skill riding,75,1
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
step << Undead !Warlock
    .goto Durotar,50.61,13.27,12,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.82,13.07,6,0
    .goto Durotar,50.83,13.27,6,0
    .goto Durotar,50.89,14.14,-1
    .goto Durotar,56.75,15.11,-1
    >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .skill riding,75,1
    .zoneskip Undercity
step << Undead !Warlock
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Velma Warnam
    .money <4.5 << wotlk
    .money <42.25 << tbc
    .skill riding,75,1
step << Undead !Warlock
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zachariah|r
    +|cRXP_BUY_Buy any|r |T132264:0|t[Skeletal Horse] |cRXP_BUY_that you like from him|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9 << wotlk
    .money <9.0000 << tbc
    .skill riding,<75,1
step << Undead !Warlock
    .cast 55884 >> Use the |T132264:0|t[Red Skeletal Horse] to learn it
    .use 13331
    .itemcount 13331,1
    .skill riding,75,1
step << Undead !Warlock
    .cast 55884 >> Use the |T132264:0|t[Blue Skeletal Horse] to learn it
    .use 13332
    .itemcount 13332,1
    .skill riding,75,1
step << Undead !Warlock
    .cast 55884 >> Use the |T132264:0|t[Brown Skeletal Horse] to learn it
    .use 13333
    .itemcount 13333,1
    .skill riding,75,1
step << Undead !Warlock
    .cast 55884 >> Use the |T132264:0|t[Black Skeletal Horse] to learn it
    .use 46308
    .itemcount 46308,1
    .skill riding,75,1
step << Undead !Warlock
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Red Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17462 >> Mount your |T132264:0|t[Red Skeletal Horse]
    .train 17462,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << Undead !Warlock
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Blue Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17463 >> Mount your |T132264:0|t[Blue Skeletal Horse]
    .train 17463,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << Undead !Warlock
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Brown Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 17464 >> Mount your |T132264:0|t[Brown Skeletal Horse]
    .train 17464,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << Undead !Warlock wotlk
    >>|cRXP_WARN_Press "Shift+P" to open your Mount tab|r
    >>|cRXP_WARN_Drag the|r |T132264:0|t[Black Skeletal Horse] |cRXP_WARN_onto your Action Bars|r
    .cast 64977 >> Mount your |T132264:0|t[Black Skeletal Horse]
    .train 64977,3
    .zoneskip Undercity
    .zoneskip Durotar
    .zoneskip Orgrimmar
]])
