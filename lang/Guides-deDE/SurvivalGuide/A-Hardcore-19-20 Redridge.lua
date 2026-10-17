if GetLocale() ~= "deDE" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 19-20 Rotkammgebirge
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#next 20-21 Dunkelküste/Eschental

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Karrina Mekenda
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r und |cRXP_FRIENDLY_Wilder Distelklette|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .goto StormwindClassic,65.438,21.175
    .target +Wilder Thistlenettle
step << Hunter
    #ssf
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Schwerer Doppelbogen]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #ah
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_oder etwas besseres vom Auktionshaus|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Stover
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Stover
step << Hunter
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_if it's an upgrade|r
    >>|cRXP_WARN_Es ist wichtig, einen Zauberstab ohne Schattenschaden zu kaufen. Später werdet ihr auf Gegner stoßen, die gegen Schattenschaden resistent sind.|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Mistelmond|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sheldras Moontree
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlernen Dolche << Mage/Druid
    .train 202 >> Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135324:0|t[Langschwert] |cRXP_BUY_und|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Legt|r |T135324:0|t[Langschwert] |cRXP_WARN_in eurer Haupthand an, wenn ihr Stufe 21 seid und|r |T135342:0|t[Kris] |cRXP_WARN_in eurer Nebenhand an|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    >>|T134572:0|t[Rethbanerz]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .collect 2798,5,347,1 -- Rethban Ore (5)
    .target Auctioneer Jaxon
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
step << NightElf
    #label ExitSW
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Verlasst Sturmwind
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Akzeptiert die Quest Die verlorenen Werkzeuge
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .accept 129 >> Akzeptiert die Quest Ein geschenktes Mittagessen
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarze|r die Treppe hinauf
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>Verlasst das Gasthaus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Akzeptiert die Quest Hilarys Halskette
step
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Es kann an mehreren Orten im See spawnen|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
	.target Ariena Stormfeather
    .fly Westfall >> Fliegt nach Westfall
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Flieg nach Sturmwind
    .target Thor
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 141 >> Die Bruderschaft der Defias annehmen
    .target Master Mathias Shaw
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 141 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 142 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Reist nach Mondbruch
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tötet den |cRXP_ENEMY_Bote der Defias|r. Plündert ihn für |cRXP_LOOT_Eine mysteriöse Nachricht|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bote der Defias|r spawnt in Mondbruch. Er läuft entlang der Straße nördlich von Mondbruch zum Goldküstensteinbruch und zum Jangoschacht. Falls ihr ihn nicht entlang der Straße seht, wartet, bis er in Mondbruch spawnt|r
    >>|cRXP_WARN_Er respawnt nach 4-5 Minuten|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Reist zum Leuchtturm von Westfall
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .accept 103 >> Akzeptiert die Quest Bewahrer der Flamme
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 103 >> Gebt die Quest Bewahrer der Flamme ab
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrouilliert auf und ab an der Endlosen Küste. Falls ihr ihn nicht seht, wartet, bis er im südlichsten |cRXP_ENEMY_Murloc|r-Lager spawnt|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 104 >> Gebt die Quest Bedrohung an der Küste ab
    .target Captain Grayson
step
    .abandon 103 >> Brecht die Quest Bewahrer der Flamme ab
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 142 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Der Verräter der Defias|r
    >>|cRXP_WARN_Möglicherweise müsst ihr auf |cRXP_FRIENDLY_Der Verräter der Defias|r warten, falls er nicht da ist|r
    .accept 155 >> Die Bruderschaft der Defias annehmen
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>Begleitet |cRXP_FRIENDLY_Der Verräter der Defias|r zu den Todesminen
    >>|cRXP_WARN_Bleibt neben |cRXP_FRIENDLY_Der Verräter der Defias|r jederzeit! Seid bereit, |cRXP_ENEMY_Die Defias|r zu bekämpfen, wenn ihr Mondbruch erreicht|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_Benutzt |T134269:0|t[|cRXP_LOOT_Captain Sander's Schatzkarte|r], um die Quest zu beginnen|r
    .use 1357
    .accept 136 >> Akzeptiert die Quest Käpt'n Sanders' versteckter Schatz
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Klickt |cRXP_PICK_Captain's Schließkiste|r
    .turnin 136 >> Gebt die Quest Käpt'n Sanders' verborgener Schatz ab
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Klickt |cRXP_PICK_Captain's Schließkiste|r
    .accept 138 >> Akzeptiert die Quest Käpt'n Sanders' verborgener Schatz
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>Klickt |cRXP_PICK_Kaputtes Fass|r
    .turnin 138 >> Gebt die Quest Käpt'n Sanders' verborgener Schatz ab
    .accept 139 >> Akzeptiert die Quest Käpt'n Sanders' verborgener Schatz
    .isQuestTurnedIn 136
step
    .goto Westfall,40.63,17.03
    >>Klickt |cRXP_PICK_Old Krug|r
    .turnin 139 >> Gebt die Quest Käpt'n Sanders' verborgener Schatz ab
    .accept 140 >> Akzeptiert die Quest Käpt'n Sanders' verborgener Schatz
    .isQuestTurnedIn 138
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >> Schwimmt zur Insel
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>Klickt |cRXP_PICK_Verschlossene Truhe|r
    .turnin 140 >> Gebt die Quest Käpt'n Sanders' versteckter Schatz ab
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 155 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Gryan Starkmantel|r und |cRXP_FRIENDLY_Späherin Riell|r oben auf dem Turm
    .accept 166 >> Die Bruderschaft der Defias annehmen
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 214 >> Akzeptiert Rote Seidenkopftücher
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Jetzt solltet ihr nach einer Gruppe für die Todesminen suchen
    >>Tötet Gnolle während du eine Gruppe für die Todesminen zusammenstellst
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Reist zu den Todesminen
step
.dungeon DM
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für ihre |cRXP_LOOT_Seidenkopftücher|r
    >>|cRXP_WARN_Ihr könnt dies auch nach der Instanz abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
step
.dungeon DM
    #completewith DMend
    >>Tötet die |cRXP_ENEMY_Defias|r.in den Todesminen Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    >>|cRXP_WARN_benutze |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r], um die Quest zu beginnen|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Der nie verschickte Brief annehmen
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Reist zur Späherkuppe
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Gryan Starkmantel|r und |cRXP_FRIENDLY_Späherin Riell|r oben auf dem Turm
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
step
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Kristoff|r
    >>Überspringt diesen Schritt, wenn ihr noch nicht auf Stufe 20 seid
    .accept 343 >> Reden über Kraft annehmen
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Gebt die Quest Ein nie abgeschickter Brief ab
    .accept 389 >> Bazil Thedd annehmen
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Distelklette|r und |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .goto StormwindClassic,55.510,12.504
    .target +Shoni the Shilent
