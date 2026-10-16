if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 23-24 Los Humedales
#next 24-27 Redridge/Bosque del Ocaso

step
.dungeon SFK
    #completewith FinalAccept
    +|cRXP_WARN_Comienza a buscar un grupo para Castillo de Colmillo Oscuro. Pronto irás a Bosque de Argénteos para explorar Castillo de Colmillo Oscuro|r
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Acepta la misión Piel de crocolisco joven
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >> Acepta la misión Zarpas de las profundidades
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .accept 288 >> Acepta la misión La Tercera Flota
    .accept 463 >> Acepta la misión El Guardaverde
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    >>|cRXP_BUY_Compra un|r |T132792:0|t[Cántaro de hidromiel enano]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >> Sube las escaleras hacia el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .turnin 942 >> Entrega la misión El prospector despistado
    .accept 943 >>Acepta la misión El prospector despistado
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .accept 943 >>Acepta la misión El prospector despistado
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .turnin 288 >> Entrega la misión La Tercera Flota
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shida|r
    .accept 470 >> Acepta la misión Abriéndose paso entre los mocos
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarrel Tejepiedra|r
    .accept 305 >> Acepta la misión La búsqueda del equipo de excavación
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Mata repetidamente |cRXP_ENEMY_Gnolls Pellejomusgo|r mientras buscas grupo para Castillo de Colmillo Oscuro
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>No hay misiones para Castillo de Colmillo Oscuro. Tendrás que correr desde Los Humedales hasta el Bosque de Argénteos. Asegúrate de permanecer en el camino mientras atraviesas las Tierras Altas de Arathi, y ten cuidado con la |cRXP_ENEMY_Mensajera Renegada|r
    >>|cRXP_WARN_No necesitas conseguir la ruta de vuelo de Tierras Altas de Arathi todavía|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la Ruta de Vuelo de Costasur
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
    .subzone 209,2 >> Entra en el Castillo de Colmillo Oscuro
step
.dungeon SFK
    +No hay misiones para Castillo de Colmillo Oscuro
    >>Completa el Castillo de Colmillo Oscuro. Sal cuando hayas terminado
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>Mata a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r. Despójalos para obtener su |cRXP_LOOT_Piel de crocolisco joven|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>Mata |cRXP_ENEMY_Múrlocs Branquiazul|r
    >>Mata a |cRXP_ENEMY_Engullidor|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Engullidor|r |cRXP_WARN_patrulla ligeramente por las Marismas|r
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fradd Cambioveloz|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Fradd Cambioveloz|r no tiene uno|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormer Trenzaferro|r
    .accept 294 >> Acepta la misión La venganza de Ormer
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Merrin Tejepiedra|r
    .turnin 305 >> Entrega la misión La búsqueda del equipo de excavación
    .accept 306 >> Acepta la misión La búsqueda del equipo de excavación
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Despoja el |cRXP_LOOT_Fósil de Gargavino|r del suelo
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eina Pillapedra|r
    .accept 469 >> Acepta la misión Entrega cotidiana
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kixxle|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Compra|r |T134413:0|t[Raíz de tierra] |cRXP_WARN_si |cRXP_FRIENDLY_Kixxle|r tiene alguna en sus existencias. Las necesitarás más adelante para la misión del|r |T132403:0|t[|cFF0070FFHacha espirálica|r] |cRXP_WARN_más adelante|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_Estos son artículos de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Kixxle|r no tiene ninguno|r << Warrior
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Kixxle|r no tiene ninguno|r << !Warrior
    .target Kixxle
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rethiel el Guardaverde|r
    .turnin 463 >> Entrega la misión El Guardaverde
    .accept 276 >> Acepta la misión Patas sucias
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
	>>Mata |cRXP_ENEMY_Gnolls Pellejomusgo|r y |cRXP_ENEMY_Bastardos Pellejomusgo|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rethiel el Guardaverde|r
    .turnin 276 >> Entrega la misión Patas sucias
    .accept 277 >> Acepta la misión No al fuego
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
    >>Mata a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r. Despójalos para obtener su |cRXP_LOOT_Piel de crocolisco joven|r
    .complete 484,1
    .mob Young Wetlands Crocolisk

step << !NightElf !Draenei
    .isOnQuest 470,306,469,484,279
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
    .xp <25,1 -- hs if over 25, otherwise dark threat looms
step << !NightElf !Draenei
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shida|r
    .turnin 470 >> Entrega la misión Abriéndose paso entre los mocos
    .target Sida
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarrel Tejepiedra|r
    .turnin 306 >> Entrega la misión La búsqueda del equipo de excavación
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Entrega la misión Entrega cotidiana
    .turnin 484 >> Entrega la misión Piel de crocolisco joven
    .target James Halloran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Entrega la misión Zarpas de las profundidades
    .target Karl Boran
    .xp <25,1
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .subzoneskip 150,1


-- only going loch if draenei/nightelf or not 25 yet
step
    #optional
    #completewith LochArrive
    .zone Loch Modan >> Sigue la red de túneles para viajar a Loch Modan
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .xp >25,1 << !Draenei !NightElf
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2426.200,-4093.000,15 >> Viaja a través del primer túnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2374.900,-4011.600,15,0
    .goto 1437/0,-2462.600,-4119.400,10 >> Viaja al segundo túnel
    .mob Dragonmaw Grunt
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2464.400,-4312.900,10 >> Viaja a través del segundo túnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2480.400,-4423.400,10 >> Viaja a la entrada del tercer túnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2674.500,-4451.100,10 >> Viaja a través del tercer túnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1437/0,-2690.400,-4482.800,10 >> Entra en el cuarto túnel
step
    #optional
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .goto 1432/0,-2698.800,-4681.800,10 >> Viaja a través del cuarto túnel hacia Loch Modan
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Viaja a la Presa de las Tres Cabezas
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .accept 250 >> Acepta la misión Se aproxima una oscura amenaza
    .target Chief Engineer Hinderweir VII
    .xp >25,1
    .zoneskip Loch Modan,1
step
    .isOnQuest 250
    .goto Loch Modan,56.05,13.24
    >>Haz clic en la |cRXP_PICK_Barrica sospechosa|r
    .turnin 250 >> Entrega la misión Se aproxima una oscura amenaza
    .accept 199 >> Acepta la misión Se aproxima una oscura amenaza
step
    .isQuestTurnedIn 250
    .goto Loch Modan,56.05,13.24
    >>Haz clic en la |cRXP_PICK_Barrica sospechosa|r
    .accept 199 >> Acepta la misión Se aproxima una oscura amenaza
    .zoneskip Loch Modan,1
step
    .isOnQuest 199
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .turnin 199 >> Entrega la misión Se aproxima una oscura amenaza
    .target Chief Engineer Hinderweir VII
    .zoneskip Loch Modan,1
step
    #label LochArrive
    #optional
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar << NightElf/Draenei
    .fly Ironforge >> Vuela a Forjaz << !NightElf !Draenei
    .target Thorgrum Borrelson
    .subzoneskip 150 --Skips if you go to Menethil
    .subzoneskip 2104 --Skips if you HS Menethil inn
    .zoneskip Ironforge
step << NightElf/Draenei
    #optional
    .goto Loch Modan,21.30,68.60,50 >> Viaja al sur hacia el túnel que conduce a Dun Morogh
step << NightElf/Draenei
    #optional
    .goto 1432/0,-2582.400,-5738.400,15,0
    .goto 1432/0,-2578.000,-5679.900,15,0
    .goto 1432/0,-2535.500,-5643.700,10 >> Viaja a la entrada del túnel
step << NightElf/Draenei
    #optional
    #sticky
    .zone Ironforge >> Viaja a Forjaz
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2441.900,-5559.800,10 >> Viaja a través del túnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2347.800,-5560.700,10 >> Viaja al segundo túnel
step << NightElf/Draenei
    #optional
    .goto 1426/0,-2243.100,-5634.800,10 >> Viaja a través del segundo túnel
step << NightElf/Draenei
    #optional
    .goto Dun Morogh,47.85,41.42,55 >> Viaja al oeste por el camino hacia Forjaz
step << NightElf/Draenei
    #optional
    .goto 1426/0,-726.200,-5193.300,20,0
    .goto 1455/0,-862.200,-4998.700,70 >> Sigue por el camino hacia arriba

step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Recoge 4 |T134850:0|t[Pociones de maná menor] y 2 |T134822:0|t[Elixires de entereza menor]
    >>|cRXP_WARN_Puedes comprarlos en la Casa de Subastas, comerciar con otros jugadores para obtenerlos o usar|r |T136240:0|t[Alquimia] |cRXP_WARN_si la tienes para hacerlos|r
    >>|cRXP_WARN_Si no puedes adquirirlos, omite este paso|r
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ah
    #optional
    .goto Ironforge,24.94,73.66,0
    >>Recoge 4 |T134850:0|t[Pociones de maná menor] y 2 |T134822:0|t[Elixires de entereza menor]
    >>|cRXP_WARN_Puedes comprarlos en la Casa de subastas o comerciar con otros jugadores para obtenerlos|r
    >>|cRXP_WARN_Si no puedes adquirirlos, omite este paso|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .isOnQuest 1072
step
    #ssf
    #optional
    >>Recoge 4 |T134850:0|t[Pociones de maná menor] y 2 |T134822:0|t[Elixires de entereza menor]
    >>|cRXP_WARN_Usa tu profesión de|r |T136240:0|t[Alquimia] |cRXP_WARN_para fabricarlos si es posible|r
    >>|cRXP_WARN_Si no puedes adquirirlos, omite este paso|r
    .collect 2455,4,1073,1 -- Minor Mana Potion (4)
    .collect 2458,2,1073,1 -- Elixir of Minor Fortitude (2)
    .skill alchemy,<1,1 -- step only displays if skill is 1 or higher
    .isOnQuest 1072
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .trainer >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
step
    #optional
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r
    .turnin 971 >> Entrega la misión Conocimiento en las Cavernas
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Javad|r
    .trainer >> Aprende tus hechizos de clase
    .target Farseer Javad
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r
    .goto Ironforge,69.872,82.890
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .goto Ironforge,70.856,85.839
    .trainer >> Aprende las habilidades de tu mascota
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .goto Ironforge,65.905,88.405
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Aprende 2H Hachas << !Rogue
	.train 266 >> Aprende Armas de Fuego << Hunter/Warrior/Rogue
    .train 199 >> Aprende 2H Mazas << Warrior/Shaman
    .train 54 >> Aprende el uso de Mazas << Rogue/Shaman
    .train 44 >> Aprende Hachas << Shaman
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Cortallave Volopiñón|r no tiene uno|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto 1455/0,-1283.600,-4843.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lomac Destrabaengranajes|r
    .target Lomac Gearstrip
    .turnin 1072 >>Entrega la misión Un viejo colega
step
    #optional
    .isQuestTurnedIn 1072
    .goto Ironforge,72.08,51.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lomac Destrabaengranajes|r
    .accept 1073 >> Acepta la misión Ineptitud + Productos químicos = Diversión
    .turnin 1073 >> Entrega la misión Ineptitud + Productos químicos = Diversión
    .itemcount 2455,4 -- Minor Mana Potion (4)
    .itemcount 2458,2 -- Elixir of Minor Fortitude (2)
    .target Lomac Gearstrip
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Toma el tranvía a Ventormenta
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >> Salta encima de la cabeza del grifo, luego desconéctate y vuelve a entrar para omitir hasta el tranvía.
    .zone Stormwind City >>Toma el tranvía a Ventormenta
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 24-27 Redridge/Bosque del Ocaso
#next 27-29 Los Humedales

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >> Viaja al Castillo de Ventormenta
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Emisario Taluun|r
    .accept 9429 >> Acepta la misión Viaje a Villa Oscura
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    .use 6776 >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r] para iniciar la misión|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_BUY_Compra|r |T133849:0|t[Hierbas aromáticas de Ventormenta]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step
    .isOnQuest 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Entrega la misión Un pergamino de Mauren
    .accept 1076 >> Acepta la misión Demonios en los Páramos de Poniente
    .target Collin Mauren
step
    #optional
    .isQuestTurnedIn 1075
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Collin Mauren|r
    .accept 1076 >> Acepta la misión Demonios en los Páramos de Poniente
    .target Collin Mauren
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .isQuestComplete 1738
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorios] |cRXP_BUY_para tu|r |T136220:0|t[Súcubo]|cRXP_BUY_ que tendrás en un segundo. Si tienes oro extra, cómpralos también para tu|r |T136221:0|t[Abisario]
    .target Spackle Thornberry
step << Warlock
    .isOnQuest 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1738 >> Entrega la misión Duramen
    .accept 1739 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 1738
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1739 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    .isOnQuest 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 65602 >> Entrega la misión ¿Qué es el amor?
    .accept 65603 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .isQuestTurnedIn 65602
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 65603 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 8674 >> |cRXP_WARN_Usa el|r |T136065:0|t[Núcleo de duramen] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Súcubo invocado|r
    .use 6913
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.154,77.406
    .use 6913 >> Mata a la |cRXP_ENEMY_Súcubo invocada|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .isOnQuest 65603
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .use 190186 >> |cRXP_WARN_Usa la|r |T136065:0|t[Figurilla de madera] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Íncubo invocado|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
step << Warlock
    #completewith next
    +|cRXP_WARN_Ahora puedes usar a la|r |T136220:0|t[Súcubo] |cRXP_WARN_o al|r |T136221:0|t[Abisario] |cRXP_WARN_como tu mascota|r
    >>|cRXP_WARN_La|r |T136220:0|t[Súcubo] |cRXP_WARN_inflige daño significativo, mientras que el|r |T136221:0|t[Abisario] |cRXP_WARN_proporciona más capacidad de supervivencia|r
