if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Mulgore
#next 6-10 Mulgore
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Tauren
    #completewith next
    +|cRXP_WARN_Ihr habt einen Leitfaden ausgewählt, der für Tauren bestimmt ist. Wir empfehlen dieses Gebiet nicht, da es rassenspezifische Quests für Tauren gibt. Es wird empfohlen, die gleiche Startzone zu wählen, mit der ihr beginnt|r
step
    .goto 7,45.15,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hawkwind|r
    .accept 14449 >>Akzeptiert die Quest Der erste Schritt
    .target Chief Hawkwind
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .turnin 14449 >>Gebt die Quest Der erste Schritt ab
    .accept 14452 >>Akzeptiert die Quest Ritus der Kraft
    .target Grull Hawkwind
step
    .goto 7,49.20,78.98,30,0
    .goto 7,49.56,78.24,30,0
    .goto 7,49.33,77.59,30,0
    .goto 7,50.23,78.31,30,0
    .goto 7,50.92,78.32,30,0
    .goto 7,50.31,77.25,30,0
    .goto 7,49.56,78.24
    >>Tötet |cRXP_ENEMY_Bristleback Invaders|r
    .complete 14452,1 --Bristleback Invaders (6)
    .mob Bristleback Invader
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .turnin 14452 >>Gebt die Quest Ritus der Kraft ab
    .accept 24852 >>Akzeptiert die Quest Unser Stamm in Gefangenschaft
    .target Grull Hawkwind
step
    .goto 7,52.06,80.48,30,0
    .goto 7,52.15,79.93,30,0
    .goto 7,52.06,78.28,30,0
    .goto 7,52.17,77.75,30,0
    .goto 7,52.21,76.72,30,0
    .goto 7,52.57,74.81,30,0
    .goto 7,50.89,82.37,30,0
    .goto 7,50.67,83.12,30,0
    .goto 7,52.06,80.48
    >>Klickt auf |cRXP_PICK_Käfige|r um |cRXP_FRIENDLY_Gefangen Braves|r zu befreien
    .complete 24852,1 --Braves Freed (4)
    .target Captured Brave
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .turnin 24852 >>Gebt die Quest Unser Stamm in Gefangenschaft ab
    .accept 14458 >>Akzeptiert die Quest Sucht Adana auf
    .target Grull Hawkwind
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adana|r
    .turnin 14458 >>Gebt die Quest Sucht Adana auf ab
    .accept 14455 >>Akzeptiert die Quest Haltet die Dornenrufer auf
    .accept 14456 >>Akzeptiert die Quest Ritus des Muts
    .target Adana Thunderhorn
step
    #loop
    .goto 7,46.72,87.92,0
    .goto 7,47.05,87.38,30,0
    .goto 7,46.72,87.92,30,0
    .goto 7,46.45,88.75,30,0
    .goto 7,47.33,89.49,30,0
    .goto 7,47.90,89.03,30,0
    .goto 7,47.90,88.05,30,0
    >>Tötet |cRXP_ENEMY_Bristleback Gun Thiefs|r. Plündert sie für |cRXP_LOOT_Rifles|r
    >>Tötet |cRXP_ENEMY_Bristleback Thorncallers|r
    .complete 14456,1 --Stolen Rifle (7)
    .mob +Bristleback Gun Thiefs
    .complete 14455,1 --Bristleback Thorncaller (7)
    .mob +Bristleback Thorncaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adana|r und |cRXP_FRIENDLY_Rohaku|r
    .turnin 14456 >>Gebt die Quest Ritus des Muts ab
    .turnin 14455 >>Gebt die Quest Haltet die Dornenrufer auf ab
    .accept 14459 >>Akzeptiert die Quest Die Kampfeber
    .accept 14461 >>Akzeptiert die Quest Futter des Bösen
    .goto 7,46.18,82.61
    .accept 31165 >>Akzeptiert die Quest Kalligrafienotiz << Monk
    .accept 3092 >>Akzeptiert die Quest Geätzte Notiz << Hunter
    .accept 3091 >>Akzeptiert die Quest Einfache Notiz << Warrior
    .accept 27015 >>Akzeptiert die Quest Geweihte Notiz << Paladin
    .accept 3094 >>Akzeptiert die Quest Tiefgrüne Notiz << Druid
    .accept 3093 >>Akzeptiert die Quest Mit Runen beschriftete Notiz << Shaman
    .accept 27014 >>Akzeptiert die Quest Geheiligte Notiz << Priest
    .goto 7,46.15,82.32
    .target Adana Thunderhorn
    .target Rohaku Stonehoof
