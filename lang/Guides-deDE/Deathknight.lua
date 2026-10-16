if GetLocale() ~= "deDE" then return end
local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group RestedXP Todesritter Start
#next RestedXP Allianz 60-70\59-61 Höllenfeuerhalbinsel << Alliance wotlk
#next RestedXP Horde 60-70\59-61 Höllenfeuerhalbinsel << Horde wotlk
#next RXP Kataklysmus 60-80 (H)\59-61 Höllenfeuerhalbinsel << Horde cata
#next RXP Kataklysmus 60-80 (A)\59-61 Höllenfeuerhalbinsel << Alliance cata
#next RXP MoP 60-80 (H)\59-61 Höllenfeuerhalbinsel << Horde !wotlk !cata
#next RXP MoP 60-80 (A)\59-61 Höllenfeuerhalbinsel << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 The Scarlet Enclave

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Lichkönig|r
    .target The Lich King
    .accept 12593 >>Akzeptiert die Quest Im Dienste des Lichkönigs
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instrukteur Razuvious|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 12593 >>Gebt die Quest Im Dienste des Lichkönigs ab
    .target Instructor Razuvious
    .accept 12619 >>Akzeptiert die Quest Die verzierte Runenklinge
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>Plündert das |T135410:0|t[|cRXP_LOOT_Kampferprobtes Schwert|r] von einem der Waffenständer. Es hat mehrere Spawnorte an den Wänden.
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >> |cRXP_WARN_Kanalisiert das|r |T135410:0|t[|cRXP_LOOT_Kampferprobtes Schwert|r] |cRXP_WARN_bei der|r |cRXP_PICK_Runenschmiede|r
    .timer 8,Runenklinge prägen RP
	.use 38607
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instrukteur Razuvious|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 12619 >>Gebt die Quest Die verzierte Runenklinge ab
    .target Instructor Razuvious
    .accept 12842 >>Akzeptiert die Quest Runen schmieden: Vorbereitung auf den Kampf
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_Geht zur|cRXP_PICK_ Runenschmiede|r erneut|r
    >>|cRXP_WARN_Im Zauberbuch von Euch (Standard: P) klickt auf|r |T237523:0|t[Runen schmieden]
    >>|cRXP_WARN_Graviert eure|r |T135335:0|t[|cFF0070FFRunenbeschriebene Seelenklinge|r] |cRXP_WARN_mit|r |T136130:0|t[Rune des schwarzen Gletschers]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >> Rüstet die |T135335:0|t[|cRXP_WARN_Runenbeschriebene Seelenklinge|r] |cFF0070FFaus|r
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instrukteur Razuvious|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 12842 >>Gebt die Quest Runen schmieden: Vorbereitung auf den Kampf ab
    .target Instructor Razuvious
    .accept 12848 >>Akzeptiert die Quest Der endlose Hunger
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >> Rüstet die |T135335:0|t[|cRXP_WARN_Runenbeschriebene Seelenklinge|r] |cFF0070FFaus|r
    .use 38707
step
    #completewith next
    .cast 54669 >> Klickt auf eines der |cRXP_PICK_Acherus-Seelenefängnisse|r entlang der zentralen inneren Mauer, um einen |cRXP_ENEMY_Unwürdigen Initianden|r freizusetzen
    .timer 17,Unwürdig Initiand RP
