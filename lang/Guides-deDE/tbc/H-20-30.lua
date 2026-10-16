if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde !Shaman
#name 20-23 Stonetalon/The Barrens
#version 7
#subgroup RestedXP Horde 1-30
#next 23-25 Hillsbrad Foothills

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r (NOT TRANSLATED IN :deDE YET)
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Travel toward |cRXP_FRIENDLY_Horthus|r (NOT TRANSLATED IN :deDE YET)
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Buy|r |T134419:0|t[Runes of Teleportation] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
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
    .goto Orgrimmar,39.50,37.17,20 >>Travel up the tower, then toward Grommash Hold (NOT TRANSLATED IN :deDE YET)
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
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r (NOT TRANSLATED IN :deDE YET)
    .zoneskip Durotar
step << !Shaman !Troll !Orc
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
    .goto Orgrimmar,45.12,63.88,10 >>Travel up the tower toward |cRXP_FRIENDLY_Doras|r (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute
    .target Doras
step << !Shaman
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 9626 >> Turn in Meeting the Warchief (NOT TRANSLATED IN :deDE YET) << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >> Turn in Meeting the Warchief (NOT TRANSLATED IN :deDE YET) << !BloodElf
    .target Thrall
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dawnsinger|r
    .accept 9428 >> Bericht an den Splitterholzposten annehmen
    .target Ambassador Dawnsinger
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >> Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
step
    #xprate <1.5
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zor|r
    .accept 1061 >> Akzeptiert die Quest Die Geister des Steinkrallengebirges
    .target Zor Lonetree
step
    #optional
    #label MeetingTW
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Thuul|r oben auf der Hütte
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Turn in Rogues of the Shattered Hand (NOT TRANSLATED IN :deDE YET)
    .accept 2460 >> Akzeptiert die Quest Der Shattered-Gruß
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Target |cRXP_FRIENDLY_Shenthul|r to Salute him|r (NOT TRANSLATED IN :deDE YET)
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Gebt die Quest Der Shattered-Gruß ab
    .accept 2458 >> Akzeptiert die Quest Undercover
    .target Shenthul
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grol'dar|r
    .train 1094 >> Trainiere deine Klassenfähigkeiten
    .target Grol'dar
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandon Carendin Summons (NOT TRANSLATED IN :deDE YET)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r und |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Akzeptiert die Quest Verschlinger der Seelen
    .target +Gan'rul Bloodeye
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >> Gebt die Quest Verschlinger der Seelen ab
    .accept 1508 >> Akzeptiert die Quest Der blinde Cazul
    --.accept 65601 >> Accept Love Hurts
    .target +Cazul
    .goto Orgrimmar,47.05,46.43
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >> Travel toward |cRXP_FRIENDLY_Zankaja|r (NOT TRANSLATED IN :deDE YET)
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Gebt die Quest Der blinde Cazul ab
    .accept 1509 >>Akzeptiert die Quest Neuigkeiten von Dogran
    .target Zankaja
step << skip --Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >> Travel toward |cRXP_FRIENDLY_Magar|r (NOT TRANSLATED IN :deDE YET)
step << skip --Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >> Turn in Love Hurts (NOT TRANSLATED IN :deDE YET)
    .accept 65610 >> Accept Wish You Were Here (NOT TRANSLATED IN :deDE YET)
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel eine Etage drüber toward |cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
step << Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >> Travel toward |cRXP_FRIENDLY_Hanashi|r (NOT TRANSLATED IN :deDE YET)
step << Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Erlernen 2h Äxte
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step << !Tauren
    #xprate <1.5
    #completewith next
    .subzone 392 >>Reist nach Ratschet
step << Tauren
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Doras
    .subzoneskip 392
step << !Tauren
    #xprate <1.5
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .target Bragok
step
    #xprate <1.5
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step
    #xprate <1.5
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step
    #xprate <1.5
    #optional
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .accept 1491 >>Akzeptiert die Quest Klugheitstränke
    .target Mebok Mizzyrix
    .isQuestTurnedIn 865
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .target Mebok Mizzyrix
step << !Tauren
    #xprate >1.49
    #completewith next
    .subzone 392 >>Reist nach Ratschet
step << Tauren
    #xprate >1.49
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Doras
    .subzoneskip 392
    .dungeon WC
step << !Tauren
    #xprate >1.49
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .target Bragok
step
    #xprate >1.49
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #xprate >1.49
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 1491 >>Akzeptiert die Quest Klugheitstränke
    .target Mebok Mizzyrix
    .isQuestTurnedIn 865
    .dungeon WC
step
    #xprate >1.49
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    .home >>Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    #optional
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Kauft |T134583:0|t[|cRXP_FRIENDLY_Mächtige Kettenhose|r] von ihm, falls es verfügbar ist
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
    .subzoneskip 392,1
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Kauft |T132603:0|t[|cRXP_FRIENDLY_Wolf-Armschienen|r] von ihm, falls sie verfügbar sind
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .subzoneskip 392,1
step << Warrior/Paladin
    #optional
    #completewith XroadsPickups
    +|cRXP_WARN_Legt die|r |T134583:0|t[|cRXP_FRIENDLY_Mächtige Kettenhose|r] an
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith XroadsPickups
    +|cRXP_WARN_Legt die|r |T132603:0|t[|cRXP_FRIENDLY_Wolf-Armschienen|r] an
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Rogue
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Springt aufs Schiff, geht zur 2. Etage hinunter und trainiert euer Schlösser knacken bis mindestens 70|r
    .skill lockpicking,70,1
step << !Tauren
    #completewith XroadsPickups
    .subzone 380 >>Lauf nach Das Wegekreuz
step << Tauren
    #xprate <1.5
    #completewith XroadsPickups
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
step << Tauren
    #xprate >1.49
    #completewith XroadsPickups
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Tauren
    #xprate >1.49
    #completewith next
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Doras
    .zoneskip Orgrimmar,1
    .dungeon !WC
step
    #xprate <1.5
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target Mankrik
step
    #xprate <1.5
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 899
    .bindlocation 380
step
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 899
    .bindlocation 380
    .dungeon !BFD
    .dungeon !WC
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1510 >>Akzeptiert die Quest Neuigkeiten von Dogran
    .target Gazrog
step << !Tauren
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
    .target Devrak
    .subzoneskip 380,1
step
    #xprate <1.5
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .target Apothecary Helbrim
step
    #optional
    #label XroadsPickups
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Akzeptiert die Quest Anführer der Kolkar
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <1.5
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <1.5
    #loop
    .goto The Barrens,44.55,23.65,0
    .goto The Barrens,45.52,22.42,40,0
    .goto The Barrens,44.63,22.55,40,0
    .goto The Barrens,44.55,23.65,40,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <1.5
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Tötet |cRXP_ENEMY_Barak Kodobann|r. Plündert ihn für seinen |cRXP_LOOT_kopf|r
    >>|cRXP_WARN_Seid vorsichtig, da die Nahkampfangriffe von |cRXP_ENEMY_Barak Kodobann|r großen Schaden anrichten und er durch einen |cRXP_ENEMY_Zänker der Kolkar|r beschützt wird. Sie können euch fesseln und aus der Ferne auf euch schießen|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #xprate <1.5 << !Warlock
    #completewith next
    .zone Stonetalon Mountains >>Reist ins Steinkrallengebirge
step
    #xprate <1.5
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Gebt die Quest Die Geister des Steinkrallengebirges ab
    .accept 1062 >>Akzeptiert die Quest Goblin-Eindringlinge
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Akzeptiert die Quest Rächt mein Dorf
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #xprate <1.5
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Tötet |cRXP_ENEMY_Grobian der Grimmtotem|r und |cRXP_ENEMY_Söldner der Grimmtotem|r in der Gegend
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #xprate <1.5
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >>Gebt die Quest Rächt mein Dorf ab
    .accept 6629 >>Akzeptiert die Quest Tötet Grundig Finsterwolke
    .target Makaba Flathoof
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1511 >>Akzeptiert die Quest Ken'ziglas Trunk
    .target Ken'zigla
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Akzeptiert die Quest Blutfresser
    .target Xen'Zilla
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Reist den Pfad zum Lagerfeuer hinauf
    .isQuestTurnedIn 6548
step
    #xprate <1.5
    .goto Stonetalon Mountains,73.65,86.13
    >>Tötet |cRXP_ENEMY_Grundig Finsterwolke|r und |cRXP_ENEMY_Schläger der Grimmtotem|r
    >>|cRXP_WARN_Tötet alle sechs|r |cRXP_ENEMY_Schläger der Grimmtotem|r |cRXP_WARN_bevor ihr die Quest startet|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    #xprate <1.5
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Akzeptiert die Quest Schützt Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Begleitet |cRXP_FRIENDLY_Kaya|r und bleibt in ihrer Nähe
    >>|cRXP_WARN_Passt auf! Drei|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_werden erscheinen, wenn ihr das Lagerfeuer in Camp Aparaje erreicht|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Akzeptiert die Quest Blutfresser
    .target Xen'Zilla
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Tötet alle |cRXP_ENEMY_Kluftmooskrabbler|r die ihr seht
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <1.5
    .goto Stonetalon Mountains,59.08,75.70
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 6284 >>Akzeptiert die Quest Arachnophobie
step
    #xprate <1.5
    #completewith Besseleth1
    >>Tötet |cRXP_ENEMY_Kluftmoosgiftspucker|r und |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #xprate <1.5
    #completewith next
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <1.5
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Tötet |cRXP_ENEMY_Besseleth|r. Plündert sie für ihren |cRXP_LOOT_Fangzahn|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <1.5
    .goto Stonetalon Mountains,54.99,76.03
    >>Tötet |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Reist zu|cRXP_FRIENDLY_Ziz|r
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Gebt die Quest Ziz Fizziks ab
    .accept 1093 >>Superschnitter 6000 annehmen
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith BluePrints
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <1.5
    #completewith BluePrints
    >>Tötet |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <1.5
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Tötet |cRXP_ENEMY_Kluftmoosgiftspucker|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Warrior/Paladin/Shaman
    #xprate <1.5
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft eine|r |T135423:0|t[Streitaxt] |cRXP_BUY_bei ihm|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #xprate <1.5
    #optional
    #completewith BluePrints
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    #xprate <1.5
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihm.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <1.5
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #xprate <1.5
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Tötet |cRXP_ENEMY_Maschinenführer der Venture Co.|r. Plündert sie für ihre |cRXP_LOOT_Blaupause|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #xprate <1.5
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Tötet |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <1.5
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <1.5
	#completewith next
	+|cRXP_WARN_Falls ihr über 15 |cRXP_LOOT_Kluftmooseier|r|cRXP_WARN_ habt, teilt den Stapel auf (Umschalt + Klick),dann zerstört sie|r
    .itemcount 5570,16
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
    .accept 1094 >> Weitere Instruktionen annehmen
    .target Ziz Fizziks
step
    #xprate <1.5
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Beenden das töten von |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #xprate <1.5
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #xprate <1.5
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #xprate <1.5
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 5221 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <22,1
step
    #xprate <1.5
    #completewith HSXroads1
    .hs >>Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #xprate <1.5
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
step
    #xprate <1.5
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Startet eine 45-Minuten-Zeitquest|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <1.5
    #optional
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Startet eine 45-Minuten-Zeitquest|r
    .accept 853 >> Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <1.5
    #optional
    #label HSXroads1
step
    #xprate <1.5
    #sticky
    #completewith Zamah
    +|cRXP_WARN_You are on a timed quest, don't go afk. Skip this quest if you fail it|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 853
step
    #xprate <1.5
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Klickt auf den |cRXP_PICK_Blubbernden Felsspalt|r unter Wasser
    .complete 877,1 --Test the Dried Seeds (1)
step
    #xprate <1.5
    #completewith next
    .subzone 380 >>Return to Das Wegekreuz
    .dungeon WC
step
    #xprate <1.5
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 877 >>Gebt die Quest Die Brackige Oase ab
    .accept 880 >>Akzeptiert die Quest Veränderte Wesen
    .target Tonga Runetotem
    .dungeon WC
step
    #xprate <1.5
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Tötet |cRXP_ENEMY_Oasenschnappkiefer|r in und um den See herum. Plündert sie für ihre |cRXP_LOOT_Veränderte Schnappkieferschale|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
    .dungeon WC
step
    #xprate <1.5
    #completewith next
    .subzone 380 >>Return to Das Wegekreuz
    .dungeon WC
step
    #xprate <1.5
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 880 >>Gebt die Quest Veränderte Wesen ab
    .accept 1489 >>Akzeptiert die Quest Hamuul Runentotem
    .accept 3301 >>Akzeptiert die Quest Mura Runentotem
    .target Tonga Runetotem
    .dungeon WC
step
    #xprate <1.5
    #completewith next
    .goto The Barrens,52.33,46.58,60,0
    >>Tötet |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geschlagener Kadaver|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #xprate <1.5
    #loop
    .goto The Barrens,48.95,48.70,0
    .goto The Barrens,49.10,47.16,0
    .goto The Barrens,52.53,46.33,0
    .goto The Barrens,48.95,48.70,60,0
    .goto The Barrens,49.10,47.16,60,0
    .goto The Barrens,52.53,46.33,60,0
    >>Tötet |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Tötet |cRXP_ENEMY_Lakota'mani|r. Plündert sie für die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r]
    >>|cRXP_WARN_Benutzt die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r] um die Quest zu beginnen|r
    >>|cRXP_WARN_Er hat 4 Spawnpunkte (auf der Karte markiert)|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr ihn nicht finden könnt|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTFP
    .subzone 378 >>Reist nach Camp Taurajo
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 883 >>Gebt die Quest Lakota'mani ab
    .target Jorn Skyseer
    .isOnQuest 883
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Gebt die Quest Ken'ziglas Trunk ab
    .accept 1515 >>Akzeptiert die Quest Dograns Gefangenschaft
    .target Grunt Logmar
step
    #label CampTFP
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 878 >>Akzeptiert die Quest Stämme im Krieg
    .target Mangletooth
step << !Tauren
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp >>Erlernt die Camp Taurajo-Flugroute
    .target Omusa Thunderhorn
    .subzoneskip 378,1
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Gebt die Quest Dograns Gefangenschaft ab
    .accept 1512 >>Akzeptiert die Quest Die Liebesgabe
    .target Grunt Dogran