step
    #completewith ThirdTrough
    >>Tötet |cRXP_ENEMY_Armored Junger Kampfeber|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,44.70,87.82
    >>|cRXP_WARN_Benutzt|r |T135432:0|t[Adanas Fackel] |cRXP_WARN_neben der ersten Tränke|r
    .complete 14461,1 --First Trough (1)
    .use 49539
step
    .goto 7,44.32,88.71
    >>|cRXP_WARN_Benutzt|r |T135432:0|t[Adanas Fackel] |cRXP_WARN_neben der zweiten Tränke|r
    .complete 14461,2 --Second Trough (1)
    .use 49539
step
    #label ThirdTrough
    .goto 1412/1,-265.00000,-3405.80005
    >>|cRXP_WARN_Benutzt|r |T135432:0|t[Adanas Fackel] |cRXP_WARN_neben der dritten Tränke|r
    .complete 14461,3 --Third Trough (1)
    .use 49539
step
#loop
	.line 7,45.73,88.52,44.76,89.60,44.23,88.74,44.22,87.98,44.72,87.69,45.20,87.83,45.73,88
	.goto 7,45.73,88.52,30,0
	.goto 7,44.76,89.60,30,0
	.goto 7,44.23,88.74,30,0
	.goto 7,44.22,87.98,30,0
	.goto 7,44.72,87.69,30,0
	.goto 7,45.20,87.83,30,0
	.goto 7,45.73,88.00,30,0
    >>Tötet |cRXP_ENEMY_Armored Junger Kampfeber|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adana|r
    .turnin 14459 >>Gebt die Quest Die Kampfeber ab
    .turnin 14461 >>Gebt die Quest Futter des Bösen ab
    .accept 14460 >>Akzeptiert die Quest Ritus der Ehre
    .target Adana Thunderhorn
step
    .goto 7,41.08,81.42
    >>Tötet |cRXP_ENEMY_Chief Squealer Thornmantle|r. Plündert sie für |cRXP_LOOT_Mane|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Camp Narache
    .cooldown item,6948,>0
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hawkwind|r
    .turnin 14460 >>Gebt die Quest Ritus der Ehre ab
    .accept 24861 >>Akzeptiert die Quest Riten zum Ende, Riten zum Beginn
    .target Chief Hawkwind
step
    .goto 7,45.11,75.39
    >>|cRXP_WARN_Benutzt|r |T132813:0|t[Wasserkrug]
    .complete 24861,1 --Offering Placed (1)
    .use 50465
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hawkwind|r
    .turnin 24861 >>Gebt die Quest Riten zum Ende, Riten zum Beginn ab
    .accept 23733 >>Akzeptiert die Quest Riten der Erdenmutter
    .target Chief Hawkwind
step << Monk
    .goto 462/1,-260.800,-2910.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoyu|r
    .turnin 31165 >>Gebt die Quest Kalligrafienotiz ab
    .accept 31166 >>Akzeptiert die Quest Tigerpfote
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .accept 27021 >>Akzeptiert die Quest Der Weg des Jägers
    .train 56641 >> Erlernen |T132213:0|t[Zuverlässiger Schuss] << Cata
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .accept 27020 >>Akzeptiert die Quest Die erste Lektion
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff] << Cata
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helaku|r
    .turnin 27015 >>Gebt die Quest Geweihte Notiz ab
    .accept 27023 >>Akzeptiert die Quest Der Weg des Sonnenwandlers
    .train 20271 >>Erlernt |T135959:0|t[Richturteil] << Cata
    .train 20154 >>Erlernen |T135960:0|t[Siegel der Rechtschaffenheit] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .accept 27067 >>Akzeptiert Verjüngende Berührung
    .train 774 >>Erlernen |T136081:0|t[Verjüngung] << Cata
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .accept 27067 >>Akzeptiert die Quest Mondfeuer
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Gebt die Quest Mit Runen beschriftete Notiz ab
    .accept 27027 >>Akzeptiert die Quest Urtümlicher Schlag
    .train 73899 >>Erlernen |T460956:0|t[Urtümlicher Schlag] << Cata
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Gebt die Quest Geheiligte Notiz ab
    .accept 27066 >>Akzeptiert die Quest Heilung in einem Blitz
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << Cata
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Gebt die Quest Geheiligte Notiz ab
    .accept 27066 >>Akzeptiert die Quest Das Wort lernen
    .target Seer Ravenfeather