step
    .goto 124,48.4,29.0
    >>Tötet |cRXP_ENEMY_Unwürdigen Initiand|r nach der kurzen Rollenspielszene
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob Unworthy Initiate
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instrukteur Razuvious|r |cRXP_WARN_patrouilliert leicht|r
    .turnin 12848 >>Gebt die Quest Der endlose Hunger ab
    .target Instructor Razuvious
    .accept 12636 >>Akzeptiert die Quest Das Auge von Acherus
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alchemist Karloff|r
    >>|cRXP_BUY_Kauft vier|r |T133849:0|t[Leichenstaub] |cRXP_WARN_von ihm|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Lichkönig|r
    .target The Lich King
    .turnin 12636 >>Gebt die Quest Das Auge von Acherus ab
    .accept 12641 >>Akzeptiert die Quest Tod kommt von ganz oben
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >> Klickt auf |cRXP_PICK_Auge von Acherus-Kontrollmechanismus|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_Wirkt|r |T136158:0|t[Lage einschätzen] (1) |cRXP_WARN_auf die Schmiede von Neu-Avalon|r
    >>|cRXP_WARN_Weicht|r |cRXP_ENEMY_Scarlet Kreuzfahrer|r |cRXP_WARN_um jeden Preis aus. Das Wirken von|r |T136119:0|t[Ghule beschwören] (2) |cRXP_WARN_kann auch eine kleine Ablenkung bieten|r
    >>|cFFFF0000Es gibt keinen Pfeil für diesen Schritt. Der Ort des Gebäudes ist auf der Karte von Euch markiert. Das Gebäude hat auch ein großes rotes Mal des Jägers-Symbol darauf|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Lage einschätzen] (1) |cRXP_WARN_on Scharlachrote Festung|r
    >>|cRXP_WARN_Weicht|r |cRXP_ENEMY_Scarlet Kreuzfahrer|r |cRXP_WARN_um jeden Preis aus. Das Wirken von|r |T136119:0|t[Ghule beschwören] (2) |cRXP_WARN_kann auch eine kleine Ablenkung bieten|r
    >>|cFFFF0000Es gibt keinen Pfeil für diesen Schritt. Der Ort des Gebäudes ist auf der Karte von Euch markiert. Das Gebäude hat auch ein großes rotes Mal des Jägers-Symbol darauf|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_Wirkt|r |T136158:0|t[Lage einschätzen] (1) |cRXP_WARN_auf das Rathaus von Neu-Avalon|r
    >>|cRXP_WARN_Weicht|r |cRXP_ENEMY_Scarlet Kreuzfahrer|r |cRXP_WARN_um jeden Preis aus. Das Wirken von|r |T136119:0|t[Ghule beschwören] (2) |cRXP_WARN_kann auch eine kleine Ablenkung bieten|r
    >>|cFFFF0000Es gibt keinen Pfeil für diesen Schritt. Der Ort des Gebäudes ist auf der Karte von Euch markiert. Das Gebäude hat auch ein großes rotes Mal des Jägers-Symbol darauf|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_Wirkt|r |T136158:0|t[Lage einschätzen] (1) |cRXP_WARN_auf die Kapelle der Scharlachroten Flamme|r
    >>|cRXP_WARN_Weicht|r |cRXP_ENEMY_Scarlet Kreuzfahrer|r |cRXP_WARN_um jeden Preis aus. Das Wirken von|r |T136119:0|t[Ghule beschwören] (2) |cRXP_WARN_kann auch eine kleine Ablenkung bieten|r
    >>|cFFFF0000Es gibt keinen Pfeil für diesen Schritt. Der Ort des Gebäudes ist auf der Karte von Euch markiert. Das Gebäude hat auch ein großes rotes Mal des Jägers-Symbol darauf|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >> |cRXP_WARN_Drückt die Flucht-Taste oder|r |T136190:0|t[Auge von Acherus zurückrufen] (5) |cRXP_WARN_um zur Schwarzen Festung zurückzukehren|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Lichkönig|r
    .target The Lich King
    .turnin 12641 >>Gebt die Quest Tod kommt von ganz oben ab
    .accept 12657 >>Akzeptiert die Quest Die Macht der Geißel
step
    #completewith next
    .goto 124,50.516,33.404,5 >> Tretet auf den purpurnen Teleporter, um zur unteren Ebene zu reisen
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12657 >>Gebt die Quest Die Macht der Geißel ab
    .accept 12850 >>Akzeptiert die Quest Meldet Euch bei Geißelkommandant Thalanor
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Scourge Rittmeister Thalanor|r
    >>|cRXP_FRIENDLY_Geißelkommandant Thalanor|r |cRXP_WARN_patrouilliert leicht|r
    .target Scourge Commander Thalanor
    .turnin 12850 >>Gebt die Quest Meldet Euch bei Geißelkommandant Thalanor ab
    .accept 12670 >>Akzeptiert die Quest Die Scharlachrote Ernte
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Besteigt |cRXP_FRIENDLY_Geißelgreif|r, um zur Todesbresche zu fliegen
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12670 >>Gebt die Quest Die Scharlachrote Ernte ab
    .accept 12678 >>Akzeptiert die Quest Leid wird vom Chaosschaden getrieben
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salanar der Reiter|r
    >>|cRXP_FRIENDLY_Salanar der Reiter|r |cRXP_WARN_patrouilliert Die Todesbresche|r
    .accept 12680 >>Akzeptiert die Quest Grand Theft Palomino
    .target Salanar the Horseman
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schlachtruferin Olrun|r
    .accept 12733 >>Akzeptiert die Quest Herausforderung des Todes
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salanar der Reiter|r
    >>|cRXP_FRIENDLY_Salanar der Reiter|r |cRXP_WARN_patrouilliert Die Todesbresche|r
    .accept 12680 >>Akzeptiert die Quest Grand Theft Palomino
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orithos der Himmelsverdunkler|r
    >>|cRXP_FRIENDLY_Orithos der Himmelsverdunkler|r |cRXP_WARN_patrouilliert Die Todesbresche|r
    .accept 12679 >>Akzeptiert die Quest Heute Abend speisen wir in Havenau
