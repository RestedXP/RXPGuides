if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de facción
#wotlk
#cata
#name Corona de Hielo Gunship: Desbloquear misiones diarias

step
	+Nota: Varias misiones diarias tienen 5 misiones de grupo de jugadores como requisito previo en Corona de Hielo. Debes terminarlas para desbloquear las siguientes misiones diarias. Completa TODAS las misiones de grupo cuando te lo indique la guía
	>>Si no puedes completarlas, vuelve a ellas más tarde
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >> Aprende la ruta de vuelo hacia The Argent Vanguardia
step
    .goto IcecrownGlacier,87.5,75.8
	>>Vuela a The Argent Vanguardia. Habla con Tirion
    .accept 13036 >>Acepta la misión Honor por encima de todo
step
    .goto IcecrownGlacier,87.1,75.8
	>>Habla con Entari debajo de ti
    .turnin 13036 >>Entrega la misión Honor por encima de todo
    .accept 13008 >>Acepta la misión Tácticas de la Plaga
step
    .goto IcecrownGlacier,86.8,76.6
	>>Habla con Gustav
    .accept 13040 >>Acepta la misión Curar lo incurable
step
    .goto IcecrownGlacier,86.1,75.8
	>>Habla con Dalfors
    .accept 13039 >>Acepta la misión Defender la Vanguardia
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>Mata los Capullos del Cruzado enredado en la zona para liberarlos. También te darán un beneficio y te sanarán << !Paladin
	>>Mata los Capullos del Cruzado enredado en la zona para liberarlos. Asegúrate de tener un beneficio distinto a Kings, ya que los PNJ te lo darán (y te sanarán) << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>Mata a los Nerubianos y a las Arañas en la zona. Despójalos para obtener sus Sacos de veneno
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>Regresa con Dalfors
    .turnin 13039 >>Entrega la misión Defender la Vanguardia
step
    .goto IcecrownGlacier,86.8,76.6
	>>Regresa con Gustav
    .turnin 13040 >>Entrega la misión Curar lo incurable
step
    .goto IcecrownGlacier,87.1,75.8
	>>Regresa con Entari
    .turnin 13008 >>Entrega la misión Tácticas de la Plaga
    .accept 13044 >>Acepta la misión Si hay supervivientes...
step
    .goto IcecrownGlacier,87.0,79.0
	>>Habla con Penumbrius
    .turnin 13044 >>Entrega la misión Si hay supervivientes...
    .accept 13045 >>Acepta la misión Dentro del gran verdor
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >> Haz clic derecho en Garfacielo Argenta para montarlo
step
	>>Vuela hacia Scourgeholme. Usa "Agarrar cruzado capturado" (1) para rescatar a los cruzados (solo puedes agarrar uno a la vez), luego vuelve volando con Gustav en The Argent Vanguardia y usa "Soltar cruzado capturado" (2) para dejarlos. Usa "Elevarse" (3) cada vez que esté disponible para ir más rápido.
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>Vuela de regreso con Tirion
    .turnin 13045 >>Entrega la misión Dentro del gran verdor
    .accept 13070 >>Acepta la misión Se aproxima un frente frío
step
    .goto IcecrownGlacier,85.6,76.0
	>>Habla con Fezzik dentro de la casa pequeña
    .turnin 13070 >>Entrega la misión Se aproxima un frente frío
    .accept 13086 >>Acepta la misión La última línea de defensa
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>Vuela y entra en una de las Turrets ubicadas sobre las murallas
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>Usa repetidamente "Cañón Argenta" (1) para matar mobs en un AdE pequeño y generar maná. Usa "Bomba de expiación" (2) para matar mobs en un AdE grande a costa de maná.
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>Sal del cañón. Regresa con Fezzik
    .turnin 13086 >>Entrega la misión La última línea de defensa
step
    .goto IcecrownGlacier,86.0,75.8
	>>Habla con Tirion detrás de ti
    .accept 13104 >>Acepta la misión Una vez más en la brecha, héroe << !DK
    .accept 13105 >>Acepta la misión Una vez más en la brecha, héroe << DK