step << Monk
    .goto 7,45.43,75.39
	>>Cast |T606551:0|t[Tigerklaue] on a |cRXP_ENEMY_Training Attrappe|r
    .complete 31166,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Hunter
    .goto 7,45.43,75.39
	>>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 27021,2 << !Cata --Steady Shot (x3)
	.complete 27021,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Warrior
    .goto 7,45.43,75.39
	>>Cast |T132337:0|t[Ansturm] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 27020,2 << !Cata --Cast Charge (x3)
	.complete 27020,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Paladin cata
    .goto 7,45.43,75.39
	>>Cast |T135959:0|t[Richturteil] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 27023,1 --Cast Judgement (x3)
	.mob Training Dummy
step << Paladin !cata
    .goto 7,45.43,75.39
	>>Cast |T135961:0|t[Siegel des Befehls], then attack a |cRXP_ENEMY_Training Attrappe|r
	.complete 27023,2
    .mob Training Dummy
step << Druid cata
    .goto 7,45.65,75.35
	>>Cast |T136081:0|t[Verjüngung] on a |cRXP_FRIENDLY_Wounded Brave|r
	.complete 27067,1 << Cata --Cast Rejuvenation (x1)
	.target Wounded Brave
step << Druid !cata
    .goto 7,45.43,75.39
	>>Cast |T136096:0|t[Mondfeuer] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 27067,2 --Cast Moonfire
	.mob Training Dummy
step << Shaman
    .goto 7,45.43,75.39
	>>Cast |T460956:0|t[Urtümlicher Schlag] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 27027,2 << !Cata --Cast Primal Strike (x3)
	.complete 27027,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Priest
    .goto 7,45.65,75.35
	>>Cast |T135907:0|t[Blitzheilung] on a |cRXP_FRIENDLY_Wounded Brave|r
	.complete 27066,2 << !Cata --Cast Flash Heal (x5)
	.complete 27066,1 << Cata --Cast Flash Heal (x5)
	.target Wounded Brave
step << Monk
    .goto 462/1,-261.100,-2910.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoyu|r
    .turnin 31166 >>Gebt die Quest Tigerpfote ab
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 27021 >>Gebt die Quest Der Weg des Jägers ab
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 27020 >>Gebt die Quest Die erste Lektion ab
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helaku|r
    .turnin 27023 >>Gebt die Quest Der Weg des Sonnenwandlers ab
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Gebt die Quest Verjüngende Berührung ab
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Gebt die Quest Mondfeuer ab
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 27027 >>Gebt die Quest Urtümlicher Schlag ab
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Gebt die Quest Blitzheilung ab
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Gebt die Quest Das Wort lernen ab
    .target Seer Ravenfeather
step
    #completewith next
    .goto 1412/1,-114.60000,-2976.90015,12,0
    .goto 1412/1,-48.40000,-2907.10010,12,0
    .goto 1412/1,7.20000,-2900.60010,12,0
    .goto 1412/1,-42.80000,-2933.50000,30 >>Folgt dem Pfad zum Gipfel des Berges
step
    .goto 1412/1,-42.80000,-2933.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dyami|r
    .turnin 23733 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 24215 >>Akzeptiert die Quest Ritus des Winde
    .target Dyami Windsoar
step
    #completewith next
    .goto 7,41.27,75.22,15,0
    .goto 7,41.36,74.10,15,0
    .deathskip >>Folgt dem Pfeil, indem ihr vom Berg springt. Sterbt und erscheint erneut beim |cRXP_FRIENDLY_Geistheiler|r