step
	#completewith next
	>>Tötet die |cRXP_ENEMY_Scharlachroter Kreuzfahrer|r und die |cRXP_ENEMY_Bürger von Havenau|r. Sammelt die |cRXP_PICK_Saronitpfeile|r vom Boden
    >>|cRXP_WARN_Geht nicht aus Eurem Weg, um dies jetzt zu vollenden|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>Besteigt eine |cRXP_FRIENDLY_Stute aus Havenau|r oder einen |cRXP_FRIENDLY_Hengst aus Havenau|r. Reitet sie zurück zur Todesbresche
    >>|cRXP_WARN_Vermeidet den Elite |cRXP_ENEMY_Stallmeister Kitrik|r, der die Gegend patrouilliert|r
    .target Havenshire Mare
    .target Havenshire Stallion
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_Reitet zurück zur Todesbresche|r
    >>|cRXP_WARN_Wirkt|r |T132226:0|t[Galoppieren] (2) |cRXP_WARN_um die Bewegungsgeschwindigkeit zu erhöhen|r
    >>|cRXP_WARN_Wirkt|r |T132261:0|t[Gestohlenes Pferd abgeben] (1) |cRXP_WARN_einmal bei|r |cRXP_FRIENDLY_Salanar der Reiter|r
    >>|cRXP_FRIENDLY_Salanar der Reiter|r |cRXP_WARN_patrouilliert Die Todesbresche|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target Salanar the Horseman
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salanar der Reiter|r
    .turnin 12680 >>Gebt die Quest Grand Theft Palomino ab
    .target Salanar the Horseman
    .accept 12687 >>Akzeptiert die Quest Ins Reich des Schattens
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >> Tötet einen |cRXP_ENEMY_Dunkler Reiter von Acherus|r. Besteigt danach das |cRXP_FRIENDLY_Todesstreitross von Acherus|r
    .mob Dark Rider of Acherus
    .target Acherus Deathcharger
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >> Kehrt zurück nach Die Todesbresche
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_Wirkt|r |T136129:0|t[Ruf des Reiters] (1) |cRXP_WARN_einmal bei Die Todesbresche. Wartet auf das kurze Rollenspiel|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salanar der Reiter|r
    .turnin 12687 >>Gebt die Quest Ins Reich des Schattens ab
step
	#completewith DuelDK
	.cast 48778 >> |cRXP_WARN_Ihr habt nun euren|r |T237534:0|t[Todesstreitross von Acherus]|cRXP_WARN_. Fügt ihn zu euren Aktionsleisten aus eurem Reittiere-Fenster hinzu (Standard: Verschiebung+P)|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>Tötet die |cRXP_ENEMY_Scharlachroter Kreuzfahrer|r und die |cRXP_ENEMY_Bürger von Havenau|r. Sammelt die |cRXP_PICK_Saronitpfeile|r vom Boden
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>Sprecht mit den |cRXP_FRIENDLY_Todesritter-Anwärtern|r und besiegt sie in einem Duell
	>>|cRXP_WARN_Verlasst nicht den 30-Meter-Duellbereich|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
    .mob Death Knight Initiate
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orithos der Himmelsverdunkler|r
    >>|cRXP_FRIENDLY_Orithos der Himmelsverdunkler|r |cRXP_WARN_patrouilliert Die Todesbresche|r
    .turnin 12679 >>Gebt die Quest Heute Abend speisen wir in Havenau ab
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schlachtruferin Olrun|r
    .turnin 12733 >>Gebt die Quest Herausforderung des Todes ab
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12678 >>Gebt die Quest Leid wird vom Chaosschaden getrieben ab
    .accept 12697 >>Akzeptiert die Quest Gothik der Ernter
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothik der Ernter|r
    .target Gothik the Harvester
    .turnin 12697 >>Gebt die Quest Gothik der Ernter ab
    .accept 12698 >>Akzeptiert die Quest Das Geschenk, das nicht aufhört zu schenken
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_Betretet die Mine von Havenau|r
    .use 39253 >> |cRXP_WARN_Benutzt|r |T133882:0|t[Gabe des Ernters] |cRXP_WARN_auf |cRXP_ENEMY_Scharlachroter Bergmann|r, solange sie nicht im Kampf sind. Tötet sie NICHT und greift sie NICHT an|r
    >>|cRXP_WARN_Sobald 5 |cRXP_FRIENDLY_Scharlachroter Ghule|r euch folgen, kehrt zu|r |cRXP_ENEMY_Gothik der Ernter|r zurück
    >>|cRXP_WARN_Töten jeden |cRXP_ENEMY_Scarlet Ghosts|r mit denen ihr im Kampf seid|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothik der Ernter|r
    .target Gothik the Harvester
    .turnin 12698 >>Gebt die Quest Das Geschenk, das nicht aufhört zu schenken ab
    .accept 12700 >>Akzeptiert die Quest Gelegenheitsangriff
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Valanar|r
    .turnin 12700 >>Gebt die Quest Gelegenheitsangriff ab
    .accept 12701 >>Akzeptiert die Quest Massaker am Lichtgipfel
    .target Prince Valanar
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_Folgt den Pfeil zur Scarlet Ship. Fallt herunter|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >> |cRXP_WARN_Fallt erneut herunter|r
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >> |cRXP_WARN_Lauft die Rampe hinauf zur Scarlet Ship. BETRETET die|r |cRXP_PICK_Scharlachrote Kanone|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_Wirkt|r |T136186:0|t[Scharlachrote Kanone] (1) |cRXP_WARN_um die|r |cRXP_ENEMY_Scharlachroter Flottenverteidiger|r
    >>|cRXP_WARN_Wirkt|r |T136099:0|t[Elektromagnetischer Puls] (2) |cRXP_WARN_wenn |cRXP_ENEMY_Scharlachroter Flottenverteidiger|r anfangen, Eure Kanone aus nächster Nähe anzugreifen|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>|cRXP_WARN_Wirkt|r |T135766:0|t[Skelettgreifenflucht] (5) |cRXP_WARN_um zur Todesbresche zurückzukehren|r
    .timer 70,Die Todesbresche Flug
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12701 >>Gebt die Quest Massaker am Lichtgipfel ab
    .accept 12706 >>Akzeptiert die Quest Sieg an der Todesbresche!
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >> Sitzt |cRXP_FRIENDLY_Geißelgreif|r auf, um nach Acherus zurückzukehren
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12706 >>Gebt die Quest Sieg an der Todesbresche! ab
    .accept 12714 >>Akzeptiert die Quest Der Wille des Lichkönigs