step
    #loop
    .goto The Barrens,45.16,53.98,0
    .goto The Barrens,44.85,51.73,0
    .goto The Barrens,43.32,48.08,0
    .goto The Barrens,40.91,45.33,0
    .goto The Barrens,43.40,52.22,0
    .goto The Barrens,43.00,55.21,0
    .goto The Barrens,45.16,53.98,60,0
    .goto The Barrens,44.85,51.73,60,0
    .goto The Barrens,43.32,48.08,60,0
    .goto The Barrens,40.91,45.33,60,0
    .goto The Barrens,43.11,48.70,60,0
    .goto The Barrens,43.40,52.22,60,0
    .goto The Barrens,43.00,55.21,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    .goto The Barrens,44.55,59.27
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für einen |T134128:0|t[|cRXP_LOOT_Blutsplitter|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 878 >>Gebt die Quest Stämme im Krieg ab
    .accept 5052 >>Akzeptiert die Quest Blutsplitter von Agamaggan
    .turnin 5052 >>Gebt die Quest Blutsplitter von Agamaggan ab
    .target Mangletooth
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .aura 16618 >>|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r |cRXP_WARN_to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Quetschzahn|r
    >>|cRXP_WARN_Überspringen diesen Schritt, falls ihr die Donnerfels-Flugroute habt|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << skip
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .accept 6382 >>Akzeptiert die Quest Die Jagd im Eschental
    .target Jorn Skyseer
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Reist nach Mulgore
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Nehmt den Aufzug nach Donnerfels
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #completewith TBvisit1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kliffläufer Windschreiter|r
	>>|cRXP_WARN_Er patrouilliert auf den Terrassen, also müsst ihr euch vielleicht nach ihm umsehen|r
    .accept 742 >>Akzeptiert die Quest Die Jagd im Eschental
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step << !Tauren
    #xprate <1.5
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << !Tauren
    #xprate >1.49
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
    .dungeon BFD
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step
    #completewith WCRFCTUrnins
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .turnin 5723 >>Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #xprate <1.5
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Gebt die Quest Hamuul Runentotem ab
    .accept 1490 >> Akzeptiert die Quest Nara Wildmane
    .dungeon WC
step
    #xprate <1.5
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
    .accept 914 >> Akzeptiert die Quest Anführer der Giftzähne
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 27 >> Akzeptiert die Quest Eine wertvolle Lektion
    .target Turak Runetotem
step
    #optional
    #label WCRFCTUrnins
step
    #xprate <1.5
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #xprate <1.5
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
step
    #xprate <1.5
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate >1.49
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
    .dungeon WC
step
    #xprate >1.49
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
    .dungeon WC
step
    #xprate >1.49
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
    .dungeon WC
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 14914 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <22,1
    .xp >24,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 15262 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <24,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <22,1
    .xp >24,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 2121 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <24,1
step
    #xprate <1.5
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 905 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <22,1
    .xp >24,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <24,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Akzeptiert die Quest Ruf des Wassers
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Stellt|r |T133688:0|t[Schwerer Leinenverband] |cRXP_WARN_bis euer skill auf 80 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht genug|r |T132889:0|t[Leinenstoff] |cRXP_WARN_hattet, um Skill 80 zu erreichen|r
    .train 3277 >> Erlernt |T133684:0|t[Wollverband]
    .train 7934 >> Erlernt |T134437:0|t[Gegengift] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Erstellt|r |T134437:0|t[Gegengift] |cRXP_WARN_falls ihr|r |T134339:0|t[Kleiner Giftbeutel]  gefunden habt 
    >>|cRXP_WARN_Behaltet sie für später|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    #xprate <1.5
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Tauren
    #xprate >1.49
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
    .dungeon BFD
step
    #completewith Steelsnap1
    .goto Thunder Bluff,61.31,78.25,60 >> Reist zur Anhöhe der Jäger
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 1130 >> Gebt die Quest Melor schickt Kunde ab
    .accept 1131 >> Akzeptiert die Quest Stahlbiss
    .target Melor Stonehoof
    .isOnQuest 1130
step
    #label Steelsnap1
    #optional
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 1131 >> Akzeptiert die Quest Stahlbiss
    .target Melor Stonehoof
    .isQuestAvailable 1131
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <22,1
    .xp >24,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 14262 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <24,1
step << Hunter
    #optional
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
    .xp <20,1
    .xp >24,1
step << Hunter
    #optional
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24558 >> Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
    .xp <24,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 845 >> Trainiere deine Klassenfähigkeiten
    .accept 1823 >> Akzeptiert die Quest Gespräch mit Ruga
    .target Torm Ragetotem
step
    #label TBvisit1
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Akzeptiert die Quest Die heilige Flamme
    .target Zangen Stonehoof
step
    #loop
    .goto Thunder Bluff,41.54,57.87,70,0
    .goto Thunder Bluff,52.76,62.07,30,0
    .goto Thunder Bluff,55.63,50.08,70,0
    .goto Thunder Bluff,41.54,57.87,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kliffläufer Windschreiter|r
	>>|cRXP_WARN_Er patrouilliert auf den Terrassen, also müsst ihr euch vielleicht nach ihm umsehen|r
    .accept 742 >>Akzeptiert die Quest Die Jagd im Eschental
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Tal
    .zoneskip The Barrens
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r und |cRXP_FRIENDLY_Mebok|r
    .turnin 1094 >>Gebt die Quest Weitere Instruktionen ab
    .accept 1095 >>Weitere Instruktionen annehmen
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Gebt die Quest Raptorhörner ab
    .turnin 1069 >>Gebt die Quest Eier der Kluftmoosspinnen ab
    .accept 1491 >>Akzeptiert die Quest Klugheitstränke
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
step
    #xprate <1.5
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    .home >>Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Ihr solltet euch jetzt eine Gruppe für die Höhlen des Wehklagens suchen
    .dungeon WC
step
    #xprate <1.5
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step
    #xprate >1.49
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r und |cRXP_FRIENDLY_Tonga|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
    .turnin 899 >> Gebt die Quest Von Hass zerfressen ab
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Gebt die Quest Die Brackige Oase ab
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    #xprate >1.49
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
    .turnin 899 >> Gebt die Quest Von Hass zerfressen ab
    .target Mankrik
    .dungeon WC
step
    #xprate <1.5
    #optional
    #completewith WCcavepickups
    .destroy 5085 >>|cRXP_WARN_Destroy the remaining|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    #optional
    #completewith WCcavepickups
    .destroy 5085 >>|cRXP_WARN_Destroy the remaining|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
    .dungeon WC
step
    #xprate <1.5
    .goto The Barrens,46.15,36.93,100 >> Reist zu den Höhlen des Wehklagens
step
    #xprate >1.49
    .goto The Barrens,46.15,36.93,100 >> Reist zu den Höhlen des Wehklagens
    .dungeon WC
step
    #xprate <1.5
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Lauft den Berg hinauf am Versammlungsstein der Höhlen des Wehklagens
    >>|cRXP_WARN_Folgt dem Pfeil genau zur verborgenen Höhle|r
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .accept 1486 >>Deviatbälge annehmen
    .target Nalpak
    .maxlevel 21
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Sie befinden sich über dem Eingang der Höhlen des Wehklagens|r
    .accept 1486 >> Deviatbälge annehmen
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Ausrottung der Deviat annehmen
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #xprate <1.5
    #optional
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loote sie für ihre |cRXP_LOOT_Ausblenden|r
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
step
    #xprate <1.5
    #completewith EnterWC
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #xprate <1.5
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Er hat eine lange Respawn-Zeit. Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #xprate >1.49
    #optional
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loote sie für ihre |cRXP_LOOT_Ausblenden|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .isOnQuest 1486
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #xprate >1.49
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Er hat eine lange Respawn-Zeit. Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Betretet das HDW-Instanzportal. Tretet ein
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Tötet |cRXP_ENEMY_Lord Kobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r und |cRXP_ENEMY_Lord Serpentis|r. Plündert sie für ihre |cRXP_LOOT_Edelsteine|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muyoh|r beim Eingang der Höhlen des Wehklagens. Begleitet ihn sicher zu |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Sobald ihr |cRXP_FRIENDLY_Naralex|r erreicht habt, werdet ihr von zwei Wellen Feinden angegriffen und schließlich von |cRXP_ENEMY_Mutanus der Verschlinger|r
    >>Tötet ihn und plündert |T135229:0|t[|cRXP_LOOT_Der leuchtende Splitter|r] von ihm und benutzt ihn, um die Quest zu starten
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Der leuchtende Splitter annehmen
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_The rest of these quests can be finished outside of the wailing caverns instance portal|r (NOT TRANSLATED IN :deDE YET)
    .dungeon WC
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate <1.5
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :deDE YET)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
step
    #xprate <1.5
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .isOnQuest 1491
step
    #xprate <1.5
    #label EssenceHides
    #optional
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :deDE YET)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
step
    #xprate <1.5
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #xprate >1.49
    #completewith EssenceHides
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #xprate >1.49
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :deDE YET)
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .isOnQuest 1486
    .dungeon WC
step
    #xprate >1.49
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #xprate >1.49
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Ruhestein nach Ratschet
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>|cRXP_WARN_Perform a 'Ghetto Hearth' in Wailing Caverns|r (NOT TRANSLATED IN :deDE YET)
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Wailing Caverns to ghetto Hearth back to Ratchet|r (NOT TRANSLATED IN :deDE YET)
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Gebt die Quest Klugheitstränke ab
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .dungeon WC
    .dungeon !BFD
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Reist den Berg hinauf
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Gebt die Quest Der leuchtende Splitter ab
    .accept 3369 >> Akzeptiert die Quest Alptraum
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Akzeptiert die Quest Alptraum
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >>Gebt die Quest Deviatbälge ab
    .target Nalpak
    .isQuestComplete 1486
step
    #xprate >1.49
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >>Gebt die Quest Deviatbälge ab
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .target Regthar Deathgate
step
    #optional
    #label WCTurnins
step
    #xprate <1.5
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
step
    #xprate <1.5
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
    .timer 4,Goblineindringlinge RP
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Gebt die Quest Tötet Grundig Finsterwolke ab
    .turnin 6523 >>Gebt die Quest Schützt Kaya ab
    .accept 6401 >>Akzeptiert die Quest Kaya lebt
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #xprate <1.5
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
    .timer 4,Goblineindringlinge RP
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Gebt die Quest Tötet Grundig Finsterwolke ab
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #xprate <1.5
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
    .timer 4,Goblineindringlinge RP
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>Gebt die Quest Schützt Kaya ab
    .accept 6401 >>Akzeptiert die Quest Kaya lebt
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #xprate <1.5
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
    .timer 4,Goblineindringlinge RP
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Folgt dem Pfad auf der linken Seite
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Gebt die Quest Blutfresser ab
    .target Xen'Zilla
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Reist nach Sonnenfels
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Jayka|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeeda|r auf der zweiten Etage des Gasthauses
    .vendor >>|cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << !Warrior
    .vendor >>|cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134413:0|t[Lebenswurz] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Gebt die Quest Arachnophobie ab
    .target Maggran Earthbinder
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >> Hinzurufen der Reserve annehmen
    .target Maggran Earthbinder
    .xp <23,1
step
    #xprate <1.5
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Gebt die Quest Kaya lebt ab
    .target Tammra Windfield
    .isOnQuest 6401
step
    #xprate <1.5
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Erlernt die Flugroute nach Sonnenfels
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad nach rechts hinauf
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    .target Tsunaman
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Betretet den Steinkrallenpfad
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Reist zum Außenposten von Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Vermeidet die Astranaar-Wachen unterwegs. Folgt dem Waypoint für Sicherheit|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Erlernt die Flugroute zum Außenposten von Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .accept 6921 >>Akzeptiert die Quest Inmitten der Ruinen
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Dies wird ein Eskortenquest starten. Seid vorsichtig, da es schwierig ist|r
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be VERY careful! |cRXP_ENEMY_Vorsha|r hits very hard. Grouping up is recommended|r (NOT TRANSLATED IN :deDE YET)
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
step
    #xprate <1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Klickt das |cRXP_PICK_Kohlenbecken|r an, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_auftauchen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_erscheint, seine hits sind sehr stark|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before attacking |cRXP_ENEMY_Vorsha|r!|r (NOT TRANSLATED IN :deDE YET)
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Klickt das |cRXP_PICK_Kohlenbecken|r an, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_auftauchen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_erscheint, seine hits sind sehr stark|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before fighting him!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be ready to use cooldowns and potions as |cRXP_ENEMY_Vorsha|r could crit you for high damage!|r (NOT TRANSLATED IN :deDE YET)
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate <1.5
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Reist zum Eingang der Tiefschwarzen Grotte
step
    #xprate <1.5
    #completewith next
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #xprate <1.5
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom-Gezeitenpriesterin|r. Plündert sie für ein |T134332:0|t[|cRXP_LOOT_Feuchte Notiz|r], und benutzt sie, um die Quest zu starten
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Akzeptiert die Quest Treue zu den Alten Göttern
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #xprate <1.5
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .accept 6565 >>Akzeptiert die Quest Treue zu den Alten Göttern
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate <1.5
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #xprate >1.49
    #completewith Tsunaman1
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Reist nach Sonnenfels
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Jayka|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6562
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >> Accept Calling in the Reserves (NOT TRANSLATED IN :deDE YET)
    .target Maggran Earthbinder
    .xp <23,1
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Erlernt die Flugroute nach Sonnenfels
    .target Tharm
    .subzoneskip 460,1
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad nach rechts hinauf
    .dungeon BFD
step
    #xprate >1.49
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    .target Tsunaman
    .dungeon BFD
step
    #xprate >1.49
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Betretet den Steinkrallenpfad
    .dungeon BFD
step
    #xprate >1.49
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Reist zum Außenposten von Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Vermeidet die Astranaar-Wachen unterwegs. Folgt dem Waypoint für Sicherheit|r
    .unitscan Astranaar Sentinel
    .dungeon BFD
step
    #xprate >1.49
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Erlernt die Flugroute zum Außenposten von Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
    .dungeon BFD
