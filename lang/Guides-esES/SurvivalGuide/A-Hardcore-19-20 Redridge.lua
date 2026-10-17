if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 19-20 Montañas Crestagrana
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#next 20-21 Costa Oscura/Vallefresno

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r y |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .goto StormwindClassic,65.438,21.175
    .target +Wilder Thistlenettle
step << Hunter
    #ssf
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Hornillos
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #ah
    #completewith ExitSW
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_o algo mejor de la Casa de Subastas|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .target Frederick Hornillos
    .money <0.6722
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Hornillos
step << Hunter
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_si es una mejora|r
    >>|cRXP_WARN_Es importante comprar una varita que no haga daño de sombra. Tendrás que enfrentarte a enemigos resistentes al daño de sombra más tarde|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .trainer >> Aprende tus hechizos de clase
    .target Sheldras Moontree
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_y un|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona] |cRXP_WARN_en tu mano principal cuando seas nivel 21 y|r |T135342:0|t[Kris] |cRXP_WARN_en tu mano secundaria|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    >>|T134572:0|t[Mena de Rethban]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .collect 2798,5,347,1 -- Rethban Ore (5)
    .target Auctioneer Jaxon
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
step << NightElf
    #label ExitSW
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Sal de Ventormenta
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
    .accept 246 >> Acepta la misión Evaluar la amenaza
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Acepta la misión Las herramientas perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acepta la misión El precio de unas herraduras
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acepta la misión Mensajero a Ventormenta
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .accept 129 >> Acepta la misión Una comida gratis
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>Sal de la Posada
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .accept 92 >> Acepta la misión Estofado Crestagrana
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Acepta la misión El collar de Hilary
step
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Tiene múltiples ubicaciones de aparición en el Lago|r
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Entrega la misión El collar de Hilary
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
	.target Ariena Stormfeather
    .fly Westfall >> Vuela a Páramos de Poniente
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
    .target Thor
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .target Master Mathias Shaw
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Viaja a Arroyo de la Luna
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Viaja al Faro de Poniente
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .accept 103 >> Acepta la misión Guardián de la Llama
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Viejo Ojosombrío|r |cRXP_WARN_patrulla de arriba a abajo por la Playa Larga. Si no lo ves a lo largo de Playa Larga, espera a que aparezca en el campamento |cRXP_ENEMY_Múrloc|r más al sur|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
step
    .abandon 103 >> Abandona la misión Guardián de la Llama
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a Las Minas de la Muerte
    >>|cRXP_WARN_¡Permanece junto a |cRXP_FRIENDLY_El Traidor de los Defias|r en todo momento! Prepárate para luchar contra |cRXP_ENEMY_Los Defias|r al llegar a Arroyo de la Luna|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_Usa el |T134269:0|t[|cRXP_LOOT_Mapa del tesoro del capitán Sander|r] para comenzar la misión|r
    .use 1357
    .accept 136 >> Acepta la misión El tesoro escondido del capitán Sanders
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Haz clic en el |cRXP_PICK_Baúl del Capitán|r
    .turnin 136 >> Entrega la misión El tesoro escondido del capitán Sanders
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>Haz clic en el |cRXP_PICK_Baúl del Capitán|r
    .accept 138 >> Acepta la misión El tesoro escondido del capitán Sanders
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>Haz clic en la |cRXP_PICK_Barrica rota|r
    .turnin 138 >> Entrega la misión El tesoro escondido del capitán Sanders
    .accept 139 >> Acepta la misión El tesoro escondido del capitán Sanders
    .isQuestTurnedIn 136
step
    .goto Westfall,40.63,17.03
    >>Haz clic en la |cRXP_PICK_Vieja jarra|r
    .turnin 139 >> Entrega la misión El tesoro escondido del capitán Sanders
    .accept 140 >> Acepta la misión El tesoro escondido del capitán Sanders
    .isQuestTurnedIn 138
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >> Nada hacia la Isla
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>Haz clic en el |cRXP_PICK_Cofre cerrado|r
    .turnin 140 >> Entrega la misión El tesoro escondido del capitán Sanders
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Ahora deberías buscar un grupo para Las Minas de la Muerte
    >>Grindea gnolls mientras armas un grupo para Las Minas de la Muerte
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Viaja a Las Minas de la Muerte
step
.dungeon DM
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    >>|cRXP_WARN_Puedes completar esta misión después de entrar en la Mazmorra|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
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
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
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
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
.dungeon DM
    #completewith DMend
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acepta la misión La carta sin enviar
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Viaja a Colina del Centinela
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .goto Westfall,56.67,47.35
    .target +Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Acepta la misión Lejana corrupción