step
    .goto 124,47.472,26.550
    .target Lord Thorval
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Thorval|r
    .accept 12849 >>Akzeptiert die Quest Die Macht von Blut, Frostschaden und Unheilig
	.turnin 12849 >>Gebt die Quest Die Macht von Blut, Frostschaden und Unheilig ab
	.trainer >> Trainiere deine Klassenfähigkeiten << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Besteigt |cRXP_FRIENDLY_Geißelgreif|r, um zur Todesbresche zu fliegen
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Valanar|r
    .target Prince Valanar
    .turnin 12714 >>Gebt die Quest Der Wille des Lichkönigs ab
    .accept 12715 >>Akzeptiert die Quest Die Krypta der Erinnerung
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hargus der Dreckige <Vorräte>|r
    >>|cRXP_BUY_Kauft 20|r |T133849:0|t[Leiche Staub] |cRXP_WARN_von ihm|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>Klickt |cRXP_PICK_Verlassene Post|r
    >>|cRXP_WARN_Ihr könnt diesen |cRXP_PICK_Briefkasten|r auch benutzen, wenn ihr möchtet, um euch Gegenstände selbst zu senden|r
    .turnin 12711 >>Gebt die Quest Herrenlose Post ab
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Noth der Seuchenfürst|r
    .target Noth the Plaguebringer
    .accept 12716 >>Akzeptiert die Quest Des Seuchenfürstens Gesuch
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >> Reist in die Krypta der Erinnerung hinunter
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12715 >>Gebt die Quest Die Krypta der Erinnerung ab
    .accept 12719 >>Akzeptiert die Quest Es gibt kein Entrinnen
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baron Rivendare|r
    .target Baron Rivendare
    .accept 12722 >>Akzeptiert die Quest Wie Lämmer zur Schlachtbank
step
	#completewith QuimbyRegistry
	>>Tötet |cRXP_ENEMY_Scarlet Kreuzzug|r und |cRXP_ENEMY_Citizens of Neu-Avalon|r. Plündert sie für ihre |cRXP_LOOT_Kreuzfahrerschädel|r
    >>|cRXP_WARN_Geht nicht aus Eurem Weg, um dies jetzt zu vollenden|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >> BETRETET das Rathaus von Neu-Avalon
step
    #label QuimbyRegistry
	>>Tötet |cRXP_ENEMY_Bürgermeister Quimby|r. Plündert |cRXP_PICK_Neu-Avalon Registratur|r auf dem Tisch
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >> Kehrt zur Krypta der Erinnerung zurück
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12719 >>Gebt die Quest Es gibt kein Entrinnen ab
    .accept 12720 >>Akzeptiert die Quest Wie man Freunde gewinnt und Feinde beeinflusst
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baron Rivendare|r
    .target Baron Rivendare
    .turnin 12722 >>Gebt die Quest Wie Lämmer zur Schlachtbank ab