step
	>>Viaja al noroeste. Habla con El Vigía de Ébano, Silas, Spitzpatrick y luego con Gustav dentro de la casa
    .turnin 13104 >>Entrega la misión Una vez más en la brecha, héroe << !DK
    .turnin 13105 >>Entrega la misión Una vez más en la brecha, héroe << DK
    .accept 13118 >>Acepta la misión La purga de la Ciudad de la Plaga
    .accept 13122 >>Acepta la misión La piedra de la Plaga
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>Acepta la misión La piedra que comenzó una revolución
    .accept 13135 >>Acepta la misión Podría matarnos a todos
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>Acepta la misión Los muertos sin descanso
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>Mata a la Plaga en Scourgeholme. Despójalos para obtener su Piedra de la Plaga
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >> Mata a los Caballeros de la Cruz Reanimados en Scourgeholme. Usa el Agua Bendita en tus bolsas en los cadáveres para liberar sus almas.
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>Mata a los Subreyes Olvidados en Scourgeholme.
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>Mata a los Sumos Sacerdotes Olvidados principalmente ubicados dentro de los Zigurats del área.
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>Mata a los Subreyes Olvidados en el área.
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >> Mata a los Caballeros de la Cruz Reanimados en Scourgeholme. Usa el Agua Bendita en tus bolsas en los cadáveres para liberar sus almas.
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>Mata a la Plaga en Scourgeholme. Despójala para obtener su Piedra de la Plaga
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>Mata a los mobs Humanoid/No-muerto/Elemental en el área. Despójales para obtener su Energía
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Despoja los tocones de árbol púrpura en el suelo en el área
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>Despoja pequeñas piezas azules de mármol alrededor de los edificios élficos destruidos
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>Mata a los mobs Humanoid/No-muerto/Elemental en el área. Despójales para obtener su Energía
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Regresa a El Vigía de Ébano
    .turnin 13130 >>Entrega la misión La piedra que comenzó una revolución
    .turnin 13135 >>Entrega la misión Podría matarnos a todos
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>Entrega la misión La purga de la Ciudad de la Plaga
    .turnin 13122 >>Entrega la misión La piedra de la Plaga
    .accept 13125 >>Acepta la misión El aire permanece quieto
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entra en la cabaña
    .turnin 13110 >>Entrega la misión Los muertos sin descanso
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>Entra en el edificio. Usa el Cuerno de guerra de Acherus para invocar un PNJ para ayudarte a matar a Salranax
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>Entra en el edificio. Usa el Cuerno de guerra de Acherus para invocar un PNJ para ayudarte a matar a Yath'amon
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>Usa el Cuerno de guerra de Acherus para invocar un PNJ para ayudarte a matar a Talonox
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>Regresa a El Vigía de Ébano
    .turnin 13125 >>Entrega la misión El aire permanece quieto
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entra en la cabaña
    .accept 13139 >>Acepta la misión Dentro del helado corazón de Rasganorte
step
    .goto IcecrownGlacier,86.0,75.8
	>>Regresa a Tirion
    .turnin 13139 >>Entrega la misión Dentro del helado corazón de Rasganorte
    .accept 13141 >>Acepta la misión La batalla por el Pináculo de los Cruzados
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>Usa el Estandarte bendecido de la Cruzada en tus bolsas en la pila de cráneos y defiéndelo contra las olas entrantes. Enfócate en matar a Halof el Libramorte cuando aparezca
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entra en la cabaña
    .turnin 13141 >>Entrega la misión La batalla por el Pináculo de los Cruzados
    .accept 13157 >>Acepta la misión El Pináculo de los Cruzados
step
    .goto IcecrownGlacier,79.8,71.8
	>>Sube de nuevo a donde defendiste el Estandarte. Habla con Tirion
    .turnin 13157 >>Entrega la misión El Pináculo de los Cruzados
    .accept 13068 >>Acepta la misión Un relato de valor
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >> Aprende la ruta de vuelo de Crusaders' Pinnacle
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>Entra en la torre. Habla con Strongbrow en el piso inferior en la cama
    .accept 13224 >>Acepta la misión El Martillo de Orgrim
