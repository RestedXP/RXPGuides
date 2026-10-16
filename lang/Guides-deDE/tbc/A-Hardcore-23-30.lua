if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 23-24 Sumpfland
#next 24-27 Redridge/Duskwood

step
.dungeon SFK
    #completewith FinalAccept
    +|cRXP_WARN_Begin looking for a Shadowfang Keep group. You will soon head to Silverpine Forest to run Shadowfang Keep|r (NOT TRANSLATED IN :deDE YET)
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Häute junger Krokilisken annehmen
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >> Klauen aus der Tiefe annehmen
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .accept 288 >> Die Dritte Flotte annehmen
    .accept 463 >> Der Sumpfhüter annehmen
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    .home >> Setzt euren Ruhestein im Hafen von Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    >>|cRXP_BUY_kauf ein|r |T132792:0|t[Krug Zwergenhonigmet]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >> Gehe die Treppe hoch zu |cRXP_FRIENDLY_Archäologe Flagongut|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Archäologe Magenbitter|r
    .target Archaeologist Flagongut
    .turnin 942 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 943 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Archäologe Magenbitter|r
    .target Archaeologist Flagongut
    .accept 943 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .turnin 288 >> Gebt die Quest Die Dritte Flotte ab
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Stochern im Schlamm annehmen
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
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
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tarrel Felsweber|r
    .accept 305 >> Auf der Suche nach dem Ausgrabungstrupp annehmen
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Grinde |cRXP_ENEMY_Gnolle der Moosfelle|r während du eine Gruppe für Burg Schattenfang suchst
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Es gibt keine Quests für Burg Schattenfang. Du Wirst vom Sumpfland in den Silberwald rennen müssen. Bleib auf der Straße in Arathi, und halt Ausschau nach der |cRXP_ENEMY_Kurierin der Verlassenen|r
    >>|cRXP_WARN_Ihr braucht die Flugroute nach Arathihochland noch nicht zu erlernen|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Holt euch die Flugroute nach Süderstade
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Betrete Burg Shadowfang
step
.dungeon SFK
    +Es gibt keine Quests für Burg Shadowfang
    >>Burg Schattenfang säubern. Verlasst die Instanz, wenn ihr fertig seid
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>Töte |cRXP_ENEMY_Junge Sumpflankrokilisken|r. Loote sie für ihre |cRXP_LOOT_Haut eines jungen Krokilisken|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>Kill |cRXP_ENEMY_Murloc der Blaukiemen|r
    >>Töte |cRXP_ENEMY_Gobbler|r. Loote seinen |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Gobbler|r |cRXP_WARN_patrouilliert durch die Marschen|r
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fradd Schnellschalt|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Fradd Swiftgear|r keine hat|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormer Eisenzopf|r
    .accept 294 >> Ormers Rache annehmen
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Merrin Felsweber|r
    .turnin 305 >> Gebt die Quest Auf der Suche nach dem Ausgrabungstrupp ab
    .accept 306 >> Auf der Suche nach dem Ausgrabungstrupp annehmen
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Loote |cRXP_LOOT_Flagonguts Fossil|r auf dem Boden
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einar Steingriff|r
    .accept 469 >> Tägliche Lieferung annehmen
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kixxle|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Kauf|r |T134413:0|t[Lebenswurz] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kixxle|r welche hat. Du brauchst sie für die|r |T132403:0|t[|cFF0070FFWirbelaxt|r] |cRXP_WARN_quest|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_Diese Items haben limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Kixxle|r keine hat|r << Warrior
    >>|cRXP_WARN_Diese Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Kixxle|r keine hat|r << !Warrior
    .target Kixxle
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rethiel der Sumpfhüter|r
    .turnin 463 >> Gebt die Quest Der Sumpfhüter ab
    .accept 276 >> Stapfende Pfoten annehmen
    .target Rethiel the Greenwarden
step
    #label
    #loop
    .goto Wetlands,63.93,63.54,0
    .goto Wetlands,61.58,73.07,0
    .goto Wetlands,63.93,63.54,60,0
    .goto Wetlands,62.34,69.34,60,0
    .goto Wetlands,61.58,73.07,60,0
    .goto Wetlands,62.34,69.34
	>>Töte |cRXP_ENEMY_Gnoll der Moosfelle|r und |cRXP_ENEMY_Bastard der Moosfelle|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rethiel der Sumpfhüter|r
    .turnin 276 >> Gebt die Quest Stapfende Pfoten ab
    .accept 277 >> Feuer-Tabu annehmen
    .target Rethiel the Greenwarden
step
    #loop
    .goto Wetlands,54.95,44.84,0
    .goto Wetlands,51.84,37.13,0
    .goto Wetlands,37.13,35.68,0
    .goto Wetlands,31.21,37.86,0
    .goto Wetlands,26.48,40.44,0
    .goto Wetlands,20.52,45.70,0
    .goto Wetlands,17.83,50.26,0
    .goto Wetlands,14.53,47.67,0
    .goto Wetlands,20.37,45.21,0
    .goto 1437/0,-2944.700,-3675.000,70,0
    .goto 1437/0,-3024.300,-4196.400,70,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>Töte |cRXP_ENEMY_Junge Sumpflankrokilisken|r. Loote sie für ihre |cRXP_LOOT_Haut eines jungen Krokilisken|r
    .complete 484,1
    .mob Young Wetlands Crocolisk

step << !NightElf !Draenei
    .isOnQuest 470,306,469,484,279
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
    .xp <25,1 -- hs if over 25, otherwise dark threat looms
step << !NightElf !Draenei
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Gebt die Quest Stochern im Brühschlamm ab
    .target Sida
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tarrel Felsweber|r
    .turnin 306 >> Gebt die Quest Auf der Suche nach dem Ausgrabungstrupp ab
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Gebt die Quest Tägliche Lieferung ab
    .turnin 484 >> Gebt die Quest Häute junger Krokilisken ab
    .target James Halloran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Gebt die Quest Klauen aus der Tiefe ab
    .target Karl Boran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
    .subzoneskip 150,1


-- only going loch if draenei/nightelf or not 25 yet
step
    #optional
    #completewith LochArrive
    .zone Loch Modan >> Folgt dem Tunnel, um nach Loch Modan zu reisen
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .xp >25,1 << !Draenei !NightElf
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2426.200,-4093.000,15 >> Reist durch den ersten Tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2374.900,-4011.600,15,0
    .goto 1437/0,-2462.600,-4119.400,10 >> Reist zum zweiten Tunnel
    .mob Dragonmaw Grunt
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2464.400,-4312.900,10 >> Reist durch den zweiten Tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2480.400,-4423.400,10 >> Reist zum Eingang des dritten Tunnels
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2674.500,-4451.100,10 >> Reist durch den dritten Tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2690.400,-4482.800,10 >> BETRETET den vierten Tunnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1432/0,-2698.800,-4681.800,10 >> Reist durch den vierten Tunnel nach Loch Modan
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Reist zum Steinwerkdamm
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .accept 250 >> Akzeptiert die Quest Eine dunkle Bedrohung
    .target Chief Engineer Hinderweir VII
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .isOnQuest 250
    .goto Loch Modan,56.05,13.24
    >>Klickt das |cRXP_PICK_Verdächtige Fass|r
    .turnin 250 >> Gebt die Quest Eine dunkle Bedrohung ab
    .accept 199 >> Akzeptiert die Quest Eine dunkle Bedrohung
step
    .isQuestTurnedIn 250
    .goto Loch Modan,56.05,13.24
    >>Klickt das |cRXP_PICK_Verdächtige Fass|r
    .accept 199 >> Akzeptiert die Quest Eine dunkle Bedrohung
    .zoneskip Loch Modan,1
step
    .isOnQuest 199
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .turnin 199 >> Gebt die Quest Eine dunkle Bedrohung ab
    .target Chief Engineer Hinderweir VII
    .zoneskip Loch Modan,1
step
    #label LochArrive
    #optional
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar << NightElf/Draenei
    .fly Ironforge >> Fliege nach Eisenschmiede << !NightElf !Draenei
    .target Thorgrum Borrelson
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .zoneskip Ironforge
step << NightElf/Draenei
    #optional
    .goto Loch Modan,21.30,68.60,50 >> Reist südlich zum Tunnel nach Dun Morogh
step << NightElf/Draenei
    #optional
    .goto 1432/0,-2582.400,-5738.400,15,0
    .goto 1432/0,-2578.000,-5679.900,15,0
    .goto 1432/0,-2535.500,-5643.700,10 >> Reist zum Tunnel-Eingang
step << NightElf/Draenei
    #optional
    #sticky
    .zone Ironforge >> Lauf nach Ironforge
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2441.900,-5559.800,10 >> Reist durch den Tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2347.800,-5560.700,10 >> Reist zum zweiten Tunnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2243.100,-5634.800,10 >> Reist durch den zweiten Tunnel
step << NightElf/Draenei
    #optional
    .goto Dun Morogh,47.85,41.42,55 >> Reist westlich auf der Straße nach Eisenschmiede
step << NightElf/Draenei
    #optional
    .goto 1426/0,-726.200,-5193.300,20,0
    .goto 1455/0,-862.200,-4998.700,70 >> Travel up the road (NOT TRANSLATED IN :deDE YET)

step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Sammel 4 |T134850:0|t[Schwacher Manatrank] und 2 |T134822:0|t[Elixir der schwachen Seelenstärke]
    >>Du kannst diese aus dem Auktionshaus kaufen, mit Spielern handeln oder [Alchemie] benutzen, um sie herzustellen
    >>|cRXP_WARN_Falls ihr es nicht machen könnt, überspringt diesen Schritt|r
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Sammel 4 |T134850:0|t[Schwacher Manatrank] und 2 |T134822:0|t[Elixir der schwachen Seelenstärke]
    >>Du kannst sie vom Auktionhaus oder durch Handeln mit einem anderen Spieler erhalten
    >>|cRXP_WARN_Falls ihr es nicht machen könnt, überspringt diesen Schritt|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ssf
    #optional
    >>Sammel 4 |T134850:0|t[Schwacher Manatrank] und 2 |T134822:0|t[Elixir der schwachen Seelenstärke]
    >>Wenn moglich, crafte sie mit [Alchemie]
    >>|cRXP_WARN_Falls ihr es nicht machen könnt, überspringt diesen Schritt|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .isOnQuest 1072
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milstaff Sturmauge|r
    .trainer >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
step
    #optional
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gerrig Knochengriff|r
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gerrig Knochengriff|r
    .turnin 971 >> Gebt die Quest Wissen in der Tiefe ab
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Weissager Javad|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Farseer Javad
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r
    .goto Ironforge,69.872,82.890
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .goto Ironforge,70.856,85.839
    .trainer >> Erlernt die Begleiter Fähigkeiten
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto Ironforge,65.905,88.405
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Train 2H Axes (NOT TRANSLATED IN :deDE YET) << !Rogue
	.train 266 >> Erlerne Schusswaffen << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces (NOT TRANSLATED IN :deDE YET) << Warrior/Shaman
    .train 54 >> Erlernt Streitkolben << Rogue/Shaman
    .train 44 >> Train Axes (NOT TRANSLATED IN :deDE YET) << Shaman
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ritzelschnitt Zahnrad|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Gearcutter Cogspinner|r keine hat|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto 1455/0,-1283.600,-4843.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lomac Ritzeldreh|r
    .target Lomac Gearstrip
    .turnin 1072 >>Gebt die Quest Ein alter Kollege ab
step
    #optional
    .isQuestTurnedIn 1072
    .goto Ironforge,72.08,51.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lomac Ritzeldreh|r
    .accept 1073 >> Stümperhaftigkeit + Chemikalien = Riesenspaß! annehmen
    .turnin 1073 >> Gebt die Quest Stümperhaftigkeit + Chemikalien = Riesenspaß! ab
    .itemcount 2455,4 -- Minor Mana Potion (4)
    .itemcount 2458,2 -- Elixir of Minor Fortitude (2)
    .target Lomac Gearstrip
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Nimm die Bahn Richtung Sturmwind
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >> Hop ontop of the gryphon's head then logout and back in to logout skip to the tram. (NOT TRANSLATED IN :deDE YET)
    .zone Stormwind City >>Nimm die Bahn Richtung Sturmwind
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 24-27 Redridge/Duskwood
#next 27-27 Sumpfland

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Lauf zur Festung in Sturmwind
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Emissary Taluun|r
    .accept 9429 >> Reist nach Dunkelhain annehmen
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Reist zu |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r im SI:7 im oberen Stockwerk
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >> Reist zu |cRXP_FRIENDLY_Duthorian Rall|r in die Kathedrale von Sturmwind
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
    .accept 1650 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_BUY_Kauf|r |T133849:0|t|T133849:0|t[Würzkräuter aus Stormwind]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step
    .isOnQuest 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Gebt die Quest Eine Rolle von Mauren ab
    .accept 1076 >> Teufel in Westfall annehmen
    .target Collin Mauren
step
    #optional
    .isQuestTurnedIn 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Collin Mauren|r
    .accept 1076 >> Teufel in Westfall annehmen
    .target Collin Mauren
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .isQuestComplete 1738
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Grimoires] |cRXP_BUY_für euren|r |T136220:0|t[Sukkubus]|cRXP_BUY_, den ihr in einer Sekunde haben werdet. Falls ihr zusätzliches Gold habt, kauft sie auch für euren|r |T136221:0|t[Leerwandler]
    .target Spackle Thornberry
step << Warlock
    .isOnQuest 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1738 >> Gebt die Quest Herzholz ab
    .accept 1739 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1739 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    .isOnQuest 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 65602 >> Gebt die Quest Alles aus Liebe ab
    .accept 65603 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 65603 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 8674 >> |cRXP_WARN_Benutzt den|r |T136065:0|t[Herzholzkern] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworener Sukkubus|r herbeizurufen
    .use 6913
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.154,77.406
    .use 6913 >> Tötet die |cRXP_ENEMY_Beschworener Sukkubus|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .isOnQuest 65603
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .use 190186 >> |cRXP_WARN_Benutzt die|r |T136065:0|t[Holzstatuette] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworenen Inkubus|r herbeizurufen
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
step << Warlock
    #completewith next
    +|cRXP_WARN_Ihr solltet jetzt die|r |T136220:0|t[Sukkubus] |cRXP_WARN_oder den|r |T136221:0|t[Leerwandler] |cRXP_WARN_als euren Begleiter nutzen|r
    >>|cRXP_WARN_Die|r |T136220:0|t[Sukkubus] |cRXP_WARN_verursacht erheblichen Schaden, während der|r |T136221:0|t[Leerwandler] |cRXP_WARN_bessere Überlebensfähigkeit bietet|r