step
	#completewith Dawn
	>>Tötet |cRXP_ENEMY_Scarlet Kreuzzug|r und |cRXP_ENEMY_Citizens of Neu-Avalon|r. Plündert sie für ihre |cRXP_LOOT_Kreuzfahrerschädel|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>Sammelt |cRXP_PICK_Eisenkette|r an der Wand in der Schmiede
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >> Geht in den Gasthof
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>Sammelt |cRXP_PICK_Leeren Kessel|r im Keller
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >> |cRXP_WARN_Öffnet|r |T132595:0|t[Juwelenbesetzte Schatulle] |cRXP_WARN_für 2|r |T135271:0|t[Keleseths Überzeuger]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >> |cRXP_WARN_Anlegen|r |T135271:0|t[Keleseths Überzeuger] |cRXP_WARN_in von Euch Waffenhand|r
    .equip 17,39371 >> |cRXP_WARN_Anlegen|r |T135271:0|t[Keleseths Überzeuger] |cRXP_WARN_in von Euch Schildhand|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_Greift |cRXP_ENEMY_Scarlet Kreuzzug|r an, bis die Quest abgeschlossen ist. Das kann eine Weile dauern, wenn ihr Pech habt|r
    >>|cRXP_WARN_Ihr müsst |T135271:0|t[Keleseths Überzeuger] angelegt haben, um das Ziel zu erfüllen|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >> Rüstet die |T135335:0|t[|cRXP_WARN_Runenbeschriebene Seelenklinge|r] |cFF0070FFaus|r
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>Tötet |cRXP_ENEMY_Scarlet Kreuzzug|r und |cRXP_ENEMY_Citizens of Neu-Avalon|r. Plündert sie für ihre |cRXP_LOOT_Kreuzfahrerschädel|r
    >>|cRXP_ENEMY_Bürger von Neu-Avalon|r |cRXP_WARN_können in den Gebäuden gefunden werden|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Noth der Seuchenfürst|r
    .target Noth the Plaguebringer
    .turnin 12716 >>Gebt die Quest Des Seuchenfürstens Gesuch ab
    .accept 12717 >>Akzeptiert die Quest Noths Spezialgebräu
step
    .goto 124,56.157,52.008
    >>Hebt |cRXP_PICK_Seuche Kessel|r auf
    .turnin 12717 >>Gebt die Quest Noths Spezialgebräu ab
step
    #optional
    .goto 124,56.157,52.008
    >>Hebt |cRXP_PICK_Seuche Kessel|r erneut auf
    .turnin 12718 >>Gebt die Quest Mehr Totenschädel fürs Gebräu ab
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >> Kehrt zur Krypta der Erinnerung zurück
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baron Rivendare|r
    .target Baron Rivendare
    .turnin 12722 >>Gebt die Quest Wie Lämmer zur Schlachtbank ab
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prince Keleseth|r
    .target Prince Keleseth
    .turnin 12720 >>Gebt die Quest Wie man Freunde gewinnt und Feinde beeinflusst ab
    .accept 12723 >>Akzeptiert die Quest Hinter den Linien der Scharlachroten
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Reist zur Scharlachroten Taverne. Sprecht mit |cRXP_FRIENDLY_Orbaz Blutbann|r und |cRXP_FRIENDLY_Thassarian|r oben
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12723 >>Gebt die Quest Hinter den Linien der Scharlachroten ab
    .accept 12724 >>Akzeptiert die Quest Der Pfad des gerechten Kreuzfahrers
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thassarian|r upstairs
    .target Thassarian
    .accept 12725 >>Akzeptiert die Quest Im Tode vereint
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >> Betretet die Scharlachrote Festung. Geht hinab in den Keller
    >>|cRXP_WARN_Gebt euren Geist NICHT frei, wenn ihr sterbt. Eine |cRXP_FRIENDLY_Kriegsmaid der Val'kyr|r wird euch wiederbeleben|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Koltira Todesweber|r im Keller
    .target Koltira Deathweaver
    .turnin 12725 >>Gebt die Quest Im Tode vereint ab
    .accept 12727 >>Akzeptiert die Quest Blutiger Ausbruch
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_Nicht defend|r |cRXP_FRIENDLY_Koltira Deathweaver|r
    >>Geht zum obersten Geschoss. Plündert |cRXP_PICK_Neu-Avalon Patrol Schedule|r vom Tisch
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>Kehrt zu |cRXP_FRIENDLY_Koltira Todesweber|r im Keller zurück
    >>Tötet |cRXP_ENEMY_Valroth|r. Plündert |cRXP_PICK_Hochinquisitor Valroths Überreste|r auf dem Boden für |cRXP_LOOT_Valroths Kopf|r
	>>|cRXP_WARN_Ihr müsst möglicherweise Adds töten, die |cRXP_FRIENDLY_Koltira Todesweber|r angreifen, während ihr wartet, bis |cRXP_ENEMY_Valroth|r spawnt|r
    >>|cRXP_WARN_Falls das Rollenspiel beendet ist, sprecht erneut mit |cRXP_FRIENDLY_Koltira Todesweber|r, um das Rollenspiel zu starten|r
    >>|cRXP_WARN_Steht im|r |T136178:0|t[Antimagisches Feld] |cRXP_WARN_um Zauberschaden zu reduzieren|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>Geht zum obersten Geschoss. Plündert |cRXP_PICK_Neu-Avalon Patrol Schedule|r vom Tisch
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>Hebt |cRXP_PICK_Seuche Kessel|r auf
    .turnin 12718 >>Gebt die Quest Mehr Totenschädel fürs Gebräu ab
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >> Kehrt zur Scharlachroten Taverne zurück. Sprecht mit |cRXP_FRIENDLY_Orbaz Blutbann|r und |cRXP_FRIENDLY_Thassarian|r oben
step
	#completewith ACFV
	.destroy 39328 >> Entfernt alle verbleibenden |T133730:0|t[Kreuzfahrerschädel], die ihr habt
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12724 >>Gebt die Quest Der Pfad des gerechten Kreuzfahrers ab
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thassarian|r upstairs
    .target Thassarian
    .turnin 12727 >>Gebt die Quest Blutiger Ausbruch ab
    .accept 12738 >>Akzeptiert die Quest Schrei nach Rache!
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Knight Rittmeister Plaguefist|r
    >>|cRXP_FRIENDLY_Ritterkommandant Seuchenfaust|r |cRXP_WARN_patrouilliert in der Kapelle|r
    .turnin 12738 >>Gebt die Quest Schrei nach Rache ab!
    .target Knight Commander Plaguefist
    .accept 12748 >>Akzeptiert die Quest Eine besondere Überraschung << Orc
    .accept 12739 >>Akzeptiert die Quest Eine besondere Überraschung << Tauren
    .accept 12742 >>Akzeptiert die Quest Eine besondere Überraschung << Human
    .accept 12743 >>Akzeptiert die Quest Eine besondere Überraschung << NightElf
    .accept 12744 >>Akzeptiert die Quest Eine besondere Überraschung << Dwarf
    .accept 12745 >>Akzeptiert die Quest Eine besondere Überraschung << Gnome
    .accept 12746 >>Akzeptiert die Quest Eine besondere Überraschung << Draenei
    .accept 12747 >>Akzeptiert die Quest Eine besondere Überraschung << BloodElf
    .accept 12749 >>Akzeptiert die Quest Eine besondere Überraschung << Troll
    .accept 12750 >>Akzeptiert die Quest Eine besondere Überraschung << Undead
    .accept 28649 >>Akzeptiert die Quest Eine besondere Überraschung << Worgen
    .accept 28650 >>Akzeptiert die Quest Eine besondere Überraschung << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>Tötet |cRXP_ENEMY_Kug Eisenkiefer|r nach dem kurzen Rollenspiel
    .complete 12748,1 --Kug Ironjaw (1)
    .mob Kug Ironjaw