step
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Kristoff|r
    >>Omite este paso si todavía no eres nivel 20
    .accept 343 >> Acepta la misión Hablando de entereza
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Entrega la misión La carta sin enviar
    .accept 389 >> Acepta la misión Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r y |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target +Shoni the Shilent
step -- adding again 2nd time incase hitting 20 after turning in triple DM quests
.dungeon DM
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Kristoff|r
    >>Omite este paso si todavía no eres nivel 20
    .accept 343 >> Acepta la misión Hablando de entereza
    .target Brother Kristoff
    .xp <20,1
step
.dungeon DM
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Viaja hacia |cRXP_FRIENDLY_Milton Gavilla|r en la Biblioteca de Ventormenta
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>Omite este paso si todavía no eres nivel 20
    .turnin 343 >> Entrega la misión Hablando de entereza
    .accept 344 >> Acepta la misión Hermano Paxton
    .target Milton Sheaf
    .xp <20,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 389 >> Entrega la misión Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    >>Vuela a Crestagrana si todavía estás en Páramos de Poniente
    .fly Redridge >> Vuela a Crestagrana
    .target Thor
    .zoneskip Westfall,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Sal de Ventormenta. Viaja a Villorada
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Viaja a la Abadía de Villanorte
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 344 >> Entrega la misión Hermano Paxton
    .accept 345 >> Acepta la misión Suministros de tinta
    .target Brother Paxton
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Viaja a la Torre de Azora. Sube la torre. Sigue la flecha para tomar un atajo a través de las montañas
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 343
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Estrellaclara|r
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134850:0|t|T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << Warrior/Rogue
    .target Alba Estrellaclara
    .subzoneskip 91,1
step
.dungeon DM
    .isQuestTurnedIn 343
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acepta la misión Gnolls invasores
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Entrega la misión Una comida gratis
    .accept 130 >> Acepta la misión Una visita al herborista
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
step
    .isQuestTurnedIn 343
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Entrega la misión Suministros de tinta
    .target Foreman Oslow
step
    .isQuestTurnedIn 118
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
    .accept 122 >> Acepta la misión Escamas de barriga
step
    #era/som
    #completewith MongrelPoacher
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_NO vendas ninguno de estos objetos hasta que entregues la misión Estofado Crestagrana|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
    .collect 2296,5,92,1
    .mob +Great Goretusk
    .collect 1080,5,92,1
    .mob +Dire Condor
    .collect 1081,5,92,1
    .mob +Tarantula
step
    .isOnQuest 122
    #completewith Toolbox
    >>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    >>No tienes que completar esta misión ahora
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
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    #era/som
    #completewith next
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_NO vendas ninguno de estos objetos hasta que entregues la misión Estofado Crestagrana|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
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
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #era/som
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_NO vendas ninguno de estos objetos hasta que entregues la misión Estofado Crestagrana|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
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
    >>|cRXP_WARN_Salta al lago. Ten cuidado con el |cRXP_ENEMY_Trillador del Lago|r Élite que patrulla en el agua|r
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-3000 >> Mata enemigos hasta que te falten 3000xp para el nivel 20
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> Viaja a Villa del Lago
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Entrega la misión Las herramientas perdidas
    .accept 89 >> Acepta la misión El puente sempiterno