step << Warlock
    .isOnQuest 1739,65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1739 >> Gebt die Quest Die Bindung ab
    .turnin 65603 >> Gebt die Quest Die Bindung ab
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
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauf die folgenden Items um sie später im Dämmerwald abzugeben
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|cRXP_WARN_Hinweis:Ihr solltet auch eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 skillen. Für eine einfache 2,000XP Quest im Dämmerwald. Kauf so viel|r |T133970:0|t[Brocken Eberfleisch] |cRXP_WARN_oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_wie ihr braucht um Skill 50 zu erreichen. Du kannst sie kochen, sobald du das Gasthaus im Dämmerwald erreicht hast.|r
    >>|T133024:0|t[Bronzeröhre]
    >>|T133970:0|t[Magere Wolfflanke]
    >>|T134321:0|t[Klebriges Spinnenbein]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauf die folgenden Items um sie später im Dämmerwald abzugeben
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T133024:0|t[Bronzeröhre]
    >>|T133970:0|t[Magere Wolfflanke]
    >>|T134321:0|t[Klebriges Spinnenbein]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Newton Uferbach|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >> Pack folgende Items in deine Bank: << Shaman
    >>|T132824:0|t[Filled Bota Bag] (NOT TRANSLATED IN :deDE YET) << Shaman -- 23750
    .target Newton Burnside
step << Draenei/NightElf
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
step
    #completewith RRQuests
    .goto 1429/0,395.900,-9114.200,80 >> Verlasst Sturmwind
step
    #completewith RRQuests
    .goto Elwynn Forest,65.20,69.80,50 >> Reist zum Turm von Azora. Erklimmt den Turm
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134850:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134830:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >> Das Gesetz des Solomon annehmen
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
    .accept 127 >> Fischhandel annehmen
    .accept 150 >> Murlocwilderer annehmen
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Berton|r
    .accept 386 >> Akzeptiert die Quest Verbrechen lohnt sich nicht
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Tötet |cRXP_ENEMY_Murlocspäher|r und |cRXP_ENEMY_Murlocgezeitenrufer|r. Plündert sie für ihre |cRXP_LOOT_Flossen|r und |cRXP_LOOT_Sonnenfische|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>Tötet |cRXP_ENEMY_Grunzer der Blackrock|r und |cRXP_ENEMY_Kundschafter der Blackrock|r. Plündert sie für |cRXP_LOOT_Kampferprobte Axt|r
	>>|cRXP_WARN_Seid vorsichtig, die |cRXP_ENEMY_Kundschafter der Blackrock|r wirken|r |T132149:0|t[Netz] |cRXP_WARN_auf euch|r
    >>|cRXP_WARN_Wechselt zwischen dem Töten von |cRXP_ENEMY_Orks|r und den |cRXP_ENEMY_Murlocs|r auf der Karte im Südwesten markiert|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>Tötet |cRXP_ENEMY_Murlocspäher|r und |cRXP_ENEMY_Murlocgezeitenrufer|r. Plündert sie für ihre |cRXP_LOOT_Flossen|r und |cRXP_LOOT_Sonnenfische|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >> Geht in Richtung Althers Mühle
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
    .target Lucius
    .isQuestComplete 2282
step
    .goto Redridge Mountains,26.75,46.43
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 180 >> GESUCHT: Leutnant Fangor annehmen
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .accept 34 >> Akzeptiert die Quest Ein ungebetener Gast
step
    .goto Redridge Mountains,15.68,49.30
    >>Tötet |cRXP_ENEMY_Stopfwanst|r. Plündert ihn für seine |cRXP_LOOT_Hauer|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Gebt die Quest Ein ungebetener Gast ab
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >> Lauf nach Dunkelhain Duskwood
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Die Legende von Stalvan annehmen
    .accept 101 >> Das Totem des Gegenschlages annehmen
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Trelayne|r
    .home >> Setzt euren Ruhestein im Dämmerwald
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Küchenchef Grual|r
	>>|cRXP_WARN_Du brauchst 50 Kochen um diese Quest anzunehmen|r
    .accept 90 >> Gewürzte Wolfkebabs annehmen
    .turnin 90 >> Gewürzte Wolfkebabs abgeben
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 56 >> Die Nachtwache annehmen
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Amtmann Daltry|r
    .turnin 66 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 67 >> Die Legende von Stalvan annehmen
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Delan|r
    .turnin 9429 >> Turn in Travel to Darkshire (NOT TRANSLATED IN :deDE YET)
    .target Anchorite Delan
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elaine Treuwein|r
    .accept 163 >> Rabenflucht annehmen
    .accept 164 >> Lieferung an Sven annehmen
    .accept 165 >> Der Einsiedler annehmen
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Erlernt die Flugroute nach Dämmerwald
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Herble Butzentand|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dies ist ein liminierter Gegenstand. Überspringt diesen Schritt wenn |cRXP_FRIENDLY_Herble Baubbletump|r keine hat|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Seht zu den Sternen annehmen
    .turnin 174 >> Gebt die Quest Seht zu den Sternen ab
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Seht zu den Sternen annehmen
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Die blinde Mary|r
    .turnin 175 >> Gebt die Quest Seht zu den Sternen ab
    .accept 177 >> Seht zu den Sternen annehmen
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :deDE YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
	#completewith next
    >>Tötet |cRXP_ENEMY_Skelettkrieger|r und |cRXP_ENEMY_Skelettmagier|r
    >>|cRXP_ENEMY_Skelettkrieger|r |cRXP_WARN_wenden|r |T132316:0|t[Kniesehne] an
    >>|cRXP_ENEMY_Skelettmagier|r |cRXP_WARN_wirken|r |T135846:0|t[Frostblitz] |cRXP_WARN_und verlangsamen auch mit|r |T135843:0|t[Frostrüstung]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tötet die |cRXP_ENEMY_Irrsinniger Ghul|r. Plündert sie für |cRXP_LOOT_Marys Handspiegel|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Irrsinniger Ghul|r könnte in der Kapelle sein oder draußen herumlaufen|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    #loop
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>Tötet |cRXP_ENEMY_Skelettkrieger|r und |cRXP_ENEMY_Skelettmagier|r
    >>|cRXP_ENEMY_Skelettkrieger|r |cRXP_WARN_wenden|r |T132316:0|t[Kniesehne] an
    >>|cRXP_ENEMY_Skelettmagier|r |cRXP_WARN_wirken|r |T135846:0|t[Frostblitz] |cRXP_WARN_und verlangsamen auch mit|r |T135843:0|t[Frostrüstung]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    #completewith Level25
    >>Töte |cRXP_ENEMY_Spinnen|r im Dämmerwald.Plündert sie für ihr |cRXP_LOOT_Klebriges Spinnenbein|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >> Lauf in Richtung |cRXP_FRIENDLY_Jitters|r im Dämmerwald
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Gebt die Quest Rabenflucht ab
    .accept 5 >> Jitters' knurrender Magen annehmen
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Gebt die Quest Lieferung an Sven ab
    .accept 95 >> Svens Rache annehmen
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lars|r
    .accept 226 >> Wölfe sind uns auf den Fersen annehmen
    .target Lars
step
    #completewith SFD
    >>Töte |cRXP_ENEMY_Ausgehungerter Terrorwolf|r and |cRXP_ENEMY_Tollwütiger Terrorwolf|r. Plündert sie für ihre |cRXP_LOOT_Magere Wolfflanke|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>Töte |cRXP_ENEMY_Ausgehungerter Terrorwolf|r and |cRXP_ENEMY_Tollwütiger Terrorwolf|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Gebt die Quest Der Einsiedler ab
    .accept 148 >> Lieferung aus Dunkelhain annehmen
    .target Abercrombie
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Töte |cRXP_ENEMY_Ausgehungerter Terrorwolf|r and |cRXP_ENEMY_Tollwütiger Terrorwolf|r. Plündert sie für ihre |cRXP_LOOT_Magere Wolfflanke|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Töte |cRXP_ENEMY_Ausgehungerter Terrorwolf|r and |cRXP_ENEMY_Tollwütiger Terrorwolf|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Wölfe sind uns auf den Fersen abgeben
    .target Lars
step
    #label Level25
    .xp 25
step
	.goto Duskwood,32.4,36.6,0
	.goto Duskwood,29.6,50.4,0
    .goto Duskwood,33.6,60.4,0
    .goto Duskwood,12.2,69.8,0
    .goto Duskwood,10.6,37.0,0
    .goto Duskwood,33.6,60.4,70,0
    .goto Duskwood,12.2,69.8,70,0
    .goto Duskwood,10.6,37.0,70,0
    .goto Duskwood,12.8,55.6,70,0
	.goto Duskwood,32.4,36.6,70,0
	.goto Duskwood,29.6,50.4,70,0
    >>Töte |cRXP_ENEMY_Spinnen|r im Dämmerwald.Plündert sie für ihr |cRXP_LOOT_Klebriges Spinnenbein|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .goto Duskwood,17.72,29.07
    .accept 225 >> Akzeptiert die Quest Das verwitterte Grab
step
    #completewith MoonbrookSt
    .zone Westfall >> Lauf nach Westfall
step
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>Tötet |cRXP_ENEMY_Staubteufel|r. Plündert sie für |cRXP_LOOT_Staubteufeltrümmer|r
    >>|cRXP_ENEMY_Staubteufel|r |cRXP_WARN_können überall in Westfall erscheinen. Ihre Spawnpunkte sind auf der Karte markiert|r
    >>|cRXP_WARN_wirkt|r |T132172:0|t[Adleraufe]|cRXP_WARN_um sie zu finden|r << Hunter
    .complete 1076,1
    .unitscan Dust Devil
    .isOnQuest 1076
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
step << Rogue
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
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
step << Rogue
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
step
    #completewith MoonbrookSt
    .subzone 20 >> Reist nach Mondbruch
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Klickt die |cRXP_PICK_Alte Schließkiste|r auf dem Boden
    .turnin 67 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 68 >> Die Legende von Stalvan annehmen
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daphne Stillbrunn|r
    .turnin 1650 >>Gebt die Quest Der Foliant der Ehre ab
    .target Daphne Stilwell
    .accept 1651 >>Der Foliant der Tapferkeit annehmen
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daphne Stillbrunn|r
    .turnin 1651 >>Gebt die Quest Der Foliant der Ehre ab
    .target Daphne Stilwell
    .accept 1652 >>Der Foliant der Tapferkeit annehmen
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Schwimmt hinaus aufs Meer
step << Druid
    .goto Westfall,17.928,33.099
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r.Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Belastbarkeit|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Benutzt den|r |T133443:0|t[Halber Anhänger der Wasserbeweglichkeit] |cRXP_WARN_um es mit dem|r |T133442:0|t[Halber Anhänger der Wasser-Belastbarkeit] |cRXP_WARN_am Schrein von Remulos|r zu kombinieren
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    >>|cRXP_WARN_Das erspart euch Zeit beim Zurücklaufen|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 272 >> Gebt die Quest Prüfung des Seelöwen ab
    .accept 5061 >> Accept Wassergestalt
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Fliegt nach Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .turnin 5061 >> Gebt die Quest Wassergestalt ab
step
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >> Ruhestein nach Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >> Fliege nach Dunkelhain
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >> Ruhestein nach Sturmwind
	.cooldown item,6948,>0,1
    .zoneskip Stormwind City
    .bindlocation 1519,1
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Duskwood>> Fliegt nach Dämmerwald
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Trelayne|r
    >>Falls ihr gerade eure Gift-Quest abgeschlossen habt, setzt euren Ruhestein auf Dunkelhain
    >>Falls euer Ruhestein bereits auf Dunkelhain gesetzt war, überspringt diesen Schritt
    .home >> Setzt euren Ruhestein in Dunkelhain
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .accept 2607 >> Accept Die Berührung von Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Head to the basement (NOT TRANSLATED IN :deDE YET)
    .turnin 2607 >> Gebt die Quest Die Berührung von Zanzil ab
    .accept 2608 >> Accept Die Berührung von Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Schreibt /legen in den chat und wartet, bis sich die Quest von selber abschließt
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >> Gebt die Quest Die Berührung von Zanzil ab
    .accept 2609 >> Accept Die Berührung von Zanzil
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>Kauft eine Verbleite Phiole vom Zwielichtigen Händler
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>Geht zum Blumenhändler
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>Kauft eine Bronzeröhre im Auktionshaus
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Gehen Sie zu dem Geschäft neben der Brücke zwischen dem Kathedralenplatz und dem Park
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>Falls ihr keine Bronzeröhre finden könnt, müsst ihr diese Quest überspringen, Erste Hilfe auf Stufe 80 trainieren, einen kleinen Giftbeutel von Spinnen in Dämmerwald farmen, ein Gegengift herstellen und das Zanzil-Gift entfernen.
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >> Gebt die Quest Die Berührung von Zanzil ab
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Küchenchef Grual|r
	>>|cRXP_WARN_Du brauchst 50 Kochen um diese Quest anzunehmen|r
    .accept 90 >> Gewürzte Wolfkebabs annehmen
    .turnin 90 >> Gewürzte Wolfkebabs abgeben
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Küchenchef Grual|r
    .turnin 5 >> Gebt die Quest Bibbers knurrender Magen ab
    .accept 93 >> Schwärzliche Krebsküchlein annehmen
    .turnin 93 >> Gebt die Quest Schwärzliche Krebsküchlein ab
    .accept 240 >> Rückkehr zu Bibbers annehmen
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 56 >> Gebt die Quest Die Nachtwache ab
    .target Commander Althea Ebonlocke
    .accept 57 >> Die Nachtwache annehmen
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Amtmann Daltry|r
    .turnin 68 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 69 >> Die Legende von Stalvan annehmen
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Gebt die Quest Das verwitterte Grab ab
    .accept 227 >> Akzeptiert die Quest Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 227 >> Gebt die Quest Morgan Ladimore ab
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >> Lösche |T133741:0|t[Die Geschichte von Morgan Ladimore]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Gebt die Quest Lieferung aus Dunkelhain ab
    .target Madame Eva
    .accept 149 >> Geisterhaarfaden annehmen
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Herble Butzentand|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dies ist ein liminierter Gegenstand. Überspringt diesen Schritt wenn |cRXP_FRIENDLY_Herble Baubbletump|r keine hat|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Seht zu den Sternen annehmen
    .turnin 174 >> Gebt die Quest Seht zu den Sternen ab
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Seht zu den Sternen annehmen
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Die blinde Mary|r
    .turnin 175 >> Gebt die Quest Seht zu den Sternen ab
    .accept 177 >> Seht zu den Sternen annehmen
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Die blinde Mary|r
    .turnin 149 >> Gebt die Geisterhaarfaden ab
    .accept 154 >> Rückkehr mit dem Kamm annehmen
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :deDE YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tötet die |cRXP_ENEMY_Irrsinniger Ghul|r. Plündert sie für |cRXP_LOOT_Marys Handspiegel|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Irrsinniger Ghul|r könnte in der Kapelle sein oder draußen herumlaufen|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Gebt die Quest Seht zu den Sternen ab
    .accept 181 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Gebt die Quest Rückkehr mit dem Kamm ab
    .accept 157 >> Abliefern des Fadens annehmen
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>Klickt den |cRXP_PICK_Lockerer Erdhaufen|r auf dem Boden
    .turnin 95 >> Gebt die Quest Svens Rache ab
    .accept 230 >> Akzeptiert die Quest Svens Lager
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Gebt die Quest Faden abliefern ab
    .target Abercrombie
    .accept 158 >> Akzeptiert die Quest Zombiesaft
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Gebt die Quest Svens Lager ab
    .target Sven Yorgen
    .accept 262 >> Akzeptiert die Quest Die Schattengestalt
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Howe|r
    .accept 128 >> Akzeptiert die Quest Kopfgeld auf die Blackrocks
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .accept 19 >> Tharil'zun annehmen
    .accept 115 >> Schattenmagie annehmen
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .solo
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .accept 115 >> Schattenmagie annehmen
	.isQuestTurnedIn 20
    .maxlevel 27