step << Tauren
    .goto 124,54.505,83.856
	>>Tötet |cRXP_ENEMY_Malar Tapferhorn|r nach dem kurzen Rollenspiel
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob Malar Bravehorn
step << Human
    .goto 124,53.536,83.785
	>>Tötet |cRXP_ENEMY_Ellen Stanbrück|r nach dem kurzen Rollenspiel
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob Ellen Stanbridge
step << NightElf
    .goto 124,54.246,83.908
	>>Tötet |cRXP_ENEMY_Yazmina Eichendorn|r nach dem kurzen Rollenspiel
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob Yazmina Oakenthorn
step << Dwarf
    .goto 124,54.018,83.285
	>>Tötet |cRXP_ENEMY_Donovan Dulfrost|r nach dem kurzen Rollenspiel
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob Donovan Pulfrost
step << Gnome
    .goto 124,53.928,83.803
	>>Tötet |cRXP_ENEMY_Goby Blastenheimer|r nach dem kurzen Rollenspiel
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob Goby Blastenheimer
step << Draenei
    .goto 124,54.538,83.423
	>>Tötet |cRXP_ENEMY_Valok der Gerechte|r nach dem kurzen Rollenspiel
    .complete 12746,1 -- Valok the Righteous (1)
    .mob Valok the Righteous
step << BloodElf
    .goto 124,54.285,83.303
	>>Tötet |cRXP_ENEMY_Lady Eonys|r nach dem kurzen Rollenspiel
    .complete 12747,1 --Lady Eonys (1)
    .mob Lady Eonys
step << Troll
    .goto 124,53.801,83.756
	>>Tötet |cRXP_ENEMY_Iggy Dunkelhauer|r nach dem kurzen Rollenspiel
    .complete 12749,1 --Iggy Darktusk(1)
    .mob Iggy Darktusk
step << Undead
    .goto 124,53.542,83.304
	>>Tötet |cRXP_ENEMY_Antoine Brack|r nach dem kurzen Rollenspiel
    .complete 12750,1 -- Antoine Brack (1)
    .mob Antoine Brack
