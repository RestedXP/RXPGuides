if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP Startet Zone (Pandaren)
#name 1-12 Die Wandernde Insel
#next RXP Kataklysmus 1-80 (A)\10-20 Loch Modan;RXP Kataklysmus 1-80 (H)\10-22 Azshara;RXP MoP 1-80 (A)\10-20 Loch Modan;RXP MoP 1-80 (H)\10-22 Azshara;skip


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .accept 30034 >>Akzeptiert die Quest Die Lektion des Eisenasts << Hunter
    .accept 30027 >>Akzeptiert die Quest Die Lektion des Eisenasts << Priest/Monk
    .accept 30033 >>Akzeptiert die Quest Die Lektion des Eisenasts << Mage
    .accept 30037 >>Akzeptiert die Quest Die Lektion des Eisenasts << Shaman
    .accept 30038 >>Akzeptiert die Quest Die Lektion des Eisenasts << Warrior
    .accept 30036 >>Akzeptiert die Quest Die Lektion des Eisenasts << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>Klickt den |cRXP_PICK_Weapon Rack|r für die |T537025:0|t[Schülerarmbrust] an
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Legt |T537025:0|t[Schülerarmbrust] an
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>Klickt den |cRXP_PICK_Weapon Rack|r für die |T537771:0|t[Schülerzauberklinge] und den |T654237:0|t[Schülerfächer] an
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Legt |T537771:0|t[Schülerzauberklinge] und |T654237:0|t[Schülerfächer] an
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Klickt den|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_für den|r |T537770:0|t[Schülerstab] an
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Legt |T537770:0|t[Schülerstab] an
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Klickt den|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_für die|r |T537205:0|t[Schüleraxt] |cRXP_WARN_und das|r |T537769:0|t[Schülerschild] an
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Legt|r |T537205:0|t[Schüleraxt] |cRXP_WARN_und|r |T537769:0|t[Schülerschild] an
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Klickt den|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_für die|r |T537205:0|t[Schüleraxt] |cRXP_WARN_und das|r |T537769:0|t[Schülerschild] an
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Legt|r |T537205:0|t[Schüleraxt] |cRXP_WARN_und|r |T537769:0|t[Schülerschild] an
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Klickt den|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_für die|r |T537767:0|t[Trainee's Dolche] an
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Legt|r |T537767:0|t[Trainee's Dolche] an
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 30034 >>Gebt die Quest Die Lektion des Eisenasts ab << Hunter
    .turnin 30033 >>Gebt die Quest Die Lektion des Eisenasts ab << Mage
    .turnin 30027 >>Gebt die Quest Die Lektion des Eisenasts ab << Priest/Monk
    .turnin 30037 >>Gebt die Quest Die Lektion des Eisenasts ab << Shaman
    .turnin 30038 >>Gebt die Quest Die Lektion des Eisenasts ab << Warrior
    .turnin 30036 >>Gebt die Quest Die Lektion des Eisenasts ab << Rogue
    .accept 29406 >>Akzeptiert die Quest Die Lektion der Sandfaust
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Tötet |cRXP_ENEMY_Training Targets|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29406 >>Gebt die Quest Die Lektion der Sandfaust ab
    .accept 29524 >>Akzeptiert die Quest Die Lektion des unterdrückten Stolzes
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>BETRETET das Haus
step
    .goto 378,60.26,19.35
    >>Niederlage |cRXP_ENEMY_Sparring Trainees|r
    *|cRXP_WARN_Es gibt mehr da oben|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29524 >>Gebt die Quest Die Lektion des unterdrückten Stolzes ab
    .accept 29408 >>Akzeptiert die Quest Die Lektion der brennenden Schriftrolle
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>Geh nach oben
    >>|cRXP_WARN_Nehmt auf die Abkürzung zum obersten Stockwerk, indem ihr durch die Spalte unter dem zweiten Treppenlauf springt|r
step
    .goto 378,59.95,20.39
    >>Klickt das |cRXP_PICK_Banner|r an der Spitze des Gebäudes an
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >> |cRXP_WARN_Springt hinunter|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29408 >>Gebt die Quest Die Lektion der brennenden Schriftrolle ab
    .accept 29409 >>Akzeptiert die Quest Die Herausforderung des Schülers
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Niederlage |cRXP_ENEMY_Jaomin Ro|r
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +|cRXP_WARN_Benutzt|r |T132337:0|t[Ansturm] |cRXP_WARN_auf Getier, um schneller zu gehen|r
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29409 >>Gebt die Quest Die Herausforderung des Schülers ab
    .accept 29410 >>Akzeptiert die Quest Aysa, Anhängerin der Tushui
	.target Master Shang Xi
step
    #completewith next
    .goto 378,55.09,32.83,50 >>Reisen toward |cRXP_FRIENDLY_Merchant Lorvo|r
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Merchant Lorvo|r
    .turnin 29410 >>Gebt die Quest Aysa, Anhängerin der Tushui ab
    .accept 29419 >>Akzeptiert die Quest Der vermisste Fahrer
    .accept 29424 >>Akzeptiert die Quest Gegenstände von äußerster Wichtigkeit
	.target Merchant Lorvo
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Amberleaf Scamps|r. Plündert sie für |T132622:0|t[|cRXP_LOOT_Stolen Übung Vorräte|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>Reist zu |cRXP_FRIENDLY_Min Dimwind|r
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
    >>Tötet |cRXP_ENEMY_Amberleaf Scamps|r und plündert sie für |T132622:0|t[|cRXP_LOOT_Gestohlene Übung Vorräte|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Merchant Lorvo|r und |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29419,2 >>Gebt die Quest Der vermisste Fahrer ab
    .turnin 29424 >>Gebt die Quest Gegenstände von äußerster Wichtigkeit ab
	.target +Merchant Lorvo
    .goto 378,55.11,32.40
    .accept 29414 >>Akzeptiert die Quest Der Weg der Tushui
    .goto 378,55.10,32.55
	.target +Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >> Betretet die Höhle
	.timer 87,Höhlen Rollenspiel
step
    .goto 378,57.89,36.55
    >>Verteidigt |cRXP_FRIENDLY_Aysa|r vor den ankommenden |cRXP_ENEMY_Amberleaf Troublemakers|r
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29414 >>Gebt die Quest Der Weg der Tushui ab
    .accept 29522 >>Akzeptiert die Quest Ji, Anhänger der Huojin
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29522 >>Gebt die Quest Ji, Anhänger der Huojin ab
    .accept 29417 >>Akzeptiert die Quest Der Weg der Huojin
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
    >>Tötet |cRXP_ENEMY_Fe-Feng|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29417 >>Gebt die Quest Der Weg der Huojin ab
    .accept 29418 >>Akzeptiert die Quest Das Feuer entfachen
    .accept 29523 >>Akzeptiert die Quest Die Flammen schüren
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_Um Tastenbelegung für Questgegenstände zu aktivieren, folgt diesen Schritten:|r
    *[1] Drückt die |cRXP_WARN_Escape key|r.
    *[2] Auswählen |cRXP_WARN_Options|r.
    *[3] Navigiert zu |cRXP_WARN_Keybindings|r.
    *[4] Innerhalb von |cRXP_WARN_Keybindings|r, findet |cRXP_WARN_RestedXP Guides|r.
    *[5] Wählt und bindet die |cRXP_WARN_Active Knöpfchen|r.
step
#optional
    #completewith next
	>>Hebt |cRXP_PICK_Loose Dogwood Borki|r vom Boden neben den Bäumen auf
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>|cRXP_WARN_Benutzt die|r |T519378:0|t[Wind Stein] |cRXP_WARN_am Heiligtum, um einen|r |cRXP_ENEMY_Lebendige Luft|r zu beschwören
    >>Tötet es und plündert |T463565:0|t[|cRXP_LOOT_Flatternde Brise|r]
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
    >>Hebt |cRXP_PICK_Loose Dogwood Borki|r vom Boden neben den Bäumen auf
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r und |cRXP_FRIENDLY_Shang Xi|r
    .turnin 29418 >>Gebt die Quest Das Feuer entfachen ab
    .turnin 29523 >>Gebt die Quest Die Flammen schüren ab
	.target +Ji Firepaw
    .goto 378,50.24,21.26
    .accept 29420 >>Akzeptiert die Quest Der Wächter des Geistes
    .goto 378,50.29,21.47
	.target +Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >> Betretet die Höhle
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Li Fei|r
    >>|cRXP_WARN_Weicht den Feuer-Geysiren unterwegs aus|r
    .turnin 29420 >>Gebt die Quest Der Wächter des Geistes ab
    .accept 29664 >>Akzeptiert die Quest Die Flammen des Herausforderers
	.target Master Li Fei
 step
    >>Klickt auf |cRXP_PICK_Feuerschalen|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Li Fei|r
    .turnin 29664 >>Gebt die Quest Die Flammen des Herausforderers ab
    .accept 29421 >>Akzeptiert die Quest Nur die Würdigen dürfen passieren
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|cRXP_WARN_Besiegt |cRXP_ENEMY_Meister Li Fei|r, indem ihr seine Gesundheit auf 20% reduziert|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Li Fei|r
    .turnin 29421,2 >>Gebt die Quest Nur die Würdigen dürfen passieren ab
    .accept 29422 >>Akzeptiert die Quest Huo, der Geist des Feuers
	.target Master Li Fei
step
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>|cRXP_WARN_Benutzt|r |T133662:0|t[Huo's Offerings] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Huo|r
	.timer 11,Huo, der Geist des Feuers RP
	.use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huo|r
    .turnin 29422 >>Gebt die Quest Huo, der Geist des Feuers ab
    .accept 29423 >>Akzeptiert die Quest Die Passion von Shen-zin Su
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>Verlasst die Höhle
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >> Reist zum |cRXP_WARN_Der Tempel der Fünf Sonnenaufgänge|r
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29423 >>Gebt die Quest Die Passion von Shen-zin Su ab
    .accept 29521 >>Akzeptiert die Quest Die Singenden Teiche
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cheng Dawnscrive|r
    .home >>Setzt euren Ruhestein im Tempel der Fünf Sonnenaufgänge
	.target Cheng Dawnscrive
step
    #completewith SingingPools
    .subzone 5826 >>Reist nach den Singenden Teichen
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2366 >> Erlernen Kräuterkunde
    .target Whittler Dewei
    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2575 >> Erlernen Bergbau
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29662 >>Akzeptiert die Quest Härter als Schilfrohre
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_Bergbau-/Kräuterkunde-Knoten geben 1 Mob-Erfahrung in dieser Erweiterung, denkt daran, nahe gelegene Knoten zu sammeln. Ihr könnt alle Arten von Knoten sammeln, unabhängig von eurem Handwerkslevel|r
step
    #completewith next
    +|cRXP_WARN_In dieser Gegend verwandelt euch Wasser in ein Tier und beschleunigt eure Bewegung|r
step
    #label SingingPools
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29521 >>Gebt die Quest Die Singenden Teiche ab
    .accept 29661 >>Akzeptiert die Quest Die Lektion trockenen Fells
    .accept 29663 >>Akzeptiert die Quest Die Lektion des balancierten Steines
	.target Aysa Cloudsinger
step
    #completewith RingTrainingBell
	>>Besiegt |cRXP_ENEMY_Mönche der Tushui|r auf den Stangen
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >> Klickt auf |cRXP_FRIENDLY_Gleichgewicht Balancierpfahl|r |cRXP_WARN_solange ihr nicht im Wasser seid oder ein Frosch seid|r
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>Klickt auf |cRXP_FRIENDLY_Gleichgewicht Pfähle|r um zum |cRXP_PICK_Übung Glocke|r zu springen
    >>Klickt auf |cRXP_PICK_Übung Glocke|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>Plündert |cRXP_PICK_Hartes Tearwood Röhricht|r vom Boden
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,0
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>Besiegt |cRXP_ENEMY_Mönche der Tushui|r auf den Stangen
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_Verlasst das Fahrzeug|r
    .macro Leave Vehicle,6656430 >>Verlasst Transportmittel
step
    #loop
    .goto 378,62.85,49.06,0
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    >>Plündert |cRXP_PICK_Hartes Tearwood Röhricht|r vom Boden
    *|cRXP_WARN_Wenn ihr am Rand bleibt, greifen euch die |cRXP_ENEMY_Whitefeather Cranes|r nicht an|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29662 >>Gebt die Quest Härter als Schilfrohre ab
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29661 >>Gebt die Quest Die Lektion trockenen Fells ab
    .turnin 29663 >>Gebt die Quest Die Lektion des balancierten Steines ab
    .accept 29676 >>Akzeptiert die Quest Einen alten Freund finden
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_In diesem Gebiet verwandeln violette Wasserbecken euch in ein Tier und erhöhen eure Bewegungsgeschwindigkeit|r
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Old Man Liang|r
    .turnin 29676 >>Gebt die Quest Einen alten Freund finden ab
    .accept 29666 >>Akzeptiert die Quest Eine knifflige Lektion
    .accept 29677 >>Akzeptiert die Quest Die Sonnenperle
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>Tötet |cRXP_ENEMY_Water Zangen|r
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>Klickt |cRXP_PICK_Alte Muschel|r unter Wasser
    >>|cRXP_WARN_Ihr müsst nicht töten|r |cRXP_ENEMY_Fang-she|r
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Old Man Liang|r
    >>|cRXP_WARN_Falls ihr den Questgeber aus irgendeinem Grund nicht finden könnt, geht zurück zu seinem Haus westlich|r
    .turnin 29666 >>Gebt die Quest Eine knifflige Lektion ab
    .turnin 29677 >>Gebt die Quest Die Sonnenperle ab
    .accept 29678 >>Akzeptiert die Quest Shu, der Geist des Wassers
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>Geht auf die glühenden Kreise
    >>|cRXP_WARN_Dies wird euch ermöglichen, zum Teich zu springen|r
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>|cRXP_WARN_Benutzt|r |T463854:0|t[Sonne Pearl] |cRXP_WARN_auf der|r |cRXP_WARN_Wasseroberfläche|r
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Klickt das Quest-Abgabe-Pop-Up in eurem Questtagebuch.
    .turnin 29678 >>Gebt die Quest Shu, der Geist des Wassers ab
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 29679 >>Akzeptiert die Quest Ein neuer Freund
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>Folgt |cRXP_FRIENDLY_Shu|r closely as he moves around
    >>|cRXP_WARN_Bewegen auf dem sprudelnden Wasser neben ihm|r
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29679 >>Gebt die Quest Ein neuer Freund ab
    .accept 29680 >>Akzeptiert die Quest Unsere Lebensgrundlage
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
	>>|cRXP_WARN_Der |cRXP_PICK_Zustellungswagen|r ist langsamer als manuelles Laufen|r
    .turnin 29680 >>Gebt die Quest Unsere Lebensgrundlage ab
    .accept 29769 >>Akzeptiert die Quest Strolche!
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gao Summerdraft|r
    .accept 29770 >>Akzeptiert die Quest Noch essbar
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Tötet |cRXP_ENEMY_Plump Virmens|r
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
    >>Sammelt die Beute |cRXP_PICK_Entwurzelte Rüben|r auf dem Boden
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
    >>Plündert die |cRXP_PICK_Bestohlenen Kürbisse|r auf dem Boden
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >> Betretet die Höhle
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
    >>Tötet |cRXP_ENEMY_Plump Carrotcrunchers|r. Plündert sie für |cRXP_LOOT_Carrots|r
    >>|cRXP_WARN_Ihr könnt auch noch die|r |cRXP_PICK_Karotten|r |cRXP_WARN_auf dem Boden|r
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcruncher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >> Verlasst die Höhle
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
    >>Tötet |cRXP_ENEMY_Plump Virmens|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gao Summerdraft|r, |cRXP_FRIENDLY_Ji Feuerpfötchen|r, und |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29770 >>Gebt die Quest Noch essbar ab
	.target +Gao Summerdraft
    .goto 378,68.13,66.40
    .turnin 29769 >>Gebt die Quest Strolche! ab
    .accept 29768 >>Akzeptiert die Quest Der fehlende Schlägel
	.target +Ji Firepaw
	.goto 378,68.89,64.98
    .accept 29771 >>Akzeptiert die Quest Härter als Holz
	.target +Jojo Ironbrow
    .goto 378,69.16,66.71
step
	#completewith next
	>>Sammelt die Beute |cRXP_PICK_Holzbretter|r auf dem Boden
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Sammelt die Beute |cRXP_PICK_Mallet|r auf dem Fass
    >>|cRXP_WARN_Ihr müsst nicht töten |cRXP_ENEMY_Raggis|r wenn ihr es vermeiden könnt|r
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    #loop
    .goto 378,63.77,77.19,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
	>>Sammelt die Beute |cRXP_PICK_Holzbretter|r auf dem Boden
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r und |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29771 >>Gebt die Quest Härter als Holz ab
    .target +Jojo Ironbrow
    .goto 378,69.16,66.71
    .turnin 29768 >>Gebt die Quest Der fehlende Schlägel ab
    .accept 29772 >>Akzeptiert die Quest Rabatz
    .target +Ji Firepaw
	.goto 378,68.89,64.98
step
    .goto 378,68.95,64.80
    >>Klickt auf |cRXP_PICK_Gong|r
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29772 >>Gebt die Quest Rabatz ab
    .accept 29774 >>Akzeptiert die Quest Nicht ins Gesicht!
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shu|r
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,Rollenspiel
	.target Shu
    .skipgossip
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    .turnin 29774 >>Gebt die Quest Nicht ins Gesicht! ab
    .accept 29775 >>Akzeptiert die Quest Körper und Geist von Shen-zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Reist zum Tempel der Fünf Dämmerungen
	>>|cRXP_WARN_Der |cRXP_PICK_Zustellungswagen|r ist langsamer als manuelles Laufen|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29775 >>Gebt die Quest Körper und Geist von Shen-zin Su ab
    .accept 29776 >>Akzeptiert die Quest Morgenhauch
	.timer 20,Morgenhauch RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Reist nach |cRXP_WARN_Morgenhauch|r
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29776 >>Gebt die Quest Morgenhauch ab
    .accept 29778 >>Akzeptiert die Quest Umgeschriebene Weisheiten
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29783 >>Akzeptiert die Quest Härter als Stein
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Shaopai|r
    .accept 29777 >>Akzeptiert die Quest Die Werkzeuge des Feindes
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shen Stonecarver|r
    .vendor >>|cRXP_WARN_Verkauft und repariert bei Bedarf|r
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Tötet |cRXP_ENEMY_Fe-Feng Wisemans|r. Plündert sie für |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>Plündert die |cRXP_PICK_Steinblöcke|r vom Boden
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
    >>Klickt die |cRXP_PICK_Banner|r auf den Monumenten
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Fe-Feng Wisemans|r. Plündert sie für |cRXP_LOOT_Brushes|r
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
    >>Plündert die |cRXP_PICK_Steinblöcke|r vom Boden
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
    >>Tötet |cRXP_ENEMY_Fe-Feng Wisemans|r. Plündert sie für |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elder Shaopai|r
    .target Elder Shaopai
    .turnin 29777 >>Gebt die Quest Die Werkzeuge des Feindes ab
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r
    .target Jojo Ironbrow
    .turnin 29783 >>Gebt die Quest Härter als Stein ab
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .target Ji Firepaw
    .turnin 29778 >>Gebt die Quest Umgeschriebene Weisheiten ab
    .accept 29779 >>Akzeptiert die Quest Der direkte Weg
    .accept 29780 >>Akzeptiert die Quest Kein Unrecht tun
    .accept 29781 >>Akzeptiert die Quest Für Affen unzugänglich aufbewahren
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >> Reist zur |cRXP_WARN_Jade Säule|r
step
	#completewith RukRuk
	>>Tötet |cRXP_ENEMY_Fe-Feng Ho-zen|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>Klickt die |cRXP_FRIENDLY_Jade Säule|r
    .accept 29782 >>Akzeptiert die Quest Härter als Knochen
step
    #completewith FeFeng
	>>Plündert das |cRXP_PICK_Gestohlene Feuerwerk|r vom Boden
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    #label RukRuk
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Tötet |cRXP_ENEMY_Ruk-Ruk|r
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
    >>Tötet |cRXP_ENEMY_Fe-Feng Ho-zen|r
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
	>>Plündert das |cRXP_PICK_Gestohlene Feuerwerk|r vom Boden
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r, who should be neben euch
    >>|cRXP_WARN_Falls he isn't there, skip this step|r
    .turnin 29779 >>Gebt die Quest Der direkte Weg ab
    .turnin 29780 >>Gebt die Quest Kein Unrecht tun ab
    .turnin 29781 >>Gebt die Quest Für Affen unzugänglich aufbewahren ab
    .accept 29784 >>Akzeptiert die Quest Im Gleichgewicht
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29782 >>Gebt die Quest Härter als Knochen ab
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 29779 >>Gebt die Quest Der direkte Weg ab
    .turnin 29780 >>Gebt die Quest Kein Unrecht tun ab
    .turnin 29781 >>Gebt die Quest Für Affen unzugänglich aufbewahren ab
    .accept 29784 >>Akzeptiert die Quest Im Gleichgewicht
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Vorsichtig|r lauft über das Seil
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29784 >>Gebt die Quest Im Gleichgewicht ab
    .accept 29785 >>Akzeptiert die Quest Dafeng, der Geist des Windes
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Reist zur |cRXP_WARN_Kammer des Raunens|r
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >> Lauft zwischen die Treppen, nachdem der Wind zum ersten Mal nachlässt
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >> Lauft zu |cRXP_FRIENDLY_Dafeng|r, nachdem der Wind im nächsten Raum nachlässt
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dafeng|r und |cRXP_FRIENDLY_Aysa|r
    .turnin 29785 >>Gebt die Quest Dafeng, der Geist des Windes ab
	.target +Dafeng
    .goto 378,24.65,69.80
    .accept 29786 >>Akzeptiert die Quest Schlacht um den Himmel
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
	>>Klickt die |cRXP_PICK_Feuerwerk-Werfer|r auf dem Boden, wenn |cRXP_ENEMY_Zhao-Ren|r über ihnen fliegt, um ihn zu schaden
    >>Er kreist gegen den Uhrzeigersinn. |cRXP_WARN_Weicht seinen Blitzschlag-Pfützen aus|r. Greift ihn an, wenn er landet. Tötet ihn, wenn er zum zweiten Mal landet.
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29786 >>Gebt die Quest Schlacht um den Himmel ab
    .accept 29787 >>Akzeptiert die Quest Beweis der Würdigkeit
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Reist zum |cRXP_WARN_Pfad der Ältesten|r
step
    .goto 378,22.70,52.80
	>>Tötet den |cRXP_ENEMY_Wächter der Ältesten|r
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Beweis der Würdigkeit RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
	>>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    .turnin 29787 >>Gebt die Quest Beweis der Würdigkeit ab
    .accept 29788 >>Akzeptiert die Quest Unschöne Natur
    .accept 29789 >>Akzeptiert die Quest Klein, aber wichtig
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
	>>Tötet |cRXP_ENEMY_Thornbranch Scamps|r
    >>Plündert die |cRXP_PICK_Amulette|r von den Bäumen
    .complete 29788,1 --8/8 Thornbranch Scamp slain
	.mob +Thornbranch Scamp
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29788 >>Gebt die Quest Unschöne Natur ab
    .turnin 29789 >>Gebt die Quest Klein, aber wichtig ab
    .accept 29790 >>Nehmt die Quest Weisheit weitergeben an
	.timer 83,Passing Weisheit RP
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>Wartet auf das Ende des Rollenspiels am Ort
    >>|cRXP_WARN_Wenn ihr daran vorbeigeht, wird |cRXP_FRIENDLY_Shang Xi|r despawnen. Falls das passiert, brecht die Quest ab und startet das Rollenspiel erneut|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29790 >>Gebt die Quest Weisheit weitergeben ab
    .accept 29791 >>Akzeptiert die Quest Das Leiden von Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Klickt |cRXP_PICK_Luftballon|r um an Bord zu gehen
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,Das Leiden von Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>Warte auf das RP
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaopai|r
    .turnin 29791 >>Gebt die Quest Das Leiden von Shen-zin Su ab
    .accept 29792 >>Akzeptiert die Quest Zu Großem berufen
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Reist |cRXP_WARN_zum Pei-Wu Tor|r
	.timer 28,Pei-Wu Tor RP
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00Folgt den Pfeil|r. Wartet auf das Ende des Rollenspiels
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wei|r und |cRXP_FRIENDLY_Korga|r
    .turnin 29792 >>Gebt die Quest Zu Großem berufen ab
    .accept 30591 >>Akzeptiert die Quest Die Raubtiere zur Beute machen
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .accept 29795 >>Akzeptiert die Quest Rohre raffen
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
    >>Tötet |cRXP_ENEMY_Pei-Wu Tigers|r
    >>Sammelt |cRXP_PICK_Bambusstängel|r auf dem Boden
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
	.mob +Pei-Wu Tiger
    .complete 29795,1 --10/10 Broken Bamboo Stalk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wei|r und |cRXP_FRIENDLY_Korga|r
    .turnin 30591 >>Gebt die Quest Die Raubtiere zur Beute machen ab
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .turnin 29795 >>Gebt die Quest Rohre raffen ab
    .accept 30589 >>Akzeptiert die Quest Das Wrack abwracken
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Makael|r und |cRXP_FRIENDLY_Ji|r
    .turnin 30589 >>Gebt die Quest Das Wrack abwracken ab
    .accept 30590 >>Ganz. Vorsichtig. annehmen
	.target +Makael Bay
    .goto 378,36.32,72.36
    .accept 29793 >>Akzeptiert die Quest Das Böse aus dem Meer
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    #loop
    .goto 378,36.06,76.73,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    >>Tötet |cRXP_ENEMY_Darkened Horrors|r und |cRXP_ENEMY_Darkened Terrors|r
	>>Sammelt |cRXP_PICK_Explosions-Bündel|r auf dem Boden
    >>|cRXP_WARN_Be careful of the Horrors' Schatten Geysire|r
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
	.mob +Darkened Horror
	.mob +Darkened Terror
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Makael Bay|r und |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 30590 >>Gebt die Quest Vorsichtig behandeln ab
	.target +Makael Bay
    .goto 378,36.32,72.36
    .turnin 29793 >>Gebt die Quest Das Böse aus dem Meer ab
    .accept 29796 >>Akzeptiert die Quest Dringende Neuigkeiten
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delora Löwenherz|r und |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29796 >>Gebt die Quest Dringende Neuigkeiten ab
    .accept 29794 >>Akzeptiert die Quest Keiner wird zurückgelassen
    .accept 29797 >>Akzeptiert die Quest Medizinische Versorgungsgüter
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .accept 29665 >>Akzeptiert die Quest Vom Regen in die Traufe
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>Tragt den |cRXP_FRIENDLY_Verletzter Matrose|r zum |cRXP_FRIENDLY_Delora|r Lager zurück
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>Hebt an |cRXP_FRIENDLY_Injured Sailor|r auf dem Boden auf
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>Tragt den |cRXP_FRIENDLY_Verletzter Matrose|r zum |cRXP_FRIENDLY_Delora|r Lager zurück
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>Tragt den |cRXP_FRIENDLY_Verletzter Matrose|r zum |cRXP_FRIENDLY_Delora|r Lager zurück
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>Hebt den |cRXP_FRIENDLY_Verletzter Matrose|r auf
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>Tragt den |cRXP_FRIENDLY_Verletzter Matrose|r zum |cRXP_FRIENDLY_Delora|r Lager zurück
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorB
    >>Tötet |cRXP_ENEMY_Deepscale Tormentors|r
    >>Sammelt die |cRXP_PICK_Medizinische Kisten|r auf dem Boden
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
    >>Hebt einen |cRXP_FRIENDLY_Verletzter Matrose|r auf dem Boden auf und bringt ihn zum Lager von |cRXP_FRIENDLY_Delora Löwenherz|r
    >>|cRXP_WARN_Macht das mindestens zweimal|r
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
    >>Tötet |cRXP_ENEMY_Deepscale Tormentors|r
    >>Sammelt die |cRXP_PICK_Medizinische Kisten|r auf dem Boden
	>>|cRXP_WARN_Nicht pick up a new |cRXP_FRIENDLY_Injured Sailor|r yet|r
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
	.cast 56685 >>Hebt an |cRXP_FRIENDLY_Injured Sailor|r auf
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>Tragt den |cRXP_FRIENDLY_Verletzter Matrose|r zum |cRXP_FRIENDLY_Delora Löwenherz|r Lager zurück
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delora Löwenherz|r und |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29794 >>Gebt die Quest Keiner wird zurückgelassen ab
    .turnin 29797 >>Gebt die Quest Medizinische Versorgungsgüter ab
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .turnin 29665 >>Gebt die Quest Vom Regen in die Traufe ab
    .accept 29798 >>Akzeptiert die Quest Ein uraltes Übel
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step
    .goto 378,36.50,84.23
    >>Tötet |cRXP_ENEMY_Vordraka, der Tiefensee-Alptraum|r
    *|cRXP_WARN_Weicht seiner Tiefseeschmetterei aus|r
    *|cRXP_WARN_Tötet |cRXP_ENEMY_Deepscale-Aggressoren|r wenn sie erscheinen|r
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29798 >>Gebt die Quest Ein uraltes Übel ab
    .accept 30767 >>Akzeptiert die Quest Alles riskieren
    .timer 77,Risking It Alle RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Wartet auf das Ende des Rollenspiels
    >>|cRXP_WARN_Nehmt euch eine Pause auf, wenn ihr es möchtet|r
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 30767 >>Gebt die Quest Alles riskieren ab
    .accept 29799 >>Akzeptiert die Quest Die Heilung von Shen-zin Su
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
    >>Klickt auf die |cRXP_PICK_Lockere Wracks|r und helft den |cRXP_FRIENDLY_Allianz-Priestern|r und den |cRXP_FRIENDLY_Horde-Druiden|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alliance Priests|r und |cRXP_FRIENDLY_Horde Druids|r
    *|cRXP_WARN_Tötet die |cRXP_ENEMY_Dampscale-Fleischreißer|r, wenn sie angreifen|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r.
    .turnin 29799 >>Gebt die Quest Die Heilung von Shen-zin Su ab
	.timer 18,Die Heilung von Shen-zin Su RP
	.target Ji Firepaw
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    >>Warte auf das RP
    .goto 378,38.77,86.32
    .accept 29800 >>Akzeptiert die Quest Neue Verbündete
	.target Ji Firepaw
step
    #completewith next
    .hs >> Benutzt euren Ruhestein nach dem |cRXP_WARN_Tempel der Fünf Sonnenaufgänge|r
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Spirit of Shang Xi|r und wählt eure Fraktion
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .turnin 29800 >>Gebt die Quest Neue Verbündete ab
    .accept 31450 >>Akzeptiert die Quest Ein neues Schicksal
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ji Feuerpfötchen|r
    .turnin 31450 >>Gebt die Quest Ein neues Schicksal ab
    .accept 31012 >>Akzeptiert die Quest Beitritt zur Horde
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 31450 >>Gebt die Quest Ein neues Schicksal ab
	.accept 30987 >>Akzeptiert die Quest Beitritt zur Allianz
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Varian Wrynn|r
	.turnin 30987 >>Gebt die Quest Beitritt zur Allianz ab
	.target King Varian Wrynn
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >> Betretet Die Feste Grommash
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garrosh Höllschrei|r
    .turnin 31012 >> Gebt die Quest Beitritt zur Horde ab
    .target Garrosh Hellscream
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+Glückwunsch, Ihr habt gerade das Pandaren-Startgebiet abgeschlossen. Bitte klickt auf die Zahnrad-Schaltfläche unter dem RXP-Fenster und wählt das passende Folge-Guide.
]])