step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Mulgore
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <6,1
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Varg|r
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .vendor >> Verkauft trash und repariert << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn es euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 66c) gibt. Ihr kommt später zurück, wenn ihr noch nicht genug habt.
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r
    >>|cFF0E8312Buy a|r |T133053:0|t[Hölzerner Schlaghammer] |cFF0E8312from him|r
    .collect 2493,1,14438,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft Handelsmüll. Verkauft eure Waffe, wenn sie euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (3s 93c) bringt. Ihr werdet später zurückkehren, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Sprecht mit|r |cRXP_FRIENDLY_Kennah|r
    >>|cFF0E8312Buy a|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cFF0E8312from him|r
    .collect 2509,1,14438,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith PalemaneGnolls
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] an
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith PalemaneGnolls
    +Legt die |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak|r
    .turnin 6361 >>Gebt die Quest Ein Bündel Bälge ab
    .accept 6362 >>Akzeptiert die Quest Flug nach Thunder Bluff
    .target Tak
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .vendor >>|cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T133968:0|t[Frisch gebackenes Brot] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Kauft bis zu 20|r |T133968:0|t[Frisch gebackenes Brot] << Warrior/Hunter
    .target Innkeeper Kauth
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahmo|r
    .turnin 24215 >>Gebt die Quest Ritus des Winde ab
    .accept 14438 >>Akzeptiert die Quest Gemeinsame Nutzung des Landes
    .target Ahmo Thunderhorn
step
    .goto 7,48.77,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target Harken Windtotem
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarl|r
    .train 8042 >> Trainiere deine Klassenfähigkeiten
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alsoomse|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8921 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iopi|r
    .train 465 >> Trainiere deine Klassenfähigkeiten
    .target Sunwalker Iopi
step
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .accept 20440 >>Akzeptiert die Quest Vergiftetes Wasser
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 34428 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
step
    #completewith WCleansing1
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Wolfs|r. Plündert sie für |cRXP_LOOT_Paws|r
    >>Tötet |cRXP_ENEMY_Plainstriders|r. Plündert sie für |cRXP_LOOT_Talons|r und |T134343:0|t[|cRXP_LOOT_Tender Strider Fleisch|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #label PalemaneGnolls
#loop
	.line 7,47.96,69.82,47.20,70.68,47.71,71.57,48.37,71.84,48.83,72.00,49.84,70.48,49.24,70.24,48.87,69.80,47.96,69.82
	.goto 7,47.96,69.82,30,0
	.goto 7,47.20,70.68,30,0
	.goto 7,47.71,71.57,30,0
	.goto 7,48.37,71.84,30,0
	.goto 7,48.83,72.00,30,0
	.goto 7,49.84,70.48,30,0
	.goto 7,49.24,70.24,30,0
	.goto 7,48.87,69.80,30,0
	.goto 7,47.96,69.82,30,0
#loop
	.line 7,51.94,69.95,52.07,70.98,52.52,71.73,52.92,72.36,53.62,72.44,53.84,72.04,54.25,72.15,55.07,72.12,55.52,71.26,55.22,70.65,54.55,70.22,53.92,70.07,53.15,69.85,52.58,70.17,51.94,69
	.goto 7,51.94,69.95,30,0
	.goto 7,52.07,70.98,30,0
	.goto 7,52.52,71.73,30,0
	.goto 7,52.92,72.36,30,0
	.goto 7,53.62,72.44,30,0
	.goto 7,53.84,72.04,30,0
	.goto 7,54.25,72.15,30,0
	.goto 7,55.07,72.12,30,0
	.goto 7,55.52,71.26,30,0
	.goto 7,55.22,70.65,30,0
	.goto 7,54.55,70.22,30,0
	.goto 7,53.92,70.07,30,0
	.goto 7,53.15,69.85,30,0
	.goto 7,52.58,70.17,30,0
	.goto 7,51.94,69.00,30,0
    >>Tötet |cRXP_ENEMY_Palemane Skinners|r, |cRXP_ENEMY_Palemane Poachers|r und |cRXP_ENEMY_Palemane Tanners|r
    .complete 14438,1 --Palemane Gnolls (15)
    .mob Palemane Skinner
    .mob Palemane Poacher
    .mob Palemane Tanner
step
    #loop
    .goto 7,48.25,67.61,0
    .goto 7,50.61,68.08,40,0
    .goto 7,50.23,66.00,40,0
    .goto 7,51.06,64.06,40,0
    .goto 7,52.38,63.49,40,0
    .goto 7,52.98,62.11,40,0
    .goto 7,54.02,61.22,40,0
    .goto 7,55.23,62.26,40,0
    .goto 7,56.63,62.25,40,0
    .goto 7,56.75,64.83,40,0
    .goto 7,56.06,67.30,40,0
    .goto 7,48.25,67.61,40,0
    >>Tötet |cRXP_ENEMY_Wolfs|r. Plündert sie für |cRXP_LOOT_Paws|r
    >>Tötet |cRXP_ENEMY_Plainstriders|r. Plündert sie für |cRXP_LOOT_Talons|r und |T134343:0|t[|cRXP_LOOT_Tender Strider Fleisch|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #completewith AcceptDangers
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt den |T134343:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r] um ihn zu füttern
    >>|cRXP_WARN_Er läuft in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label WCleansing1
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 20440 >>Gebt die Quest Vergiftetes Wasser ab
    .accept 24440 >>Akzeptiert die Quest Säuberung von Winterhoof
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahmo|r
    .turnin 14438 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .accept 14491 >>Akzeptiert die Quest Ruhelose Erde
    .accept 24459 >>Akzeptiert die Quest Morin Wolkenpirscher
    .target Maur Raincaller
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Handelsmüll. Verkauft eure Waffe, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (6s 65c) bringt. Ihr werdet später zurückkehren, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cFF0E8312. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cFF0E8312von ihm|r
    .collect 2493,1,24440,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft Handelsmüll. Verkauft eure Waffe, wenn sie euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (3s 93c) bringt. Ihr werdet später zurückkehren, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cFF0E8312. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cFF0E8312von ihm|r
    .collect 2509,1,24440,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith WinterhoofWell
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] an
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith WinterhoofWell
    +Legt die |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    #label AcceptDangers
    .goto 1412/1,-384.80002,-2397.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label WinterhoofWell
    .goto 7,53.46,65.34
    >>|cRXP_WARN_Benutzt die|r |T135139:0|t[Winterhufsäuberung Totem] |cRXP_WARN_neben dem Brunnen|r
    .use 5411
    .complete 24440,1 --Well Cleansed (1)