step << Worgen
    .goto 124,54.144,83.282
	>>Tötet |cRXP_ENEMY_Lord Harford|r nach dem kurzen Rollenspiel
    .complete 28649,1 -- Lord Harford (1)
    .mob Lord Harford
step << Goblin
    .goto 124,54.113,83.753
	>>Tötet |cRXP_ENEMY_Gally Klumpfleck|r nach dem kurzen Rollenspiel
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob Gally Lumpstain
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Knight Rittmeister Plaguefist|r
    >>|cRXP_FRIENDLY_Ritterkommandant Seuchenfaust|r |cRXP_WARN_patrouilliert in der Kapelle|r
    .turnin 12748 >>Gebt die Quest Eine besondere Überraschung ab << Orc
    .turnin 12739 >>Gebt die Quest Eine besondere Überraschung ab << Tauren
    .turnin 12742 >>Gebt die Quest Eine besondere Überraschung ab << Human
    .turnin 12743 >>Gebt die Quest Eine besondere Überraschung ab << Nightelf
    .turnin 12744 >>Gebt die Quest Eine besondere Überraschung ab << Dwarf
    .turnin 12745 >>Gebt die Quest Eine besondere Überraschung ab << Gnome
    .turnin 12746 >>Gebt die Quest Eine besondere Überraschung ab << Draenei
    .turnin 12747 >>Gebt die Quest Eine besondere Überraschung ab << Bloodelf
    .turnin 12749 >>Gebt die Quest Eine besondere Überraschung ab << Troll
    .turnin 12750 >>Gebt die Quest Eine besondere Überraschung ab << Undead
    .turnin 28649 >>Gebt die Quest Eine besondere Überraschung ab << Worgen
    .turnin 28650 >>Gebt die Quest Eine besondere Überraschung ab << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>Akzeptiert die Quest So etwas wie Heimkehr
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >> Kehrt zur Scharlachroten Taverne zurück. Sprecht mit |cRXP_FRIENDLY_Orbaz Blutbann|r und |cRXP_FRIENDLY_Thassarian|r oben
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thassarian|r
    .target Thassarian
    .turnin 12751 >>Gebt die Quest So etwas wie Heimkehr ab
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orbaz Bloodbane|r
    .target Orbaz Bloodbane
    .accept 12754 >>Akzeptiert die Quest Überfall am Rundblick
step
    #completewith ScarletCourier
    .subzone 4360 >> Reist zum Scharlachroten Rundblick
step
    #completewith ScarletCourier
    .cast 53061 >> |cRXP_WARN_Benutzt|r |T136065:0|t[Behelfsmäßige Deckung] |cRXP_WARN_am Scharlachroten Rundblick|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>Tötet die |cRXP_ENEMY_Scarlet Courier|r. Plündert sie für |cRXP_LOOT_Scarlet Courier's Belongings|r und |cRXP_LOOT_Scarlet Courier's Message|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob Scarlet Courier
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Kehrt zur Scharlachroten Taverne zurück. Sprecht mit |cRXP_FRIENDLY_Orbaz Blutbann|r oben
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12754 >>Gebt die Quest Überfall am Rundblick ab
    .accept 12755 >>Akzeptiert die Quest Begegnung mit dem Schicksal
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_High Kriegsherr Abbendis|r
    .target High General Abbendis
    .turnin 12755 >>Gebt die Quest Begegnung mit dem Schicksal ab
    .accept 12756 >>Akzeptiert die Quest Der Scharlachrote Ansturm tritt hervor
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Kehrt zur Scharlachroten Taverne zurück. Sprecht mit |cRXP_FRIENDLY_Orbaz Blutbann|r oben
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orbaz Bloodbane|r upstairs
    .target Orbaz Bloodbane
    .turnin 12756 >>Gebt die Quest Der Scharlachrote Ansturm tritt hervor ab
    .accept 12757 >>Akzeptiert die Quest Die Armeen des Scharlachroten Ansturms rücken näher...
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >> |cRXP_WARN_Geht durch |cRXP_PICK_Portal nach Acherus|r hinter|r |cRXP_FRIENDLY_Orbaz Blutbann|r
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12757 >>Gebt die Quest Die Armeen des Scharlachroten Ansturms rücken näher... ab
    .accept 12778 >>Akzeptiert die Quest Das Ende des Scharlachroten Kreuzzugs
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Amal'thazad|r
    .target Amal'thazad
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Besteigt |cRXP_FRIENDLY_Geißelgreif|r, um zur Todesbresche zu fliegen
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Lichkönig|r
    .target The Lich King
    .turnin 12778 >>Gebt die Quest Das Ende des Scharlachroten Kreuzzugs ab
    .accept 12779 >>Akzeptiert die Quest Alle Dinge müssen ein Ende...