step << Alliance
    .goto Icecrown,79.44,72.84
	>>Entra en la torre. Habla con Ivalius en el piso inferior en la cama
    .accept 13225 >>Acepta la misión El Rompecielos
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando alto en el aire. Entra en la gran sala en la parte de atrás y habla con Justin
    .turnin 13225 >>Entrega la misión El Rompecielos
    .accept 13231 >>Acepta la misión El Frente Roto
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Encuentra a Absalan el Piadoso. Él camina alrededor de la parte de atrás del barco, arriba y abajo de las escaleras a la izquierda y a la derecha
    .daily 13300 >>Acepta la misión Esclavos de la saronita
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Sube las escaleras en la parte de atrás del barco y habla con Capitán caballero Drosche
    .daily 13336 >>Acepta la misión Sangre de los elegidos
    .accept 13341 >>Acepta la misión Unirse al ataque
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Toma las escaleras en el centro del barco (detrás de Maraad), luego las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .accept 13296 >>Acepta la misión ¡Llega a Ymirheim!
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando alto en el aire. Entra en la gran sala en la parte delantera. Habla con Atracador del cielo Korm Marcanegra
    .turnin 13224 >>Entrega la misión El Martillo de Orgrim
    .accept 13228 >>Acepta la misión El Frente Roto
step << Horde
	>> Acepta las misiones de Belisario Davos Rioht y Hermano Keltan. Caminan cerca de las escaleras y la cubierta inferior
    .daily 13302 >>Acepta la misión Esclavos de la saronita
    .daily 13330 >>Acepta la misión Sangre de los elegidos
    .accept 13340 >>Acepta la misión Unirse al ataque
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .accept 13293 >>Acepta la misión ¡Llega a Ymirheim!
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Vuela a Comandante de tierra Koup (en el suelo)
    .turnin 13341 >>Entrega la misión Unirse al ataque
    .daily 13309 >>Acepta la misión Asalto por aire
	>>Puedes omitir esta misión diaria si lo deseas
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Haz clic derecho en la torreta en la parte superior de la Máquina voladora para empezar la misión
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>Dispara a todos los Lanza Armas de Fuego en los edificios mientras vuelas
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Regresa con Koup
    .turnin 13309 >>Entrega la misión Asalto por aire
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Habla con el Líder de escuadrón. Puede que no esté aquí si alguien más comenzó la misión y tiene un tiempo de reaparición de aproximadamente 6 minutos, y reaparece a unos 10 yardas a la derecha de Koup
	>>Puedes omitir esta misión. Es solo una misión diaria que encaja bien con las otras
    .daily 13284 >>Acepta la misión Asalto por tierra
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
step << Alliance
    .goto Icecrown,59.89,53.50
	>> Escolta a las tropas. Deja que algunas de ellas absorban el daño de los monstruos si es necesario
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
	#completewith next
    .goto Icecrown,57.01,62.53
	>>Vuela a Frazzle en el suelo
    .turnin 13296 >>Entrega la misión ¡Llega a Ymirheim!
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTA: Esta misión te marcará para JcJ. Sin embargo, es MUY fácil.
    .daily 13280 >>Acepta la misión Rey de la montaña
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Alianza» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
	>>Haz clic en el botón Abandonar vehículo
    .turnin 13280 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13280
step << Horde
	>>Vuela hacia Comandante de tierra Xutjja (está en el suelo, no en el barco)
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>Entrega la misión Unirse al ataque
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Acepta la misión Asalto por aire
	>>Puedes omitir esta misión diaria si lo deseas
