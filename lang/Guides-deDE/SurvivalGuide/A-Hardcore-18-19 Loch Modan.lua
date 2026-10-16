if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 18-19 Loch Modan
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#next 19-20 Rotkammgebirge


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Kauft einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_und|r |T132382:0|t[Sharp Pfeile]
    .collect 11362,1 --Medium Quiver (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Samor Festivus|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Samor Festivus|r keine hat|r
    .target Samor Festivus
step << !Druid !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner << Warrior
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .xp <18,1
step << !Druid !Hunter
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .accept 255 >> Akzeptiert die Quest Söldner
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Reist nach Norden zur Station Algaz
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab << NightElf
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Reist zum Steinwerkdamm
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .accept 250 >> Akzeptiert die Quest Eine dunkle Bedrohung
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>Klickt das |cRXP_PICK_Verdächtige Fass|r
    .turnin 250 >> Gebt die Quest Eine dunkle Bedrohung ab
    .accept 199 >> Akzeptiert die Quest Eine dunkle Bedrohung
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .turnin 199 >> Gebt die Quest Eine dunkle Bedrohung ab
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    +|cRXP_WARN_Passt auf, nicht in die |cRXP_ENEMY_Horde Runners|r zu laufen! Es ist eine Elitegruppe aus 2 |cRXP_ENEMY_Orcs|r und einem |cRXP_ENEMY_Tauren|r, die die Ostseite des Lochs patrouillieren (die Linie auf der Karte von Euch)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist zur Jagdhütte der Weltenwanderer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .accept 257 >> Akzeptiert die Quest Das Prahlen eines Jägers
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Claude Erksine|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dargh Trueaim|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .accept 385 >> Akzeptiert die Quest Krokiliskenjagd
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Tötet |cRXP_ENEMY_Bergbussards|r
    >>|cRXP_WARN_Ihr müsst diese Quest abschließen und zu |cRXP_FRIENDLY_Daryl der Jüngling|r innerhalb von 15 Minuten zurückkehren. Falls die Quest fehlschlägt, brecht sie ab und nehmt sie erneut an|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist in Richtung |cRXP_FRIENDLY_Daryl der Jüngling|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Gebt die Quest Das Prahlen eines Jägers ab
    .accept 258 >> Akzeptiert die Quest Die Herausforderung eines Jägers
    .target Daryl the Youngling
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>Tötet |cRXP_ENEMY_Elder Mountain Boars|r
    >>|cRXP_WARN_Ihr müsst diese Quest abschließen und innerhalb von 12 Minuten zu |cRXP_FRIENDLY_Daryl der Jüngling|r zurückkehren. Falls ihr bei der Quest scheitert, brecht sie ab und nehmt sie erneut an|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist in Richtung |cRXP_FRIENDLY_Daryl der Jüngling|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Gebt die Quest Die Herausforderung eines Jägers ab
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vyrin Flinkwind|r
    .goto Loch Modan,81.73,64.15
    .accept 271 >> Akzeptiert die Quest Vyrins Rache
    .target Vyrin Swiftwind
step
    #completewith next
    +|cRXP_WARN_Passt auf, nicht in die |cRXP_ENEMY_Horde Runners|r zu laufen! Es ist eine Elitegruppe aus 2 |cRXP_ENEMY_Orcs|r und einem |cRXP_ENEMY_Tauren|r, die die Ostseite des Lochs patrouillieren (die Linie auf der Karte von Euch)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Reist zu der Insel in der Mitte des Lochs
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Tötet |cRXP_ENEMY_Loch Crocolisks|r. Plündert sie für |cRXP_LOOT_Meat|r und |cRXP_LOOT_Skin|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    +|cRXP_WARN_Passt auf, nicht in die |cRXP_ENEMY_Horde Runners|r zu laufen! Es ist eine Elitegruppe aus 2 |cRXP_ENEMY_Orcs|r und einem |cRXP_ENEMY_Tauren|r, die die Ostseite des Lochs patrouillieren (die Linie auf der Karte von Euch)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Reist zu Ironbands Ausgrabungsstätte
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magmar Fellhew|r
    .turnin 436 >> Gebt die Quest Eisenbands Ausgrabungsstätte ab
    .accept 297 >> Akzeptiert die Quest Götzen sammeln
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Eisenband|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target Prospector Ironband
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>Tötet |cRXP_ENEMY_Stonesplinter Diggers|r, |cRXP_ENEMY_Stonesplinter Geomancers|r und |cRXP_ENEMY_Berserk Troggs|r. Plündert sie für |cRXP_LOOT_Idols|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magmar Fellhew|r
    .turnin 297 >> Gebt die Quest Götzen sammeln ab
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >> Reist nach Grautatzengrat
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>Tötet |cRXP_ENEMY_Ol' Rußbedeckt|r. Plündert sie für |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Alte Rußtatze|r |cRXP_WARN_ist nicht immer in seiner Höhle und kann den Pfad zu den unteren Ebenen hinunterpatrouillieren|r
    >>|cRXP_ENEMY_Alte Rußtatze|r |cRXP_WARN_ist eine Stufe-20-Elite|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist zur Jagdhütte der Weltenwanderer
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 385 >> Gebt die Quest Krokiliskenjagd ab
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >> Gebt die Quest Vyrins Rache ab
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >> Akzeptiert die Quest Vyrins Rache
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vyrin Flinkwind|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >> Gebt die Quest Vyrins Rache ab
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >> Brecht die Quest Vyrins Rache ab
step
    .group
    .goto Loch Modan,73.87,29.64,100 >> Reist zur Festung Mo'grosh
    .isOnQuest 255
step
    .group 3
    >>Tötet |cRXP_ENEMY_Mo'grosh Ogres|r, |cRXP_ENEMY_Mo'grosh Enforcers|r und |cRXP_ENEMY_Mo'grosh Brutes|r
    >>|cRXP_ENEMY_Mo'grosh Brutes|r |cRXP_WARN_sind nur in den Höhlen zu finden. Betretet die nordöstliche Höhle nicht und tötet sie einfach in den 2 anderen Mini-Höhlen.|r
    .complete 255,1 -- Mo'grosh Ogre slain (4)
    .mob +Mo'grosh Ogre
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,3 -- Mo'grosh Enforcer slain (4)
    .mob +Mo'grosh Enforcer
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,2 -- Mo'grosh Brute slain (4)
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08,25,0
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08
    .isOnQuest 255
    .mob +Mo'grosh Brute
step
    #completewith next
    +|cRXP_WARN_Passt auf, dass ihr nicht auf|r |cRXP_ENEMY_Horde Runners|r|cRXP_WARN_trefft! Es ist eine Elite-Gruppe mit 2 |cRXP_ENEMY_Orcs|r und |cRXP_ENEMY_Tauren|r, die auf der Ostseite von Der Loch patrouillieren (die Linie auf der Karte von Euch)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >> Reist nach Thelsamar
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .turnin 255 >> Gebt die Quest Söldner ab
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >> Brecht die Quest Söldner ab
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bailey Zasterstein|r
    .bankdeposit 5996 >> Pack folgende Items in deine Bank:
    >>|T134797:0|t[Elixir der Wasseratmung] (wenn du welche hast) -- 5996
    .target Bailey Stonemantle
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ritzelschnitt Zahnrad|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Gearcutter Cogspinner|r keine hat|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Betretet die Tiefenbahn. Nehmt die Straßenbahn nach Sturmwind
    >>|cRXP_WARN_Skillt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls nötig, während ihr auf den Zug wartet|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Click here for a video guide for a logout skip on the tram|r
]])