step
    #completewith next
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt den |T134343:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r] um ihn zu füttern
    >>|cRXP_WARN_Er läuft in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 24440 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 24441 >>Akzeptiert die Quest Thunderhorn-Totem
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Trainiere deine Klassenfähigkeiten
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Trainiere deine Klassenfähigkeiten
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Trainiere deine Klassenfähigkeiten
    .target Sunwalker Iopi
    .xp <7,1
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .vendor >>|cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T133968:0|t[Frisch gebackenes Brot] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Kauft bis zu 20|r |T133968:0|t[Frisch gebackenes Brot] << Warrior/Hunter
    .itemcount 1179,<20 << !Warrior !Hunter
    .itemcount 4541,<20
    .target Innkeeper Kauth
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    .turnin 24459 >>Gebt die Quest Morin Wolkenpirscher ab
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
    .target Morin Cloudstalker
step
    #completewith VentureCoCave
    >>Tötet |cRXP_ENEMY_Prairie Stalkers|r. Plündert sie für |cRXP_LOOT_Claws|r
    >>Tötet |cRXP_ENEMY_Flatland Cougars|r. Plündert sie für |cRXP_LOOT_Claws|r und a |cRXP_LOOT_Flatland Cougar Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith VentureCoCave
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    .goto 7,53.52,48.29
    >>Hebt |cRXP_PICK_Sealed Vorratskiste|r auf
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    .turnin 751 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 26179 >>Akzeptiert die Quest Die Venture Company
    .accept 26180 >>Akzeptiert die Quest Vorsteher Fizsprocket
    .target Morin Cloudstalker
step
    #label VentureCoCave
    #completewith FizsprocketKill
    .goto 7,60.86,47.47,10 >> Betretet die Höhle