step -- adding again 2nd time incase hitting 20 after turning in triple DM quests
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Kristoff|r
    >>Überspringt diesen Schritt, wenn ihr noch nicht auf Stufe 20 seid
    .accept 343 >> Reden über Kraft annehmen
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Reist zu |cRXP_FRIENDLY_Milton Garbenbund|r in der Sturmwind-Bibliothek
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>Überspringt diesen Schritt, wenn ihr noch nicht auf Stufe 20 seid
    .turnin 343 >> Gebt die Quest Reden über Kraft ab
    .accept 344 >> Bruder Paxton annehmen
    .target Milton Sheaf
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .turnin 389 >> Gebt die Quest Bazil Thredd ab
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    >>Fliegt nach Redridge, wenn ihr noch in Westfall seid
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor
    .zoneskip Westfall,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Verlasst Sturmwind. Reist nach Goldhain
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Reist zur Abtei von Nordhain
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Paxton|r
    .turnin 344 >> Gebt die Quest Bruder Paxton ab
    .accept 345 >> Tinten-Zutaten annehmen
    .target Brother Paxton
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Reist zum Turm von Azora. Steigt den Turm auf. Folgt dem Pfeil für einen Kurzweg durch die Berge
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134850:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134830:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >> Akzeptiert die Quest Besuch im Kräuterladen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
step
    .isQuestTurnedIn 343
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Gebt die Quest Tinten-Zutaten ab
    .target Foreman Oslow
step
    .isQuestTurnedIn 118
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step
    #era/som
    #completewith MongrelPoacher
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Verkauft KEINE dieser Gegenstände, bis ihr die Quest Rotkammgulasch abgebt|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
    .collect 1081,5,92,1
    .mob +Tarantula