step
    #xprate >1.49
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .accept 6921 >>Akzeptiert die Quest Inmitten der Ruinen
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Reist zum Eingang der Tiefschwarzen Grotte
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
step
    #xprate >1.49
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom-Gezeitenpriesterin|r. Plündert sie für ein |T134332:0|t[|cRXP_LOOT_Feuchte Notiz|r], und benutzt sie, um die Quest zu starten
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Akzeptiert die Quest Treue zu den Alten Göttern
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #xprate >1.49
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .accept 6565 >>Akzeptiert die Quest Treue zu den Alten Göttern
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20
    .dungeon BFD
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Macht euren Weg zur Tiefschwarzen Grotte. Betretet sie
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späher Thaelrid|r
    .accept 6561 >>Schurkerei in der Tiefschwarzen Grotte annehmen
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Plündert den |cRXP_PICK_Fathom Stein|r im Wasser auf dem Boden für den |cRXP_LOOT_Fathomkern|r
    >>|cRXP_WARN_Das Plündern wird|r Baron Aquanis|cRXP_ENEMY_ beschwören|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Baron Aquanis|r. Plündert ihn für eine |T136222:0|t[|cRXP_LOOT_Seltsame Wasserkugel|r]. Benutzt sie, um die Quest zu akzeptieren
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Akzeptiert die Quest Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Plündert den |cRXP_PICK_Fathom Stein|r im Wasser auf dem Boden für den |cRXP_LOOT_Fathomkern|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Twilight-Lord Kelris|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Exit the dungeon (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Tötet|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_zuerst, wenn ihr möchtet. Dies ist der letzte Boss des Dungeons|r
    .dungeon BFD
step
    #xprate <1.5
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warsongläufer|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Gebt die Quest Vorsha die Peitscherin ab
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Gebt die Quest Die Naga am Zoramstrand ab
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Gebt die Quest Die Essenz von Aku'mai ab
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Gebt die Quest Inmitten der Ruinen ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Gebt die Quest Baron Aquanis ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 28 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <22,1
    .xp >24,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <24,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Loote the |cRXP_PICK_Schmuckstückbehälter|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_Geht nicht unter Wasser, bis ihr direkt über dem Schmuckstück ankommt|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Gebt die Quest Prüfung des Sees ab
    .accept 30 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step
    #xprate <1.5
    #optional
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Delete your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    #optional
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Delete your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate <1.5
    #completewith JourneytoTM
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #xprate >1.49
    #completewith JourneytoTM
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon BFD
    .dungeon !WC
step << Druid
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
step
    #xprate <1.5 << !Druid
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Andruk
    .zoneskip Thunder Bluff << !Druid
    .zoneskip Ashenvale,1 << Druid
    .dungeon WC
    --WC users still have HS in Ratchet
step << !Druid
    #xprate >1.49
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Andruk
    .zoneskip Thunder Bluff << !Druid
    .zoneskip Ashenvale,1 << Druid
    .dungeon WC
    .dungeon BFD
    --WC users still have HS in Ratchet
step
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    #xprate <1.5
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Gebt die Quest Die Ältestengreisin ab
    .accept 1064 >>Akzeptiert die Quest Die Hilfe der Verlassenen
    .timer 6,Die Ältestengreisin RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Gebt die Quest Anführer der Giftzähne ab
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Gebt die Quest Alptraum ab
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Gebt die Quest Schurkerei in der Tiefschwarzen Grotte ab
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision (NOT TRANSLATED IN :deDE YET)
    .turnin 1064 >>Gebt die Quest Die Hilfe der Verlassenen ab
    .accept 1065 >>Akzeptiert die Quest Reise nach Tarrens Mühle
    .turnin 962 >>Gebt die Quest Schlangenflaum ab
    .target Apothecary Zamah
step
    #optional
    #label JourneytoTM
step
    #xprate <1.5 << !Shaman
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Tal
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Gebt die Quest Klugheitstränke ab
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon !WC
step
    #xprate <1.5
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .turnin 1529 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Bragok
    .subzoneskip 378
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
    .home >>Setzt euren Ruhestein ins Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Gebt die Quest Ruf des Wassers ab
    .accept 1535 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Füllt euren|r |T132825:0|t[Leerer brauner Wasserschlauch] |cRXP_WARN_in der Wasserstelle unterhalb von Brines Hütte|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Gebt die Quest Ruf des Wassers ab
    .accept 1536 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step << Shaman
    #optional
    #completewith FlyOrg
    .hs >> Ruhestein nach Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Travel back to Camp Taurajo (NOT TRANSLATED IN :deDE YET)
    .cooldown item,6948,<0
    .subzoneskip 378
step << !Shaman !Tauren
    #xprate >1.49
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Erlernt die Flugroute nach Donnerfels
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !BFD
    .dungeon !WC
    .cooldown item,6948,>2,1
step << !Shaman
    #xprate >1.49
    #completewith MankrikTurnins
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon !BFD
    .cooldown item,6948,>2,1
step << !Shaman
    #xprate >1.49
    #completewith MankrikTurnins
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliegt nach Kreuzweg
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
step << Shaman
    #xprate >1.49
    #completewith MankrikTurnins
    #completewith
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fliegt nach Kreuzweg
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    #xprate >1.49
    #label MankrikTurnins
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
    .turnin 899 >> Gebt die Quest Von Hass zerfressen ab
    .target Mankrik
step
    #xprate >1.49
    #optional
    #completewith BarrensEnd
    .destroy 5085 >>|cRXP_WARN_Destroy the remaining|r |T133721:0|t[Bristleback Quilboar Tusks] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .subzoneskip 380,1
    .target Devrak
step << Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
    .subzoneskip 380
step << !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Bragok
    .subzoneskip 392,1
step << !Shaman
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step
    #optional
    #label FlyOrg
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Gebt die Quest Die Liebesgabe ab
    .accept 1513 >>Die Bindung annehmen
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Benutzt|r |T133290:0|t[Dograns Anhänger] |cRXP_WARN_am Beschwörungskreis|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Tötet die |cRXP_ENEMY_Beschworener Sukkubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Gebt die Quest Die Bindung ab
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Kauft ein|r |T135640:0|t[Jambiya] |cRXP_BUY_von ihm, falls ihr keinen Dolch habt|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Erlernt |T133644:0|t[Taschendiebstahl]
    .train 8676 >> Trainieren |T132282:0|t[Hinterhalt]
    .train 1943 >> Erlernt |T132302:0|t[Blutung]
    .train 1856 >> Erlernt |T132331:0|t[Verschwinden]
    .train 1725 >> Erlernt |T132289:0|t[Ablenken]
    .train 1785 >> Erlernt |T132320:0|t[Verstohlenheit Rang 2]
    .accept 2460 >>Akzeptiert die Quest Der Shattered-Gruß
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Nachdem |cRXP_FRIENDLY_Shenthul|r salutiert hat gib /Salutieren während du ihn als Ziel ausgewählt hast
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Gebt die Quest Der Shattered-Gruß ab
    .accept 2458 >>Akzeptiert die Quest Undercover
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Kauft|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_von ihm|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_von ihr|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Thuul|r oben auf der Hütte
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Betretet das Brachland durch den westlichen Ausgang
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133443:0|t[|cRXP_LOOT_Half Pendant of Aquatic Agility|r] (NOT TRANSLATED IN :deDE YET)
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Ziel |cRXP_FRIENDLY_Zuchtmeister Fizzule|r, dann benutzt eure |T134536:0|t[Leuchtfeuerwaffe] zwei mal und schreibt  /Salutieren
    >>|cRXP_WARN_Seid vorsichtig! Nähert euch ihm NICHT, bis er Befreundet wird, sonst wird er euch angreifen!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Zuchtmeister Fitzel|r
    .turnin 2458 >>Gebt die Quest Undercover ab
    .accept 2478 >>Akzeptiert die Quest Mission: möglich, aber nicht sehr wahrscheinlich
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf den |cRXP_ENEMY_Großknecht Silixiz|r für seinen |cRXP_LOOT_Turmschlüssel|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Jeder Mob hier erleidet verstärkten Schaden gegen bestimmte Fähigkeiten|r
    >>Benutzt |T132282:0|t[Hinterhalt] auf die |cRXP_ENEMY_Mutierte Drohne der Venture Co.|r
    >>Benutzt |T132302:0|t[Blutung] auf die |cRXP_ENEMY_Patrouille der Venture Co.|r
    >>Benutzt |T132292:0|t[Ausweiden] auf die |cRXP_ENEMY_Ausguck der Venture Co.|r einmal (1 Kombo-Punkt)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Lauft in den Schurke Turm und tötet die |cRXP_ENEMY_Drohnen|r, die |cRXP_ENEMY_Turmpatrouille|r und die |cRXP_ENEMY_Ausgucker|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Oben auf dem Turm findet ihr |cRXP_ENEMY_Gallywix|r. Plündert seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Benutzt|r |T132282:0|t[Hinterhalt] |cRXP_WARN_um sein Leben zur Hälfte zu reduzieren. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_um Energie wiederherzustellen und benutzt|r |T136205:0|t[Entrinnen]
	>>|cRXP_WARN_Erinnert euch, einen Trank und|r |T132819:0|t[Disteltee] |cRXP_WARN_falls nötig zu benutzen|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Benutzen von Euch Schlossknacken, um |cRXP_PICK_Gallywix's Schließkassette|r zu öffnen, und plündert die |cRXP_LOOT_Mixtur|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Die und respawn at the |cRXP_FRIENDLY_Geistheiler|r,or run to Orgrimmar through the western entrance
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Travel to Orgrimmar through the Western entrance (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Gebt die Quest Mission: möglich, aber nicht sehr wahrscheinlich ab
    .accept 2479 >>Hinotts Hilfe annehmen
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Kauft|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_von ihm|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135423:0|t[Tödliche Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 25875,1,493,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Falls ihr irgendwelche |T134437:0|t[Gegengift]  habt|cRXP_WARN_, benutzt einen davon, um euch von|r |T136230:0|t[Berührung von Zanzil]|cRXP_WARN_ zu heilen|r
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Löscht die|r |T134536:0|t[Leuchtfeuerwaffe] |cRXP_WARN_aus euren Taschen, da sie nicht mehr benötigt wird|r
    .destroy 8066 >> |cRXP_WARN_Löscht|r |T134374:0|t[Fizzule's Pfeife] |cRXP_WARN_aus eurer Tasche, da sie nicht mehr benötigt wird|r
step << !Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Gryshka|r
    .home >> Setzt euren Ruhestein nach Orgrimmar
	.target Innkeeper Gryshka
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Verlasst Orgrimmar
    .zoneskip Durotar
step
    #optional
    .abandon 1486 >>Brecht die Quest Deviatbälge ab
step
    #optional
    .abandon 1487 >>Brecht die Quest Ausrottung der Deviat ab
step
    #optional
    .abandon 914 >>Brecht die Quest Anführer der Giftzähne ab
step
    #optional
    .abandon 855 >>Brecht die Quest Zentaurenarmschienen ab
step
    #optional
    .abandon 959 >>Brecht die Quest Ärger auf den Docks ab
step
    #optional
    .abandon 1491 >>Brecht die Quest Klugheitstränke ab
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 23-25 Hillsbrad Foothills
#version 7
#subgroup RestedXP Horde 1-30
#next 27-30 Eschental

step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >> Now you should be looking for a group to Shadowfang Keep (NOT TRANSLATED IN :deDE YET)
    .dungeon SFK
step << !Mage
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Verlasst Orgrimmar
    .zoneskip Durotar
step << !Mage
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .dungeon SFK << !Shaman
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .dungeon SFK << !Shaman
step << Mage
    #completewith JourneytoHillsbrad
    .cast 3563 >>Cast |T135766:0|t[Teleport: Undercity] (NOT TRANSLATED IN :deDE YET)
    .zoneskip Undercity
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity Flight Path (NOT TRANSLATED IN :deDE YET)
    .target Michael Garrett
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>Das Buch von Ur annehmen
    .target Keeper Bel'dugur
    .dungeon SFK
step
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Silverpine Forest
    .dungeon SFK << !Shaman !Mage
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >> Reist nach Silberwald
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >> Travel North East toward the Great Sea (NOT TRANSLATED IN :deDE YET)
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133442:0|t[|cRXP_LOOT_Half Pendant of Aquatic Endurance|r] (NOT TRANSLATED IN :deDE YET)
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith JourneytoHillsbrad
    .subzone 228 >>Lauf nach Das Grabmal
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Get The Sepulcher flight path (NOT TRANSLATED IN :deDE YET)
    .target Karos Razok
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .accept 1014 >>Akzeptiert die Quest Arugal muss sterben
    .target Dalar Dawnweaver
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Renferrel|r
    .accept 493 >> Reise in das Vorgebirge von Hillsbrad annehmen
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r downstairs in the crypt (NOT TRANSLATED IN :deDE YET)
    .accept 1098 >>Akzeptiert die Quest Todespirscher in Shadowfang
    .target High Executor Hadrec
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,41.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mura|r (NOT TRANSLATED IN :deDE YET)
    .turnin 3301 >> Turn in Mura Runetotem (NOT TRANSLATED IN :deDE YET)
    .target Mura Runetotem
    .isOnQuest 3301
    .dungeon WC << !Shaman
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,44.18,42.68
    >>Interact with |cRXP_PICK_Yuriv's Tombstone|r on the ground (NOT TRANSLATED IN :deDE YET)
    .turnin 264 >> Turn in Until Death Do Us Part (NOT TRANSLATED IN :deDE YET)
    .target Clarice Foster
    .isOnQuest 264
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >> BETRETET das Burg Schattenfang-Portal. Betretet die Instanz
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vincent|r
    .turnin 1098 >> Gebt die Quest Todespirscher in Burg Schattenfang ab
    .target Deathstalker Vincent
    .dungeon SFK
    .isOnQuest 1098
step
    >>Plündert |cRXP_PICK_Book of Ur|r aus dem Bücherregal im Raum von |cRXP_ENEMY_Fenrus the Devourer's|r
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>Tötet |cRXP_ENEMY_Erzmagier Arugal|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 1014,1 --Head of Arugal (1)
    .mob Archmage Arugal
    .dungeon SFK
    .isOnQuest 1014
step
    #hardcore
    #completewith SFKTurnins
    .goto Silverpine Forest,45.51,41.26,150,0
    .subzone 228 >>Lauf nach Das Grabmal
    .dungeon SFK
step
    #softcore
    #completewith SFKTurnins
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hadrec|r
    .turnin 1098 >>Gebt die Quest Todespirscher in Burg Schattenfang ab
    .target High Executor Hadrec
    .dungeon SFK
    .isQuestComplete 1098
step
    #label SFKTurnins
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 1014 >>Gebt die Quest Arugal muss sterben ab
    .target Dalar Dawnweaver
    .dungeon SFK
    .isQuestComplete 1014
step
    #completewith next
    .zone Hillsbrad Foothills >> Travel to Hillsbrad Foothills (NOT TRANSLATED IN :deDE YET)
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Todespirscherin Lesch|r
    .accept 494 >> Zeit zum Zuschlagen annehmen
    .target Deathstalker Lesh
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >> Lauf nach Tanaris Mill
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zarise|r
    .fp Tarren Mill>> Get the Tarren Mill Flight Path (NOT TRANSLATED IN :deDE YET)
    .target Zarise
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hinott|r
    .turnin 2479 >>Turn in Hinott's Assistance (NOT TRANSLATED IN :deDE YET)
    .accept 2480 >>Hinotts Hilfe annehmen
    .timer 30,Hinott's Assistance RP (NOT TRANSLATED IN :deDE YET)
    .target Serge Hinott
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>Wait for |cRXP_FRIENDLY_Hinott|r to complete the cure (NOT TRANSLATED IN :deDE YET)
    .complete 2480,1 --Cure Completed (1)
step << Rogue
    .goto Hillsbrad Foothills,61.64,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hinott|r
    .turnin 2480 >>Turn in Hinott's Assistance (NOT TRANSLATED IN :deDE YET)
    .target Serge Hinott
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>|cRXP_WARN_Benutzen|r |T134807:0|t[Hinott's Oil] |cRXP_WARN_to cure yourself of the|r |T136230:0|t[Touch of Zanzil]
step << Rogue
    #completewith TarrenMillPickups
    >>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons] (NOT TRANSLATED IN :deDE YET)
    .collect 6947,20,498,1 --Collect Instant Poison (20)
step
    #xprate <1.5
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Apotheker Lydon|r
    .turnin 1065 >> Turn in Journey to Tarren Mill (NOT TRANSLATED IN :deDE YET)
    .accept 1066 >> Das Blut Unschuldiger annehmen
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills (NOT TRANSLATED IN :deDE YET)
    .accept 496 >> Elixier des Leidens annehmen
    .accept 501 >> Elixier der Schmerzen annehmen
    .target Apothecary Lydon
    .isOnQuest 1065
step
    #xprate <1.5
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Apotheker Lydon|r
    .accept 1066 >> Das Blut Unschuldiger annehmen
    .target Apothecary Lydon
    .isQuestTurnedIn 1065
step
    #xprate >1.49
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Apotheker Lydon|r
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills (NOT TRANSLATED IN :deDE YET)
    .accept 496 >> Elixier des Leidens annehmen
    .accept 501 >> Elixier der Schmerzen annehmen
    .target Apothecary Lydon
    .isOnQuest 1065
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>|cRXP_WARN_Use the|r |T132829:0|t[Empty Red Waterskin] |cRXP_WARN_at the well in the middle of Tarren Mill|r (NOT TRANSLATED IN :deDE YET)
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochexekutorin Darthalia|r
    .turnin 494 >> Turn in Time To Strike (NOT TRANSLATED IN :deDE YET)
    .accept 527 >> Kampf um das Hügelland annehmen
    .target High Executor Darthalia
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duskingdawn|r
    .turnin 9425 >> Turn in Report to Tarren Mill (NOT TRANSLATED IN :deDE YET)
    .target Advisor Duskingdawn
    .isOnQuest 9425
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 549 >> GESUCHT: Syndikatspersonal annehmen
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krusk|r
    .accept 498 >> Die Rettung annehmen
    .target Krusk
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihm|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>Klickt auf das |cRXP_FRIENDLY_Gesucht Poster|r
    .accept 567 >> Gefährlich! annehmen
step << Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Shay|r
    .home >>Setzt euren Ruhestein in Tarrens Mühle
	.target Innkeeper Shay
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Shay|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r (NOT TRANSLATED IN :deDE YET)
    .stable >> Stable your pet. You will tame a |cRXP_ENEMY_Gray Bear|r and a |cRXP_ENEMY_Forest Moss Creeper|r shortly (NOT TRANSLATED IN :deDE YET)
    .target Theodore Mont Claire
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Gray Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
    .train 17263 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Forest Moss Creeper|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 3)] (NOT TRANSLATED IN :deDE YET)
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .mob Gray Bear
    .mob Forest Moss Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Theodore|r (NOT TRANSLATED IN :deDE YET)
    .stable >> Abandon the |cRXP_ENEMY_Gray Bear|r or |cRXP_ENEMY_Forest Moss Creeper|r and retrieve your regular pet (NOT TRANSLATED IN :deDE YET)
    .target Theodore Mont Claire
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>|cRXP_WARN_Use the|r |T132273:0|t[Instant Poison] |cRXP_WARN_on your weapons|r (NOT TRANSLATED IN :deDE YET)
    .itemcount 6947,2
step
	#completewith next
    >>Kill |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spiders|r en route. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_Domestizierter Krabbler|r |cRXP_WARN_as they're high level and not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >> Lauf zum Teufelswald Keep
    .isOnQuest 549,1066,498
step
    #xprate <1.5
    #completewith Drull
    >>Kill |cRXP_ENEMY_Schurke des Syndikats|r, |cRXP_ENEMY_Watchmen|r, und |cRXP_ENEMY_Shadow Mages|r.
    >>Loot the |cRXP_ENEMY_Shadow Mages|r for their |cRXP_LOOT_Vials of Innocent Blood|r (NOT TRANSLATED IN :deDE YET)
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob +Syndicate Shadow Mage
    .isOnQuest 1066
step
    #optional
    #xprate <1.5
    #completewith Drull
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Watchmen|r (NOT TRANSLATED IN :deDE YET)
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
    .isNotOnQuest 1066
step
    #xprate >1.49
    #completewith Drull
    >>Kill |cRXP_ENEMY_Syndicate Rogues|r and |cRXP_ENEMY_Watchmen|r (NOT TRANSLATED IN :deDE YET)
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Kill |cRXP_ENEMY_Kerkermeister Eston|r. Loote ihn für seine |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r (NOT TRANSLATED IN :deDE YET)
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>Kill |cRXP_ENEMY_Kerkermeister Marlgen|r. Loote ihn für seine |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r or at the bottom of the tower|r (NOT TRANSLATED IN :deDE YET)
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>Klick auf das |cRXP_PICK_Kugel und Kette|r auf dem Boden
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_and|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> Verkaufe und Repariere
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_BUY_from her if they're up|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> Verkaufe und Repariere
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Buy|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] |cRXP_BUY_from her if they're up|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> Verkaufe und Repariere
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] |cRXP_WARN_and|r |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] (NOT TRANSLATED IN :deDE YET)
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
    .equip 7,1831
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equip the|r |T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r] (NOT TRANSLATED IN :deDE YET)
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Legt die|r |T132603:0|t[|cRXP_FRIENDLY_Wolf-Armschienen|r] an
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kris|r
    .vendor >> Verkaufe und Repariere
    .target Kris Legace
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>Kill |cRXP_ENEMY_Kerkermeister Eston|r. Loote ihn für seine |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_He can be found in front of |cRXP_FRIENDLY_Tog'thar|r's Barracks, or in front of|r |cRXP_FRIENDLY_Drull|r (NOT TRANSLATED IN :deDE YET)
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Klick auf das |cRXP_PICK_Kugel und Kette|r auf dem Boden
    .complete 498,1 --Rescue Drull (1)
step
    #xprate <1.5
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Schurke des Syndikats|r und |cRXP_ENEMY_Wachmann des Syndikats|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #xprate <1.5
    #optional
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Kill |cRXP_ENEMY_Schattenmagier des Syndikats|r. Loote sie für ihre |cRXP_LOOT_Vials|r
    >>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r (NOT TRANSLATED IN :deDE YET)
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Shadow Mage
    .isOnQuest 1066
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Kill |cRXP_ENEMY_Schurke des Syndikats|r und |cRXP_ENEMY_Wachmann des Syndikats|r
    >>|cRXP_WARN_More of them can be found at the tower just southwest of the keep|r (NOT TRANSLATED IN :deDE YET)
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
	#completewith next
    >>Töte |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spinne|r en route back to Tarren Mill. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_Domestizierter Krabbler|r |cRXP_WARN_as they're high level and not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >> Kehrt nach Tarrens Mühle zurück
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krusk|r und |cRXP_FRIENDLY_Darthalia|r
    .turnin 498 >> Turn in The Rescue (NOT TRANSLATED IN :deDE YET)
    .target +Krusk
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >> Turn in WANTED: Syndicate Personnel (NOT TRANSLATED IN :deDE YET)
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihm|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Shay|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 527
    .subzoneskip 272,1