step
    #completewith FizsprocketKill
    >>Tötet |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #label FizsprocketKill
    .goto 7,61.21,46.29
    >>Tötet |cRXP_ENEMY_Fizsprocket|r. Plündert sie für |cRXP_LOOT_Clipboard|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step
    #loop
    .goto 7,59.30,48.85,0
    .goto 7,62.21,45.13,20,0
    .goto 7,61.81,44.74,20,0
    .goto 7,61.29,43.64,20,0
    .goto 7,60.73,48.13,40,0
    .goto 7,60.47,49.63,40,0
    .goto 7,59.30,48.85,40,0
    >>Tötet |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #completewith FizsprocketTurnin
    >>Tötet |cRXP_ENEMY_Prairie Stalkers|r. Plündert sie für |cRXP_LOOT_Claws|r
    >>Tötet |cRXP_ENEMY_Flatland Cougars|r. Plündert sie für |cRXP_LOOT_Claws|r und a |cRXP_LOOT_Flatland Cougar Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith FizsprocketTurnin
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label FizsprocketTurnin
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    .turnin 26179 >>Gebt die Quest Die Venture Company ab
    .turnin 26180 >>Gebt die Quest Vorsteher Fizsprocket ab
    .target Morin Cloudstalker
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #loop
    .goto 7,56.14,57.59,0
    .goto 7,57.94,60.08,40,0
    .goto 7,58.60,58.93,40,0
    .goto 7,59.73,57.46,40,0
    .goto 7,60.31,56.44,40,0
    .goto 7,61.03,55.56,40,0
    .goto 7,59.21,54.50,40,0
    .goto 7,58.44,53.38,40,0
    .goto 7,57.87,50.87,40,0
    .goto 7,57.23,50.07,40,0
    .goto 7,56.00,51.41,40,0
    .goto 7,55.66,53.73,40,0
    .goto 7,55.60,55.55,40,0
    .goto 7,56.14,57.59,40,0
    >>Tötet |cRXP_ENEMY_Prairie Stalkers|r. Plündert sie für |cRXP_LOOT_claws|r
    >>Tötet |cRXP_ENEMY_Flatland Cougars|r. Sammelt |cRXP_LOOT_claws|r und |cRXP_LOOT_Femur|r als Beute
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #loop
    .goto 7,54.70,67.69,0
    .goto 7,54.11,62.03,40,0
    .goto 7,51.77,66.37,40,0
    .goto 7,51.06,67.33,40,0
    .goto 7,50.01,68.11,40,0
    .goto 7,54.70,67.69,40,0
    >>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #xprate <1.2
    #completewith ThunderHornTotem
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt den |T134343:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r] um ihn zu füttern
    >>|cRXP_WARN_Er läuft in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #xprate >1.19
    #completewith FlyTB
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt den |T134343:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r] um ihn zu füttern
    >>|cRXP_WARN_Er läuft in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label ThunderHornTurnin
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 24441 >>Gebt die Quest Thunderhorn-Totem ab
    .accept 24456 >>Akzeptiert die Quest Säuberung von Thunderhorn
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Trainiere deine Klassenfähigkeiten
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Trainiere deine Klassenfähigkeiten
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Trainiere deine Klassenfähigkeiten
    .target Sunwalker Iopi
step
    .goto 7,47.16,56.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 26188 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step
    #xprate <1.2
    #label ThunderHornTotem
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Benutzt die|r |T135139:0|t[Donnerhornsäuberung Totem] |cRXP_WARN_neben dem Brunnen|r
    .complete 24456,1 --Well Cleansed (1)
step
    #xprate >1.19
    #label FlyTB
    #completewith next
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Tak
step << Tauren
    #xprate >1.19
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step << Tauren
    #xprate >1.19
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Varg
    .target Tal
step << skip
    #xprate >1.19
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt von Euch euren Ruhestein in Donnerfels
    .target Innkeeper Pala
step
    #optional
    .maxlevel 9,MulgoreEnd
step
    #xprate >1.19
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Nehmt den Aufzug, um Donnerfels zu verlassen
    .zoneskip Mulgore
step
    #loop
    .goto 7,35.869,42.670,0
    .waypoint 7,36.260,44.783,40,0
    .waypoint 7,35.869,42.670,40,0
    .waypoint 7,34.946,40.825,40,0
    .waypoint 7,33.934,41.928,40,0
    .waypoint 7,32.540,41.483,40,0
    .waypoint 7,33.616,43.231,40,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witches
    .mob Windfury Harpies
step
    #loop
    .goto 1412/1,416.10001,-1917.40002,0
    .goto 1412/1,377.89999,-1940.70007,20,0
    .goto 1412/1,416.10001,-1917.40002,20,0
    .goto 1412/1,447.89999,-1953.59998,20,0
    .goto 1412/1,414.30002,-1983.80005,20,0
    >>Benutzt |T133841:0|t[Trommel der besänftigten Erde] auf |cRXP_ENEMY_Aufgebrachte Erdgeister|r
    >>|cRXP_WARN_Tötet sie, falls sie sich wehren und euch angreifen|r
    .complete 14491,1 --Spirits Calmed (6)
    .use 49647
    .mob Agitated Earth Spirit