step << Horde
	#completewith next
	.vehicle >>Corre hacia la Torreta de Supresión Kor'kron y haz clic en ella
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>Dispara a todos los Lanzapúas en los edificios mientras vuelas alrededor. Los Infiltradores caerán mientras lo haces.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Entrega la misión Asalto por aire
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Habla con el Líder de escuadrón. Es posible que no esté aquí si otra persona inició la misión y tiene un tiempo de reaparición de aproximadamente 6 minutos
    .daily 13301 >>Acepta la misión Asalto por tierra
	>>Puedes omitir esta misión. Es solo una misión diaria que encaja bien con las otras
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Mata a los Vrykul en todo Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>> Escolta a las tropas
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Entra en la Mina de Saronita. Habla con los esclavos para rescatarlos (a veces pueden atacarte).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>Entrega la misión ¡Llega a Ymirheim!
    .daily 13283 >>Acepta la misión Rey de la montaña
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Haz clic derecho en el robot parecido a un gnomo
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Usa repetidamente «Salto a chorro» (3) para escalar rápidamente el acantilado (no tiene tiempo de recarga). Una vez que llegues a la cima de la montaña, usa «Plantar confalón de batalla de la Horda» (1) para plantar el estandarte. Luego, sal del vehículo
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
	>>Haz clic en el botón Abandonar vehículo
    .turnin 13283 >>Entrega la misión Rey de la montaña
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>Encuentra y habla con un soldado moribundo alrededor del frente roto
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>Acepta la misión ¡Acaba conmigo!
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>Encuentra más Soldados moribundos en el área y acábalos
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>Encuentra y habla con un Rabioso moribundo alrededor de El Frente Roto
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>Acepta la misión ¡Véngame!
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>Encuentra más Soldados moribundos en el área y acábalos
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompencielos, el gran barco de la Alianza que vuela muy alto en el aire (puedes verlo en tu mapa). Entra en la gran sala en la parte trasera donde está Maraad y habla con Justin
    .turnin 13231 >>Entrega la misión El Frente Roto
    .turnin 13232 >>Entrega la misión ¡Acaba conmigo!
    .accept 13286 >>Acepta la misión …Toda la ayuda que podamos conseguir
    .accept 13290 >>Acepta la misión Atención, por favor
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Encuentra a Absalan el Piadoso. Camina cerca de la parte trasera del barco, subiendo y bajando las escaleras a la izquierda y a la derecha
    .turnin 13300 >>Entrega la misión Esclavos de la saronita
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Sube las escaleras en la parte trasera del barco y habla con Capitán caballero Drosche
    .turnin 13336 >>Entrega la misión Sangre de los elegidos
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13286 >>Entrega la misión …Toda la ayuda que podamos conseguir
    .accept 13287 >>Acepta la misión Codazo y pinchazo
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Toma las escaleras en el medio del barco (detrás de Maraad), luego toma las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .turnin 13290 >>Entrega la misión Atención, por favor
    .accept 13291 >>Acepta la misión Tecnología prestada
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Vuela a El Martillo de Orgrim, el gran barco de la Horda que vuela muy alto en el aire. Habla con Atracador del cielo Korm Marcanegra en la sala frontal
    .turnin 13228 >>Entrega la misión El Frente Roto
    .turnin 13230 >>Entrega la misión ¡Véngame!
    .accept 13238 >>Acepta la misión ¿Para algo bueno?
    .accept 13260 >>Acepta la misión Coge uno para conocer a uno
step << Horde
	>>Habla con Koltira junto a ti
    .turnin 13260 >>Entrega la misión Dime con quién andas y te diré quién eres
    .accept 13237 >>Acepta la misión Codazo y pinchazo
step << Horde
	>>Habla con Hermano Keltan, que camina alrededor de las escaleras
    .turnin 13302 >>Entrega la misión Esclavos de la saronita
	.isQuestComplete 13302
step
	>>Habla con Belisario Davos Rioht. También patrulla la cubierta inferior
    .turnin 13330 >>Entrega la misión Sangre de los elegidos
	.isQuestComplete 13330
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .turnin 13238 >>Entrega la misión ¿Para algo bueno?
    .accept 13239 >>Acepta la misión Volatilidad
step << Alliance
	>>Vuelve con Comandante de tierra Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13284