step
    #xprate <1.5
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r und |cRXP_FRIENDLY_Umpi|r
    .turnin 496 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .accept 499 >> Elixier des Leidens annehmen
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #xprate <1.5
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r und |cRXP_FRIENDLY_Umpi|r
    .accept 499 >> Elixier des Leidens annehmen
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .turnin 1066 >> Turn in Blood of Innocents (NOT TRANSLATED IN :deDE YET)
    .goto Hillsbrad Foothills,61.44,19.05
    .target Apothecary Lydon
    .isQuestComplete 1066
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>|cRXP_WARN_Delete the|r |T134238:0|t[Burnished Gold Key] |cRXP_WARN_from your bags, as it's no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>|cRXP_WARN_Delete the|r |T134237:0|t[Dull Iron Key] |cRXP_WARN_from your bags, as it's no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
	#completewith Fields1
    >>Kill |cRXP_ENEMY_Verhungernder Berglöwe|r. Loote sie für ihre |cRXP_LOOT_Berglöwenblut|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
	#completewith Fields1
    >>Töte |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Spinne|r en route back to Tarren Mill. Loot them for their |cRXP_LOOT_Tongues|r and |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Elder Gray Bears|r |cRXP_WARN_and|r |cRXP_ENEMY_Domestizierter Krabbler|r |cRXP_WARN_as they're high level and not worth killing|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.7,39.4
    .subzone 286 >> Reist zu den Feldern des Hügellands
    .isOnQuest 527
