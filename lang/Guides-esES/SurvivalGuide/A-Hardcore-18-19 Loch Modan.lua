if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 18-19 Loch Modan
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#next 19-20 Montañas Crestagrana


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
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
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Compra un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_y|r |T132382:0|t[Flechas afiladas]
    .collect 11362,1 --Medium Quiver (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Samor Festivus|r arriba
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Samor Festivus|r no tiene ninguna|r
    .target Samor Festivus
step << !Druid !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r << Paladin
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner << Warrior
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .xp <18,1
step << !Druid !Hunter
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fly Loch Modan >> Vuela a Loch Modan
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Narizroma|r
    .accept 255 >> Acepta la misión Mercenarios
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .accept 436 >> Acepta la misión La excavación de Vetaferro
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Viaja al norte a la Estación de Algaz
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta << NightElf
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Viaja a la Presa de las Tres Cabezas
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .accept 250 >> Acepta la misión Se aproxima una oscura amenaza
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>Haz clic en la |cRXP_PICK_Barrica sospechosa|r
    .turnin 250 >> Entrega la misión Se aproxima una oscura amenaza
    .accept 199 >> Acepta la misión Se aproxima una oscura amenaza
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .turnin 199 >> Entrega la misión Se aproxima una oscura amenaza
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    +|cRXP_WARN_¡Ten cuidado con los|r |cRXP_ENEMY_Corredores de la Horda|r|cRXP_WARN_! Es un grupo élite de 2 |cRXP_ENEMY_Orcos|r y un |cRXP_ENEMY_Tauren|r que patrullan el lado este de El Lago (la línea en tu mapa)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja a la Cabaña del Errante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .accept 257 >> Acepta la misión La fanfarronada de un cazador
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Claude Erksine|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dargh Tirojusto|r
    .trainer >> Aprende tus hechizos de clase
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .accept 385 >> Acepta la misión La caza de crocoliscos
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
    >>Mata |cRXP_ENEMY_Águilas ratoneras montesas|r
    >>|cRXP_WARN_Debes completar la misión y regresar a |cRXP_FRIENDLY_Daryl el Jovenzuelo|r en menos de 15 minutos. Si fallas la misión, abandónala y vuelve a aceptarla|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja hacia |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Entrega la misión La fanfarronada de un cazador
    .accept 258 >> Acepta la misión El reto de un cazador
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
    >>Mata |cRXP_ENEMY_Jabalíes monteses mayores|r
    >>|cRXP_WARN_Debes completar la misión y regresar junto a |cRXP_FRIENDLY_Daryl el Jovenzuelo|r en 12 minutos. Si fallas la misión, abandónala y vuelve a aceptarla|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja hacia |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Entrega la misión El reto de un cazador
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vyrin Vientoveloz|r
    .goto Loch Modan,81.73,64.15
    .accept 271 >> Acepta la misión La venganza de Vyrin
    .target Vyrin Swiftwind
step
    #completewith next
    +|cRXP_WARN_¡Ten cuidado con los|r |cRXP_ENEMY_Corredores de la Horda|r|cRXP_WARN_! Es un grupo élite de 2 |cRXP_ENEMY_Orcos|r y un |cRXP_ENEMY_Tauren|r que patrullan el lado este de El Lago (la línea en tu mapa)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Viaja a la isla ubicada en el centro de El Lago
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Mata |cRXP_ENEMY_Crocoliscos del lago|r. Despójalos para obtener su |cRXP_LOOT_Carne|r y |cRXP_LOOT_Piel|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    +|cRXP_WARN_¡Ten cuidado con los|r |cRXP_ENEMY_Corredores de la Horda|r|cRXP_WARN_! Es un grupo élite de 2 |cRXP_ENEMY_Orcos|r y un |cRXP_ENEMY_Tauren|r que patrullan el lado este de El Lago (la línea en tu mapa)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Viaja a la Excavación de Vetaferro
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magmar Ceñimal|r
    .turnin 436 >> Entrega la misión La excavación de Vetaferro
    .accept 297 >> Acepta la misión Recoger ídolos
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .accept 298 >> Acepta la misión Un informe sobre el avance de la excavación
    .target Prospector Ironband
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>Mata |cRXP_ENEMY_Cavadores Rompecantos|r, |cRXP_ENEMY_Geománticos Rompecantos|r y |cRXP_ENEMY_Troggs rabiosos|r. Despójalos para obtener sus |cRXP_LOOT_Ídolos|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magmar Ceñimal|r
    .turnin 297 >> Entrega la misión Recoger ídolos
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >> Viaja al Fuerte Zarpagris
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>Mata al |cRXP_ENEMY_Viejo Tiznado|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Viejo Tiznado|r |cRXP_WARN_no siempre está dentro de su cueva y puede patrullar por el camino hacia la zona baja|r
    >>|cRXP_ENEMY_Viejo Tiznado|r |cRXP_WARN_es un Élite de nivel 20|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja a la Cabaña del Errante
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .turnin 385 >> Entrega la misión La caza de crocoliscos
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >> Entrega la misión La venganza de Vyrin
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >> Acepta la misión La venganza de Vyrin
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vyrin Vientoveloz|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >> Entrega la misión La venganza de Vyrin
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >> Abandona la misión La venganza de Vyrin
step
    .group
    .goto Loch Modan,73.87,29.64,100 >> Viaja a la Fortaleza de Mo'grosh
    .isOnQuest 255
step
    .group 3
    >>Mata |cRXP_ENEMY_Ogros Mo'grosh|r, |cRXP_ENEMY_Déspotas Mo'grosh|r y |cRXP_ENEMY_Toscos Mo'grosh|r
    >>|cRXP_ENEMY_Toscos Mo'grosh|r |cRXP_WARN_solo se encuentran dentro de las Cuevas. No se recomienda entrar en la cueva del noreste; solo mátalos en las 2 otras Minicuevas|r
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
    +|cRXP_WARN_¡Ten cuidado con los|r |cRXP_ENEMY_Corredores de la Horda|r|cRXP_WARN_! Es un grupo élite de 2 |cRXP_ENEMY_Orcos|r y un |cRXP_ENEMY_Tauren|r que patrullan el lado este de El Lago (la línea en tu mapa)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >> Viaja a Thelsamar
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >> Entrega la misión Un informe sobre el avance de la excavación
    .accept 301 >> Acepta la misión Informe a Forjaz
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Narizroma|r
    .turnin 255 >> Entrega la misión Mercenarios
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >> Abandona la misión Mercenarios
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >> Entrega la misión Informe a Forjaz
    .target Prospector Stormpike
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bailey Mantopétreo|r
    .bankdeposit 5996 >> Deposita los siguientes objetos en tu banco:
    >>|T134797:0|t[Elixir de respiración acuática] (Si los tienes) -- 5996
    .target Bailey Stonemantle
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Cortallave Volopiñón|r no tiene uno|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entra en el Tranvía Subterráneo. Toma el tranvía a Ventormenta
    >>|cRXP_WARN_Sube tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el tranvía|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Click here for a video guide for a logout skip on the tram|r
]])