step
	#completewith next
	.use 39700
	.vehicle >> |cRXP_WARN_Benutzt|r |T134228:0|t[Horn der Frostbrut] |cRXP_WARN_zum Aufsteigen auf|r |cRXP_FRIENDLY_Frostbrood-Bezwinger|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_Wirkt|r |T135851:0|t[Gefrorener Todesblitz] (1) |cRXP_WARN_Tötet |cRXP_ENEMY_Scharlachrote Soldaten|r und zerstört|r |cRXP_ENEMY_Scharlachrote Ballisten|r
    >>|cRXP_WARN_Wirkt|r |T136217:0|t[Humanoiden verschlingen] (3) |cRXP_WARN_auf |cRXP_ENEMY_Scharlachroten Kreuzfahrer|r um Gesundheit und Mana wiederherzustellen|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >> Fliegt zum |cRXP_FRIENDLY_Lichkönig|r zurück
step
    #completewith TLKC
    .exitvehicle >> |cRXP_WARN_Verlassen|r |cRXP_FRIENDLY_Frostbrood-Bezwinger|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Lichkönig|r
    .turnin 12779 >>Gebt die Quest Alle Dinge müssen ein Ende... ab
    .target The Lich King
    .accept 12800 >>Akzeptiert die Quest Befehl des Lichkönigs
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >> Reist durch den Giftpass nach Braumanns Mühle
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Scourge Rittmeister Thalanor|r
    .turnin 12800 >>Gebt die Quest Befehl des Lichkönigs ab
    .target Scourge Commander Thalanor
    .accept 12801 >>Akzeptiert die Quest Das Licht der Morgendämmerung
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >> |cRXP_WARN_Sprecht mit |cRXP_FRIENDLY_Hochlord Darion Mograine|r, um das Rollenspiel zu beginnen|r
    >>|cRXP_WARN_Falls er nicht neben |cRXP_FRIENDLY_Geißelkommandant Thalanor|r steht, bedeutet das, dass die Schlacht noch andauert oder in Vorbereitung ist. Die Information hierfür sollte oben auf Eurem Bildschirm sein. Bewegt euch zur Kapelle des Hoffnungsvollen Lichts und wartet das Rollenspiel ab|r
    .skipgossip
    .subzoneskip 2268
    .target Highlord Darion Mograine
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_Wartet das Rollenspiel in der Kapelle des Hoffnungsvollen Lichts ab. Ihr könnt euch zurücklehnen und aus dem Kampf bleiben während der Schlacht|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 12801 >>Gebt die Quest Das Licht der Morgendämmerung ab
    .target Highlord Darion Mograine
    .accept 13165 >>Akzeptiert die Quest Acherus zurückerobern
step
    #optional
    .equip 16,38633 >> |cRXP_WARN_Legt|r |T132480:0|t[|cFF0070FFGroßaxt der Schwarzen Klinge|r] an
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >> |cRXP_WARN_Legt|r |T135335:0|t[|cFF0070FFGroßschwert der Schwarzen Klinge|r] an
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >> |cRXP_WARN_Cast|r |T135766:0|t[Schwarzes Tor]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >> |cRXP_WARN_Geht durch das|r |T135766:0|t[Schwarzes Tor]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 13165 >>Gebt die Quest Acherus zurückerobern ab
    .accept 13166 >>Akzeptiert die Quest Die Schlacht um die Schwarze Festung
    .trainer >> Trainiere deine Klassenfähigkeiten << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >> Tretet auf den lila Teleporter, um zur oberen Ebene zu reisen
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_Graviert Eure neue Waffe mit|r |T136130:0|t[Rune des schwarzen Gletschers] |cRXP_WARN_bei der|r |cRXP_PICK_Runenschmiede|r
step
	#completewith Pwerk
	>>Tötet die |cRXP_ENEMY_Scourge|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>Tötet |cRXP_ENEMY_Patchwerk|r
    .complete 13166,1 --Patchwerk (1)
    .mob Patchwerk
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>Tötet die |cRXP_ENEMY_Scourge|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >> Tretet auf den purpurnen Teleporter, um zur unteren Ebene zu reisen
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 13166 >>Gebt die Quest Die Schlacht um die Schwarze Festung ab
    .target Highlord Darion Mograine
    .accept 13188 >>Akzeptiert die Quest Auf den Spuren der Könige << Alliance
    .accept 13189 >>Akzeptiert die Quest Segen des Kriegshäuptlings << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>Nehmt das Portal nach Orgrimmar
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target Thrall << wotlk/cata
    .target Garrosh Hellscream << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 13189 >>Gebt die Quest Segen des Kriegshäuptlings ab
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >> Nehmt das Portal zu den Verwüsteten Landen
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>Nehmt das Portal nach Sturmwind
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Varian Wrynn|r
    .target King Varian Wrynn
    .turnin 13188 >>Gebt die Quest Auf den Spuren der Könige ab
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >> Nehmt das Portal zu den Verwüsteten Landen im Magierturm
    .zoneskip Stormwind City,1
]])