step << Warlock
    .isOnQuest 1739,65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1739 >> Entrega la misión El vínculo
    .turnin 65603 >> Entrega la misión El vínculo
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregar misiones más rápido en Bosque del Ocaso dentro de poco
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|cRXP_WARN_Nota: También deberías subir el nivel de tu|r |T133971:0|t[Cocina] |cRXP_WARN_a 50 para obtener una misión fácil de 2.000 de experiencia en Bosque del Ocaso. Compra tantos|r |T133970:0|t[Trozos de Carne de Jabalí] |cRXP_WARN_o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_como necesites para subirla hasta 50. Puedes cocinarlos una vez que llegues a la Posada en Bosque del Ocaso|r
    >>|T133024:0|t[Tubo de bronce]
    >>|T133970:0|t[Costillar de lobo magro]
    >>|T134321:0|t[Pata pegajosa de araña]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregar misiones más rápido en Bosque del Ocaso dentro de poco
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T133024:0|t[Tubo de bronce]
    >>|T133970:0|t[Costillar de lobo magro]
    >>|T134321:0|t[Pata pegajosa de araña]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Newton Ladoquemado|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >> Deposita los siguientes objetos en tu banco: << Shaman
    >>|T132824:0|t[Lleno Bota Bolsa] << Shaman -- 23750
    .target Newton Burnside
step << Draenei/NightElf
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step
    #completewith RRQuests
    .goto 1429/0,395.900,-9114.200,80 >> Sal de Ventormenta
step
    #completewith RRQuests
    .goto Elwynn Forest,65.20,69.80,50 >> Viaja a la Torre de Azora. Sube la torre
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Estrellaclara|r
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134850:0|t|T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << Warrior/Rogue
    .target Alba Estrellaclara
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acepta la misión Gnolls invasores
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .turnin 244 >> Entrega la misión Gnolls invasores
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    .accept 91 >> Acepta la misión Ley de Solomon
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
    .accept 127 >> Acepta la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Berton|r
    .accept 386 >> Acepta la misión Lo que sucede alrededor...
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Mata |cRXP_ENEMY_Exploradores múrloc|r y |cRXP_ENEMY_Clamamareas múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Aletas|r y |cRXP_LOOT_Pez luna|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>Mata a los |cRXP_ENEMY_Brutos Roca Negra|r y a los |cRXP_ENEMY_Avanzados Roca Negras|r. Despójalos para obtener sus |cRXP_LOOT_Hachas|r
	>>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Avanzados Roca Negra|r te lanzarán una|r |T132149:0|t[Red] |cRXP_WARN_|r
    >>|cRXP_WARN_Alterna entre matar |cRXP_ENEMY_Orcos|r y |cRXP_ENEMY_Múrlocs|r marcados en el mapa al suroeste|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>Mata |cRXP_ENEMY_Exploradores múrloc|r y |cRXP_ENEMY_Clamamareas múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Aletas|r y |cRXP_LOOT_Pez luna|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >> Dirígete al Molino de Alther
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_En pie en el punto de ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Cajas de práctica|r a la vez sin tener que moverte|r
    >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Entrega la misión La amenaza de los Roca Negra
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
    .turnin 127 >> Entrega la misión Pescado a la venta
    .turnin 150 >> Entrega la misión Cazadores furtivos
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
    .isQuestComplete 2282
step
    .goto Redridge Mountains,26.75,46.43
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 180 >> Acepta la misión Se busca: Teniente Fangore
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .accept 34 >> Acepta la misión Una visita poco grata
step
    .goto Redridge Mountains,15.68,49.30
    >>Mata a |cRXP_ENEMY_Panzallena|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Entrega la misión Una visita poco grata
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >> Viaja a Villa Oscura en Bosque del Ocaso
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r
    .accept 66 >> Acepta la misión La leyenda de Stalvan
    .accept 101 >> Acepta la misión El Tótem de castigo
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Trelayne|r
    .home >> Establece tu Piedra de hogar en Bosque del Ocaso
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_Necesitas 50 de habilidad en cocina para aceptar esta misión|r
    .accept 90 >> Acepta la misión Kebab de lobo sazonado
    .turnin 90 >> Entrega la misión Kebab de lobo sazonado
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 56 >> Acepta la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Secretario Daltry|r
    .turnin 66 >> Entrega la misión La leyenda de Stalvan
    .accept 67 >> Acepta la misión La leyenda de Stalvan
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Anacoreta Delan|r
    .turnin 9429 >> Entrega la misión Viaje a Villa Oscura
    .target Anchorite Delan
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Acepta la misión Cerro del Cuervo
    .accept 164 >> Acepta la misión Entrega a Sven
    .accept 165 >> Acepta la misión El ermitaño
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Consigue la ruta de vuelo de Bosque del Ocaso
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Herble Montepompa|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Herble Montepompa|r no tiene uno|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acepta la misión Mira las estrellas
    .turnin 174 >> Entrega la misión Mira las estrellas
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acepta la misión Mira las estrellas
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mary la Ciega|r
    .turnin 175 >> Entrega la misión Mira las estrellas
    .accept 177 >> Acepta la misión Mira las estrellas
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :esMX YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
	#completewith next
    >>Mata a los |cRXP_ENEMY_Guerreros esqueléticos|r y a los |cRXP_ENEMY_Magos esqueléticos|r
    >>|cRXP_ENEMY_Guerreros esqueléticos|r |cRXP_WARN_aplican|r |T132316:0|t[Seccionar]
    >>|cRXP_ENEMY_Magos esqueléticos|r |cRXP_WARN_lanzan|r |T135846:0|t[Descarga de Escarcha] |cRXP_WARN_y también ralentizan con|r |T135843:0|t[Armadura de Escarcha]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Mata al |cRXP_ENEMY_Necrófago demente|r. Despójalo para obtener |cRXP_LOOT_Espejo de Mary|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Necrófago demente|r puede estar dentro de la capilla o deambulando fuera|r
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
    >>Mata a los |cRXP_ENEMY_Guerreros esqueléticos|r y a los |cRXP_ENEMY_Magos esqueléticos|r
    >>|cRXP_ENEMY_Guerreros esqueléticos|r |cRXP_WARN_aplican|r |T132316:0|t[Seccionar]
    >>|cRXP_ENEMY_Magos esqueléticos|r |cRXP_WARN_lanzan|r |T135846:0|t[Descarga de Escarcha] |cRXP_WARN_y también ralentizan con|r |T135843:0|t[Armadura de Escarcha]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    #completewith Level25
    >>Mata |cRXP_ENEMY_Arañas|r en Bosque del Ocaso. Despójalas para obtener sus |cRXP_LOOT_Patas pegajosas de araña|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >> Viaja hacia |cRXP_FRIENDLY_Alterio|r en el oeste del Bosque del Ocaso
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alterio|r
    .turnin 163 >> Entrega la misión Cerro del Cuervo
    .accept 5 >> Acepta la misión La hambruna de Alterio
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Entrega la misión Entrega a Sven
    .accept 95 >> Acepta la misión La venganza de Sven
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lars|r
    .accept 226 >> Acepta la misión Con los lobos en los talones
    .target Lars
step
    #completewith SFD
    >>Mata |cRXP_ENEMY_Lobos temibles famélicos|r y |cRXP_ENEMY_Lobos temibles rabiosos|r. Despójalos para obtener sus |cRXP_LOOT_Costillares de lobo magro|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>Mata |cRXP_ENEMY_Lobos temibles famélicos|r y |cRXP_ENEMY_Lobos temibles rabiosos|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Entrega la misión El ermitaño
    .accept 148 >> Acepta la misión Suministros de Villa Oscura
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
    >>Mata |cRXP_ENEMY_Lobos temibles famélicos|r y |cRXP_ENEMY_Lobos temibles rabiosos|r. Despójalos para obtener sus |cRXP_LOOT_Costillares de lobo magro|r
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
    >>Mata |cRXP_ENEMY_Lobos temibles famélicos|r y |cRXP_ENEMY_Lobos temibles rabiosos|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Entrega la misión Con los lobos en los talones
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
    >>Mata |cRXP_ENEMY_Arañas|r en Bosque del Ocaso. Despójalas para obtener sus |cRXP_LOOT_Patas pegajosas de araña|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .goto Duskwood,17.72,29.07
    .accept 225 >> Acepta la misión La lápida desgastada
step
    #completewith MoonbrookSt
    .zone Westfall >> Viaja a Páramos de Poniente
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
    >>Mata |cRXP_ENEMY_Diablos de polvo|r. Despójalos para obtener sus |cRXP_LOOT_Restos|r
    >>|cRXP_ENEMY_Diablos de polvo|r |cRXP_WARN_pueden aparecer por todo Páramos de Poniente. Sus ubicaciones de aparición están marcadas en el mapa|r
    >>|cRXP_WARN_Lanza|r |T132172:0|t[Ojo de águila] |cRXP_WARN_para intentar encontrarlos|r << Hunter
    .complete 1076,1
    .unitscan Dust Devil
    .isOnQuest 1076
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
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
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step
    #completewith MoonbrookSt
    .subzone 20 >> Viaja a Arroyo de la Luna
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Haz clic en el |cRXP_PICK_Baúl Antiguo|r del suelo
    .turnin 67 >> Entrega la misión La leyenda de Stalvan
    .accept 68 >> Acepta la misión La leyenda de Stalvan
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r
    .turnin 1650 >>Entrega la misión Escrito sobre valor
    .target Daphne Stilwell
    .accept 1651 >>Acepta la misión Escrito sobre valor
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r
    .turnin 1651 >>Entrega la misión Escrito sobre valor
    .target Daphne Stilwell
    .accept 1652 >>Acepta la misión Escrito sobre valor
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Nada hacia mar adentro
step << Druid
    .goto Westfall,17.928,33.099
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Resistencia acuática|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Usa el|r |T133443:0|t[Medio colgante de Agilidad acuática] |cRXP_WARN_para combinarlo con el|r |T133442:0|t[Medio colgante de Resistencia acuática] |cRXP_WARN_en el Santuario de Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    >>|cRXP_WARN_Esto te ahorrará tiempo al no tener que volver corriendo|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 272 >> Entrega la misión La prueba del león marino
    .accept 5061 >> Acepta la misión Forma acuática
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Vuela a Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 5061 >> Entrega la misión Forma acuática
step
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >> Usa tu Piedra de hogar para ir a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >> Vuela a Villa Oscura
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >> Usa tu Piedra de hogar para ir a Ventormenta
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
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Duskwood>> Vuela a Bosque del Ocaso
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Trelayne|r
    >>Si acabas de completar tu misión de Venenos, ahora establece tu Piedra de hogar en Villa Oscura
    >>Si tu Piedra de hogar ya estaba establecida en Villa Oscura, omite este paso
    .home >> Establece tu Piedra de hogar en Villa Oscura
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .accept 2607 >> Acepta la misión Toque de Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Ve al sótano
    .turnin 2607 >> Entrega la misión Toque de Zanzil
    .accept 2608 >> Acepta la misión Toque de Zanzil
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Escribe /lay (tumbarse) en el chat y espera hasta que la misión se complete
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >> Entrega la misión Toque de Zanzil
    .accept 2609 >> Acepta la misión Toque de Zanzil
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>Compra un Vial emplomado al Vendedor sospechoso
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>Dirígete al vendedor de flores
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>Compra un Tubo de bronce en la Casa de Subastas
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Dirígete a la tienda junto al puente entre la Plaza de la Catedral y El Parque
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>Si no puedes encontrar un tubo de bronce, tendrás que omitir esta misión, entrena Primeros auxilios a 80, consigue una glándula de veneno pequeña de las arañas en Bosque del Ocaso, crea un Contraveneno y quítate el Veneno de Zanzil.
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >> Entrega la misión Toque de Zanzil
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_Necesitas 50 de habilidad en cocina para aceptar esta misión|r
    .accept 90 >> Acepta la misión Kebab de lobo sazonado
    .turnin 90 >> Entrega la misión Kebab de lobo sazonado
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Entrega la misión La hambruna de Alterio
    .accept 93 >> Acepta la misión Los pasteles de cangrejo oscuro
    .turnin 93 >> Entrega la misión Los pasteles de cangrejo oscuro
    .accept 240 >> Acepta la misión Regresa junto a Alterio
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 56 >> Entrega la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
    .accept 57 >> Acepta la misión La Guardia Nocturna
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Secretario Daltry|r
    .turnin 68 >> Entrega la misión La leyenda de Stalvan
    .accept 69 >> Acepta la misión La leyenda de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Entrega la misión La lápida desgastada
    .accept 227 >> Acepta la misión Morgan Ladimor
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 227 >> Entrega la misión Morgan Ladimor
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >> Destruye |T133741:0|t[La historia de Morgan Ladimor]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r
    .turnin 148 >> Entrega la misión Suministros de Villa Oscura
    .target Madame Eva
    .accept 149 >> Acepta la misión Hilo de cabello de fantasma
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Herble Montepompa|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Herble Montepompa|r no tiene uno|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Acepta la misión Mira las estrellas
    .turnin 174 >> Entrega la misión Mira las estrellas
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acepta la misión Mira las estrellas
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mary la Ciega|r
    .turnin 175 >> Entrega la misión Mira las estrellas
    .accept 177 >> Acepta la misión Mira las estrellas
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mary la Ciega|r
    .turnin 149 >> Entrega la misión Hilo de cabello de fantasma
    .accept 154 >> Acepta la misión Devuelve el peine
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :esMX YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Mata al |cRXP_ENEMY_Necrófago demente|r. Despójalo para obtener |cRXP_LOOT_Espejo de Mary|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Necrófago demente|r puede estar dentro de la capilla o deambulando fuera|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Entrega la misión Mira las estrellas
    .accept 181 >> Acepta la misión Mira las estrellas
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Acepta la misión Mira las estrellas
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r
    .turnin 154 >> Entrega la misión Devuelve el peine
    .accept 157 >> Acepta la misión Devolver el pelo
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>Haz clic en el |cRXP_PICK_Montón de tierra|r del suelo
    .turnin 95 >> Entrega la misión La venganza de Sven
    .accept 230 >> Acepta la misión El campamento de Sven
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Entrega la misión Devolver el pelo
    .target Abercrombie
    .accept 158 >> Acepta la misión Zumo de zombi
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Entrega la misión El campamento de Sven
    .target Sven Yorgen
    .accept 262 >> Acepta la misión La figura en las sombras
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Howe|r
    .accept 128 >> Acepta la misión La recompensa de Roca Negra
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .accept 19 >> Acepta la misión Tharil'zun
    .accept 115 >> Acepta la misión Magia de las Sombras
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .solo
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .accept 115 >> Acepta la misión Magia de las Sombras
	.isQuestTurnedIn 20
    .maxlevel 27