step
#optional
    .group
    .dungeon Stockades
    #completewith next
    .abandon 386 >> Brecht die Quest „Verbrechen lohnt sich nicht" ab.
    >>|cRXP_WARN_Abandon this quest if your quest log is full. You'll accept it again shortly|r (NOT TRANSLATED IN :deDE YET)
    .zoneskip Redridge Mountains,1
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt auf das |cRXP_FRIENDLY_GESUCHT Poster|r
    .accept 169 >> GESUCHT: Gath'Ilzogg annehmen
    .maxlevel 27
step
    #completewith LookingFurther
    >>Tötet die |cRXP_ENEMY_Schattenfelle|r. Plündert sie für ihre|cRXP_LOOT_Anhänger|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>Tötet |cRXP_ENEMY_Lieutenant Fangore|r. Plündert ihn für seine |cRXP_LOOT_Tatze|r
    >>|cRXP_ENEMY_Lieutenant Fangor|r |cRXP_WARN_wird mit 2 zusätzlichen|r |cRXP_ENEMY_Gnolls|r angreifen
    >>|cRXP_ENEMY_Lieutenant Fangor|r |cRXP_WARN_ist immun gegen Schattenschaden. Stellt sicher, dass ihr Gruppenmitglieder habt, die helfen können, ansonsten könnt ihr diesen Schritt überspringen|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>Klick auf die |cRXP_PICK_Alte Löwenstatue|r
    .turnin 94 >> Gebt die Quest Ein wachsames Auge ab
    .accept 248 >> Weitere Beobachtungen annehmen
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>Klick auf die |cRXP_PICK_Alte Löwenstatue|r
    .accept 248 >> Weitere Beobachtungen annehmen
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Tötet die |cRXP_ENEMY_Schattenfelle|r. Plündert sie für ihre|cRXP_LOOT_Anhänger|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #completewith Gath
    >>Töte |cRXP_ENEMY_Schattenzauberer der Blackrock|r. Loote sie für ihre |cRXP_LOOT_Mitternachtskugel|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    .goto Redridge Mountains,71.40,55.07
    >>Tötet |cRXP_ENEMY_Tharil'zun|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 4
    .goto Redridge Mountains,69.599,55.797
    >>Betrete die Steinwacht
    >>Tötet |cRXP_ENEMY_Gath'Ilzogg|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    #label Gath
step
    .goto Redridge Mountains,66.68,56.26
    >>Töte |cRXP_ENEMY_Schattenzauberer der Blackrock|r. Loote sie für ihre |cRXP_LOOT_Mitternachtskugel|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>Klickt |cRXP_PICK_Ein leerer Krug|r auf dem Fass oben auf dem Turm der Steinwacht
    >>|cRXP_WARN_Nimm die Nachfolgequest nicht an|r
    .turnin 248 >> Gebt die Quest Weitere Beobachtungen ab
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>Tötte |cRXP_ENEMY_Helden der Blackrock|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    #completewith ReturnLakeshire
    .subzone 69 >> Kehrt nach Seenhain zurück
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .turnin 19 >> Gebt die Quest Tharil'zun ab
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .turnin 115 >> Gebt die Quest Schattenmagie ab
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .turnin 91 >> Gebt die Quest Das Gesetz des Solomon ab
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 180 >> Gebt die Quest GESUCHT: Lieutenant Fangor ab
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 169 >> Gebt die Quest GESUCHT: Gath'Ilzogg ab
    .target Magistrate Solomon
    .isQuestComplete 169
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Berton|r
    .accept 386 >> Akzeptiert die Quest Verbrechen lohnt sich nicht
    .target Guard Berton
    .zoneskip Redridge Mountains,1
step
    #label ReturnLakeshire
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Howe|r
    .turnin 128 >> Gebt die Quest Kopfgeld auf die Blackrocks ab
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >> Ruhestein nach Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Duskwood >> Fliege nach Dunkelhain
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >> Lauf nach Dunkelhain
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure (NOT TRANSLATED IN :deDE YET)
    .target Madame Eva
    .accept 265 >> Akzeptiert die Quest Die Schattensuche geht weiter
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Amtmann Daltry|r
    .turnin 265 >> Gebt die Quest Die Schattensuche geht weiter ab
    .accept 266 >> Akzeptiert die Quest Nachforschungen im Gasthaus
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ratsherr Mühlenstein|r
    .accept 377 >> Akzeptiert die Quest Verbrechen und Strafe
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .turnin 158 >> Gebt die Quest Zombiesaft ab
    .accept 156 >> Akzeptiert die Quest Das Sammeln von Faulblüten
    .turnin 266 >> Gebt die Quest Nachforschungen im Gasthaus ab
    .accept 453 >> Akzeptiert die Quest Auf der Suche nach der Schattengestalt
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .accept 231 >> Die Liebe einer Tochter annehmen
    .target Watcher Ladimore
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .accept 228 >> Akzeptiert die Quest Mor'Ladim
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Akzeptiert die Quest Worgen in den Wäldern
    .target Calor
step
    #loop
    .goto Duskwood,66.0,44.6,0
    .goto Duskwood,64.2,38.8,0
    .goto Duskwood,60.8,37.4,0
    .goto Duskwood,61.2,46.0,0
    .goto Duskwood,67.6,46.6,0
    .goto Duskwood,63.6,41.2,0
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2,60,0
	>>Töte |cRXP_ENEMY_Schattenwirker der Nachtheuler|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Gebt die Quest Worgen in den Wäldern ab
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fliegt nach Westfall
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :deDE YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >> Gebt die Quest Auf der Suche nach der Schattengestalt ab
    .accept 268 >> Rückkehr zu Sven annehmen
    .turnin 240 >> Gebt die Quest Rückkehr zu Jitters ab
    .target Jitters
step
    #loop
    .goto Duskwood,22.95,44.75,0
    .goto Duskwood,20.39,47.02,0
    .goto Duskwood,15.65,42.81,0
    .goto Duskwood,22.11,46.93,0
    .goto Duskwood,21.21,47.07,0
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07,70,0
    >>Kill |cRXP_ENEMY_Skelettscheusal|r und |cRXP_ENEMY_Skelettschrecken|r. Loote sie für ihre |cRXP_LOOT_Rot Blossoms|r und |cRXP_LOOT_Fingers|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .mob +Skeletal Fiend
    .complete 57,2 -- Skeletal Horror slain (15)
    .mob +Skeletal Horror
    .complete 156,1 -- Rot Blossom (8)
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
    .complete 101,3 --10/10 Skeleton Finger
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Turn in Return to Sven (NOT TRANSLATED IN :deDE YET)
    .accept 323 >> Bewährungsprobe annehmen
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .turnin 231 >> Gebt die Quest Die Liebe einer Tochter ab
step
    .goto Duskwood,16.01,38.79
    >>Kill |cRXP_ENEMY_Skeletträuber|r, |cRXP_ENEMY_Skelettheiler|r und |cRXP_ENEMY_Skelettwärter|r
    >>|cRXP_WARN_Betretet Die Katakomben des Morgenwaldes für die|r |cRXP_ENEMY_Skelettwärter|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >> Grind to level 27. If you're planning on running The Stockades, you can skip this step (NOT TRANSLATED IN :deDE YET)
step
    .group 5
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Tötet |cRXP_ENEMY_Mor'Ladim|r. Plündert ihn für seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_is a level 30 Elite which hits very hard but moves quite slow. Try to kite him around any large trees if required|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r (NOT TRANSLATED IN :deDE YET)
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Gebt die Quest Bewährungsprobe ab
    .accept 269 >> Akzeptiert die Quest Auf der Suche nach Weisheit
    .target Sven Yorgen

step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Fliege nach Dunkelhain
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >> Lauf nach Dunkelhain
step << Warrior/Paladin
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .turnin 57 >> Gebt die Quest Die Nachtwache ab
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .accept 231 >> Die Liebe einer Tochter annehmen
    .target Watcher Ladimore
step << Warrior/Paladin
    .isQuestTurnedIn 228
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .turnin 156 >> Gebt die Quest Das Sammeln von Faulblüten ab
    .target Tavernkeep Smitts
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Felicia Maline
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Berton|r
    .accept 386 >> Akzeptiert die Quest Verbrechen lohnt sich nicht
    .target Guard Berton
step << Warrior/Paladin
    .isOnQuest 231
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fliegt nach Westfall
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .turnin 231 >> Gebt die Quest Die Liebe einer Tochter ab
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_You are about to head to Stormwind soon, try to find a group for The Stockades|r (NOT TRANSLATED IN :deDE YET)
step
    #completewith next
    .subzone 87 >> Lauf nach Goldhain
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 69 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 70 >> Die Legende von Stalvan annehmen
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geh nach oben
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Öffnet die |cRXP_PICK_Aufbewahrungstruhe|r. Plündert sie für |cRXP_LOOT_Ein niemals zugestellter Brief|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >> Lauf nach Sturmwind
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Gebt die Quest Teufel in Westfall ab
    .target Collin Mauren
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Farseer Umbrua
step
    #completewith GRB
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Duskwood >> Fliege nach Dunkelhain
    .target Dungar Longdrink
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .turnin 57 >> Gebt die Quest Die Nachtwache ab
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .target Watcher Ladimore
step
    #label GRB
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .turnin 156 >> Gebt die Quest Das Sammeln von Faulblüten ab
    .target Tavernkeep Smitts
step
.dungeon Stockades
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Felicia Maline
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Berton|r
    .accept 386 >> Akzeptiert die Quest Verbrechen lohnt sich nicht
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << !Mage
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
.dungeon Stockades
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
step << !Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Gebt die Quest Teufel in Westfall ab
    .target Collin Mauren
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zardeth der Schwarzen Klaue|r
    .accept 335 >> Akzeptiert die Quest Ein nobles Bräu
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verwalter Folsom|r
    .turnin 70 >> Gebt die Quest Die Legende von Stalvan ab
    .target Caretaker Folsom
    .accept 72 >> Die Legende von Stalvan annehmen