step
    #xprate >1.19
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Benutzt die|r |T135139:0|t[Donnerhornsäuberung Totem] |cRXP_WARN_neben dem Brunnen|r
    .complete 24456,1 --Well Cleansed (1)
step
    #completewith DangerTurnin
    .deathskip >>Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #loop
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .waypoint 1412/1,-368.10001,-2296.19995,30,0
    .waypoint 1412/1,-354.10001,-2318.40015,30,0
    .waypoint 1412/1,-378.39999,-2339.10010,30,0
    .waypoint 1412/1,-406.39999,-2348.90015,30,0
    .waypoint 1412/1,-437.50000,-2394.40015,30,0
    .waypoint 1412/1,-444.80002,-2440.80005,30,0
    .waypoint 1412/1,-483.70001,-2458.30005,30,0
    .waypoint 1412/1,-455.30002,-2395.69995,30,0
    .waypoint 1412/1,-488.20001,-2347.90015,30,0
    .waypoint 1412/1,-487.00000,-2295.30005,30,0
    .waypoint 1412/1,-452.50000,-2256.69995,30,0
    .waypoint 1412/1,-421.60001,-2256.00000,30,0
    .waypoint 1412/1,-377.10001,-2257.30005,30,0
    .waypoint 1412/1,-368.80002,-2275.90015,30,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt den |T134343:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r] um ihn zu füttern
    >>|cRXP_WARN_Er läuft in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Gebt die Quest Kyle wird vermisst! ab
    .target Ahab Wheathoof
step << Tauren
    #xprate >1.19
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Varg|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Varg ab
    .target Varg Windwhisper
step
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahmo|r
    .turnin 14491 >>Gebt die Quest Ruhelose Erde ab
    .target Ahmo Thunderhorn
step
    #label DangerTurnin
    .goto 7,47.51,61.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target Ruul Eagletalon
step
    #xprate <1.2
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Gebt die Quest Säuberung von Thunderhorn ab
    .accept 24457 >>Akzeptiert die Quest Ritus der Sicht
    .target Mull Thunderhorn
step
    #xprate >1.19
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Gebt die Quest Säuberung von Thunderhorn ab
    .target Mull Thunderhorn
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 1978 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 71 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarl|r
    .train 3599 >> Trainiere deine Klassenfähigkeiten
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alsoomse|r
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5215 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iopi|r
    .train 82242 >> Trainiere deine Klassenfähigkeiten
    .target Sunwalker Iopi
    .xp <10,1
step
    #xprate <1.2
    .goto 7,47.889,57.097
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    .turnin 24457 >>Gebt die Quest Ritus der Sicht ab
    .accept 20441 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step
    #xprate <1.2
    .goto 7,47.850,56.961
    .use 49651 >>|cRXP_WARN_Benutzt die|r |T134712:0|t[Wasser der Sicht] |cRXP_WARN_beim Feuer des Stammes|r
    .complete 20441,1 --Water of Vision consumed (1x)
    .timer 86,Ritus der Sicht RP