step
    #completewith FarmerRay
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r in and around the fields (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Bauer des Hügellands|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_Ihr|r << Rogue/Warrior/Shaman/Paladin
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
    .isOnQuest 527
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>Töte |cRXP_ENEMY_Bauer Getz|r
    >>|cRXP_WARN_He has three different spawn locations. In the house, barn, or field|r (NOT TRANSLATED IN :deDE YET)
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
    .isOnQuest 527
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,10,0
    >>Töte |cRXP_ENEMY_Bauer Ray|r
    >>|cRXP_WARN_He can spawn outside under the grapevine or in the 1st or 2nd floor of the house|r (NOT TRANSLATED IN :deDE YET)
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
    .isOnQuest 527
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Hillsbrad Farmhands|r in and around the fields (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Bauer des Hügellands|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_Ihr|r << Rogue/Warrior/Shaman/Paladin
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
    .isOnQuest 527
step
    #optional
	#completewith TarrenMillTurnins2
    .subzone 272 >>Travel to Tarren Mill (NOT TRANSLATED IN :deDE YET)
step
	#completewith TarrenMillTurnins2
    >>Kill |cRXP_ENEMY_Gray Bears|r und |cRXP_ENEMY_Verhungernder Berglöwe|r. Loote sie für ihre |cRXP_LOOT_Graubärenzunge|r und |cRXP_LOOT_Berglöwenblut|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r und |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .accept 499 >> Elixier des Leidens annehmen
    .turnin 501 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .accept 502 >> Elixier der Schmerzen annehmen
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >> Gebt die Quest Kampf um das Hügelland ab
    .accept 528 >> Kampf um das Hügelland annehmen
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >> Andenken des Todes annehmen
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
    .isQuestComplete 501
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r und |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .accept 499 >> Elixier des Leidens annehmen
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >> Gebt die Quest Kampf um das Hügelland ab
    .accept 528 >> Kampf um das Hügelland annehmen
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >> Andenken des Todes annehmen
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r und |cRXP_FRIENDLY_Samsa|r
    .turnin 501 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .accept 502 >> Elixier der Schmerzen annehmen
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 527 >> Gebt die Quest Kampf um das Hügelland ab
    .accept 528 >> Kampf um das Hügelland annehmen
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >> Andenken des Todes annehmen
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .accept 499 >> Elixier des Leidens annehmen
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .target Umpi
    .isQuestTurnedIn 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darthalia|r und |cRXP_FRIENDLY_Samsa|r
    .turnin 527 >> Gebt die Quest Kampf um das Hügelland ab
    .accept 528 >> Kampf um das Hügelland annehmen
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >> Andenken des Todes annehmen
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 527
step
    #optional
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darthalia|r und |cRXP_FRIENDLY_Samsa|r
    .accept 528 >> Kampf um das Hügelland annehmen
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
    .accept 546 >> Andenken des Todes annehmen
    .goto Hillsbrad Foothills,62.11,19.68
    .target +Deathguard Samsa
    .isQuestTurnedIn 527
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Shay|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith Fields2
    >>Kill |cRXP_ENEMY_Gray Bears|r und |cRXP_ENEMY_Verhungernder Berglöwe|r. Loote sie für ihre |cRXP_LOOT_Graubärenzunge|r und |cRXP_LOOT_Berglöwenblut|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
    .isOnQuest 501
step
	#completewith Fields2
    >>Kill |cRXP_ENEMY_Gray Bears|r. Loote sie für ihre |cRXP_LOOT_Graubärenzunge|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
    .isQuestTurnedIn 501
    .isOnQuest 496
step
	#completewith Fields2
    >>Kill |cRXP_ENEMY_Verhungernder Berglöwe|r. Loote sie für ihre |cRXP_LOOT_Berglöwenblut|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isQuestTurnedIn 496
    .isOnQuest 501
step
    #label Fields2
	.goto Hillsbrad Foothills,32.67,35.33
    .subzone 286 >> Reist zu den Feldern des Hügellands
    .isOnQuest 528
step
    #completewith HillsbradPeasants
    >>Kill |cRXP_ENEMY_Hillsbrad Humans|r. Loote sie für ihre |cRXP_LOOT_Totenschädel|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 546,1 --Hillsbrad Human Skull (30)
    .isOnQuest 546
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Wütender Stanley|r
    >>|cRXP_ENEMY_Wütender Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .timer 9,Stanley RP (BE ALERT) (NOT TRANSLATED IN :deDE YET)
    .mob Stanley
    .isQuestTurnedIn 501
step
    #loop
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    .goto Hillsbrad Foothills,36.54,39.44,0
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
    >>Kill |cRXP_ENEMY_Citizen Wilkes|r
    >>|cRXP_WARN_He patrols around the roads of the town|r (NOT TRANSLATED IN :deDE YET)
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
    .isOnQuest 567
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Wütender Stanley|r
    >>|cRXP_ENEMY_Wütender Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .timer 9,Stanley RP (BE ALERT) (NOT TRANSLATED IN :deDE YET)
    .mob Stanley
    .isQuestTurnedIn 501
step
    #completewith next
	>>Töte |cRXP_ENEMY_Arbeiter des Hügellands|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
    .isQuestTurnedIn 527
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Töte |cRXP_ENEMY_Bäuerin Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
    .isOnQuest 567
step
    #label HillsbradPeasants
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	>>Töte |cRXP_ENEMY_Arbeiter des Hügellands|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
    .isQuestTurnedIn 527
step
    #completewith next
    >>Finish killing |cRXP_ENEMY_Mountain Lions|r.Loote them for their |cRXP_LOOT_Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isOnQuest 501
step
    #loop
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>Finish killing |cRXP_ENEMY_Bears|r.Loote them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
    .isOnQuest 496
step
    #loop
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>Finish killing |cRXP_ENEMY_Mountain Lions|r.Loote them for their |cRXP_LOOT_Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .isOnQuest 501
    .mob Starving Mountain Lion
step
    #loop
	.goto Hillsbrad Foothills,62.85,38.74,60,0
	.goto Hillsbrad Foothills,62.24,39.96,60,0
	.goto Hillsbrad Foothills,60.92,37.92,60,0
	.goto Hillsbrad Foothills,59.62,33.33,60,0
	.goto Hillsbrad Foothills,56.88,29.73,60,0
	.goto Hillsbrad Foothills,59.80,27.72,60,0
	.goto Hillsbrad Foothills,57.63,24.16,60,0
	.goto Hillsbrad Foothills,56.47,16.42,60,0
	.goto Hillsbrad Foothills,59.36,14.55,60,0
	.goto Hillsbrad Foothills,60.54,13.67,60,0
	.goto Hillsbrad Foothills,62.65,12.90,60,0
	.goto Hillsbrad Foothills,64.43,10.22,60,0
	.goto Hillsbrad Foothills,65.18,6.93,60,0
	.goto Hillsbrad Foothills,65.31,5.76,60,0
	.goto Hillsbrad Foothills,66.90,9.02,60,0
	.goto Hillsbrad Foothills,70.39,8.89,60,0
	.goto Hillsbrad Foothills,68.86,10.18,60,0
	.goto Hillsbrad Foothills,67.35,12.95,60,0
	.goto Hillsbrad Foothills,71.38,19.81,60,0
	.goto Hillsbrad Foothills,71.78,21.89,60,0
	.goto Hillsbrad Foothills,64.85,24.92,60,0
	.goto Hillsbrad Foothills,66.68,28.15,60,0
	.goto Hillsbrad Foothills,69.76,31.89,60,0
	.goto Hillsbrad Foothills,67.62,37.65,60,0
	>>Finish killing |cRXP_ENEMY_Forest Moss Creepers|r and |cRXP_ENEMY_Giant Moss Creepers|r. Loot them for their |cRXP_LOOT_Ichor|r (NOT TRANSLATED IN :deDE YET)
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
    .isOnQuest 496
step << Mage
    .hs >>Ruhestein nach Tarrens Mühle
    .use 6948
    .subzoneskip 272
    .bindlocation 272,1
    .cooldown item,6948,>0,1
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step << !Mage
    #optional
	#completewith TarrenMillTurnins3
    .subzone 272 >>Travel to Tarren Mill (NOT TRANSLATED IN :deDE YET)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .turnin 496 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .accept 499 >> Elixier des Leidens annehmen
    .turnin 501 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .accept 502 >> Elixier der Schmerzen annehmen
    .target Apothecary Lydon
    .isQuestComplete 496
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .turnin 496 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .accept 499 >> Elixier des Leidens annehmen
    .target Apothecary Lydon
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .turnin 501 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .accept 502 >> Elixier der Schmerzen annehmen
    .target Apothecary Lydon
    .isQuestComplete 501
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .accept 499 >> Elixier des Leidens annehmen
    .target Apothecary Lydon
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .accept 502 >> Elixier der Schmerzen annehmen
    .target Apothecary Lydon
    .isQuestTurnedIn 501
step
    #xprate <1.5
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lydon|r
    .accept 1067 >> Akzeptiert die Quest Rückkehr nach Donnerfels
    .target Apothecary Lydon
    .isQuestTurnedIn 1066
step
    .goto Hillsbrad Foothills,61.53,19.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Turn in Elixir of Suffering (NOT TRANSLATED IN :deDE YET)
    .target Umpi
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >> Gebt die Quest Kampf um das Hügelland ab
    .accept 529 >> Kampf um das Hügelland annehmen
    .target High Executor Darthalia
    .isQuestComplete 528
step
    #optional
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darthalia|r
    .accept 529 >> Kampf um das Hügelland annehmen
    .target High Executor Darthalia
    .isQuestTurnedIn 528
step
    #label TarrenMillTurnins3
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Shay|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 529
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihm|r
    .collect 2515,1800,529,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .itemcount 2515,<1000
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,529,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step << Shaman/Warrior
    #optional
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    #optional
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Buy a|r |T135640:0|t[Broad Bladed Knife] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step
    #label Fields3
	.goto Hillsbrad Foothills,32.67,35.33
    .subzone 286 >> Reist zu den Feldern des Hügellands
    .isOnQuest 529
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Wait out the RP, then kill|r |cRXP_ENEMY_Wütender Stanley|r
    >>|cRXP_ENEMY_Wütender Stanley|r |cRXP_WARN_gives a full quest's worth of experience|r
    .turnin 502 >> Turn in Elixir of Pain (NOT TRANSLATED IN :deDE YET)
    .timer 9,Stanley RP (BE ALERT) (NOT TRANSLATED IN :deDE YET)
    .mob Stanley
    .isQuestTurnedIn 501
step
    #hardcore
    #completewith HillsbradBlacksmith
    +|cRXP_WARN_There are up to 4 mobs inside the blacksmith and more directly outside. Pull them away safely until the blacksmith is cleared|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Ratsherr des Hügellands|r as they cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_which makes escape difficult|r
step
    #completewith next
	>>Tötet |cRXP_ENEMY_Blacksmith Verringtan|r und |cRXP_ENEMY_Hillsbrad Lehrling Blacksmiths|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
	.unitscan +Blacksmith Verringtan
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
	.mob +Hillsbrad Apprentice Blacksmith
    .isQuestTurnedIn 528
step
    .goto Hillsbrad Foothills,32.02,45.45
    >>Plündert die |cRXP_PICK_Eisenlieferung|r für |T132761:0|t[|cRXP_LOOT_Eisenlieferung|r]
    .complete 529,3 --Collect Shipment of Iron (x1)
    .isQuestTurnedIn 528
step
    #label HillsbradBlacksmith
    .goto Hillsbrad Foothills,32.65,45.48,20,0
    .goto Hillsbrad Foothills,31.87,46.66,20,0
    .goto Hillsbrad Foothills,32.23,45.32
	>>Tötet |cRXP_ENEMY_Blacksmith Verringtan|r und |cRXP_ENEMY_Hillsbrad Lehrling Blacksmiths|r
	.complete 529,1 --Kill Blacksmith Verringtan (x1)
	.unitscan +Blacksmith Verringtan
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
	.mob +Hillsbrad Apprentice Blacksmith
    .isQuestTurnedIn 528
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1822 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Combine the two pendants at the Shrine of Remulos for the |r|cRXP_LOOT_Pendant of the Sea Lion|r (NOT TRANSLATED IN :deDE YET)
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 30 >> Gebt die Quest Prozess of the Meer lion ab
    .accept 31 >> Accept Wassergestalt
    .target Dendrite Starblaze
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .accept 31 >> Accept Wassergestalt
    .target Dendrite Starblaze
    .isQuestTurnedIn 30
step << Mage
    .cast 3567 >>|cRXP_WARN_Wirkt|r |T135759:0|t[Teleportieren: Orgrimmar]
    .zoneskip Orgrimmar
    .train 3567,3
step << !Shaman
    .hs >> Ruhestein nach Orgrimmar
    .use 6948
    .bindlocation 1637,1
    .zoneskip Orgrimmar
    .train 3567,1 << Mage--Skips if Teleport Orgrimmar is trained
step << Shaman
    .hs >> Ruhestein nach Camp Taurajo
    .use 6948
    .zoneskip Orgrimmar
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith CallofWater4
    .goto The Barrens,43.42,77.41,100 >>Reisen south toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    #label CallofWater4
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1536 >>Gebt die Quest Ruf des Wassers ab
    .accept 1534 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step << Shaman
    #completewith next
    .subzone 378 >>Travel back to Camp Taurajo (NOT TRANSLATED IN :deDE YET)
step << Shaman
    #completewith next
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Mage !Shaman
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Barkeeper Morag|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
	.target Barkeep Morag
    .isQuestAvailable 6503
step
    .goto Orgrimmar,49.57,69.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karus|r
    .bankdeposit 3692 >> Deposit your |T133730:0|t[|cRXP_LOOT_Hillsbrad Human Skulls|r] if you have them (NOT TRANSLATED IN :deDE YET)
    .bankdeposit 3564 >> Deposit |T132761:0|t[|cRXP_LOOT_Shipment of Iron|r] (NOT TRANSLATED IN :deDE YET)
    .target Karus
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy the|r |T134332:0|t[Shredder Operating Manual Pages] |cRXP_BUY_from the Auction House if they're available|r (NOT TRANSLATED IN :deDE YET) --Shredder Operating Manual Page 1-12
	.target Auctioneer Thathung
	.collect 16645,1,6504,1 -- Page 1
    .collect 16646,1,6504,1 -- Page 2
    .collect 16647,1,6504,1 -- Page 3
    .collect 16648,1,6504,1 -- Page 4
    .collect 16649,1,6504,1 -- Page 5
    .collect 16650,1,6504,1 -- Page 6
    .collect 16651,1,6504,1 -- Page 7
    .collect 16652,1,6504,1 -- Page 8
    .collect 16653,1,6504,1 -- Page 9
    .collect 16654,1,6504,1 -- Page 10
    .collect 16655,1,6504,1 -- Page 11
    .collect 16656,1,6504,1 -- Page 12
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 5599 >> Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <24,1
    .xp >26,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 19939 >> Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <26,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <24,1
    .xp >26,1
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo|r
    .train 120 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <26,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Thuul|r oben auf der Hütte
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .target Thuul
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <24,1
    .xp >26,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ur'kyo|r
    .train 992 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <26,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8046 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <24,1
    .xp >26,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 943 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <26,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 6762 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <24,1
    .xp >26,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <26,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprechen mit|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Versorgt euch mit|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_und|r |T132273:0|t[Gifte]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <24,1
    .xp >26,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <26,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <24,1
    .xp >26,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 6178 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <26,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <24,1
    .xp >26,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 3045 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <26,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
	.train 24558 >>Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <24,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Akzeptiert die Quest Maschinenkriege
    .target Nogg
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sovik|r
    >>|cRXP_WARN_Geht durch seinen Dialog, um diese Quest zu akzeptieren|r
    .accept 2842 >>Akzeptiert die Quest Chefingenieur Scooty
    .target Sovik
    .dungeon GNOMER
step
    #optional
    .abandon 1014 >>Abandon Arugal Must Die (NOT TRANSLATED IN :deDE YET)
    .dungeon SFK
step
    #optional
    .abandon 1098 >>Abandon Deathstalkers in Shadowfang (NOT TRANSLATED IN :deDE YET)
    .dungeon SFK

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 27-30 Eschental
#version 7
#subgroup RestedXP Horde 1-30
#next 27-30 South Barrens/Thousand Needles

step << Rogue
    #optional
    #completewith Splintertree1
    >>|cRXP_WARN_Craft|r |T132273:0|t[Instant Poisons] (NOT TRANSLATED IN :deDE YET)
    .collect 6947,40,1067,1 --Collect Instant Poison (40)
step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> Leave Orgrimmar through the western exit (NOT TRANSLATED IN :deDE YET)
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >> Travel north alongside the river into Ashenvale (NOT TRANSLATED IN :deDE YET)
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>Lauf nach Splitterholzposten
    >>|cRXP_WARN_You may encounter a few level 29-30 mobs, avoid them if possible|r (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 431
    .isQuestAvailable 6503
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Gebt die Quest Die Jagd im Eschental ab
    .target Senani Thunderheart
    .isOnQuest 6382 --Camp T pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 742 >> Gebt die Quest Die Jagd im Eschental ab
    .target Senani Thunderheart
    .isOnQuest 742 --TB pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 235 >> Gebt die Quest Die Jagd im Eschental ab
    .target Senani Thunderheart
    .isOnQuest 235 --Org Pickup
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 6383 >> Gebt die Quest Die Jagd im Eschental ab
    .target Senani Thunderheart
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kaylisk|r
    .home >>Set your Hearthstone to Splintertree Post (NOT TRANSLATED IN :deDE YET)
    .target Innkeeper Kaylisk
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mastok|r
    .accept 25 >> Accept Stonetalon Standstill (NOT TRANSLATED IN :deDE YET)
    .target Mastok Wrilehiss
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >> Satyrhörner annehmen
    .target Pixel
    .maxlevel 26
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Erlernt die Flugroute zum Splitterholzposten
    .target Vhulgra
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r und |cRXP_FRIENDLY_Sunsworn|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r << !BloodElf
    .accept 6503 >> Die Kundschafter des Eschentals annehmen
    .target +Kuray'bin
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >> Turn in Report to Splintertree Post (NOT TRANSLATED IN :deDE YET) << BloodElf
    .target +Advisor Sunsworn << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r (NOT TRANSLATED IN :deDE YET)
    .stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly (NOT TRANSLATED IN :deDE YET)
    .target Qeeju
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Alter Eschentalbär|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Geisterpfotenalpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale1
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Alter Eschentalbär|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .xp >27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r (NOT TRANSLATED IN :deDE YET)
    .stable >> Abandon the |cRXP_ENEMY_Alter Eschentalbär|ror |cRXP_ENEMY_Geisterpfotenalpha|rund retrieve your regular pet
    .target Qeeju
    .zoneskip Ashenvale,1
    .train 16830,3
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >> Die Kundschafter des Eschentals annehmen
    .target Kuray'bin
step
    #ah
    #completewith Outrunners
    .goto Ashenvale,70.01,71.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gurda|r
    >>|cRXP_WARN_Skip this step if you do not have (all the) pages|r (NOT TRANSLATED IN :deDE YET)
    .accept 6504 >> Accept The Lost Pages (NOT TRANSLATED IN :deDE YET)
    .turnin 6504 >> Turn in The Lost Pages (NOT TRANSLATED IN :deDE YET)
    .target Gurda Ragescar
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r (NOT TRANSLATED IN :deDE YET)
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw (NOT TRANSLATED IN :deDE YET)
    .unitscan Sharptalon
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>|cRXP_WARN_wirkt|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find the |cRXP_ENEMY_Die Kundschafter des Eschentals|r more easily|r
    .train 19885,3
step
    #label Outrunners
    #loop
    .goto Ashenvale,76.15,67.60,0
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
    >>Töte |cRXP_ENEMY_Die Kundschafter des Eschentals|r
    >>|cRXP_WARN_Sie sind getarnt|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    #loop
    .goto Ashenvale,76.15,67.60,0
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
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit. You can also do this quest later|r (NOT TRANSLATED IN :deDE YET)
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw (NOT TRANSLATED IN :deDE YET)
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torek|r um die Escort zu starten
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_hat eine 5-Minuten-respawntimer|r
    .accept 6544 >> Akzeptiert die Quest Toreks Angriff
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Folgt |cRXP_FRIENDLY_Torek|r
    >>Lasst |cRXP_FRIENDLY_Torek|r und seine |cRXP_FRIENDLY_Splintertree-Räuber|r die |cRXP_ENEMY_Krieger der Silverwing|r und |cRXP_ENEMY_Schildwache der Silverwing|r tanken
    >>|cRXP_WARN_Wenn ihr das Gebäude säubert, lauft zum Balkon. Wenn |cRXP_ENEMY_Duriel Moonfire|r kommt, lasst |cRXP_FRIENDLY_Torek|r und seine |cRXP_FRIENDLY_Splintertree-Räuber|r die Aggro nehmen, bevor ihr Schaden verursacht|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >> Travel toward the western entrance point into Night Run (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful! A level 35|r |cRXP_ENEMY_Wandering Protector|r |cRXP_WARN_(PVP elite) might patrol the area!|r (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >> Travel to Night Run (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 428
step
    #loop
	.goto Ashenvale,67.85,51.34,0
	.goto Ashenvale,66.78,51.71,50,0
	.goto Ashenvale,66.19,53.44,50,0
	.goto Ashenvale,66.17,54.40,50,0
	.goto Ashenvale,66.22,55.27,50,0
	.goto Ashenvale,66.20,56.37,50,0
	.goto Ashenvale,66.77,57.14,50,0
	.goto Ashenvale,67.11,56.39,50,0
	.goto Ashenvale,67.35,55.53,50,0
	.goto Ashenvale,67.92,54.42,50,0
	.goto Ashenvale,68.92,53.44,50,0
	.goto Ashenvale,68.63,52.69,50,0
	.goto Ashenvale,67.85,51.34,50,0
    >>Kill |cRXP_ENEMY_Schattenpirscher der Teufelshufe|r, |cRXP_ENEMY_Satyr der Teufelshufe|r, und |cRXP_ENEMY_Teufelsanbeter der Teufelshufe|r. Loote sie für ihre |cRXP_LOOT_Satyrhörner|r
    >>|cRXP_WARN_Be careful! All the Felmusk cast|r |T136119:0|t[Overwhelming Stench]|cRXP_WARN_, an instant-cast 6 second silence|r (NOT TRANSLATED IN :deDE YET) << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >> Travel West toward Raynewood Retreat (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1195
step
    #completewith next
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
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r (NOT TRANSLATED IN :deDE YET)
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head (NOT TRANSLATED IN :deDE YET)
	.unitscan Shadu
step
    #loop
    .goto Ashenvale,58.08,56.06,0
    .goto Ashenvale,58.08,56.06,40,0
    .goto Ashenvale,58.69,55.18,40,0
    .goto Ashenvale,59.27,54.47,40,0
    .goto Ashenvale,59.83,53.26,40,0
    .goto Ashenvale,60.40,52.83,40,0
    .goto Ashenvale,61.03,51.96,40,0
    .goto Ashenvale,60.99,49.19,40,0
    .goto Ashenvale,62.51,50.16,40,0
    >>Kill |cRXP_ENEMY_Laughing Sisters|r. Loot them for an |T134776:0|t[|cRXP_LOOT_Etched Phial|r] (NOT TRANSLATED IN :deDE YET)
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
    .isOnQuest 1195
step
    #label Shadumbra
    #loop
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,0
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
    .goto Ashenvale,62.39,49.80,40,0
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrols around slightly|r (NOT TRANSLATED IN :deDE YET)
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head (NOT TRANSLATED IN :deDE YET)
	.unitscan Shadumbra
    .use 16304
step
    #xprate <1.5
   .goto Ashenvale,36.81,33.48,200 >> Travel to Thistlefur Village (NOT TRANSLATED IN :deDE YET)
   >>|cRXP_WARN_Make sure to avoid Astranaar guards en route|r (NOT TRANSLATED IN :deDE YET)
   .subzoneskip 2301
   .isOnQuest 216
step
    #xprate <1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Thistlefur Shamans|r and |cRXP_ENEMY_Thistlefur Avengers|r en route to the cave (NOT TRANSLATED IN :deDE YET)
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step
    #xprate <1.5
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>Enter Thistlefur Hold (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 6462
step
    #xprate <1.5
    #loop
    .goto Ashenvale,40.39,33.22,0
    .goto Ashenvale,40.39,33.22,20,0
    .goto Ashenvale,40.77,32.81,20,0
    .goto Ashenvale,41.36,32.19,20,0
    .goto Ashenvale,41.75,32.94,20,0
    .goto Ashenvale,41.77,33.68,20,0
    .goto Ashenvale,42.37,33.61,20,0
    .goto Ashenvale,42.82,34.11,20,0
    .goto Ashenvale,41.73,34.47,20,0
    .goto Ashenvale,41.66,35.70,20,0
	>>Loot the |cRXP_PICK_Troll Chests|r on the ground for |cRXP_LOOT_Troll Charms|r (NOT TRANSLATED IN :deDE YET)
	.complete 6462,1 --Collect Troll Charm (x8)
step
    #xprate <1.5
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. This will start an escort (NOT TRANSLATED IN :deDE YET)
    .accept 6482 >> Freiheit für Ruul annehmen
    .target Ruul Snowhoof
step
    #xprate <1.5
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>Escort |cRXP_FRIENDLY_Ruul|r out of Thistlefur Village (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful! 3|r |cRXP_ENEMY_Thistlefurs|r |cRXP_WARN_will spawn once you are halfway through the cave and another 3 outside the gate of Thistlefur Village|r (NOT TRANSLATED IN :deDE YET)
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    #xprate <1.5
    #loop
    .goto Ashenvale,35.75,32.01,0
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    >>Finish killing |cRXP_ENEMY_Thistlefur Shamans|r and |cRXP_ENEMY_Thistlefur Avengers|r (NOT TRANSLATED IN :deDE YET)
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>|cRXP_WARN_Use the|r |T132821:0|t[Empty Blue Waterskin] |cRXP_WARN_under the Gazebo|r (NOT TRANSLATED IN :deDE YET)
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,43.78,68.86,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.81,62.94,40,0
    >>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Er patrouilliert in der Gegend herum|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw (NOT TRANSLATED IN :deDE YET)
    .unitscan Ursangous
    .use 16303
step
    #completewith Tideress
    .subzone 421 >> Lauf nach Westfall Lake
    .isOnQuest 25
step
    #completewith Tideress
    >>Töte |cRXP_ENEMY_Beschmutzter Wasserelementar|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.36,69.74,40,0
    >>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r (NOT TRANSLATED IN :deDE YET)
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Das beschmutzte Element annehmen
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Go under the Gazebo (NOT TRANSLATED IN :deDE YET)
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    #loop
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,0
    .goto Ashenvale,48.71,69.54,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,45.84,70.67,40,0
    >>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Tideress|r |cRXP_WARN_patrols around the island and underwater|r (NOT TRANSLATED IN :deDE YET)
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Das beschmutzte Element annehmen
    .use 16408
    .unitscan Tideress
step
    #loop
	.goto Ashenvale,48.36,69.74,0
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
    >>Töte |cRXP_ENEMY_Beschmutzter Wasserelementar|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>|cRXP_WARN_Use the|r |T134776:0|t[|cRXP_LOOT_Etched Phial|r] |cRXP_WARN_in the Moonwell|r (NOT TRANSLATED IN :deDE YET)
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>Lauf nach Splitterholzposten
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Turn in Ashenvale Outrunners (NOT TRANSLATED IN :deDE YET)
    .target Kuray'bin
step
    #loop
    .goto Ashenvale,76.15,67.60,0
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
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Sharptalon|r |cRXP_WARN_is level 31 and patrols around. You can kite him back to Splintertree Post or the Forsaken Camp if you're struggling to kill him. If you do this, make sure you do 50%+ damage to get credit|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this if you are unable to kill him|r (NOT TRANSLATED IN :deDE YET)
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw (NOT TRANSLATED IN :deDE YET)
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Gebt die Quest Toreks Angriff ab
    .target Ertog Ragetusk
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 2 >> Turn in Sharptalon's Claw (NOT TRANSLATED IN :deDE YET)
    .turnin 24 >> Turn in Shadumbra's Head (NOT TRANSLATED IN :deDE YET)
    .turnin 23 >> Turn in Ursangous's Paw (NOT TRANSLATED IN :deDE YET)
    .turnin 247 >> Turn in The Hunt Completed (NOT TRANSLATED IN :deDE YET)
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Turn in Shadumbra's Head (NOT TRANSLATED IN :deDE YET)
    .turnin 23 >> Turn in Ursangous's Paw (NOT TRANSLATED IN :deDE YET)
    .turnin 247 >> Turn in The Hunt Completed (NOT TRANSLATED IN :deDE YET)
    .target Senani Thunderheart
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Turn in Shadumbra's Head (NOT TRANSLATED IN :deDE YET)
    .turnin 23 >> Turn in Ursangous's Paw (NOT TRANSLATED IN :deDE YET)
    .target Senani Thunderheart
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >> Turn in Satyr Horns (NOT TRANSLATED IN :deDE YET)
    .target Pixel
    .isQuestComplete 6441
step
    #xprate <1.5
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >> Turn in Stonetalon Standstill (NOT TRANSLATED IN :deDE YET)
    .turnin 1918 >> Turn in The Befouled Element (NOT TRANSLATED IN :deDE YET)
    .accept 824 >> Je'neu vom Irdenen Ring annehmen
    .target Mastok Wrilehiss
step
    #xprate >1.49
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >> Turn in Stonetalon Standstill (NOT TRANSLATED IN :deDE YET)
    .turnin 1918 >> Turn in The Befouled Element (NOT TRANSLATED IN :deDE YET)
    --.accept 824 >> Accept Je'neu of the Earthen Ring
    .target Mastok Wrilehiss
step
    #xprate <1.5
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Turn in Freedom to Ruul (NOT TRANSLATED IN :deDE YET)
    .target Yama Snowhoof
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r (NOT TRANSLATED IN :deDE YET)
    .stable >> Stable your pet. You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|r and a |cRXP_ENEMY_Ghostpaw Alpha|r shortly (NOT TRANSLATED IN :deDE YET)
    .target Qeeju
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Alter Eschentalbär|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Geisterpfotenalpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale2
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Alter Eschentalbär|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #xprate <1.5
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >> Fliege nach Außenposten von Zoram'gar
    .target Vhulgra
    .subzoneskip 2897
step
    #xprate <1.5
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karang|r
    .turnin 216 >> Turn in Between a Rock and a Thistlefur (NOT TRANSLATED IN :deDE YET)
    .target Karang Amakkar
step
    #xprate <1.5
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >> Turn in Troll Charm (NOT TRANSLATED IN :deDE YET)
    .target Mitsuwa
step
    #xprate <1.5
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Turn in Je'neu of the Earthen Ring (NOT TRANSLATED IN :deDE YET)
    .target Je'neu Sancrea
step << Druid
    #xprate <1.5
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #xprate <1.5
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <26,1
    .xp >28,1
    .bindlocation 431,1
    .cooldown item,6948,>0,1
step << Druid
    #xprate <1.5
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 3029 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <28,1
    .bindlocation 431,1
    .cooldown item,6948,>0,1
step
    #xprate <1.5
    #completewith FlyTB
    .hs >> Ruhestein nach Splitterholzposten
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar>> Fliege nach Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 8687 >> Trainiere deine Klassenfähigkeiten
    >>|T132273:0|t[Instant Poison Rank 2] |cRXP_WARN_requires 120 skill in Poisons!|r (NOT TRANSLATED IN :deDE YET)
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprechen mit|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Versorgt euch mit|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_und|r |T132273:0|t[Gifte]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6217 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Kauft alle Haustierverbesserungen, die ihr euch leisten könnt
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Doras
    .zoneskip Orgrimmar,1
step
    #label FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Vhulgra
    .zoneskip Ashenvale,1
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 27-30 South Barrens/Thousand Needles
#version 7
#subgroup RestedXP Horde 1-30
#next 30-33 Hügellandhof/Arathi part 1

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's up and you don't have it yet|r (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r (NOT TRANSLATED IN :deDE YET)
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +Legt |T135651:0|t[Parierdolch] |cRXP_WARN_an|r
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >> Gebt die Quest Die heilige Flamme ab
    .accept 1196 >> Akzeptiert die Quest Die heilige Flamme
    .target Zangen Stonehoof
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 1850 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 783 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Akzeptiert die Quest Stahlbiss
    .target Melor Stonehoof
    .isQuestAvailable 1131
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 3045 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ker|r
    .train 6178 >> Trainiere deine Klassenfähigkeiten
    .target Ker Ragetotem
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Trainiere deine Klassenfähigkeiten
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Trainiere deine Klassenfähigkeiten
    .accept 1718 >>Akzeptiert die Quest Der Inselbewohner
    .target Torm Ragetotem
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auld|r
    .accept 1102 >> Akzeptiert die Quest Ein schreckliches Schicksal
    .target Auld Stonespire
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step
    #completewith PRMAtraining
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #xprate <1.5
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 1067 >> Gebt die Quest Rückkehr nach Thunder Bluff ab
    .target Apothecary Zamah
    .isQuestTurnedIn 1066
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 992 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 602 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 120 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <30,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Erlernen |T135765:0|t[Teleportierenieren: Donnerfels]
    .target Birgitte Cranston
    .xp <30,1
step << Mage/Priest
    #optional
    #label PRMAtraining
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 943 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >> |cRXP_WARN_Erstellen|r |T133684:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Train |T133687:0|t[Heavy Wool Bandage] (NOT TRANSLATED IN :deDE YET)
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >> |cRXP_WARN_Erstellen|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Train |T133671:0|t[Silk Bandage] (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r (NOT TRANSLATED IN :deDE YET)
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r (NOT TRANSLATED IN :deDE YET)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Thunderhorn
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target Kuna Thunderhorn
    .itemcount 3030,<1400
step
    #optional
    .abandon 6561 >>Abandon Blackfathom Villainy (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #optional
    .abandon 6565 >>Abandon Allegiance to the Old Gods (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #optional
    .abandon 6563 >>Brecht die Quest Die Essenz von Aku'mai ab
    .dungeon BFD
step
    #optional
    .abandon 6921 >>Abandon Amongst the Ruins (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #completewith Owatanka
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    #completewith next
    +|cRXP_WARN_Use your remaining|r |T134128:0|t[Blood Shards] |cRXP_WARN_to get buffs|r (NOT TRANSLATED IN :deDE YET)
    +|cRXP_WARN_Achtet darauf, dass ihr alle Autovervollständigungsfunktionen von Add-ons wie Questie oder Leatrix Plus ausschaltet!|r
    .itemcount 5075,4
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 879 >> Verräter in den eigenen Reihen annehmen
    .target Mangletooth
    .isQuestTurnedIn 5052
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Ruga Rachtotem|r
	.turnin 1823 >>Turn in Speak with Ruga (NOT TRANSLATED IN :deDE YET)
    .accept 1824 >>Prüfung auf dem Feld der Riesen annehmen
    .target Ruga Ragetotem
step
    #label Owatanka
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Find & kill |cRXP_ENEMY_Owatanka|r (Blue Thunder Lizard) around this area. Loot him for |T133723:0|t[|cRXP_LOOT_Owatankas Schwanzstachel|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this quest if you can't find him|r (NOT TRANSLATED IN :deDE YET)
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Akzeptiert die Quest Owatanka
    .use 5102
    .unitscan Owatanka
step << Warrior
    #loop
	.goto The Barrens,45.17,69.08,0
	.goto The Barrens,45.17,69.08,50,0
	.goto The Barrens,43.87,68.84,50,0
	.goto The Barrens,42.17,69.65,50,0
	.goto The Barrens,42.35,71.85,50,0
	.goto The Barrens,42.77,72.28,50,0
	.goto The Barrens,43.86,72.06,50,0
	.goto The Barrens,45.38,72.25,50,0
    >>Töte |cRXP_ENEMY_Silithidbeschützer|r, |cRXP_ENEMY_Silithid Swarmers|r, |cRXP_ENEMY_Silithid Creepers|r and |cRXP_ENEMY_Silithidenlarve|r. Loot them for their |T133027:0|t[Twitching Antenna]
    >>|cRXP_WARN_NOTE: The |T133027:0|t[Twitching Antenna] only have a 15 minute duration, do not AFK or logout during this quest|r (NOT TRANSLATED IN :deDE YET)
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Ruga Rachtotem|r
    >>|cRXP_WARN_Skip the follow-up|r (NOT TRANSLATED IN :deDE YET)
    .turnin 1824 >>Turn in Trial at the Field of Giants (NOT TRANSLATED IN :deDE YET)
    .target Ruga Ragetotem
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Lauf in Richtung |cRXP_FRIENDLY_Brine|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1534 >>Gebt die Quest Ruf des Wassers ab
    .accept 220 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step
    #completewith Backstabber
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r (NOT TRANSLATED IN :deDE YET)
    .accept 843 >> Ganns Rekultivierung annehmen
    .target Gann Stonespire
    .maxlevel 27
step
    #loop
    .goto The Barrens,44.06,80.02,0
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
    .goto The Barrens,44.37,79.85,45,0
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    >>Kill |cRXP_ENEMY_Kuz|r. Loot him for |cRXP_LOOT_Kuz's Skull|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Kuz|r |cRXP_WARN_patrols around slightly|r (NOT TRANSLATED IN :deDE YET)
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
    .isOnQuest 879
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>Kill |cRXP_ENEMY_Lok Orcbane|r. Loot him for |cRXP_LOOT_Lok's Skull|r (NOT TRANSLATED IN :deDE YET)
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
    .isOnQuest 879
step
    #completewith NakSkull
    >>Töte |cRXP_ENEMY_Schleicher der Klingenmähnen|r and |cRXP_ENEMY_Pfadfinder der Klingenmähnen|r. Loot them for a |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_Schleicher der Klingenmähnen|r are stealthed|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,0
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
    >>Kill |cRXP_ENEMY_Razormane Seers|r. Loot them for a |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r] (NOT TRANSLATED IN :deDE YET)
    >>Kill |cRXP_ENEMY_Razormane Warfrenzies|r. Loot them for a |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r] (NOT TRANSLATED IN :deDE YET)
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
    #label NakSkull
    .goto The Barrens,43.87,83.43
    >>Kill |cRXP_ENEMY_Nak|r. Loot him for |cRXP_LOOT_Nak's Skull|r (NOT TRANSLATED IN :deDE YET)
    .complete 879,2 --Nak's Skull (1)
    .mob Nak
    .isOnQuest 879
step
    #label Backstabber
    #loop
    .goto The Barrens,45.48,79.89,0
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
    >>Töte |cRXP_ENEMY_Schleicher der Klingenmähnen|r and |cRXP_ENEMY_Pfadfinder der Klingenmähnen|r. Loot them for a |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
    >>|cRXP_WARN_The |cRXP_ENEMY_Schleicher der Klingenmähnen|r are stealthed|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ausgräber von Bael'dun|r und |cRXP_ENEMY_Großknecht von Bael'dun|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>Kill |cRXP_ENEMY_Prospector Khazgorm|r. Loot him for |cRXP_LOOT_Khazgorm's Journal|r (NOT TRANSLATED IN :deDE YET)
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
    .isOnQuest 843
step
    #loop
    .goto The Barrens,47.22,84.98,0
    .goto The Barrens,47.22,84.98,40,0
    .goto The Barrens,47.28,85.74,40,0
    .goto The Barrens,47.60,85.66,40,0
    .goto The Barrens,48.43,86.34,40,0
    .goto The Barrens,48.03,85.46,40,0
    .goto The Barrens,47.94,84.86,40,0
    .goto The Barrens,47.37,84.01,40,0
    .goto The Barrens,46.92,84.22,40,0
    .goto The Barrens,46.99,85.82,40,0
    >>Kill |cRXP_ENEMY_Ausgräber von Bael'dun|r und |cRXP_ENEMY_Großknecht von Bael'dun|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .use 5103
    .unitscan Washte Pawne
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r (NOT TRANSLATED IN :deDE YET)
    .turnin 843 >> Turn in Gann's Reclamation (NOT TRANSLATED IN :deDE YET)
    .accept 846 >> Ganns Rache annehmen
    .target Gann Stonespire
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r (NOT TRANSLATED IN :deDE YET)
    .accept 846 >> Ganns Rache annehmen
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label BaelModan
    #completewith RevengeofGann2
    .goto The Barrens,48.63,84.49,110 >>Lauf zum Teufelswald
    .subzoneskip 359
    .isQuestTurnedIn 843
step
    #completewith TearMoons2
    >>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loote sie für ihre |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, und |cRXP_LOOT_Sodium Nitrate|r
    >>|cRXP_WARN_Be Careful!|r |cRXP_ENEMY_Offizier von Bael'dun|r |cRXP_WARN_have a 50% increased parry chance for 8 seconds after they do their defense stance animation|r << Rogue/Warrior/Druid/Shaman/Paladin
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .group 0 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Feegly|r
    .accept 857 >> Die Träne der Monde annehmen
    .target Feegly the Exiled
    .group 3 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>Go down to the bottom floor of Bael'dun (NOT TRANSLATED IN :deDE YET)
    .group << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    .goto The Barrens,49.13,84.25
    >>Open |cRXP_PICK_General Twinbraid's Strongbox|r. Loote ihn für den |cRXP_LOOT_Tear of the Moons|r
    >>|cRXP_WARN_Be careful! It is very easy overpull in |cRXP_ENEMY_General Twinbraid|r's room|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Directly pull any mob other than |cRXP_ENEMY_General Twinbraid|r (NOT TRANSLATED IN :deDE YET) << !Hunter !Warlock
    >>|cRXP_WARN_Directly pull any mob other than |cRXP_ENEMY_General Twinbraid|r and use your pet to tank. Alternatively send your pet in and loot the strongbox|r (NOT TRANSLATED IN :deDE YET) << Hunter/Warlock
    .complete 857,1 --Tear of the Moons (1)
    .group 3 << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>Exit Bael'dun's Keep (NOT TRANSLATED IN :deDE YET)
    .group << !Hunter !Warlock
    .isQuestTurnedIn 843
step
    #label TearMoons2
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >> Turn in The Tear of the Moons (NOT TRANSLATED IN :deDE YET)
    .target Feegly the Exiled
    .isQuestComplete 857
    .group << !Hunter !Warlock
step
    #label RevengeofGann2
    #loop
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    .goto The Barrens,48.96,84.36,30,0
    >>Kill |cRXP_ENEMY_Bael'dun Dwarves|r. Loote sie für ihre |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, und |cRXP_LOOT_Sodium Nitrate|r
    >>|cRXP_WARN_Be Careful!|r |cRXP_ENEMY_Offizier von Bael'dun|r |cRXP_WARN_have a 50% increased parry chance for 8 seconds after they do their defense stance animation|r << Rogue/Warrior/Druid/Shaman/Paladin
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .isQuestTurnedIn 843
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >> Now you should be looking for a group to Razorfen Kraul (NOT TRANSLATED IN :deDE YET)
    .dungeon RFK
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r (NOT TRANSLATED IN :deDE YET)
    .turnin 846 >> Turn in Revenge of Gann (NOT TRANSLATED IN :deDE YET)
    .accept 849 >> Ganns Rache annehmen
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>Klick den |cRXP_PICK_Bael-Modan-Flugapparat|r oben auf der Plattform
    >>|cRXP_WARN_This has a 50 yard range|r (NOT TRANSLATED IN :deDE YET)
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,0
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols north and south on the road|r (NOT TRANSLATED IN :deDE YET)
    .turnin 849 >> Turn in Revenge of Gann (NOT TRANSLATED IN :deDE YET)
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.44,78.97,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
	.goto The Barrens,44.85,78.81,60,0
    >>Kill |cRXP_ENEMY_Washte Pawne|r. Loot him for |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]. Use it to start the quest (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_He has 4 different spawn locations, skip this step if you cannot find him|r (NOT TRANSLATED IN :deDE YET)
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Accept Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .use 5103
    .unitscan Washte Pawne
step
    #completewith next
    >>|cRXP_WARN_If possible, have party members share the following quest. Skip this step otherwise|r (NOT TRANSLATED IN :deDE YET)
    .accept 1109 >> Akzeptiert die Quest Go, Go, Guano!
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >> Kral der Klingenhauer betreten
    .dungeon RFK
step
    >>Tötet |cRXP_ENEMY_Kral-Fledermaus|r. Plündert sie für |cRXP_LOOT_Kral-Guano|r
    .complete 1109,1 --Kraul Guano (1)
    .mob Kraul Bat
    .mob Greater Kraul Bat
    .dungeon RFK
    .isOnQuest 1109
step
    >>Tötet |cRXP_ENEMY_Charlga Razorflank|r. Sammelt von ihr das |cRXP_LOOT_Herz|r und die |T134939:0|t[|cRXP_LOOT_Kleine Rolle|r]. Benutzt die Rolle, um die Quest zu starten
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>Akzeptiert die Quest Eine unheilige Allianz
    .mob Charlga Razorflank
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Willix der Importeur|r
    >>|cRXP_WARN_Das startet eine Eskorte|r
    .accept 1144 >> Willix der Importeur annehmen
    .target Willix the Importer
    .dungeon RFK
step
    >>Begleitet |cRXP_FRIENDLY_Willix der Importeur|r durch Kral der Klingenhauer
    >>|cRXP_WARN_Bleibt nah bei |cRXP_FRIENDLY_Willix|r, sonst kann die Quest möglicherweise nicht abgeschlossen werden!|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target Willix the Importer
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Willix der Importeur|r
    .turnin 1144 >> Gebt die Quest Willix der Importeur ab
    .target Willix the Importer
    .isQuestComplete 1144
    .dungeon RFK
step
    .zone The Barrens >>Exit RFK (NOT TRANSLATED IN :deDE YET)
    .zoneskip Thousand Needles
    .zoneskip Thunder Bluff
    .dungeon RFK
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grish|r
    .turnin 5881 >> Turn in Calling in the Reserves (NOT TRANSLATED IN :deDE YET)
    .target Grish Longrunner
    .isOnQuest 5881
step
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Moonhorn|r
    .accept 4542 >> Nachricht zum Freiwindposten annehmen
    .target Brave Moonhorn
step
    .goto Thousand Needles,31.97,23.76,30 >> Take the lift down to Thousand Needles (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Don't fall off! You'll DIE!|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Töte the |cRXP_ENEMY_Bote der Galak|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He spawns at Splithoof Crag (the eastern Centaur camp)|r (NOT TRANSLATED IN :deDE YET)
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Auftragsmordplan annehmen
    .use 12564
    .unitscan Galak Messenger
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >> Lauf nach Sturmwind Post's Elevators
step
    .goto Thousand Needles,45.91,49.91,25 >> Take the Elevator up to Freewind (NOT TRANSLATED IN :deDE YET)
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r (NOT TRANSLATED IN :deDE YET)
    .accept 9431 >> Ein anderer Ansatz annehmen
    .target Magistrix Elosai
step
    .goto Thousand Needles,46.00,50.80
    >>Klick auf das |cRXP_FRIENDLY_Wanted Poster|r
    .accept 5147 >> Accept Wanted - Arnak Grimtotem (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >> Gebt die Quest Die heilige Flamme ab
    .target Rau Cliffrunner
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >> Turn in Message to Freewind Post (NOT TRANSLATED IN :deDE YET)
    .accept 4841 >> Befriedung der Zentauren annehmen
    .target Cliffwatcher Longhorn
    .maxlevel 30
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >> Turn in Message to Freewind Post (NOT TRANSLATED IN :deDE YET)
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134937:0|t[Schriftrollen] |cRXP_BUY_bei ihm, falls sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Kauft|r |T135495:0|t[|cRXP_FRIENDLY_Handfester Kurzbogen|r] |cRXP_BUY_bei ihm, falls er verfügbar ist|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Montarr|r
    >>|cRXP_BUY_Buy one or more|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target Montarr
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Abeqwa|r
    .home >> Setzt euren Ruhestein auf Freiwindposten
    .target Innkeeper Abeqwa
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hagar|r
    .accept 4821 >> Fremdartiges Ei annehmen
    .target Hagar Lightninghoof
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elu|r
    .accept 4767 >> Windreiter annehmen
    .target Elu
    .maxlevel 30
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nyse|r
    .fp Freewind Post >> Get the Freewind Post flight path (NOT TRANSLATED IN :deDE YET)
    .target Nyse
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>Kill |cRXP_ENEMY_Späher der Galak|r, |cRXP_ENEMY_Zänker der Galak|r, und |cRXP_ENEMY_Windhetzerin der Galak|r
    >>|cRXP_WARN_Kill every|r |cRXP_ENEMY_Späher der Galak|r |cRXP_WARN_that you see as they are more rare|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>Betretet die Höhle
    .isOnQuest 1197
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>Lauf zur |cRXP_PICK_uralten Kohlenpfanne|r
    .isOnQuest 1197
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Öffnet |cRXP_PICK_Ancient Kohlenpfanne|r. Plündert sie für |cRXP_LOOT_Cloven Hoof|r
    >>|cRXP_WARN_Seid vorsichtig! Die Kohlenpfanne wird von zwei Gegnern der Stufe 30 verteidigt|r |cRXP_ENEMY_Galak Flamme-Wachen|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob Galak Flame Guard
    .isOnQuest 1197
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Töte the |cRXP_ENEMY_Bote der Galak|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r (NOT TRANSLATED IN :deDE YET)
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Auftragsmordplan annehmen
    .use 12564
    .unitscan Galak Messenger
step
    #loop
	.goto Thousand Needles,43.12,36.86,0
	.goto Thousand Needles,43.12,36.86,50,0
	.goto Thousand Needles,41.18,34.83,50,0
	.goto Thousand Needles,40.42,34.45,50,0
	.goto Thousand Needles,39.00,32.56,50,0
	.goto Thousand Needles,39.68,34.93,50,0
	.goto Thousand Needles,39.76,35.82,50,0
	.goto Thousand Needles,39.32,36.93,50,0
	.goto Thousand Needles,40.43,37.96,50,0
	.goto Thousand Needles,41.04,39.03,50,0
	.goto Thousand Needles,41.12,41.34,50,0
	.goto Thousand Needles,42.33,40.54,50,0
	.goto Thousand Needles,42.84,39.09,50,0
	.goto Thousand Needles,44.15,40.72,50,0
	.goto Thousand Needles,44.98,41.03,50,0
	.goto Thousand Needles,45.66,43.81,50,0
	.goto Thousand Needles,47.23,41.98,50,0
	.goto Thousand Needles,48.57,43.53,50,0
	.goto Thousand Needles,49.39,41.24,50,0
	.goto Thousand Needles,48.14,40.43,50,0
	.goto Thousand Needles,47.11,40.29,50,0
	.goto Thousand Needles,45.89,40.32,50,0
	.goto Thousand Needles,44.43,38.36,50,0
    >>Kill |cRXP_ENEMY_Späher der Galak|r, |cRXP_ENEMY_Zänker der Galak|r, und |cRXP_ENEMY_Windhetzerin der Galak|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>Lauf in Richtung |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >> Test des Glaubens annehmen
    .timer 7,Test of Faith RP (NOT TRANSLATED IN :deDE YET)
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>Warte auf das RP
    >>|cRXP_WARN_Jump off the end of the wooden platform. You'll get teleported instead of dying from fall damage|r (NOT TRANSLATED IN :deDE YET)
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Turn in Test of Faith (NOT TRANSLATED IN :deDE YET)
    .accept 1150 >> Test der Belastbarkeit annehmen
    .target Dorn Plainstalker
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>Loote die |cRXP_LOOT_Fremdartiges Ei|r auf dem Boden
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #loop
    .goto Thousand Needles,60.49,58.82,0
    .goto Thousand Needles,63.69,60.43,0
    .goto Thousand Needles,65.84,61.77,0
    .goto Thousand Needles,63.67,48.03,0
    .goto Thousand Needles,60.49,58.82,50,0
    .goto Thousand Needles,63.69,60.43,50,0
    .goto Thousand Needles,65.84,61.77,50,0
    .goto Thousand Needles,63.67,48.03,50,0
    >>Kill |cRXP_ENEMY_Thundering Boulderkins|r. Loote sie für ihre |cRXP_LOOT_Purifying Earth|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>Loote die |cRXP_LOOT_Fremdartiges Ei|r auf dem Boden
    >>|cRXP_WARN_It has 3 different spawn locations. They are marked on the map|r (NOT TRANSLATED IN :deDE YET)
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith Freewind2
    .goto Thousand Needles,46.73,48.27,30 >> Lauf nach Sturmwind Post's Elevators
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 4841 >> Turn in Pacify the Centaur (NOT TRANSLATED IN :deDE YET)
    .accept 5064 >> Accept Grimtotem Spying (NOT TRANSLATED IN :deDE YET)
    .target Cliffwatcher Longhorn
    .isQuestComplete 4841
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .accept 5064 >> Grimmtotemspionage annehmen
    .target Cliffwatcher Longhorn
    .isQuestTurnedIn 4841
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rau|r
    .turnin 1197 >> Gebt die Quest Die heilige Flamme ab
    .target Rau Cliffrunner
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >> Fremdartiges Ei abgeben
    .accept 4865 >> Wilde Schlange annehmen
    .target Hagar Lightninghoof
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Kauft|r |T135495:0|t[|cRXP_FRIENDLY_Handfester Kurzbogen|r] |cRXP_BUY_bei ihm, falls er verfügbar ist|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label Freewind2
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134937:0|t[Schriftrollen] |cRXP_BUY_bei ihm, falls sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1150
step
    #completewith Grenka
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Screeching Windcallers|r cast|r |T136022:0|t[Gust of Wind]|cRXP_WARN_, a 4-second AoE stun within 10 yards of the |cRXP_ENEMY_Screeching Windcaller|r (NOT TRANSLATED IN :deDE YET)
    +|cRXP_ENEMY_Screeching Harpies|r cast|r |T136122:0|t[Deafening Screech]|cRXP_WARN_, an 8 second silence|r (NOT TRANSLATED IN :deDE YET) << Mage/Warlock/Priest/Druid/Shaman/Paladin
    .isOnQuest 1150
step
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +Open the |cRXP_PICK_Harpy Foodstuffs|r on the ground in the back of the cave to summon |cRXP_ENEMY_Grenka|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>Kill |cRXP_ENEMY_Grenka Bloodscreech|r. Loot her for |cRXP_LOOT_Grenka's Claw|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_This quest was nerfed in TBC. No adds will spawn|r (NOT TRANSLATED IN :deDE YET)
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r (NOT TRANSLATED IN :deDE YET)
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #label HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Travel toward Highperch (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 482
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Folge dem Weg nach Oben. Lauf in Richtung |cRXP_FRIENDLY_Pao'ka|r
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith PaokaEscort
    >>Loote |cRXP_LOOT_Ei eines Steilhangwyvern|r auf dem Boden
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pao'ka|r um die Escort Quest zu beginnen
    >>|cRXP_WARN_Be careful if |cRXP_ENEMY_Heartrazor|r is up! This is a level 32 rare elite|r (NOT TRANSLATED IN :deDE YET)
    .accept 4770,1 >> Accept Homeward Bound (NOT TRANSLATED IN :deDE YET)
    .target Pao'ka Swiftmountain
    .unitscan Heartrazor
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escort|r |cRXP_FRIENDLY_Pao'ka|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Three Highperch Wyverns will spawn once |cRXP_FRIENDLY_Pao'ka|r reaches the middle of Highperch. You only need to aggro the eastern one and the others will disappear|r (NOT TRANSLATED IN :deDE YET)
    .complete 4770,1 --Escort Pao'ka from Highperch
    .target Pao'ka
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Loote |cRXP_LOOT_Ei eines Steilhangwyvern|r auf dem Boden
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r (NOT TRANSLATED IN :deDE YET)
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laer|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Laer Stepperunner
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Auftragsmörder der Galak|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >> Turn in Assassination Plot (NOT TRANSLATED IN :deDE YET)
    .accept 4966 >> Kanati Grauwolke schützen annehmen
    .target Kanati Greycloud
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r (NOT TRANSLATED IN :deDE YET)
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud (NOT TRANSLATED IN :deDE YET)
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Turn in Serpent Wild (NOT TRANSLATED IN :deDE YET)
    .accept 5062 >> Hochheiliges Feuer annehmen
    .turnin 4770 >> Turn in Homeward Bound (NOT TRANSLATED IN :deDE YET)
    .target Motega Firemane
    .isQuestComplete 4770
step
    #optional
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Turn in Serpent Wild (NOT TRANSLATED IN :deDE YET)
    .accept 5062 >> Accept Sacred Fire (NOT TRANSLATED IN :deDE YET)
    .target Motega Firemane
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >> Turn in A Different Approach (NOT TRANSLATED IN :deDE YET)
    .accept 9433 >> A Dip in the Moonwell (NOT TRANSLATED IN :deDE YET)
    .accept 5151 >> Hyperkondensator-Dingsda annehmen
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,22.78,24.53
    >>Open the cage and kill the |cRXP_ENEMY_Enraged Panther|r. Loot him for the |cRXP_LOOT_Hypercapacitor Gizmo|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Group up if you need to. This quest is HARD|r (NOT TRANSLATED IN :deDE YET)
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob Enraged Panther
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Töte the |cRXP_ENEMY_Bote der Galak|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r (NOT TRANSLATED IN :deDE YET) << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Auftragsmordplan annehmen
    .use 12564
    .unitscan Galak Messenger
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>|cRXP_WARN_Use the|r |T132995:0|t[Robotron Control Unit] |cRXP_WARN_near the|r |cRXP_PICK_Concealed Control Panel|r (NOT TRANSLATED IN :deDE YET)
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>|cRXP_WARN_As you are controlling the|r|cRXP_FRIENDLY_Robotron 3000|r|cRXP_WARN_, enter the Moonwell and use the|r |T134754:0|t[Gather Water]|cRXP_WARN_ability to collect|r|cRXP_LOOT_Thalanaar Moonwell Water|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target Robotron 3000
    .use 23675
step
    #label Messenger
    #loop
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
    .goto Thousand Needles,39.51,33.43,40,0
    >>Töte the |cRXP_ENEMY_Bote der Galak|r. Loot him for the |T133473:0|t[|cRXP_LOOT_Assassination Note|r]. Use it to start the quest
    >>|cRXP_WARN_He patrols. He spawns at Splithoof Crag (the eastern Centaur camp)|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r (NOT TRANSLATED IN :deDE YET) << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Auftragsmordplan annehmen
    .use 12564
    .unitscan Galak Messenger
step
    #loop
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,0
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
    >>Kill |cRXP_ENEMY_Steelsnap|r. Loot him for |cRXP_LOOT_Steelsnap's Rib|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_He patrols counter-clockwise|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful, has two |cRXP_ENEMY_Hyenas|r defending him!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Scout for him with|r |T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained it|r << Hunter
    >>|cRXP_WARN_Scout for him with|r |T136034:0|t[Far Sight] |cRXP_WARN_if you have trained it|r (NOT TRANSLATED IN :deDE YET) << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >> Grinde to level 29 500+/36300 xp
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Auftragsmörder der Galak|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >> Turn in Assassination Plot (NOT TRANSLATED IN :deDE YET)
    .accept 4966 >> Kanati Grauwolke schützen annehmen
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r (NOT TRANSLATED IN :deDE YET)
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud (NOT TRANSLATED IN :deDE YET)
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Turn in A Dip in the Moonwell (NOT TRANSLATED IN :deDE YET)
    .accept 9434 >> Accept Testing the Tonic (NOT TRANSLATED IN :deDE YET)
    .turnin 5151 >> Turn in Hypercapacitor Gizmo (NOT TRANSLATED IN :deDE YET)
    .target Wizlo Bearingshiner
    .isQuestComplete 5151
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Turn in A Dip in the Moonwell (NOT TRANSLATED IN :deDE YET)
    .accept 9434 >> Accept Testing the Tonic (NOT TRANSLATED IN :deDE YET)
    .target Wizlo Bearingshiner
step
    #loop
    .goto Thousand Needles,36.58,38.77,0
    .goto Thousand Needles,36.58,38.77,35,0
    .goto Thousand Needles,37.77,38.17,35,0
    .goto Thousand Needles,36.63,36.23,35,0
    .goto Thousand Needles,34.96,33.22,35,0
    .goto Thousand Needles,33.37,32.85,35,0
    .goto Thousand Needles,33.67,34.09,35,0
    .goto Thousand Needles,34.88,34.82,35,0
    .goto Thousand Needles,35.62,36.20,35,0
    .goto Thousand Needles,36.05,37.41,35,0
    >>Loot the |cRXP_PICK_Incendia Agave Plants|r on the ground and underwater (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Scalding Elementals|r and |cRXP_ENEMY_Boiling Elementals|r are immune to frost damage, and highly resistant to fire. Try to avoid them or use Arcane spells (NOT TRANSLATED IN :deDE YET) << Mage
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Boiling Elementals|r |cRXP_WARN_wirkt|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Shaman/Druid
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Scalding Elementals|r |cRXP_WARN_wirkt|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
    .complete 5062,1 --Collect Incendia Agave (x10)
    .maxlevel 31
step
    #completewith HSTB
    .hs >> Ruhestein nach Donnerfels
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleportierenieren: Donnerfels]
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Pala
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >> Turn in Steelsnap (NOT TRANSLATED IN :deDE YET)
    .accept 1136 >> Frostrachen annehmen
    .target Melor Stonehoof
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 14263 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Trainiere deine Klassenfähigkeiten
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Trainiere deine Klassenfähigkeiten
    .accept 1718 >>Akzeptiert die Quest Der Inselbewohner
    .target Torm Ragetotem
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 20658 >> Trainiere deine Klassenfähigkeiten
    .accept 1718 >>Akzeptiert die Quest Der Inselbewohner
    .target Torm Ragetotem
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >> Turn in Sacred Fire (NOT TRANSLATED IN :deDE YET)
    .target Magatha Grimtotem
    .isQuestComplete 5062
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    .accept 5088 >> Accept Arikara (NOT TRANSLATED IN :deDE YET)
    .target Magatha Grimtotem
    .isQuestTurnedIn 5062
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 783 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kym|r
    .train 22568 >> Trainiere deine Klassenfähigkeiten
    .target Kym Wildmane
    .xp <32,1
step << Priest
    #optional
    #completewith PRMAtraining2
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 602 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <30,1
    .xp >32,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .train 6077 >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <32,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Erlernen |T135765:0|t[Teleportierenieren: Donnerfels]
    .target Birgitte Cranston
    .xp <30,1
step << Mage/Priest
    #optional
    #label PRMAtraining2
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 421 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >> |cRXP_WARN_Erstellen|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Train |T133671:0|t[Silk Bandage] (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this step if you did not have enough Wool Cloth to reach 150 skill|r (NOT TRANSLATED IN :deDE YET)
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sage|r
    .accept 1049 >> Akzeptiert die Quest Kompendium der Gefallenen
    .target Sage Truthseeker
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[Sturdy Recurve Bow] |cRXP_BUY_from her if it's available|r (NOT TRANSLATED IN :deDE YET)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Thunderhorn
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Razor Arrows] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target Kuna Thunderhorn
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can also buy a|r |T135576:0|t[Bullova] (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Delgo|r (NOT TRANSLATED IN :deDE YET)
    .vendor >> |cRXP_BUY_Buy a|r |T132408:0|t[Merciless Axe] |cRXP_BUY_from him if it's available|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can also buy a|r |T135576:0|t[Bullova] |cRXP_WARN_or check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Ragetotem
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135275:0|t[Broadsword] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +Legt |T135275:0|t[Breitschwert] |cRXP_WARN_an|r
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135651:0|t[Main Gauche] |cRXP_BUY_from him for your off-hand|r (NOT TRANSLATED IN :deDE YET)
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +Legt |T135651:0|t[Parierdolch] |cRXP_WARN_an|r
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auld|r
    .turnin 1102 >> Gebt die Quest Schreckliches Schicksal ab
    .target Auld Stonespire
    .isQuestComplete 1102
    .dungeon RFK
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 879 >> Turn in Betrayal from Within (NOT TRANSLATED IN :deDE YET)
    .accept 906 >> Accept Betrayal from Within (NOT TRANSLATED IN :deDE YET)
    .target Mangletooth
    .isOnQuest 879
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 906 >> Verräter in den eigenen Reihen annehmen
    .target Mangletooth
    .isQuestTurnedIn 879
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >> Ausgewählte Waffen annehmen
    .turnin 893 >> Turn in Weapons of Choice (NOT TRANSLATED IN :deDE YET)
    .accept 1153 >> Eine neue Erzprobe annehmen
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn|r
    .accept 884 >>Akzeptiert die Quest Owatanka
    .turnin 884 >>Gebt die Quest Owatanka ab
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn|r
    .accept 885 >>Accept Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .turnin 885 >>Turn in Washte Pawne (NOT TRANSLATED IN :deDE YET)
    .target Jorn Skyseer
    .itemcount 5103,1
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Reist zum Dorf der Bluthufe
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xar'Ti|r und |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Erlernen |T136103:0|t[Kodoreiten]
    .vendor >>|cRXP_BUY_Kauft einen|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step
    .goto The Barrens,50.48,78.72,100 >> Travel into Dustwallow Marsh (NOT TRANSLATED IN :deDE YET)
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>Klick auf das |cRXP_PICK_Verdächtige Hufabdrücke|r auf dem Boden
    .accept 1268 >> Verdächtige Hufabdrücke annehmen
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>Klickt |cRXP_PICK_Theramore-Schutzabzeichen|r auf das Holzbrett auf dem Boden
    .accept 1269 >> Leutnant Paval Reethe annehmen
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>Klickt |cRXP_PICK_Schwarz Schild|r über dem Kamin
    .accept 1251 >> Der Schwarze Schild annehmen
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #completewith FlyFreewind
    .goto Dustwallow Marsh,30.65,45.34,40,0
    .goto Dustwallow Marsh,32.28,42.80,40,0
    .goto Dustwallow Marsh,33.12,40.85,40,0
    .goto Dustwallow Marsh,33.55,38.71,40,0
    .goto Dustwallow Marsh,34.73,37.66,40,0
    .goto Dustwallow Marsh,34.31,34.40,40,0
    .goto Dustwallow Marsh,33.30,31.23,40,0
    .goto Dustwallow Marsh,36.64,31.72,120,0
    .subzone 496 >> Lauf zum Review der Teufelspfoten
    >>|cRXP_WARN_Be careful! There are level 36-38 mobs in the area. Follow the waypoint arrow for safety|r (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >> Gebt die Quest Verdächtige Hufabdrücke ab
    .target Krog
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krog|r
    .turnin 1269 >> Gebt die Quest Lieutenant Paval Reethe ab
    .target Krog
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krog|r
    .turnin 1251 >> Gebt die Quest Der Schwarze Schild ab
    .accept 1321 >> Der Schwarze Schild annehmen
    .target Krog
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Krog|r
    .accept 1321 >> Der Schwarze Schild annehmen
    .target Krog
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Do'gol|r
    .turnin 1321 >> Gebt die Quest Der Schwarze Schild ab
    .target Do'gol
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zulrg|r (NOT TRANSLATED IN :deDE YET)
    .vendor >>|cRXP_BUY_Buy a|r |T135158:0|t[Big Stick] |cRXP_BUY_from him if it's up|r (NOT TRANSLATED IN :deDE YET)
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target Zulrg
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balai|r
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134937:0|t[Scrolls] |cRXP_BUY_from her if they're up|r (NOT TRANSLATED IN :deDE YET)
    .target Balai Lok'Wein
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balai|r
    >>|cRXP_BUY_Buy the|r |T133735:0|t[First Aid Manuals]|cRXP_BUY_from her|r
    .collect 16112,1,873,1 >> Manual: Heavy Silk Bandage (1) (NOT TRANSLATED IN :deDE YET)
    .collect 16113,1,873,1 >> Manual: Mageweave Bandage (1) (NOT TRANSLATED IN :deDE YET)
    .collect 16084,1,873,1 >> Manual: Expert First Aid - Under Wraps (1) (NOT TRANSLATED IN :deDE YET)
    .target Balai Lok'Wein
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >> Erlernt die Flugroute nach Brackenwall
    .fly Freewind Post >>Fliege nach Freiwindposten
    .target Shardi
    .zoneskip Thousand Needles
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >> Turn in Wind Rider (NOT TRANSLATED IN :deDE YET)
    .target Elu
    .isQuestComplete 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Kauft|r |T135495:0|t[|cRXP_FRIENDLY_Handfester Kurzbogen|r] |cRXP_BUY_bei ihm, falls er verfügbar ist|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134937:0|t[Schriftrollen] |cRXP_BUY_bei ihm, falls sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Abeqwa|r
    .home >> Setzt euren Ruhestein auf Freiwindposten
    .target Innkeeper Abeqwa
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 9434 >> Turn in Testing the Tonic (NOT TRANSLATED IN :deDE YET)
    .target Magistrix Elosai
step
    #softcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >> Turn in Test of Endurance (NOT TRANSLATED IN :deDE YET)
    .accept 1151 >> Test der Kraft annehmen
    .target Dorn Plainstalker
    .isQuestComplete 1150
step
    #hardcore
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >> Turn in Test of Endurance (NOT TRANSLATED IN :deDE YET)
    .accept 1151 >> Test der Kraft annehmen
    .target Dorn Plainstalker
    .isQuestComplete 1150
    .group
step
    #optional
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .accept 1151 >> Test der Kraft annehmen
    .target Dorn Plainstalker
    .isQuestTurnedIn 1150
    .maxlevel 31
step
    #completewith DarkcloudPin
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    >>Find and kill |cRXP_ENEMY_Rok'Alim the Pounder|r. Loot him for his |cRXP_LOOT_Fragments|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_He patrols a large portion of the northern/western part of the zone|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Überspringt diesen Schritt vorerst, falls ihr ihn nicht findet|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .maxlevel 31
step
    #label DarkcloudPin
    .goto Thousand Needles,31.47,36.71,30 >> Head to Darkcloud Pinnacle (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 5064,5147,4904
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Travel up Darkcloud Pinnacle (NOT TRANSLATED IN :deDE YET)
    .maxlevel 31
step
    .goto Thousand Needles,31.79,32.58
    >>Open the |cRXP_PICK_Document Chest|r on top of the plataeu. Loot it for |cRXP_LOOT_Secret Note #1|r (NOT TRANSLATED IN :deDE YET)
    .complete 5064,1 --Secret Note #1 (1)
    .maxlevel 31
step
    .goto Thousand Needles,33.80,39.90
    >>Open the |cRXP_PICK_Document Chest|r inside the big tent. Loot it for |cRXP_LOOT_Secret Note #1|r (NOT TRANSLATED IN :deDE YET)
    .complete 5064,2 --Secret Note #2 (1)
    .maxlevel 31
step
    .goto Thousand Needles,39.20,41.60
    >>Open the |cRXP_PICK_Document Chest|r inside the tent on the eastern plateau. Loot it for |cRXP_LOOT_Secret Note #1|r (NOT TRANSLATED IN :deDE YET)
    .complete 5064,3 --Secret Note #3 (1)
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >> Lauf in Richtung the |cRXP_PICK_Das Feuer|r on the northern/eastern plateau
.maxlevel 31
step
    >>Clear the |cRXP_ENEMY_Grimtotems|rund then light the |cRXP_PICK_Das Feuer|r
	>>Kill |cRXP_ENEMY_Arikara|r. Loote sie für den |cRXP_LOOT_Skin|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob Arikara
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.80
    >>Kill |cRXP_ENEMY_Arnak Grimmtotem|r. Loote ihn für seine |cRXP_LOOT_Hoof|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob Arnak Grimtotem
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lakota|r
    >>|cRXP_WARN_Das startet eine Eskorte|r
    .accept 4904,1 >> Endlich frei annehmen
    .target Lakota Windsong
    .maxlevel 31
step
    #label LakoteEscort
    .goto Thousand Needles,38.96,29.46,20,0
    .goto Thousand Needles,37.56,31.43,20,0
    .goto Thousand Needles,36.89,31.73,20,0
    .goto Thousand Needles,35.64,31.01,20,0
    .goto Thousand Needles,34.53,30.78,20,0
    .goto Thousand Needles,33.19,28.54,20,0
    .goto Thousand Needles,32.53,27.44,20,0
    .goto Thousand Needles,32.28,28.67,20,0
    .goto Thousand Needles,32.04,31.37,20,0
    .goto Thousand Needles,32.86,32.62,20,0
    .goto Thousand Needles,33.05,35.42,20,0
    .goto Thousand Needles,31.06,36.89
	>>Escort |cRXP_FRIENDLY_Lakota|r to safety (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn every time she reaches a new platform. Try and stay ahead of her to clear the platforms if you have respawns behind|r (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_WARN_Be careful as this quest is HARD. Don't be afraid to escape by running behind you and failing the escort|r (NOT TRANSLATED IN :deDE YET)
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target Lakota Windsong
    .maxlevel 31
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Motega|r
    .turnin 5088 >> Turn in Arikara (NOT TRANSLATED IN :deDE YET)
    .target Motega Firemane
    .isQuestComplete 5088
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Be careful! Turning this in will summon three |cRXP_ENEMY_Auftragsmörder der Galak|r |cRXP_WARN_that you have to protect |cRXP_FRIENDLY_Kanati|r from|r
    .turnin 4881 >> Turn in Assassination Plot (NOT TRANSLATED IN :deDE YET)
    .accept 4966 >> Kanati Grauwolke schützen annehmen
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Kill the |cRXP_ENEMY_Galak Assassins|r to protect |cRXP_FRIENDLY_Kanati|r (NOT TRANSLATED IN :deDE YET)
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Turn in Protect Kanati Greycloud (NOT TRANSLATED IN :deDE YET)
    .isQuestComplete 4966
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    >>Find and kill |cRXP_ENEMY_Rok'Alim the Pounder|r. Loot him for his |cRXP_LOOT_Fragments|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_He patrols a large portion of the northern/western part of the zone|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this quest if you cannot find him|r (NOT TRANSLATED IN :deDE YET)
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
step
    #completewith next
    .goto Thousand Needles,12.51,13.83,80,0
    .goto Thousand Needles,11.21,22.09,80,0
    >>Kill |cRXP_ENEMY_Gravelsnout Surveyors|r and |cRXP_ENEMY_Gravelsnout Diggers|r. Loot them for an |cRXP_LOOT_Ore Sample|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this step for now if it does not drop|r (NOT TRANSLATED IN :deDE YET)
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .zoneskip Feralas
step
    #completewith FeralasFP
    .subzone 1099 >>Travel to Camp Mojache in Feralas (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be careful! Stay on the road to avoid high level mobs|r (NOT TRANSLATED IN :deDE YET)
step
    .goto Feralas,76.06,43.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bronk|r
    .vendor >> |cRXP_BUY_Kauft|r |T134833:0|t[Überragende Heiltränke] |cRXP_BUY_bei ihm, falls welche verfügbar sind|r
    .target Bronk
    .isQuestAvailable 1151
step
    #label FeralasFP
    .goto Feralas,75.45,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shyn|r
    .fp Camp Mojache >> Get the Camp Mojache Flight Path (NOT TRANSLATED IN :deDE YET)
    .fly freewind Post >> Fliege nach Freiwindposten
    .target Shyn
    .subzoneskip 484
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >> Turn in Grimtotem Spying (NOT TRANSLATED IN :deDE YET)
    .turnin 5147 >> Turn in Wanted - Arnak Grimtotem (NOT TRANSLATED IN :deDE YET)
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
    .isQuestComplete 5147
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >> Turn in Grimtotem Spying (NOT TRANSLATED IN :deDE YET)
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Longhorn|r
    .turnin 5147 >> Turn in Wanted - Arnak Grimtotem (NOT TRANSLATED IN :deDE YET)
    .target Cliffwatcher Longhorn
    .isQuestComplete 5147
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thalia|r
    .turnin 4904 >> Turn in Free at Last (NOT TRANSLATED IN :deDE YET)
    .target Thalia Amberhide
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134937:0|t[Schriftrollen] |cRXP_BUY_bei ihm, falls sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Buy a|r |T135495:0|t[|cRXP_FRIENDLY_Dense Shortbow|r] |cRXP_BUY_from him if it's up and fill your quiver with arrows|r (NOT TRANSLATED IN :deDE YET)
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,1151,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dorn|r
    .turnin 1151 >> Turn in Test of Strength (NOT TRANSLATED IN :deDE YET)
    .target Dorn Plainstalker
    .isQuestComplete 1151
step
    #loop
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
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,59.79,58.16,0
    >>Töte |cRXP_ENEMY_Feldmesser der Bruchschnauzen|r, |cRXP_ENEMY_Gravelsnout Diggers|r, and |cRXP_ENEMY_Gibblesnik|r (if he's up). Loot them for an |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
    #optional
    .abandon 1151 >>Abandon Test of Strength (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .abandon 5147 >>Abandon Wanted - Arnak Grimtotem (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .abandon 5064 >>Abandon Grimtotem Spying (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .abandon 5088 >>Abandon Arikara (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .abandon 1152 >>Abandon Test of Lore (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .goto Thousand Needles,43.12,36.86
    .xp 30 >> Grinde to level 30
step
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >> Reist nach Flimmern Flats
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kravel|r
    .accept 1111 >> Werftmeister Flunkerblick annehmen
	.accept 5762 >> Hemet Nesingwary annehmen
	.target Kravel Koalbeard
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >> Lauf nach Gadgetzan
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Get the Gadgetzan Flight Path (NOT TRANSLATED IN :deDE YET)
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .target Bulkrek Ragefist
    .cooldown item,6948,<0
    .zoneskip The Barrens
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Get the Gadgetzan Flight Path (NOT TRANSLATED IN :deDE YET)
    .target Bulkrek Ragefist
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >> Ruhestein nach Freiwindposten
    .goto Thousand Needles,46.06,51.41,30 >>Kommt in Freiwindposten an
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nyse|r
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .target Nyse
    .zoneskip Thousand Needles,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >> Turn in A New Ore Sample (NOT TRANSLATED IN :deDE YET)
    .target Tatternack Steelforge
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Reist zum Dorf der Bluthufe
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xar'Ti|r und |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Erlernen |T136103:0|t[Kodoreiten]
    .vendor >>|cRXP_BUY_Kauft einen|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>Reist nach Camp Taurajo
    .skill riding,<75,1
step
    #label FlyCR
    #completewith SwarmGrows
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads>> Fliege nach Das Wegekreuz
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 906 >> Turn in Betrayal from Within (NOT TRANSLATED IN :deDE YET)
    .target Thork
    .isOnQuest 906
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Korran|r
    .accept 1145 >> Akzeptiert die Quest Der Schwarm wächst
    .target Korran
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fliege nach Ratschet
	.target Devrak
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fliege nach Ratschet
	.target Devrak
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
	.target Devrak
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Gebt die Quest Der Schwarm wächst ab
    .accept 1146 >> Akzeptiert die Quest Der Schwarm wächst
    .target Belgrom Rockmaul
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sorek|r
	.accept 1718 >> Akzeptiert die Quest Der Inselbewohner
    .target Sorek
step
    #sticky
    #completewith EnterGNOMER
    .zone 721,2 >> Now you should be looking for a group to Gnomeregan (NOT TRANSLATED IN :deDE YET)
    .dungeon GNOMER
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Doras
    .zoneskip Orgrimmar,1
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1111 >> Gebt die Quest Werftmeister Dizzywig ab
    .accept 1112 >> Akzeptiert die Quest Teile für Kravel
    .target Wharfmaster Dizzywig
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .turnin 220 >>Gebt die Quest Ruf des Wassers ab
    .accept 63 >>Akzeptiert die Quest Ruf des Wassers
    .target Islen Waterseer
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    >>|cRXP_WARN_Make sure you get the|r |T134754:0|t[|cRXP_LOOT_Wassersapta|r
    .turnin 972 >>Turn in Water Sapta (NOT TRANSLATED IN :deDE YET)
	.collect 6637,1 --Water Sapta (1)
    .target Islen Waterseer
    .itemcount 6637,<1
step
    #optional << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target Mahren Skyseer
    .isOnQuest 874
step
    #optional
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mahren|r
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target Mahren Skyseer
    .isQuestTurnedIn 874
step
    #optional << !Warrior !Shaman
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>Kill |cRXP_ENEMY_Isha Awak|r. Loote ihn für den |cRXP_LOOT_Herz von Isha Awak|r
    >>|cRXP_WARN_He has four different spawn locations alongside the coast|r (NOT TRANSLATED IN :deDE YET)
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isOnQuest 873
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >> Lauf nach Schlägereiland
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Klannoc|r
    .turnin 1718 >>Gebt die Quest Der Inselbewohner ab
    .accept 1719 >>Akzeptiert die Quest Der Ringkampf
    .target Klannoc Macleod
step << Warrior
	>>Step onto the grate behind you. Quickly kill the |cRXP_ENEMY_Ringkampfherausforderer|r that come one by one
    >>Kill |cRXP_ENEMY_Big Will|r once he appears (NOT TRANSLATED IN :deDE YET)
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob Big Will
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Klannoc|r
    >>|cRXP_WARN_This will teach you Berserker Stance|r (NOT TRANSLATED IN :deDE YET)
    .turnin 1719 >>Gebt die Quest Der Ringkampf ab
    .accept 1791 >>Der Windbehüter annehmen
    .target Klannoc Macleod
step
    #optional << !Warrior !Shaman
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >> Turn in Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target Mahren Skyseer
    .isQuestComplete 873
step << !Mage
    #optional << !Warrior !Shaman
    .goto The Barrens,62.81,37.91,200 >>Travel back to Ratchet (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 392
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >> Take Lauf südlich ins Schlingendorntal
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Scooty|r
    .turnin 2842 >>Gebt die Quest Chefingenieur Scooty ab
    .accept 2843 >>Akzeptiert die Quest Gnomer-weeeeg!
    .target Scooty
    .timer 9 >> Goblin Transponder
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Scooty|r
    .turnin 2843 >>Gebt die Quest Gnomer-weeeeg! ab
    .target Scooty
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >> Tretet auf den Gnomeregan-Transponder
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >> Betretet Gnomeregan
    .dungeon GNOMER
step
    >>Tötet |cRXP_ENEMY_Robogenieur Thermaplugg|r. Plündert ihn für |cRXP_LOOT_Tresorkombination|r
    >>Plündert |cRXP_PICK_Thermapluggs Safe|r im nördlichen Teil des Raumes für die |cRXP_LOOT_Maschinenblaupausen|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob Mekgineer Thermaplugg
    .dungeon GNOMER
step << !Mage
	.hs >> Ruhestein nach Freiwindposten
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nyse|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Nyse
    .zoneskip Thousand Needles,1
    .dungeon GNOMER
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Bragok
    .zoneskip The Barrens,1
step << Mage
    .cast 3567 >>|cRXP_WARN_Wirkt|r |T135759:0|t[Teleportieren: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 8412 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 8422 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Horthus|r|cRXP_BUY_. Kauft zwei oder mehr|r |T134419:0|t[Rune der Teleportation] |cRXP_BUY_von ihm|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Horthus
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 1760 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 8623 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprechen mit|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Versorgt euch mit|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_und|r |T132273:0|t[Gifte]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454/1,-4212.89,1920.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Searn|r
    .accept 1531 >> Akzeptiert die Quest Ruf der Luft
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8232 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <30,1
    .xp >32,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 945 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <32,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 5784 >> Train |T136103:0|t[Summon Felsteed] (NOT TRANSLATED IN :deDE YET)
    .target Mirket
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6213 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Kauft alle Haustierverbesserungen, die ihr euch leisten könnt
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively you can check the Auction House if something better is available|r (NOT TRANSLATED IN :deDE YET)
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Gebt die Quest Der Schwarm wächst ab
    .accept 1146 >> Akzeptiert die Quest Der Schwarm wächst
    .target Belgrom Rockmaul
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 7369 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 20658 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 5384 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14263 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24559 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <30,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Razor Pfeile] |cRXP_BUY_bei ihm|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Erlernen 2h Äxte
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 602 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 6077 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 34769 >> Train |T136103:0|t[Summon Warhorse] (NOT TRANSLATED IN :deDE YET)
    .target Master Pyreanor
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 19836 >> Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <32,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nogg|r
    .turnin 2841 >>Gebt die Quest Maschinenkriege ab
    .target Nogg
    .dungeon GNOMER
    .isQuestComplete 2841
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kildar|r und |cRXP_FRIENDLY_Ogunaro|r
    .train 825 >>Erlernen |T136103:0|t[Wolfsreiten]
    .vendor >>|cRXP_BUY_Kauft|r |T132224:0|t[|cFF0070FFWolf|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kildar
    .target Ogunaro Wolfrunner
step << Troll
    #optional
    #completewith next
    .subzone 367 >> Reist ins Dorf Sen'Jin
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xar'Ti|r und |cRXP_FRIENDLY_Zjolnir|r
    .train 10861 >>Erlernen |T136103:0|t[Raptorreiten]
    .vendor >>|cRXP_BUY_Kauft|r |T132253:0|t[|cFF0070FFRaptor|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Xar'Ti
    .target Zjolnir

]])