step
    #era
    .isQuestComplete 122
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
    >>Omite este paso si aún no has completado la misión Escamas de barriga, la harás más adelante
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >> Entrega la misión Escamas de barriga
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Entrega la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> Entrega la misión Estofado Crestagrana
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Entrega la misión Evaluar la amenaza
step
    .xp 20 >> Asegúrate de ser nivel 20 antes de volar a Ventormenta
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
	.target Ariena Stormfeather
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Tormento (Rango 2)]
    .target Spackle Thornberry
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
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
	.xp <20,1
    .target Larimaine Purdue
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Aprende tus hechizos de clase
    .train 768 >> Aprende |T132115:0|t[Forma felina]
    .target Sheldras Moontree
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_y equípala al nivel 21|r
    >>|cRXP_BUY_Compra algo de la Casa de Subastas si hay algo más barato/mejor|r
    >>|cRXP_WARN_Omite este paso si tienes algo mejor|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << !Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión de |T132290:0|t[Venenos] más tarde
    >>Esto te ahorrará tiempo ya que no tendrás que dar vueltas buscando enemigos para matar. Omite este paso si no deseas comprarlo
    .collect 6452,1,2359,1 --Anti-Venom (1)
    .target Auctioneer Jaxon
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_y equípala al nivel 21|r
    >>|cRXP_WARN_Omite este paso si tienes algo mejor|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_si tienes suficiente dinero. Equipalo al nivel 21|r
    >>|cRXP_BUY_Compra algo de la Casa de Subastas si hay algo más barato/mejor|r
    >>|cRXP_WARN_Omite este paso si tienes algo mejor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_si tienes suficiente dinero. Equipalo al nivel 21|r
    >>|cRXP_WARN_Omite este paso si tienes algo mejor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Acepta la misión Lejana corrupción
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Kristoff|r
    .accept 343 >> Acepta la misión Hablando de entereza
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
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
    .target Duthorian Rall
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
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> Viaja hacia |cRXP_FRIENDLY_Milton Gavilla|r en la Biblioteca de Ventormenta
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    .turnin 343 >> Entrega la misión Hablando de entereza
    .accept 344 >> Acepta la misión Hermano Paxton
    .target Milton Sheaf
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .train 1804 >> Entrena |T136058:0|t[Forzar cerradura] para aprender Forzar cerraduras
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra en el Cuartel General de IV:7. Sube las escaleras hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .target +Renzik "The Shiv"
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Sal de Ventormenta. Viaja a Villorada
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> Viaja a la Abadía de Villanorte
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 344 >> Entrega la misión Hermano Paxton
    .accept 345 >> Acepta la misión Suministros de tinta
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,57.518,51.595,25,0
    .goto Elwynn Forest,58.14,52.50,20,0
    .goto Elwynn Forest,65.20,69.80,50 >> Viaja a la Torre de Azora. Sube la torre. Sigue la flecha para tomar un atajo a través de las montañas
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Estrellaclara|r
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134850:0|t|T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << Warrior/Rogue
    .target Alba Estrellaclara
    .subzoneskip 91,1
step
    #completewith TravelRM
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .zoneskip Elwynn Forest,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    >>Vuela a Montañas Crestagrana si estás en Ventormenta
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 345 >> Entrega la misión Suministros de tinta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Acepta la misión Escamas de barriga
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .target Lucius
    .accept 2282 >> Acepta la misión Molino de Alther
step
    #era
	#completewith next
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
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
    >>Mata a los |cRXP_ENEMY_Toscos de Crestagrana|r y a los |cRXP_ENEMY_Místicos de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
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
    +Abre los |cRXP_PICK_Arcones de prácticas|r hasta que alcances nivel 80 en |T136058:0|t[Forzar cerraduras]
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Sube tu|r |T133971:0|t[Cocina] |cRXP_WARN_usando|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que farmeaste anteriormente. Necesitas nivel 50 de habilidad de|r |T133971:0|t[Cocina]
    +|cRXP_WARN_Si necesitas más|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_viaja hacia el oeste cerca de|r |cRXP_ENEMY_Panzallena|r |cRXP_WARN_y mata más|r |cRXP_ENEMY_Gran dentosangre|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Entrega la misión El puente sempiterno
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Entrega la misión El aullido de los gnolls
    .turnin 122 >> Entrega la misión Escamas de barriga
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Entrega la misión El aullido de los gnolls
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
step << Rogue
    #sticky
    #optional
    .destroy 7907 >> Elimina el |T134328:0|t[Certificado de Ratería] de tu inventario, ya que ya no es necesario
step << NightElf Rogue
    #hardcore
    #optional
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Viaja a Páramos de Poniente
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Consigue la ruta de vuelo de Páramos de Poniente
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #hardcore
    #optional
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti más tarde|r
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
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .accept 2359 >> Acepta la misión La torre de Klaven
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
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #hardcore
    #optional
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
    .isOnQuest 2359
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .isQuestComplete 2359
step << Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
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
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .isQuestComplete 2359
step << !Dwarf Rogue
    #hardcore
    #optional
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
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
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
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
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .isQuestComplete 2359
step << Rogue
    #hardcore
    #optional
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
    .isQuestComplete 2359
]])