step
#optional
    .group
    .dungeon Stockades
    #completewith next
    .abandon 386 >> Abandon What Comes Around... (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Abandon this quest if your quest log is full. You'll accept it again shortly|r (NOT TRANSLATED IN :esMX YET)
    .zoneskip Redridge Mountains,1
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHaz clic en el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 169 >> Acepta la misión Se busca: Gath'Ilzogg
    .maxlevel 27
step
    #completewith LookingFurther
    >>Mata a los |cRXP_ENEMY_Pielsombra|r. Despójalos para obtener sus |cRXP_LOOT_Colgantes|r
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
    >>Mata al |cRXP_ENEMY_Teniente Fangore|r. Despójalo para obtener su |cRXP_LOOT_Pata|r
    >>|cRXP_ENEMY_Teniente Fangore|r se enfrentará a ti con 2|cRXP_WARN_ Gnolls|r |cRXP_ENEMY_adicionales|r
    >>|cRXP_ENEMY_Teniente Fangore|r |cRXP_WARN_es inmune al daño de Sombra. Asegúrate de tener miembros del grupo que puedan ayudar; de lo contrario, puedes omitir este paso|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>Haz clic en la |cRXP_PICK_Estatua de león antigua|r
    .turnin 94 >> Entrega la misión Un ojo vigilante
    .accept 248 >> Acepta la misión Ver más allá
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>Haz clic en la |cRXP_PICK_Estatua de león antigua|r
    .accept 248 >> Acepta la misión Ver más allá
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Mata a los |cRXP_ENEMY_Pielsombra|r. Despójalos para obtener sus |cRXP_LOOT_Colgantes|r
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
    >>Mata |cRXP_ENEMY_Taumaturgos umbríos Roca Negra|r. Despójalos para obtener sus |cRXP_LOOT_Orbes|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    .goto Redridge Mountains,71.40,55.07
    >>Mata a |cRXP_ENEMY_Tharil'zun|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 4
    .goto Redridge Mountains,69.599,55.797
    >>Entra en el Fuerte de Petravista
    >>Mata a |cRXP_ENEMY_Gath'Ilzogg|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    #label Gath
step
    .goto Redridge Mountains,66.68,56.26
    >>Mata |cRXP_ENEMY_Taumaturgos umbríos Roca Negra|r. Despójalos para obtener sus |cRXP_LOOT_Orbes|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>Haz clic en |cRXP_PICK_Un tarro vacío|r en el barril en lo alto de la Torre de Petravista
    >>|cRXP_WARN_No aceptes la siguiente misión|r
    .turnin 248 >> Entrega la misión Ver más allá
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>Mata |cRXP_ENEMY_Campeones Roca Negra|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    #completewith ReturnLakeshire
    .subzone 69 >> Regresa a Villa del Lago
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 19 >> Entrega la misión Tharil'zun
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 115 >> Entrega la misión Magia de las Sombras
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    .turnin 91 >> Entrega la misión Ley de Solomon
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 180 >> Entrega la misión Se busca: Teniente Fangore
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 169 >> Entrega la misión Se busca: Gath'Ilzogg
    .target Magistrate Solomon
    .isQuestComplete 169
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Berton|r
    .accept 386 >> Acepta la misión Lo que sucede alrededor...
    .target Guard Berton
    .zoneskip Redridge Mountains,1
step
    #label ReturnLakeshire
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Howe|r
    .turnin 128 >> Entrega la misión La recompensa de Roca Negra
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >> Usa tu Piedra de hogar para ir a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Duskwood >> Vuela a Villa Oscura
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >> Viaja a Villa Oscura
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r
    .turnin 262 >> Entrega la misión La figura en las sombras
    .target Madame Eva
    .accept 265 >> Acepta la misión La búsqueda de la figura continúa
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Secretario Daltry|r
    .turnin 265 >> Entrega la misión La búsqueda de la figura continúa
    .accept 266 >> Acepta la misión Preguntas en la posada
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Consejero Tallolino|r
    .accept 377 >> Acepta la misión Crimen y castigo
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .turnin 158 >> Entrega la misión Zumo de zombi
    .accept 156 >> Acepta la misión Busca flores podridas
    .turnin 266 >> Entrega la misión Preguntas en la posada
    .accept 453 >> Acepta la misión Encuentra la figura misteriosa
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .accept 231 >> Acepta la misión El amor de una hija
    .target Watcher Ladimore
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .accept 228 >> Acepta la misión Mor'Ladim
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Acepta la misión Huargen en el bosque
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
	>>Mata a los |cRXP_ENEMY_Tejesombras Penumbría|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Entrega la misión Huargen en el bosque
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_Keep an eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Don't start the quest it begins yet|r (NOT TRANSLATED IN :esMX YET)
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alterio|r
    .turnin 453 >> Entrega la misión Encuentra la figura misteriosa
    .accept 268 >> Acepta la misión Entrega para Sven
    .turnin 240 >> Entrega la misión Regresa junto a Alterio
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
    >>Kill |cRXP_ENEMY_Maligno esquelético|r and |cRXP_ENEMY_Horror en podredumbre|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r and |cRXP_LOOT_Fingers|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Entrega la misión Entrega para Sven
    .accept 323 >> Acepta la misión Pon a prueba tu valor
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .turnin 231 >> Entrega la misión El amor de una hija
step
    .goto Duskwood,16.01,38.79
    >>Mata |cRXP_ENEMY_Asaltantes esqueléticos|r, |cRXP_ENEMY_Sanadores esqueléticos|r y |cRXP_ENEMY_Depositarios esqueléticos|r
    >>|cRXP_WARN_Entra en las Catacumbas del Bosque Aurora para encontrar a los|r |cRXP_ENEMY_Depositarios esqueléticos|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >> Sube al nivel 27. Si estás planeando entrar en The Stockades, puedes omitir este paso
step
    .group 5
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Mata a |cRXP_ENEMY_Mor'Ladim|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_es una Élite nivel 30 que golpea muy fuerte pero se mueve bastante lento. Intenta hacerlo circular alrededor de cualquier árbol grande si es necesario|r
    >>|cRXP_WARN_Tendrás otra oportunidad más tarde para completar este paso si no puedes encontrar un grupo ahora|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Entrega la misión Pon a prueba tu valor
    .accept 269 >> Acepta la misión En busca de sabiduría
    .target Sven Yorgen

step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Vuela a Villa Oscura
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >> Viaja a Villa Oscura
step << Warrior/Paladin
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .turnin 57 >> Entrega la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .accept 231 >> Acepta la misión El amor de una hija
    .target Watcher Ladimore
step << Warrior/Paladin
    .isQuestTurnedIn 228
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .turnin 156 >> Entrega la misión Busca flores podridas
    .target Tavernkeep Smitts
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Felicia Maline
step << Warrior/Paladin
.dungeon Stockades
    .isQuestTurnedIn 228
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Berton|r
    .accept 386 >> Acepta la misión Lo que sucede alrededor...
    .target Guard Berton
step << Warrior/Paladin
    .isOnQuest 231
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .turnin 231 >> Entrega la misión El amor de una hija
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_Estás a punto de dirigirte a Ventormenta pronto, intenta encontrar un grupo para The Stockades|r
step
    #completewith next
    .subzone 87 >> Viaja a Villadorada
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 69 >> Entrega la misión La leyenda de Stalvan
    .accept 70 >> Acepta la misión La leyenda de Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube las escaleras
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Aprende tus hechizos de clase
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Abre el |cRXP_PICK_Cofre de almacenamiento|r. Despójalo para obtener |cRXP_LOOT_Una carta sin entregar|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >> Viaja a la Ciudad de Ventormenta
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Entrega la misión Demonios en los Páramos de Poniente
    .target Collin Mauren
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clarividente Umbrua|r
	.trainer >> Aprende tus hechizos de clase
    .target Farseer Umbrua
step
    #completewith GRB
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Duskwood >> Vuela a Villa Oscura
    .target Dungar Longdrink
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .turnin 57 >> Entrega la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .target Watcher Ladimore
step
    #label GRB
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .turnin 156 >> Entrega la misión Busca flores podridas
    .target Tavernkeep Smitts
step
.dungeon Stockades
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Felicia Maline
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Berton|r
    .accept 386 >> Acepta la misión Lo que sucede alrededor...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << !Mage
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
.dungeon Stockades
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> |cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
step << !Mage
    .isQuestComplete 1076
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Entrega la misión Demonios en los Páramos de Poniente
    .target Collin Mauren
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Dirígete a El Cordero Degollado y baja las escaleras
step
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zardeth de los Zarpanegra|r
    .accept 335 >> Acepta la misión Una noble cerveza
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Custodio Folsom|r
    .turnin 70 >> Entrega la misión La leyenda de Stalvan
    .target Caretaker Folsom
    .accept 72 >> Acepta la misión La leyenda de Stalvan
step
    .goto Stormwind City,29.44,61.52
    >>Haz clic en el |cRXP_PICK_Cajón sellado|r del suelo
    .turnin 72 >> Entrega la misión La leyenda de Stalvan
    .accept 74 >> Acepta la misión La leyenda de Stalvan
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .trainer >> Aprende tus hechizos de clase
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .target Duthorian Rall
    .turnin 1652 >>Entrega la misión Escrito sobre valor
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sarno|r
    .accept 2923 >> Acepta la misión Maestro manitas Sobrechispa
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Obispo Lontananza|r
    .turnin 269 >> Entrega la misión En busca de sabiduría
    .accept 270 >> Acepta la misión La flota maldita
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .accept 389 >> Acepta la misión Bazil Thredd
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Cassius|r
    >>|cRXP_BUY_Compra 2|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_de él|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>|cRXP_WARN_Si encontraste |T133741:0|t[|cRXP_LOOT_Un libro viejo de Historia|r] puedes entregarlo|r
    .accept 337 >> Acepta la misión Un libro viejo de Historia
    .turnin 337 >> Entrega la misión Un libro viejo de Historia
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    .accept 538 >> Acepta la misión Costasur
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrulla por el Casco Antiguo|r
    .accept 388 >> Acepta la misión El color de la sangre
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .accept 387 >> Acepta la misión Detener el motín
    .turnin 389 >> Entrega la misión Bazil Thredd
    .accept 391 >> Acepta la misión El motín de Las Mazmorras
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .accept 391 >> Acepta la misión El motín de Las Mazmorras
    .accept 387 >> Acepta la misión Detener el motín
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .accept 387 >> Acepta la misión Detener el motín
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Busca un grupo para Las Mazmorras
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Mata a |cRXP_ENEMY_Targorr el Pavoroso|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r. |cRXP_ENEMY_Targorr|r tiene una ubicación de aparición aleatoria
    >>Mata a |cRXP_ENEMY_Dextren Ward|r en el ala oeste de la prisión. Despójalo para obtener su |cRXP_LOOT_Mano|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Mata a |cRXP_ENEMY_Bazil Thredd|r en el ala este de la prisión. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Asegúrate de tener 3|r |T132905:0|t[Paño de seda] |cRXP_WARN_para la continuación de esta cadena de misiones|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 387 >> Entrega la misión Detener el motín
    .turnin 391 >> Entrega la misión El motín de Las Mazmorras
    .accept 392 >> Acepta la misión Extraño visitante
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 387 >> Entrega la misión Detener el motín
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Entrega la misión Extraño visitante
    .accept 393 >> Acepta la misión Sombras del pasado
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrulla por el Casco Antiguo|r
    .turnin 388 >> Entrega la misión El color de la sangre
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 393 >> Entrega la misión Sombras del pasado
    .accept 350 >> Acepta la misión Mira por un viejo amigo
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elling Trias|r subiendo las escaleras
    .turnin 350 >> Entrega la misión Mira por un viejo amigo
    .accept 2745 >> Acepta la misión Infíltrate en el castillo
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Viaja al Castillo de Ventormenta
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Entrega la misión Infíltrate en el castillo
    .accept 2746 >> Acepta la misión Objetos importantes
    .target Tyrion
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Sal de Ventormenta. Viaja a la Casa de la Granja de Clara en el Bosque de Elwynn
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Despoja las |cRXP_LOOT_Manzanas frescas de Clara|r de la mesa
    >>|cRXP_WARN_Si todavía necesitas|r |T132905:0|t[Paño de seda] |cRXP_WARN_compra algunos en la Casa de Subastas|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>Despoja las |cRXP_LOOT_Manzanas frescas de Clara|r de la mesa
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Viaja al Castillo de Ventormenta
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Asegúrate de que tu grupo ha entregado la misión Objetos importantes antes de aceptar El ataque|r
    >>|cRXP_WARN_Se ha desactivado la aceptación automática de misiones para este paso. Ten en cuenta que es posible que no puedas aceptar la misión si alguien más está en proceso de hacerla|r
    .turnin 2746 >> Entrega la misión Objetos importantes
    .accept 434,1 >> Acepta la misión El ataque
    .timer 124,El ataque RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Espera en el centro del patio a que lleguen |cRXP_ENEMY_Lord Gregor Lescovar|r y |cRXP_ENEMY_Marzon el Filo Silencioso|r. Esto tarda aproximadamente 2 minutos|r
    >>Mata a |cRXP_ENEMY_Lord Gregor Lescovar|r y a |cRXP_ENEMY_Marzon el Filo Silencioso|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elling Trias|r subiendo las escaleras
    .turnin 434 >> Entrega la misión El ataque
    .accept 394 >> Acepta la misión La cabeza de la bestia
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 394 >> Entrega la misión La cabeza de la bestia
    .accept 395 >> Acepta la misión El fin de la Hermandad
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Entrega la misión El fin de la Hermandad
    .accept 396 >> Acepta la misión Una audiencia con el Rey
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Viaja al Castillo de Ventormenta
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Entrega la misión Una audiencia con el Rey
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Berton|r
    .turnin 386 >> Entrega la misión Lo que sucede alrededor...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +|cRXP_WARN_Empieza a buscar un grupo para Gnomeregan. Correrás Gnomeregan en breve|r
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2928 >> Acepta la misión Excavadoras gyroagujereamáticas
    .target Shoni the Shilent
step << Mage
    #completewith next
    .zone Ironforge >> |cRXP_WARN_Lanza|r |T135757:0|t[Teletransporte a: Forjaz]
step << !Mage
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
step
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro manitas Sobrechispa|r
    .turnin 2923 >> Entrega la misión Maestro manitas Sobrechispa
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Maestro manitas Sobrechispa|r, |cRXP_FRIENDLY_Manitas Mayor Mekkatorque|r, |cRXP_FRIENDLY_Maestro mecánico Funditubo|r y |cRXP_FRIENDLY_Klockmort Palmalicate|r
    .accept 2927 >> Acepta la misión Al día siguiente
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >> Entrega la misión Maestro manitas Sobrechispa
    .accept 2922 >> Acepta la misión ¡Salva el cerebro de Tecnobot!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Acepta la misión La gran traición
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Acepta la misión Rescatar los datos
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Acepta la misión Esencias artificiales
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Brebefuego|r
    .goto Ironforge,18.10,51.60
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Sal de Forjaz
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozzie Voltiflop|r
    .turnin 2927 >> Entrega la misión Al día siguiente
    .accept 2926 >> Acepta la misión Gnogaine
    .target Ozzie Togglevolt
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Viaja a Gnomeregan
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>|cRXP_WARN_Usa la|r |T132788:0|t[Ampolla de plomo vacía] |cRXP_WARN_en un |cRXP_ENEMY_Invasor irradiado|r o en un|r |cRXP_ENEMY_Saqueador irradiado|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Invasor irradiado|r o |cRXP_ENEMY_Saqueador irradiado|r debe estar VIVO cuando la uses|r
    >>|cRXP_WARN_Esta misión se completa FUERA de la mazmorra|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Viaja hasta |cRXP_FRIENDLY_Ozzie Voltiflop|r en Kharanos
    >>|cRXP_WARN_Recibirás la continuación de la misión cuando entres en la mazmorra|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozzie Voltiflop|r
    .turnin 2926 >> Entrega la misión Gnogaine
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozzie Voltiflop|r
    .accept 2962 >> Acepta la misión Necesitamos más material verdoso
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >> Viaja a Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>Mata |cRXP_ENEMY_Troggs|r y |cRXP_ENEMY_Gnomos|r. Despójalos para obtener una |T133215:0|t[|cRXP_LOOT_Tarjeta perforada blanca|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Mata a |cRXP_ENEMY_Tecnobot|r. Despójalo para obtener su |cRXP_LOOT_Procesador de memoria central|r
    >>|cRXP_WARN_Esta misión se completa FUERA de la mazmorra|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Mata |cRXP_ENEMY_Troggs|r y |cRXP_ENEMY_Gnomos|r. Despójalos para obtener una |T133215:0|t[|cRXP_LOOT_Tarjeta perforada blanca|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_Esta misión se completa FUERA de la mazmorra|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_Usa la|r |T133215:0|t[|cRXP_LOOT_Tarjeta perforada blanca|r] |cRXP_WARN_en el|r |cRXP_PICK_Perforágrafo Matriz 3005-A|r
    >>|cRXP_WARN_Esta misión se completa FUERA de la mazmorra|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >> Entra por el portal de la instancia de Gnomeregan
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Mata a todos los |cRXP_ENEMY_enemigos Gnomeregan|r. Despójalos para obtener sus |cRXP_LOOT_Entrañas robomecánicas|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Usa la|r |T133215:0|t[|cRXP_LOOT_Tarjeta perforada amarilla|r] |cRXP_WARN_en el|r |cRXP_PICK_Perforágrafo Matriz 3005-B|r
    >>La máquina que parece una consola está en la zona segura gnómica de la planta baja, al lado de la sala circular grande donde están las babosas
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta. |cRXP_FRIENDLY_Kernobee|r aparece de forma aleatoria en Los Dormitorios, justo fuera de la zona segura gnómica|r
    .accept 2904 >> Acepta la misión Un buen lío
    .unitscan Kernobee
step
.dungeon Gnomer
    >>Escolta a |cRXP_FRIENDLY_Kernobee|r de vuelta a la entrada de la mazmorra
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Usa la|r |T132788:0|t[Ampolla de plomo pesada] |cRXP_WARN_en una |cRXP_ENEMY_Babosa irradiada|r u|r |cRXP_ENEMY_Horror irradiado|r
    >>|cRXP_WARN_La |cRXP_ENEMY_Babosa irradiada|r o el |cRXP_ENEMY_Horror irradiado|r debe estar VIVO cuando la uses|r
    >>|cRXP_WARN_Nota: Debes entregar esta misión en un plazo de 2 horas tras obtener los|r |T136006:0|t[Restos radiactivos de gran potencia]
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Abre los |cRXP_PICK_Extrapoladores artificiales|r. Despójalos para obtener |cRXP_LOOT_Esencias artificiales|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>|cRXP_WARN_Usa la|r |T133215:0|t[|cRXP_LOOT_Tarjeta perforada azul|r] |cRXP_WARN_en el|r |cRXP_PICK_Perforágrafo Matriz 3005-C|r
    >>El Perforágrafo está ubicado en la plataforma suspendida justo al lado del |cRXP_ENEMY_Electrocutor 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>|cRXP_WARN_Usa la|r |T133215:0|t[|cRXP_LOOT_Tarjeta perforada roja|r] |cRXP_WARN_en el|r |cRXP_PICK_Perforágrafo Matriz 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>Mata al |cRXP_ENEMY_Mekigeniero Termochufe|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>Abre los |cRXP_PICK_Extrapoladores artificiales|r. Despójalos para obtener |cRXP_LOOT_Esencias artificiales|r
    >>Si aún no has terminado esta misión, vuelve a los lugares donde los despojaste antes, ya que reaparecen después de algunos minutos
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>Mata a todos los |cRXP_ENEMY_enemigos Gnomeregan|r. Despójalos para obtener sus |cRXP_LOOT_Entrañas robomecánicas|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Usa el|r |T135230:0|t[|cRXP_LOOT_Anillo con mugre incrustada|r] |cRXP_WARN_para comenzar la misión|r
    .accept 2945 >> Acepta la misión Un anillo sucio
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_Lleva el|r |T135230:0|t[|cRXP_LOOT_Anillo con mugre incrustada|r] |cRXP_WARN_a |cRXP_PICK_El Destellamatic 5200|r en el Punto de Limpieza|r
    *Tendrás que retroceder hasta el Punto de Limpieza cerca de la entrada de la instancia; asegúrate de que tus compañeros de equipo estén allí para ayudarte en el viaje de vuelta
    .turnin 2945 >> Entrega la misión Un anillo sucio
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>Haz clic en el |cRXP_PICK_El Destellamatic 5200|r una vez más
    .accept 2947 >> Acepta la misión La devolución del anillo
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >> Usa tu Piedra de hogar para ir a Forjaz
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Sal de Forjaz
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozzie Voltiflop|r
    .turnin 2962 >> Entrega la misión Necesitamos más material verdoso
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Binjy Plumasilba|r y |cRXP_FRIENDLY_Milli Plumasilba|r
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compra un|r |T132247:0|t[|cFF0070FFMecazancudo|r]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veron Semperámbar|r y |cRXP_FRIENDLY_Ulthaan Ferrocorno|r
    .vendor >>|cRXP_BUY_Compra un|r |T132248:0|t[|cFF0070FFCarnero|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
    .zone Ironforge >> Viaja a Forjaz
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Entrega la misión La devolución del anillo
    .accept 2948 >> Acepta la misión Mejora gnómica
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_Si puedes conseguira una|r |T133215:0|t[Barra de plata] |cRXP_WARN_y una|r |T134105:0|t[Ágata musgosa] |cRXP_WARN_completa esta misión. Si no, abandónala|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >> Entrega la misión Mejora gnómica
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maestro manitas Sobrechispa|r, |cRXP_FRIENDLY_Manitas Mayor Mekkatorque|r, |cRXP_FRIENDLY_Maestro mecánico Funditubo|r y |cRXP_FRIENDLY_Klockmort Palmalicate|r
    .turnin -2922,1 >> Entrega la misión ¡Salva el cerebro de Tecnobot!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >> Entrega la misión La gran traición
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >> Entrega la misión Rescatar los datos
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >> Entrega la misión Esencias artificiales
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Vuela a Los Humedales
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 27-29 Los Humedales
#next 29-30 Vallefresno

step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Entrega la misión Zarpas de las profundidades
    .accept 281 >> Acepta la misión Recuperación de bienes
    .target Karl Boran
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Entrega la misión Entrega cotidiana
    .turnin 484 >> Entrega la misión Piel de crocolisco joven
    .accept 471 >> Acepta la misión Deberes de aprendiz
    .target James Halloran
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .accept 289 >> Acepta la misión La tripulación maldita
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glorin Frenteacerada|r
    .turnin 270 >> Entrega la misión La flota maldita
    .accept 321 >> Acepta la misión Hierro Forjaluz
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .target Innkeeper Helbrek
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .bindlocation 2104
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shida|r
    .turnin 470 >> Entrega la misión Abriéndose paso entre los mocos
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shida|r
    .accept 470 >> Acepta la misión Abriéndose paso entre los mocos
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Acepta la misión La caída de Dun Modr
step
    .goto Wetlands,10.0,56.8
    .target Valstag Ironjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r (NOT TRANSLATED IN :esMX YET)
    .accept 473 >> Accept Report to Captain Stoutfist (NOT TRANSLATED IN :esMX YET)
    .isQuestAvailable 473
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Sube al piso de arriba del Castillo de Menethil
step
    .goto Wetlands,9.86,57.48
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Puñorrecio|r
    .turnin 473 >> Entrega la misión Preséntate ante el capitán Puñorrecio
    .isOnQuest 473
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Puñorrecio|r
    .accept 464 >> Acepta la misión Estandartes de batalla
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarrel Tejepiedra|r
    .turnin 306 >> Entrega la misión La búsqueda del equipo de excavación
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
    >>Mata |cRXP_ENEMY_Raptores jaspeados|r y |cRXP_ENEMY_Estridadores jaspeados|r. Despójalos para obtener la |cRXP_LOOT_Piedra de Relu|r
    >>|cRXP_WARN_Si no lo encuentras para cuando hayas terminado de matar 10 de cada uno, ómitelo. Lo completarás más tarde|r
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
    >>Mata |cRXP_ENEMY_Raptores jaspeados|r y |cRXP_ENEMY_Estridadores jaspeados|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Haz clic en el |cRXP_PICK_Cajón dañado|r del suelo
    .turnin 281 >> Entrega la misión Recuperación de bienes
    .accept 284 >> Acepta la misión La búsqueda continúa
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Haz clic en la |cRXP_PICK_Barrica sellada|r del suelo
    .turnin 284 >> Entrega la misión La búsqueda continúa
    .accept 285 >> Acepta la misión Inspecciona más casuchas
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Haz clic en la |cRXP_PICK_Barrica semienterrada|r del suelo
    .turnin 285 >> Entrega la misión Inspecciona más casuchas
    .accept 286 >> Acepta la misión Devuelve la Estatuilla
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Mata |cRXP_ENEMY_Marineros malditos|r, |cRXP_ENEMY_Marinos malditos|r y al |cRXP_ENEMY_Contramaestre Snellig|r. Despójalo para obtener su |cRXP_LOOT_Tabaquera|r
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
    >>Mata |cRXP_ENEMY_Crocoliscos gigantes de Los Humedales|r. Despójalos para obtener su |cRXP_LOOT_Piel|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>Mata a los |cRXP_ENEMY_Pellejomusgo|r. Despójalos para obtener sus |cRXP_LOOT_Sílex rudimentarios|r
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
    >>Mata |cRXP_ENEMY_Mocos carmesíes|r, |cRXP_ENEMY_Mocos monstruosos|r y |cRXP_ENEMY_Mocos negros|r. Despójalos para obtener |cRXP_LOOT_Bolsa de Shida|r
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
    >>Mata a los |cRXP_ENEMY_Pellejomusgo|r. Despójalos para obtener sus |cRXP_LOOT_Sílex rudimentarios|r
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
    >>Mata |cRXP_ENEMY_Orcos Faucedraco|r. Despójalos para obtener sus |cRXP_LOOT_Estandartes de guerra|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Asaltantes Faucedraco|r, te lanzarán|r |T132149:0|t[Red] |cRXP_WARN_|r
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    #completewith next
    .goto 1437/0,-1993.600,-3498.400,20 >> Toma el atajo a Whelgar's Excavación Site
    .subzoneskip 1036,1 -- angerfang encampment (orcs)
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormer Trenzaferro|r
    .turnin 294 >>Entrega la misión La venganza de Ormer
    .accept 295 >>Acepta la misión La venganza de Ormer
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >> Acepta la misión Desvelando el pasado
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Despoja el |cRXP_LOOT_Fósil de Gargavino|r del suelo
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>Abre las |cRXP_PICK_Reliquias antiguas|r y el |cRXP_PICK_Suelo blando|r. Despójalos para obtener los |cRXP_LOOT_Trozos|r
    >>|cRXP_WARN_Los |cRXP_LOOT_Trozos|r tienen ubicaciones de aparición aleatorias en la Zona de Excavación|r
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
    >>Mata |cRXP_ENEMY_Segadores jaspeados|r y |cRXP_ENEMY_Tajobuches jaspeados|r. Despójalos para obtener la |cRXP_LOOT_Piedra de Relu|r
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
    >>Mata |cRXP_ENEMY_Segadores jaspeados|r y |cRXP_ENEMY_Tajobuches jaspeados|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormer Trenzaferro|r
    .turnin 295 >>Entrega la misión La venganza de Ormer
    .accept 296 >>Acepta la misión La venganza de Ormer
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Entrega la misión Desvelando el pasado
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>Mata |cRXP_ENEMY_Segadores jaspeados|r y |cRXP_ENEMY_Tajobuches jaspeados|r. Despójalos para obtener la |cRXP_LOOT_Piedra de Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Mata a |cRXP_ENEMY_Sarldente|r. Despójalo para obtener su |cRXP_LOOT_Garfa|r
    >>|cRXP_WARN_Por lo general, está en la colina sobre el sitio de excavación principal, pero a veces puede bajar patrullando|r
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
    >>Abre las |cRXP_PICK_Reliquias antiguas|r y el |cRXP_PICK_Suelo blando|r. Despójalos para obtener los |cRXP_LOOT_Trozos|r
    >>|cRXP_WARN_Los |cRXP_LOOT_Trozos|r tienen ubicaciones de aparición aleatorias en la Zona de Excavación, incluido en el terreno elevado donde está |cRXP_ENEMY_Sarldiente|r|r
    >>|cRXP_WARN_Asegúrate de revisar también detrás del Gran Árbol marcado en tu mapa|r
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
    >>Mata |cRXP_ENEMY_Segadores jaspeados|r y |cRXP_ENEMY_Tajobuches jaspeados|r. Despójalos para obtener la |cRXP_LOOT_Piedra de Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
    .isOnQuest 943
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormer Trenzaferro|r
    .turnin 296 >>Entrega la misión La venganza de Ormer
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Entrega la misión Desvelando el pasado
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rethiel el Guardaverde|r
    .turnin 277 >> Entrega la misión No al fuego
    .target Rethiel the Greenwarden
    .accept 275 >> Acepta la misión Ampollas en la tierra
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rethiel el Guardaverde|r
    .target Rethiel the Greenwarden
    .accept 275 >> Acepta la misión Ampollas en la tierra
step
    .goto Wetlands,64.78,75.31
    >>Despoja la |cRXP_LOOT_Zibética|r del suelo
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
	>>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Sube las escaleras hacia el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
    .turnin 943 >>Entrega la misión El prospector despistado
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .turnin 289 >> Entrega la misión La tripulación maldita
    .accept 290 >> Acepta la misión Purga de la maldición
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shida|r
    .turnin 470 >> Entrega la misión Abriéndose paso entre los mocos
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Entrega la misión Devuelve la Estatuilla
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Entrega la misión Deberes de aprendiz
    .target James Halloran
step
    #completewith next
    .goto Wetlands,10.28,56.334,20,0
    .goto Wetlands,9.742,57.866,15 >> Sube al piso de arriba del Castillo de Menethil
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Puñorrecio|r
    .turnin 464 >> Entrega la misión Estandartes de batalla
    .accept 465 >> Acepta la misión La estrategia de Nek'rosh
    .target Captain Stoutfist
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Corre por el mástil del barco
    >>Mata al |cRXP_ENEMY_Capitán Halyndor|r. Despójalo para obtener la |cRXP_LOOT_Llave de caja fuerte|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Entra por el agujero grande en el costado del barco
    >>Haz clic en la |cRXP_PICK_Caja fuerte de El Intrépido cerrada|r del suelo
    .turnin 290 >>Entrega la misión Purga de la maldición
    .accept 292 >>Acepta la misión El ojo de Paleth
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
    >>Mata |cRXP_ENEMY_Trepadores del pantano|r
    >>|cRXP_ENEMY_Trepadores del pantano|r |cRXP_WARN_están en|r |T132320:0|t[Sigilo] |cRXP_WARN_a lo largo de los arroyos|r
    .complete 275,1 --12/12 Fen Creeper
    .mob Fen Creeper
    .isOnQuest 275
step
    .goto Wetlands,47.45,47.01
    >>Haz clic en la |cRXP_PICK_Catapulta Faucedraco|r
    .turnin 465 >>Entrega la misión La estrategia de Nek'rosh
    .accept 474 >>Acepta la misión Derrota a Nek'rosh
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rethiel el Guardaverde|r
    .turnin 275 >>Entrega la misión Ampollas en la tierra
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    #completewith next
    .goto 1437/0,-2673.700,-3708.900,45,0
    .goto 1437/0,-2601.200,-3707.000,40 >> |cRXP_WARN_Approach |cRXP_ENEMY_Cabecilla Nek'rosh|r from the rear. It will be easier to pull some of the |cRXP_ENEMY_Orcs|r surrounding him|r
step
    .goto Wetlands,53.459,54.663
    >>Mata al |cRXP_ENEMY_Cabecilla Nek'rosh|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Largatrenza el Nefasto|r
    .turnin 472 >>Entrega la misión La caída de Dun Modr
    .accept 304 >> Acepta la misión Una misión hedionda
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Acepta la misión La guerra contra los Hierro Negro
    .target Motley Garmason
step
    #completewith next
    >>Mata |cRXP_ENEMY_Enanos Hierro Negro|r, |cRXP_ENEMY_Tuneladores Hierro Negro|r, |cRXP_ENEMY_Saboteadores Hierro Negro|r y |cRXP_ENEMY_Demoledores Hierro Negro|r
    >>|cRXP_ENEMY_Saboteadores Hierro Negro|r |cRXP_WARN_lanzarán|r |T135826:0|t[Detonación zapadora] |cRXP_WARN_cuando mueren, lo que causa daño de Fuego en las proximidades|r
    >>|cRXP_ENEMY_Demoledores Hierro Negro|r |cRXP_WARN_lanzarán continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_a distancia|r
    >>|cRXP_WARN_Quédate en Direforge Hill al este. Evita matarlos en Dun Modr si es posible|r
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
    >>Mata a |cRXP_ENEMY_Balgaras el Hediondo|r. Despójalo para obtener su |cRXP_LOOT_Oreja|r
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
    >>Mata |cRXP_ENEMY_Enanos Hierro Negro|r, |cRXP_ENEMY_Tuneladores Hierro Negro|r, |cRXP_ENEMY_Saboteadores Hierro Negro|r y |cRXP_ENEMY_Demoledores Hierro Negro|r
    >>|cRXP_ENEMY_Saboteadores Hierro Negro|r |cRXP_WARN_lanzarán|r |T135826:0|t[Detonación zapadora] |cRXP_WARN_cuando mueren, lo que causa daño de Fuego en las proximidades|r
    >>|cRXP_ENEMY_Demoledores Hierro Negro|r |cRXP_WARN_lanzarán continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_a distancia|r
    >>|cRXP_WARN_Quédate en Direforge Hill al este. Evita matarlos en Dun Modr si es posible|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Largatrenza el Nefasto|r
    .turnin 304 >> Entrega la misión Una misión hedionda
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Entrega la misión La guerra contra los Hierro Negro
    .target Motley Garmason
    .isQuestComplete 303
step
    #completewith MenethilTurnins2
    .subzone 150 >> Regresa a Menethil Harbor
    .subzoneskip 2104
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Puñorrecio|r arriba
    .goto Wetlands,9.86,57.48
    .turnin 474 >> Entrega la misión Derrota a Nek'rosh
    .target Captain Stoutfist
step
    #label MenethilTurnins2
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glorin Frenteacerada|r
    .turnin 292 >>Entrega la misión El ojo de Paleth
    .accept 293 >>Acepta la misión Limpieza del ojo
    .target Glorin Steelbrow
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 29-30 Vallefresno
#next 30-31 Los Humedales

step
    #completewith next
    .goto Wetlands,5.429,57.485,25 >> Viaja al Muelle del Puerto de Menethil
step
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas|r
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    #completewith FSL
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Astranaar >> Vuela a Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
    .zoneskip The Barrens
step
    .goto 1440/1,-300.900,2796.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .target Shindrell Swiftfire
    .accept 4581 >>Acepta la misión Kayneth Ventoleve
step
    #label FSL
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
    .accept 1035 >> Acepta la misión Lago Cielo Estrellado
    .isQuestAvailable 1035
    .isQuestTurnedIn 1034
step
    #completewith ShamefulWaste
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Forest Song >> Vuela a Canción del bosque
    .target Daelyshia
    .subzoneskip 2358 --Forest Song
step
    .goto 1440/1,-3149.800,2899.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrulla un poco|r
    .target Gnarl
    .accept 9526 >>Acepta la misión Recuperar el Cerro Lumbrevil
step
    .goto 1440/1,-3215.500,2954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kayneth Ventoleve|r
    .target Kayneth Stillwind
    .turnin 4581 >>Entrega la misión Kayneth Ventoleve
    .accept 1011 >>Acepta la misión Los males de los Renegados
    .accept 9519 >>Acepta la misión El cáliz perdido
step
    .goto 1440/1,-3260.400,2966.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Luciel Susurrestelar|r
    .target Sentinel Luciel Starwhisper
    .accept 9518 >>Acepta la misión Agentes de destrucción
step
    .goto 1440/1,-3286.700,2996.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Vedaar|r
    .target Vindicator Vedaar
    .accept 9516 >>Acepta la misión Destruye a la Legión
step
    .goto 1440/1,-3323.700,3001.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .accept 1021 >>Acepta la misión ¡Vil sátiro! ¡Dríades en peligro!
step
    #label ShamefulWaste
    .goto 1440/1,-3307.000,2949.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arquitecto Nemos|r
    .target Architect Nemos
    .accept 9517 >>Acepta la misión ¡Sería una lástima desperdiciarlo!
step
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarrodenus|r
    .fp Azshara>> Consigue la ruta de vuelo de Azshara
    .target Jarrodenus
    .isOnQuest 1017
step
    #completewith next
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarrodenus|r
    .fly Forest Song>> Vuela a Canción del bosque
    .target Jarrodenus
    .subzoneskip 2358
    .subzoneskip 430
step
    .goto 1440/1,-2994.000,2793.600
    >>Despoja la |cRXP_PICK_Chalice of Elune|r en el gran monumento
    .complete 9519,1 --|Chalice of Elune: 1/1
step
    #loop
    .goto 1440/1,-3023.600,2772.900,0
    .goto 1440/1,-2958.200,2698.000,15,0
    .goto 1440/1,-2914.100,2763.800,15,0
    .goto 1440/1,-3023.600,2772.900,15,0
    .goto 1440/1,-2974.000,2686.500,15,0
    >>Despoja la |cRXP_PICK_Madera Contaminada|r en el suelo. Parecen pequeños fardos de madera junto a los árboles alrededor de Satyrnaar
    .complete 9517,2 --|Satyrnaar Fel Wood: 5/5
step
#completewith next
#optional
    >>Kill |cRXP_ENEMY_Machacadores Grito de Guerra|r, |cRXP_ENEMY_Horde Deforesters|r and |cRXP_ENEMY_Exploradora de la Horda|r
    >>Despoja la |cRXP_PICK_Pilas de Madera|r en el suelo. Parecen pilas apiladas de madera
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    >>Kill |cRXP_ENEMY_Sobrestante Gorthak|r
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
    >>Kill |cRXP_ENEMY_Machacadores Grito de Guerra|r, |cRXP_ENEMY_Horde Deforesters|r and |cRXP_ENEMY_Exploradora de la Horda|r
    >>Despoja la |cRXP_PICK_Pilas de Madera|r en el suelo. Parecen pilas apiladas de madera
    .complete 9518,2 --|Warsong Shredder slain: 2/2
    .mob +Warsong Shredder
    .complete 9518,3 --|Horde Deforester slain: 5/5
    .mob +Horde Deforester
    .complete 9518,4 --|Horde Scout slain: 10/10
    .mob +Horde Scout
    .complete 9517,1 --|Warsong Lumber: 15/15
step
    #completewith demons
    >>Kill |cRXP_ENEMY_Azotadora Mannoroc|r, |cRXP_ENEMY_Guardia vil vagabundo|r and |cRXP_ENEMY_Infernal abrasador|r. Loot them for the |T134943:0|t[|cRXP_LOOT_Diabolical Plans|r]
    .use 23777 >>|cRXP_WARN_Usa la|r |T134943:0|t[|cRXP_LOOT_Planes diabólicos|r] |cRXP_WARN_para comenzar la misión|r
    >>|cRXP_WARN_Este objeto tiene una tasa de aparición muy baja, no hagas un esfuerzo especial para conseguirlo|r
    .collect 23777,1,9520
    .accept 9520 >> Acepta la misión Planes diabólicos
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
    >>Haz clic en los |cRXP_PICK_Fertile Dirt Mounds|r en el suelo
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
    >>Kill |cRXP_ENEMY_Azotadora Mannoroc|r, |cRXP_ENEMY_Guardia vil vagabundo|r and |cRXP_ENEMY_Infernal abrasador|r
    .complete 9516,1 --|Mannoroc Lasher slain: 6/6
    .mob +Mannoroc Lasher
    .complete 9516,2 --|Roaming Felguard slain: 6/6
    .mob +Roaming Felguard
    .complete 9516,3 --|Searing Infernal slain: 6/6
    .mob +Searing Infernal
step
#optional
    .use 23777 >>|cRXP_WARN_Usa la|r |T134943:0|t[|cRXP_LOOT_Planes diabólicos|r] |cRXP_WARN_para comenzar la misión|r
    .collect 23777,1,9520
    .accept 9520 >> Acepta la misión Planes diabólicos
    .itemcount 23777,1
step
#requires dirtmound
    .goto Ashenvale,75.29,72.00
    >>Despoja la |cRXP_LOOT_Botella de Enfermedad|r de la mesa
    >>|cRXP_WARN_Ten cuidado, ya que los |cRXP_ENEMY_Renegados|r que la defienden pueden estar en|r |T132320:0|t[Sigilo]
    .complete 1011,1 -- Bottle of Disease (1)
step
    .goto Ashenvale,66.649,82.189
    >>Mata al |cRXP_ENEMY_Oráculo Sombramatorral|r. Despójalo para obtener la |cRXP_LOOT_Piedra lunar caída|r
    .complete 1035,1
    .mob Shadethicket Oracle
    .isOnQuest 1035
step
    #requires slimes
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Viaja a Los Baldíos. Sigue la flecha para evitar a los |cRXP_ENEMY_Guardas de Los Baldíos|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Asciende ala Cima Calígine. Sigue la Flecha hacia la cima
    .isOnQuest 1017
step
    .goto The Barrens,48.22,19.15
    >>Mata a |cRXP_ENEMY_Sarilus Fuenteviciosa|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Los |cRXP_ENEMY_Filo Ardiente|r de los alrededores son solo de nivel 10-12|r
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
    .subzone 392>> Viaja a Trinquete. Sigue la flecha para evitar a los |cRXP_ENEMY_Guardas de Los Baldíos|r
    .isOnQuest 1017
step
    #completewith next
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
    .disablecheckbox
    .fly Forest Song >> Vuela a Canción del bosque
    .target Bragok
    .isOnQuest 1017
    .zoneskip The Barrens,1

step
    .goto 1440/1,-3215.400,2954.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kayneth Ventoleve|r
    .target Kayneth Stillwind
    .turnin 9519 >>Entrega la misión El cáliz perdido
    .turnin 1011 >>Entrega la misión Los males de los Renegados
step
    .goto 1440/1,-3262.000,2967.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Centinela Luciel Susurrestelar|r
    .target Sentinel Luciel Starwhisper
    .turnin 9518 >>Entrega la misión Agentes de destrucción
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicador Vedaar|r
    .target Vindicator Vedaar
    .turnin 9516 >>Entrega la misión Destruir a la Legión
step
    .goto 1440/1,-3285.700,2995.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicador Vedaar|r
    .target Vindicator Vedaar
    .turnin 9520 >>Entrega la misión Planes diabólicos
    .isOnQuest 9520
step
    .goto 1440/1,-3154.100,2898.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gnarl|r
    >>|cRXP_FRIENDLY_Gnarl|r |cRXP_WARN_patrulla un poco|r
    .target Gnarl
    .turnin 9517 >>Entrega la misión ¡Sería una lástima desperdiciarlo!
    .turnin 9526 >>Entrega la misión Recuperar el Cerro Lumbrevil
step
    .goto 1440/1,-2817.500,2949.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anilia|r
    .target Anilia
    .turnin 1021 >>Entrega la misión ¡Vil sátiro! ¡Dríades en peligro!
    .accept 1031 >>Acepta la misión La Rama de Cenarius
step
    .goto Ashenvale,77.99,42.41
    >>Mata a |cRXP_ENEMY_Geltharis|r. Despójalo para obtener la |cRXP_LOOT_Branch of Cenarius|r
    .complete 1031,1
    .mob Geltharis
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Entrega la misión La Rama de Cenarius
    .accept 1032 >> Acepta la misión ¡Muerte a los sátiros!
    .xp <31,1
step
    .goto 1440/1,-3323.000,3000.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1031 >>Entrega la misión La Rama de Cenarius
step
    >>Mata |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    .goto 1440/1,-2818.000,2925.500
    .complete 1032,1 --|Satyr Horns: 16/16
    --Kill Xavian satyrs
    .isOnQuest 1032
step
    .goto 1440/1,-3323.100,3001.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illiyana|r
    .target Illiyana
    .turnin 1032 >>Entrega la misión ¡Muerte a los sátiros!
    .isQuestComplete 1032
step
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suralais Viento Lejano|r
    .target Suralais Farwind
    .goto 1440/1,-3205.700,3001.200
    .fly Astranaar >>Vuela a Astranaar
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
    .turnin 1035 >> Entrega la misión Lago Cielo Estrellado
    .isQuestComplete 1035
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Velene Golpe estelar|r
    .turnin 1017 >> Entrega la misión Mago invocador
	>>|cRXP_WARN_Esta misión te recompensará con la|r |T134754:0|t[Luz de Elune]
    >>|T134754:0|t[Luz de Elune] |cRXP_WARN_- Otorga inmunidad a todo daño y hechizos durante 10 seg.|r
    >>|cRXP_WARN_Esto es de un solo uso. Úsalo en caso de emergencia|r
    .target Sentinel Velene Starstrike
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .hs >> Usa tu Piedra de hogar para ir a Menethil
	>>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Wetlands
    .bindlocation 2104,1 --HS in Menethil
step
    #optional
    #completewith next
    .subzone 415 >>Regresa a Astranaar
step
    #optional
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Daelyshia
    .zoneskip Darkshore
    .bindlocation 2104 --HS not in Menethil
step
    #optional
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Sube el nivel de|r|T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_mientras esperas al barco que te lleva al Puerto de Menethil|r
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .bindlocation 2104 --HS not in Menethil
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 30-31 Los Humedales
#next 31-32 Bosque del Ocaso/STV

step
    #optional
    #completewith BlessedArm
    .zone Wetlands >> Viaja a Los Humedales
step
    >>Haz clic en el |cRXP_PICK_Cofre con marcas de agua|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Entrega la misión Hierro Forjaluz
    .accept 324 >>Acepta la misión Los lingotes perdidos
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Mata |cRXP_ENEMY_Asaltantes Branquiazul|r. Despójálos para obtener |cRXP_LOOT_Lingotes|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #label BlessedArm
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glorin Frenteacerada|r
    .turnin 324 >>Entrega la misión Los lingotes perdidos
    .accept 322 >>Acepta la misión Brazo bendito
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    #completewith PleaTurnin
    .subzone 205 >> Viaja a Dun Modr
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Acepta la misión El Puente Thandol
    .target Rhag Garmason
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Baja por la escalera de caracol en el puente
    >>Haz clic en el |cRXP_PICK_Cadáver de Ebenezer Herrumbra|r
    .turnin 631 >>Entrega la misión El Puente Thandol
    .accept 632 >>Acepta la misión El Puente Thandol
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Entrega la misión El Puente Thandol
    .accept 633 >>Acepta la misión El Puente Thandol
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nubos MacKreel|r
    >>|cRXP_WARN_Salta abajo sobre la cadena invisible primero, luego sobre la viga rota en el puente. Todas las clases pueden hacer este salto. Si no puedes hacerlo, omite este paso|r
    .accept 647 >>Acepta la misión Licor de luna de Mackreel
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Click here for a video guide|r
step
    .goto Arathi Highlands,44.28,92.877
    >>Sumérgete bajo el agua
    >>Abre la |cRXP_PICK_Carta con marcas de agua|r. Despójala para obtener el |T133469:0|t[|cRXP_LOOT_Sobre estropeado por el agua|r]
    >>|cRXP_WARN_Usa el |T133469:0|t[|cRXP_LOOT_Sobre estropeado por el agua|r] para iniciar la misión|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Acepta la misión La carta de Sully Balloo
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Nada hacia el este hacia la rampa de aquí
step
    .goto Arathi Highlands,48.789,88.058
    >>Haz clic en el |cRXP_PICK_Alijo de explosivos|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Entrega la misión El Puente Thandol
    .accept 634 >>Acepta la misión Petición a la Alianza
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >> Viaja al Refugio de la Zaga
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana Nials|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Entrega la misión Petición a la Alianza
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cedrik Prosa|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >> Consigue la Ruta de Vuelo de Tierras Altas de Arathi
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    #completewith SSFP
    .goto 1417/0,-2382.900,-1451.500,70,0
    .goto 1417/0,-1775.100,-1275.000,70,0
    .goto 1424/0,-1548.300,-804.400,70,0
    .subzone 271 >> Viaja a Costasur
    >>|cRXP_WARN_NOTE: As you travel there along the road, watch out for the |cRXP_ENEMY_Forsaken Courier|r. It is a 5 pack of mobs which patrols the road you will be on. Avoid them if you see them|r (NOT TRANSLATED IN :esMX YET)
    .mob Forsaken Courier
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro cervecero Bilger|r en el sótano
    >>|cRXP_WARN_Si fallas esta misión con límite de tiempo, abandónala y salta este paso|r
    .turnin 647 >>Entrega la misión Licor de luna de Mackreel
    .target Brewmeister Bilger
    .isOnQuest 647
step
    #optional
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro cultural Dibbs|r
    .turnin 538 >> Entrega la misión Costasur
    .target Loremaster Dibbs
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Consigue la Ruta de Vuelo de Costasur
    .target Darla Harris
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>Head north along the stream killing |cRXP_ENEMY_Quijaforte|r along the way for their |cRXP_LOOT_Carne de tortuga|r
    >>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Carne de tortuga|r now|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    .mob Snapjaw
step
    #completewith next
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
    >>|cRXP_WARN_NOTE: You may encounter a level 34 |cRXP_ENEMY_Mountain Lion|r on the way there. Just run away from it if you aggro it|r (NOT TRANSLATED IN :esMX YET)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bibilfaz Plumasilba|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>> Consigue la ruta de vuelo de Tierras de la Peste del Oeste
    .fly Ironforge >>Vuela a Forjaz << !Mage
    .target Bibilfaz Featherwhistle
step << Mage
    #completewith KingsTribute
    .zone Ironforge >> |cRXP_WARN_Lanza|r |T135757:0|t[Teletransporte a: Forjaz]
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Javad|r
    .accept 9551 >> Acepta la misión La llamada del aire
    .trainer >> Aprende tus hechizos de clase
    .target Farseer Javad
step << Rogue/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Entrega la misión La carta de Sully Balloo
    .timer 17,La carta de Sully Balloo "Roleplay"
    .accept 683 >> Acepta la misión La petición de Sara Balloo
    .target Sara Balloo
step << Hunter/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelv Martillo Severo|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto 1455/0,-1269.700,-5047.600 << Warrior
    .trainer >> Aprende tus hechizos de clase
    .accept 1718 >> Acepta la misión El isleño << Warrior
    .target Regnus Thundergranite << Hunter
    .target Kelv Sternhammer << Warrior
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Barbalarga|r
    .accept 1179 >>Acepta la misión Los hermanos Pernolatón
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thalgus Tronapuño|r bajando las escaleras
    >>|cRXP_BUY_Compra un|r |T134402:0|t[|cRXP_FRIENDLY_Carcaj pesado|r]
	.collect 7371,1
    .target Thalgus Tronapuño
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Magni Barbabronce|r
    .turnin 683 >> Entrega la misión La petición de Sara Balloo
    .accept 686 >> Acepta la misión Un homenaje real
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran mampostero Marmolez|r
    .turnin 686 >> Entrega la misión Un homenaje real
    .accept 689 >> Acepta la misión Un homenaje real
    .target Grand Mason Marblesten
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Viaja a Kharanos y compra tu|r |T132247:0|t[Mecazancudo] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Viaja a la Granja de Semperámbar y compra tu|r |T132248:0|t[Carnero] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Binjy Plumasilba|r y |cRXP_FRIENDLY_Milli Plumasilba|r
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compra un|r |T132247:0|t[|cFF0070FFMecazancudo|r]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veron Semperámbar|r y |cRXP_FRIENDLY_Ulthaan Ferrocorno|r
    .vendor >>|cRXP_BUY_Compra un|r |T132248:0|t[|cFF0070FFCarnero|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
    .zone Ironforge >> Vuelve a Ironforge
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Toma el tranvía a Ventormenta
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
    .bronzetube
    .target Billibub Cogspinner
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guía de Supervivencia (A)
#subgroup Guía de Supervivencia RXP 20-32
#name 31-32 Bosque del Ocaso/STV
#next 32-33 El Desierto de Sal

step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2928 >> Entrega la misión Excavadoras gyroagujereamáticas
    .target Shoni the Shilent
    .isQuestComplete 2928
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Entrega la misión Brazo bendito
    .accept 325 >> Acepta la misión Armado y listo
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_camina por toda la Catedral|r
    .accept 1274 >> Acepta la misión El diplomático desaparecido
    .target Thomas
    .isNotOnQuest 1274
    .isQuestAvailable 1274
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arzobispo Benedictus|r
    .turnin 293 >> Entrega la misión Limpieza del ojo
    .target Archbishop Benedictus
    .isOnQuest 293
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_camina por toda la Catedral|r
    .accept 1274 >> Acepta la misión El diplomático desaparecido
    .target Thomas
    .isNotOnQuest 1274
    .isQuestAvailable 1274
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Entrega la misión Brazo bendito
    .accept 325 >> Acepta la misión Armado y listo
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2928 >> Entrega la misión Excavadoras gyroagujereamáticas
    .target Shoni the Shilent
    .isQuestComplete 2928
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>|cRXP_WARN_Si encontraste |T133741:0|t[|cRXP_LOOT_Un libro viejo de Historia|r] puedes entregarlo|r
    .accept 337 >> Acepta la misión Un libro viejo de Historia
    .turnin 337 >> Entrega la misión Un libro viejo de Historia
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    .accept 538 >> Acepta la misión Costasur
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Obispo DeLavey|r
    .turnin 1274 >> Entrega la misión El diplomático desaparecido
    .accept 1241 >> Acepta la misión El diplomático desaparecido
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Entrega la misión El diplomático desaparecido
    .accept 1242 >> Acepta la misión El diplomático desaparecido
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Entrega la misión El diplomático desaparecido
    .accept 1243 >> Acepta la misión El diplomático desaparecido
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Newton Ladoquemado|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >> Deposita los siguientes objetos en tu banco:
    >>|T134187:0|t[Zibética] -- 2784
    >>|T132765:0|t[Cajón de cascos de choque] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregar misiones más rápido en Bosque del Ocaso dentro de poco
    >>|T133024:0|t[Tubo de bronce]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Duskwood>> Vuela a Bosque del Ocaso
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Consejero Tallolino|r
    .turnin 377 >> Entrega la misión Crimen y castigo
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>|cRXP_WARN_Omite este paso si no has encontrado un tubo de bronce|r
    .accept 174 >> Acepta la misión Mira las estrellas
    .turnin 174 >> Entrega la misión Mira las estrellas
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Acepta la misión Mira las estrellas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mary la Ciega|r
    .turnin 175 >> Entrega la misión Mira las estrellas
    .accept 177 >> Acepta la misión Mira las estrellas
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Mata al |cRXP_ENEMY_Necrófago demente|r. Despójalo para obtener |cRXP_LOOT_Espejo de Mary|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Necrófago demente|r puede estar dentro de la capilla o deambulando fuera|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Entrega la misión Mira las estrellas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Acepta la misión Mira las estrellas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .accept 159 >> Acepta la misión Entrega de zumo
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Trelayne|r
    .home >> Establece tu Piedra de hogar en Bosque del Ocaso
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    #optional
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .turnin 57 >> Entrega la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
    .isQuestComplete 57
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .accept 231 >> Acepta la misión El amor de una hija
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .accept 58 >> Acepta la misión La Guardia Nocturna
    .target Commander Althea Ebonlocke
step
    .group
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .accept 228 >> Acepta la misión Mor'Ladim
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .accept 231 >> Acepta la misión El amor de una hija
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Backus|r
    .turnin 1243 >> Entrega la misión El diplomático desaparecido
    .accept 1244 >> Acepta la misión El diplomático desaparecido
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >> Viaja al Aserradero de la Vega del Este
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Haggard|r
    .turnin 74 >> Entrega la misión La leyenda de Stalvan
    .accept 75 >> Acepta la misión La leyenda de Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Sube las escaleras de la Casa
    >>Abre el |cRXP_PICK_Cofre del mariscal Haggard|r. Despójalo para obtener |cRXP_LOOT_Una página de diario borrada|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Haggard|r
    .turnin 75 >> Entrega la misión La leyenda de Stalvan
    .accept 78 >> Acepta la misión La leyenda de Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katie Cazadora|r y |cRXP_FRIENDLY_Randal Predatio|r
    .vendor >>|cRXP_BUY_Compra un|r |T132261:0|t[|cFF0070FFCaballo|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
	.hs >> Usa tu Piedra de hogar para ir a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .turnin 78 >> Entrega la misión La leyenda de Stalvan
    .accept 79 >> Acepta la misión La leyenda de Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .turnin 79 >> Entrega la misión La leyenda de Stalvan
    .accept 80 >> Acepta la misión La leyenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Secretario Daltry|r
    .turnin 80 >> Entrega la misión La leyenda de Stalvan
    .accept 97 >> Acepta la misión La leyenda de Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 97 >> Entrega la misión La leyenda de Stalvan
    .accept 98 >> Acepta la misión La leyenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Despoja la |cRXP_LOOT_Lágrima de Tilloa|r del suelo
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >> Mata a |cRXP_ENEMY_Stalvan Mantoniebla|r. Despójalo para obtener su |cRXP_LOOT_Anillo de la familia|r
	>>|cRXP_ENEMY_Stalvan Mantoniebla|r |cRXP_WARN_puede golpear bastante fuerte. "Kitéalo" de regreso hasta el pueblo y obtén ayuda de los |cRXP_FRIENDLY_Vigías|r si es necesario|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r en el interior
    .turnin 98 >> Entrega la misión La leyenda de Stalvan
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>> Vuela a Páramos de Poniente
    .target Felicia Maline
step << !Shaman
    #completewith JuiceDelivery
    .goto Duskwood,28.10,31.46,100 >> Viaja hacia |cRXP_FRIENDLY_Abercrombie|r en el Bosque del Ocaso
step << !Shaman
    #completewith JuiceDelivery
    >>Kill |cRXP_ENEMY_Prole de viuda negra|r on the way to |cRXP_FRIENDLY_Abercrombie|r. Loot them for |cRXP_LOOT_Vials of Spider Venom|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    #label JuiceDelivery
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Entrega la misión Entrega de zumo
    .accept 133 >> Acepta la misión Un espantapájaros para necrófagos
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Mata |cRXP_ENEMY_Propagadores de peste|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Colmillos|r
    >>|cRXP_WARN_Otros |cRXP_ENEMY_Necrófagos|r también pueden soltar |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Colmillos|r pero enfócate en los|r |cRXP_ENEMY_Propagadores de peste|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Entrega la misión Un espantapájaros para necrófagos
    .accept 134 >> Acepta la misión Ladrones ogros
    .target Abercrombie
step
    #completewith next
    >>Kill |cRXP_ENEMY_Prole de viuda negra|r on the way to the Defias House
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Abre la |cRXP_PICK_Caja fuerte de los Defias|r. Despójala para obtener el |cRXP_LOOT_Certificado Defias|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Despoja el |cRXP_LOOT_Cajón de Abercrombie|r del suelo
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> Entra en la Cueva de los Ogros Vul'Gol
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Mata a |cRXP_ENEMY_Zzarc' Vul|r. Despójalo para obtener su |cRXP_LOOT_Monóculo|r
    >>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_tiene 2 puntos de aparición dentro de la Cueva|r
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
    >>Mata |cRXP_ENEMY_Proles de viuda negra|r y |cRXP_ENEMY_Ermitañas carroñeras|r. Despójalas para obtener su |cRXP_LOOT_Veneno de araña|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Entrega la misión Ladrones ogros
    .accept 160 >> Acepta la misión Nota para el alcalde
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .turnin 231 >> Entrega la misión El amor de una hija
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Entrega la misión Armado y listo
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 55 >> Acepta la misión Morbent Vil
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    .group 3
    #completewith next
    >>Limpia el camino hacia el 2º piso de la casa
    .cast 8913 >>|cRXP_WARN_Equipa la|r |T135142:0|t[Pesadilla de Morbent] |cRXP_WARN_en tu mano secundaria|r
    >>|cRXP_WARN_Usa la|r |T135142:0|t[Pesadilla de Morbent] |cRXP_WARN_en|r |cRXP_ENEMY_Morbent Vil|r |cRXP_WARN_para debilitarlo|r
    >>|cRXP_WARN_Recuerda equipar tu arma en tu ranura de mano secundaria después de debilitarlo|r
    .use 7297
step
    .group 3
    .goto Duskwood,16.90,33.40
    >>Mata a |cRXP_ENEMY_Morbent Vil|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Entrega la misión Morbent Vil
    .isQuestComplete 55
    .target Sven Yorgen
step
    .group 3
    .isOnQuest 228
    .goto Duskwood,19.59,37.28
    >>Mata a |cRXP_ENEMY_Mor'Ladim|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_es una Élite nivel 30 que golpea muy fuerte pero se mueve bastante lento. Intenta hacerlo circular alrededor de cualquier árbol grande si es necesario|r
    >>|cRXP_WARN_Tendrás otra oportunidad más tarde para completar este paso si no puedes encontrar un grupo ahora|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .isOnQuest 181,101,78,58,160
    .hs >> Usa tu Piedra de hogar para ir a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >> |T136010:0|t[Regreso astral] de vuelta a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
    >>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>> Vuela a Villa Oscura
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Smitts|r
    .turnin 78 >> Entrega la misión La leyenda de Stalvan
    .accept 79 >> Acepta la misión La leyenda de Stalvan
    .target Tavernkeep Smitts
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 228 >> Entrega la misión Mor'Ladim
    .accept 229 >> Acepta la misión La hija superviviente
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Ladimor|r
    >>|cRXP_FRIENDLY_Vigía Ladimor|r |cRXP_WARN_patrulla por Villa Oscura|r
    .turnin 229 >> Entrega la misión La hija superviviente
    .accept 231 >> Acepta la misión El amor de una hija
    .target Watcher Ladimore
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    >>|cRXP_WARN_Puede que esté muerta o luchando contra|r |cRXP_ENEMY_Puntos|r |cRXP_WARN_si éste ataca Villa Oscura. Considera matar criaturas cerca del pueblo hasta que reaparezca o cambiar de capa (layer) (si es posible)|r
    .turnin 58 >> Entrega la misión La Guardia Nocturna
    .turnin 79 >> Entrega la misión La leyenda de Stalvan << !Shaman
    .accept 80 >> Acepta la misión La leyenda de Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Secretario Daltry|r
    .turnin 80 >> Entrega la misión La leyenda de Stalvan
    .accept 97 >> Acepta la misión La leyenda de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r
    .turnin 160 >> Entrega la misión Nota para el alcalde
    .accept 251 >> Acepta la misión Traduce la nota de Abercrombie
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Entrega la misión Traduce la nota de Abercrombie
    .target Sirra Von'Indi
    .accept 401 >> Acepta la misión Espera a que Sirra acabe
    .turnin 401 >> Entrega la misión Espera a que Sirra acabe
    .accept 252 >> Acepta la misión Una traducción para Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r
    .turnin 252 >> Entrega la misión Una traducción para Ello
    .target Lord Ello Ebonlocke
step
    .group
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r
    .accept 253 >> Acepta la misión La novia del embalsamador
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Destruye la |T134939:0|t[Carta traducida de El Embalsamador] ya no la necesitas
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Althea Cerranegro|r
    .turnin 97 >> Entrega la misión La leyenda de Stalvan
    .accept 98 >> Acepta la misión La leyenda de Stalvan
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Entrega la misión Mira las estrellas
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r en el interior
    .turnin 101 >> Entrega la misión El Tótem de castigo
    .target Madame Eva
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía Backus|r
    .turnin 1244 >> Entrega la misión El diplomático desaparecido
    .accept 1245 >> Acepta la misión El diplomático desaparecido
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Despoja la |cRXP_LOOT_Lágrima de Tilloa|r del suelo
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >> Mata a |cRXP_ENEMY_Stalvan Mantoniebla|r. Despójalo para obtener su |cRXP_LOOT_Anillo de la familia|r
	>>|cRXP_ENEMY_Stalvan Mantoniebla|r |cRXP_WARN_puede golpear bastante fuerte. "Kitéalo" de regreso hasta el pueblo y obtén ayuda de los |cRXP_FRIENDLY_Vigías|r si es necesario|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Eva|r en el interior
    .turnin 98 >> Entrega la misión La leyenda de Stalvan
    .target Madame Eva
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .accept 221 >> Acepta la misión Huargen en el bosque
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
	>>Mata |cRXP_ENEMY_Sombracechadores Penumbría|r
    >>Los |cRXP_ENEMY_Sombracechadores Penumbría|r |cRXP_WARN_se mueven muy rápido y tienen un radio de amenaza mayor al normal|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Entrega la misión Huargen en el bosque
    .accept 222 >> Acepta la misión Huargen en el bosque
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >> Mata |cRXP_ENEMY_Colmilloviles Penumbría|r y |cRXP_ENEMY_Corruptos Penumbría|r
	>>|cRXP_WARN_Ten cuidado ya que los enemigos de la zona reaparecen todos juntos después de unos minutos|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >> Dirígete al sur hacia Vega de Tuercespina
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >> Aprende la ruta de vuelo de Rebel Camp
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Estate atento al evento especial del |cRXP_FRIENDLY_Soldado Thorsen|r. Patrullará camino abajo desde el asentamiento rebelde cada 30 minutos|r
    >>|cRXP_FRIENDLY_Soldado Thorsen|r |cRXP_WARN_será atacado por 2 |cRXP_ENEMY_Agentes de Kurzen|r. Si no ves este evento, ignora este paso|r
    >>Mata a los dos |cRXP_ENEMY_Agentes de Kurzen|r y luego acepta la misión del |cRXP_FRIENDLY_Soldado Thorsen|r que estará disponible tras salvarlo
    .accept 215 >> Acepta la misión Los secretos de la jungla
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barnil Jarropetra|r y |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 583 >> Acepta la misión Bienvenido a la jungla
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Entrega la misión Bienvenido a la jungla
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ajeck Rouack|r y |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Acepta la misión Domina el tigre
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Acepta la misión Domina la pantera
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>Mata |cRXP_ENEMY_Panteras jóvenes|r
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
	>>Mata |cRXP_ENEMY_Tigres jóvenes de Tuercespina|r
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
	>>Mata |cRXP_ENEMY_Panteras jóvenes|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ajeck Rouack|r y |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_No aceptes las misiones siguientes aún|r
    .turnin 185 >> Entrega la misión Domina el tigre
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Entrega la misión Domina la pantera
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Teniente Doren|r
    >>|cRXP_WARN_No aceptes la siguiente misión todavía|r
    .turnin 215 >> Entrega la misión Los secretos de la jungla
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >> Corre de vuelta a Bosque del Ocaso
step
    .group 2
    .goto Duskwood,28.864,30.765
    >>Haz clic en la |cRXP_PICK_Tierra de la tumba de Eliza|r para invocar a |cRXP_ENEMY_Eliza|r
    >>Mata a |cRXP_ENEMY_Eliza|r. Despójala para obtener |cRXP_LOOT_El corazón del embalsamador|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_lanzará|r |T135846:0|t[Descarga de Escarcha] |cRXP_WARN_y|r |T135848:0|t[Nova de escarcha] |cRXP_WARN_además de invocar a varios|r |cRXP_ENEMY_Guardias|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Haz clic en |cRXP_PICK_Una tumba erosionada|r
    .turnin 231 >> Entrega la misión El amor de una hija
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >> Usa tu Piedra de hogar para ir a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >> |T136010:0|t[Regreso astral] de vuelta a Villa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
    >>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >> Corre de vuelta a Darkshire
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Ello Cerranegro|r
    .turnin 253 >> Entrega la misión La novia del embalsamador
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Entrega la misión Huargen en el bosque
    .accept 223 >> Acepta la misión Huargen en el bosque
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Entrega la misión Huargen en el bosque
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Vuela a Ventormenta
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> |cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Malin|r
    .accept 690 >> Acepta la misión Una petición de Malin
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Connor Ríos|r
    .accept 1301 >> Acepta la misión James Hyal
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Newton Ladoquemado|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849 >> Retira los siguientes artículos de tu banco:
    >>|T134187:0|t[Zibética] -- 2784
    >>|T132765:0|t[Cajón de cascos de choque] -- 5849
    .target Newton Burnside
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clarividente Umbrua|r
	.trainer >> Aprende tus hechizos de clase
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Entrega la misión El diplomático desaparecido
    .accept 1246 >> Acepta la misión El diplomático desaparecido
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dashel Puñopiedra|r
    >>|cRXP_ENEMY_Dashel Puñopiedra|r |cRXP_WARN_se volverá hostil después de aceptar la siguiente misión. Derrótalo|r
    .turnin 1246 >> Entrega la misión El diplomático desaparecido
    .accept 1447,1 >> Acepta la misión El diplomático desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Derrota a |cRXP_ENEMY_Dashel Puñopiedra|r
    >>|cRXP_ENEMY_Dashel Puñopiedra|r |cRXP_WARN_también atacará con 2 |cRXP_ENEMY_Matones del Casco Antiguo|r. Ignóralos y enfócate en|r |cRXP_ENEMY_Dashel Puñopiedra|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dashel Puñopiedra|r
    .turnin 1447 >> Entrega la misión El diplomático desaparecido
    .accept 1247 >> Acepta la misión El diplomático desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Entrega la misión El diplomático desaparecido
    .accept 1248 >> Acepta la misión El diplomático desaparecido
    .target Elling Trias
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregas más rápidas en Costasur pronto
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>10 |T134026:0|t[Carne de tortuga]
    .collect 3712,10,555,1
    .target Auctioneer Jaxon
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Newton Ladoquemado|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >> Retira los siguientes artículos de tu banco:
    >>|T134187:0|t[Zibética] -- 2784
    >>|T132765:0|t[Cajón de cascos de choque] -- 5849
    >>|T132824:0|t[Lleno Bota Bolsa] << Shaman
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Malin|r
    .accept 690 >> Acepta la misión Una petición de Malin
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Connor Ríos|r
    .accept 1301 >> Acepta la misión James Hyal
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Ve a El Cordero Degollado y baja las escaleras
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zardeth de los Zarpanegra|r
    .turnin 335 >> Entrega la misión Una noble cerveza
    .accept 336 >> Acepta la misión Una noble cerveza
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1798 >> Acepta la misión Buscando a Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Demisette Cloyce|r
    >>|cRXP_WARN_Omite este paso si aceptaste la misma misión de Forjaz anteriormente|r
    .accept 4738 >> Acepta la misión Buscando a Menara Nadiz
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
    .turnin 336 >> Entrega la misión Una noble cerveza
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>|cRXP_WARN_Si encontraste |T133741:0|t[|cRXP_LOOT_Un libro viejo de Historia|r] puedes entregarlo|r
    .accept 337 >> Acepta la misión Un libro viejo de Historia
    .turnin 337 >> Entrega la misión Un libro viejo de Historia
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    .accept 538 >> Acepta la misión Costasur
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conde Remington Bonacresta|r
    .accept 543 >>Acepta la misión La Tiara Perenolde
    .target Count Remington Ridgewell
step << Druid
    #completewith DruidMount
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Vuela a Teldrassil
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lelanai|r y |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Compra un|r |T132267:0|t[|cFF0070FFSable de hielo|r] |cRXP_BUY_o un|r |T132225:0|t[|cFF0070FFSable de la noche|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_si es necesario mientras esperas el Tranvía|r
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >> |cRXP_WARN_Lanza|r |T135757:0|t[Teletransporte a: Forjaz]
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Viaja a Kharanos y compra tu|r |T132247:0|t[Mecazancudo] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Viaja a la Granja de Semperámbar y compra tu|r |T132248:0|t[Carnero] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Binjy Plumasilba|r y |cRXP_FRIENDLY_Milli Plumasilba|r
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compra un|r |T132247:0|t[|cFF0070FFMecazancudo|r]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veron Semperámbar|r y |cRXP_FRIENDLY_Ulthaan Ferrocorno|r
    .vendor >>|cRXP_BUY_Compra un|r |T132248:0|t[|cFF0070FFCarnero|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
    .zone Ironforge >> Vuelve a Ironforge
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
	.fly Wetlands >> Vuela a Los Humedales
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Aceptar esta misión hará que |cRXP_ENEMY_Tapoke "El Flaco" Jahn|r junto a la entrada de la Posada, entre en|r |T132320:0|t[Sigilo] |cRXP_WARN_y escape afuera|r
    .turnin 1248 >> Entrega la misión El diplomático desaparecido
    .accept 1249,1 >> Acepta la misión El diplomático desaparecido
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_¡Corre rápido afuera!|r
    >>|cRXP_WARN_Derrota a |cRXP_ENEMY_Tapoke "El Flaco" Jahn|r. El |cRXP_ENEMY_Amigo de El Flaco|r escapará cuando |cRXP_ENEMY_Tapoke "El Flaco" Jahn|r se rinda|r
    >>|cRXP_WARN_Usa cualquier control de masas (CC) en el |cRXP_ENEMY_Amigo de El Flaco|r si es necesario|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mikhail|r
    >>|cRXP_WARN_Espera al Roleplay|r
    .turnin 1249 >> Entrega la misión El diplomático desaparecido
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tapoke "El Flaco" Jahn|r
    .accept 1250 >> Acepta la misión El diplomático desaparecido
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Entrega la misión El diplomático desaparecido
    .accept 1264 >> Acepta la misión El diplomático desaparecido
    .target Mikhail
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lelanai|r y |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Compra un|r |T132267:0|t[|cFF0070FFSable de hielo|r] |cRXP_BUY_o un|r |T132225:0|t[|cFF0070FFSable de la noche|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
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
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >> Enter The Exodar through the back entrance (NOT TRANSLATED IN :esMX YET)
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Clarividente Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Nobundo|r
    >>|cRXP_FRIENDLY_Clarividente Nobundo|r |cRXP_WARN_patrols slightly|r
    .target Farseer Nobundo
    .turnin 9551 >> Entrega la misión La llamada del aire
    .accept 9552 >> Acepta la misión La llamada del aire
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Sal de El Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torallius el Controlador de la Manada|r y |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Aprende |T136103:0|t[Aprendiz jinete]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Compra un|r |T132255:0|t[|cFF0070FFElekk|r]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Vuela a Avanzada de Sangre
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acuosa|r bajo el agua
    .turnin 9504 >> Entrega la misión La llamada del agua
    .accept 9508 >> Acepta la misión La llamada del agua
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >> Click the |cRXP_PICK_Barrica de basura|r to summon |cRXP_ENEMY_Tel'athion the Impure|r
    .timer 3,La llamada del agua RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Kill |cRXP_ENEMY_Tel'athion the Impure|r. Loot him for his |cRXP_LOOT_Cabeza|r
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acuosa|r bajo el agua
    .turnin 9508 >> Entrega la misión La llamada del agua
    .accept 9509 >> Acepta la misión La llamada del agua
    .target Aqueous
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >> Viaja a Avanzada de Sangre
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >> Sigue la flecha de cerca alrededor del exterior de The Exodar para llegar a Wildwind Camino
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >> Continúa siguiendo el camino hacia Wildwind Camino
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Entrega la misión La llamada del aire
    .accept 9553 >> Acepta la misión La llamada del aire
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Entrega la misión La llamada del aire
    .accept 9554 >> Acepta la misión La llamada del aire
    .target Susurrus
step << Shaman
    .gossip 17435,0 >> Habla con |cRXP_FRIENDLY_Susurrus|r de nuevo para regresar a The Exodar
    .timer 89,La llamada del aire RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >> Baja dentro de The Exodar de nuevo
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Nobundo|r
    >>|cRXP_FRIENDLY_Clarividente Nobundo|r |cRXP_WARN_patrols slightly|r
    >>|cRXP_WARN_Obtendrás el|r |T136022:0|t[Viento veloz] |cRXP_WARN_efecto durante 1 hora después de entregar esta misión, aumentando tu velocidad de movimiento un 40% y tu velocidad de ataque un 30%|r
    >>|cRXP_WARN_¡No te vayas mientras tengas este efecto!|r
    .target Farseer Nobundo
    .turnin 9509 >> Entrega la misión La llamada del agua
    .turnin 9554 >> Entrega la misión La llamada del aire
step << Draenei
    #optional
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >> |T136010:0|t[Regreso astral] a Los Humedales
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Entrega la misión James Hyal
    .accept 1302 >> Acepta la misión James Hyal
    .target Vincent Hyal
step
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Toma el barco hacia Theramore
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])