step << Horde
	>>Vuelve con Comandante de tierra Xutjja
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>Entrega la misión Asalto por tierra
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa la Solución de contrabando de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa el Aceite Volátil de Copperclaw de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Mata a las Abominaciones, a los Adeptos y a los Nigromantes en la zona
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Mata a las Abominaciones, a los Adeptos y a los Nigromantes en la zona
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa la Solución de contrabando de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Despoja los fragmentos de equipo abandonado esparcidos en el suelo alrededor de El Frente Roto. Usa el Aceite Volátil de Copperclaw de tu inventario cuando tengas un fragmento de cada tipo de equipo (no necesitas esperar al RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13287 >>Entrega la misión Codazo y pinchazo
    .accept 13288 >>Acepta la misión ¡Eso es abominable!
    .accept 13294 >>Acepta la misión Contra los gigantes
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Toma las escaleras en el centro del barco (detrás de Maraad), luego las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .turnin 13291 >>Entrega la misión Tecnología prestada
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Habla con Koltira en la sala frontal del barco
    .turnin 13237 >>Entrega la misión Codazo y pinchazo
    .accept 13264 >>Acepta la misión ¡Eso es abominable!
	.accept 13277 >>Acepta la misión Contra los gigantes
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .turnin 13239 >>Entrega la misión Volatilidad
step
    .goto IcecrownGlacier,68.3,61.5
	>>Mata a las Abominaciones enormes en la zona y despójalas para obtener Tripas de abominación enfriadas
	.use 43968 >> Usa el Kit de Reanimación de Abominaciones con algunas Agallas en tu bolsa para invocar una Abominación que puedas controlar. Reúne tantos monstruos como sea posible haciendo que la Abominación los ataque y atraiga su agresión, luego usa «Lleno a rebosar» para matar todos los monstruos cerca de tu Abominación (los monstruos deben estar en combate para obtener crédito)
	>>Si se te acaban las Agallas, ve y mata a más Hulking Abominations. Solo puedes tener 1 Agalla en tu poder a la vez.
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Regresa a El Martillo de Orgrim. Habla con Koltira
    .turnin 13264 >>Entrega la misión ¡Eso es abominable!
    .accept 13351 >>Acepta la misión La primicia
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Regresa a El Rompecielos. Habla con Thassarian
    .turnin 13288 >>Entrega la misión ¡Eso es abominable!
    .accept 13315 >>Acepta la misión La primicia
step << Alliance
	>>Vuela por encima de los puntos de ruta en la plataforma por encima del gran muro
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>Vuela por encima de los puntos de ruta en la plataforma por encima del gran muro
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Mata a los Horrores Purulentos en la zona. Despoja sus Espinas. Esta misión es MUY difícil, agrúpate si es necesario.
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Mata a los Horrores Purulentos en la zona. Despoja sus Espinas. Esta misión es MUY difícil, agrúpate si es necesario.
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Habla con Koltira en la sala frontal del barco
    .turnin 13351 >>Entrega la misión La primicia
	.turnin 13277 >>Entrega la misión Contra los gigantes
    .accept 13355 >>Acepta la misión Imposible reproducir
    .accept 13354 >>Acepta la misión Cadena de mando
    .accept 13352 >>Acepta la misión Arrastrar y soltar
	.accept 13279 >>Acepta la misión Química básica
    .accept 13278 >>Acepta la misión Coprous el Profanado
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .accept 13379 >>Acepta la misión Tecnología verde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13315 >>Entrega la misión La primicia
    .turnin 13294 >>Entrega la misión Contra los gigantes
    .accept 13318 >>Acepta la misión Arrastrar y soltar
    .accept 13319 >>Acepta la misión Cadena de mando
    .accept 13320 >>Acepta la misión Imposible reproducir
    .accept 13295 >>Acepta la misión Química básica
    .accept 13298 >>Acepta la misión Coprous el Profanado
step << Alliance
	>>Toma las escaleras en el centro del barco (detrás de Maraad), luego las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .accept 13383 >>Acepta la misión Tecnología prestada
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >> Entra por la puerta al interior de Mord'rethar. Está en el segundo nivel custodiado por los Demonios Apestados
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Usa el Fluido espinal pustulento de tu inventario en los calderos verdes burbujeantes. Mata a los mobs que aparecen y usa el Fluido espinal pustulento de nuevo cuando se te pida "Añade fluido pronto". Esta misión es MUY difícil, agrúpate si es necesario.
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>Mata a Coprous el Profanador dentro de Mord'rethar. Esta misión es MUY difícil, así que agrúpate si es necesario.
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>Ve a la plataforma por encima del muro y mata a los Iniciados Amargos en la zona. Despoja sus Orbes de ilusión
	.use 44246 >>Usa el Orbe de ilusión en los Subyugadores oscuros en la zona cuando no estés en combate.
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>Mata a Sobrestante Faedris en la gran tienda
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >> Usa el Frasco con particiones en los calderos de afuera en Aldur'thar
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>Mata a Sobrestante Savryn y Jhaeqon bajo las grandes tiendas. Luego vuela un nivel arriba hacia Veraj (bajo la gran tienda) y mátalo
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>Vuela a la pequeña plataforma en el aire. Habla con Kilohercio
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>Entrega la misión Kilohercio
	.accept 13380 >>Acepta la misión Llevar la carga
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Habla con Karen para subir a un bombardero. Usa «Cargar generador de protección» (1) para obtener 100 escudos, luego cambia a «Bahía de bombardero» (5) y comienza a bombardear la plaga abajo hasta que todos los Infantes y Capitanes sean asesinados. Cambia a la «Torreta antiaérea» (4) y comienza a usar «Anti-Aire Cohetes» (1) para disparar a las Gárgolas en el aire. Una vez completado, presiona el botón Abandonar vehículo y serás devuelto a la plataforma
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>Habla con Kilohercio
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>Entrega la misión Llevar la carga
step << Horde
	>>Vuela a la pequeña plataforma en el aire. Habla con Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>Entrega la misión Tecnología verde
    .accept 13373 >>Acepta la misión Beneficios de la ciencia adicional
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Habla con Rizzy para subir a un bombardero. Usa «Cargar generador de protección» (1) para obtener 100 escudos, luego cambia a «Bahía de bombardero» (5) y comienza a bombardear la plaga abajo hasta que todos los Infantes y Capitanes sean asesinados. Cambia a la «Torreta antiaérea» (4) y comienza a usar «Anti-Aire Cohetes» (1) para disparar a las Gárgolas en el aire. Una vez completado, presiona el botón Abandonar vehículo y serás devuelto a la plataforma
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>Habla con Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>Entrega la misión Beneficios de la ciencia adicional
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13318 >>Entrega la misión Arrastrar y soltar
    .turnin 13319 >>Entrega la misión Cadena de mando
    .turnin 13295 >>Entrega la misión Química básica
    .turnin 13298 >>Entrega la misión Coprous el Profanado
    .accept 13342 >>Acepta la misión Espía como puedas
    .accept 13345 >>Acepta la misión Más información
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Toma las escaleras en el medio del barco (detrás de Maraad), luego toma las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .turnin 13320 >>Entrega la misión Imposible reproducir
    .accept 13321 >>Acepta la misión Volver a probar
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Ve al gran salón del frente. Habla con Kolitra
	.turnin 13352 >>Entrega la misión Arrastrar y soltar
    .turnin 13354 >>Entrega la misión Cadena de mando
    .turnin 13279 >>Entrega la misión Química básica
    .turnin 13278 >>Entrega la misión Coprous el Profanado
    .accept 13358 >>Acepta la misión Espía como puedas
    .accept 13366 >>Acepta la misión Más información
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .turnin 13355 >>Entrega la misión Imposible reproducir
    .accept 13356 >>Acepta la misión Volver a probar
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>Usa el Tónico de culto diluido de tu inventario para obtener el beneficio de «Discernimiento oscuro». Esto te permite despojar las Esencias contaminadas de todos los humanoides que mates en la zona
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Mata a 5 Esbirros esclavizados (caminantes del vacío). Usa la Vara de succión en sus cadáveres para obtener su Materia oscura
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>Haz clic en la Piedra invocadora
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Entra en Aldur'thar
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>Mata a los Investigadores del Culto en la zona. Despójalos para obtener sus Páginas de investigación
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >> Haz clic en una de las páginas de investigación en tus bolsas para combinarlas y formar la Tesis
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >> Haz clic derecho en las Esencias contaminadas de tu inventario para convertirlas en una Masa retorcida. Lanza la Masa retorcida en un caldero
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13342 >>Entrega la misión No es un error
    .turnin 13345 >>Entrega la misión Más información
    .accept 13346 >>Acepta la misión El mal nunca duerme
    .accept 13332 >>Acepta la misión Levantad las barricadas
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Toma las escaleras en el medio del barco (detrás de Maraad), luego toma las escaleras a ambos lados de la primera escalera para bajar a la sala de máquinas. Habla con Ingeniero jefe Aprietatuercas
    .turnin 13321 >>Entrega la misión Volver a probar
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Ve al gran salón del frente. Habla con Kolitra
    .turnin 13358 >>Entrega la misión No es un error
	.turnin 13366 >>Entrega la misión Más información
    .accept 13367 >>Acepta la misión El mal nunca duerme
    .accept 13306 >>Acepta la misión Levantad las barricadas
step << Horde
	>> Ve a la cubierta inferior del barco. Habla con Ingeniero jefe Garrabronce
    .turnin 13356 >>Entrega la misión Volver a probar
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>Usa el Kit de construcción de barricadas en tus bolsas en el Valle de los Héroes Caídos sobre los brillos morados que aparezcan
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>Esta misión es MUY difícil; agrúpate para hacerla si es necesario
	>>Abre los cofres dentro de Aldur'thar y despoja la Calavera de Alumeth, el Corazón, el Scepter y las Robes
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta misión es MUY difícil; agrúpate para hacerla si es necesario
	.use 44476 >> Haz clic en cualquiera de los objetos de tu inventario para combinarlos en Restos de Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta misión es MUY difícil; agrúpate para hacerla si es necesario
	.use 44480 >> Usa Restos de Alumeth frente al cristal brillante para invocarlo. Mátalo
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
    .turnin 13346 >>Entrega la misión El mal nunca duerme
    .turnin 13332 >>Entrega la misión Levantad las barricadas
	.accept 13337 >>Acepta la misión La Fortificación del Muro de Hierro
	.accept 13334 >>Acepta la misión Estandartes cubiertos de sangre
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Ve al gran salón del frente. Habla con Kolitra
    .turnin 13367 >>Entrega la misión El mal nunca duerme
    .turnin 13306 >>Entrega la misión Levantad las barricadas
	.accept 13312 >>Acepta la misión La Fortificación del Muro de Hierro
	.accept 13307 >>Acepta la misión Estandartes cubiertos de sangre
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>Mata a los Convertidores de la Plaga en la zona
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>Esta misión es MUY difícil; agrúpate para hacerla si es necesario
	.use 44186 >> Vuela hasta el balcón, luego usa la Runa de distorsión en tus bolsas en Orbe de Grimkor. Mata a Grimkor el Maldito
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>Mata al Portaestandarte de la Plaga y a los Héroes convertidos en la zona
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vuela a El Rompecielos, el gran barco de la Alianza que está volando muy alto en el aire. Habla con Thassarian en la esquina trasera izquierda del barco
	.turnin 13334 >>Entrega la misión Estandartes cubiertos de sangre
	.turnin 13337 >>Entrega la misión La Fortificación del Muro de Hierro
	>>Ve al gran salón hacia el que mira Maraad en El Rompecielos y habla con Justin
	.accept 13314 >>Acepta la misión Capta el mensaje
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Usa la Pistola de dardos de tu inventario en los Exploradores del Martillo de Orgrim (puedes usarla mientras estés en tu montura voladora). Despoja sus cadáveres para obtener los Informes
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Ve al gran salón hacia el que mira Maraad en El Rompecielos y habla con Justin
	.turnin 13314 >>Entrega la misión Get The Message
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando muy alto en el aire. Ve al gran salón del frente. Habla con Kolitra
	.turnin 13312 >>Entrega la misión La Fortificación del Muro de Hierro
	.turnin 13307 >>Entrega la misión Estandartes cubiertos de sangre
step << Horde
	>>Habla con Krom Blackscar junto a ti
	.accept 13313 >>Acepta la misión Cerrar los ojos en el cielo
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Usa el SGM-3 de tu inventario en los Skybreaker Recon Fighters en el aire
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>> Vuela a El Martillo de Orgrim, el gran barco de la Horda que está volando alto en el aire. Entra en la gran sala al frente. Habla con Krom Blackscar
	.turnin 13313 >>Entrega la misión Cerrar los ojos en el cielo
step
	+Si omitiste o no completaste ninguna de las misiones en esta guía, reinicia la guía y complétalas. Para hacerlo, haz clic en la rueda de engranajes y navega de vuelta a la guía de Misiones Diarias Desbloqueadas del Barco Volante de Corona de Hielo
	>>Si las has completado todas, puedes comenzar a usar la Ruta de Misiones Diarias del Barco Volante de Corona de Hielo. Nota que algunos pueden no estar disponibles hoy, ya que es posible que hayas completado algunas misiones diarias
]])