step
    #xprate <1.2
    #completewith next.
    .subzone 4835 >>Wartet, bis ihr in Sonnenweidenlager ankommt
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Una|r
    .turnin 20441 >>Gebt die Quest Ritus der Sicht ab
    .accept 24523 >>Akzeptiert die Quest Wildmane-Totem
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step
    #xprate <1.2
    #completewith RedRocks
    >>Tötet |cRXP_ENEMY_Prairie Wolf Alphas|r. Plündert sie für |cRXP_LOOT_Teeth|r
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    #loop
    .goto 7,52.476,8.126,0
    .waypoint 7,54.950,13.407,0
    .waypoint 7,51.782,11.187,50,0
    .waypoint 7,52.476,8.126,50,0
    .waypoint 7,53.252,12.366,50,0
    .waypoint 7,54.950,13.407,50,0
    .waypoint 7,55.939,16.542,50,0
    >>Tötet |cRXP_ENEMY_Windfury Sorceresses|r und |cRXP_ENEMY_Windfury Matriarchs|r. Plündert sie für |cRXP_LOOT_Feathers|r
    .complete 744,1 --Azure Feather (x6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (x6)
    .mob +Windfury Matriarch
step
    #xprate <1.2
    #label RedRocks
    .goto 7,60.828,22.737
    .subzone 225 >>Reist zu den Teufelsfelsen
    .isOnQuest 833
step
    #xprate <1.2
    #completewith next
    >>Tötet |cRXP_ENEMY_Bristleback Interlopers|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    .goto 7,60.787,22.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .target Ancestral Spirit
step
    #xprate <1.2
    #loop
    .goto 7,60.374,21.638,0
    .waypoint 7,61.344,24.848,50,0
    .waypoint 7,59.935,24.400,50,0
    .waypoint 7,59.122,22.210,50,0
    .waypoint 7,60.374,21.638,50,0
    >>Tötet |cRXP_ENEMY_Bristleback Interlopers|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    #loop
    .goto 7,54.646,24.065,0
    .goto 7,46.777,18.984,0
    .waypoint 7,56.422,25.128,80,0
    .waypoint 7,54.646,24.065,80,0
    .waypoint 7,51.223,24.232,80,0
    .waypoint 7,49.326,21.378,80,0
    .waypoint 7,46.777,18.984,80,0
    .waypoint 7,47.051,13.915,80,0
    .waypoint 7,48.849,13.184,80,0
    >>Tötet |cRXP_ENEMY_Prairie Wolf Alphas|r. Plündert sie für |cRXP_LOOT_Teeth|r
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Una|r
    .turnin 24523 >>Gebt die Quest Wildmane-Totem ab
    .accept 24524 >>Akzeptiert die Quest Säuberung von Wildmane
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .turnin 833 >>Gebt die Quest Eine heilige Bestattung ab
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
step
    #xprate <1.2
    .goto 7,43.204,16.050
    .use 5416 >>|cRXP_WARN_Benutzt|r |T135139:0|t[Läuterungstotem der Wildmähnen] |cRXP_WARN_neben dem Brunnen|r
    .complete 24524,1 --Well Cleansed (1)
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Una|r
    .turnin 24524 >>Gebt die Quest Säuberung von Wildmane ab
    .accept 24550 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Una Wildmane
step
    #xprate <1.2
    #completewith next
    .deathskip >>Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #xprate <1.2
    #completewith next
    .goto 88,54.766,26.571,15,0
    .goto 88,50.038,34.337,20 >>Nehmt den Aufzug nach Donnerfels
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 24550 >>Gebt die Quest Reise nach Donnerfels ab
    .accept 24540 >>Akzeptiert die Quest Kriegstanz
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step
    #xprate <1.2
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt von Euch euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .isQuestAvailable 24540
step
    #xprate <1.2
    #completewith next
    .goto 88,51.937,26.573,15,0
    .goto 7,37.883,13.834,50 >>Benutzt den nördlichen Aufzug zurück nach Mulgore
    .zoneskip Mulgore
step
    #xprate <1.2
    .goto 7,36.975,11.910
    >>Angreifen |cRXP_ENEMY_Orno Grimtotem|r
    >>|cRXP_WARN_Die Quest wird beendet, sobald er 90% Gesundheit hat|r
    .complete 24540,1 --Orno Grimtotem Defeated (1x)
    .mob Orno Grimtotem
step
    #xprate <1.2
    #completewith next
    .hs >>Ruhestein nach Donnerfels
    .use 6948
    .zoneskip Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 24540 >>Gebt die Quest Kriegstanz ab
    .accept 26397 >>Akzeptiert die Quest Geht mit der Erdenmutter
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .target Tal
    .zoneskip Orgrimmar
step
    #optional
    #label MulgoreEnd
step << !Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .gossipoption 111516 >>Fliege nach Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tak
    .zoneskip Mulgore,1
step
    #optional
    .abandon 743 >>Brecht die Quest Windfuriengefahr ab
step
    #optional
    .abandon 14491 >>Brecht die Quest Ruhelose Erde ab
step
    #optional
    .abandon 24456 >>Brecht die Quest Donnerhornsäuberung ab
step
    #optional
    .abandon 11129 >>Brecht die Quest Kyle wird vermisst! ab
step
    #optional
    .abandon 6364 >>Brecht die Quest Rückkehr zu Varg ab
step
    #xprate <1.2
    #completewith next
    .goto 85,49.886,75.613,8 >>Betretet Die Feste Grommash
step
    #xprate <1.2
    .goto 1454/1,-4343.10010,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garrosh Höllschrei|r
    .turnin 26397 >>Gebt die Quest Geht mit der Erdenmutter ab
    .target Garrosh Hellscream
    .isOnQuest 26397
    ]])