step
    .isOnQuest 122
    #completewith Toolbox
    >>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    >>Ihr müsst diese Quest nicht jetzt abschließen
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label MongrelPoacher
    .goto Redridge Mountains,15.91,62.76,0
    .goto Redridge Mountains,43.44,70.61,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Tötet |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    #era/som
    #completewith next
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Verkauft KEINE dieser Gegenstände, bis ihr die Quest Rotkammgulasch abgebt|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #era/som
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Verkauft KEINE dieser Gegenstände, bis ihr die Quest Rotkammgulasch abgebt|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .collect 1080,5,92,1
    .mob +Dire Condor
    .goto Redridge Mountains,66.4,76.6,60,0
    .goto Redridge Mountains,35.6,69.6,60,0
    .goto Redridge Mountains,45.4,76.6
    .goto Redridge Mountains,35.6,69.6,0
    .collect 2296,5,92,1
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .mob +Great Goretusk
step
    #label Toolbox
    >>|cRXP_WARN_Springt in den See. Passt auf die patrouillierende Elite |cRXP_ENEMY_Lake Thresher|r im Wasser auf|r
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-3000 >> Farmt, bis ihr nur noch 3000 XP bis Stufe 20 benötigt
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> Reist nach Seenhain
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >> Akzeptiert die Quest Die Immerruhbrücke
step
    #era
    .isQuestComplete 122
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    >>Überspringt diesen Schritt, falls ihr die Quest Bauchschuppen noch nicht abgeschlossen habt. Ihr werdet sie später machen.
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >> Gebt die Quest Bauchschuppen ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Gebt die Quest Botschaft nach Sturmwind ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Gebt die Quest Einschätzung der Gefahr ab
step
    .xp 20 >> Stellt sicher, dass ihr auf Stufe 20 seid, bevor ihr nach Sturmwind reist
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
	.target Ariena Stormfeather
    .fly Stormwind >> Flieg nach Sturmwind
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Qual (Rang 2)]
    .target Spackle Thornberry
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
	.xp <20,1
    .target Larimaine Purdue
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Mistelmond|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 768 >> Erlernt |T132115:0|t[Katzengestalt]
    .target Sheldras Moontree
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft|r |T135324:0|t[Langschwert] |cRXP_BUY_und rüstet es auf Stufe 21 aus|r
    >>|cRXP_BUY_Kauft beim Auktionshaus etwas, falls es dort etwas Günstigeres oder Besseres gibt|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr etwas Besseres habt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << !Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft |T134437:0|t[Gegengift] für die |T132290:0|t[Gifte]-Quest von Euch später
    >>Das spart euch Zeit, da ihr nicht herumrennen müsst, um Mobs zu töten. Überspringt diesen Schritt, falls ihr es nicht kaufen möchtet.
    .collect 6452,1,2359,1 --Anti-Venom (1)
    .target Auctioneer Jaxon
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft|r |T135324:0|t[Langschwert] |cRXP_BUY_und rüstet es auf Stufe 21 aus|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr etwas Besseres habt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_, falls ihr genug Geld habt. Legt es auf Stufe 21 an|r
    >>|cRXP_BUY_Kauft beim Auktionshaus etwas, falls es dort etwas Günstigeres oder Besseres gibt|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr etwas Besseres habt|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_wenn ihr genug Geld habt. Legt sie bei Stufe 21 an|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr etwas Besseres habt|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Kristoff|r
    .accept 343 >> Reden über Kraft annehmen
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r. Er wird dir den [|cRXP_LOOT_Foliant der Ehre|r] geben
    .use 6776 >>|cRXP_WARN_Benutzt die |T133739:0|t[|cRXP_LOOT_Der Foliant der Ehre|r] um die Quest zu starten|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Gebt die Quest Der Foliant der Ehre ab
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Reist zu |cRXP_FRIENDLY_Milton Garbenbund|r in der Sturmwind-Bibliothek
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    .turnin 343 >> Gebt die Quest Reden über Kraft ab
    .accept 344 >> Bruder Paxton annehmen
    .target Milton Sheaf
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 1804 >> Benutzt |T136058:0|t[Schloss knacken] um Schlossknacken zu erlernen
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betretet das SI:7 Hauptquartier. Lauft die Treppen hinauf zu |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .target +Renzik "The Shiv"
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Verlasst Sturmwind. Reist nach Goldhain
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Reist zur Abtei von Nordhain
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Paxton|r
    .turnin 344 >> Gebt die Quest Bruder Paxton ab
    .accept 345 >> Tinten-Zutaten annehmen
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Reist zum Turm von Azora. Erklimmt den Turm. Folgt dem Pfeil für einen Shortcut durch die Berge.
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134850:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134830:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith TravelRM
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    >>Fliegt nach Redridge, wenn ihr in MoP - Objekte seid
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Gebt die Quest Tinten-Zutaten ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .target Lucius
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
step
    #era
	#completewith next
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #label TravelRM
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Tötet |cRXP_ENEMY_Schläger der Rotkammgnolle|r und |cRXP_ENEMY_Mystiker der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 124,1 --Redridge Brute (10)
	.mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +|T136058:0|tÖffnet |cRXP_PICK_Üben Schließkassetten|r, bis ihr im Schlossknacken 80 erreicht
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Level up eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_benutzt die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr vorher gefarmt habt. Ihr braucht 50|r |T133971:0|t[Kochkunst]
    +|cRXP_WARN_Falls ihr mehr|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r braucht |cRXP_WARN_reist nach Westen in die nähe von|r |cRXP_ENEMY_Stopfwanst|r |cRXP_WARN_und tötet mehr|r |cRXP_ENEMY_Großer Geiferzahn|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Gebt die Quest Die Immerruhbrücke ab
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
    .turnin 122 >> Gebt die Quest Bauchschuppen ab
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
    .target Lucius
step << Rogue
    #sticky
    #optional
    .destroy 7907 >> Zerstört das |T134328:0|t[Zertifikat der Diebeskunst] aus eurer Tasche, da es nicht mehr benötigt wird
step << NightElf Rogue
    #hardcore
    #optional
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Lauf nach Westfall
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Erlernt die Flugroute nach Westfall
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #hardcore
    #optional
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_als Freund habt, könnt ihr diesen Schritt überspringen und sie bitten, es später für euch zu entfernen|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt|T136225:0|t[Steingestalt],um|T136230:0|t[Berührung von Zanzil] Debuff zu entfernen|r
    .aura -9991
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw
    .isQuestComplete 2359
]])