step
    .goto Stormwind City,29.44,61.52
    >>Klickt die |cRXP_PICK_Versiegelte Kiste|r auf dem Boden
    .turnin 72 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 74 >> Die Legende von Stalvan annehmen
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Mistelmond|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .target Duthorian Rall
    .turnin 1652 >>Gebt die Quest Der Foliant der Ehre ab
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Sarno|r
    .accept 2923 >> Tüftlermeister Oberfunks annehmen
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bischof Heller|r
    .turnin 269 >> Gebt die Quest Auf der Suche nach Weisheit ab
    .accept 270 >> Die Verlorene Flotte annehmen
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >> Bazil Thedd annehmen
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Cassius|r
    >>|cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>|cRXP_WARN_Wenn du ein [|cRXP_LOOT_Ein altes Geschichtsbuch|r] gefunden hast, kannst du es abgeben|r
    .accept 337 >> Ein altes Geschichtsbuch annehmen
    .turnin 337 >> Gebt die Quest Ein altes Geschichtsbuch ab
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    .accept 538 >> Akzeptiert die Quest Southshore
    .target Milton Sheaf
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrouilliert in der Altstadt|r
    .accept 388 >> Akzeptiert die Quest Die Farbe von Blut
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .accept 387 >> Akzeptiert die Quest Niederschlagung des Aufstandes
    .turnin 389 >> Gebt die Quest Bazil Thredd ab
    .accept 391 >> Akzeptiert die Quest Aufstand im Verlies
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .accept 391 >> Akzeptiert die Quest Aufstand im Verlies
    .accept 387 >> Akzeptiert die Quest Niederschlagung des Aufstandes
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .accept 387 >> Akzeptiert die Quest Niederschlagung des Aufstandes
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Such eine Gruppe für das Verließ
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für ihre |cRXP_LOOT_Seidenkopftücher|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Tötet |cRXP_ENEMY_Targorr der Schreckliche|r. Plündert seinen |cRXP_LOOT_Kopf|r. |cRXP_ENEMY_Targorr|r spawnt an einem zufälligen Ort 
    >>Tötet |cRXP_ENEMY_Dextren Ward|r im westlichen Gefängnisflügel. Plündert seine |cRXP_LOOT_Hand|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Tötet |cRXP_ENEMY_Bazil Thredd|r im östlichen Gefängnisflügel. Plündert seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Habt 3|r |T132905:0|t[Seidenstoff] |cRXP_WARN_für die Fortsetzung dieser Questreihe |r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .turnin 387 >> Gebt die Quest Niederschlagung des Aufstandes ab
    .turnin 391 >> Gebt die Quest Aufstand im Verlies ab
    .accept 392 >> Akzeptiert die Quest Der seltsame Besucher
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .turnin 387 >> Gebt die Quest Niederschlagung des Aufstandes ab
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Gebt die Quest Der seltsame Besucher ab
    .accept 393 >> Akzeptiert die Quest Schatten der Vergangenheit
    .target Baros Alexston
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrouilliert in der Altstadt|r
    .turnin 388 >> Gebt die Quest Die Farbe von Blut ab
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Gebt die Quest Schatten der Vergangenheit ab
    .accept 350 >> Akzeptiert die Quest Auf einen alten Freund verlassen
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Elling Trias|r
    .turnin 350 >> Gebt die Quest Auf einen alten Freund verlassen ab
    .accept 2745 >> Eindringen ins Schloss annehmen
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Lauf zur Festung in Sturmwind
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Gebt die Quest Eindringen ins Schloss ab
    .accept 2746 >> Nicht unwichtige Gegenstände annehmen
    .target Tyrion
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Verlasst Sturmwind. Reist zu Claras Bauernhof im Wald von Elwynn
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Sammelt |cRXP_LOOT_Clara's frische Äpfel|r auf dem Tisch
    >>|cRXP_WARN_Falls ihr immer noch Seidenstoff benötigt|r |T132905:0|t[Seidenstoff] |cRXP_WARN_kauft einige im Auktionshaus|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>Sammelt |cRXP_LOOT_Clara's frische Äpfel|r auf dem Tisch
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Lauf zur Festung in Sturmwind
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Stellt sicher, dass eure Gruppe die Quest Nicht unwichtige Gegenstände abgegeben hat, bevor ihr die Quest Der Angriff! annehmt|r
    >>|cRXP_WARN_Die automatische Questannahme wurde für diesen Schritt deaktiviert. Beachtet: Ihr könnt die Quest möglicherweise nicht annehmen, wenn jemand anderes sie gerade macht|r
    .turnin 2746 >> Gebt die Quest Nicht unwichtige Gegenstände ab
    .accept 434,1 >> Der Angriff! annehmen
    .timer 124,Der Angriff! RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Wartet in der Mitte des Hofes auf |cRXP_ENEMY_Lord Gregor Lescovar|r und |cRXP_ENEMY_Marzon die Stille Klinge|r, bis sie ankommen. Das dauert ungefähr 2 Minuten|r
    >>Tötet |cRXP_ENEMY_Lord Gregor Lescovar|r und |cRXP_ENEMY_Marzon die Stille Klinge|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Elling Trias|r
    .turnin 434 >> Gebt die Quest Der Angriff! ab
    .accept 394 >> Akzeptiert die Quest Der Kopf des Ganzen
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Gebt die Quest Der Kopf des Ganzen ab
    .accept 395 >> Das Ende der Bruderschaft annehmen
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Gebt die Quest Das Ende der Bruderschaft ab
    .accept 396 >> Akzeptiert die Quest Eine Audienz beim König
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Lauf zur Festung in Sturmwind
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Gebt die Quest Eine Audienz beim König ab
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Berton|r
    .turnin 386 >> Gebt die Quest Verbrechen lohnt sich nicht ab
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +|cRXP_WARN_Begin looking for a Gnomeregan group. You will shortly run Gnomeregan|r (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2928 >> Gyrobohrmatische Exkavation annehmen
    .target Shoni the Shilent
step << Mage
    #completewith next
    .zone Ironforge >> |cRXP_WARN_wirkt|r |T135757:0|t[Teleport: Ironforge]
step << !Mage
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
step
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tüftlermeister Oberfunks|r
    .turnin 2923 >> Gebt die Quest Tüftlermeister Overspark ab
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tüftlermeister Oberfunks|r, |cRXP_FRIENDLY_Hochtüftler Mekkatorque|r, |cRXP_FRIENDLY_Mechanikermeister Gussmuff|r und |cRXP_FRIENDLY_Klockmort Spannersplint|r
    .accept 2927 >> Der Tag danach annehmen
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >> Gebt die Quest Tüftlermeister Overspark ab
    .accept 2922 >> Rettet Techbots Hirn! annehmen
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Der große Verrat annehmen
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Datenrettung annehmen
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Grundlegende Artifixe annehmen
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Feuerbräu|r
    .goto Ironforge,18.10,51.60
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Verlasst Eisenschmiede
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ozzie Wechselvolt|r
    .turnin 2927 >> Gebt die Quest Der Tag danach ab
    .accept 2926 >> Gnogaine annehmen
    .target Ozzie Togglevolt
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Reist nach Gnomeregan
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>|cRXP_WARN_Benutzt|r |T132788:0|t[Leere bleierne Sammelphiole] |cRXP_WARN_auf einen|cRXP_ENEMY_ |rBestrahlten Eindringling|r oder |cRXP_ENEMY_Bestrahlten Plünderer|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bestrahlter Eindringling|r oder der |cRXP_ENEMY_Bestrahlter Plünderer|r müssen LEBENDIG sein, wenn ihr sie benutzt|r
    >>|cRXP_WARN_Diese Quest ist AUßERHALB der Instanz abzuschließen|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Reist zu |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
    >>|cRXP_WARN_Ihr bekommt eine Folgequest, wenn ihr in die Instanz geht|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ozzie Wechselvolt|r
    .turnin 2926 >> Gebt die Quest Gnogaine ab
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ozzie Wechselvolt|r
    .accept 2962 >> Das einzige Heilmittel ist mehr grünes Leuchten annehmen
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Reist nach Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>Tötet |cRXP_ENEMY_Troggs|r und |cRXP_ENEMY_Gnomes|r. Plündert sie für |T133215:0|t[|cRXP_LOOT_Weiße Lochkarte|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Tötet |cRXP_ENEMY_Techbot|r. Plündert ihn für |cRXP_LOOT_Erinnerungskern|r
    >>|cRXP_WARN_Diese Quest ist AUßERHALB der Instanz abzuschließen|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Tötet |cRXP_ENEMY_Troggs|r und |cRXP_ENEMY_Gnomes|r. Plündert sie für |T133215:0|t[|cRXP_LOOT_Weiße Lochkarte|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_Diese Quest ist AUßERHALB der Instanz abzuschließen|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_Benutzt die|r |T133215:0|t[|cRXP_LOOT_Weiße Lochkarte|r] |cRXP_WARN_bei|r |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>|cRXP_WARN_Diese Quest ist AUßERHALB der Instanz abzuschließen|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >> Betretet das Gnomeregan-Instanzportal
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Tötet alle |cRXP_ENEMY_Gnomeregan Mobs|r. Plündert sie für |cRXP_LOOT_Robomechanische Gedärme|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Benutzt die|r |T133215:0|t[|cRXP_LOOT_Gelbe Lochkarte|r] |cRXP_WARN_bei|r |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>Die konsolenähnliche Maschine befindet sich in der Gnomen-Sicherheitszone im untersten Geschoß, neben dem großen Rundsaal, wo die Schleime sind
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_Dies startet eine Eskortquest. |cRXP_FRIENDLY_Kernobee|r spawnt zufällig in dem Schlafsaal, direkt außerhalb der Gnomen-Sicherheitszone|r
    .accept 2904 >> Eine schöne Bescherung annehmen
    .unitscan Kernobee
step
.dungeon Gnomer
    >>Begleitet |cRXP_FRIENDLY_Kernobee|r zurück zum Anfang der Instanz
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Benutzt|r |T132788:0|t[Schwere bleierne Sammelphiole] |cRXP_WARN_auf |cRXP_ENEMY_Bestrahlt Schleim|r oder |cRXP_ENEMY_Bestrahlt Schrecken|r
    >>|cRXP_WARN_Die |cRXP_ENEMY_Bestrahlter Brühschleimer|r oder |cRXP_ENEMY_Bestrahlter Schrecken|r müssen LEBENDIG sein, wenn ihr sie benutzt|r
    >>|cRXP_WARN_Hinweis: Ihr müsst diese Quest innerhalb von 2 Stunden nach dem Erhalten des |T136006:0|t[Hochwirksame radioaktive Ablagerung] abgeben|r
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Öffnet |cRXP_PICK_Künstlicher Extrapolator|r. Sammelt von ihnen Beute wie |cRXP_LOOT_Grundlegende Artifixe|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>|cRXP_WARN_Benutzt die|r |T133215:0|t[|cRXP_LOOT_Blaue Lochkarte|r] |cRXP_WARN_bei|r |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>Der Punchograph befindet sich auf der schwebenden Plattform direkt neben dem |cRXP_ENEMY_Elektrokutor 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>|cRXP_WARN_Benutzt|r |T133215:0|t[|cRXP_LOOT_Rote Lochkarte|r] |cRXP_WARN_bei|r |cRXP_PICK_Matrix Punchograph 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>Tötet |cRXP_ENEMY_Robogenieur Thermaplugg|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>Öffnet |cRXP_PICK_Künstlicher Extrapolator|r. Sammelt von ihnen Beute wie |cRXP_LOOT_Grundlegende Artifixe|r
    >>Falls ihr diese Quest noch nicht beendet habt, geht zurück zu Orten, an denen ihr sie vorher geplündert habt, da sie nach ein paar Minuten wieder spawnen
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>Tötet alle |cRXP_ENEMY_Gnomeregan Mobs|r. Plündert sie für |cRXP_LOOT_Robomechanische Gedärme|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Benutzt|r |T135230:0|t[|cRXP_LOOT_Schmutzverkrusteter Ring|r] |cRXP_WARN_um die Quest zu starten|r
    .accept 2945 >> Schmutzverkrusteter Ring annehmen
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_Nehmt auf|r |T135230:0|t[|cRXP_LOOT_Schmutzverkrusteter Ring|r] |cRXP_WARN_zu |cRXP_PICK_Der Funkelmat 5200|r in die Saubere Zone|r
    *Ihr müsst zurück zur Sauberen Zone neben dem Instanzeingang. Stellt sicher, dass euch eure Kameraden auf dem Weg zurück helfen
    .turnin 2945 >> Gebt die Quest Schmutzverkrusteter Ring ab
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>klickt den |cRXP_PICK_Der Funkelmat 5200|r noch einmal
    .accept 2947 >> Akzeptiert die Quest Die Rückkehr des Rings
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >> Ruhestein nach Eisenschmiede
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Verlasst Eisenschmiede
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ozzie Wechselvolt|r
    .turnin 2962 >> Gebt die Quest Das einzige Heilmittel ist mehr grünes Leuchten ab
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Binjy Featherwhistle|r und |cRXP_FRIENDLY_Milli Federpfiff|r
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Kauft|r |T132247:0|t[|cFF0070FFRoboschreiter|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Veron Bernruh|r und |cRXP_FRIENDLY_Ultham Eisenhorn|r
    .vendor >>|cRXP_BUY_Kauft|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Lauf nach Ironforge
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Gebt die Quest Die Rückkehr des Rings ab
    .accept 2948 >> Gnomenverbesserungen annehmen
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_Falls ihr in der Lage seid einen|r |T133215:0|t[Silber Barren] |cRXP_WARN_und|r |T134105:0|t[Moosachat] |cRXP_WARN_zu erhalten, gebt die Quest ab. Wenn nicht, brecht sie ab|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >> Gebt die Quest Gnomen-Verbesserungen ab
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tüftlermeister Oberfunks|r, |cRXP_FRIENDLY_Hochtüftler Mekkatorque|r, |cRXP_FRIENDLY_Mechanikermeister Gussmuff|r und |cRXP_FRIENDLY_Klockmort Spannersplint|r
    .turnin -2922,1 >> Gebt die Quest Rettet Techbots Hirn! ab
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >> Gebt die Quest Der große Verrat ab
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >> Gebt die Quest Datenrettung ab
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >> Gebt die Quest Grundlegende Artifixe ab
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fliegt ins Sumpfland
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 27-27 Sumpfland
#next 29-30 Eschental

step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Gebt die Quest Klauen aus der Tiefe ab
    .accept 281 >> Waren-Wiederbeschaffung annehmen
    .target Karl Boran
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Gebt die Quest Tägliche Lieferung ab
    .turnin 484 >> Gebt die Quest Häute junger Krokilisken ab
    .accept 471 >> Lehrlingspflichten annehmen
    .target James Halloran
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .accept 289 >> Die verfluchte Crew annehmen
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Glorin Stahlbraue|r
    .turnin 270 >> Die Verlorene Flotte abgeben
    .accept 321 >> Lichtgeschmiedetes Eisen annehmen
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    .target Innkeeper Helbrek
    .home >> Setzt euren Ruhestein im Hafen von Menethil
    .bindlocation 2104
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Gebt die Quest Stochern im Brühschlamm ab
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Stochern im Schlamm annehmen
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harlo Barnabas|r
    .accept 472 >> Der Fall von Dun Modr annehmen
step
    .goto Wetlands,10.0,56.8
    .target Valstag Ironjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r (NOT TRANSLATED IN :deDE YET)
    .accept 473 >> Accept Report to Captain Stoutfist (NOT TRANSLATED IN :deDE YET)
    .isQuestAvailable 473
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Geh nach oben in der Festung in Menethil
step
    .goto Wetlands,9.86,57.48
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hauptmann Starkfaust|r
    .turnin 473 >> Gebt die Quest Meldung bei Captain Stoutfist ab
    .isOnQuest 473
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hauptmann Starkfaust|r
    .accept 464 >> Kriegsflaggen annehmen
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tarrel Felsweber|r
    .turnin 306 >> Gebt die Quest Auf der Suche nach dem Ausgrabungstrupp ab
step
    .isOnQuest 943
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Töte |cRXP_ENEMY_Scheckiger Raptor|r und |cRXP_ENEMY_Scheckiger Kreischer|r. Loote sie für den |cRXP_LOOT_Stein von Relu|r
    >>|cRXP_WARN_If you do not find this by the time you have finished killing 10 of each, skip it. You will complete it later|r (NOT TRANSLATED IN :deDE YET)
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .mob +Mottled Raptor
    .mob +Mottled Screecher
step
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Töte |cRXP_ENEMY_Scheckiger Raptor|r und |cRXP_ENEMY_Scheckiger Kreischer|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Klick auf das |cRXP_PICK_Beschädigte Kiste|r auf dem Boden
    .turnin 281 >> Gebt die Quest Waren-Wiederbeschaffung ab
    .accept 284 >> Die Suche geht weiter annehmen
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Klick auf das |cRXP_PICK_Versiegeltes Fass|r auf dem Boden
    .turnin 284 >> Gebt die Quest Die Suche geht weiter ab
    .accept 285 >> Suche in weiteren Hütten annehmen
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Klick auf das |cRXP_PICK_Halb vergrabenes Fass|r auf dem Boden
    .turnin 285 >> Gebt die Quest Suche in weiteren Hütten ab
    .accept 286 >> Rückgabe der Statuette annehmen
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Töte |cRXP_ENEMY_Verfluchter Seemann|r, |cRXP_ENEMY_Verfluchter Marinesoldat|r und |cRXP_ENEMY_Erster Maat Snellig|r. Loote seine |cRXP_LOOT_Schnupftabakdose|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>Töte |cRXP_ENEMY_Riesiger Sumpflankrokilisk|r. Loote sie für ihre |cRXP_LOOT_Haut|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>Töte die |cRXP_ENEMY_Mooshäute|r. Loote sie für ihre |cRXP_LOOT_Kunstlosen Feuersteine|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,44.25,25.61
    >>Töte |cRXP_ENEMY_Purpurroter Schlamm|r, |cRXP_ENEMY_Monströser Schlamm|r und |cRXP_ENEMY_Schwarzer Schlamm|r. Loote sie für |cRXP_LOOT_Sidas Tasche|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze
step
    #loop
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .goto Wetlands,30.8,31.0,80,0
    .goto Wetlands,37.8,29.6,80,0
    .goto Wetlands,43.0,33.2,80,0
    >>Töte die |cRXP_ENEMY_Mooshäute|r. Loote sie für ihre |cRXP_LOOT_Kunstlosen Feuersteine|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>Töte |cRXP_ENEMY_Orks der Dragonmaw|r. Loote sie für ihre |cRXP_LOOT_Kriegsflaggen|r
    >>|cRXP_WARN_Sei dir bewusst, dass die|cRXP_ENEMY_Räuber des Drachenmals |r dich mit |r [Netz] nerven werden
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    #completewith next
    .goto 1437/0,-1993.600,-3498.400,20 >> Take the shortcut to Whelgar's Excavation Site (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 1036,1 -- angerfang encampment (orcs)
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormer Eisenzopf|r
    .turnin 294 >>Gebt die Quest Ormers Rache ab
    .accept 295 >>Ormers Rache annehmen
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Whelgar|r
    .accept 299 >> Enthüllung der Vergangenheit annehmen
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Loote |cRXP_LOOT_Flagonguts Fossil|r auf dem Boden
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>Öffne die |cRXP_PICK_Uralte Relikte|r und die |cRXP_PICK_Lockere Erde|r. Loote sie für die |cRXP_LOOT_Fragmente|r
    >>|cRXP_WARN_Die |cRXP_LOOT_Fragmente|r spawnen zufällig auf der Ausgrabungsstätte|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Töte |cRXP_ENEMY_Scheckige Sensenklaue|r und |cRXP_ENEMY_Scheckiger Scharfzahn|r. Loote sie für den |cRXP_LOOT_Stein von Relu|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .isOnQuest 943
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Töte |cRXP_ENEMY_Scheckige Sensenklaue|r und |cRXP_ENEMY_Scheckiger Scharfzahn|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormer Eisenzopf|r
    .turnin 295 >>Gebt die Quest Ormers Rache ab
    .accept 296 >>Ormers Rache annehmen
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Whelgar|r
    .turnin 299 >>Gebt die Quest Enthüllung der Vergangenheit ab
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>Töte |cRXP_ENEMY_Scheckige Sensenklaue|r und |cRXP_ENEMY_Scheckiger Scharfzahn|r. Loote sie für den |cRXP_LOOT_Stein von Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Töte |cRXP_ENEMY_Sarlatan|r. Loote ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Er ist normalerweise auf dem Hügel über der Hauptgrabungsstelle, aber kann manchmal runterlaufen|r
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step
    #label FragmentDone
    #loop
    .goto Wetlands,34.32,51.79,40,0
    .goto Wetlands,35.73,49.06,40,0
    .goto Wetlands,33.86,46.85,40,0
    .goto Wetlands,34.91,44.22,40,0
    .goto Wetlands,36.62,42.16,40,0
    >>Öffne die |cRXP_PICK_Uralte Relikte|r und die |cRXP_PICK_Lockere Erde|r. Loote sie für die |cRXP_LOOT_Fragmente|r
    >>|cRXP_WARN_Die |cRXP_LOOT_Fragmente|r haben zufällige Spawnpoints in der Ausgrabungsstätte, inklusive dem erhöhten Terrain, wo|cRXP_ENEMY_Sarlatan|r ist|r
    >>|cRXP_WARN_Schau auch hinter dem, auf deiner Karte markiertem, großen Baum nach|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Töte |cRXP_ENEMY_Scheckige Sensenklaue|r und |cRXP_ENEMY_Scheckiger Scharfzahn|r. Loote sie für den |cRXP_LOOT_Stein von Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
    .isOnQuest 943
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormer Eisenzopf|r
    .turnin 296 >>Gebt die Quest Ormers Rache ab
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Whelgar|r
    .turnin 299 >>Gebt die Quest Enthüllung der Vergangenheit ab
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rethiel der Sumpfhüter|r
    .turnin 277 >> Gebt die Quest Feuer-Tabu ab
    .target Rethiel the Greenwarden
    .accept 275 >> Schwärendes Land annehmen
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rethiel der Sumpfhüter|r
    .target Rethiel the Greenwarden
    .accept 275 >> Schwärendes Land annehmen
step
    .goto Wetlands,64.78,75.31
    >>Loote die |cRXP_LOOT_Bisamwurzel|r auf dem Boden
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >> Benutz den Ruhestein zum Hafen von Menethil
	>>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Gehe die Treppe hoch zu |cRXP_FRIENDLY_Archäologe Flagongut|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologe Magenbitter|r
    .turnin 943 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .turnin 289 >> Gebt die Quest Die verfluchte Crew ab
    .accept 290 >> Brechen des Fluchs annehmen
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Gebt die Quest Stochern im Brühschlamm ab
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Gebt die Quest Rückgabe der Statuette ab
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Gebt die Quest Lehrlingspflichten ab
    .target James Halloran
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Geh nach oben in der Festung in Menethil
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hauptmann Starkfaust|r
    .turnin 464 >> Turn in War Banners (NOT TRANSLATED IN :deDE YET)
    .accept 465 >> Nek'roshs Schachzug annehmen
    .target Captain Stoutfist
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Run up the mast of the ship (NOT TRANSLATED IN :deDE YET)
    >>Töte |cRXP_ENEMY_Kapitän Halyndor|r. Loote ihn für den |cRXP_LOOT_Geldkasettenschlüssel der INTREPID|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Schwimm durch das große Loch in der Seite des Schiffs
    >>Klicke die |cRXP_PICK_Verschlossene Geldkassette der Intrepid|r auf dem Boden
    .turnin 290 >>Gebt die Quest Brechen des Fluchs ab
    .accept 292 >>Das Auge von Paleth annehmen
step
    #loop
    .goto Wetlands,27.6,37.2,50,0
    .goto Wetlands,40.8,32.8,50,0
    .goto Wetlands,46.6,29.6,50,0
    .goto Wetlands,48.8,37.2,50,0
    .goto Wetlands,54.8,37.8,50,0
    .goto Wetlands,27.6,37.2,0
    .goto Wetlands,40.8,32.8,0
    .goto Wetlands,46.6,29.6,0
    .goto Wetlands,48.8,37.2,0
    .goto Wetlands,54.8,37.8,0
    .goto Wetlands,20.72,28.74,50,0
    >>Töte |cRXP_ENEMY_Moorkrabbler|r
    >>|cRXP_ENEMY_Moorkrabbler|r |cRXP_WARN_sind in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_an den Flussufern|r
    .complete 275,1 --12/12 Fen Creeper
    .mob Fen Creeper
    .isOnQuest 275
step
    .goto Wetlands,47.45,47.01
    >>Klick auf das |cRXP_PICK_katapult der Dragonmaw|r
    .turnin 465 >>Gebt die Quest Nek'roshs Schachzug ab
    .accept 474 >>Sieg über Nek'rosh annehmen
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rethiel der Sumpfhüter|r
    .turnin 275 >>Gebt die Quest Schwärendes Land ab
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    #completewith next
    .goto 1437/0,-2673.700,-3708.900,45,0
    .goto 1437/0,-2601.200,-3707.000,40 >> |cRXP_WARN_Approach |cRXP_ENEMY_Häuptling Nek'rosh|r from the rear. It will be easier to pull some of the |cRXP_ENEMY_Orcs|r surrounding him|r
step
    .goto Wetlands,53.459,54.663
    >>Töte |cRXP_ENEMY_Häuptling Nek'rosh|r. Loote ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Langzopf der Grimmige|r
    .turnin 472 >>Gebt die Quest Der Fallen von Dun Modr ab
    .accept 304 >> Eine grausige Aufgabe annehmen
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Der Dunkeleisenkrieg annehmen
    .target Motley Garmason
step
    #completewith next
    >>Töte |cRXP_ENEMY_Dunkeleisenzwerge|r, |cRXP_ENEMY_Tunnelgräber der Dunkeleisenzwerge|r, |cRXP_ENEMY_Saboteur der Dunkeleisenzwerge|r und |cRXP_ENEMY_Demolierer der Dunkeleisenzwerge|r
    >>|cRXP_ENEMY_Saboteur der Dunkeleisenzwerge|r |cRXP_WARN_casten|r |T135826:0|t[Pionierexplosion] |cRXP_WARN_bevor sie Sterben, was eine Menge Feuerschaden verursacht|r
    >>|cRXP_ENEMY_Demolierer der Dunkeleisenzwerge|r |cRXP_WARN_Wirft durchgehend|r |T135826:0|t[Bomben] |cRXP_WARN_aus der Entfernung|r
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r (NOT TRANSLATED IN :deDE YET)
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Töte |cRXP_ENEMY_Balgaras der Niederträchtige|r. Loote ihn für seine |cRXP_LOOT_Ohr|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Töte |cRXP_ENEMY_Dunkeleisenzwerge|r, |cRXP_ENEMY_Tunnelgräber der Dunkeleisenzwerge|r, |cRXP_ENEMY_Saboteur der Dunkeleisenzwerge|r und |cRXP_ENEMY_Demolierer der Dunkeleisenzwerge|r
    >>|cRXP_ENEMY_Saboteur der Dunkeleisenzwerge|r |cRXP_WARN_casten|r |T135826:0|t[Pionierexplosion] |cRXP_WARN_bevor sie Sterben, was eine Menge Feuerschaden verursacht|r
    >>|cRXP_ENEMY_Demolierer der Dunkeleisenzwerge|r |cRXP_WARN_Wirft durchgehend|r |T135826:0|t[Bomben] |cRXP_WARN_aus der Entfernung|r
    >>|cRXP_WARN_Stay at Direforge Hill to the east. Avoid killing them at Dun Modr if possible|r (NOT TRANSLATED IN :deDE YET)
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Langzopf der Grimmige|r
    .turnin 304 >> Gebt die Quest Eine grausige Aufgabe ab
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Gebt die Quest Der Dunkeleisenkrieg ab
    .target Motley Garmason
    .isQuestComplete 303
step
    #completewith MenethilTurnins2
    .subzone 150 >> Laufe zum Hafen von Menethil
    .subzoneskip 2104
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hauptmann Starkfaust|r eine Etage drüber
    .goto Wetlands,9.86,57.48
    .turnin 474 >> Gebt die Quest Sieg über Nek'rosh ab
    .target Captain Stoutfist
step
    #label MenethilTurnins2
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Glorin Stahlbraue|r
    .turnin 292 >>Gebt die Quest Das Auge von Paleth ab
    .accept 293 >>Die Reinigung des Auges annehmen
    .target Glorin Steelbrow
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 29-30 Eschental
#next 30-31 Wetlands

step
    #completewith next
    .goto Wetlands,5.429,57.485,25 >> Laufe zu den Docks am Hafen von Menethil
step
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    >>|cRXP_WARN_Level deine|r |T135966:0|t[Erste Hilfe]|cRXP_WARN_während du wartest|r
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    #completewith FSL
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Astranaar >> Fliege nach Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    .goto 1440/1,-300.900,2796.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .target Shindrell Swiftfire
    .accept 4581 >>Akzeptiert die Quest Kayneth Stillwind
step
    #label FSL
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
    .accept 1035 >> Der Himmelssturzsee annehmen
    .isQuestAvailable 1035
    .isQuestTurnedIn 1034
step
    #completewith ShamefulWaste
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Forest Song >> Fliegt nach Waldgesang
    .target Daelyshia
    .subzoneskip 2358 --Forest Song
step
    .goto 1440/1,-3149.800,2899.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrols slightly|r (NOT TRANSLATED IN :deDE YET)
    .target Gnarl
    .accept 9526 >>Die Rückeroberung des Dämonenhügels annehmen
step
    .goto 1440/1,-3215.500,2954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kayneth Stillwind|r
    .target Kayneth Stillwind
    .turnin 4581 >>Gebt die Quest Kayneth Stillwind ab
    .accept 1011 >>Akzeptiert die Quest Verlassenenkrankheit
    .accept 9519 >>Elunes Kelch annehmen
step
    .goto 1440/1,-3260.400,2966.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Luciel Sternwisper|r
    .target Sentinel Luciel Starwhisper
    .accept 9518 >>Agenten der Zerstörung annehmen
step
    .goto 1440/1,-3286.700,2996.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verteidiger Vedaar|r
    .target Vindicator Vedaar
    .accept 9516 >>Zerstört die Legion annehmen
step
    .goto 1440/1,-3323.700,3001.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .accept 1021 >>Elende Satyrn! Die Dryaden sind in Gefahr! annehmen
step
    #label ShamefulWaste
    .goto 1440/1,-3307.000,2949.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Architekt Nemos|r
    .target Architect Nemos
    .accept 9517 >>Eine schändliche Verschwendung annehmen
step
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jarrodenus|r
    .fp Azshara>> Hol den Flugpunkt für Azshara
    .target Jarrodenus
    .isOnQuest 1017
step
    #completewith next
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jarrodenus|r
    .fly Forest Song>> Fliegt nach Waldgesang
    .target Jarrodenus
    .subzoneskip 2358
    .subzoneskip 430
step
    .goto 1440/1,-2994.000,2793.600
    >>Loot the |cRXP_PICK_Chalice of Elune|r on the large monument (NOT TRANSLATED IN :deDE YET)
    .complete 9519,1 --|Chalice of Elune: 1/1
step
    #loop
    .goto 1440/1,-3023.600,2772.900,0
    .goto 1440/1,-2958.200,2698.000,15,0
    .goto 1440/1,-2914.100,2763.800,15,0
    .goto 1440/1,-3023.600,2772.900,15,0
    .goto 1440/1,-2974.000,2686.500,15,0
    >>Loot the |cRXP_PICK_Tainted Wood|r on the ground. They look like small bundles of wood next to the trees around Satyrnaar (NOT TRANSLATED IN :deDE YET)
    .complete 9517,2 --|Satyrnaar Fel Wood: 5/5
step
#completewith next
#optional
    >>Kill |cRXP_ENEMY_Schredder des Kriegshymnenklans|r, |cRXP_ENEMY_Horde Deforesters|r und |cRXP_ENEMY_Horde Scouts|r
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood (NOT TRANSLATED IN :deDE YET)
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    >>Töte |cRXP_ENEMY_Vorarbeiter Gorthak|r
    .goto 1440/1,-3419.300,2383.000
    .complete 9518,1 --|Overseer Gorthak slain: 1/1
    .mob Overseer Gorthak
step
#loop
    .goto 1440/1,-3329.900,2429.100,0
    .goto 1440/1,-3345.300,2238.000,40,0
    .goto 1440/1,-3141.600,2410.000,40,0
    .goto 1440/1,-3306.200,2618.000,40,0
    .goto 1440/1,-3412.900,2651.100,40,0
    >>Kill |cRXP_ENEMY_Schredder des Kriegshymnenklans|r, |cRXP_ENEMY_Horde Deforesters|r und |cRXP_ENEMY_Horde Scouts|r
    >>Loot the |cRXP_PICK_Lumber Piles|r on the ground. They look like stacked piles of wood (NOT TRANSLATED IN :deDE YET)
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    #completewith demons
    >>Töte |cRXP_ENEMY_Mannorocpeitscherin|r, |cRXP_ENEMY_Streunende Teufelswache|r and |cRXP_ENEMY_Sengende Höllenbestie|r. Loot them for the |T134943:0|t[|cRXP_LOOT_Teuflische Pläne|r]
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_Teuflische Pläne|r] |cRXP_WARN_to begin the quest|r
    >>|cRXP_WARN_This item has a very low drop rate, don't go out of your way to get it|r (NOT TRANSLATED IN :deDE YET)
    .collect 23777,1,9520
    .accept 9520 >> Teuflische Pläne annehmen
    .mob Roaming Felguard
    .mob Searing Infernal
    .mob Mannoroc Lasher
    --Seems low drop rate? might be worth skipping if bad luck
step
#label dirtmound
#sticky
#loop
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-2993.200,1968.600,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3026.300,2057.500,0
    >>Klick auf das |cRXP_PICK_Fertile Dirt Mounds|r auf dem Boden
    .complete 9526,1
step
#label demons
    .goto 1440/1,-3122.900,2067.800,40,0
    .goto 1440/1,-2950.700,2155.900,40,0
    .goto 1440/1,-3057.000,1953.400,40,0
    .goto 1440/1,-3155.700,1903.900,40,0
    .goto 1440/1,-3157.000,1725.400,40,0
    .goto 1440/1,-3061.900,1624.000,40,0
    .goto 1440/1,-3147.000,1935.900,40,0
    .goto 1440/1,-3168.500,1855.500,0
    >>Kill |cRXP_ENEMY_Mannorocpeitscherin|r, |cRXP_ENEMY_Streunende Teufelswache|r und |cRXP_ENEMY_Sengende Höllenbestie|r
    .complete 9516,1 --|Mannoroc Lasher slain: 6/6
    .mob +Mannoroc Lasher
    .complete 9516,2 --|Roaming Felguard slain: 6/6
    .mob +Roaming Felguard
    .complete 9516,3 --|Searing Infernal slain: 6/6
    .mob +Searing Infernal
step
#optional
    .use 23777 >>|cRXP_WARN_Use the|r |T134943:0|t[|cRXP_LOOT_Teuflische Pläne|r] |cRXP_WARN_to begin the quest|r
    .collect 23777,1,9520
    .accept 9520 >> Teuflische Pläne annehmen
    .itemcount 23777,1
step
#requires dirtmound
    .goto Ashenvale,75.29,72.00
    >>Plündert die |cRXP_LOOT_Krankheitsflasche|r auf dem Tisch
    >>Seid vorsichtig, denn die |cRXP_WARN_Verlassenen|cRXP_ENEMY_, die es verteidigen, können in|r |T132320:0|t[Verstohlenheit]|r sein
    .complete 1011,1 -- Bottle of Disease (1)
step
    .goto Ashenvale,66.649,82.189
    >>Töte die |cRXP_ENEMY_Schattendickichtorakel|r. Plündert sie für den |cRXP_LOOT_Gefallenen Mondstein|r
    .complete 1035,1
    .mob Shadethicket Oracle
    .isOnQuest 1035
step
    #requires slimes
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Travel to The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Ascend Dreadmist Peak. Follow the Arrow to the top (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1017
step
    .goto The Barrens,48.22,19.15
    >>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loote ihn für seine |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only level 10-12|r (NOT TRANSLATED IN :deDE YET)
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.98,20.01,20,0
    .goto The Barrens,50.42,21.93,25,0
    .goto The Barrens,51.60,24.87,25,0
    .goto The Barrens,58.76,25.28,60,0
    .goto The Barrens,63.08,37.16
    .subzone 392>> Travel to Ratchet. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .disablecheckbox
    .fly Forest Song >> Fliegt nach Waldgesang
    .target Bragok
    .isOnQuest 1017
    .zoneskip The Barrens,1

step
    .goto 1440/1,-3215.400,2954.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kayneth Stillwind|r
    .target Kayneth Stillwind
    .turnin 9519 >>Turn in The Lost Chalice (NOT TRANSLATED IN :deDE YET)
    .turnin 1011 >>Gebt die Quest Verlassenenkrankheit ab
step
    .goto 1440/1,-3262.000,2967.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Luciel Sternwisper|r
    .target Sentinel Luciel Starwhisper
    .turnin 9518 >>Turn in Agents of Destruction (NOT TRANSLATED IN :deDE YET)
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verteidiger Vedaar|r
    .target Vindicator Vedaar
    .turnin 9516 >>Turn in Destroy the Legion (NOT TRANSLATED IN :deDE YET)
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verteidiger Vedaar|r
    .target Vindicator Vedaar
    .turnin 9520 >>Turn in Diabolical Plans (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 9520
step
    .goto 1440/1,-3154.100,2898.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrols slightly|r (NOT TRANSLATED IN :deDE YET)
    .target Gnarl
    .turnin 9517 >>Turn in A Shameful Waste (NOT TRANSLATED IN :deDE YET)
    .turnin 9526 >>Turn in Reclaiming Felfire Hill (NOT TRANSLATED IN :deDE YET)
step
    .goto 1440/1,-2817.500,2949.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anilia|r
    .target Anilia
    .turnin 1021 >>Gebt die Quest Elende Satyrn! Die Dryaden sind in Gefahr! ab
    .accept 1031 >>Der Zweig des Cenarius annehmen
step
    .goto Ashenvale,77.99,42.41
    >>Kill |cRXP_ENEMY_Geltharis|r. Loote ihn für seine |cRXP_LOOT_Branch of Cenarius|r
    .complete 1031,1
    .mob Geltharis
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Gebt die Quest Der Zweig des Cenarius ab
    .accept 1032 >> Satyrn schlachten! annehmen
    .xp <31,1
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Gebt die Quest Der Zweig des Cenarius ab
step
    >>Tötet |cRXP_ENEMY_Satyre|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    .goto 1440/1,-2818.000,2925.500
    .complete 1032,1 --|Satyr Horns: 16/16
    --Kill Xavian satyrs
    .isOnQuest 1032
step
    .goto 1440/1,-3323.100,3001.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1032 >>Gebt die Quest Satyrn schlachten! ab
    .isQuestComplete 1032
step
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Suralais Windstreif|r
    .target Suralais Farwind
    .goto 1440/1,-3205.700,3001.200
    .fly Astranaar >>Fliege nach Astranaar
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
    .turnin 1035 >> Gebt die Quest Fallenskysee ab
    .isQuestComplete 1035
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .turnin 1017 >> Turn in Mage Summoner (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[Light of Elune]
    >>|T134754:0|t[Light of Elune]|cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r (NOT TRANSLATED IN :deDE YET)
    .target Sentinel Velene Starstrike
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .hs >> Benutzt euren Ruhestein zum Menethil
	>>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .zoneskip Wetlands
    .bindlocation 2104,1 --HS in Menethil
step
    #optional
    #completewith next
    .subzone 415 >>Reist nach Astranaar zurück
step
    #optional
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Daelyshia
    .zoneskip Darkshore
    .bindlocation 2104 --HS not in Menethil
step
    #optional
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr auf das Boot nach Hafen von Menethil wartet|r
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .bindlocation 2104 --HS not in Menethil
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 30-31 Wetlands
#next 30-32 Dämmerwald

step
    #optional
    #completewith BlessedArm
    .zone Wetlands >> Reist ins Sumpfland
step
    >>Klick auf die |cRXP_PICK_Durchnässte Truhe|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Gebt die Quest Lichtgeschmiedetes Eisen ab
    .accept 324 >>Die verlorenen Blöcke annehmen
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Töte |cRXP_ENEMY_Räuber der Blaukiemen|r. Loote sie für |cRXP_LOOT_Barren|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #label BlessedArm
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Glorin Stahlbraue|r
    .turnin 324 >>Gebt die Quest Die verlorenen Blöcke ab
    .accept 322 >>Gesegnete Waffe annehmen
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    #completewith PleaTurnin
    .subzone 205 >> Lauf nach Dun Modr
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Der Thandolübergang annehmen
    .target Rhag Garmason
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Head down the spiral staircase on the bridge (NOT TRANSLATED IN :deDE YET)
    >>Klick auf |cRXP_PICK_Ebenezer Rustlockes Leichnam|r
    .turnin 631 >>Gebt die Quest Der Thandol-Übergang ab
    .accept 632 >>Der Thandolübergang annehmen
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Gebt die Quest Der Thandol-Übergang ab
    .accept 633 >>Der Thandolübergang annehmen
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dunst MacKreel|r
    >>|cRXP_WARN_Spring erst auf die unsichtbare Kette runter, dann auf den Kaputten Brückenpfeiler. Alle Klassen können diesen Sprung machen. Wenn du es nicht schaffst, überspringe diesen Schritt|r
    .accept 647 >>MacKreels Fusel annehmen
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Click here for a video guide|r (NOT TRANSLATED IN :deDE YET)
step
    .goto Arathi Highlands,44.28,92.877
    >>Tauche Unterwasser
    >>Öffne den |cRXP_PICK_Durchnässter Brief|r. Loote ihn für den |T133469:0|t[|cRXP_LOOT_Durchnässter Umschlag|r]
    >>|cRXP_WARN_Benutz den |T133469:0|t[|cRXP_LOOT_Durchnässten Umschlag|r] um die Quest zu starten|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Sully Balloos Brief annehmen
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Schwimm Richtung Osten zur Rampe
step
    .goto Arathi Highlands,48.789,88.058
    >>Klick auf das |cRXP_PICK_Sprengstofflager|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Gebt die Quest Der Thandol-Übergang ab
    .accept 634 >>Hilfegesuch an die Allianz annehmen
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Reise zur Zuflucht
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Captain Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Gebt die Quest Hilfegesuch an die Allianz ab
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Cedrik Prosa|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Erlernt die Flugroute im Arathihochland
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    #completewith SSFP
    .goto 1417/0,-2382.900,-1451.500,70,0
    .goto 1417/0,-1775.100,-1275.000,70,0
    .goto 1424/0,-1548.300,-804.400,70,0
    .subzone 271 >> Reist nach Süderstade
    >>|cRXP_WARN_NOTE: As you travel there along the road, watch out for the |cRXP_ENEMY_Forsaken Courier|r. It is a 5 pack of mobs which patrols the road you will be on. Avoid them if you see them|r (NOT TRANSLATED IN :deDE YET)
    .mob Forsaken Courier
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Braumeister Bilger|r im Keller
    >>|cRXP_WARN_Falls ihr diese zeitlich begrenzte Quest nicht besteht, brecht sie ab und überspringt diesen Schritt|r
    .turnin 647 >>Gebt die Quest MacKreels Fusel ab
    .target Brewmeister Bilger
    .isOnQuest 647
step
    #optional
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Meister der Lehren Dibbs|r
    .turnin 538 >> Gebt die Quest Southshore ab
    .target Loremaster Dibbs
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Holt euch die Flugroute nach Süderstade
    .target Darla Harris
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>Head north along the stream killing |cRXP_ENEMY_Schnappkiefer|r along the way for their |cRXP_LOOT_Schildkrötenfleisch|r
    >>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Schildkrötenfleisch|r now|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    .mob Snapjaw
step
    #completewith next
    .zone Western Plaguelands >> Lauf in die Westlichen Pestländer
    >>|cRXP_WARN_NOTE: You may encounter a level 34 |cRXP_ENEMY_Mountain Lion|r on the way there. Just run away from it if you aggro it|r (NOT TRANSLATED IN :deDE YET)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Erlernt die Flugroute Westliche Pestländer
    .fly Ironforge >>Fliege nach Eisenschmiede << !Mage
    .target Bibilfaz Featherwhistle
step << Mage
    #completewith KingsTribute
    .zone Ironforge >> |cRXP_WARN_wirkt|r |T135757:0|t[Teleport: Ironforge]
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Weissager Javad|r
    .accept 9551 >> Akzeptiert die Quest Ruf der Luft
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Farseer Javad
step << Rogue/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Gebt die Quest Sully Balloos Brief ab
    .timer 17,Sully Balloo's Brief RP
    .accept 683 >> Sara Balloos Hilfegesuch annehmen
    .target Sara Balloo
step << Hunter/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kelv Sternhammer|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto 1455/0,-1269.700,-5047.600 << Warrior
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1718 >> Akzeptiert die Quest Der Inselbewohner << Warrior
    .target Regnus Thundergranite << Hunter
    .target Kelv Sternhammer << Warrior
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Langbart|r
    .accept 1179 >>Die Brüder Kupferbolz annehmen
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Thalgus Donnerfaust|r
    >>|cRXP_BUY_Kauft einen|r |T134402:0|t[|cRXP_FRIENDLY_Schweren Köcher|r]
	.collect 7371,1
    .target Thalgus Thunderfist
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_König Magni Bronzebart|r
    .turnin 683 >> Gebt die Quest Sara Balloos Hilfegesuch ab
    .accept 686 >> Ehrerbietung von einem König annehmen
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großsteinmetz Marmorstein|r
    .turnin 686 >> Gebt die Quest Ehrerbietung von einem König ab
    .accept 689 >> Ehrerbietung von einem König annehmen
    .target Grand Mason Marblesten
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Reist nach Kharanos und kauft euren|r |T132247:0|t[Roboschreiter] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Reist nach Gehöft Bernruh und kauft euren|r |T132248:0|t[Harrison Jones] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Binjy Featherwhistle|r und |cRXP_FRIENDLY_Milli Federpfiff|r
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Kauft|r |T132247:0|t[|cFF0070FFRoboschreiter|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Veron Bernruh|r und |cRXP_FRIENDLY_Ultham Eisenhorn|r
    .vendor >>|cRXP_BUY_Kauft|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Head Fliege nach Eisenschmiede
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Nimm die Bahn Richtung Sturmwind
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
    .bronzetube
    .target Billibub Cogspinner
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 30-32 Dämmerwald
#next 32-33 Flimmern Flats

step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2928 >> Gebt die Quest Gyrobohrmatische Exkavation ab
    .target Shoni the Shilent
    .isQuestComplete 2928
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Gebt die Quest Gesegnete Waffe ab
    .accept 325 >> Bewaffnet und bereit annehmen
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
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
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_läuft in und um die Kathedrale herum|r
    .accept 1274 >> Der vermisste Diplomat annehmen
    .target Thomas
    .isNotOnQuest 1274
    .isQuestAvailable 1274
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzbischof Benedictus|r
    .turnin 293 >> Gebt die Quest Die Reinigung des Auges ab
    .target Archbishop Benedictus
    .isOnQuest 293
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_läuft in und um die Kathedrale herum|r
    .accept 1274 >> Der vermisste Diplomat annehmen
    .target Thomas
    .isNotOnQuest 1274
    .isQuestAvailable 1274
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Gebt die Quest Gesegnete Waffe ab
    .accept 325 >> Bewaffnet und bereit annehmen
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2928 >> Gebt die Quest Gyrobohrmatische Exkavation ab
    .target Shoni the Shilent
    .isQuestComplete 2928
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>|cRXP_WARN_Wenn du ein [|cRXP_LOOT_Ein altes Geschichtsbuch|r] gefunden hast, kannst du es abgeben|r
    .accept 337 >> Ein altes Geschichtsbuch annehmen
    .turnin 337 >> Gebt die Quest Ein altes Geschichtsbuch ab
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    .accept 538 >> Akzeptiert die Quest Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bischof DeLavey|r
    .turnin 1274 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1241 >> Der vermisste Diplomat annehmen
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1242 >> Der vermisste Diplomat annehmen
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1243 >> Der vermisste Diplomat annehmen
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Newton Uferbach|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >> Pack folgende Items in deine Bank:
    >>|T134187:0|t[Bisamwurzel] -- 2784
    >>|T132765:0|t[Kiste mit Sturzhelmen] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauf die folgenden Items um sie später im Dämmerwald abzugeben
    >>|T133024:0|t[Bronzeröhre]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Duskwood>> Fliegt nach Dämmerwald
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ratsherr Mühlenstein|r
    .turnin 377 >> Gebt die Quest Verbrechen und Strafe ab
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr keine Bronzeröhre gefunden habt|r
    .accept 174 >> Seht zu den Sternen annehmen
    .turnin 174 >> Gebt die Quest Seht zu den Sternen ab
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Seht zu den Sternen annehmen
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Die blinde Mary|r
    .turnin 175 >> Gebt die Quest Seht zu den Sternen ab
    .accept 177 >> Seht zu den Sternen annehmen
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Tötet die |cRXP_ENEMY_Irrsinniger Ghul|r. Plündert sie für |cRXP_LOOT_Marys Handspiegel|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Irrsinniger Ghul|r könnte in der Kapelle sein oder draußen herumlaufen|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Gebt die Quest Seht zu den Sternen ab
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Seht zu den Sternen annehmen
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .accept 159 >> Akzeptiert die Quest Saftlieferung
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Trelayne|r
    .home >> Setzt euren Ruhestein im Dämmerwald
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    #optional
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .turnin 57 >> Gebt die Quest Die Nachtwache ab
    .target Commander Althea Ebonlocke
    .isQuestComplete 57
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .accept 231 >> Die Liebe einer Tochter annehmen
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .accept 58 >> Die Nachtwache annehmen
    .target Commander Althea Ebonlocke
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .accept 228 >> Akzeptiert die Quest Mor'Ladim
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .accept 231 >> Die Liebe einer Tochter annehmen
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüter Backus|r
    .turnin 1243 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1244 >> Der vermisste Diplomat annehmen
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >> Travel to the Eastvale Logging Camp (NOT TRANSLATED IN :deDE YET)
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 74 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 75 >> Die Legende von Stalvan annehmen
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Geht nach oben ins Haus
    >>Öffnet |cRXP_PICK_Truhe von Marshal Haggard|r. Plündert sie für |cRXP_LOOT_Eine verblasste Tagebuchseite|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 75 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 78 >> Die Legende von Stalvan annehmen
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Katie Weidmann|r und |cRXP_FRIENDLY_Randal Weidmann|r
    .vendor >>|cRXP_BUY_Kauft ein|r |T132261:0|t[|cFF0070FFPferd|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >> Ruhestein nach Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .turnin 78 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 79 >> Die Legende von Stalvan annehmen
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .turnin 79 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 80 >> Die Legende von Stalvan annehmen
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Amtmann Daltry|r
    .turnin 80 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 97 >> Die Legende von Stalvan annehmen
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 97 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 98 >> Die Legende von Stalvan annehmen
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Plündert die |cRXP_LOOT_Tilloaträne|r vom Boden
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >> Tötet |cRXP_ENEMY_Stalvan Mistmantle|r. Plündert ihn für seinen |cRXP_LOOT_Familienring|r
	>>|cRXP_ENEMY_Stalvan Dunstmantel|r |cRXP_WARN_hittet ganz schön hart. Kite ihn zurück ins Dorf und lass dir von den  |cRXP_FRIENDLY_Behütern|r helfen, falls benötigt|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Gebt die Quest Die Legende von Stalvan ab
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>> Fliegt nach Westfall
    .target Felicia Maline
step << !Shaman
    #completewith JuiceDelivery
    .goto Duskwood,28.10,31.46,100 >> Lauf in Richtung |cRXP_FRIENDLY_Abercrombie|r im Dämmerwald
step << !Shaman
    #completewith JuiceDelivery
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to |cRXP_FRIENDLY_Abercrombie|r. Loot them for |cRXP_LOOT_Vials of Spider Venom|r (NOT TRANSLATED IN :deDE YET)
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    #label JuiceDelivery
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Gebt die Quest Saftlieferung ab
    .accept 133 >> Akzeptiert die Quest Ein Ghulbildnis
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Tötet |cRXP_ENEMY_Seuchenverbreiter|r. Plündert sie für ihre |cRXP_LOOT_Ghulrippe|r und |cRXP_LOOT_Ghulfangzahn|r
    >>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r (NOT TRANSLATED IN :deDE YET)
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Gebt Ein Ghulbildnis ab
    .accept 134 >> Akzeptiert die Quest Ogerdiebe
    .target Abercrombie
step
    #completewith next
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r on the way to the Defias House (NOT TRANSLATED IN :deDE YET)
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Öffnet die |cRXP_PICK_Geldkassette der Defias|r. Plündert sie für die |cRXP_LOOT_Liste der Defias|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Plündert |cRXP_LOOT_Calvinius' Kiste|r auf dem Boden
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> BETRETET die Vul'Gol-Ogerhöhle
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Tötet |cRXP_ENEMY_Zzarc' Vul|r. Plündert ihn für |cRXP_LOOT_Ogermonokel|r
    >>|cRXP_ENEMY_Zzarc'Vul|r |cRXP_WARN_hat 2 Spawnpunkte in der Höhle|r
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Tötet |cRXP_ENEMY_Junges einer Schwarzen Witwe|r und |cRXP_ENEMY_Aaskrabbler|r. Plündert sie für ihr |cRXP_LOOT_Phiole mit Spinnengift|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Gebt Ogerdiebe ab
    .accept 160 >> Akzeptiert die Quest Ein Brief für den Bürgermeister
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .turnin 231 >> Gebt die Quest Die Liebe einer Tochter ab
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Gebt die Quest Bewaffnet und bereit ab
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 55 >> Morbent Fel annehmen
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group 3
    #completewith next
    >>Kämpf dich in den ersten Stock des Hauses hoch
    .cast 8913 >>|cRXP_WARN_Leg|r |T135142:0|t[Morbents Bann] |cRXP_WARN_in deiner Offhand an|r
    >>|cRXP_WARN_Benutz|r |T135142:0|t[MorbentsBann] |cRXP_WARN_auf|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_um ihn zu schwächen|r
    >>|cRXP_WARN_Erinnert euch, eure Waffe/Nebenhand-Slot nach dem Abschwächen auszurüsten|r
    .use 7297
step
    .group 3
    .goto Duskwood,16.90,33.40
    >>Töte |cRXP_ENEMY_Morbent Fel|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Gebt die Quest Morbent Fel ab
    .isQuestComplete 55
    .target Sven Yorgen
step
    .group 3
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Tötet |cRXP_ENEMY_Mor'Ladim|r. Plündert ihn für seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_is a level 30 Elite which hits very hard but moves quite slow. Try to kite him around any large trees if required|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You will have another chance later to complete this step if you're unable to find a group now|r (NOT TRANSLATED IN :deDE YET)
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .isOnQuest 181,101,78,58,160
    .hs >> Ruhestein nach Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >> Benutzt |T136010:0|t[Astraler Rückruf] zurück zu Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
    >>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Fliege nach Dunkelhain
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schankwart Smitts|r
    .turnin 78 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 79 >> Die Legende von Stalvan annehmen
    .target Tavernkeep Smitts
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 228 >> Gebt die Quest Mor'Ladim ab
    .accept 229 >> Die überlebende Tochter annehmen
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüterin Ladimore|r
    >>|cRXP_FRIENDLY_Behüterin Ladimore|r |cRXP_WARN_patrouilliert in Dunkelhain|r
    .turnin 229 >> Gebt die Quest Die überlebende Tochter ab
    .accept 231 >> Die Liebe einer Tochter annehmen
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    >>|cRXP_WARN_Sie kann tot sein oder gerade mit|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_kämpfen, wenn er Dunkelhain angreift. Falls das passiert, erwägt, Mobs in der Nähe der Stadt zu farmen, bis sie respawnt, oder wechselt den Layer (falls möglich)|r
    .turnin 58 >> Gebt die Quest Die Nachtwache ab
    .turnin 79 >> Gebt die Quest Die Legende von Stalvan ab << !Shaman
    .accept 80 >> Die Legende von Stalvan annehmen << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Amtmann Daltry|r
    .turnin 80 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 97 >> Die Legende von Stalvan annehmen
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Ello Schwarzhaupt|r
    .turnin 160 >> Gebt Ein Brief für den Bürgermeister ab
    .accept 251 >> Übersetzung von Calvinius' Notiz annehmen
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Gebt die Quest Übersetzung von Calvinius' Notiz ab
    .target Sirra Von'Indi
    .accept 401 >> Akzeptiert die Quest Wartet, bis Sirra fertig ist
    .turnin 401 >> Gebt die Quest Wartet, bis Sirra fertig ist ab
    .accept 252 >> Akzeptiert die Quest Übersetzung für Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Ello Schwarzhaupt|r
    .turnin 252 >> Gebt die QUest Übersetzung für Ello ab
    .target Lord Ello Ebonlocke
step
    .group
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Ello Schwarzhaupt|r
    .accept 253 >> Akzeptiert die Quest Braut des Einbalsamierers
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Werft den |T134939:0|t[Übersetzten Brief des Einbalsamierers] weg, ihr braucht ihn nicht mehr.
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandantin Althea Schwarzhaupt|r
    .turnin 97 >> Gebt die Quest Die Legende von Stalvan ab
    .accept 98 >> Die Legende von Stalvan annehmen
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Gebt die Quest Seht zu den Sternen ab
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >> Gebt Das Totem des Gegenschlages ab
    .target Madame Eva
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behüter Backus|r
    .turnin 1244 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1245 >> Der vermisste Diplomat annehmen
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Plündert die |cRXP_LOOT_Tilloaträne|r vom Boden
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >> Tötet |cRXP_ENEMY_Stalvan Mistmantle|r. Plündert ihn für seinen |cRXP_LOOT_Familienring|r
	>>|cRXP_ENEMY_Stalvan Dunstmantel|r |cRXP_WARN_hittet ganz schön hart. Kite ihn zurück ins Dorf und lass dir von den  |cRXP_FRIENDLY_Behütern|r helfen, falls benötigt|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Gebt die Quest Die Legende von Stalvan ab
    .target Madame Eva
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .accept 221 >> Akzeptiert die Quest Worgen in den Wäldern
    .target Calor
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Tötet |cRXP_ENEMY_Dunkelläufer der Nachtheuler|r
    >>|cRXP_ENEMY_Dunkelläufer der Nachtheuler|r |cRXP_WARN_laufen sehr schnell und haben eine höhere aggro Reichweite|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Gebt die Quest Worgen in den Wäldern ab
    .accept 222 >> Akzeptiert die Quest Worgen in den Wäldern
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >> Tötet |cRXP_ENEMY_Nightbane Ekel Kiefer|r und |cRXP_ENEMY_Besudelter Nachtheuler|r
	>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r (NOT TRANSLATED IN :deDE YET)
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >> Lauf südlich ins Schlingendorntal
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >> Get the Rebel Camp flight path (NOT TRANSLATED IN :deDE YET)
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Haltet Ausschau nach dem besonderen |cRXP_FRIENDLY_Gefreiter Thorsen|r-Ereignis. Er patrouilliert alle 30 Minuten die Straße vom Lager der Rebellen hinunter|r
    >>|cRXP_FRIENDLY_Gefreiter Thorsen|r |cRXP_WARN_wird von 2 der |cRXP_ENEMY_Kurzens Agenten|r angegriffen. Falls ihr dieses Ereignis nicht seht, ignoriert diesen Schritt|r
    >>Töte alle |cRXP_ENEMY_Kurzens Agenten|r und nimm |cRXP_FRIENDLY_Gefreiter Thorsens|r quest an, welche nachdem du ihn gerettet hast, verfügbar wird
    .accept 215 >> Geheimnisse im Dschungel annehmen
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Barnil Stonepot|r und |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 583 >> Akzeptiert die Quest Willkommen im Dschungel
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Gebt die Quest Willkommen im Dschungel ab
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ajeck Rouack|r und |cRXP_FRIENDLY_Sire S. J. Erlgadin|r
    .accept 185 >> Beherrschen der Tigerjagd annehmen
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Beherrschen der Pantherjagd annehmen
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>Tötet |cRXP_ENEMY_Junge Panther|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #loop
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,0
    .goto Stranglethorn Vale,31.76,9.00,0
    .goto Stranglethorn Vale,35.40,12.50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
	>>Tötet |cRXP_ENEMY_Junge Schlingdorntiger|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    #loop
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,42.74,12.40,0
    .goto Stranglethorn Vale,41.43,9.77,0
    .goto Stranglethorn Vale,40.67,11.65,0
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
	>>Tötet |cRXP_ENEMY_Junge Panther|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ajeck Rouack|r und |cRXP_FRIENDLY_Sire S. J. Erlgadin|r
    >>|cRXP_WARN_Nimm die Nachfolgequests noch nicht an|r
    .turnin 185 >> Gebt die Quest Beherrschen der Tigerjagd ab
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Gebt die Quest Beherrschen der Pantherjagd ab
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Nimm die Nachfolgequest noch nicht an|r
    .turnin 215 >> Gebt die Quest Geheimnisse im Dschungel ab
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >> Run back to Duskwood (NOT TRANSLATED IN :deDE YET)
step
    .group 2
    .goto Duskwood,28.864,30.765
    >>Klickt |cRXP_PICK_Elizas Graberde|r, um |cRXP_ENEMY_Eliza|r zu beschwören
    >>Tötet |cRXP_ENEMY_Eliza|r. Plündert sie für |cRXP_LOOT_Das Herz des Einbalsamierers|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_wirkt|r |T135846:0|t[Frostblitz] |cRXP_WARN_und|r |T135848:0|t[Frostnova] |cRXP_WARN_und beschwört mehrere|r |cRXP_ENEMY_Wachen|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Klickt |cRXP_PICK_Ein verwittertes Grab|r
    .turnin 231 >> Gebt die Quest Die Liebe einer Tochter ab
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >> Ruhestein nach Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >> Benutzt |T136010:0|t[Astraler Rückruf] zurück zu Dunkelhain
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
    >>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >> Run back to Darkshire (NOT TRANSLATED IN :deDE YET)
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Ello Schwarzhaupt|r
    .turnin 253 >> Gebt die Quest Braut des Einbalsamierers ab
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Gebt die Quest Worgen in den Wäldern ab
    .accept 223 >> Akzeptiert die Quest Worgen in den Wäldern
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jonathan Treuwein|r
    .turnin 223 >> Gebt die Quest Worgen in den Wäldern ab
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Fliege nach Sturmwind
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> |cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzmagier Malin|r
    .accept 690 >> Akzeptiert die Quest Malins Gesuch
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Connor Bach|r
    .accept 1301 >> James Hyal annehmen
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Newton Uferbach|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849 >> Hol folgende Items aus deiner Bank:
    >>|T134187:0|t[Bisamwurzel] -- 2784
    >>|T132765:0|t[Kiste mit Sturzhelmen] -- 5849
    .target Newton Burnside
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farseer Umbrua|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1246 >> Der vermisste Diplomat annehmen
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dashel Steinfaust|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_wird feindselig, nachdem ihr die Folgequests angenommen habt. Besiegt ihn|r
    .turnin 1246 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1447,1 >> Der vermisste Diplomat annehmen
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Besiegt |cRXP_ENEMY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_wird auch mit 2 |cRXP_ENEMY_Raufbold der Altstadt|r angreifen. Ignoriert sie und konzentriert euch auf|r |cRXP_ENEMY_Dashel Stonefist|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dashel Steinfaust|r
    .turnin 1447 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1247 >> Der vermisste Diplomat annehmen
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1248 >> Der vermisste Diplomat annehmen
    .target Elling Trias
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauf die folgenden Items um sie später im Dämmerwald abzugeben
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>10 |T134026:0|t[Turtle Meat] (NOT TRANSLATED IN :deDE YET)
    .collect 3712,10,555,1
    .target Auctioneer Jaxon
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Newton Uferbach|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >> Hol folgende Items aus deiner Bank:
    >>|T134187:0|t[Bisamwurzel] -- 2784
    >>|T132765:0|t[Kiste mit Sturzhelmen] -- 5849
    >>|T132824:0|t[Filled Bota Bag] (NOT TRANSLATED IN :deDE YET) << Shaman
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzmagier Malin|r
    .accept 690 >> Akzeptiert die Quest Malins Gesuch
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Connor Bach|r
    .accept 1301 >> James Hyal annehmen
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zardeth der Schwarzen Klaue|r
    .turnin 335 >> Gebt die Quest Ein nobles Bräu ab
    .accept 336 >> Akzeptiert die Quest Ein nobles Bräu
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1798 >> Akzeptiert die Quest Die Suche nach Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Demisette Cloyce|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr dieselbe Quest von Eisenschmiede früher angenommen habt|r
    .accept 4738 >> Akzeptiert die Quest Auf der Suche nach Menara Voidrender
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
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
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lord Baurles K. Wischock|r
    .turnin 336 >> Gebt die Quest Ein nobles Bräu ab
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>|cRXP_WARN_Wenn du ein [|cRXP_LOOT_Ein altes Geschichtsbuch|r] gefunden hast, kannst du es abgeben|r
    .accept 337 >> Ein altes Geschichtsbuch annehmen
    .turnin 337 >> Gebt die Quest Ein altes Geschichtsbuch ab
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    .accept 538 >> Akzeptiert die Quest Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Graf Remington Kronenbrunn|r
    .accept 543 >>Die Tiara von Perenolde annehmen
    .target Count Remington Ridgewell
step << Druid
    #completewith DruidMount
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Fliegt nach Teldrassil
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lelanai|r und |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_oder|r |T132225:0|t[|cFF0070FFNachtsäbler|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
    >>|cRXP_WARN_Erhöht eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_falls nötig, während ihr auf die Straßenbahn wartet|r
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >> |cRXP_WARN_wirkt|r |T135757:0|t[Teleport: Ironforge]
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Reist nach Kharanos und kauft euren|r |T132247:0|t[Roboschreiter] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Reist nach Gehöft Bernruh und kauft euren|r |T132248:0|t[Harrison Jones] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Binjy Featherwhistle|r und |cRXP_FRIENDLY_Milli Federpfiff|r
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Kauft|r |T132247:0|t[|cFF0070FFRoboschreiter|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Veron Bernruh|r und |cRXP_FRIENDLY_Ultham Eisenhorn|r
    .vendor >>|cRXP_BUY_Kauft|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    #completewith next
    .goto Ironforge,16.57,84.04
    .zone Ironforge >> Head Fliege nach Eisenschmiede
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
	.fly Wetlands >> Fliegt ins Sumpfland
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    .home >> Setzt euren Ruhestein im Hafen von Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Wenn du die Quest annimmst, dann wird |cRXP_ENEMY_Tapoke "Slim" Jahn|r beim Eingang des Gasthauses |T132320:0|t[Verstohlenheit] casten|r |cRXP_WARN_und nach Draußen rennen|r
    .turnin 1248 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1249,1 >> Der vermisste Diplomat annehmen
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_Renn schnell nach Draußen!|r
    >>|cRXP_WARN_besiege |cRXP_ENEMY_Tapoke "Slim" Jahn|r. |cRXP_ENEMY_Slims Freund|r wird wegrennen, sobald |cRXP_ENEMY_Tapoke "Slim" Jahn|r sich ergibt|r
    >>|cRXP_WARN_Denk and deine Crowd Control (CC) für |cRXP_ENEMY_Slim's Freund|r falls sie dir Probleme bereiten|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mikhail|r
    >>Warte auf das RP
    .turnin 1249 >> Gebt die Quest Der vermisste Diplomat ab
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Der vermisste Diplomat annehmen
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Gebt die Quest Der vermisste Diplomat ab
    .accept 1264 >> Der vermisste Diplomat annehmen
    .target Mikhail
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lelanai|r und |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_oder|r |T132225:0|t[|cFF0070FFNachtsäbler|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >> Enter The Exodar through the back entrance (NOT TRANSLATED IN :deDE YET)
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Farseer Nobundo|r up the ramp (NOT TRANSLATED IN :deDE YET)
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r (NOT TRANSLATED IN :deDE YET)
    .target Farseer Nobundo
    .turnin 9551 >> Gebt die Quest Ruf der Luft ab
    .accept 9552 >> Akzeptiert die Quest Ruf der Luft
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Verlassen Die Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torallius the Pack Handler|r und |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Erlernen |T136103:0|t[Unerfahrener Reiter]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Kauft ein|r |T132255:0|t[|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fliege nach Blutwacht
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aqueous|r unterwasser
    .turnin 9504 >> Gebt die Quest Ruf des Wassers ab
    .accept 9508 >> Akzeptiert die Quest Ruf des Wassers
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >> Klick auf das |cRXP_PICK_Fass mit Unrat|r um |cRXP_ENEMY_Tel'athion the Impure|r
    .timer 3,Ruf des Wassers RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Kill |cRXP_ENEMY_Tel'athion the Impure|r. Loote ihn für seine |cRXP_LOOT_Kopf|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aqueous|r unterwasser
    .turnin 9508 >> Gebt die Quest Ruf des Wassers ab
    .accept 9509 >> Akzeptiert die Quest Ruf des Wassers
    .target Aqueous
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >> Lauf zum Teufelswald Watch
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >> Follow the arrow closely around the outside of The Exodar to get to Wildwind Path (NOT TRANSLATED IN :deDE YET)
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >> Continue to follow the path up Wildwind Path (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Gebt die Quest Ruf der Luft ab
    .accept 9553 >> Akzeptiert die Quest Ruf der Luft
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Gebt die Quest Ruf der Luft ab
    .accept 9554 >> Akzeptiert die Quest Ruf der Luft
    .target Susurrus
step << Shaman
    .gossip 17435,0 >> Talk to |cRXP_FRIENDLY_Susurrus|r again to return to The Exodar (NOT TRANSLATED IN :deDE YET)
    .timer 89,Call of Air RP (NOT TRANSLATED IN :deDE YET)
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >> Head down into The Exodar again (NOT TRANSLATED IN :deDE YET)
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You will gain the|r |T136022:0|t[Swift Wind] |cRXP_WARN_buff for 1 hour after turning in this quest, increasing your movement speed by 40% and attack speed by 30%|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be sure not to AFK while you have this buff!|r (NOT TRANSLATED IN :deDE YET)
    .target Farseer Nobundo
    .turnin 9509 >> Gebt die Quest Ruf des Wassers ab
    .turnin 9554 >> Gebt die Quest Ruf der Luft ab
step << Draenei
    #optional
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >> |T136010:0|t[Astral Recall] to Wetlands (NOT TRANSLATED IN :deDE YET)
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> James Hyal abgeben
    .accept 1302 >> James Hyal annehmen
    .target Vincent Hyal
step
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Nimm das Boot nach Theramore
    >>|cRXP_WARN_Level deine|r |T135966:0|t[Erste Hilfe]|cRXP_WARN_während du wartest|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])
